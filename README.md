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

body{
font-family:Tahoma,Arial,sans-serif;
background:
radial-gradient(circle at 85% 5%,#172b63 0,transparent 28%),
radial-gradient(circle at 10% 70%,#27174f 0,transparent 28%),
#050b1d;
color:white;
min-height:100vh;
overflow-x:hidden;
}

.page{
position:relative;
z-index:2;
}

header{
height:70px;
background:rgba(5,13,32,.86);
backdrop-filter:blur(15px);
border-bottom:1px solid rgba(255,255,255,.08);
}

.header{
width:92%;
max-width:1050px;
height:100%;
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

background:
linear-gradient(135deg,#12c9ff,#855cff);

display:flex;
align-items:center;
justify-content:center;

font-size:18px;

box-shadow:
0 0 25px rgba(30,190,255,.25);
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


/* أزرار الدخول */

.loginButtons{
display:flex;
gap:7px;
align-items:center;
}

.studentBtn,
.teacherBtn{
border:0;
color:white;
font-family:inherit;
font-size:8px;

padding:9px 11px;

border-radius:10px;

cursor:pointer;

text-decoration:none;

display:flex;
align-items:center;
gap:5px;

transition:.25s;
}

.studentBtn{
background:
linear-gradient(135deg,#087fb5,#7450d8);
}

.teacherBtn{
background:
linear-gradient(135deg,#a65a17,#d38b20);
}

.studentBtn:hover,
.teacherBtn:hover{
transform:translateY(-2px);
box-shadow:0 8px 20px rgba(0,0,0,.25);
}


/* زخارف */

.float{
position:fixed;

top:-60px;

font-size:19px;

opacity:.25;

pointer-events:none;

z-index:0;

animation:fall linear infinite;
}

.f1{
right:8%;
animation-duration:11s;
}

.f2{
right:27%;
animation-duration:15s;
animation-delay:2s;
}

.f3{
right:47%;
animation-duration:12s;
animation-delay:4s;
}

.f4{
right:68%;
animation-duration:16s;
animation-delay:1s;
}

.f5{
right:89%;
animation-duration:13s;
animation-delay:5s;
}

@keyframes fall{

from{
transform:translateY(-70px) rotate(0deg);
}

to{
transform:translateY(110vh) rotate(180deg);
}

}


/* نجوم */

.star{
position:fixed;

color:#ffe36b;

font-size:15px;

animation:shine 1.8s infinite alternate;

z-index:0;
}

.s1{
top:14%;
right:18%;
}

.s2{
top:34%;
right:80%;
animation-delay:.5s;
}

.s3{
top:60%;
right:13%;
animation-delay:1s;
}

.s4{
top:76%;
right:73%;
animation-delay:.7s;
}

@keyframes shine{

from{
opacity:.15;
transform:scale(.7);
}

to{
opacity:1;
transform:scale(1.2);
}

}


/* البطل */

.hero{
width:92%;
max-width:1050px;

margin:22px auto 0;

padding:27px 22px;

border-radius:24px;

background:
linear-gradient(
135deg,
rgba(11,49,88,.96),
rgba(42,23,76,.94)
);

border:
1px solid rgba(90,190,255,.18);

box-shadow:
0 18px 55px rgba(0,0,0,.22);
}

.heroBadge{
display:inline-block;

padding:6px 9px;

border-radius:20px;

background:
rgba(35,202,255,.1);

border:
1px solid rgba(35,202,255,.18);

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


/* البحث */

.search{
width:92%;
max-width:1050px;

margin:14px auto 0;

position:relative;
}

.search input{
width:100%;

height:44px;

border:
1px solid rgba(255,255,255,.12);

border-radius:13px;

background:#0b1b36;

color:white;

padding:
0 43px 0 15px;

outline:none;

font-family:inherit;

font-size:10px;
}

.search input:focus{

border-color:#2acbff;

box-shadow:
0 0 20px rgba(42,203,255,.08);
}

.searchIcon{

position:absolute;

right:14px;

top:13px;

font-size:15px;
}


/* نتائج البحث */

.searchResults{

width:92%;
max-width:1050px;

margin:9px auto 0;

display:none;
}

.searchResults.show{
display:block;
}

.resultTitle{

font-size:10px;

color:#9eb3ce;

margin-bottom:7px;
}

.resultList{

display:grid;

gap:7px;
}

.result{

display:flex;

align-items:center;

gap:9px;

padding:10px;

border-radius:12px;

background:#0a1b36;

border:
1px solid rgba(255,255,255,.08);

text-decoration:none;

color:white;

transition:.2s;
}

.result:hover{

transform:translateX(-3px);

border-color:
rgba(255,255,255,.2);
}

.resultIcon{

width:31px;
height:31px;

border-radius:9px;

display:flex;

align-items:center;
justify-content:center;

flex-shrink:0;
}

.type-video{
background:#087db5;
}

.type-summary{
background:#7442a8;
}

.type-test{
background:#bd741b;
}

.type-room{
background:#16846d;
}

.resultInfo{
min-width:0;
}

.resultInfo h3{

font-size:9px;

white-space:nowrap;

overflow:hidden;

text-overflow:ellipsis;
}

.resultInfo p{

font-size:7px;

color:#7189a6;

margin-top:4px;
}


/* الأقسام */

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


/* خيارات */

.options{

display:grid;

grid-template-columns:
repeat(4,1fr);

gap:8px;
}

.option{

color:white;

text-decoration:none;

border-radius:15px;

padding:12px 7px;

border:
1px solid rgba(255,255,255,.09);

transition:.25s;
}

.option:hover{

transform:
translateY(-4px);
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

color:
rgba(255,255,255,.62);

font-size:6px;

margin-top:4px;
}

.c1{
background:
linear-gradient(135deg,#073b67,#087aa2);
}

.c1 .optionIcon{
background:#079ed3;
}

.c2{
background:
linear-gradient(135deg,#36205e,#69358b);
}

.c2 .optionIcon{
background:#9856d8;
}

.c3{
background:
linear-gradient(135deg,#694218,#a86616);
}

.c3 .optionIcon{
background:#eaa52e;
}

.c4{
background:
linear-gradient(135deg,#104a43,#147660);
}

.c4 .optionIcon{
background:#1ac29f;
}


/* تحدي */

.challenge{

padding:17px;

border-radius:17px;

background:
linear-gradient(135deg,#30205d,#151e4b);

border:
1px solid rgba(180,120,255,.18);
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

background:
rgba(0,0,0,.18);

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

background:
linear-gradient(135deg,#8b54ff,#c247a6);

font-family:inherit;

font-size:9px;
}


/* الإحصائيات */

.stats{

display:grid;

grid-template-columns:
repeat(3,1fr);

gap:8px;
}

.stat{

padding:13px 8px;

border-radius:13px;

background:#0a1b35;

border:
1px solid rgba(255,255,255,.07);

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

.points strong{
color:#ffd34e;
}

.progress strong{
color:#45d8ff;
}

.rank strong{
color:#b87cff;
}


/* الحصص */

.lessonList{

display:grid;

grid-template-columns:
repeat(2,1fr);

gap:9px;
}

.lesson{

display:flex;

align-items:center;

gap:9px;

padding:12px;

border-radius:14px;

background:#0a1b36;

border:
1px solid rgba(100,170,230,.1);
}

.lessonIcon{

width:36px;
height:36px;

border-radius:10px;

display:flex;

align-items:center;
justify-content:center;

font-size:15px;

background:
linear-gradient(135deg,#00aeea,#5b51dc);

flex-shrink:0;
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

background:
rgba(40,200,255,.08);
}


/* المستقبل */

.futureGrid{

display:grid;

grid-template-columns:
repeat(3,1fr);

gap:8px;
}

.future{

padding:14px 8px;

border-radius:14px;

text-align:center;

background:#0a1b36;

border:
1px solid rgba(255,255,255,.07);
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

.empty{

padding:21px;

border-radius:14px;

text-align:center;

color:#7188a4;

font-size:8px;

background:#091931;

border:
1px dashed #294563;
}

footer{

text-align:center;

padding:28px 0 18px;

color:#4e6682;

font-size:7px;
}


/* نافذة الطالب */

.modal{

position:fixed;

inset:0;

background:
rgba(0,0,0,.72);

backdrop-filter:blur(7px);

display:none;

align-items:center;

justify-content:center;

z-index:100;

padding:20px;
}

.modal.show{
display:flex;
}

.loginBox{

width:100%;

max-width:370px;

background:
linear-gradient(145deg,#101f42,#1d1740);

border:
1px solid rgba(100,200,255,.18);

border-radius:22px;

padding:23px;

box-shadow:
0 25px 80px rgba(0,0,0,.5);
}

.close{

float:left;

border:0;

background:none;

color:#8297b3;

font-size:20px;

cursor:pointer;
}

.loginBox h2{

font-size:18px;

margin-bottom:6px;
}

.loginBox p{

font-size:8px;

color:#8195b1;

margin-bottom:18px;
}

.loginBox input{

width:100%;

height:42px;

margin-bottom:9px;

border:
1px solid rgba(255,255,255,.1);

border-radius:10px;

background:#08152e;

color:white;

padding:0 12px;

font-family:inherit;

outline:none;

font-size:10px;
}

.loginBox button.main{

width:100%;

height:42px;

border:0;

border-radius:10px;

color:white;

background:
linear-gradient(135deg,#09a9df,#7650e5);

font-family:inherit;

font-size:10px;

cursor:pointer;
}

.switch{

margin-top:13px;

text-align:center;

font-size:8px;

color:#8498b4;
}

.switch button{

border:0;

background:none;

color:#4dd7ff;

font-family:inherit;

cursor:pointer;
}

.message{

min-height:17px;

margin-bottom:7px;

text-align:center;

font-size:8px;
}


/* الهاتف */

@media(max-width:650px){

.hero h1{
font-size:21px;
}

.options{

grid-template-columns:
repeat(4,1fr);

gap:5px;
}

.option{

padding:10px 4px;
}

.option p{
display:none;
}

.lessonList{
grid-template-columns:1fr;
}

.studentBtn,
.teacherBtn{

padding:
8px 7px;

font-size:7px;
}

.loginButtons{
gap:4px;
}

.logoText{
font-size:13px;
}

}

</style>
</head>


<body>


<!-- زخارف متحركة -->

<div class="float f1">✂️</div>
<div class="float f2">📚</div>
<div class="float f3">✏️</div>
<div class="float f4">📐</div>
<div class="float f5">🧮</div>

<div class="star s1">✦</div>
<div class="star s2">★</div>
<div class="star s3">✦</div>
<div class="star s4">★</div>


<div class="page">


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


<!-- الزرين -->

<div class="loginButtons">


<button
class="studentBtn"
onclick="openStudentLogin()">

👨‍🎓
دخول الطالب

</button>


<a
class="teacherBtn"
href="teacher.html">

👨‍🏫
دخول الأستاذ

</a>


</div>


</div>

</header>


<section class="hero">


<div class="heroBadge">
🧮 منصة الرياضيات
</div>


<h1>

مرحبًا بك في
<span>منبر ون</span>
🚀

</h1>


<p>

تعلّم الرياضيات، شاهد الحصص،
راجع الملخصات واختبر نفسك.

</p>


</section>


<!-- البحث -->

<div class="search">

<span class="searchIcon">
🔎
</span>

<input
id="search"
type="text"
placeholder="ابحث عن فيديو، ملخص، اختبار أو روم..."
oninput="searchEverything()">

</div>


<div
id="searchResults"
class="searchResults">

<div class="resultTitle">
🔎 نتائج البحث
</div>

<div
id="resultList"
class="resultList">
</div>

</div>


<!-- الأقسام -->

<section class="section">


<div class="sectionHead">

<h2>
🎯 ماذا تريد اليوم؟
</h2>

<span>
أقسام المنصة
</span>

</div>


<div class="options">


<a
href="#lessons"
class="option c1">

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


<a
href="#summaries"
class="option c2">

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


<a
href="#tests"
class="option c3">

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


<a
href="#rooms"
class="option c4">

<div class="optionIcon">
💬
</div>

<h3>
الرومات
</h3>

<p>
تعلّم مع الآخرين
</p>

</a>


</div>

</section>


<!-- التحدي -->

<section class="section">


<div class="sectionHead">

<h2>
🔥 تحدي اليوم
</h2>

<span>
سؤال سريع
</span>

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


<button
onclick="challengeAnswer()">

عرض الإجابة

</button>


</div>

</section>


<!-- التقدم -->

<section class="section">


<div class="sectionHead">

<h2>
🏆 مستواك
</h2>

<span>
تقدمك
</span>

</div>


<div class="stats">


<div class="stat points">

<strong>
0
</strong>

<span>
⭐ النقاط
</span>

</div>


<div class="stat progress">

<strong>
0%
</strong>

<span>
📊 التقدم
</span>

</div>


<div class="stat rank">

<strong>
🥉
</strong>

<span>
المستوى
</span>

</div>


</div>

</section>


<!-- الحصص -->

<section
class="section"
id="lessons">


<div class="sectionHead">

<h2>
🎥 أحدث الحصص
</h2>

<span>
من الأستاذ
</span>

</div>


<div
id="lessonsContainer"
class="lessonList">


<div class="empty">
جاري تحميل الحصص... ⏳
</div>


</div>

</section>


<!-- الملخصات -->

<section
class="section"
id="summaries">


<div class="sectionHead">

<h2>
📚 الملخصات
</h2>

</div>


<div class="futureGrid">


<div class="future">

<div class="futureIcon">
📖
</div>

<h3>
ملخصات الدروس
</h3>

<p>
القوانين والنقاط المهمة
</p>

</div>


<div class="future">

<div class="futureIcon">
⚡
</div>

<h3>
مراجعة سريعة
</h3>

<p>
معلومات مهمة
</p>

</div>


<div class="future">

<div class="futureIcon">
📌
</div>

<h3>
المفضلة
</h3>

<p>
للدراسة لاحقًا
</p>

</div>


</div>

</section>


<!-- الاختبارات -->

<section
class="section"
id="tests">


<div class="sectionHead">

<h2>
📝 الاختبارات
</h2>

</div>


<div class="empty">

الاختبارات التفاعلية ستظهر هنا 🚀

</div>


</section>


<!-- الرومات -->

<section
class="section"
id="rooms">


<div class="sectionHead">

<h2>
💬 الرومات
</h2>

</div>


<div class="empty">

رومات الدراسة ستظهر هنا 👥

</div>


</section>


<footer>

منبر ون • منصة الرياضيات 🎓

</footer>


</div>


<!-- نافذة تسجيل الطالب -->

<div
id="studentModal"
class="modal">


<div class="loginBox">


<button
class="close"
onclick="closeStudentLogin()">

×

</button>


<h2>
👨‍🎓 دخول الطالب
</h2>


<p>
تسجيل دخول الطلاب سيكون متاحًا قريبًا
</p>


<div
id="studentMessage"
class="message">

</div>


<input
id="studentEmail"
type="email"
placeholder="📧 البريد الإلكتروني">


<input
id="studentPassword"
type="password"
placeholder="🔐 كلمة المرور">


<button
class="main"
onclick="studentLoginComingSoon()">

تسجيل الدخول

</button>


<div class="switch">

ليس لديك حساب؟

<button
onclick="studentSignupComingSoon()">

إنشاء حساب

</button>

</div>


</div>

</div>


<script>


/* ===============================
   Supabase
================================ */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


let allContent=[];


/* ===============================
   نافذة الطالب
================================ */

function openStudentLogin(){

document
.getElementById("studentModal")
.classList
.add("show");

}


function closeStudentLogin(){

document
.getElementById("studentModal")
.classList
.remove("show");

}


/* ===============================
   تسجيل الطالب لاحقًا
================================ */

function studentLoginComingSoon(){

document
.getElementById("studentMessage")
innerText =
"تسجيل الدخول سيتم تفعيله في المرحلة القادمة 🔐";

}


function studentSignupComingSoon(){

document
.getElementById("studentMessage")
innerText =
"إنشاء حساب الطالب سيتم تفعيله في المرحلة القادمة 🧑‍🎓";

}


/* ===============================
   جلب الجداول
================================ */

async function getTable(table){

try{

const response =
await fetch(

SUPABASE_URL+
"/rest/v1/"+
table+
"?select=*",

{

headers:{

"apikey":
SUPABASE_KEY,

"Authorization":
"Bearer "+SUPABASE_KEY

}

}

);


if(!response.ok){

return [];

}


const data =
await response.json();


return Array.isArray(data)
? data
: [];


}catch(error){

console.error(error);

return [];

}

}


/* ===============================
   تحميل المحتوى
================================ */

async function loadEverything(){


const [
lessons,
summaries,
tests,
rooms
]=await Promise.all([

getTable("lessons"),
getTable("summaries"),
getTable("tests"),
getTable("rooms")

]);


/* الحصص */

lessons.forEach(item=>{

allContent.push({

typeName:"فيديو",

icon:"🎥",

className:"type-video",

title:
item.title ||
"حصة رياضيات",

description:
item.description ||
item.unit ||
"حصة تعليمية",

url:
item.video_url ||
"#"

});

});


/* الملخصات */

summaries.forEach(item=>{

allContent.push({

typeName:"ملخص",

icon:"📚",

className:"type-summary",

title:
item.title ||
"ملخص",

description:
item.description ||
item.unit ||
"ملخص رياضيات",

url:
item.url ||
item.file_url ||
"#"

});

});


/* الاختبارات */

tests.forEach(item=>{

allContent.push({

typeName:"اختبار",

icon:"📝",

className:"type-test",

title:
item.title ||
"اختبار",

description:
item.description ||
item.unit ||
"اختبار رياضيات",

url:
item.url ||
item.link ||
"#"

});

});


/* الرومات */

rooms.forEach(item=>{

allContent.push({

typeName:"روم",

icon:"💬",

className:"type-room",

title:
item.title ||
item.name ||
"روم دراسة",

description:
item.description ||
"روم للدراسة",

url:
item.url ||
item.link ||
"#"

});

});

}


/* ===============================
   البحث الشامل
================================ */

function searchEverything(){


const text =
document
.getElementById("search")
.value
.toLowerCase()
.trim();


const resultsBox =
document.getElementById(
"searchResults"
);


const list =
document.getElementById(
"resultList"
);


if(!text){

resultsBox
.classList
.remove("show");

return;

}


resultsBox
.classList
.add("show");


const results =
allContent.filter(item=>{


const title =
String(
item.title || ""
)
.toLowerCase();


const description =
String(
item.description || ""
)
.toLowerCase();


const type =
String(
item.typeName || ""
)
.toLowerCase();


return(

title.includes(text) ||

description.includes(text) ||

type.includes(text)

);

});


if(!results.length){

list.innerHTML=`

<div class="empty">

لم نجد شيئًا مطابقًا لبحثك 🔍

</div>

`;

return;

}


list.innerHTML="";


results.forEach(item=>{


const result =
document.createElement("a");


result.className="result";


result.href =
item.url || "#";


result.target="_blank";


result.innerHTML=`

<div class="resultIcon ${item.className}">
${item.icon}
</div>

<div class="resultInfo">

<h3>
${safe(item.title)}
</h3>

<p>
${item.typeName}
•
${safe(item.description)}
</p>

</div>

`;


list.appendChild(result);

});

}


/* ===============================
   تحميل الحصص
================================ */

async function loadLessons(){


const box =
document.getElementById(
"lessonsContainer"
);


const lessons =
await getTable("lessons");


if(!lessons.length){

box.innerHTML=`

<div class="empty">

لا توجد حصص حتى الآن 📚

</div>

`;

return;

}


box.innerHTML="";


lessons
.sort(

(a,b)=>

new Date(
b.created_at || 0
)

-

new Date(
a.created_at || 0
)

)
.forEach(lesson=>{


const item =
document.createElement(
"div"
);


item.className="lesson";


item.innerHTML=`

<div class="lessonIcon">
🎥
</div>

<div class="lessonInfo">

<h3>
${safe(lesson.title)}
</h3>

<p>
${safe(
lesson.unit ||
"رياضيات"
)}

${
lesson.duration
?
" • "+
safe(lesson.duration)
:
""
}

</p>

</div>


<a
class="watch"
href="${safe(
lesson.video_url || "#"
)}"
target="_blank">

مشاهدة

</a>

`;


box.appendChild(item);

});

}


/* ===============================
   تحدي اليوم
================================ */

function challengeAnswer(){

alert(
"الإجابة الصحيحة هي: 60 🎉"
);

}


/* ===============================
   حماية النصوص
================================ */

function safe(text){

return String(text ?? "")

.replaceAll("&","&amp;")

.replaceAll("<","&lt;")

.replaceAll(">","&gt;")

.replaceAll('"',"&quot;")

.replaceAll("'","&#039;");

}


/* ===============================
   تشغيل
================================ */

Promise.all([

loadEverything(),

loadLessons()

]);


</script>

</body>
</html>
