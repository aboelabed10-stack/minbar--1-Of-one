<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>منبر ون | منصة الرياضيات</title>

<style>
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}

body{
font-family:Tahoma,Arial,sans-serif;
background:
radial-gradient(circle at 85% 5%,#351020 0,transparent 25%),
radial-gradient(circle at 10% 55%,#21114a 0,transparent 28%),
radial-gradient(circle at 70% 90%,#3a1018 0,transparent 25%),
#050817;
color:#fff;
min-height:100vh;
overflow-x:hidden
}

button,input{font-family:inherit}
button{cursor:pointer}

.page{position:relative;z-index:2}

/* ===== الخلفية المتحركة ===== */

.math-bg{
position:fixed;
inset:0;
overflow:hidden;
pointer-events:none;
z-index:0
}

.math-item{
position:absolute;
top:-80px;
font-size:25px;
font-weight:bold;
color:#ff334f;
opacity:.18;
animation:fall linear infinite;
text-shadow:0 0 15px #ff193d
}

.math-item:nth-child(1){left:5%;animation-duration:12s;animation-delay:0s}
.math-item:nth-child(2){left:15%;animation-duration:16s;animation-delay:3s}
.math-item:nth-child(3){left:27%;animation-duration:13s;animation-delay:6s}
.math-item:nth-child(4){left:39%;animation-duration:18s;animation-delay:1s}
.math-item:nth-child(5){left:52%;animation-duration:14s;animation-delay:4s}
.math-item:nth-child(6){left:65%;animation-duration:17s;animation-delay:2s}
.math-item:nth-child(7){left:76%;animation-duration:12s;animation-delay:7s}
.math-item:nth-child(8){left:88%;animation-duration:19s;animation-delay:5s}
.math-item:nth-child(9){left:95%;animation-duration:15s;animation-delay:8s}

@keyframes fall{
0%{transform:translateY(-100px) rotate(0deg);opacity:0}
10%{opacity:.2}
50%{opacity:.3}
90%{opacity:.15}
100%{transform:translateY(110vh) rotate(360deg);opacity:0}
}

/* ===== الهيدر ===== */

header{
height:70px;
background:rgba(5,8,23,.88);
backdrop-filter:blur(16px);
border-bottom:1px solid #ff334f26;
position:sticky;
top:0;
z-index:50
}

.header{
width:92%;
max-width:1100px;
height:100%;
margin:auto;
display:flex;
align-items:center;
justify-content:space-between
}

.logo{
display:flex;
align-items:center;
gap:9px
}

.logoIcon{
width:39px;
height:39px;
border-radius:12px;
display:flex;
align-items:center;
justify-content:center;
font-size:19px;
background:linear-gradient(135deg,#ff1744,#a50025);
box-shadow:0 0 22px #ff174455
}

.logoText{
font-size:15px;
font-weight:bold
}

.logoText small{
display:block;
color:#a98690;
font-size:6px;
margin-top:3px
}

.loginButtons{
display:flex;
gap:7px;
align-items:center
}

.studentBtn,.teacherBtn,.logoutBtn{
border:0;
color:#fff;
font-size:8px;
padding:9px 11px;
border-radius:10px;
display:flex;
align-items:center;
gap:5px;
transition:.25s
}

.studentBtn{
background:linear-gradient(135deg,#d50935,#8d0c30)
}

.teacherBtn{
background:linear-gradient(135deg,#f04a22,#9e2416);
text-decoration:none
}

.logoutBtn{
background:linear-gradient(135deg,#8f3048,#b84b62);
display:none
}

.studentBtn:hover,.teacherBtn:hover,.logoutBtn:hover{
transform:translateY(-2px);
box-shadow:0 8px 25px #ff174433
}

.userBox{
display:none;
align-items:center;
gap:7px;
background:#101226;
border:1px solid #ff334f24;
padding:5px 8px;
border-radius:10px;
font-size:7px;
color:#d9aeb7
}

.userIcon{
width:27px;
height:27px;
border-radius:8px;
display:flex;
align-items:center;
justify-content:center;
background:linear-gradient(135deg,#ff1744,#7d0b29)
}

/* ===== Hero ===== */

.hero,.search,.section{
width:92%;
max-width:1100px;
margin-left:auto;
margin-right:auto
}

.hero{
margin-top:22px;
padding:32px 23px;
border-radius:25px;
background:
linear-gradient(135deg,rgba(74,13,36,.96),rgba(34,17,69,.95)),
linear-gradient(135deg,#ff1744,#7c19b8);
border:1px solid #ff536d3d;
box-shadow:0 20px 65px #0005;
position:relative;
overflow:hidden
}

.hero:after{
content:"π   √   ∑   △   ○";
position:absolute;
left:20px;
bottom:10px;
font-size:35px;
letter-spacing:14px;
color:#ff4963;
opacity:.08;
transform:rotate(-5deg)
}

.heroBadge{
display:inline-block;
padding:7px 10px;
border-radius:20px;
background:#ff24451a;
border:1px solid #ff496330;
color:#ff7185;
font-size:8px
}

.hero h1{
font-size:25px;
line-height:1.5;
margin-top:10px
}

.hero h1 span{
color:#ff526d;
text-shadow:0 0 20px #ff174433
}

.hero p{
color:#c2aeb5;
font-size:9px;
line-height:1.9;
margin-top:5px
}

/* ===== البحث ===== */

.search{
margin-top:14px;
position:relative
}

.search input{
width:100%;
height:45px;
border:1px solid #ff334f2b;
border-radius:13px;
background:#0d1025;
color:#fff;
padding:0 43px 0 15px;
outline:none;
font-size:10px;
transition:.25s
}

.search input:focus{
border-color:#ff405c;
box-shadow:0 0 20px #ff17441c
}

.searchIcon{
position:absolute;
right:14px;
top:13px;
font-size:15px;
color:#ff405c
}

/* ===== الأقسام ===== */

.section{
margin-top:23px
}

.sectionHead{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:11px
}

.sectionHead h2{
font-size:15px
}

.sectionHead span{
font-size:7px;
color:#9d7780
}

.options,.stats,.lessonList,.contentGrid{
display:grid;
gap:9px
}

.options{
grid-template-columns:repeat(4,1fr)
}

.option{
color:#fff;
text-decoration:none;
border-radius:16px;
padding:14px 8px;
border:1px solid #ffffff15;
transition:.25s;
position:relative;
overflow:hidden
}

.option:hover{
transform:translateY(-4px);
box-shadow:0 12px 30px #0006
}

.optionIcon{
width:31px;
height:31px;
border-radius:9px;
display:flex;
justify-content:center;
align-items:center;
font-size:14px;
margin-bottom:7px;
background:linear-gradient(135deg,#ff1744,#a9002b)!important;
box-shadow:0 0 15px #ff174433
}

.option h3{
font-size:9px
}

.option p{
color:#ffffffa8;
font-size:6px;
margin-top:4px
}

.c1{background:linear-gradient(135deg,#41101e,#701b35)}
.c2{background:linear-gradient(135deg,#27134c,#552070)}
.c3{background:linear-gradient(135deg,#4b2116,#79251a)}
.c4{background:linear-gradient(135deg,#111d42,#24315e)}

/* ===== التحدي ===== */

.challenge{
padding:17px;
border-radius:17px;
background:linear-gradient(135deg,#30113d,#17183f);
border:1px solid #ff426033;
box-shadow:0 12px 40px #0003
}

.challengeTag{
color:#ff7890;
font-size:8px
}

.challenge h3{
font-size:12px;
margin-top:8px
}

.question{
margin-top:10px;
background:#0004;
padding:14px;
border-radius:11px;
font-size:15px;
text-align:center;
line-height:1.8;
border:1px solid #ffffff0c
}

.challenge button,.quizBtn{
margin-top:10px;
width:100%;
border:0;
padding:10px;
border-radius:9px;
color:#fff;
background:linear-gradient(135deg,#ff1744,#a70c42);
font-size:9px
}

.quizArea{
display:none;
margin-top:10px
}

.answers{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:7px
}

.answer{
border:1px solid #ffffff1c;
background:#0c1028;
color:#fff;
padding:10px;
border-radius:9px;
font-size:9px
}

.answer:hover{
background:#24152d;
border-color:#ff405c
}

.feedback{
text-align:center;
font-size:9px;
margin-top:8px;
min-height:20px
}

/* ===== الإحصائيات ===== */

.stats{
grid-template-columns:repeat(3,1fr)
}

.stat{
padding:13px 8px;
border-radius:13px;
background:#0d1128;
border:1px solid #ffffff12;
text-align:center
}

.stat strong{
display:block;
font-size:17px
}

.stat span{
display:block;
color:#8f7480;
font-size:7px;
margin-top:5px
}

.points strong{color:#ffcc4d}
.progress strong{color:#ff536d}
.rank strong{color:#d27cff}

/* ===== الحصص ===== */

.lessonList{
grid-template-columns:repeat(2,1fr)
}

.lesson{
display:flex;
align-items:center;
gap:9px;
padding:12px;
border-radius:14px;
background:#0c1129;
border:1px solid #ff334f14;
min-width:0;
transition:.25s
}

.lesson:hover{
transform:translateY(-2px);
border-color:#ff334f33
}

.lessonIcon{
width:38px;
height:38px;
border-radius:10px;
display:flex;
align-items:center;
justify-content:center;
font-size:15px;
background:linear-gradient(135deg,#ff1744,#7d0b2a);
flex-shrink:0
}

.noVideoIcon{
background:linear-gradient(135deg,#765016,#a86c1e)
}

.lessonInfo{
min-width:0;
flex:1
}

.lessonInfo h3{
font-size:9px;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis
}

.lessonInfo p{
color:#8f7480;
font-size:7px;
margin-top:5px;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis
}

.watch,.noVideo{
margin-right:auto;
font-size:7px;
padding:7px 8px;
border-radius:7px;
white-space:nowrap
}

.watch{
color:#ff7084;
text-decoration:none;
background:#ff174414
}

.noVideo{
color:#ffca66;
background:#dc96281a
}

/* ===== البطاقات ===== */

.contentGrid{
grid-template-columns:repeat(3,1fr)
}

.contentCard{
padding:15px 10px;
border-radius:14px;
background:#0c1129;
border:1px solid #ffffff12;
min-width:0;
transition:.25s
}

.contentCard:hover{
transform:translateY(-3px);
border-color:#ff334f30;
box-shadow:0 12px 35px #0005
}

.contentIcon{
width:36px;
height:36px;
border-radius:10px;
display:flex;
align-items:center;
justify-content:center;
font-size:17px;
margin-bottom:9px
}

.summaryIcon{
background:linear-gradient(135deg,#ff1744,#8d174f)
}

.testIcon{
background:linear-gradient(135deg,#ff5b24,#a72c18)
}

.roomIcon{
background:linear-gradient(135deg,#d71948,#721b62)
}

.contentCard h3{
font-size:10px;
line-height:1.6
}

.contentCard p{
color:#8f7480;
font-size:7px;
line-height:1.7;
margin-top:5px
}

.contentButton{
display:block;
margin-top:10px;
padding:8px;
border-radius:8px;
text-align:center;
text-decoration:none;
color:#fff;
font-size:7px;
background:#ff17441a;
border:1px solid #ff334f14
}

.empty,.loading{
padding:22px;
border-radius:14px;
text-align:center;
color:#907985;
font-size:8px;
line-height:2;
background:#0a1024;
border:1px dashed #ff334f25
}

.loading{
border:0;
color:#ff6078
}

/* ===== نتائج البحث ===== */

.searchResults{
width:92%;
max-width:1100px;
margin:9px auto 0;
display:none
}

.searchResults.show{
display:block
}

.resultList{
display:grid;
gap:7px
}

.result{
display:flex;
align-items:center;
gap:9px;
padding:10px;
border-radius:12px;
background:#0c1129;
border:1px solid #ffffff14;
text-decoration:none;
color:#fff
}

.resultIcon{
width:33px;
height:33px;
border-radius:9px;
display:flex;
align-items:center;
justify-content:center;
flex-shrink:0
}

.type-video{background:#b80e35}
.type-summary{background:#7b1b65}
.type-test{background:#b53b18}
.type-room{background:#8d174f}

.resultInfo{
min-width:0;
flex:1
}

.resultInfo h3{
font-size:9px;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis
}

.resultInfo p{
font-size:7px;
color:#8f7480;
margin-top:4px
}

/* ===== الفوتر ===== */

footer{
text-align:center;
padding:28px 0 18px;
color:#674f5c;
font-size:7px
}

/* ===== تسجيل الدخول ===== */

.modal{
position:fixed;
inset:0;
background:#000c;
backdrop-filter:blur(7px);
display:none;
align-items:center;
justify-content:center;
z-index:100;
padding:20px
}

.modal.show{
display:flex
}

.loginBox{
width:100%;
max-width:390px;
background:linear-gradient(145deg,#17102c,#281020);
border:1px solid #ff526d38;
border-radius:22px;
padding:23px;
box-shadow:0 25px 80px #0008
}

.close{
float:left;
border:0;
background:none;
color:#a28b96;
font-size:22px
}

.loginBox h2{
font-size:18px;
margin-bottom:6px
}

.loginBox p{
font-size:8px;
color:#9c8590;
margin-bottom:18px;
line-height:1.8
}

.loginBox input{
width:100%;
height:42px;
margin-bottom:9px;
border:1px solid #ffffff1a;
border-radius:10px;
background:#0b0e20;
color:#fff;
padding:0 12px;
outline:none;
font-size:10px
}

.loginBox input:focus{
border-color:#ff405c
}

.loginBox button.main{
width:100%;
height:42px;
border:0;
border-radius:10px;
color:#fff;
background:linear-gradient(135deg,#ff1744,#8d0d3a);
font-size:10px
}

.switch{
margin-top:13px;
text-align:center;
font-size:8px;
color:#9b8791
}

.switch button{
border:0;
background:none;
color:#ff5c74
}

.message{
min-height:22px;
margin-bottom:7px;
text-align:center;
font-size:8px;
line-height:1.7
}

.successMessage{color:#67e8b1}
.errorMessage{color:#ff8f9d}
.infoMessage{color:#ff7187}

/* ===== الهاتف ===== */

@media(max-width:750px){
.hero,.search,.section,.searchResults{
width:94%
}

.lessonList{
grid-template-columns:1fr
}
}

@media(max-width:650px){
.options{
grid-template-columns:repeat(4,1fr);
gap:5px
}

.contentGrid{
grid-template-columns:1fr
}

.hero h1{
font-size:21px
}

.option p{
display:none
}
}

@media(max-width:430px){
.logoIcon{
width:34px;
height:34px
}

.logoText{
font-size:11px
}

.studentBtn,.teacherBtn{
padding:7px 5px;
font-size:6px
}

.hero h1{
font-size:19px
}

.answers{
grid-template-columns:1fr
}
}
</style>
</head>

<body>

<!-- عناصر الرياضيات المتساقطة -->
<div class="math-bg">
<div class="math-item">★</div>
<div class="math-item">π</div>
<div class="math-item">√</div>
<div class="math-item">△</div>
<div class="math-item">∑</div>
<div class="math-item">✦</div>
<div class="math-item">○</div>
<div class="math-item">×</div>
<div class="math-item">★</div>
</div>

<header>
<div class="header">

<div class="logo">
<div class="logoIcon">∑</div>
<div class="logoText">
منبر ون
<small>MINBAR ONE • MATH</small>
</div>
</div>

<div class="loginButtons">

<button class="studentBtn" id="studentLoginButton" onclick="openStudentLogin()">
👨‍🎓 دخول الطالب
</button>

<a class="teacherBtn" href="teacher.html">
👨‍🏫 دخول الأستاذ
</a>

<div class="userBox" id="userBox">
<div class="userIcon">👨‍🎓</div>
<span id="userEmail">طالب</span>
</div>

<button class="logoutBtn" id="logoutButton" onclick="logoutStudent()">
🚪 خروج
</button>

</div>
</div>
</header>

<div class="page">

<section class="hero">

<div class="heroBadge">🧮 منصة الرياضيات</div>

<h1>
مرحبًا بك في <span>منبر ون</span> 🚀
</h1>

<p>
تعلّم الرياضيات، شاهد الحصص، راجع الملخصات، حل الاختبارات وادخل إلى رومات الدراسة.
</p>

</section>

<div class="search">
<span class="searchIcon">🔎</span>
<input
id="search"
type="text"
placeholder="ابحث عن حصة أو ملخص أو اختبار أو روم..."
oninput="searchEverything()">
</div>

<div id="searchResults" class="searchResults">
<div class="sectionHead">
<h2>🔎 نتائج البحث</h2>
</div>
<div id="resultList" class="resultList"></div>
</div>

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

<section class="section">

<div class="sectionHead">
<h2>🔥 تحدي اليوم</h2>
<span id="challengeProgress">السؤال 1 من 6</span>
</div>

<div class="challenge">

<div class="challengeTag">🧠 تحدي متدرج</div>

<h3 id="challengeTitle">
ابدأ بتحدي اليوم، ثم ستظهر 5 أسئلة أصعب تدريجيًا.
</h3>

<div id="challengeQuestion" class="question">
8 × 7 + 4 = ؟
</div>

<div id="quizArea" class="quizArea">
<div id="answers" class="answers"></div>
<div id="feedback" class="feedback"></div>
</div>

<button id="challengeButton" onclick="startOrAnswerChallenge()">
ابدأ التحدي
</button>

</div>
</section>

<section class="section">

<div class="sectionHead">
<h2>🏆 مستواك</h2>
<span>تقدمك</span>
</div>

<div class="stats">

<div class="stat points">
<strong id="pointsStat">0</strong>
<span>⭐ النقاط</span>
</div>

<div class="stat progress">
<strong id="progressStat">0%</strong>
<span>📊 التقدم</span>
</div>

<div class="stat rank">
<strong id="rankStat">🥉</strong>
<span>المستوى</span>
</div>

</div>
</section>

<section class="section" id="lessons">

<div class="sectionHead">
<h2>🎥 أحدث الحصص</h2>
<span>من الأستاذ</span>
</div>

<div id="lessonsContainer" class="lessonList">
<div class="loading">⏳ جاري تحميل الحصص...</div>
</div>

</section>

<section class="section" id="summaries">

<div class="sectionHead">
<h2>📚 الملخصات</h2>
<span>من الأستاذ</span>
</div>

<div id="summariesContainer" class="contentGrid">
<div class="loading">⏳ جاري تحميل الملخصات...</div>
</div>

</section>

<section class="section" id="tests">

<div class="sectionHead">
<h2>📝 الاختبارات</h2>
<span>من الأستاذ</span>
</div>

<div id="testsContainer" class="contentGrid">
<div class="loading">⏳ جاري تحميل الاختبارات...</div>
</div>

</section>

<section class="section" id="rooms">

<div class="sectionHead">
<h2>💬 الرومات</h2>
<span>من الأستاذ</span>
</div>

<div id="roomsContainer" class="contentGrid">
<div class="loading">⏳ جاري تحميل الرومات...</div>
</div>

</section>

<footer>
منبر ون • منصة الرياضيات 🎓
</footer>

</div>

<!-- نافذة تسجيل الطالب -->

<div id="studentModal" class="modal">

<div class="loginBox">

<button class="close" onclick="closeStudentLogin()">×</button>

<h2 id="authTitle">
👨‍🎓 دخول الطالب
</h2>

<p id="authDescription">
سجّل الدخول لمتابعة رحلتك التعليمية.
</p>

<div id="studentMessage" class="message"></div>

<input
id="studentEmail"
type="email"
autocomplete="email"
placeholder="📧 البريد الإلكتروني">

<input
id="studentPassword"
type="password"
autocomplete="current-password"
placeholder="🔐 كلمة المرور">

<button
id="authMainButton"
class="main"
onclick="studentAuth()">
تسجيل الدخول
</button>

<div class="switch">

<span id="switchText">
ليس لديك حساب؟
</span>

<button id="switchButton" onclick="switchAuthMode()">
إنشاء حساب
</button>

</div>

</div>
</div>

<script>

/* ================================
   SUPABASE
================================ */

const SUPABASE_URL="https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY="sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";

let allLessons=[];
let allSummaries=[];
let allTests=[];
let allRooms=[];

let isSignupMode=false;

let challengeIndex=0;
let challengeStarted=false;
let challengeAnswered=false;


/* ================================
   تحديات الرياضيات
================================ */

const challenges=[

{
q:"8 × 7 + 4 = ؟",
a:["60","56","64","68"],
c:0,
p:10
},

{
q:"(18 ÷ 3) × 5 − 7 = ؟",
a:["23","25","17","27"],
c:0,
p:15
},

{
q:"إذا كان 3x + 6 = 21، فما قيمة x؟",
a:["5","6","7","9"],
c:0,
p:20
},

{
q:"ما ناتج 2³ + 4²؟",
a:["24","20","16","32"],
c:0,
p:25
},

{
q:"إذا كان 2x − 5 = 3x − 17، فما قيمة x؟",
a:["12","10","14","8"],
c:0,
p:30
},

{
q:"إذا كان a=3 و b=−2، فما قيمة a² − 2ab + b²؟",
a:["25","13","17","9"],
c:0,
p:40
}

];


/* ================================
   حماية النصوص
================================ */

function safe(t){

return String(t??"")
.replaceAll("&","&amp;")
.replaceAll("<","&lt;")
.replaceAll(">","&gt;")
.replaceAll('"',"&quot;")
.replaceAll("'","&#039;");

}


/* ================================
   اتصال Supabase
================================ */

async function supabaseRequest(url,options={}){

return fetch(url,{
...options,
headers:{
apikey:SUPABASE_KEY,
"Content-Type":"application/json",
...(options.headers||{})
}
});

}


/* ================================
   جلب الجداول
================================ */

async function getTable(table){

try{

const r=await supabaseRequest(
`${SUPABASE_URL}/rest/v1/${table}?select=*`
);

if(!r.ok)return[];

const d=await r.json();

return Array.isArray(d)?d:[];

}catch(e){

console.error(e);
return[];

}

}


function sortNew(a,b){

return new Date(b.created_at||0)-new Date(a.created_at||0);

}


/* ================================
   الحصص
================================ */

async function loadLessons(){

const box=document.getElementById("lessonsContainer");

const data=await getTable("lessons");

allLessons=data.sort(sortNew);

if(!data.length){

box.innerHTML=
'<div class="empty">📚 لا توجد حصص حتى الآن.</div>';

return;

}

box.innerHTML="";

data.forEach(x=>{

const url=String(x.video_url||"").trim();

const d=document.createElement("div");

d.className="lesson";

d.innerHTML=`

<div class="lessonIcon ${url?'':'noVideoIcon'}">
${url?'🎥':'⚠️'}
</div>

<div class="lessonInfo">

<h3>
${safe(x.title||'حصة رياضيات')}
</h3>

<p>
${safe(x.unit||'رياضيات')}
${x.duration?' • '+safe(x.duration):''}
</p>

</div>

${
url
?
`<a class="watch"
href="${safe(url)}"
target="_blank"
rel="noopener">
▶️ مشاهدة
</a>`
:
'<span class="noVideo">⚠️ لا يوجد فيديو</span>'
}

`;

box.appendChild(d);

});

}


/* ================================
   الملخصات
================================ */

async function loadSummaries(){

const d=await getTable("summaries");

allSummaries=d.sort(sortNew);

renderCards(
"summariesContainer",
d,
"📚",
"summaryIcon",
["description","content"],
["file_url","url","link"],
"ملخص درس",
"📖 فتح الملخص"
);

}


/* ================================
   الاختبارات
================================ */

async function loadTests(){

const d=await getTable("tests");

allTests=d.sort(sortNew);

renderCards(
"testsContainer",
d,
"📝",
"testIcon",
["description"],
["test_url","url","link"],
"اختبار رياضيات",
"📝 بدء الاختبار"
);

}


/* ================================
   الرومات
================================ */

async function loadRooms(){

const d=await getTable("rooms");

allRooms=d.sort(sortNew);

renderCards(
"roomsContainer",
d,
"💬",
"roomIcon",
["description"],
["room_url","url","link"],
"روم الدراسة",
"💬 دخول الروم"
);

}


/* ================================
   عرض البطاقات
================================ */

function renderCards(
id,
data,
icon,
cls,
descFields,
urlFields,
fallback,
button
){

const box=document.getElementById(id);

if(!data.length){

box.innerHTML=
`<div class="empty">
${icon} لا يوجد محتوى حتى الآن.
</div>`;

return;

}

box.innerHTML="";

data.forEach(x=>{

const desc=
descFields.map(k=>x[k]).find(v=>v)
||fallback;

const url=
String(
urlFields.map(k=>x[k]).find(v=>v)||""
).trim();

const title=
x.title||x.name||fallback;

const d=document.createElement("div");

d.className="contentCard";

d.innerHTML=`

<div class="contentIcon ${cls}">
${icon}
</div>

<h3>${safe(title)}</h3>

<p>${safe(desc)}</p>

${
url
?
`<a
class="contentButton"
href="${safe(url)}"
target="_blank"
rel="noopener">
${button}
</a>`
:
`<span class="contentButton">
${button}
</span>`
}

`;

box.appendChild(d);

});

}


/* ================================
   البحث
================================ */

function searchEverything(){

const text=
document.getElementById("search")
.value
.toLowerCase()
.trim();

const box=document.getElementById("searchResults");

const list=document.getElementById("resultList");

if(!text){

box.classList.remove("show");

return;

}

box.classList.add("show");

let r=[];

[
[allLessons,"lesson","🎥","حصة","video_url"],
[allSummaries,"summary","📚","ملخص","file_url"],
[allTests,"test","📝","اختبار","test_url"],
[allRooms,"room","💬","روم","room_url"]

].forEach(
([arr,type,icon,name,urlKey])=>{

arr.forEach(x=>{

const s=
JSON.stringify(x)
.toLowerCase();

if(s.includes(text)){

r.push({
type,
icon,
name,
title:x.title||x.name||name,
url:x[urlKey]||x.url||x.link||""
});

}

});

}
);

if(!r.length){

list.innerHTML=
'<div class="empty">🔍 لم نجد شيئًا مطابقًا.</div>';

return;

}

list.innerHTML="";

r.forEach(x=>{

const d=
document.createElement(x.url?'a':'div');

d.className="result";

if(x.url){

d.href=x.url;
d.target="_blank";
d.rel="noopener";

}

d.innerHTML=`

<div class="resultIcon type-${x.type}">
${x.icon}
</div>

<div class="resultInfo">

<h3>
${safe(x.title)}
</h3>

<p>${x.name}</p>

</div>

`;

list.appendChild(d);

});

}


/* ================================
   المستخدم
================================ */

function getSavedUser(){

try{

return JSON.parse(
localStorage.getItem("minbar_user")||"null"
);

}catch{

return null;

}

}


function updateUserInterface(user){

document.getElementById("studentLoginButton")
.style.display=user?"none":"flex";

document.getElementById("userBox")
.style.display=user?"flex":"none";

document.getElementById("logoutButton")
.style.display=user?"flex":"none";

document.getElementById("userEmail")
.textContent=user?.email||"الطالب";

}


/* ================================
   رسائل الدخول
================================ */

function showAuthMessage(t,type="info"){

const b=
document.getElementById("studentMessage");

b.className=
"message "+
(
type==="success"
?"successMessage"
:
type==="error"
?"errorMessage"
:
"infoMessage"
);

b.textContent=t;

}


function clearAuthMessage(){

const b=
document.getElementById("studentMessage");

b.className="message";

b.textContent="";

}


/* ================================
   نافذة الدخول
================================ */

function openStudentLogin(){

isSignupMode=false;

updateAuthWindow();

document
.getElementById("studentModal")
.classList.add("show");

}


function closeStudentLogin(){

document
.getElementById("studentModal")
.classList.remove("show");

clearAuthMessage();

}


function switchAuthMode(){

isSignupMode=!isSignupMode;

updateAuthWindow();

}


function updateAuthWindow(){

document.getElementById("authTitle")
.textContent=
isSignupMode
?"🧑‍🎓 إنشاء حساب طالب"
:"👨‍🎓 دخول الطالب";

document.getElementById("authDescription")
.textContent=
isSignupMode
?
"أنشئ حسابك باستخدام البريد الإلكتروني وكلمة المرور."
:
"سجّل الدخول لمتابعة رحلتك التعليمية.";

document.getElementById("authMainButton")
.textContent=
isSignupMode
?
"إنشاء الحساب"
:
"تسجيل الدخول";

document.getElementById("switchText")
.textContent=
isSignupMode
?
"لديك حساب بالفعل؟"
:
"ليس لديك حساب؟";

document.getElementById("switchButton")
.textContent=
isSignupMode
?
"تسجيل الدخول"
:
"إنشاء حساب";

clearAuthMessage();

}


/* ================================
   تسجيل الطالب
================================ */

async function studentAuth(){

const email=
document.getElementById("studentEmail")
.value
.trim();

const password=
document.getElementById("studentPassword")
.value;

const btn=
document.getElementById("authMainButton");

clearAuthMessage();

if(!email||!password){

showAuthMessage(
"📧 أدخل البريد وكلمة المرور.",
"error"
);

return;

}

if(password.length<6){

showAuthMessage(
"🔐 كلمة المرور يجب أن تكون 6 أحرف على الأقل.",
"error"
);

return;

}

btn.disabled=true;

try{

if(isSignupMode){

showAuthMessage(
"⏳ جاري إنشاء الحساب...",
"info"
);

const r=
await supabaseRequest(
`${SUPABASE_URL}/auth/v1/signup`,
{
method:"POST",
body:JSON.stringify({
email,
password,
data:{role:"student"}
})
}
);

const d=await r.json();

if(!r.ok){

showAuthMessage(
"❌ "+
(
d.msg||
d.error_description||
d.message||
"تعذر إنشاء الحساب."
),
"error"
);

}

else if(d.access_token){

saveSession(d);

showAuthMessage(
"✅ تم إنشاء الحساب وتسجيل الدخول.",
"success"
);

setTimeout(
closeStudentLogin,
700
);

}

else{

showAuthMessage(
"✅ تم إنشاء الحساب. افتح رسالة Gmail للتأكيد، ثم ارجع وسجّل الدخول.",
"success"
);

}

}

else{

showAuthMessage(
"⏳ جاري تسجيل الدخول...",
"info"
);

const r=
await supabaseRequest(
`${SUPABASE_URL}/auth/v1/token?grant_type=password`,
{
method:"POST",
body:JSON.stringify({
email,
password
})
}
);

const d=await r.json();

if(!r.ok){

showAuthMessage(
"❌ "+
(
d.error_description||
d.msg||
"البريد أو كلمة المرور غير صحيحة."
),
"error"
);

}

else{

saveSession(d);

showAuthMessage(
"✅ تم تسجيل الدخول بنجاح 🎉",
"success"
);

setTimeout(
closeStudentLogin,
600
);

}

}

}catch(e){

console.error(e);

showAuthMessage(
"❌ حدث خطأ في الاتصال. حاول مرة أخرى.",
"error"
);

}

btn.disabled=false;

}


/* ================================
   حفظ الجلسة
================================ */

function saveSession(d){

if(d.access_token)
localStorage.setItem(
"minbar_access_token",
d.access_token
);

if(d.refresh_token)
localStorage.setItem(
"minbar_refresh_token",
d.refresh_token
);

if(d.user)
localStorage.setItem(
"minbar_user",
JSON.stringify(d.user)
);

updateUserInterface(
d.user||getSavedUser()
);

}


/* ================================
   استعادة الجلسة
================================ */

async function restoreSession(){

const token=
localStorage.getItem(
"minbar_access_token"
);

const saved=getSavedUser();

if(!token){

updateUserInterface(saved);

return;

}

try{

const r=
await supabaseRequest(
`${SUPABASE_URL}/auth/v1/user`,
{
headers:{
Authorization:`Bearer ${token}`
}
}
);

if(r.ok){

const u=await r.json();

localStorage.setItem(
"minbar_user",
JSON.stringify(u)
);

updateUserInterface(u);

}

else{

updateUserInterface(null);

}

}catch{

updateUserInterface(saved);

}

}


/* ================================
   تسجيل الخروج
================================ */

async function logoutStudent(){

const token=
localStorage.getItem(
"minbar_access_token"
);

try{

if(token){

await supabaseRequest(
`${SUPABASE_URL}/auth/v1/logout`,
{
method:"POST",
headers:{
Authorization:`Bearer ${token}`
}
}
);

}

}catch{}

[
"minbar_access_token",
"minbar_refresh_token",
"minbar_user"

].forEach(
k=>localStorage.removeItem(k)
);

updateUserInterface(null);

alert("تم تسجيل الخروج 👋");

}


/* ================================
   الإحصائيات
================================ */

function loadStats(){

const s=
JSON.parse(
localStorage.getItem("minbar_stats")
||
'{"points":0,"answered":0}'
);

document.getElementById("pointsStat")
.textContent=s.points;

document.getElementById("progressStat")
.textContent=
Math.min(
100,
Math.round(s.answered/6*100)
)+"%";

document.getElementById("rankStat")
.textContent=
s.points>=100
?'🏆'
:
s.points>=60
?'🥇'
:
s.points>=30
?'🥈'
:
'🥉';

}


function addPoints(p){

const s=
JSON.parse(
localStorage.getItem("minbar_stats")
||
'{"points":0,"answered":0}'
);

s.points+=p;

s.answered=
Math.min(
6,
s.answered+1
);

localStorage.setItem(
"minbar_stats",
JSON.stringify(s)
);

loadStats();

}


/* ================================
   التحدي
================================ */

function startOrAnswerChallenge(){

if(!challengeStarted){

challengeStarted=true;

showChallenge();

return;

}

if(challengeAnswered)return;

const correct=
challenges[challengeIndex].c;

const chosen=
Number(
document.querySelector(
'input[name="answer"]:checked'
)?.value
);

if(Number.isNaN(chosen)){

document.getElementById("feedback")
.textContent=
"اختر إجابة أولًا 🙂";

return;

}

challengeAnswered=true;

if(chosen===correct){

document.getElementById("feedback")
.textContent=
`✅ إجابة صحيحة! +${challenges[challengeIndex].p} نقطة 🎉`;

addPoints(
challenges[challengeIndex].p
);

}

else{

document.getElementById("feedback")
.textContent=
`❌ ليست صحيحة. الإجابة: ${challenges[challengeIndex].a[correct]}`;

}

document.getElementById("challengeButton")
.textContent=
challengeIndex<5
?
"السؤال التالي"
:
"إنهاء التحدي";

}


function showChallenge(){

const x=challenges[challengeIndex];

document.getElementById("challengeProgress")
.textContent=
`السؤال ${challengeIndex+1} من 6`;

document.getElementById("challengeQuestion")
.textContent=x.q;

document.getElementById("feedback")
.textContent="";

document.getElementById("answers")
.innerHTML=
x.a.map(
(v,i)=>
`
<label class="answer">
<input type="radio" name="answer" value="${i}">
${safe(v)}
</label>
`
).join("");

document.getElementById("quizArea")
.style.display="block";

document.getElementById("challengeButton")
.textContent="تأكيد الإجابة";

challengeAnswered=false;

}


/* ================================
   الانتقال بين الأسئلة
================================ */

document
.getElementById("challengeButton")
.addEventListener(
"click",
()=>{

if(
challengeStarted&&
challengeAnswered
){

if(challengeIndex<5){

challengeIndex++;

showChallenge();

}

else{

document.getElementById(
"challengeButton"
).disabled=true;

document.getElementById(
"challengeButton"
).textContent=
"🎉 أكملت تحدي اليوم";

document.getElementById(
"challengeTitle"
).textContent=
"أحسنت! أكملت تحدي اليوم كاملًا.";

}

}

}
);


/* ================================
   إغلاق النافذة بالنقر خارجها
================================ */

document
.getElementById("studentModal")
.addEventListener(
"click",
e=>{

if(
e.target===e.currentTarget
){

closeStudentLogin();

}

}
);


/* ================================
   تشغيل الموقع
================================ */

async function startSite(){

updateUserInterface(
getSavedUser()
);

loadStats();

await Promise.all([
loadLessons(),
loadSummaries(),
loadTests(),
loadRooms(),
restoreSession()
]);

}

startSite();

</script>

</body>
</html>
