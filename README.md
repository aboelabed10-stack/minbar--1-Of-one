<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>منبر ون | منصة الرياضيات</title>

<style>
*{
  box-sizing:border-box;
  margin:0;
  padding:0;
}

:root{
  --bg:#050b1d;
  --card:#0c1833;
  --blue:#25bfff;
  --purple:#9b65ff;
  --pink:#ff4fa3;
  --orange:#ffad32;
  --green:#22d6a0;
  --text:#fff;
  --muted:#91a4c1;
}

body{
  font-family:Tahoma,Arial,sans-serif;
  background:
    radial-gradient(circle at 85% 5%,#172b63 0,transparent 28%),
    radial-gradient(circle at 10% 70%,#27174f 0,transparent 28%),
    var(--bg);
  color:var(--text);
  min-height:100vh;
  overflow-x:hidden;
}

/* خلفية متحركة */

.space{
  position:fixed;
  inset:0;
  pointer-events:none;
  overflow:hidden;
  z-index:0;
}

.orb{
  position:absolute;
  border-radius:50%;
  filter:blur(55px);
  opacity:.16;
}

.orb1{
  width:230px;
  height:230px;
  background:#00c8ff;
  top:-100px;
  right:-70px;
}

.orb2{
  width:220px;
  height:220px;
  background:#9b4dff;
  left:-100px;
  bottom:10%;
}

.float{
  position:absolute;
  top:-60px;
  font-size:18px;
  opacity:.32;
  animation:drop linear infinite;
}

.f1{right:8%;animation-duration:10s}
.f2{right:25%;animation-duration:14s;animation-delay:2s}
.f3{right:43%;animation-duration:11s;animation-delay:5s}
.f4{right:61%;animation-duration:15s;animation-delay:1s}
.f5{right:79%;animation-duration:12s;animation-delay:4s}
.f6{right:93%;animation-duration:17s;animation-delay:7s}

@keyframes drop{
  0%{
    transform:translateY(-80px) rotate(0);
    opacity:0;
  }
  15%{opacity:.35}
  100%{
    transform:translateY(110vh) rotate(180deg);
    opacity:0;
  }
}

.star{
  position:absolute;
  color:#ffe36b;
  animation:shine 1.8s infinite alternate;
}

.star1{top:13%;right:18%}
.star2{top:33%;right:80%;animation-delay:.5s}
.star3{top:60%;right:12%;animation-delay:1s}
.star4{top:76%;right:72%;animation-delay:.7s}
.star5{top:46%;right:52%;animation-delay:1.3s}

@keyframes shine{
  from{opacity:.15;transform:scale(.7)}
  to{opacity:1;transform:scale(1.25)}
}

.page{
  position:relative;
  z-index:1;
}

/* الهيدر */

header{
  height:67px;
  background:rgba(5,13,32,.78);
  backdrop-filter:blur(16px);
  border-bottom:1px solid rgba(255,255,255,.08);
}

.header{
  width:92%;
  max-width:1050px;
  height:100%;
  margin:auto;
  display:flex;
  justify-content:space-between;
  align-items:center;
}

.logo{
  display:flex;
  align-items:center;
  gap:9px;
}

.logoIcon{
  width:36px;
  height:36px;
  border-radius:11px;
  background:linear-gradient(135deg,#12c9ff,#855cff);
  display:flex;
  align-items:center;
  justify-content:center;
  font-size:18px;
  box-shadow:0 0 25px rgba(30,190,255,.2);
}

.logoText{
  font-size:15px;
  font-weight:bold;
}

.logoText small{
  display:block;
  color:#7187a7;
  font-size:6px;
  margin-top:3px;
}

.teacher{
  color:#fff;
  text-decoration:none;
  font-size:9px;
  padding:8px 11px;
  border-radius:10px;
  background:linear-gradient(135deg,#294e87,#663e9a);
}

/* الترحيب */

.hero{
  width:92%;
  max-width:1050px;
  margin:22px auto 0;
  padding:25px 21px;
  border-radius:24px;
  border:1px solid rgba(90,190,255,.18);
  background:
    linear-gradient(135deg,
      rgba(11,49,88,.96),
      rgba(42,23,76,.93));
  box-shadow:0 18px 55px rgba(0,0,0,.22);
  position:relative;
  overflow:hidden;
}

.heroBadge{
  display:inline-block;
  padding:6px 9px;
  border-radius:20px;
  background:rgba(35,202,255,.1);
  border:1px solid rgba(35,202,255,.18);
  color:#5cdcff;
  font-size:8px;
}

.hero h1{
  font-size:24px;
  line-height:1.5;
  margin-top:10px;
}

.hero h1 span{
  color:#54d8ff;
}

.hero p{
  color:#9aafc9;
  font-size:9px;
  line-height:1.9;
  margin-top:4px;
}

/* شريط البحث */

.search{
  width:92%;
  max-width:1050px;
  margin:14px auto 0;
  position:relative;
}

.search input{
  width:100%;
  height:42px;
  border:1px solid rgba(255,255,255,.1);
  border-radius:13px;
  background:rgba(11,27,54,.86);
  color:#fff;
  padding:0 42px 0 14px;
  outline:none;
  font-family:inherit;
  font-size:10px;
}

.search input:focus{
  border-color:#28c8ff;
}

.searchIcon{
  position:absolute;
  right:14px;
  top:12px;
  font-size:15px;
}

/* العناوين */

.section{
  width:92%;
  max-width:1050px;
  margin:23px auto 0;
}

.sectionHead{
  display:flex;
  justify-content:space-between;
  align-items:center;
  margin-bottom:11px;
}

.sectionHead h2{
  font-size:15px;
}

.sectionHead span{
  font-size:7px;
  color:#7188a6;
}

/* البطاقات */

.options{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:8px;
}

.option{
  color:white;
  text-decoration:none;
  border-radius:15px;
  padding:12px 7px;
  border:1px solid rgba(255,255,255,.09);
  transition:.25s;
  position:relative;
  overflow:hidden;
}

.option:hover{
  transform:translateY(-4px);
  border-color:rgba(255,255,255,.28);
}

.option:active{
  transform:scale(.96);
}

.optionIcon{
  width:29px;
  height:29px;
  border-radius:9px;
  display:flex;
  justify-content:center;
  align-items:center;
  font-size:14px;
  margin-bottom:7px;
}

.option h3{
  font-size:9px;
}

.option p{
  color:rgba(255,255,255,.62);
  font-size:6px;
  margin-top:4px;
}

.c1{
  background:linear-gradient(135deg,#073b67,#087aa2);
}
.c1 .optionIcon{background:#079ed3}

.c2{
  background:linear-gradient(135deg,#36205e,#69358b);
}
.c2 .optionIcon{background:#9856d8}

.c3{
  background:linear-gradient(135deg,#694218,#a86616);
}
.c3 .optionIcon{background:#eaa52e}

.c4{
  background:linear-gradient(135deg,#104a43,#147660);
}
.c4 .optionIcon{background:#1ac29f}

/* تحدي اليوم */

.challenge{
  padding:17px;
  border-radius:17px;
  background:
    linear-gradient(135deg,#30205d,#151e4b);
  border:1px solid rgba(180,120,255,.18);
  position:relative;
  overflow:hidden;
}

.challengeTag{
  color:#d49aff;
  font-size:8px;
}

.challenge h3{
  font-size:12px;
  margin-top:8px;
}

.question{
  margin-top:10px;
  background:rgba(0,0,0,.18);
  padding:12px;
  border-radius:11px;
  font-size:13px;
  text-align:center;
}

.challenge button{
  margin-top:10px;
  width:100%;
  border:0;
  padding:9px;
  border-radius:9px;
  color:white;
  background:linear-gradient(135deg,#8b54ff,#c247a6);
  font-family:inherit;
  font-size:9px;
}

/* الإحصائيات */

.stats{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:8px;
}

.stat{
  padding:13px 8px;
  border-radius:13px;
  background:rgba(10,27,53,.85);
  border:1px solid rgba(255,255,255,.07);
  text-align:center;
}

.stat strong{
  display:block;
  font-size:17px;
}

.stat span{
  display:block;
  color:#728aa8;
  font-size:7px;
  margin-top:5px;
}

.points strong{color:#ffd34e}
.progress strong{color:#45d8ff}
.rank strong{color:#b87cff}

/* الحصص */

.lessonList{
  display:grid;
  grid-template-columns:repeat(2,1fr);
  gap:9px;
}

.lesson{
  display:flex;
  align-items:center;
  gap:9px;
  padding:12px;
  border-radius:14px;
  background:rgba(10,27,54,.9);
  border:1px solid rgba(100,170,230,.1);
}

.lessonIcon{
  width:36px;
  height:36px;
  flex-shrink:0;
  border-radius:10px;
  display:flex;
  align-items:center;
  justify-content:center;
  font-size:15px;
  background:linear-gradient(135deg,#00aeea,#5b51dc);
}

.lessonInfo{
  min-width:0;
}

.lessonInfo h3{
  font-size:9px;
  white-space:nowrap;
  overflow:hidden;
  text-overflow:ellipsis;
}

.lessonInfo p{
  color:#728aa6;
  font-size:7px;
  margin-top:5px;
}

.watch{
  margin-right:auto;
  color:#4fdcff;
  text-decoration:none;
  font-size:7px;
  padding:6px 7px;
  border-radius:7px;
  background:rgba(40,200,255,.08);
}

/* الأقسام القادمة */

.futureGrid{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:8px;
}

.future{
  padding:14px 8px;
  border-radius:14px;
  text-align:center;
  background:rgba(10,27,54,.78);
  border:1px solid rgba(255,255,255,.07);
}

.futureIcon{
  font-size:17px;
}

.future h3{
  font-size:9px;
  margin-top:7px;
}

.future p{
  font-size:6px;
  color:#7189a5;
  margin-top:4px;
}

/* فارغ */

.empty{
  padding:21px;
  border-radius:14px;
  text-align:center;
  color:#7188a4;
  font-size:8px;
  background:rgba(9,25,49,.8);
  border:1px dashed #294563;
}

/* الفوتر */

footer{
  text-align:center;
  padding:28px 0 18px;
  color:#4e6682;
  font-size:7px;
}

/* الهاتف */

@media(max-width:650px){

  .hero h1{
    font-size:21px;
  }

  .options{
    grid-template-columns:repeat(4,1fr);
    gap:5px;
  }

  .option{
    padding:10px 4px;
  }

  .optionIcon{
    width:27px;
    height:27px;
    font-size:13px;
  }

  .option h3{
    font-size:8px;
  }

  .option p{
    display:none;
  }

  .lessonList{
    grid-template-columns:1fr;
  }

}

@media(max-width:390px){

  .logoText{
    font-size:13px;
  }

  .teacher{
    padding:7px 8px;
    font-size:8px;
  }

  .futureGrid{
    grid-template-columns:repeat(3,1fr);
  }

}

</style>
</head>

<body>

<div class="space">

  <div class="orb orb1"></div>
  <div class="orb orb2"></div>

  <div class="float f1">✂️</div>
  <div class="float f2">📚</div>
  <div class="float f3">✏️</div>
  <div class="float f4">📐</div>
  <div class="float f5">🧮</div>
  <div class="float f6">📏</div>

  <div class="star star1">✦</div>
  <div class="star star2">★</div>
  <div class="star star3">✦</div>
  <div class="star star4">★</div>
  <div class="star star5">✦</div>

</div>

<div class="page">

<header>

<div class="header">

<div class="logo">

<div class="logoIcon">∑</div>

<div class="logoText">
منبر ون
<small>MINBAR ONE • MATH</small>
</div>

</div>

<a class="teacher" href="teacher.html">
👨‍🏫 الأستاذ
</a>

</div>

</header>


<section class="hero">

<div class="heroBadge">
🧮 منصة الرياضيات
</div>

<h1>
مرحبًا بك في
<span>منبر ون</span> 🚀
</h1>

<p>
تعلّم الرياضيات، شاهد حصصك، اختبر نفسك، وطوّر مستواك خطوة بخطوة.
</p>

</section>


<div class="search">

<span class="searchIcon">🔎</span>

<input
id="search"
type="text"
placeholder="ابحث عن حصة أو درس..."
oninput="searchLessons()">

</div>


<section class="section">

<div class="sectionHead">

<h2>🎯 اختر ما تريد</h2>

<span>أقسام المنصة</span>

</div>


<div class="options">


<a href="#lessons" class="option c1">

<div class="optionIcon">🎥</div>

<h3>الحصص</h3>

<p>شاهد الدروس</p>

</a>


<a href="#summaries" class="option c2">

<div class="optionIcon">📚</div>

<h3>الملخصات</h3>

<p>راجع القوانين</p>

</a>


<a href="#tests" class="option c3">

<div class="optionIcon">📝</div>

<h3>الاختبارات</h3>

<p>اختبر نفسك</p>

</a>


<a href="#rooms" class="option c4">

<div class="optionIcon">💬</div>

<h3>الرومات</h3>

<p>تعلّم مع الآخرين</p>

</a>


</div>

</section>


<section class="section">

<div class="sectionHead">

<h2>🔥 تحدي اليوم</h2>

<span>جرّب حظك</span>

</div>


<div class="challenge">

<div class="challengeTag">
🧠 سؤال رياضيات
</div>

<h3>
هل تستطيع حل هذه المسألة؟
</h3>

<div class="question">
8 × 7 + 4 = ؟
</div>

<button onclick="challengeAnswer()">
عرض الإجابة
</button>

</div>

</section>


<section class="section">

<div class="sectionHead">

<h2>🏆 مستواك</h2>

<span>تقدمك الحالي</span>

</div>


<div class="stats">

<div class="stat points">
<strong>0</strong>
<span>⭐ النقاط</span>
</div>

<div class="stat progress">
<strong>0%</strong>
<span>📊 التقدم</span>
</div>

<div class="stat rank">
<strong>🥉</strong>
<span>المستوى</span>
</div>

</div>

</section>


<section class="section" id="lessons">

<div class="sectionHead">

<h2>🎥 أحدث الحصص</h2>

<span>مضافة من الأستاذ</span>

</div>


<div
class="lessonList"
id="lessonsContainer">

<div class="empty">
جاري تحميل الحصص... ⏳
</div>

</div>

</section>


<section class="section" id="summaries">

<div class="sectionHead">

<h2>📚 الملخصات</h2>

</div>


<div class="futureGrid">

<div class="future">

<div class="futureIcon">📖</div>

<h3>ملخصات الدروس</h3>

<p>القوانين والنقاط المهمة</p>

</div>

<div class="future">

<div class="futureIcon">⚡</div>

<h3>مراجعة سريعة</h3>

<p>راجع قبل الاختبار</p>

</div>

<div class="future">

<div class="futureIcon">📌</div>

<h3>المفضلة</h3>

<p>احتفظ بما تحتاجه</p>

</div>

</div>

</section>


<section class="section" id="tests">

<div class="sectionHead">

<h2>📝 الاختبارات</h2>

</div>


<div class="empty">
الاختبارات التفاعلية ستصل قريبًا 🚀
</div>

</section>


<section class="section" id="rooms">

<div class="sectionHead">

<h2>💬 الرومات</h2>

</div>


<div class="empty">
رومات الدراسة ستظهر هنا قريبًا 👥
</div>

</section>


<footer>

منبر ون • منصة الرياضيات 🎓

</footer>

</div>


<script>

/* =========================
   Supabase
========================= */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


let allLessons=[];


/* =========================
   تحميل الحصص
========================= */

async function loadLessons(){

const box =
document.getElementById("lessonsContainer");

try{

const response =
await fetch(
SUPABASE_URL +
"/rest/v1/lessons?select=*&order=created_at.desc",
{
headers:{
"apikey":SUPABASE_KEY,
"Authorization":"Bearer "+SUPABASE_KEY
}
}
);

if(!response.ok){
throw new Error("Supabase error");
}

allLessons =
await response.json();

showLessons(allLessons);

}catch(error){

console.error(error);

box.innerHTML=`
<div class="empty">
تعذر تحميل الحصص الآن ❌
</div>
`;

}

}


/* =========================
   عرض الحصص
========================= */

function showLessons(lessons){

const box =
document.getElementById("lessonsContainer");

if(!lessons.length){

box.innerHTML=`
<div class="empty">
لا توجد حصص حتى الآن 📚
</div>
`;

return;

}

box.innerHTML="";

lessons.forEach(lesson=>{

const item =
document.createElement("div");

item.className="lesson";

const link =
lesson.video_url || "#";

item.innerHTML=`

<div class="lessonIcon">
🎥
</div>

<div class="lessonInfo">

<h3>
${safe(lesson.title)}
</h3>

<p>
${safe(lesson.unit || "رياضيات")}
${lesson.duration
? " • "+safe(lesson.duration)
: ""}
</p>

</div>

<a
class="watch"
href="${safe(link)}"
target="_blank">

مشاهدة

</a>

`;

box.appendChild(item);

});

}


/* =========================
   البحث
========================= */

function searchLessons(){

const text =
document
.getElementById("search")
.value
.toLowerCase()
.trim();

if(!text){

showLessons(allLessons);

return;

}

const result =
allLessons.filter(
lesson=>
String(lesson.title || "")
.toLowerCase()
.includes(text)
||
String(lesson.description || "")
.toLowerCase()
.includes(text)
||
String(lesson.unit || "")
.toLowerCase()
.includes(text)
);

showLessons(result);

}


/* =========================
   سؤال اليوم
========================= */

function challengeAnswer(){

alert("الإجابة الصحيحة هي: 60 🎉");

}


/* =========================
   حماية النصوص
========================= */

function safe(text){

return String(text ?? "")
.replaceAll("&","&amp;")
.replaceAll("<","&lt;")
.replaceAll(">","&gt;")
.replaceAll('"',"&quot;")
.replaceAll("'","&#039;");

}


loadLessons();

</script>

</body>
</html>
