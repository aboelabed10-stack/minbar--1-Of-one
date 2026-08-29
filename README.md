<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<title>منبر ون | منصة الرياضيات</title>

<style>

*{
box-sizing:border-box;
margin:0;
padding:0;
}

body{
font-family:Tahoma,Arial,sans-serif;
background:#050d20;
color:white;
min-height:100vh;
overflow-x:hidden;
}


/* =========================
   الخلفية
========================= */

.background{
position:fixed;
inset:0;
overflow:hidden;
pointer-events:none;
z-index:0;
}

.glow{
position:absolute;
border-radius:50%;
filter:blur(55px);
opacity:.25;
}

.g1{
width:230px;
height:230px;
background:#006eff;
top:-80px;
right:-70px;
}

.g2{
width:200px;
height:200px;
background:#a000ff;
bottom:5%;
left:-80px;
}

.g3{
width:170px;
height:170px;
background:#00d9b5;
top:45%;
right:35%;
opacity:.12;
}


/* =========================
   الإيموجيات المتحركة
========================= */

.falling{
position:absolute;
top:-80px;
font-size:20px;
opacity:.35;
animation:fall linear infinite;
}

.f1{right:8%;animation-duration:9s;animation-delay:0s}
.f2{right:23%;animation-duration:12s;animation-delay:2s}
.f3{right:43%;animation-duration:10s;animation-delay:5s}
.f4{right:65%;animation-duration:13s;animation-delay:1s}
.f5{right:82%;animation-duration:11s;animation-delay:4s}
.f6{right:92%;animation-duration:14s;animation-delay:7s}
.f7{right:52%;animation-duration:15s;animation-delay:3s}

@keyframes fall{

0%{
transform:translateY(-100px) rotate(0deg);
opacity:0;
}

15%{
opacity:.45;
}

100%{
transform:translateY(110vh) rotate(180deg);
opacity:0;
}

}


/* =========================
   نجوم
========================= */

.star{
position:absolute;
color:#ffd95a;
font-size:12px;
animation:twinkle 2s infinite alternate;
}

.s1{top:12%;right:15%}
.s2{top:28%;right:78%;animation-delay:.5s}
.s3{top:55%;right:8%;animation-delay:1s}
.s4{top:72%;right:88%;animation-delay:1.4s}
.s5{top:42%;right:52%;animation-delay:.8s}

@keyframes twinkle{
from{
opacity:.15;
transform:scale(.7);
}
to{
opacity:1;
transform:scale(1.2);
}
}


/* =========================
   المحتوى
========================= */

.page{
position:relative;
z-index:1;
}


/* =========================
   الهيدر
========================= */

header{
height:68px;
background:rgba(5,18,42,.82);
backdrop-filter:blur(15px);
border-bottom:1px solid rgba(100,170,255,.15);
display:flex;
align-items:center;
}

.header{
width:92%;
max-width:1050px;
margin:auto;
display:flex;
align-items:center;
justify-content:space-between;
}

.logo{
display:flex;
align-items:center;
gap:9px;
}

