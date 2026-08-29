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
}

.page{
position:relative;
z-index:1;
}

header{
height:67px;
background:rgba(5,13,32,.85);
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
width:36px;
height:36px;
border-radius:11px;
background:linear-gradient(135deg,#12c9ff,#855cff);
display:flex;
align-items:center;
justify-content:center;
font-size:18px;
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

.userArea{
display:flex;
align-items:center;
gap:6px;
}

.userName{
font-size:8px;
color:#8edfff;
display:none;
}

.loginBtn,
.logoutBtn{
border:0;
color:white;
font-family:inherit;
font-size:8px;
padding:8px 10px;
border-radius:9px;
cursor:pointer;
}

.loginBtn{
background:linear-gradient(135deg,#087fb5,#7450d8);
}

.logoutBtn{
background:#572d51;
display:none;
}

.hero{
width:92%;
max-width:1050px;
margin:22px auto 0;
padding:25px 21px;
border-radius:24px;
background:linear-gradient(135deg,#0b3158,#2a174c);
border:1px solid rgba(90,190,255,.18);
}

.heroBadge{
display:inline-block;
padding:6px 9px;
border-radius:20px;
background:rgba(35,202,255,.1);
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

.search{
width:92%;
max-width:1050px;
margin:14px auto 0;
position:relative;
}

.search input{
width:100%;
height:44px;
border:1px solid rgba(255,255,255,.12);
border-radius:13px;
background:#0b1b36;
color:white;
padding:0 43px 0 15px;
outline:none;
font-family:inherit;
font-size:10px;
}

.searchIcon{
position:absolute;
right:14px;
top:13px;
font-size:15px;
}

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
border:1px solid rgba(255,255,255,.08);
text-decoration:none;
color:white;
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

.type-video{background:#087db5}
.type-summary{background:#7442a8}
.type-test{background:#bd741b}
.type-room{background:#16846d}

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
}

.option:hover{
transform:translateY(-3px);
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

.c1{background:linear-gradient(135deg,#073b67,#087aa2)}
.c1 .optionIcon{background:#079ed3}

.c2{background:linear-gradient(135deg,#36205e,#69358b)}
.c2 .optionIcon{background:#9856d8}

.c3{background:linear-gradient(135deg,#694218,#a86616)}
.c3 .optionIcon{background:#eaa52e}

.c4{background:linear-gradient(135deg,#104a43,#147660)}
.c4 .optionIcon{background:#1ac29f}

.challenge{
padding:17px;
border-radius:17px;
background:linear-gradient(135deg,#30205d,#151e4b);
border:1px solid rgba(180,120,255,.18);
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

.stats{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:8px;
}

.stat{
padding:13px 8px;
border-radius:13px;
background:#0a1b35;
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
background:#0a1b36;
border:1px solid rgba(100,170,230,.1);
}

.lessonIcon{
width:36px;
height:36px;
border-radius:10px;
display:flex;
align-items:center;
justify-content:center;
font-size:15px;
background:linear-gradient(135deg,#00aeea,#5b51dc);
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
background:rgba(40,200,255,.08);
}

.futureGrid{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:8px;
}

.future{
padding:14px 8px;
border-radius:14px;
text-align:center;
background:#0a1b36;
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

.empty{
padding:21px;
border-radius:14px;
text-align:center;
color:#7188a4;
font-size:8px;
background:#091931;
border:1px dashed #294563;
}

footer{
text-align:center;
padding:28px 0 18px;
color:#4e6682;
font-size:7px;
}


/* نافذة تسجيل الدخول */

.modal{
position:fixed;
inset:0;
background:rgba(0,0,0,.72);
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
background:linear-gradient(145deg,#101f42,#1d1740);
border:1px solid rgba(100,200,255,.18);
border-radius:22px;
padding:23px;
box-shadow:0 25px 80px rgba(0,0,0,.5);
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

.loginBox .sub{
font-size:8px;
color:#8195b1;
margin-bottom:18px;
}

.loginBox input{
width:100%;
height:42px;
margin-bottom:9px;
border:1px solid rgba(255,255,255,.1);
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
background:linear-gradient(135deg,#09a9df,#7650e5);
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
color:#ff9b9b;
}


/* زخارف */

.float{
position:fixed;
top:-50px;
font-size:18px;
opacity:.25;
pointer-events:none;
animation:fall linear infinite;
z-index:0;
}

.a1{right:10%;animation-duration:11s}
.a2{right:30%;animation-duration:15s;animation-delay:2s}
.a3{right:50%;animation-duration:12s;animation-delay:4s}
.a4{right:72%;animation-duration:16s;animation-delay:1s}
.a5{right:90%;animation-duration:13s;animation-delay:5s}

@keyframes fall{
from{
transform:translateY(-60px) rotate(0);
}
to{
transform:translateY(110vh) rotate(180deg);
}
}

@media(max-width:650px){

.options{
grid-template-columns:repeat(4,1fr);
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

.hero h1{
font-size:21px;
}

.userName{
display:none!important;
}

}

</style>
</head>


<body>


<!-- زخارف -->

<div class="float a1">✂️</div>
<div class="float a2">📚</div>
<div class="float a3">✏️</div>
<div class="float a4">📐</div>
<div class="float a5">⭐</div>


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


<div class="userArea">

<span
id="userName"
class="userName">
</span>

<button
id="loginBtn"
class="loginBtn"
onclick="openLogin()">

👤 دخول الطالب

</button>

<button
id="logoutBtn"
class="logoutBtn"
onclick="logout()">

خروج

</button>

</div>

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
تعلّم الرياضيات، شاهد الحصص، راجع الملخصات واختبر نفسك.
</p>

</section>


<!-- البحث -->

<div class="search">

<span class="searchIcon">🔎</span>

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

<h2>🎯 ماذا تريد اليوم؟</h2>

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


<!-- التحدي -->

<section class="section">

<div class="sectionHead">

<h2>🔥 تحدي اليوم</h2>

<span>سؤال سريع</span>

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


<!-- التقدم -->

<section class="section">

<div class="sectionHead">

<h2>🏆 مستواك</h2>

<span>تقدمك</span>

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


<!-- الحصص -->

<section class="section" id="lessons">

<div class="sectionHead">

<h2>🎥 أحدث الحصص</h2>

<span>من الأستاذ</span>

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
<p>معلومات مهمة</p>
</div>

<div class="future">
<div class="futureIcon">📌</div>
<h3>المفضلة</h3>
<p>للدراسة لاحقًا</p>
</div>

</div>

</section>


<!-- الاختبارات -->

<section class="section" id="tests">

<div class="sectionHead">
<h2>📝 الاختبارات</h2>
</div>

<div class="empty">
الاختبارات التفاعلية ستظهر هنا 🚀
</div>

</section>


<!-- الرومات -->

<section class="section" id="rooms">

<div class="sectionHead">
<h2>💬 الرومات</h2>
</div>

<div class="empty">
رومات الدراسة ستظهر هنا 👥
</div>

</section>


<footer>
منبر ون • منصة الرياضيات 🎓
</footer>


</div>


<!-- نافذة تسجيل الدخول -->

<div
id="loginModal"
class="modal">

<div class="loginBox">

<button
class="close"
onclick="closeLogin()">
×
</button>

<h2 id="formTitle">
👤 تسجيل دخول الطالب
</h2>

<p class="sub">
ادخل إلى حسابك لمتابعة تعلمك
</p>


<div
id="message"
class="message">
</div>


<input
id="email"
type="email"
placeholder="📧 البريد الإلكتروني">


<input
id="password"
type="password"
placeholder="🔐 كلمة المرور">


<button
class="main"
onclick="submitAuth()">

<span id="submitText">
تسجيل الدخول
</span>

</button>


<div class="switch">

<span id="switchText">
ليس لديك حساب؟
</span>

<button onclick="toggleMode()">

<span id="switchButton">
إنشاء حساب

</span>

</button>

</div>

</div>

</div>


<script>

/* =================================
   إعداد Supabase
================================= */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


let isSignup=false;
let allContent=[];


/* =================================
   فتح النافذة
================================= */

function openLogin(){

document
.getElementById("loginModal")
.classList.add("show");

}


function closeLogin(){

document
.getElementById("loginModal")
.classList.remove("show");

clearMessage();

}


/* =================================
   تغيير تسجيل / إنشاء
================================= */

function toggleMode(){

isSignup=!isSignup;

clearMessage();

if(isSignup){

document.getElementById("formTitle").innerText =
"🆕 إنشاء حساب طالب";

document.getElementById("submitText").innerText =
"إنشاء الحساب";

document.getElementById("switchText").innerText =
"لديك حساب؟";

document.getElementById("switchButton").innerText =
"تسجيل الدخول";

}else{

document.getElementById("formTitle").innerText =
"👤 تسجيل دخول الطالب";

document.getElementById("submitText").innerText =
"تسجيل الدخول";

document.getElementById("switchText").innerText =
"ليس لديك حساب؟";

document.getElementById("switchButton").innerText =
"إنشاء حساب";

}

}


/* =================================
   التسجيل / الدخول
================================= */

async function submitAuth(){

const email =
document.getElementById("email").value.trim();

const password =
document.getElementById("password").value;


if(!email || !password){

showMessage(
"أدخل البريد الإلكتروني وكلمة المرور."
);

return;

}


if(password.length < 6){

showMessage(
"كلمة المرور يجب أن تكون 6 أحرف على الأقل."
);

return;

}


showMessage("جاري التنفيذ...","info");


try{

let response;


if(isSignup){

response =
await fetch(
SUPABASE_URL +
"/auth/v1/signup",
{
method:"POST",

headers:{
"Content-Type":"application/json",
"apikey":SUPABASE_KEY
},

body:JSON.stringify({
email:email,
password:password
})

});

}else{

response =
await fetch(
SUPABASE_URL +
"/auth/v1/token?grant_type=password",
{
method:"POST",

headers:{
"Content-Type":"application/json",
"apikey":SUPABASE_KEY
},

body:JSON.stringify({
email:email,
password:password
})

});

}


const data =
await response.json();


if(!response.ok){

throw new Error(
data.msg ||
data.message ||
data.error_description ||
"حدث خطأ"
);

}


if(isSignup){

if(data.access_token){

saveSession(data);

showMessage(
"تم إنشاء الحساب بنجاح 🎉",
"success"
);

setTimeout(closeLogin,800);

}else{

showMessage(
"تم إنشاء الحساب. تحقق من بريدك الإلكتروني لتفعيل الحساب 📧",
"success"
);

}

}else{

saveSession(data);

showMessage(
"تم تسجيل الدخول بنجاح 🎉",
"success"
);

setTimeout(closeLogin,600);

}

}catch(error){

console.error(error);

showMessage(
error.message || "حدث خطأ، حاول مرة أخرى."
);

}

}


/* =================================
   حفظ الجلسة
================================= */

function saveSession(data){

if(data.access_token){

localStorage.setItem(
"minbar_access_token",
data.access_token
);

}

if(data.refresh_token){

localStorage.setItem(
"minbar_refresh_token",
data.refresh_token
);

}

if(data.user){

localStorage.setItem(
"minbar_user",
JSON.stringify(data.user)
);

}

updateUserUI();

}


/* =================================
   تسجيل الخروج
================================= */

function logout(){

localStorage.removeItem(
"minbar_access_token"
);

localStorage.removeItem(
"minbar_refresh_token"
);

localStorage.removeItem(
"minbar_user"
);

updateUserUI();

alert("تم تسجيل الخروج 👋");

}


/* =================================
   تحديث واجهة المستخدم
================================= */

function updateUserUI(){

const user =
JSON.parse(
localStorage.getItem("minbar_user") || "null"
);

const loginBtn =
document.getElementById("loginBtn");

const logoutBtn =
document.getElementById("logoutBtn");

const userName =
document.getElementById("userName");


if(user){

loginBtn.style.display="none";

logoutBtn.style.display="block";

userName.style.display="block";

userName.innerText =
"👋 "+(
user.email ||
"الطالب"
);

}else{

loginBtn.style.display="block";

logoutBtn.style.display="none";

userName.style.display="none";

}

}


/* =================================
   الرسائل
================================= */

function showMessage(text,type="error"){

const message =
document.getElementById("message");

message.innerText=text;

if(type==="success"){

message.style.color="#49e0ad";

}else if(type==="info"){

message.style.color="#55cfff";

}else{

message.style.color="#ff9999";

}

}


function clearMessage(){

document.getElementById("message").innerText="";

}


/* =================================
   جلب جدول من Supabase
================================= */

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
"apikey":SUPABASE_KEY,
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


/* =================================
   تحميل كل المحتوى للبحث
================================= */

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


lessons.forEach(item=>{

allContent.push({

typeName:"فيديو",

icon:"🎥",

className:"type-video",

title:item.title || "حصة رياضيات",

description:
item.description ||
item.unit ||
"حصة تعليمية",

url:item.video_url || "#"

});

});


summaries.forEach(item=>{

allContent.push({

typeName:"ملخص",

icon:"📚",

className:"type-summary",

title:item.title || "ملخص",

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


tests.forEach(item=>{

allContent.push({

typeName:"اختبار",

icon:"📝",

className:"type-test",

title:item.title || "اختبار",

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


/* =================================
   البحث الشامل
================================= */

function searchEverything(){

const text =
document
.getElementById("search")
.value
.toLowerCase()
.trim();

const resultsBox =
document.getElementById("searchResults");

const list =
document.getElementById("resultList");


if(!text){

resultsBox.classList.remove("show");

return;

}


resultsBox.classList.add("show");


const results =
allContent.filter(item=>{

const title =
String(item.title || "")
.toLowerCase();

const description =
String(item.description || "")
.toLowerCase();

const type =
String(item.typeName || "")
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
${item.typeName} •
${safe(item.description)}
</p>

</div>

`;


list.appendChild(result);

});

}


/* =================================
   تحميل الحصص
================================= */

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
new Date(b.created_at || 0) -
new Date(a.created_at || 0)
)
.forEach(lesson=>{

const item =
document.createElement("div");

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
${safe(lesson.unit || "رياضيات")}
${lesson.duration
? " • "+safe(lesson.duration)
: ""}
</p>

</div>

<a
class="watch"
href="${safe(lesson.video_url || "#")}"
target="_blank">

مشاهدة

</a>

`;


box.appendChild(item);

});

}


/* =================================
   حماية النصوص
================================= */

function safe(text){

return String(text ?? "")
.replaceAll("&","&amp;")
.replaceAll("<","&lt;")
.replaceAll(">","&gt;")
.replaceAll('"',"&quot;")
.replaceAll("'","&#039;");

}


/* =================================
   تحدي اليوم
================================= */

function challengeAnswer(){

alert(
"الإجابة الصحيحة هي: 60 🎉"
);

}


/* =================================
   تشغيل الموقع
================================= */

updateUserUI();

Promise.all([
loadEverything(),
loadLessons()
]);

</script>

</body>
</html>
