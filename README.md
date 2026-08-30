<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>منبر ون | منصة الرياضيات</title>

<style>

/* =====================================================
   الأساس
===================================================== */

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
}

body{

    font-family:
    Tahoma,
    Arial,
    sans-serif;

    background:

    radial-gradient(
        circle at 85% 5%,
        #172b63 0,
        transparent 28%
    ),

    radial-gradient(
        circle at 10% 70%,
        #27174f 0,
        transparent 28%
    ),

    #050b1d;

    color:white;

    min-height:100vh;

    overflow-x:hidden;
}

button,
input{
    font-family:inherit;
}

button{
    cursor:pointer;
}

.page{
    position:relative;
    z-index:2;
}


/* =====================================================
   الهيدر
===================================================== */

header{

    height:70px;

    background:
    rgba(5,13,32,.88);

    backdrop-filter:blur(15px);

    border-bottom:
    1px solid rgba(255,255,255,.08);

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


/* الشعار */

.logo{

    display:flex;

    align-items:center;

    gap:9px;
}

.logoIcon{

    width:39px;

    height:39px;

    border-radius:12px;

    background:
    linear-gradient(
        135deg,
        #12c9ff,
        #855cff
    );

    display:flex;

    align-items:center;

    justify-content:center;

    font-size:19px;

    box-shadow:
    0 0 25px
    rgba(30,190,255,.25);
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


/* =====================================================
   أزرار الهيدر
===================================================== */

.loginButtons{

    display:flex;

    gap:7px;

    align-items:center;
}

.studentBtn,
.teacherBtn,
.logoutBtn{

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

    background:
    linear-gradient(
        135deg,
        #087fb5,
        #7450d8
    );
}

.teacherBtn{

    background:
    linear-gradient(
        135deg,
        #a65a17,
        #d38b20
    );

    text-decoration:none;
}

.logoutBtn{

    background:
    linear-gradient(
        135deg,
        #8f3048,
        #b84b62
    );

    display:none;
}

.studentBtn:hover,
.teacherBtn:hover,
.logoutBtn:hover{

    transform:translateY(-2px);

    box-shadow:
    0 8px 20px
    rgba(0,0,0,.25);
}


/* اسم الطالب */

.userBox{

    display:none;

    align-items:center;

    gap:7px;

    background:#0b1b36;

    border:
    1px solid rgba(255,255,255,.09);

    padding:5px 8px;

    border-radius:10px;

    font-size:7px;

    color:#a9bdd5;
}

.userIcon{

    width:27px;

    height:27px;

    border-radius:8px;

    background:
    linear-gradient(
        135deg,
        #12c9ff,
        #855cff
    );

    display:flex;

    align-items:center;

    justify-content:center;
}


/* =====================================================
   زخارف متحركة
===================================================== */

.float{

    position:fixed;

    top:-60px;

    font-size:19px;

    opacity:.25;

    pointer-events:none;

    z-index:0;

    animation:
    fall linear infinite;
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
        transform:
        translateY(-70px)
        rotate(0deg);
    }

    to{
        transform:
        translateY(110vh)
        rotate(180deg);
    }
}


/* النجوم */

.star{

    position:fixed;

    color:#ffe36b;

    font-size:15px;

    animation:
    shine 1.8s infinite alternate;

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


/* =====================================================
   البطل
===================================================== */

.hero{

    width:92%;

    max-width:1100px;

    margin:22px auto 0;

    padding:30px 23px;

    border-radius:24px;

    background:

    linear-gradient(
        135deg,
        rgba(11,49,88,.96),
        rgba(42,23,76,.94)
    );

    border:
    1px solid
    rgba(90,190,255,.18);

    box-shadow:
    0 18px 55px
    rgba(0,0,0,.22);
}

.heroBadge{

    display:inline-block;

    padding:6px 9px;

    border-radius:20px;

    background:
    rgba(35,202,255,.1);

    border:
    1px solid
    rgba(35,202,255,.18);

    color:#5cdcff;

    font-size:8px;
}

.hero h1{

    font-size:25px;

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

    margin-top:5px;
}


/* =====================================================
   البحث
===================================================== */

.search{

    width:92%;

    max-width:1100px;

    margin:14px auto 0;

    position:relative;
}

.search input{

    width:100%;

    height:45px;

    border:
    1px solid
    rgba(255,255,255,.12);

    border-radius:13px;

    background:#0b1b36;

    color:white;

    padding:
    0 43px 0 15px;

    outline:none;

    font-size:10px;
}

.search input::placeholder{

    color:#7189a6;
}

.search input:focus{

    border-color:#2acbff;

    box-shadow:
    0 0 20px
    rgba(42,203,255,.08);
}

.searchIcon{

    position:absolute;

    right:14px;

    top:13px;

    font-size:15px;
}


/* =====================================================
   نتائج البحث
===================================================== */

.searchResults{

    width:92%;

    max-width:1100px;

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
    1px solid
    rgba(255,255,255,.08);

    text-decoration:none;

    color:white;

    transition:.2s;
}

.result:hover{

    transform:
    translateX(-3px);

    border-color:
    rgba(255,255,255,.2);
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

.type-video{
    background:#087db5;
}

.type-no-video{
    background:#7c4d17;
}

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


/* =====================================================
   الأقسام
===================================================== */

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

.sectionHead h2{

    font-size:15px;
}

.sectionHead span{

    font-size:7px;

    color:#7188a6;
}


/* =====================================================
   الخيارات
===================================================== */

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

    padding:13px 8px;

    border:
    1px solid
    rgba(255,255,255,.09);

    transition:.25s;
}

.option:hover{

    transform:
    translateY(-4px);
}

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
    linear-gradient(
        135deg,
        #073b67,
        #087aa2
    );
}

.c1 .optionIcon{
    background:#079ed3;
}

.c2{

    background:
    linear-gradient(
        135deg,
        #36205e,
        #69358b
    );
}

.c2 .optionIcon{
    background:#9856d8;
}

.c3{

    background:
    linear-gradient(
        135deg,
        #694218,
        #a86616
    );
}

.c3 .optionIcon{
    background:#eaa52e;
}

.c4{

    background:
    linear-gradient(
        135deg,
        #104a43,
        #147660
    );
}

.c4 .optionIcon{
    background:#1ac29f;
}


/* =====================================================
   التحدي
===================================================== */

.challenge{

    padding:17px;

    border-radius:17px;

    background:
    linear-gradient(
        135deg,
        #30205d,
        #151e4b
    );

    border:
    1px solid
    rgba(180,120,255,.18);
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
    linear-gradient(
        135deg,
        #8b54ff,
        #c247a6
    );

    font-size:9px;
}


/* =====================================================
   الإحصائيات
===================================================== */

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
    1px solid
    rgba(255,255,255,.07);

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


/* =====================================================
   الحصص
===================================================== */

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
    1px solid
    rgba(100,170,230,.1);

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

    background:
    linear-gradient(
        135deg,
        #00aeea,
        #5b51dc
    );

    flex-shrink:0;
}

