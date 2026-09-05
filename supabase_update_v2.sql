-- ============================================================
-- منبر ون | تحديث قاعدة البيانات + لوحة تحكم برمز 059989
-- شغّل الملف كاملًا في Supabase SQL Editor ثم اضغط Run.
-- لا يحذف الجداول الموجودة.
-- ============================================================

-- 1) حقول الطالب
alter table public.students alter column password drop not null;

alter table public.students
  add column if not exists status text not null default 'active';

alter table public.students
  add column if not exists points integer not null default 0;

alter table public.students
  add column if not exists watch_minutes integer not null default 0;

alter table public.students
  add column if not exists last_seen timestamptz;

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conname='students_status_check'
  ) then
    alter table public.students
      add constraint students_status_check
      check(status in ('active','blocked'));
  end if;
end $$;

-- 2) تفعيل RLS
alter table public.students enable row level security;
alter table public.lessons enable row level security;
alter table public.summaries enable row level security;
alter table public.tests enable row level security;
alter table public.test_questions enable row level security;
alter table public.rooms enable row level security;

-- 3) دوال معرفة الصلاحيات
create or replace function public.is_teacher()
returns boolean
language sql stable security definer
set search_path=public
as $$
  select coalesce(auth.jwt()->'app_metadata'->>'role','')='teacher';
$$;

create or replace function public.is_active_student()
returns boolean
language sql stable security definer
set search_path=public
as $$
  select exists(
    select 1 from public.students s
    where lower(s.email)=lower(coalesce(auth.jwt()->>'email',''))
      and s.status='active'
  );
$$;

-- 4) سياسات الطلاب
drop policy if exists "students_teacher_all" on public.students;
create policy "students_teacher_all"
on public.students for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

drop policy if exists "students_self_select" on public.students;
create policy "students_self_select"
on public.students for select to authenticated
using(lower(email)=lower(coalesce(auth.jwt()->>'email','')));

drop policy if exists "students_self_insert" on public.students;
create policy "students_self_insert"
on public.students for insert to authenticated
with check(lower(email)=lower(coalesce(auth.jwt()->>'email','')));

drop policy if exists "students_self_update" on public.students;
create policy "students_self_update"
on public.students for update to authenticated
using(lower(email)=lower(coalesce(auth.jwt()->>'email','')))
with check(lower(email)=lower(coalesce(auth.jwt()->>'email','')));

-- 5) الطالب النشط/المعلم يستطيعان قراءة المحتوى
drop policy if exists "content_active_student_read_lessons" on public.lessons;
create policy "content_active_student_read_lessons"
on public.lessons for select to authenticated
using(public.is_active_student() or public.is_teacher());

drop policy if exists "content_active_student_read_summaries" on public.summaries;
create policy "content_active_student_read_summaries"
on public.summaries for select to authenticated
using(public.is_active_student() or public.is_teacher());

drop policy if exists "content_active_student_read_tests" on public.tests;
create policy "content_active_student_read_tests"
on public.tests for select to authenticated
using(public.is_active_student() or public.is_teacher());

drop policy if exists "content_active_student_read_questions" on public.test_questions;
create policy "content_active_student_read_questions"
on public.test_questions for select to authenticated
using(public.is_active_student() or public.is_teacher());

drop policy if exists "content_active_student_read_rooms" on public.rooms;
create policy "content_active_student_read_rooms"
on public.rooms for select to authenticated
using(public.is_active_student() or public.is_teacher());

-- 6) المعلم الحقيقي عبر Auth يستطيع إدارة المحتوى أيضًا
drop policy if exists "teacher_lessons_all" on public.lessons;
create policy "teacher_lessons_all"
on public.lessons for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

drop policy if exists "teacher_summaries_all" on public.summaries;
create policy "teacher_summaries_all"
on public.summaries for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

drop policy if exists "teacher_tests_all" on public.tests;
create policy "teacher_tests_all"
on public.tests for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

drop policy if exists "teacher_questions_all" on public.test_questions;
create policy "teacher_questions_all"
on public.test_questions for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

drop policy if exists "teacher_rooms_all" on public.rooms;
create policy "teacher_rooms_all"
on public.rooms for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

-- 7) منع إعادة الاختبار وتسجيل النتيجة
create table if not exists public.test_attempts(
 id bigint generated by default as identity primary key,
 test_id bigint not null references public.tests(id) on delete cascade,
 student_email text not null,
 score integer not null default 0,
 total_questions integer not null default 0,
 points_earned integer not null default 0,
 completed_at timestamptz not null default now(),
 unique(test_id,student_email)
);

alter table public.test_attempts enable row level security;

drop policy if exists "attempts_teacher_all" on public.test_attempts;
create policy "attempts_teacher_all"
on public.test_attempts for all to authenticated
using(public.is_teacher()) with check(public.is_teacher());

