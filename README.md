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
padding:0
}

html{
scroll-behavior:smooth
}

body{
font-family:Tahoma,Arial,sans-serif;
background:
radial-gradient(circle at 85% 5%,#172b63 0,transparent 28%),
radial-gradient(circle at 10% 70%,#27174f 0,transparent 28%),
#050b1d;
color:#fff;
min-height:100vh;
overflow-x:hidden
}

button,input{
font-family:inherit
}

button{
cursor:pointer
}

.page{
position:relative;
z-index:2
}

/* ================= HEADER ================= */

header{
height:78px;
background:rgba(5,13,32,.94);
backdrop-filter:blur(15px);
border-bottom:1px solid #ffffff18;
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
justify-content:space-between;
gap:10px
}

.logo{
display:flex;
align-items:center;
gap:9px
}

.logoIcon{
width:42px;
height:42px;
border-radius:13px;
display:flex;
align-items:center;
justify-content:center;
background:linear-gradient(135deg,#12c9ff,#855cff);
font-size:21px;
box-shadow:0 0 25px #268dff44
}

.logoText{
font-size:15px;
font-weight:bold
}

.logoText small{
display:block;
color:#7187a7;
font-size:6px;
margin-top:3px
}

.loginButtons{
display:flex;
gap:8px;
align-items:center
}

.studentBtn,
.teacherBtn,
.logoutBtn{
border:0;
color:#fff;
font-size:9px;
padding:11px 13px;
border-radius:11px;
display:flex;
align-items:center;
gap:6px;
transition:.25s;
font-weight:bold
}

.studentBtn{
background:linear-gradient(135deg,#087fb5,#7450d8);
box-shadow:0 5px 20px #087fb544
}

.teacherBtn{
background:linear-gradient(135deg,#6346a7,#287eb8);
text-decoration:none;
box-shadow:0 5px 20px #287eb844
}

.logoutBtn{
background:linear-gradient(135deg,#613b9a,#286f9d);
display:none
}

.studentBtn:hover,
.teacherBtn:hover,
.logoutBtn:hover{
transform:translateY(-2px);
filter:brightness(1.12)
}

.userBox{
display:none;
align-items:center;
gap:7px;
background:#0b1b36;
border:1px solid #ffffff17;
padding:5px 8px;
border-radius:10px;
font-size:7px;
color:#a9bdd5
}

.userIcon{
width:29px;
height:29px;
border-radius:8px;
display:flex;
align-items:center;
justify-content:center;
background:linear-gradient(135deg,#12c9ff,#855cff)
}

/* ================= FALLING STARS ================= */

.falling{
position:fixed;
top:-40px;
z-index:1;
pointer-events:none;
animation:fall linear infinite;
opacity:.7
}

.falling.star{
color:#80dfff
}

.falling.math{
color:#a77cff
}

@keyframes fall{
0%{
transform:translateY(-60px) rotate(0deg);
opacity:0
}
10%{
opacity:.8
}
90%{
opacity:.7
}
100%{
transform:translateY(110vh) rotate(360deg);
opacity:0
}
}

/* ================= HERO ================= */

.hero,
.search,
.section,
.searchResults{
width:92%;
max-width:1100px;
margin-left:auto;
margin-right:auto
}

.hero{
margin-top:22px;
padding:32px 25px;
border-radius:24px;
background:
linear-gradient(135deg,rgba(11,49,88,.96),rgba(42,23,76,.94));
border:1px solid #5abfff2e;
box-shadow:0 18px 55px #0003;
position:relative;
overflow:hidden
}

.hero:after{
content:"";
position:absolute;
width:180px;
height:180px;
border-radius:50%;
background:#45d8ff12;
left:-50px;
bottom:-80px
}

.heroBadge{
display:inline-block;
padding:7px 10px;
border-radius:20px;
background:#23caff1a;
border:1px solid #23caff30;
color:#5cdcff;
font-size:8px
}

.hero h1{
font-size:25px;
line-height:1.5;
margin-top:10px
}

.hero h1 span{
color:#54d8ff
}

.hero p{
color:#9aafc9;
font-size:9px;
line-height:1.9;
margin-top:5px
}

/* ================= SEARCH ================= */

.search{
margin-top:14px;
position:relative
}

.search input{
width:100%;
height:47px;
border:1px solid #ffffff1f;
border-radius:13px;
background:#0b1b36;
color:#fff;
padding:0 43px 0 15px;
outline:none;
font-size:10px
}

.search input:focus{
border-color:#39cfff66;
box-shadow:0 0 20px #159bff12
}

.searchIcon{
position:absolute;
right:14px;
top:14px;
font-size:15px
}

/* ================= SECTIONS ================= */

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
color:#7188a6
}

/* ================= OPTIONS ================= */

.options,
.stats,
.lessonList,
.contentGrid{
display:grid;
gap:8px
}

.options{
grid-template-columns:repeat(4,1fr)
}

.option{
color:#fff;
text-decoration:none;
border-radius:15px;
padding:14px 9px;
border:1px solid #ffffff17;
transition:.25s
}

.option:hover{
transform:translateY(-3px);
box-shadow:0 12px 30px #0005
}

.optionIcon{
width:31px;
height:31px;
border-radius:9px;
display:flex;
justify-content:center;
align-items:center;
font-size:14px;
margin-bottom:7px
}

.option h3{
font-size:9px
}

.option p{
color:#ffffff9e;
font-size:6px;
margin-top:4px
}

.c1{
background:linear-gradient(135deg,#073b67,#087aa2)
}

.c2{
background:linear-gradient(135deg,#36205e,#69358b)
}

.c3{
background:linear-gradient(135deg,#694218,#a86616)
}

.c4{
background:linear-gradient(135deg,#104a43,#147660)
}

.c1 .optionIcon{
background:#079ed3
}

.c2 .optionIcon{
background:#9856d8
}

.c3 .optionIcon{
background:#eaa52e
}

.c4 .optionIcon{
background:#1ac29f
}

/* ================= CHALLENGE ================= */

.challenge{
padding:17px;
border-radius:17px;
background:linear-gradient(135deg,#30205d,#151e4b);
border:1px solid #b478ff2e
}

.challengeTag{
color:#d49aff;
font-size:8px
}

.challenge h3{
font-size:12px;
margin-top:8px
}

.question{
margin-top:10px;
background:#0003;
padding:14px;
border-radius:11px;
font-size:15px;
text-align:center;
line-height:1.8
}

.challenge button,
.quizBtn{
margin-top:10px;
width:100%;
border:0;
padding:10px;
border-radius:9px;
color:#fff;
background:linear-gradient(135deg,#8b54ff,#c247a6);
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
background:#0a1832;
color:#fff;
padding:10px;
border-radius:9px;
font-size:9px
}

.answer:hover{
background:#172b4e
}

.feedback{
text-align:center;
font-size:9px;
margin-top:8px;
min-height:20px
}

/* ================= STATS ================= */

.stats{
grid-template-columns:repeat(3,1fr)
}

.stat{
padding:13px 8px;
border-radius:13px;
background:#0a1b35;
border:1px solid #ffffff12;
text-align:center
}

.stat strong{
display:block;
font-size:17px
}

.stat span{
display:block;
color:#728aa8;
font-size:7px;
margin-top:5px
}

.points strong{
color:#ffd34e
}

.progress strong{
color:#45d8ff
}

.rank strong{
color:#b87cff
}

/* ================= LESSONS ================= */

.lessonList{
grid-template-columns:repeat(2,1fr)
}

.lesson{
display:flex;
align-items:center;
gap:9px;
padding:12px;
border-radius:14px;
background:#0a1b36;
border:1px solid #64aae61a;
min-width:0;
transition:.2s
}

.lesson:hover{
border-color:#4dcfff44;
transform:translateY(-2px)
}

.lessonIcon{
width:38px;
height:38px;
border-radius:10px;
display:flex;
align-items:center;
justify-content:center;
font-size:15px;
background:linear-gradient(135deg,#00aeea,#5b51dc);
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
color:#728aa6;
font-size:7px;
margin-top:5px;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis
}

.watch{
margin-right:auto;
font-size:7px;
padding:7px 9px;
border-radius:7px;
white-space:nowrap;
color:#4fdcff;
background:#28c8ff14;
border:1px solid #28c8ff20
}

/* ================= CONTENT ================= */

.contentGrid{
grid-template-columns:repeat(3,1fr)
}

.contentCard{
padding:15px 10px;
border-radius:14px;
background:#0a1b36;
border:1px solid #ffffff12;
min-width:0
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
background:linear-gradient(135deg,#6d3fc0,#a457d8)
}

.testIcon{
background:linear-gradient(135deg,#a95f18,#e0a32c)
}

.roomIcon{
background:linear-gradient(135deg,#087b69,#19b394)
}

.contentCard h3{
font-size:10px;
line-height:1.6
}

.contentCard p{
color:#7189a5;
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
background:#ffffff14;
border:0;
cursor:pointer
}

.contentButton:hover{
background:#ffffff20
}

/* ================= SEARCH RESULTS ================= */

.searchResults{
margin-top:9px;
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
background:#0a1b36;
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

.type-video{
background:#087db5
}

.type-summary{
background:#7547bd
}

.type-test{
background:#b26b18
}

.type-room{
background:#16806d
}

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
color:#7189a6;
margin-top:4px
}

/* ================= VIDEO MODAL ================= */

.videoModal{
position:fixed;
inset:0;
background:rgba(0,0,0,.88);
backdrop-filter:blur(9px);
display:none;
align-items:center;
justify-content:center;
z-index:200;
padding:15px
}

.videoModal.show{
display:flex
}

.videoBox{
width:100%;
max-width:850px;
background:#08152d;
border:1px solid #3ecfff38;
border-radius:20px;
padding:12px;
box-shadow:0 25px 100px #000b
}

.videoHeader{
display:flex;
align-items:center;
justify-content:space-between;
gap:10px;
padding:4px 5px 12px
}

.videoTitle{
font-size:13px;
font-weight:bold
}

.videoClose{
border:0;
background:#ffffff12;
color:#fff;
width:34px;
height:34px;
border-radius:9px;
font-size:21px
}

.videoFrame{
position:relative;
width:100%;
aspect-ratio:16/9;
background:#000;
border-radius:13px;
overflow:hidden
}

.videoFrame iframe{
width:100%;
height:100%;
border:0
}

.videoDescription{
padding:12px 5px 4px;
font-size:8px;
color:#8196b2;
line-height:1.8
}

/* ================= EMPTY ================= */

.empty,
.loading{
padding:22px;
border-radius:14px;
text-align:center;
color:#7188a4;
font-size:8px;
line-height:2;
background:#091931;
border:1px dashed #294563
}

.loading{
border:0;
color:#65d8ff
}

/* ================= FOOTER ================= */

footer{
text-align:center;
padding:28px 0 18px;
color:#4e6682;
font-size:7px
}

/* ================= LOGIN MODAL ================= */

.modal{
position:fixed;
inset:0;
background:#000b;
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
background:linear-gradient(145deg,#101f42,#1d1740);
border:1px solid #64c8ff2e;
border-radius:22px;
padding:23px;
box-shadow:0 25px 80px #0008
}

.close{
float:left;
border:0;
background:none;
color:#8297b3;
font-size:22px
}

.loginBox h2{
font-size:18px;
margin-bottom:6px
}

.loginBox p{
font-size:8px;
color:#8195b1;
margin-bottom:18px;
line-height:1.8
}

.loginBox input{
width:100%;
height:42px;
margin-bottom:9px;
border:1px solid #ffffff1a;
border-radius:10px;
background:#08152e;
color:#fff;
padding:0 12px;
outline:none;
font-size:10px
}

.loginBox button.main{
width:100%;
height:42px;
border:0;
border-radius:10px;
color:#fff;
background:linear-gradient(135deg,#09a9df,#7650e5);
font-size:10px
}

.switch{
margin-top:13px;
text-align:center;
font-size:8px;
color:#8498b4
}

.switch button{
border:0;
background:none;
color:#4dd7ff
}

.message{
min-height:22px;
margin-bottom:7px;
text-align:center;
font-size:8px;
line-height:1.7
}

.successMessage{
color:#67e8b1
}

.errorMessage{
color:#ff8f9d
}

.infoMessage{
color:#64d9ff
}

/* ================= RESPONSIVE ================= */

@media(max-width:750px){

.hero,
.search,
.section,
.searchResults{
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
width:35px;
height:35px
}

.logoText{
font-size:11px
}

.studentBtn,
.teacherBtn{
padding:8px 7px;
font-size:6px
}

.hero h1{
font-size:19px
}

.answers{
grid-template-columns:1fr
}

.loginButtons{
gap:4px
}

}
</style>
</head>

<body>

<!-- نجوم وأدوات رياضية متحركة -->
<div class="falling star" style="left:5%;animation-duration:9s;animation-delay:0s">★</div>
<div class="falling math" style="left:14%;animation-duration:12s;animation-delay:2s">∑</div>
<div class="falling star" style="left:25%;animation-duration:10s;animation-delay:4s">✦</div>
<div class="falling math" style="left:38%;animation-duration:14s;animation-delay:1s">π</div>
<div class="falling star" style="left:51%;animation-duration:11s;animation-delay:3s">★</div>
<div class="falling math" style="left:64%;animation-duration:13s;animation-delay:5s">√</div>
<div class="falling star" style="left:76%;animation-duration:10s;animation-delay:1s">✦</div>
<div class="falling math" style="left:88%;animation-duration:15s;animation-delay:4s">△</div>
<div class="falling star" style="left:94%;animation-duration:9s;animation-delay:6s">★</div>

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

<button class="studentBtn"
id="studentLoginButton"
onclick="openStudentLogin()">
👨‍🎓 دخول الطالب
</button>

<a class="teacherBtn" href="teacher.html">
👨‍🏫 دخول الأستاذ
</a>

<div class="userBox" id="userBox">
<div class="userIcon">👨‍🎓</div>
<span id="userEmail">طالب</span>
</div>

<button class="logoutBtn"
id="logoutButton"
onclick="logoutStudent()">
🚪 خروج
</button>

</div>
</div>
</header>

<div class="page">

<section class="hero">

<div class="heroBadge">
🧮 منصة الرياضيات
</div>

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

<div class="challengeTag">
🧠 تحدي متدرج
</div>

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

<button
id="challengeButton"
onclick="startOrAnswerChallenge()">
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

<!-- ================= VIDEO MODAL ================= -->

<div id="videoModal" class="videoModal">

<div class="videoBox">

<div class="videoHeader">

<div class="videoTitle" id="videoTitle">
🎥 مشاهدة الحصة
</div>

<button
class="videoClose"
onclick="closeVideo()">
×
</button>

</div>

<div class="videoFrame">

<iframe
id="youtubeFrame"
src=""
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
allowfullscreen>
</iframe>

</div>

<div class="videoDescription" id="videoDescription"></div>

</div>

</div>

<!-- ================= LOGIN ================= -->

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

<button
id="switchButton"
onclick="switchAuthMode()">
إنشاء حساب
</button>

</div>

</div>
</div>

<script>

/* =====================================================
   SUPABASE
===================================================== */

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


/* =====================================================
   CHALLENGES
===================================================== */

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


/* =====================================================
   SECURITY
===================================================== */

function safe(t){

return String(t??"")
.replaceAll("&","&amp;")
.replaceAll("<","&lt;")
.replaceAll(">","&gt;")
.replaceAll('"',"&quot;")
.replaceAll("'","&#039;");

}


/* =====================================================
   SUPABASE REQUEST
===================================================== */

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


/* =====================================================
   GET TABLE
===================================================== */

async function getTable(table){

try{

const r=await supabaseRequest(
`${SUPABASE_URL}/rest/v1/${table}?select=*`
);

if(!r.ok)return [];

const d=await r.json();

return Array.isArray(d)?d:[];

}catch(e){

console.error(e);

return [];

}

}


/* =====================================================
   SORT
===================================================== */

function sortNew(a,b){

return new Date(b.created_at||0)-new Date(a.created_at||0);

}


/* =====================================================
   YOUTUBE URL CONVERTER
===================================================== */

function getYoutubeId(url){

if(!url)return null;

url=String(url).trim();

try{

const u=new URL(url);

/* youtube.com/watch?v= */
if(
u.hostname.includes("youtube.com") &&
u.searchParams.get("v")
){

return u.searchParams.get("v");

}

/* youtu.be/VIDEO_ID */
if(u.hostname==="youtu.be"){

return u.pathname.replace("/","").split("?")[0];

}

/* youtube.com/embed/VIDEO_ID */
if(u.hostname.includes("youtube.com") &&
u.pathname.startsWith("/embed/")
){

return u.pathname.split("/embed/")[1].split("?")[0];

}

/* youtube.com/shorts/VIDEO_ID */
if(u.hostname.includes("youtube.com") &&
u.pathname.startsWith("/shorts/")
){

return u.pathname.split("/shorts/")[1].split("?")[0];

}

}catch(e){

/* إذا كان المدخل ID فقط */
if(/^[a-zA-Z0-9_-]{8,15}$/.test(url)){

return url;

}

}

return null;

}


/* =====================================================
   OPEN VIDEO INSIDE WEBSITE
===================================================== */

function openVideo(url,title,description){

const id=getYoutubeId(url);

if(!id){

alert("⚠️ رابط الفيديو غير صالح أو ليس رابط YouTube.");

return;

}

const frame=document.getElementById("youtubeFrame");

frame.src=
"https://www.youtube.com/embed/"
+encodeURIComponent(id)
+"?rel=0&modestbranding=1";

document.getElementById("videoTitle").textContent=
"🎥 "+(title||"مشاهدة الحصة");

document.getElementById("videoDescription").textContent=
description||"";

document.getElementById("videoModal").classList.add("show");

document.body.style.overflow="hidden";

}


/* =====================================================
   CLOSE VIDEO
===================================================== */

function closeVideo(){

const modal=document.getElementById("videoModal");

modal.classList.remove("show");

document.getElementById("youtubeFrame").src="";

document.body.style.overflow="";

}


/* =====================================================
   LESSONS
===================================================== */

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

if(url){

d.innerHTML=`

<div class="lessonIcon">
🎥
</div>

<div class="lessonInfo">

<h3>
${safe(x.title||"حصة رياضيات")}
</h3>

<p>
${safe(x.unit||"رياضيات")}
${x.duration?" • "+safe(x.duration):""}
</p>

</div>

<button
class="watch"
type="button"
onclick='openVideo(
${JSON.stringify(url)},
${JSON.stringify(x.title||"حصة رياضيات")},
${JSON.stringify(x.description||"")}
)'>

▶️ مشاهدة

</button>

`;

}else{

d.innerHTML=`

<div class="lessonIcon noVideoIcon">
⚠️
</div>

<div class="lessonInfo">

<h3>
${safe(x.title||"حصة رياضيات")}
</h3>

<p>
${safe(x.unit||"رياضيات")}
</p>

</div>

<span class="watch">
⚠️ لا يوجد فيديو
</span>

`;

}

box.appendChild(d);

});

}


/* =====================================================
   SUMMARIES
===================================================== */

async function loadSummaries(){

const data=await getTable("summaries");

allSummaries=data.sort(sortNew);

renderCards(
"summariesContainer",
data,
"📚",
"summaryIcon",
["description"],
["file_url","url","link"],
"ملخص درس",
"📖 فتح الملخص"
);

}


/* =====================================================
   TESTS
===================================================== */

async function loadTests(){

const data=await getTable("tests");

allTests=data.sort(sortNew);

renderCards(
"testsContainer",
data,
"📝",
"testIcon",
["description"],
["test_url","url","link"],
"اختبار رياضيات",
"📝 بدء الاختبار"
);

}


/* =====================================================
   ROOMS
===================================================== */

async function loadRooms(){

const data=await getTable("rooms");

allRooms=data.sort(sortNew);

renderCards(
"roomsContainer",
data,
"💬",
"roomIcon",
["description"],
["room_link","url","link"],
"روم الدراسة",
"💬 دخول الروم"
);

}


/* =====================================================
   RENDER CARDS
===================================================== */

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
`<div class="empty">${icon} لا يوجد محتوى حتى الآن.</div>`;

return;

}

box.innerHTML="";

data.forEach(x=>{

const desc=
descFields
.map(k=>x[k])
.find(v=>v)
||fallback;

const url=
String(
urlFields
.map(k=>x[k])
.find(v=>v)
||""
).trim();

const title=
x.title||x.name||fallback;

const d=document.createElement("div");

d.className="contentCard";

d.innerHTML=`

<div class="contentIcon ${cls}">
${icon}
</div>

<h3>
${safe(title)}
</h3>

<p>
${safe(desc)}
</p>

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


/* =====================================================
   SEARCH
===================================================== */

function searchEverything(){

const text=
document
.getElementById("search")
.value
.toLowerCase()
.trim();

const box=
document.getElementById("searchResults");

const list=
document.getElementById("resultList");

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
[allRooms,"room","💬","روم","room_link"]

].forEach(([arr,type,icon,name,urlKey])=>{

arr.forEach(x=>{

const s=JSON.stringify(x).toLowerCase();

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

});

if(!r.length){

list.innerHTML=
'<div class="empty">🔍 لم نجد شيئًا مطابقًا.</div>';

return;

}

list.innerHTML="";

r.forEach(x=>{

const d=document.createElement("div");

d.className="result";

d.innerHTML=`

<div class="resultIcon type-${x.type}">
${x.icon}
</div>

<div class="resultInfo">

<h3>
${safe(x.title)}
</h3>

<p>
${x.name}
</p>

</div>

`;

if(x.type==="lesson" && x.url){

d.style.cursor="pointer";

d.onclick=()=>openVideo(
x.url,
x.title,
""
);

}else if(x.url){

d.onclick=()=>window.open(
x.url,
"_blank",
"noopener"
);

d.style.cursor="pointer";

}

list.appendChild(d);

});

}


/* =====================================================
   USER
===================================================== */

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

document.getElementById("studentLoginButton").style.display=
user?"none":"flex";

document.getElementById("userBox").style.display=
user?"flex":"none";

document.getElementById("logoutButton").style.display=
user?"flex":"none";

document.getElementById("userEmail").textContent=
user?.email||"الطالب";

}


/* =====================================================
   LOGIN
===================================================== */

function showAuthMessage(t,type="info"){

const b=document.getElementById("studentMessage");

b.className=
"message "+
(
type==="success"
?"successMessage"
:
type==="error"
?"errorMessage"
:"infoMessage"
);

b.textContent=t;

}


function clearAuthMessage(){

const b=document.getElementById("studentMessage");

b.className="message";

b.textContent="";

}


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

document.getElementById("authTitle").textContent=
isSignupMode
?"🧑‍🎓 إنشاء حساب طالب"
:"👨‍🎓 دخول الطالب";

document.getElementById("authDescription").textContent=
isSignupMode
?"أنشئ حسابك باستخدام البريد الإلكتروني وكلمة المرور."
:"سجّل الدخول لمتابعة رحلتك التعليمية.";

document.getElementById("authMainButton").textContent=
isSignupMode
?"إنشاء الحساب"
:"تسجيل الدخول";

document.getElementById("switchText").textContent=
isSignupMode
?"لديك حساب بالفعل؟"
:"ليس لديك حساب؟";

document.getElementById("switchButton").textContent=
isSignupMode
?"تسجيل الدخول"
:"إنشاء حساب";

clearAuthMessage();

}


/* =====================================================
   STUDENT AUTH
===================================================== */

async function studentAuth(){

const email=
document
.getElementById("studentEmail")
.value
.trim();

const password=
document
.getElementById("studentPassword")
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

const r=await supabaseRequest(
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

}else if(d.access_token){

saveSession(d);

showAuthMessage(
"✅ تم إنشاء الحساب وتسجيل الدخول.",
"success"
);

setTimeout(
closeStudentLogin,
700
);

}else{

showAuthMessage(
"✅ تم إنشاء الحساب. افتح رسالة البريد للتأكيد ثم سجّل الدخول.",
"success"
);

}

}else{

showAuthMessage(
"⏳ جاري تسجيل الدخول...",
"info"
);

const r=await supabaseRequest(
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

}else{

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


/* =====================================================
   SESSION
===================================================== */

function saveSession(d){

if(d.access_token){

localStorage.setItem(
"minbar_access_token",
d.access_token
);

}

if(d.refresh_token){

localStorage.setItem(
"minbar_refresh_token",
d.refresh_token
);

}

if(d.user){

localStorage.setItem(
"minbar_user",
JSON.stringify(d.user)
);

}

updateUserInterface(
d.user||getSavedUser()
);

}


async function restoreSession(){

const token=
localStorage.getItem("minbar_access_token");

const saved=getSavedUser();

if(!token){

updateUserInterface(saved);

return;

}

try{

const r=await supabaseRequest(
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

}else{

updateUserInterface(null);

}

}catch{

updateUserInterface(saved);

}

}


/* =====================================================
   LOGOUT
===================================================== */

async function logoutStudent(){

const token=
localStorage.getItem("minbar_access_token");

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


/* =====================================================
   STATS
===================================================== */

function loadStats(){

const s=
JSON.parse(
localStorage.getItem("minbar_stats")
||
'{"points":0,"answered":0}'
);

document.getElementById("pointsStat").textContent=
s.points;

document.getElementById("progressStat").textContent=
Math.min(
100,
Math.round(s.answered/6*100)
)+"%";

document.getElementById("rankStat").textContent=
s.points>=100
?"🏆"
:
s.points>=60
?"🥇"
:
s.points>=30
?"🥈"
:"🥉";

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


/* =====================================================
   CHALLENGE
===================================================== */

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
document
.querySelector(
'input[name="answer"]:checked'
)?.value
);

if(Number.isNaN(chosen)){

document.getElementById("feedback").textContent=
"اختر إجابة أولًا 🙂";

return;

}

challengeAnswered=true;

if(chosen===correct){

document.getElementById("feedback").textContent=
`✅ إجابة صحيحة! +${challenges[challengeIndex].p} نقطة 🎉`;

addPoints(
challenges[challengeIndex].p
);

}else{

document.getElementById("feedback").textContent=
`❌ ليست صحيحة. الإجابة: ${
challenges[challengeIndex].a[correct]
}`;

}

document.getElementById("challengeButton").textContent=
challengeIndex<5
?"السؤال التالي"
:"إنهاء التحدي";

}


function showChallenge(){

const x=challenges[challengeIndex];

document.getElementById("challengeProgress").textContent=
`السؤال ${challengeIndex+1} من 6`;

document.getElementById("challengeQuestion").textContent=
x.q;

document.getElementById("feedback").textContent="";

document.getElementById("answers").innerHTML=
x.a.map(
(v,i)=>
`
<label class="answer">
<input type="radio" name="answer" value="${i}">
${safe(v)}
</label>
`
).join("");

document.getElementById("quizArea").style.display=
"block";

document.getElementById("challengeButton").textContent=
"تأكيد الإجابة";

challengeAnswered=false;

}


/* =====================================================
   CHALLENGE NEXT BUTTON
===================================================== */

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

}else{

document
.getElementById("challengeButton")
.disabled=true;

document
.getElementById("challengeButton")
.textContent=
"🎉 أكملت تحدي اليوم";

document
.getElementById("challengeTitle")
.textContent=
"أحسنت! أكملت تحدي اليوم كاملًا.";

}

}

}
);


/* =====================================================
   MODAL CLICK OUTSIDE
===================================================== */

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


document
.getElementById("videoModal")
.addEventListener(
"click",
e=>{

if(
e.target===e.currentTarget
){

closeVideo();

}

}
);


/* =====================================================
   ESC KEY
===================================================== */

document.addEventListener(
"keydown",
e=>{

if(e.key==="Escape"){

closeVideo();
closeStudentLogin();

}

}
);


/* =====================================================
   START SITE
===================================================== */

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