.noVideoIcon{

    background:
    linear-gradient(
        135deg,
        #765016,
        #a86c1e
    );
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

.watch{

    margin-right:auto;

    color:#4fdcff;

    text-decoration:none;

    font-size:7px;

    padding:7px 8px;

    border-radius:7px;

    background:
    rgba(40,200,255,.08);

    white-space:nowrap;
}

.noVideo{

    margin-right:auto;

    color:#ffca66;

    font-size:7px;

    padding:7px 8px;

    border-radius:7px;

    background:
    rgba(220,150,40,.1);

    white-space:nowrap;
}


/* =====================================================
   الملخصات والاختبارات والرومات
===================================================== */

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
    1px solid
    rgba(255,255,255,.07);
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

    padding:22px;

    border-radius:14px;

    text-align:center;

    color:#7188a4;

    font-size:8px;

    background:#091931;

    border:
    1px dashed
    #294563;
}


/* =====================================================
   رسالة تحميل الحصص
===================================================== */

.loading{

    padding:25px;

    text-align:center;

    color:#65d8ff;

    font-size:9px;
}


/* =====================================================
   رسالة الخطأ
===================================================== */

.errorBox{

    padding:20px;

    border-radius:14px;

    text-align:center;

    color:#ffb1b1;

    background:
    rgba(150,30,50,.12);

    border:
    1px solid
    rgba(255,80,100,.15);

    font-size:8px;

    line-height:1.8;
}