drop policy if exists "attempts_student_select_own" on public.test_attempts;
create policy "attempts_student_select_own"
on public.test_attempts for select to authenticated
using(lower(student_email)=lower(coalesce(auth.jwt()->>'email','')));

drop policy if exists "attempts_student_insert_own" on public.test_attempts;
create policy "attempts_student_insert_own"
on public.test_attempts for insert to authenticated
with check(
 lower(student_email)=lower(coalesce(auth.jwt()->>'email',''))
 and public.is_active_student()
);

-- ============================================================
-- 8) لوحة التحكم برمز 059989
-- هذه الدوال هي التي تسمح للوحة "بدون حساب" بقراءة الطلاب
-- وإيقافهم وحذف سجلهم وإضافة الحصص.
-- ============================================================

create or replace function public.teacher_check_password(p_password text)
returns boolean
language plpgsql
security definer
set search_path=public
as $$
begin
  return p_password='059989';
end;
$$;

create or replace function public.teacher_list_students(p_password text)
returns table(
 id bigint,
 name text,
 email text,
 status text,
 points integer,
 watch_minutes integer,
 last_seen timestamptz,
 created_at timestamptz
)
language plpgsql
security definer
set search_path=public
as $$
begin
 if p_password is distinct from '059989' then
   raise exception 'رمز لوحة التحكم غير صحيح';
 end if;

 return query
 select s.id,s.name,s.email,s.status,s.points,s.watch_minutes,s.last_seen,s.created_at
 from public.students s
 order by s.last_seen desc nulls last,s.created_at desc;
end;
$$;

create or replace function public.teacher_set_student_status(
 p_password text,
 p_student_id bigint,
 p_status text
)
returns boolean
language plpgsql
security definer
set search_path=public
as $$
begin
 if p_password is distinct from '059989' then
   raise exception 'رمز لوحة التحكم غير صحيح';
 end if;
 if p_status not in ('active','blocked') then
   raise exception 'حالة الطالب غير صحيحة';
 end if;

 update public.students
 set status=p_status,last_seen=coalesce(last_seen,now())
 where id=p_student_id;

 return found;
end;
$$;

create or replace function public.teacher_delete_student(
 p_password text,
 p_student_id bigint
)
returns boolean
language plpgsql
security definer
set search_path=public
as $$
begin
 if p_password is distinct from '059989' then
   raise exception 'رمز لوحة التحكم غير صحيح';
 end if;

 delete from public.students where id=p_student_id;
 return found;
end;
$$;

create or replace function public.teacher_add_lesson(
 p_password text,
 p_title text,
 p_unit text,
 p_video_url text,
 p_duration text
)
returns public.lessons
language plpgsql
security definer
set search_path=public
as $$
declare new_lesson public.lessons;
begin
 if p_password is distinct from '059989' then
   raise exception 'رمز لوحة التحكم غير صحيح';
 end if;
 if coalesce(trim(p_video_url),'')='' then
   raise exception 'رابط الفيديو مطلوب';
 end if;

 insert into public.lessons(title,description,unit,video_url,duration)
 values(
   coalesce(nullif(trim(p_title),''),'حصة رياضيات'),
   null,
   nullif(trim(p_unit),''),
   trim(p_video_url),
   nullif(trim(p_duration),'')
 )
 returning * into new_lesson;

 return new_lesson;
end;
$$;

create or replace function public.teacher_content_counts(p_password text)
returns jsonb
language plpgsql
security definer
set search_path=public
as $$
begin
 if p_password is distinct from '059989' then
   raise exception 'رمز لوحة التحكم غير صحيح';
 end if;

 return jsonb_build_object(
  'lessons',(select count(*) from public.lessons),
  'summaries',(select count(*) from public.summaries),
  'tests',(select count(*) from public.tests),
  'rooms',(select count(*) from public.rooms)
 );
end;
$$;

-- السماح باستدعاء دوال لوحة التحكم من المتصفح.
grant execute on function public.teacher_check_password(text) to anon,authenticated;
grant execute on function public.teacher_list_students(text) to anon,authenticated;
grant execute on function public.teacher_set_student_status(text,bigint,text) to anon,authenticated;
grant execute on function public.teacher_delete_student(text,bigint) to anon,authenticated;
grant execute on function public.teacher_add_lesson(text,text,text,text,text) to anon,authenticated;
grant execute on function public.teacher_content_counts(text) to anon,authenticated;

-- ============================================================
-- ملاحظة أمنية:
-- رمز 059989 موجود هنا كما طلبت، لكنه "قفل لوحة" وليس نظام
-- صلاحيات كاملًا؛ أي شخص يملك الرمز يستطيع استخدام اللوحة.
-- لا تضع service_role key في index.html.
-- ============================================================