.logoIcon{
width:37px;
height:37px;
border-radius:11px;
display:flex;
align-items:center;
justify-content:center;
background:linear-gradient(135deg,#00c8ff,#7257ff);
font-size:19px;
box-shadow:0 0 25px rgba(0,190,255,.25);
}

.logoText{
font-size:15px;
font-weight:bold;
}

.logoText small{
display:block;
font-size:7px;
color:#7891b0;
margin-top:3px;
}

.teacher{
text-decoration:none;
color:white;
font-size:9px;
padding:8px 12px;
border-radius:10px;
background:linear-gradient(135deg,#254f7e,#533f9b);
border:1px solid rgba(255,255,255,.12);
}


/* =========================
   الترحيب
========================= */

.hero{
width:92%;
max-width:1050px;
margin:25px auto 0;
padding:28px 22px;
border-radius:24px;
background:
linear-gradient(
135deg,
rgba(10,45,82,.95),
rgba(38,20,73,.92)
);
border:1px solid rgba(100,190,255,.18);
position:relative;
overflow:hidden;
box-shadow:0 20px 50px rgba(0,0,0,.18);
}

.hero:after{
content:"";
position:absolute;
width:150px;
height:150px;
border-radius:50%;
background:#00c8ff;
opacity:.06;
left:-60px;
top:-60px;
}

.heroBadge{
display:inline-block;
font-size:8px;
padding:6px 9px;
border-radius:20px;
background:rgba(0,205,255,.1);
color:#54dcff;
border:1px solid rgba(0,205,255,.2);
}

.hero h1{
font-size:25px;
margin-top:12px;
line-height:1.5;
}

.hero h1 span{
color:#57dcff;
}

.hero p{
font-size:10px;
line-height:1.9;
color:#9eb3cc;
margin-top:5px;
}


/* =========================
   العنوان
========================= */

.section{
width:92%;
max-width:1050px;
margin:25px auto 0;
}

.sectionHead{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:11px;
}

.sectionHead h2{
font-size:16px;
}

.sectionHead span{
font-size:8px;
color:#718ba8;
}


/* =========================
   البطاقات
========================= */

.options{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:9px;
}

.option{
position:relative;
overflow:hidden;
text-decoration:none;
color:white;
padding:13px 7px;
border-radius:15px;
border:1px solid rgba(255,255,255,.09);
transition:.25s;
}

.option:hover{
transform:translateY(-4px);
}

.option:active{
transform:scale(.96);
}

.optionIcon{
width:31px;
height:31px;
border-radius:9px;
display:flex;
align-items:center;
justify-content:center;
font-size:16px;
margin-bottom:8px;
}

.option h3{
font-size:10px;
}

.option p{
font-size:7px;
color:rgba(255,255,255,.65);
margin-top:4px;
}


/* ألوان مختلفة */

.lessons{
background:linear-gradient(135deg,#073b67,#075985);
box-shadow:0 8px 25px rgba(0,170,255,.08);
}

.lessons .optionIcon{
background:#079bd1;
}

.summaries{
background:linear-gradient(135deg,#302060,#542c78);
}

.summaries .optionIcon{
background:#9253d4;
}

.tests{
background:linear-gradient(135deg,#61451c,#804d12);
}

.tests .optionIcon{
background:#e49b27;
}

.rooms{
background:linear-gradient(135deg,#104b43,#126b5c);
}

.rooms .optionIcon{
background:#19b89b;
}


/* =========================
   الحصص
========================= */

.lessonList{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:10px;
}

.lesson{
display:flex;
align-items:center;
gap:10px;
padding:13px;
border-radius:15px;
background:rgba(10,31,60,.88);
border:1px solid rgba(100,170,230,.12);
transition:.2s;
}

.lesson:hover{
border-color:rgba(60,200,255,.4);
transform:translateY(-2px);
}

.lessonIcon{
width:38px;
height:38px;
border-radius:11px;
background:linear-gradient(135deg,#00a8e8,#5752d8);
display:flex;
align-items:center;
justify-content:center;
font-size:16px;
flex-shrink:0;
}

.lessonInfo{
min-width:0;
}

.lessonInfo h3{
font-size:10px;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis;
}

.lessonInfo p{
font-size:7px;
color:#7791ad;
margin-top:5px;
}

.watch{
margin-right:auto;
text-decoration:none;
font-size:8px;
color:#55dfff;
padding:6px 8px;
border-radius:8px;
background:rgba(0,200,255,.08);
}


/* =========================
   فارغ
========================= */

.empty{
padding:24px;
border-radius:15px;
text-align:center;
font-size:9px;
color:#728ba6;
background:rgba(9,29,55,.8);
border:1px dashed #294662;
}


/* =========================
   الهاتف
========================= */

@media(max-width:650px){

.options{
grid-template-columns:repeat(4,1fr);
gap:6px;
}

.option{
padding:10px 4px;
}

.optionIcon{
width:28px;
height:28px;
font-size:14px;
margin-bottom:6px;
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

.hero{
padding:23px 18px;
}

.hero h1{
font-size:21px;
}

}

@media(max-width:380px){

.options{
gap:4px;
}

.optionIcon{
width:26px;
height:26px;
font-size:13px;
}

.option h3{
font-size:7px;
}

}


/* =========================
   تقليل الحركة إذا طلب الجهاز ذلك
========================= */

@media(prefers-reduced-motion:reduce){

*{
animation:none!important;
transition:none!important;
}

}

</style>
</head>


<body>


<!-- الخلفية -->

<div class="background">

<div class="glow g1"></div>
<div class="glow g2"></div>
<div class="glow g3"></div>

<div class="falling f1">✂️</div>
<div class="falling f2">📚</div>
<div class="falling f3">✏️</div>
<div class="falling f4">📐</div>
<div class="falling f5">⭐</div>
<div class="falling f6">🧮</div>
<div class="falling f7">📏</div>

<div class="star s1">✦</div>
<div class="star s2">★</div>
<div class="star s3">✦</div>
<div class="star s4">★</div>
<div class="star s5">✦</div>

</div>


<div class="page">


<!-- الهيدر -->

<header>

<div class="header">

<div class="logo">

<div class="logoIcon">
∑
</div>

<div class="logoText">

منبر ون

<small>
MINBAR ONE • MATH
</small>

</div>

</div>


<a class="teacher" href="teacher.html">
👨‍🏫 الأستاذ
</a>

</div>

</header>


<!-- الترحيب -->

<section class="hero">

<div class="heroBadge">
🧮 منصة الرياضيات
</div>

<h1>
خلّي الرياضيات
<span>أسهل وأمتع</span> 🚀
</h1>

<p>
تعلم، راجع، اختبر نفسك، وتابع حصصك في مكان واحد.
</p>

</section>


<!-- الأقسام -->

<section class="section">

<div class="sectionHead">

<h2>
ماذا تريد اليوم؟ 🎯
</h2>

<span>
اختر القسم
</span>

</div>


<div class="options">


<a href="#lessons" class="option lessons">

<div class="optionIcon">
🎥
</div>

<h3>
الحصص
</h3>

<p>
شاهد الدروس
</p>

</a>


<a href="#summaries" class="option summaries">

<div class="optionIcon">
📚
</div>

<h3>
الملخصات
</h3>

<p>
راجع القوانين
</p>

</a>


<a href="#tests" class="option tests">

<div class="optionIcon">
📝
</div>

<h3>
الاختبارات
</h3>

<p>
اختبر نفسك
</p>

</a>


<a href="#rooms" class="option rooms">

<div class="optionIcon">
💬
</div>

<h3>
الرومات
</h3>

<p>
تواصل وتعلم
</p>

</a>


</div>

</section>


<!-- الحصص -->

<section class="section" id="lessons">

<div class="sectionHead">

<h2>
🎥 أحدث الحصص
</h2>

<span>
من الأستاذ
</span>

</div>


<div class="lessonList" id="lessonsContainer">

<div class="empty">
جاري تحميل الحصص... ⏳
</div>

</div>

</section>


<!-- الملخصات -->

<section class="section" id="summaries">

<div class="sectionHead">

<h2>
📚 الملخصات
</h2>

</div>

<div class="empty">
سيتم إضافة الملخصات قريبًا ✨
</div>

</section>


<!-- الاختبارات -->

<section class="section" id="tests">

<div class="sectionHead">

<h2>
📝 الاختبارات
</h2>

</div>

<div class="empty">
سيتم إضافة الاختبارات قريبًا 🚀
</div>

</section>


<!-- الرومات -->

<section class="section" id="rooms">

<div class="sectionHead">

<h2>
💬 الرومات
</h2>

</div>

<div class="empty">
رومات الدراسة ستظهر هنا قريبًا 👥
</div>

</section>


</div>


<script>

/* =========================
   Supabase
========================= */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";


const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


/* =========================
   تحميل الحصص
========================= */

async function loadLessons(){

const box =
document.getElementById(
"lessonsContainer"
);


try{

const response =
await fetch(

SUPABASE_URL +
"/rest/v1/lessons?select=*&order=created_at.desc",

{

headers:{
"apikey":SUPABASE_KEY,
"Authorization":
"Bearer "+SUPABASE_KEY
}

}

);


if(!response.ok){
throw new Error("Supabase error");
}


const lessons =
await response.json();


if(!lessons.length){

box.innerHTML =
`
<div class="empty">
لا توجد حصص حتى الآن 📚
</div>
`;

return;

}


box.innerHTML="";


lessons.forEach(
lesson=>{

const item =
document.createElement("div");

item.className="lesson";


const link =
lesson.video_url || "#";


item.innerHTML = `

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



}catch(error){

console.error(error);

box.innerHTML =
`
<div class="empty">
تعذر تحميل الحصص الآن ❌
</div>
`;

}

}


/* =========================
   حماية النص
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