/* =====================================================
   الفوتر
===================================================== */

footer{

    text-align:center;

    padding:28px 0 18px;

    color:#4e6682;

    font-size:7px;
}


/* =====================================================
   النوافذ
===================================================== */

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

    max-width:390px;

    background:
    linear-gradient(
        145deg,
        #101f42,
        #1d1740
    );

    border:
    1px solid
    rgba(100,200,255,.18);

    border-radius:22px;

    padding:23px;

    box-shadow:
    0 25px 80px
    rgba(0,0,0,.5);
}

.close{

    float:left;

    border:0;

    background:none;

    color:#8297b3;

    font-size:22px;

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

    line-height:1.8;
}

.loginBox input{

    width:100%;

    height:42px;

    margin-bottom:9px;

    border:
    1px solid
    rgba(255,255,255,.1);

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

    background:
    linear-gradient(
        135deg,
        #09a9df,
        #7650e5
    );

    font-size:10px;

    cursor:pointer;
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

    font-family:inherit;

    cursor:pointer;
}

.message{

    min-height:22px;

    margin-bottom:7px;

    text-align:center;

    font-size:8px;

    line-height:1.7;
}

.successMessage{
    color:#67e8b1;
}

.errorMessage{
    color:#ff8f9d;
}

.infoMessage{
    color:#64d9ff;
}


/* =====================================================
   الهاتف
===================================================== */

@media(max-width:750px){

    .header{

        width:94%;
    }

    .hero{

        width:94%;

        padding:24px 18px;
    }

    .search,
    .section,
    .searchResults{

        width:94%;
    }

    .lessonList{

        grid-template-columns:1fr;
    }

}

@media(max-width:650px){

    header{

        height:auto;

        min-height:66px;
    }

    .header{

        padding:9px 0;

        gap:7px;
    }

    .logoText{

        font-size:13px;
    }

    .loginButtons{

        gap:4px;
    }

    .studentBtn,
    .teacherBtn,
    .logoutBtn{

        padding:
        8px 7px;

        font-size:7px;
    }

    .userBox{

        display:none !important;
    }

    .hero h1{

        font-size:21px;
    }

    .options{

        grid-template-columns:
        repeat(4,1fr);

        gap:5px;
    }

    .option{

        padding:
        10px 4px;
    }

    .option p{

        display:none;
    }

    .futureGrid{

        grid-template-columns:
        repeat(3,1fr);
    }

    .stats{

        gap:5px;
    }

    .stat{

        padding:
        11px 5px;
    }

    .stat strong{

        font-size:15px;
    }

}

@media(max-width:430px){

    .logoIcon{

        width:34px;

        height:34px;

        font-size:16px;
    }

    .logoText{

        font-size:11px;
    }

    .logoText small{

        font-size:5px;
    }

    .studentBtn,
    .teacherBtn{

        padding:
        7px 5px;

        font-size:6px;
    }

    .hero h1{

        font-size:19px;
    }

    .lesson{

        padding:10px;
    }

    .watch,
    .noVideo{

        font-size:6px;

        padding:
        6px 6px;
    }
}

</style>

</head>

<body>


<!-- =====================================================
     الزخارف
===================================================== -->

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


<!-- =====================================================
     الهيدر
===================================================== -->

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


<div class="loginButtons">


<button
class="studentBtn"
id="studentLoginButton"
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


<div
class="userBox"
id="userBox">

<div class="userIcon">
👨‍🎓
</div>

<span id="userEmail">
طالب
</span>

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


<!-- =====================================================
     البطل
===================================================== -->

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


<!-- =====================================================
     البحث
===================================================== -->

<div class="search">

<span class="searchIcon">
🔎
</span>

<input
id="search"
type="text"
placeholder="ابحث عن حصة أو درس..."
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


<!-- =====================================================
     الأقسام
===================================================== -->

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


<!-- =====================================================
     التحدي
===================================================== -->

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


