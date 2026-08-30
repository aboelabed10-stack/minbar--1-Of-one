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

html{scroll-behavior:smooth}

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

button,input{font-family:inherit}
button{cursor:pointer}

header{
    height:70px;
    background:rgba(5,13,32,.88);
    backdrop-filter:blur(15px);
    border-bottom:1px solid rgba(255,255,255,.08);
    position:sticky;
    top:0;
    z-index:50;
}

.header{
    width:92%;
    max-width:1100px;
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
    width:39px;
    height:39px;
    border-radius:12px;
    background:linear-gradient(135deg,#12c9ff,#855cff);
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:19px;
    box-shadow:0 0 25px rgba(30,190,255,.25);
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

.loginButtons{
    display:flex;
    gap:7px;
    align-items:center;
}

.studentBtn,.teacherBtn,.logoutBtn{
    border:0;
    color:white;
    font-size:8px;
    padding:9px 11px;
    border-radius:10px;
    display:flex;
    align-items:center;
    gap:5px;
    transition:.25s;
}

.studentBtn{
    background:linear-gradient(135deg,#087fb5,#7450d8);
}

.teacherBtn{
    background:linear-gradient(135deg,#a65a17,#d38b20);
    text-decoration:none;
}

.logoutBtn{
    background:linear-gradient(135deg,#8f3048,#b84b62);
    display:none;
}

.studentBtn:hover,
.teacherBtn:hover,
.logoutBtn:hover{
    transform:translateY(-2px);
    box-shadow:0 8px 20px rgba(0,0,0,.25);
}

.userBox{
    display:none;
    align-items:center;
    gap:7px;
    background:#0b1b36;
    border:1px solid rgba(255,255,255,.09);
    padding:5px 8px;
    border-radius:10px;
    font-size:7px;
    color:#a9bdd5;
}

.userIcon{
    width:27px;
    height:27px;
    border-radius:8px;
    background:linear-gradient(135deg,#12c9ff,#855cff);
    display:flex;
    align-items:center;
    justify-content:center;
}

.float{
    position:fixed;
    top:-60px;
    font-size:19px;
    opacity:.25;
    pointer-events:none;
    z-index:0;
    animation:fall linear infinite;
}

.f1{right:8%;animation-duration:11s}
.f2{right:27%;animation-duration:15s;animation-delay:2s}
.f3{right:47%;animation-duration:12s;animation-delay:4s}
.f4{right:68%;animation-duration:16s;animation-delay:1s}
.f5{right:89%;animation-duration:13s;animation-delay:5s}

@keyframes fall{
    from{transform:translateY(-70px) rotate(0deg)}
    to{transform:translateY(110vh) rotate(180deg)}
}

.star{
    position:fixed;
    color:#ffe36b;
    font-size:15px;
    animation:shine 1.8s infinite alternate;
    z-index:0;
}

.s1{top:14%;right:18%}
.s2{top:34%;right:80%;animation-delay:.5s}
.s3{top:60%;right:13%;animation-delay:1s}
.s4{top:76%;right:73%;animation-delay:.7s}

@keyframes shine{
    from{opacity:.15;transform:scale(.7)}
    to{opacity:1;transform:scale(1.2)}
}

.page{
    position:relative;
    z-index:2;
}

.hero{
    width:92%;
    max-width:1100px;
    margin:22px auto 0;
    padding:30px 23px;
    border-radius:24px;
    background:linear-gradient(135deg,rgba(11,49,88,.96),rgba(42,23,76,.94));
    border:1px solid rgba(90,190,255,.18);
    box-shadow:0 18px 55px rgba(0,0,0,.22);
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
    font-size:25px;
    line-height:1.5;
    margin-top:10px;
}

.hero h1 span{color:#54d8ff}

.hero p{
    color:#9aafc9;
    font-size:9px;
    line-height:1.9;
    margin-top:5px;
}

.search{
    width:92%;
    max-width:1100px;
    margin:14px auto 0;
    position:relative;
}

.search input{
    width:100%;
    height:45px;
    border:1px solid rgba(255,255,255,.12);
    border-radius:13px;
    background:#0b1b36;
    color:white;
    padding:0 43px 0 15px;
    outline:none;
    font-size:10px;
}

.search input::placeholder{color:#7189a6}

.search input:focus{
    border-color:#2acbff;
    box-shadow:0 0 20px rgba(42,203,255,.08);
}

.searchIcon{
    position:absolute;
    right:14px;
    top:13px;
    font-size:15px;
}

.searchResults{
    width:92%;
    max-width:1100px;
    margin:9px auto 0;
    display:none;
}

.searchResults.show{display:block}

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
    transition:.2s;
}

.result:hover{
    transform:translateX(-3px);
    border-color:rgba(255,255,255,.2);
}

.resultIcon{
    width:33px;
    height:33px;
    border-radius:9px;
    display:flex;
    align-items:center;
    justify-content:center;
    flex-shrink:0;
}

.type-video{background:#087db5}
.type-summary{background:#7547bd}
.type-test{background:#b26b18}
.type-room{background:#16806d}

.resultInfo{
    min-width:0;
    flex:1;
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
    max-width:1100px;
    margin:23px auto 0;
}

.sectionHead{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:11px;
}

.sectionHead h2{font-size:15px}

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
    padding:13px 8px;
    border:1px solid rgba(255,255,255,.09);
    transition:.25s;
}

.option:hover{transform:translateY(-4px)}

.optionIcon{
    width:30px;
    height:30px;
    border-radius:9px;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:14px;
    margin-bottom:7px;
}

.option h3{font-size:9px}

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

/* التحدي */

.challenge{
    padding:20px;
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

.challengeInfo{
    margin-top:8px;
    display:flex;
    justify-content:space-between;
    color:#aebed5;
    font-size:8px;
}

.question{
    margin-top:12px;
    background:rgba(0,0,0,.18);
    padding:17px 12px;
    border-radius:11px;
    font-size:17px;
    text-align:center;
    min-height:55px;
}

.answerGrid{
    display:grid;
    grid-template-columns:repeat(2,1fr);
    gap:8px;
    margin-top:10px;
}

.answerBtn{
    border:1px solid rgba(255,255,255,.1);
    padding:11px;
    border-radius:9px;
    color:white;
    background:#101d3c;
    font-size:9px;
    transition:.2s;
}

.answerBtn:hover{
    background:#1c2c53;
    transform:translateY(-2px);
}

.answerBtn.correct{
    background:#087c5a;
    border-color:#36d6a0;
}

.answerBtn.wrong{
    background:#8c3045;
    border-color:#ff728b;
}

.challengeNext{
    margin-top:10px;
    width:100%;
    border:0;
    padding:10px;
    border-radius:9px;
    color:white;
    background:linear-gradient(135deg,#8b54ff,#c247a6);
    font-size:9px;
    display:none;
}

.challengeStart{
    margin-top:10px;
    width:100%;
    border:0;
    padding:10px;
    border-radius:9px;
    color:white;
    background:linear-gradient(135deg,#8b54ff,#c247a6);
    font-size:9px;
}

.challengeResult{
    margin-top:12px;
    text-align:center;
    font-size:11px;
    line-height:2;
    color:#72e9bc;
    display:none;
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
    min-width:0;
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
    flex-shrink:0;
}

.noVideoIcon{
    background:linear-gradient(135deg,#765016,#a86c1e);
}

.lessonInfo{
    min-width:0;
    flex:1;
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
    white-space:nowrap;
    overflow:hidden;
    text-overflow:ellipsis;
}

.watch,.noVideo{
    margin-right:auto;
    font-size:7px;
    padding:7px 8px;
    border-radius:7px;
    white-space:nowrap;
}

.watch{
    color:#4fdcff;
    text-decoration:none;
    background:rgba(40,200,255,.08);
}

.noVideo{
    color:#ffca66;
    background:rgba(220,150,40,.1);
}

.contentGrid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:8px;
}

.contentCard{
    padding:15px 10px;
    border-radius:14px;
    background:#0a1b36;
    border:1px solid rgba(255,255,255,.07);
    transition:.25s;
    min-width:0;
}

.contentCard:hover{
    transform:translateY(-3px);
    border-color:rgba(100,210,255,.25);
}

.contentIcon{
    width:36px;
    height:36px;
    border-radius:10px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:17px;
    margin-bottom:9px;
}

.summaryIcon{background:linear-gradient(135deg,#6d3fc0,#a457d8)}
.testIcon{background:linear-gradient(135deg,#a95f18,#e0a32c)}
.roomIcon{background:linear-gradient(135deg,#087b69,#19b394)}

.contentCard h3{
    font-size:10px;
    line-height:1.6;
}

.contentCard p{
    color:#7189a5;
    font-size:7px;
    line-height:1.7;
    margin-top:5px;
}

.contentButton{
    display:block;
    margin-top:10px;
    padding:8px;
    border-radius:8px;
    text-align:center;
    text-decoration:none;
    color:white;
    font-size:7px;
    background:rgba(255,255,255,.08);
}

.summaryButton{color:#d39aff}
.testButton{color:#ffd064}
.roomButton{color:#58e0c3}

.empty{
    padding:22px;
    border-radius:14px;
    text-align:center;
    color:#7188a4;
    font-size:8px;
    line-height:2;
    background:#091931;
    border:1px dashed #294563;
}

.loading{
    padding:25px;
    text-align:center;
    color:#65d8ff;
    font-size:9px;
}

footer{
    text-align:center;
    padding:28px 0 18px;
    color:#4e6682;
    font-size:7px;
}

/* تسجيل الدخول */

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

.modal.show{display:flex}

.loginBox{
    width:100%;
    max-width:390px;
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
    font-size:22px;
}

.loginBox h2{
    font-size:18px;
    margin-bottom:6px;
}

.loginBox p{
    font-size:8px;
    color:#8195b1;
    margin-bottom:18px;
    line-height:1.8;
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
    outline:none;
    font-size:10px;
}

.loginBox input:focus{
    border-color:#27c9ff;
}

.loginBox button.main{
    width:100%;
    height:42px;
    border:0;
    border-radius:10px;
    color:white;
    background:linear-gradient(135deg,#09a9df,#7650e5);
    font-size:10px;
}

.loginBox button.main:disabled{
    opacity:.6;
    cursor:wait;
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
}

.message{
    min-height:22px;
    margin-bottom:7px;
    text-align:center;
    font-size:8px;
    line-height:1.7;
}

.successMessage{color:#67e8b1}
.errorMessage{color:#ff8f9d}
.infoMessage{color:#64d9ff}

@media(max-width:750px){
    .header{width:94%}
    .hero{width:94%;padding:24px 18px}
    .search,.section,.searchResults{width:94%}
    .lessonList{grid-template-columns:1fr}
}

@media(max-width:650px){
    header{height:auto;min-height:66px}
    .header{padding:9px 0;gap:7px}
    .logoText{font-size:13px}
    .loginButtons{gap:4px}
    .studentBtn,.teacherBtn,.logoutBtn{
        padding:8px 7px;
        font-size:7px;
    }
    .userBox{display:none!important}
    .hero h1{font-size:21px}
    .options{
        grid-template-columns:repeat(4,1fr);
        gap:5px;
    }
    .option{padding:10px 4px}
    .option p{display:none}
    .contentGrid{grid-template-columns:1fr}
    .stats{gap:5px}
    .stat{padding:11px 5px}
    .stat strong{font-size:15px}
}

@media(max-width:430px){
    .logoIcon{
        width:34px;
        height:34px;
        font-size:16px;
    }

    .logoText{font-size:11px}
    .logoText small{font-size:5px}

    .studentBtn,.teacherBtn,.logoutBtn{
        padding:7px 5px;
        font-size:6px;
    }

    .hero h1{font-size:19px}

    .lesson{padding:10px}

    .watch,.noVideo{
        font-size:6px;
        padding:6px;
    }

    .answerGrid{
        grid-template-columns:1fr 1fr;
    }
}
</style>
</head>

<body>

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
<div class="logoIcon">∑</div>

<div class="logoText">
منبر ون
<small>MINBAR ONE • MATH</small>
</div>
</div>

<div class="loginButtons">

<button
class="studentBtn"
id="studentLoginButton"
onclick="openStudentLogin()">
👨‍🎓 دخول الطالب
</button>

<a
class="teacherBtn"
href="teacher.html">
👨‍🏫 دخول الأستاذ
</a>

<div
class="userBox"
id="userBox">

<div class="userIcon">👨‍🎓</div>
<span id="userEmail">طالب</span>

</div>

<button
class="logoutBtn"
id="logoutButton"
onclick="logoutStudent()">
🚪 خروج
</button>

</div>
</div>
</header>

<section class="hero">

<div class="heroBadge">
🧮 منصة الرياضيات
</div>

<h1>
مرحبًا بك في <span>منبر ون</span> 🚀
</h1>

<p>
تعلّم الرياضيات، شاهد الحصص،
راجع الملخصات، حل الاختبارات
وادخل إلى رومات الدراسة.
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

<div class="resultTitle">🔎 نتائج البحث</div>

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

<!-- تحدي اليوم -->

<section class="section">

<div class="sectionHead">

<h2>🔥 تحدي اليوم</h2>

<span id="challengeCounter">6 أسئلة</span>

</div>

<div class="challenge">

<div class="challengeTag">
🧠 تحدي الرياضيات
</div>

<h3 id="challengeTitle">
هل تستطيع حل 6 أسئلة؟
</h3>

<div class="challengeInfo">
<span id="difficultyText">ابدأ من السهل</span>
<span id="scoreText">⭐ 0 نقطة</span>
</div>

<div
class="question"
id="challengeQuestion">

اضغط على «ابدأ التحدي» لبدء الأسئلة 🚀

</div>

<div
class="answerGrid"
id="answerGrid">
</div>

<button
class="challengeStart"
id="challengeStart"
onclick="startChallenge()">

🔥 ابدأ التحدي

</button>

<button
class="challengeNext"
id="challengeNext"
onclick="nextChallengeQuestion()">

السؤال التالي ➡️

</button>

<div
class="challengeResult"
id="challengeResult">
</div>

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
<strong id="pointsValue">0</strong>
<span>⭐ النقاط</span>
</div>

<div class="stat progress">
<strong id="progressValue">0%</strong>
<span>📊 التقدم</span>
</div>

<div class="stat rank">
<strong id="rankValue">🥉</strong>
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

<div id="lessonsContainer" class="lessonList">

<div class="loading">
⏳ جاري تحميل الحصص...
</div>

</div>
</section>

<!-- الملخصات -->

<section class="section" id="summaries">

<div class="sectionHead">

<h2>📚 الملخصات</h2>

<span>من الأستاذ</span>

</div>

<div id="summariesContainer" class="contentGrid">

<div class="loading">
⏳ جاري تحميل الملخصات...
</div>

</div>
</section>

<!-- الاختبارات -->

<section class="section" id="tests">

<div class="sectionHead">

<h2>📝 الاختبارات</h2>

<span>من الأستاذ</span>

</div>

<div id="testsContainer" class="contentGrid">

<div class="loading">
⏳ جاري تحميل الاختبارات...
</div>

</div>
</section>

<!-- الرومات -->

<section class="section" id="rooms">

<div class="sectionHead">

<h2>💬 الرومات</h2>

<span>من الأستاذ</span>

</div>

<div id="roomsContainer" class="contentGrid">

<div class="loading">
⏳ جاري تحميل الرومات...
</div>

</div>
</section>

<footer>
منبر ون • منصة الرياضيات 🎓
</footer>

</div>

<!-- نافذة تسجيل الدخول -->

<div id="studentModal" class="modal">

<div class="loginBox">

<button
class="close"
onclick="closeStudentLogin()">
×
</button>

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
onclick="studentLogin()">
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
   إعداد Supabase
===================================================== */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


/* =====================================================
   المتغيرات
===================================================== */

let allLessons = [];
let allSummaries = [];
let allTests = [];
let allRooms = [];

let isSignupMode = false;


/* =====================================================
   Supabase Request
===================================================== */

async function supabaseRequest(url,options={}){

    const headers = {
        "apikey":SUPABASE_KEY,
        "Content-Type":"application/json",
        ...(options.headers || {})
    };

    return fetch(url,{
        ...options,
        headers
    });
}


/* =====================================================
   جلب الجداول
===================================================== */

async function getTable(table){

    try{

        const response =
        await supabaseRequest(
            SUPABASE_URL +
            "/rest/v1/" +
            table +
            "?select=*"
        );

        if(!response.ok){

            console.error(
                "Supabase error:",
                table,
                response.status
            );

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


/* =====================================================
   حماية النص
===================================================== */

function safe(text){

    return String(text ?? "")
    .replaceAll("&","&amp;")
    .replaceAll("<","&lt;")
    .replaceAll(">","&gt;")
    .replaceAll('"',"&quot;")
    .replaceAll("'","&#039;");
}


/* =====================================================
   الحصص
===================================================== */

async function loadLessons(){

    const box =
    document.getElementById("lessonsContainer");

    box.innerHTML =
    `<div class="loading">⏳ جاري تحميل الحصص...</div>`;

    const lessons =
    await getTable("lessons");

    allLessons =
    Array.isArray(lessons)
    ? lessons
    : [];

    allLessons.sort((a,b)=>
        new Date(b.created_at || 0) -
        new Date(a.created_at || 0)
    );

    if(!allLessons.length){

        box.innerHTML = `
        <div class="empty">
        📚 لا توجد حصص حتى الآن.
        <br>
        عندما يضيف الأستاذ حصة ستظهر هنا تلقائيًا.
        </div>`;

        return;
    }

    box.innerHTML = "";

    allLessons.forEach(lesson=>{

        const title =
        lesson.title || "حصة رياضيات";

        const unit =
        lesson.unit || "رياضيات";

        const duration =
        lesson.duration
        ? " • " + lesson.duration
        : "";

        const videoUrl =
        String(lesson.video_url || "").trim();

        const hasVideo =
        videoUrl !== "";

        const item =
        document.createElement("div");

        item.className = "lesson";

        item.innerHTML = `

        <div class="lessonIcon ${
            hasVideo ? "" : "noVideoIcon"
        }">

            ${hasVideo ? "🎥" : "⚠️"}

        </div>

        <div class="lessonInfo">

            <h3>${safe(title)}</h3>

            <p>
                ${safe(unit)}
                ${safe(duration)}
            </p>

        </div>

        ${
            hasVideo
            ?
            `
            <a
                class="watch"
                href="${safe(videoUrl)}"
                target="_blank"
                rel="noopener noreferrer">
                ▶️ مشاهدة
            </a>
            `
            :
            `
            <span class="noVideo">
                ⚠️ لا يوجد فيديو
            </span>
            `
        }

        `;

        box.appendChild(item);

    });
}


/* =====================================================
   الملخصات
===================================================== */

async function loadSummaries(){

    const box =
    document.getElementById("summariesContainer");

    const summaries =
    await getTable("summaries");

    allSummaries =
    Array.isArray(summaries)
    ? summaries
    : [];

    allSummaries.sort((a,b)=>
        new Date(b.created_at || 0) -
        new Date(a.created_at || 0)
    );

    if(!allSummaries.length){

        box.innerHTML = `
        <div class="empty">
        📚 لا توجد ملخصات حتى الآن.
        <br>
        عندما يضيف الأستاذ ملخصًا سيظهر هنا تلقائيًا.
        </div>`;

        return;
    }

    box.innerHTML = "";

    allSummaries.forEach(summary=>{

        const title =
        summary.title || "ملخص درس";

        const description =
        summary.description ||
        summary.content ||
        "ملخص رياضيات";

        const fileUrl =
        String(
            summary.file_url ||
            summary.url ||
            summary.link ||
            ""
        ).trim();

        const card =
        document.createElement("div");

        card.className = "contentCard";

        const button =
        fileUrl
        ?
        `
        <a
            class="contentButton summaryButton"
            href="${safe(fileUrl)}"
            target="_blank"
            rel="noopener noreferrer">
            📖 فتح الملخص
        </a>
        `
        :
        `
        <span class="contentButton">
            📖 الملخص متاح
        </span>
        `;

        card.innerHTML = `

        <div class="contentIcon summaryIcon">
            📚
        </div>

        <h3>${safe(title)}</h3>

        <p>${safe(description)}</p>

        ${button}

        `;

        box.appendChild(card);

    });
}


/* =====================================================
   الاختبارات
===================================================== */

async function loadTests(){

    const box =
    document.getElementById("testsContainer");

    const tests =
    await getTable("tests");

    allTests =
    Array.isArray(tests)
    ? tests
    : [];

    allTests.sort((a,b)=>
        new Date(b.created_at || 0) -
        new Date(a.created_at || 0)
    );

    if(!allTests.length){

        box.innerHTML = `
        <div class="empty">
        📝 لا توجد اختبارات حتى الآن.
        <br>
        عندما يضيف الأستاذ اختبارًا سيظهر هنا تلقائيًا.
        </div>`;

        return;
    }

    box.innerHTML = "";

    allTests.forEach(test=>{

        const title =
        test.title || "اختبار رياضيات";

        const description =
        test.description ||
        "اختبار جديد من الأستاذ";

        const testUrl =
        String(
            test.test_url ||
            test.url ||
            test.link ||
            ""
        ).trim();

        const card =
        document.createElement("div");

        card.className = "contentCard";

        const button =
        testUrl
        ?
        `
        <a
            class="contentButton testButton"
            href="${safe(testUrl)}"
            target="_blank"
            rel="noopener noreferrer">
            📝 بدء الاختبار
        </a>
        `
        :
        `
        <span class="contentButton">
            📝 الاختبار متاح
        </span>
        `;

        card.innerHTML = `

        <div class="contentIcon testIcon">
            📝
        </div>

        <h3>${safe(title)}</h3>

        <p>${safe(description)}</p>

        ${button}

        `;

        box.appendChild(card);

    });
}


/* =====================================================
   الرومات
===================================================== */

async function loadRooms(){

    const box =
    document.getElementById("roomsContainer");

    const rooms =
    await getTable("rooms");

    allRooms =
    Array.isArray(rooms)
    ? rooms
    : [];

    allRooms.sort((a,b)=>
        new Date(b.created_at || 0) -
        new Date(a.created_at || 0)
    );

    if(!allRooms.length){

        box.innerHTML = `
        <div class="empty">
        💬 لا توجد رومات حتى الآن.
        <br>
        عندما يضيف الأستاذ رومًا سيظهر هنا تلقائيًا.
        </div>`;

        return;
    }

    box.innerHTML = "";

    allRooms.forEach(room=>{

        const title =
        room.title ||
        room.name ||
        "روم الدراسة";

        const description =
        room.description ||
        "روم للدراسة والتعاون مع الطلاب";

        const roomUrl =
        String(
            room.room_url ||
            room.url ||
            room.link ||
            ""
        ).trim();

        const card =
        document.createElement("div");

        card.className = "contentCard";

        const button =
        roomUrl
        ?
        `
        <a
            class="contentButton roomButton"
            href="${safe(roomUrl)}"
            target="_blank"
            rel="noopener noreferrer">
            💬 دخول الروم
        </a>
        `
        :
        `
        <span class="contentButton">
            💬 الروم متاح
        </span>
        `;

        card.innerHTML = `

        <div class="contentIcon roomIcon">
            💬
        </div>

        <h3>${safe(title)}</h3>

        <p>${safe(description)}</p>

        ${button}

        `;

        box.appendChild(card);

    });
}


/* =====================================================
   البحث
===================================================== */

function searchEverything(){

    const text =
    document.getElementById("search")
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

    const results = [];

    allLessons.forEach(item=>{

        const title =
        String(item.title || "").toLowerCase();

        const description =
        String(item.description || "").toLowerCase();

        const unit =
        String(item.unit || "").toLowerCase();

        if(
            title.includes(text) ||
            description.includes(text) ||
            unit.includes(text)
        ){

            results.push({
                type:"lesson",
                title:item.title || "حصة رياضيات",
                description:item.unit || "حصة",
                url:item.video_url || ""
            });
        }
    });

    allSummaries.forEach(item=>{

        const title =
        String(item.title || "").toLowerCase();

        const description =
        String(
            item.description ||
            item.content ||
            ""
        ).toLowerCase();

        if(
            title.includes(text) ||
            description.includes(text)
        ){

            results.push({
                type:"summary",
                title:item.title || "ملخص",
                description:item.description || "ملخص درس",
                url:
                    item.file_url ||
                    item.url ||
                    item.link ||
                    ""
            });
        }
    });

    allTests.forEach(item=>{

        const title =
        String(item.title || "").toLowerCase();

        const description =
        String(item.description || "").toLowerCase();

        if(
            title.includes(text) ||
            description.includes(text)
        ){

            results.push({
                type:"test",
                title:item.title || "اختبار",
                description:item.description || "اختبار",
                url:
                    item.test_url ||
                    item.url ||
                    item.link ||
                    ""
            });
        }
    });

    allRooms.forEach(item=>{

        const title =
        String(
            item.title ||
            item.name ||
            ""
        ).toLowerCase();

        const description =
        String(item.description || "").toLowerCase();

        if(
            title.includes(text) ||
            description.includes(text)
        ){

            results.push({
                type:"room",
                title:
                    item.title ||
                    item.name ||
                    "روم",
                description:
                    item.description ||
                    "روم دراسة",
                url:
                    item.room_url ||
                    item.url ||
                    item.link ||
                    ""
            });
        }
    });

    if(!results.length){

        list.innerHTML = `
        <div class="empty">
        🔍 لم نجد شيئًا مطابقًا لبحثك.
        </div>`;

        return;
    }

    list.innerHTML = "";

    results.forEach(item=>{

        const hasUrl =
        String(item.url || "").trim() !== "";

        const result =
        document.createElement(
            hasUrl ? "a" : "div"
        );

        result.className = "result";

        if(hasUrl){

            result.href = item.url;
            result.target = "_blank";
            result.rel = "noopener noreferrer";
        }

        let icon = "📚";
        let iconClass = "type-summary";
        let typeName = "ملخص";

        if(item.type === "lesson"){
            icon = "🎥";
            iconClass = "type-video";
            typeName = "حصة";
        }

        if(item.type === "test"){
            icon = "📝";
            iconClass = "type-test";
            typeName = "اختبار";
        }

        if(item.type === "room"){
            icon = "💬";
            iconClass = "type-room";
            typeName = "روم";
        }

        result.innerHTML = `

        <div class="resultIcon ${iconClass}">
            ${icon}
        </div>

        <div class="resultInfo">

            <h3>${safe(item.title)}</h3>

            <p>
                ${typeName}
                •
                ${safe(item.description)}
            </p>

        </div>

        `;

        list.appendChild(result);
    });
}


/* =====================================================
   تحدي اليوم - 6 أسئلة
===================================================== */

const challengeQuestions = [

    {
        question:"8 × 7 + 4 = ؟",
        answers:["60","56","64","52"],
        correct:0,
        points:10,
        difficulty:"🟢 سهل"
    },

    {
        question:"25 + 18 − 7 = ؟",
        answers:["36","38","40","34"],
        correct:1,
        points:15,
        difficulty:"🟢 سهل"
    },

    {
        question:"6² + 8 = ؟",
        answers:["40","42","44","48"],
        correct:1,
        points:20,
        difficulty:"🟡 متوسط"
    },

    {
        question:"3 × (12 − 4) + 5 = ؟",
        answers:["24","29","31","35"],
        correct:1,
        points:25,
        difficulty:"🟡 متوسط"
    },

    {
        question:"إذا كان 3x + 7 = 22، فما قيمة x؟",
        answers:["3","4","5","6"],
        correct:2,
        points:30,
        difficulty:"🟠 صعب"
    },

    {
        question:"إذا كان x² = 81 و x موجب، فما قيمة x؟",
        answers:["7","8","9","10"],
        correct:2,
        points:40,
        difficulty:"🔴 أصعب"
    }

];

let challengeIndex = 0;
let challengeScore = 0;
let challengeAnswered = false;


/* بدء التحدي */

function startChallenge(){

    challengeIndex = 0;
    challengeScore = 0;
    challengeAnswered = false;

    document.getElementById("challengeStart")
    .style.display = "none";

    document.getElementById("challengeResult")
    .style.display = "none";

    document.getElementById("challengeNext")
    .style.display = "none";

    showChallengeQuestion();
}


/* عرض السؤال */

function showChallengeQuestion(){

    const q =
    challengeQuestions[challengeIndex];

    challengeAnswered = false;

    document.getElementById(
        "challengeCounter"
    ).innerText =
    "السؤال " +
    (challengeIndex + 1) +
    " من 6";

    document.getElementById(
        "difficultyText"
    ).innerText =
    q.difficulty;

    document.getElementById(
        "scoreText"
    ).innerText =
    "⭐ " + challengeScore + " نقطة";

    document.getElementById(
        "challengeQuestion"
    ).innerText =
    q.question;

    const grid =
    document.getElementById("answerGrid");

    grid.innerHTML = "";

    q.answers.forEach((answer,index)=>{

        const button =
        document.createElement("button");

        button.className = "answerBtn";

        button.innerText = answer;

        button.onclick =
        function(){

            chooseChallengeAnswer(
                index,
                button
            );

        };

        grid.appendChild(button);

    });

    document.getElementById(
        "challengeNext"
    ).style.display = "none";
}


/* اختيار الإجابة */

function chooseChallengeAnswer(
    selected,
    selectedButton
){

    if(challengeAnswered){
        return;
    }

    challengeAnswered = true;

    const q =
    challengeQuestions[challengeIndex];

    const buttons =
    document.querySelectorAll(
        "#answerGrid .answerBtn"
    );

    buttons.forEach(
        button=>{
            button.disabled = true;
        }
    );

    if(selected === q.correct){

        selectedButton.classList.add("correct");

        challengeScore += q.points;

        document.getElementById(
            "scoreText"
        ).innerText =
        "⭐ " + challengeScore + " نقطة";

        alert(
            "✅ إجابة صحيحة! +" +
            q.points +
            " نقطة 🎉"
        );

    }else{

        selectedButton.classList.add("wrong");

        buttons[q.correct]
        .classList
        .add("correct");

        alert(
            "❌ إجابة غير صحيحة.\n" +
            "الإجابة الصحيحة هي: " +
            q.answers[q.correct]
        );
    }

    document.getElementById(
        "challengeNext"
    ).style.display = "block";

    if(challengeIndex === challengeQuestions.length - 1){

        document.getElementById(
            "challengeNext"
        ).innerText =
        "🏆 عرض النتيجة";

    }
}


/* السؤال التالي */

function nextChallengeQuestion(){

    if(
        challengeIndex <
        challengeQuestions.length - 1
    ){

        challengeIndex++;

        showChallengeQuestion();

    }else{

        finishChallenge();
    }
}


/* إنهاء التحدي */

function finishChallenge(){

    const maxPoints =
    challengeQuestions.reduce(
        (total,q)=>total + q.points,
        0
    );

    const percentage =
    Math.round(
        (challengeScore / maxPoints) * 100
    );

    document.getElementById(
        "challengeQuestion"
    ).innerHTML =
    "🎉 انتهى تحدي اليوم!";

    document.getElementById(
        "answerGrid"
    ).innerHTML = "";

    document.getElementById(
        "challengeNext"
    ).style.display = "none";

    const result =
    document.getElementById(
        "challengeResult"
    );

    result.innerHTML = `
        حصلت على
        <strong>${challengeScore}</strong>
        من
        <strong>${maxPoints}</strong>
        نقطة
        <br>
        النتيجة: <strong>${percentage}%</strong>
        🎓
    `;

    result.style.display = "block";

    document.getElementById(
        "challengeCounter"
    ).innerText =
    "اكتمل التحدي ✅";

    document.getElementById(
        "difficultyText"
    ).innerText =
    "أحسنت!";

    document.getElementById(
        "challengeStart"
    ).innerText =
    "🔄 إعادة التحدي";

    document.getElementById(
        "challengeStart"
    ).style.display =
    "block";

    addPoints(challengeScore);
}


/* =====================================================
   النقاط والتقدم
===================================================== */

function getStudentPoints(){

    return Number(
        localStorage.getItem(
            "minbar_points"
        ) || 0
    );
}


function addPoints(points){

    const oldPoints =
    getStudentPoints();

    const newPoints =
    oldPoints + Number(points || 0);

    localStorage.setItem(
        "minbar_points",
        newPoints
    );

    updateStats();
}


function updateStats(){

    const points =
    getStudentPoints();

    document.getElementById(
        "pointsValue"
    ).innerText =
    points;

    let progress =
    Math.min(
        100,
        Math.round(
            points / 2
        )
    );

    document.getElementById(
        "progressValue"
    ).innerText =
    progress + "%";

    let rank = "🥉";

    if(points >= 100){
        rank = "💎";
    }else if(points >= 70){
        rank = "🏆";
    }else if(points >= 40){
        rank = "🥇";
    }else if(points >= 20){
        rank = "🥈";
    }

    document.getElementById(
        "rankValue"
    ).innerText =
    rank;
}


/* =====================================================
   تسجيل الدخول
===================================================== */

function openStudentLogin(){

    isSignupMode = false;

    updateAuthWindow();

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

    clearAuthMessage();
}


function switchAuthMode(){

    isSignupMode =
    !isSignupMode;

    updateAuthWindow();
}


function updateAuthWindow(){

    const title =
    document.getElementById("authTitle");

    const description =
    document.getElementById("authDescription");

    const button =
    document.getElementById("authMainButton");

    const switchText =
    document.getElementById("switchText");

    const switchButton =
    document.getElementById("switchButton");

    clearAuthMessage();

    if(isSignupMode){

        title.innerText =
        "🧑‍🎓 إنشاء حساب طالب";

        description.innerText =
        "أنشئ حسابك باستخدام البريد الإلكتروني وكلمة المرور.";

        button.innerText =
        "إنشاء الحساب";

        switchText.innerText =
        "لديك حساب بالفعل؟";

        switchButton.innerText =
        "تسجيل الدخول";

    }else{

        title.innerText =
        "👨‍🎓 دخول الطالب";

        description.innerText =
        "سجّل الدخول لمتابعة رحلتك التعليمية.";

        button.innerText =
        "تسجيل الدخول";

        switchText.innerText =
        "ليس لديك حساب؟";

        switchButton.innerText =
        "إنشاء حساب";
    }
}


function showAuthMessage(text,type="info"){

    const box =
    document.getElementById(
        "studentMessage"
    );

    box.className =
    "message " +
    (
        type === "success"
        ? "successMessage"
        :
        type === "error"
        ? "errorMessage"
        :
        "infoMessage"
    );

    box.innerText = text;
}


function clearAuthMessage(){

    const box =
    document.getElementById(
        "studentMessage"
    );

    box.className = "message";
    box.innerText = "";
}


/* =====================================================
   الدخول / التسجيل
===================================================== */

async function studentLogin(){

    const emailInput =
    document.getElementById("studentEmail");

    const passwordInput =
    document.getElementById("studentPassword");

    const button =
    document.getElementById("authMainButton");

    const email =
    emailInput.value.trim();

    const password =
    passwordInput.value;

    clearAuthMessage();

    if(!email){

        showAuthMessage(
            "📧 اكتب البريد الإلكتروني أولًا.",
            "error"
        );

        return;
    }

    if(!password){

        showAuthMessage(
            "🔐 اكتب كلمة المرور أولًا.",
            "error"
        );

        return;
    }

    if(password.length < 6){

        showAuthMessage(
            "🔐 كلمة المرور يجب أن تكون 6 أحرف على الأقل.",
            "error"
        );

        return;
    }

    button.disabled = true;

    try{

        if(isSignupMode){

            showAuthMessage(
                "⏳ جاري إنشاء الحساب...",
                "info"
            );

            const response =
            await supabaseRequest(
                SUPABASE_URL +
                "/auth/v1/signup",
                {
                    method:"POST",
                    body:JSON.stringify({
                        email:email,
                        password:password
                    })
                }
            );

            const data =
            await response.json();

            if(!response.ok){

                let message =
                "تعذر إنشاء الحساب.";

                if(data?.msg){
                    message = data.msg;
                }else if(data?.error_description){
                    message = data.error_description;
                }else if(data?.message){
                    message = data.message;
                }

                showAuthMessage(
                    "❌ " + message,
                    "error"
                );

                button.disabled = false;

                return;
            }

            if(data.access_token){

                saveSession(data);

                showAuthMessage(
                    "✅ تم إنشاء الحساب وتسجيل الدخول بنجاح 🎉",
                    "success"
                );

                setTimeout(
                    closeStudentLogin,
                    900
                );

            }else{

                showAuthMessage(
                    "✅ تم إنشاء الحساب. إذا طلب منك تأكيد البريد، أكد بريدك ثم سجّل الدخول.",
                    "success"
                );
            }

        }else{

            showAuthMessage(
                "⏳ جاري تسجيل الدخول...",
                "info"
            );

            const response =
            await supabaseRequest(
                SUPABASE_URL +
                "/auth/v1/token?grant_type=password",
                {
                    method:"POST",
                    body:JSON.stringify({
                        email:email,
                        password:password
                    })
                }
            );

            const data =
            await response.json();

            if(!response.ok){

                let message =
                "البريد الإلكتروني أو كلمة المرور غير صحيحة.";

                if(data?.error_description){
                    message =
                    data.error_description;
                }else if(data?.msg){
                    message =
                    data.msg;
                }else if(data?.message){
                    message =
                    data.message;
                }

                showAuthMessage(
                    "❌ " + message,
                    "error"
                );

                button.disabled = false;

                return;
            }

            saveSession(data);

            showAuthMessage(
                "✅ تم تسجيل الدخول بنجاح 🎉",
                "success"
            );

            setTimeout(
                closeStudentLogin,
                800
            );
        }

    }catch(error){

        console.error(error);

        showAuthMessage(
            "❌ حدث خطأ في الاتصال. تأكد من الإنترنت وحاول مرة أخرى.",
            "error"
        );
    }

    button.disabled = false;
}


/* =====================================================
   حفظ الجلسة
===================================================== */

function saveSession(data){

    if(!data){
        return;
    }

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

    updateUserInterface(
        data.user || null
    );
}


/* =====================================================
   المستخدم المحفوظ
===================================================== */

function getSavedUser(){

    try{

        const user =
        localStorage.getItem(
            "minbar_user"
        );

        if(!user){
            return null;
        }

        return JSON.parse(user);

    }catch(error){

        return null;
    }
}


/* =====================================================
   واجهة المستخدم
===================================================== */

function updateUserInterface(user){

    const loginButton =
    document.getElementById(
        "studentLoginButton"
    );

    const userBox =
    document.getElementById(
        "userBox"
    );

    const userEmail =
    document.getElementById(
        "userEmail"
    );

    const logoutButton =
    document.getElementById(
        "logoutButton"
    );

    if(user){

        loginButton.style.display =
        "none";

        userBox.style.display =
        "flex";

        logoutButton.style.display =
        "flex";

        userEmail.innerText =
        user.email ||
        "الطالب";

    }else{

        loginButton.style.display =
        "flex";

        userBox.style.display =
        "none";

        logoutButton.style.display =
        "none";
    }
}


/* =====================================================
   تسجيل الخروج
===================================================== */

async function logoutStudent(){

    const accessToken =
    localStorage.getItem(
        "minbar_access_token"
    );

    try{

        if(accessToken){

            await supabaseRequest(
                SUPABASE_URL +
                "/auth/v1/logout",
                {
                    method:"POST",
                    headers:{
                        "Authorization":
                        "Bearer " +
                        accessToken
                    }
                }
            );
        }

    }catch(error){

        console.error(error);
    }

    localStorage.removeItem(
        "minbar_access_token"
    );

    localStorage.removeItem(
        "minbar_refresh_token"
    );

    localStorage.removeItem(
        "minbar_user"
    );

    updateUserInterface(null);

    alert("تم تسجيل الخروج 👋");
}


/* =====================================================
   استعادة الجلسة
===================================================== */

async function restoreSession(){

    const accessToken =
    localStorage.getItem(
        "minbar_access_token"
    );

    const savedUser =
    getSavedUser();

    if(!accessToken){

        updateUserInterface(
            savedUser
        );

        return;
    }

    try{

        const response =
        await supabaseRequest(
            SUPABASE_URL +
            "/auth/v1/user",
            {
                method:"GET",
                headers:{
                    "Authorization":
                    "Bearer " +
                    accessToken
                }
            }
        );

        if(response.ok){

            const user =
            await response.json();

            localStorage.setItem(
                "minbar_user",
                JSON.stringify(user)
            );

            updateUserInterface(user);

        }else{

            updateUserInterface(null);

        }

    }catch(error){

        console.error(error);

        updateUserInterface(
            savedUser
        );
    }
}


/* =====================================================
   إغلاق النافذة عند الضغط خارجها
===================================================== */

document
.getElementById("studentModal")
.addEventListener(
    "click",
    function(event){

        if(event.target === this){

            closeStudentLogin();
        }
    }
);


/* =====================================================
   تشغيل الموقع
===================================================== */

async function startSite(){

    updateUserInterface(
        getSavedUser()
    );

    updateStats();

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
