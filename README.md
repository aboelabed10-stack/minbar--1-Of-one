<!DOCTYPE html>
<html lang="ar" dir="rtl">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>منبر ون | منصة الرياضيات</title>

<style>

/* =====================================================
   MINBAR ONE
   MAIN INDEX
   PART 1
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

    color:#fff;

    min-height:100vh;

    overflow-x:hidden;
}

button,
input,
textarea,
select{
    font-family:inherit;
}

button{
    cursor:pointer;
}

a{
    color:inherit;
}


/* =====================================================
   BACKGROUND
   ===================================================== */

.backgroundGlow{
    position:fixed;

    width:300px;
    height:300px;

    border-radius:50%;

    filter:blur(90px);

    opacity:.12;

    pointer-events:none;

    z-index:0;
}

.glowOne{
    top:80px;
    right:-100px;

    background:#00bfff;
}

.glowTwo{
    bottom:40px;
    left:-100px;

    background:#8b4dff;
}


/* =====================================================
   FLOATING EDUCATION ICONS
   ===================================================== */

.float{
    position:fixed;

    top:-70px;

    font-size:22px;

    opacity:.20;

    pointer-events:none;

    z-index:0;

    animation:
    falling
    linear
    infinite;
}

.float1{
    right:7%;
    animation-duration:12s;
}

.float2{
    right:25%;
    animation-duration:16s;
    animation-delay:2s;
}

.float3{
    right:45%;
    animation-duration:13s;
    animation-delay:4s;
}

.float4{
    right:67%;
    animation-duration:17s;
    animation-delay:1s;
}

.float5{
    right:88%;
    animation-duration:14s;
    animation-delay:5s;
}

@keyframes falling{

    0%{
        transform:
        translateY(-80px)
        rotate(0deg);
    }

    100%{
        transform:
        translateY(110vh)
        rotate(360deg);
    }

}


/* =====================================================
   STARS
   ===================================================== */

.star{
    position:fixed;

    color:#ffe36b;

    font-size:16px;

    z-index:0;

    pointer-events:none;

    animation:
    shining
    1.8s
    infinite
    alternate;
}

.star1{
    top:14%;
    right:18%;
}

.star2{
    top:33%;
    right:80%;

    animation-delay:.5s;
}

.star3{
    top:59%;
    right:13%;

    animation-delay:1s;
}

.star4{
    top:77%;
    right:72%;

    animation-delay:.7s;
}