<!-- =====================================================
     التقدم
===================================================== -->

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


<!-- =====================================================
     الحصص
===================================================== -->

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


<div class="loading">
⏳ جاري تحميل الحصص...
</div>


</div>

</section>


<!-- =====================================================
     الملخصات
===================================================== -->

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


<!-- =====================================================
     الاختبارات
===================================================== -->

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


<!-- =====================================================
     الرومات
===================================================== -->

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


<!-- =====================================================
     نافذة تسجيل الطالب
===================================================== -->

<div
id="studentModal"
class="modal">


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


<div
id="studentMessage"
class="message">

</div>


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


<!-- =====================================================
     JavaScript
===================================================== -->

<script>


/* =====================================================
   Supabase
===================================================== */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


/* =====================================================
   متغيرات
===================================================== */

let allLessons = [];

let isSignupMode = false;


/* =====================================================
   دالة الطلب إلى Supabase
===================================================== */

async function supabaseRequest(
    url,
    options = {}
){

    const headers = {

        "apikey":
        SUPABASE_KEY,

        "Content-Type":
        "application/json",

        ...(options.headers || {})

    };

    return fetch(
        url,
        {
            ...options,
            headers:headers
        }
    );

}


/* =====================================================
   جلب جدول
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
   تنظيف النص
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
   تحميل الحصص
===================================================== */

async function loadLessons(){

    const box =
    document.getElementById(
        "lessonsContainer"
    );


    box.innerHTML = `

        <div class="loading">
            ⏳ جاري تحميل الحصص...
        </div>

    `;


    try{

        const lessons =
        await getTable("lessons");


        allLessons =
        Array.isArray(lessons)
        ? lessons
        : [];


        if(!allLessons.length){

            box.innerHTML = `

                <div class="empty">

                    📚 لا توجد حصص حتى الآن.

                    <br><br>

                    عندما يضيف الأستاذ أول حصة
                    ستظهر هنا تلقائيًا.

                </div>

            `;

            return;

        }


        /* ترتيب الأحدث أولًا */

        allLessons.sort(

            (a,b)=>

            new Date(
                b.created_at || 0
            )

            -

            new Date(
                a.created_at || 0
            )

        );


        box.innerHTML = "";


        allLessons.forEach(
            function(lesson){

                const item =
                document.createElement(
                    "div"
                );


                item.className =
                "lesson";


                const title =
                lesson.title ||
                "حصة رياضيات";


                const unit =
                lesson.unit ||
                "رياضيات";


                const duration =
                lesson.duration
                ? " • " +
                  lesson.duration
                : "";


                const videoUrl =
                String(
                    lesson.video_url ||
                    ""
                ).trim();


                const hasVideo =
                videoUrl !== "";


                let action = "";


                if(hasVideo){

                    action = `

                        <a
                            class="watch"
                            href="${safe(videoUrl)}"
                            target="_blank"
                            rel="noopener noreferrer">

                            ▶️ مشاهدة

                        </a>

                    `;

                }else{

                    action = `

                        <span class="noVideo">

                            ⚠️ لا يوجد فيديو

                        </span>

                    `;

                }


                item.innerHTML = `

                    <div
                        class="lessonIcon
                        ${hasVideo
                            ? ""
                            : "noVideoIcon"}">

                        ${hasVideo
                            ? "🎥"
                            : "⚠️"}

                    </div>


                    <div class="lessonInfo">

                        <h3>
                            ${safe(title)}
                        </h3>

                        <p>

                            ${safe(unit)}

                            ${safe(duration)}

                        </p>

                    </div>


                    ${action}

                `;


                box.appendChild(item);

            }
        );


    }catch(error){

        console.error(error);


        box.innerHTML = `

            <div class="errorBox">

                ⚠️ حدث خطأ أثناء تحميل الحصص.

                <br>

                تأكد من اتصال الموقع بقاعدة البيانات.

            </div>

        `;

    }

}


/* =====================================================
   البحث في الحصص
===================================================== */

function searchEverything(){

    const input =
    document.getElementById(
        "search"
    );


    const text =
    input.value
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
    allLessons.filter(
        function(lesson){

            const title =
            String(
                lesson.title || ""
            ).toLowerCase();


            const description =
            String(
                lesson.description || ""
            ).toLowerCase();


            const unit =
            String(
                lesson.unit || ""
            ).toLowerCase();


            return (

                title.includes(text) ||

                description.includes(text) ||

                unit.includes(text)

            );

        }
    );


    if(!results.length){

        list.innerHTML = `

            <div class="empty">

                🔍 لم نجد حصة مطابقة لبحثك.

            </div>

        `;

        return;

    }


    list.innerHTML = "";


    results.forEach(
        function(lesson){

            const videoUrl =
            String(
                lesson.video_url || ""
            ).trim();


            const hasVideo =
            videoUrl !== "";


            const result =
            document.createElement(
                hasVideo
                ? "a"
                : "div"
            );


            result.className =
            "result";


            if(hasVideo){

                result.href =
                videoUrl;

                result.target =
                "_blank";

                result.rel =
                "noopener noreferrer";

            }


            result.innerHTML = `

                <div
                    class="resultIcon
                    ${hasVideo
                        ? "type-video"
                        : "type-no-video"}">

                    ${hasVideo
                        ? "🎥"
                        : "⚠️"}

                </div>


                <div class="resultInfo">

                    <h3>
                        ${safe(
                            lesson.title ||
                            "حصة رياضيات"
                        )}
                    </h3>

                    <p>

                        ${safe(
                            lesson.unit ||
                            "رياضيات"
                        )}

                        •

                        ${
                            hasVideo
                            ? "يوجد فيديو"
                            : "لا يوجد فيديو"
                        }

                    </p>

                </div>

            `;


            list.appendChild(result);

        }
    );

}


/* =====================================================
   تحدي اليوم
===================================================== */

function challengeAnswer(){

    alert(
        "الإجابة الصحيحة هي: 60 🎉"
    );

}


/* =====================================================
   فتح نافذة تسجيل الطالب
===================================================== */

function openStudentLogin(){

    isSignupMode = false;

    updateAuthWindow();


    document
    .getElementById(
        "studentModal"
    )
    .classList
    .add("show");

}


/* =====================================================
   إغلاق نافذة الطالب
===================================================== */

function closeStudentLogin(){

    document
    .getElementById(
        "studentModal"
    )
    .classList
    .remove("show");


    clearAuthMessage();

}


/* =====================================================
   تغيير وضع تسجيل الدخول / إنشاء الحساب
===================================================== */

function switchAuthMode(){

    isSignupMode =
    !isSignupMode;


    updateAuthWindow();

}


/* =====================================================
   تحديث نافذة الدخول
===================================================== */

function updateAuthWindow(){

    const title =
    document.getElementById(
        "authTitle"
    );


    const description =
    document.getElementById(
        "authDescription"
    );


    const button =
    document.getElementById(
        "authMainButton"
    );


    const switchText =
    document.getElementById(
        "switchText"
    );


    const switchButton =
    document.getElementById(
        "switchButton"
    );


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


/* =====================================================
   رسالة نافذة الطالب
===================================================== */

function showAuthMessage(
    text,
    type="info"
){

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
        : "infoMessage"
    );


    box.innerText =
    text;

}


function clearAuthMessage(){

    const box =
    document.getElementById(
        "studentMessage"
    );


    box.className =
    "message";


    box.innerText =
    "";

}


/* =====================================================
   تسجيل الطالب / إنشاء حساب
===================================================== */