@keyframes shining{

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
   PAGE
   ===================================================== */

.page{
    position:relative;

    z-index:2;

    min-height:100vh;
}


/* =====================================================
   HEADER
   ===================================================== */

header{
    height:72px;

    background:
    rgba(5,13,32,.90);

    backdrop-filter:
    blur(15px);

    border-bottom:
    1px solid
    rgba(255,255,255,.08);

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

    gap:15px;
}


/* =====================================================
   LOGO
   ===================================================== */

.logo{
    display:flex;

    align-items:center;

    gap:10px;

    min-width:0;
}

.logoIcon{
    width:42px;
    height:42px;

    border-radius:13px;

    background:
    linear-gradient(
        135deg,
        #12c9ff,
        #855cff
    );

    display:flex;

    align-items:center;

    justify-content:center;

    font-size:20px;

    box-shadow:
    0 0 25px
    rgba(30,190,255,.25);

    flex-shrink:0;
}

.logoText{
    font-size:15px;

    font-weight:bold;

    white-space:nowrap;
}

.logoText small{
    display:block;

    color:#7187a7;

    font-size:7px;

    margin-top:3px;

    letter-spacing:.5px;
}


/* =====================================================
   LOGIN BUTTONS
   ===================================================== */

.loginButtons{
    display:flex;

    align-items:center;

    gap:7px;
}

.studentBtn,
.teacherBtn{
    border:0;

    color:white;

    font-size:8px;

    padding:
    10px 12px;

    border-radius:10px;

    display:flex;

    align-items:center;

    justify-content:center;

    gap:5px;

    text-decoration:none;

    transition:.25s;

    white-space:nowrap;
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
}

.studentBtn:hover,
.teacherBtn:hover{
    transform:
    translateY(-2px);

    box-shadow:
    0 8px 20px
    rgba(0,0,0,.25);
}


/* =====================================================
   HERO
   ===================================================== */

.hero{
    width:92%;

    max-width:1100px;

    margin:
    25px auto 0;

    padding:
    32px 24px;

    border-radius:25px;

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

    position:relative;

    overflow:hidden;
}

.hero::before{
    content:"";

    position:absolute;

    width:180px;
    height:180px;

    border-radius:50%;

    background:
    rgba(0,190,255,.10);

    top:-90px;
    left:-60px;

    filter:blur(20px);
}

.hero::after{
    content:"";

    position:absolute;

    width:160px;
    height:160px;

    border-radius:50%;

    background:
    rgba(150,70,255,.10);

    bottom:-100px;
    right:-50px;

    filter:blur(20px);
}

.heroContent{
    position:relative;

    z-index:2;
}

.heroBadge{
    display:inline-flex;

    align-items:center;

    gap:5px;

    padding:
    7px 11px;

    border-radius:20px;

    background:
    rgba(35,202,255,.10);

    border:
    1px solid
    rgba(35,202,255,.18);

    color:#5cdcff;

    font-size:8px;
}

.hero h1{
    font-size:26px;

    line-height:1.6;

    margin-top:12px;
}

.hero h1 span{
    color:#54d8ff;
}

.hero p{
    color:#9aafc9;

    font-size:9px;

    line-height:2;

    margin-top:5px;

    max-width:650px;
}


/* =====================================================
   HERO FEATURES
   ===================================================== */

.heroFeatures{
    display:flex;

    flex-wrap:wrap;

    gap:7px;

    margin-top:17px;
}

.heroFeature{
    padding:
    7px 9px;

    border-radius:9px;

    background:
    rgba(255,255,255,.05);

    border:
    1px solid
    rgba(255,255,255,.07);

    color:#a8bad0;

    font-size:7px;
}


/* =====================================================
   SEARCH
   ===================================================== */

.searchArea{
    width:92%;

    max-width:1100px;

    margin:
    15px auto 0;
}

.search{
    position:relative;

    width:100%;
}

.search input{
    width:100%;

    height:47px;

    border:
    1px solid
    rgba(255,255,255,.12);

    border-radius:14px;

    background:#0b1b36;

    color:white;

    padding:
    0 45px 0 15px;

    outline:none;

    font-size:10px;

    transition:.25s;
}

.search input:focus{
    border-color:#2acbff;

    box-shadow:
    0 0 20px
    rgba(42,203,255,.10);
}

.search input::placeholder{
    color:#637b99;
}

.searchIcon{
    position:absolute;

    right:15px;

    top:14px;

    font-size:16px;

    pointer-events:none;
}


/* =====================================================
   SEARCH RESULTS
   ===================================================== */

.searchResults{
    margin-top:9px;

    display:none;

    background:
    rgba(7,19,41,.96);

    border:
    1px solid
    rgba(255,255,255,.08);

    border-radius:15px;

    padding:12px;

    box-shadow:
    0 20px 50px
    rgba(0,0,0,.25);
}

.searchResults.show{
    display:block;
}

.resultTitle{
    color:#9eb3ce;

    font-size:9px;

    margin-bottom:8px;
}

.resultList{
    display:grid;

    gap:7px;

    max-height:400px;

    overflow-y:auto;
}

.result{
    display:flex;

    align-items:center;

    gap:9px;

    padding:10px;

    border-radius:11px;

    background:#0a1b36;

    border:
    1px solid
    rgba(255,255,255,.07);

    text-decoration:none;

    transition:.2s;
}

.result:hover{
    transform:
    translateX(-3px);

    border-color:
    rgba(255,255,255,.20);
}

.resultIcon{
    width:34px;
    height:34px;

    border-radius:9px;

    display:flex;

    align-items:center;

    justify-content:center;

    flex-shrink:0;

    font-size:15px;
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
    color:#7189a6;

    font-size:7px;

    margin-top:4px;
}

.typeVideo{
    background:#087db5;
}

.typeSummary{
    background:#7442a8;
}

.typeTest{
    background:#bd741b;
}

.typeRoom{
    background:#16846d;
}


/* =====================================================
   GENERAL SECTION
   ===================================================== */

.section{
    width:92%;

    max-width:1100px;

    margin:
    26px auto 0;
}

.sectionHead{
    display:flex;

    align-items:center;

    justify-content:space-between;

    margin-bottom:11px;
}

.sectionHead h2{
    font-size:15px;
}

.sectionHead span{
    color:#7188a6;

    font-size:7px;
}


/* =====================================================
   OPTIONS
   ===================================================== */

.options{
    display:grid;

    grid-template-columns:
    repeat(4,1fr);

    gap:9px;
}

.option{
    color:white;

    text-decoration:none;

    border-radius:15px;

    padding:
    14px 9px;

    border:
    1px solid
    rgba(255,255,255,.09);

    transition:.25s;

    position:relative;

    overflow:hidden;
}

.option::after{
    content:"";

    position:absolute;

    width:70px;
    height:70px;

    border-radius:50%;

    background:
    rgba(255,255,255,.05);

    left:-30px;
    bottom:-35px;
}

.option:hover{
    transform:
    translateY(-4px);

    box-shadow:
    0 12px 25px
    rgba(0,0,0,.20);
}

.optionIcon{
    width:33px;
    height:33px;

    border-radius:10px;

    display:flex;

    align-items:center;

    justify-content:center;

    font-size:15px;

    margin-bottom:8px;

    position:relative;

    z-index:2;
}

.option h3{
    font-size:9px;

    position:relative;

    z-index:2;
}

.option p{
    color:
    rgba(255,255,255,.62);

    font-size:6px;

    margin-top:4px;

    position:relative;

    z-index:2;
}

.option1{
    background:
    linear-gradient(
        135deg,
        #073b67,
        #087aa2
    );
}

.option1 .optionIcon{
    background:#079ed3;
}

.option2{
    background:
    linear-gradient(
        135deg,
        #36205e,
        #69358b
    );
}

.option2 .optionIcon{
    background:#9856d8;
}

.option3{
    background:
    linear-gradient(
        135deg,
        #694218,
        #a86616
    );
}

.option3 .optionIcon{
    background:#eaa52e;
}

.option4{
    background:
    linear-gradient(
        135deg,
        #104a43,
        #147660
    );
}

.option4 .optionIcon{
    background:#1ac29f;
}


/* =====================================================
   CHALLENGE
   ===================================================== */

.challenge{
    padding:18px;

    border-radius:18px;

    background:
    linear-gradient(
        135deg,
        #30205d,
        #151e4b
    );

    border:
    1px solid
    rgba(180,120,255,.18);

    position:relative;

    overflow:hidden;
}

.challenge::before{
    content:"";

    position:absolute;

    width:130px;
    height:130px;

    border-radius:50%;

    background:
    rgba(190,80,255,.08);

    left:-60px;

    top:-60px;
}

.challengeContent{
    position:relative;

    z-index:2;
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

    padding:13px;

    border-radius:11px;

    font-size:14px;

    text-align:center;

    border:
    1px solid
    rgba(255,255,255,.04);
}

.challenge button{
    margin-top:10px;

    width:100%;

    border:0;

    padding:10px;

    border-radius:9px;

    color:white;

    background:
    linear-gradient(
        135deg,
        #8b54ff,
        #c247a6
    );

    font-size:9px;

    transition:.2s;
}

.challenge button:hover{
    transform:
    translateY(-2px);
}


/* =====================================================
   STATS
   ===================================================== */

.stats{
    display:grid;

    grid-template-columns:
    repeat(3,1fr);

    gap:8px;
}

.stat{
    padding:14px 8px;

    border-radius:14px;

    background:#0a1b35;

    border:
    1px solid
    rgba(255,255,255,.07);

    text-align:center;
}

.stat strong{
    display:block;

    font-size:18px;
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
   LESSONS
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
    rgba(100,170,230,.10);

    transition:.2s;
}

.lesson:hover{
    border-color:
    rgba(80,200,255,.20);

    transform:
    translateY(-2px);
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
}

.watch{
    margin-right:auto;

    color:#4fdcff;

    text-decoration:none;

    font-size:7px;

    padding:6px 8px;

    border-radius:7px;

    background:
    rgba(40,200,255,.08);

    white-space:nowrap;
}


/* =====================================================
   FUTURE CARDS
   ===================================================== */

.futureGrid{
    display:grid;

    grid-template-columns:
    repeat(3,1fr);

    gap:8px;
}

.future{
    padding:16px 8px;

    border-radius:14px;

    text-align:center;

    background:#0a1b36;

    border:
    1px solid
    rgba(255,255,255,.07);

    transition:.2s;
}

.future:hover{
    transform:
    translateY(-3px);

    border-color:
    rgba(255,255,255,.15);
}

.futureIcon{
    font-size:20px;
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


/* =====================================================
   EMPTY
   ===================================================== */

.empty{
    padding:23px;

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
   FOOTER
   ===================================================== */

footer{
    text-align:center;

    padding:
    35px 0 22px;

    color:#4e6682;

    font-size:7px;
}


/* =====================================================
   MODAL
   ===================================================== */

.modal{
    position:fixed;

    inset:0;

    background:
    rgba(0,0,0,.75);

    backdrop-filter:
    blur(7px);

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

    max-width:380px;

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

    padding:24px;

    box-shadow:
    0 25px 80px
    rgba(0,0,0,.5);

    animation:
    modalIn
    .25s
    ease;
}

@keyframes modalIn{

    from{
        opacity:0;

        transform:
        scale(.92)
        translateY(15px);
    }

    to{
        opacity:1;

        transform:
        scale(1)
        translateY(0);
    }

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

    margin-bottom:7px;
}

.loginBox p{
    font-size:8px;

    color:#8195b1;

    margin-bottom:18px;

    line-height:1.8;
}

.loginBox input{
    width:100%;

    height:43px;

    margin-bottom:9px;

    border:
    1px solid
    rgba(255,255,255,.10);

    border-radius:10px;

    background:#08152e;

    color:white;

    padding:
    0 12px;

    outline:none;

    font-size:9px;
}

.loginBox input:focus{
    border-color:#29c9ff;
}

.loginBox .main{
    width:100%;

    height:43px;

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

.message{
    min-height:18px;

    text-align:center;

    color:#5cdcff;

    font-size:8px;

    margin-bottom:7px;
}


/* =====================================================
   RESPONSIVE
   ===================================================== */

@media(max-width:800px){

    .header{
        width:94%;
    }

    .hero{
        width:94%;
    }

    .searchArea{
        width:94%;
    }

    .section{
        width:94%;
    }

    .options{
        grid-template-columns:
        repeat(2,1fr);
    }

    .lessonList{
        grid-template-columns:1fr;
    }

}

@media(max-width:550px){

    header{
        height:68px;
    }

    .logoIcon{
        width:37px;
        height:37px;

        font-size:18px;
    }

    .logoText{
        font-size:13px;
    }

    .logoText small{
        font-size:6px;
    }

    .studentBtn,
    .teacherBtn{
        padding:
        8px 7px;

        font-size:7px;
    }

    .hero{
        margin-top:17px;

        padding:
        25px 17px;
    }

    .hero h1{
        font-size:21px;
    }

    .hero p{
        font-size:8px;
    }

    .heroFeatures{
        gap:5px;
    }

    .heroFeature{
        font-size:6px;
    }

    .options{
        gap:6px;
    }

    .option{
        padding:
        11px 6px;
    }

    .option p{
        display:none;
    }

    .stats{
        gap:5px;
    }

    .futureGrid{
        grid-template-columns:1fr;
    }

}

@media(max-width:380px){

    .logoText{
        display:none;
    }

    .studentBtn,
    .teacherBtn{
        padding:
        8px 6px;

        font-size:6px;
    }

}


/* =====================================================
   END OF PART 1 CSS
   ===================================================== */

</style>

</head>

<body>


<!-- =====================================================
     BACKGROUND
     ===================================================== -->

<div class="backgroundGlow glowOne"></div>

<div class="backgroundGlow glowTwo"></div>


<div class="float float1">📚</div>

<div class="float float2">✏️</div>

<div class="float float3">📐</div>

<div class="float float4">🧮</div>

<div class="float float5">⭐</div>


<div class="star star1">✦</div>

<div class="star star2">★</div>

<div class="star star3">✦</div>

<div class="star star4">★</div>


<div class="page">


<!-- =====================================================
     HEADER
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
onclick="openStudentLogin()">

👨‍🎓 دخول الطالب

</button>


<a
class="teacherBtn"
href="teacher.html">

👨‍🏫 دخول الأستاذ

</a>


</div>


</div>

</header>


<!-- =====================================================
     HERO
     ===================================================== -->

<section class="hero">

<div class="heroContent">


<div class="heroBadge">

🧮 منصة الرياضيات

</div>


<h1>

مرحبًا بك في
<span>منبر ون</span>
🚀

</h1>


<p>

تعلّم الرياضيات بطريقة سهلة،
شاهد الحصص، راجع الملخصات،
اختبر نفسك وطوّر مستواك.

</p>


<div class="heroFeatures">

<div class="heroFeature">
🎥 حصص تعليمية
</div>

<div class="heroFeature">
📚 ملخصات
</div>

<div class="heroFeature">
📝 اختبارات
</div>

<div class="heroFeature">
💬 رومات
</div>

</div>


</div>

</section>


<!-- =====================================================
     SEARCH
     ===================================================== -->

<div class="searchArea">

<div class="search">

<span class="searchIcon">
🔎
</span>

<input
id="search"
type="text"
autocomplete="off"
placeholder="ابحث عن حصة، ملخص، اختبار أو روم..."
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

</div>


<!-- =====================================================
     MAIN OPTIONS
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
class="option option1">

<div class="optionIcon">
🎥
</div>

<h3>
الحصص
</h3>

<p>
شاهد الدروس التعليمية
</p>

</a>


<a
href="#summaries"
class="option option2">

<div class="optionIcon">
📚
</div>

<h3>
الملخصات
</h3>

<p>
راجع القوانين المهمة
</p>

</a>


<a
href="#tests"
class="option option3">

<div class="optionIcon">
📝
</div>

<h3>
الاختبارات
</h3>

<p>
اختبر معلوماتك
</p>

</a>


<a
href="#rooms"
class="option option4">

<div class="optionIcon">
💬
</div>

<h3>
الرومات
</h3>

<p>
تعلّم وتناقش
</p>

</a>


</div>

</section>


<!-- =====================================================
     DAILY CHALLENGE
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

<div class="challengeContent">

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

</div>

</section>


<!-- =====================================================
     STUDENT PROGRESS
     ===================================================== -->

<section class="section">

<div class="sectionHead">

<h2>
🏆 مستواك
</h2>

<span>
تقدمك في المنصة
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
     LESSONS
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


<div class="empty">

جاري تحميل الحصص... ⏳

</div>


</div>

</section>


<!-- =====================================================
     SUMMARIES
     ===================================================== -->

<section
class="section"
id="summaries">

<div class="sectionHead">

<h2>
📚 الملخصات
</h2>

<span>
راجع أهم المعلومات
</span>

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
معلومات مختصرة للمراجعة
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
الدروس التي تريد الرجوع إليها
</p>

</div>


</div>

</section>


<!-- =====================================================
     TESTS
     ===================================================== -->

<section
class="section"
id="tests">

<div class="sectionHead">

<h2>
📝 الاختبارات
</h2>

<span>
اختبر نفسك
</span>

</div>


<div class="empty">

الاختبارات التفاعلية ستظهر هنا 🚀

</div>

</section>


<!-- =====================================================
     ROOMS
     ===================================================== -->

<section
class="section"
id="rooms">

<div class="sectionHead">

<h2>
💬 الرومات
</h2>

<span>
تعلّم مع الآخرين
</span>

</div>


<div class="empty">

رومات الدراسة ستظهر هنا 👥

</div>

</section>


<!-- =====================================================
     FOOTER
     ===================================================== -->

<footer>

منبر ون • منصة الرياضيات 🎓

<br><br>

جميع الحقوق محفوظة © 2026

</footer>


</div>


<!-- =====================================================
     STUDENT LOGIN MODAL
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


<h2>
👨‍🎓 دخول الطالب
</h2>


<p>

سجّل دخولك للوصول إلى حسابك
ومتابعة تقدمك الدراسي.

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
onclick="studentLogin()">

تسجيل الدخول

</button>


</div>

</div>


<!-- =====================================================
     PART 1 END
     ===================================================== -->