async function studentLogin(){

    const emailInput =
    document.getElementById(
        "studentEmail"
    );


    const passwordInput =
    document.getElementById(
        "studentPassword"
    );


    const button =
    document.getElementById(
        "authMainButton"
    );


    const email =
    emailInput.value
    .trim();


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


    if(isSignupMode){

        showAuthMessage(
            "⏳ جاري إنشاء الحساب...",
            "info"
        );

        try{

            const response =
            await supabaseRequest(

                SUPABASE_URL +
                "/auth/v1/signup",

                {

                    method:"POST",

                    headers:{

                        "apikey":
                        SUPABASE_KEY,

                        "Content-Type":
                        "application/json"

                    },

                    body:
                    JSON.stringify({

                        email:email,

                        password:password

                    })

                }

            );


            const data =
            await response.json();


            if(!response.ok){

                console.error(
                    data
                );


                let message =
                "تعذر إنشاء الحساب.";


                if(
                    data &&
                    data.msg
                ){

                    message =
                    data.msg;

                }else if(
                    data &&
                    data.error_description
                ){

                    message =
                    data.error_description;

                }else if(
                    data &&
                    data.message
                ){

                    message =
                    data.message;

                }


                showAuthMessage(
                    "❌ " + message,
                    "error"
                );


                button.disabled =
                false;

                return;

            }


            if(data.access_token){

                showAuthMessage(
                    "✅ تم إنشاء الحساب وتسجيل الدخول بنجاح.",
                    "success"
                );


                saveSession(
                    data
                );


                setTimeout(
                    function(){

                        closeStudentLogin();

                    },
                    1000
                );


            }else{

                showAuthMessage(
                    "✅ تم إنشاء الحساب. إذا طلب منك تأكيد البريد، افتح بريدك الإلكتروني ثم سجّل الدخول.",
                    "success"
                );

            }


        }catch(error){

            console.error(error);

            showAuthMessage(
                "❌ حدث خطأ في الاتصال. حاول مرة أخرى.",
                "error"
            );

        }


        button.disabled =
        false;


        return;

    }


    /* تسجيل الدخول */

    showAuthMessage(
        "⏳ جاري تسجيل الدخول...",
        "info"
    );


    try{

        const response =
        await supabaseRequest(

            SUPABASE_URL +
            "/auth/v1/token?grant_type=password",

            {

                method:"POST",

                headers:{

                    "apikey":
                    SUPABASE_KEY,

                    "Content-Type":
                    "application/json"

                },

                body:
                JSON.stringify({

                    email:email,

                    password:password

                })

            }

        );


        const data =
        await response.json();


        if(!response.ok){

            console.error(
                data
            );


            showAuthMessage(
                "❌ البريد الإلكتروني أو كلمة المرور غير صحيحة.",
                "error"
            );


            button.disabled =
            false;

            return;

        }


        saveSession(
            data
        );


        showAuthMessage(
            "✅ تم تسجيل الدخول بنجاح 🎉",
            "success"
        );


        setTimeout(
            function(){

                closeStudentLogin();

            },
            800
        );


    }catch(error){

        console.error(error);


        showAuthMessage(
            "❌ حدث خطأ في الاتصال. حاول مرة أخرى.",
            "error"
        );

    }


    button.disabled =
    false;

}


/* =====================================================
   حفظ جلسة الطالب
===================================================== */

function saveSession(data){

    if(!data){

        return;

    }


    if(
        data.access_token
    ){

        localStorage.setItem(
            "minbar_access_token",
            data.access_token
        );

    }


    if(
        data.refresh_token
    ){

        localStorage.setItem(
            "minbar_refresh_token",
            data.refresh_token
        );

    }


    if(data.user){

        localStorage.setItem(
            "minbar_user",
            JSON.stringify(
                data.user
            )
        );

    }


    updateUserInterface(
        data.user || null
    );

}


/* =====================================================
   قراءة المستخدم الحالي
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


        return JSON.parse(
            user
        );


    }catch(error){

        return null;

    }

}


/* =====================================================
   تحديث واجهة الطالب
===================================================== */

function updateUserInterface(
    user
){

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

                        "apikey":
                        SUPABASE_KEY,

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


    updateUserInterface(
        null
    );


    alert(
        "تم تسجيل الخروج 👋"
    );

}


/* =====================================================
   استعادة جلسة الطالب
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

                    "apikey":
                    SUPABASE_KEY,

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


            updateUserInterface(
                user
            );

        }else{

            updateUserInterface(
                null
            );

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
.getElementById(
    "studentModal"
)
.addEventListener(
    "click",
    function(event){

        if(
            event.target ===
            this
        ){

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


    await Promise.all([

        loadLessons(),

        restoreSession()

    ]);

}


/* =====================================================
   بدء التشغيل
===================================================== */

startSite();

</script>

</body>

</html>
