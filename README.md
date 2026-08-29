<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>منبر ون | منصة الرياضيات للتوجيهي</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --navy:#071326;
    --navy2:#0b1d36;
    --card:#102542;
    --card2:#132d4d;
    --blue:#39a9ff;
    --cyan:#55d6ff;
    --purple:#876cff;
    --gold:#ffc94a;
    --green:#35d39a;
    --text:#f4f8ff;
    --muted:#9eb0c8;
    --border:rgba(255,255,255,.09);
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Tahoma,Arial,sans-serif;
    background:var(--navy);
    color:var(--text);
    overflow-x:hidden;
}

button{
    font-family:inherit;
}

a{
    text-decoration:none;
    color:inherit;
}


/* ================= HEADER ================= */

header{
    position:sticky;
    top:0;
    z-index:999;

    background:rgba(7,19,38,.88);
    backdrop-filter:blur(18px);

    border-bottom:1px solid var(--border);
}

.nav{
    width:92%;
    max-width:1250px;
    height:76px;
    margin:auto;

    display:flex;
    align-items:center;
    justify-content:space-between;
}

.logo{
    display:flex;
    align-items:center;
    gap:11px;
}

.logo-icon{
    width:48px;
    height:48px;

    border-radius:15px;

    display:grid;
    place-items:center;

    font-size:25px;
    font-weight:bold;

    background:linear-gradient(135deg,var(--blue),var(--purple));

    box-shadow:0 0 25px rgba(57,169,255,.25);
}

.logo-text h2{
    font-size:20px;
}

.logo-text span{
    color:var(--muted);
    font-size:9px;
    letter-spacing:2px;
}

nav{
    display:flex;
    gap:24px;
}

nav a{
    color:#b8c7db;
    font-size:13px;
    transition:.25s;
}

nav a:hover{
    color:var(--cyan);
}

.login-btn{
    border:0;
    padding:11px 18px;

    border-radius:12px;

    color:white;
    background:linear-gradient(135deg,var(--blue),var(--purple));

    cursor:pointer;
    font-weight:bold;

    box-shadow:0 7px 25px rgba(57,169,255,.18);
}


/* ================= HERO ================= */

.hero{
    position:relative;
    min-height:650px;

    display:flex;
    align-items:center;

    overflow:hidden;

    background:
    radial-gradient(circle at 85% 25%,rgba(57,169,255,.13),transparent 30%),
    radial-gradient(circle at 15% 70%,rgba(135,108,255,.12),transparent 30%),
    var(--navy);
}

.math-bg{
    position:absolute;
    inset:0;
    pointer-events:none;
    overflow:hidden;
}

.math-bg span{
    position:absolute;
    color:rgba(255,255,255,.035);
    font-size:80px;
    font-weight:bold;
    animation:float 8s infinite ease-in-out;
}

.math-bg span:nth-child(1){
    top:12%;
    left:8%;
}

.math-bg span:nth-child(2){
    top:65%;
    left:18%;
    animation-delay:2s;
}

.math-bg span:nth-child(3){
    top:20%;
    right:12%;
    animation-delay:1s;
}

.math-bg span:nth-child(4){
    bottom:10%;
    right:20%;
    animation-delay:3s;
}

@keyframes float{
    0%,100%{
        transform:translateY(0) rotate(0);
    }

    50%{
        transform:translateY(-25px) rotate(8deg);
    }
}

.hero-container{
    width:92%;
    max-width:1250px;
    margin:auto;

    display:grid;
    grid-template-columns:1.05fr .95fr;

    gap:60px;
    align-items:center;

    position:relative;
    z-index:2;
}

.date{
    display:inline-flex;
    align-items:center;
    gap:8px;

    padding:8px 14px;

    border-radius:30px;

    background:rgba(255,255,255,.055);
    border:1px solid var(--border);

    color:#b9c8dc;
    font-size:12px;
}

.hero h1{
    margin-top:22px;

    font-size:clamp(42px,6vw,72px);

    line-height:1.12;
}

.hero h1 .blue{
    color:var(--cyan);
}

.hero h1 .gold{
    color:var(--gold);
}

.hero-description{
    margin-top:20px;

    color:var(--muted);

    max-width:650px;

    font-size:16px;
}

.hero-buttons{
    display:flex;
    gap:13px;

    margin-top:30px;
}

.btn{
    border:0;
    border-radius:13px;

    padding:14px 22px;

    cursor:pointer;

    font-weight:bold;
    transition:.25s;
}

.btn:hover{
    transform:translateY(-3px);
}

.primary{
    color:white;

    background:linear-gradient(135deg,var(--blue),var(--purple));

    box-shadow:0 10px 30px rgba(57,169,255,.2);
}

.secondary{
    color:white;

    background:rgba(255,255,255,.05);

    border:1px solid var(--border);
}


/* ================= MATH CARD ================= */

.math-card{
    min-height:420px;

    border-radius:30px;

    padding:30px;

    position:relative;
    overflow:hidden;

    background:
    linear-gradient(145deg,rgba(255,255,255,.08),rgba(255,255,255,.025));

    border:1px solid var(--border);

    box-shadow:0 25px 80px rgba(0,0,0,.3);
}

.math-card:before{
    content:"";

    position:absolute;

    width:260px;
    height:260px;

    border-radius:50%;

    background:rgba(57,169,255,.08);

    top:-100px;
    right:-100px;
}

.card-top{
    display:flex;
    justify-content:space-between;

    color:var(--muted);
    font-size:12px;
}

.live{
    color:var(--green);
}

.equation{
    margin:65px 0 55px;

    text-align:center;

    font-size:45px;
    font-weight:bold;

    color:white;

    text-shadow:0 0 30px rgba(85,214,255,.25);
}

.equation span{
    color:var(--cyan);
}

.math-items{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:12px;
}

.math-item{
    height:85px;

    border-radius:18px;

    display:grid;
    place-items:center;

    font-size:28px;
    font-weight:bold;

    background:rgba(255,255,255,.045);

    border:1px solid var(--border);

    color:#d9e7fa;
}

.math-item:nth-child(2){
    color:var(--gold);
}

.math-item:nth-child(3){
    color:#b092ff;
}

.math-item:nth-child(4){
    color:var(--green);
}

.math-item:nth-child(5){
    color:var(--cyan);
}

.math-item:nth-child(6){
    color:#ff8eb5;
}


/* ================= STATS ================= */

.stats{
    padding:20px 0 50px;

    background:var(--navy);
}

.stats-grid{
    width:92%;
    max-width:1100px;
    margin:auto;

    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:14px;
}

.stat{
    padding:20px;

    border-radius:17px;

    text-align:center;

    background:rgba(255,255,255,.035);
    border:1px solid var(--border);
}

.stat strong{
    display:block;

    font-size:25px;

    color:var(--cyan);
}

.stat span{
    color:var(--muted);
    font-size:12px;
}


/* ================= GENERAL ================= */

.section{
    padding:85px 0;
}

.container{
    width:92%;
    max-width:1250px;
    margin:auto;
}

.section-head{
    margin-bottom:35px;
}

.section-head small{
    color:var(--cyan);
    font-weight:bold;
}

.section-head h2{
    margin-top:6px;

    font-size:34px;
}

.section-head p{
    color:var(--muted);
    margin-top:5px;
}


/* ================= STUDENT DASHBOARD ================= */

.dashboard{
    background:#091a31;
}

.dashboard-grid{
    display:grid;
    grid-template-columns:1.5fr .8fr;
    gap:20px;
}

.dashboard-card{
    background:var(--card);

    border:1px solid var(--border);

    border-radius:23px;

    padding:28px;
}

.progress-title{
    display:flex;
    justify-content:space-between;

    margin-bottom:12px;

    font-size:13px;
}

.progress-title span{
    color:var(--cyan);
}

.progress-bar{
    height:10px;

    background:#07172b;

    border-radius:20px;

    overflow:hidden;
}

.progress-bar span{
    display:block;

    width:72%;
    height:100%;

    background:linear-gradient(90deg,var(--blue),var(--purple));

    border-radius:20px;
}

.tasks{
    margin-top:25px;

    display:grid;
    gap:12px;
}

.task{
    padding:15px;

    border-radius:14px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    background:rgba(255,255,255,.04);
}

.task-info{
    display:flex;
    align-items:center;
    gap:12px;
}

.task-icon{
    width:42px;
    height:42px;

    border-radius:12px;

    display:grid;
    place-items:center;

    background:rgba(57,169,255,.1);

    font-size:20px;
}

.task p{
    color:var(--muted);
    font-size:11px;
}

.done{
    color:var(--green);
    font-size:12px;
}

.goal{
    text-align:center;
}

.goal-icon{
    font-size:55px;
}

.goal h3{
    margin:10px 0;
}

.goal p{
    color:var(--muted);
    font-size:13px;
}


/* ================= FEATURES ================= */

.feature-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:17px;
}

.feature{
    padding:28px 20px;

    border-radius:21px;

    background:var(--card);

    border:1px solid var(--border);

    transition:.25s;
}

.feature:hover{
    transform:translateY(-7px);

    border-color:rgba(85,214,255,.25);
}

.feature-icon{
    font-size:38px;
}

.feature h3{
    margin-top:13px;
}

.feature p{
    color:var(--muted);
    font-size:12px;
    margin-top:5px;
}


/* ================= LESSONS ================= */

.lessons{
    background:#091a31;
}

.lesson-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.lesson{
    background:var(--card);

    border:1px solid var(--border);

    border-radius:21px;

    overflow:hidden;

    transition:.25s;
}

.lesson:hover{
    transform:translateY(-6px);
}

.lesson-image{
    height:190px;

    display:grid;
    place-items:center;

    font-size:58px;

    background:
    radial-gradient(circle at center,rgba(57,169,255,.18),transparent 60%),
    #0a1c34;
}

.lesson-body{
    padding:22px;
}

.tag{
    display:inline-block;

    padding:5px 9px;

    border-radius:20px;

    font-size:10px;

    color:var(--cyan);

    background:rgba(57,169,255,.09);
}

.lesson h3{
    margin:10px 0 5px;
}

.lesson p{
    color:var(--muted);
    font-size:12px;
}

.lesson-bottom{
    display:flex;
    align-items:center;
    justify-content:space-between;

    margin-top:18px;
}

.duration{
    color:var(--muted);
    font-size:11px;
}


/* ================= SUMMARIES ================= */

.summary-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.summary{
    padding:25px;

    border-radius:20px;

    background:var(--card);

    border:1px solid var(--border);
}

.pdf{
    width:58px;
    height:65px;

    display:grid;
    place-items:center;

    border-radius:14px;

    color:#ff8eb5;
    font-weight:bold;

    background:rgba(255,107,157,.09);
}

.summary h3{
    margin-top:15px;
}

.summary p{
    color:var(--muted);
    font-size:12px;
    margin:5px 0 15px;
}


/* ================= ROOMS ================= */

.rooms{
    background:#091a31;
}

.room-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.room{
    padding:27px;

    border-radius:21px;

    background:var(--card);

    border:1px solid var(--border);
}

.room-top{
    display:flex;
    justify-content:space-between;
}

.room-icon{
    font-size:35px;
}

.online{
    color:var(--green);
    font-size:11px;
}

.room p{
    color:var(--muted);
    font-size:12px;
    margin:7px 0 15px;
}

.members{
    color:#9fb0c7;
    font-size:11px;
}


/* ================= TEST ================= */

.test-box{
    padding:45px;

    border-radius:28px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    gap:20px;

    background:
    radial-gradient(circle at 80% 30%,rgba(85,214,255,.15),transparent 30%),
    linear-gradient(135deg,#102d50,#151f48);

    border:1px solid var(--border);
}

.test-box p{
    color:var(--muted);
    margin-top:5px;
}


/* ================= TEACHER ================= */

.teacher{
    display:grid;
    grid-template-columns:180px 1fr;
    gap:35px;
    align-items:center;
}

.teacher-photo{
    width:180px;
    height:180px;

    border-radius:50%;

    display:grid;
    place-items:center;

    font-size:75px;

    background:
    linear-gradient(135deg,#163b63,#22214f);

    border:1px solid var(--border);

    box-shadow:0 15px 50px rgba(0,0,0,.25);
}

.teacher p{
    color:var(--muted);
    max-width:700px;
    margin:10px 0 20px;
}

.phone{
    display:inline-block;

    padding:12px 17px;

    border-radius:12px;

    background:rgba(255,255,255,.04);

    border:1px solid var(--border);
}


/* ================= CTA ================= */

.cta{
    text-align:center;

    padding:90px 20px;

    background:
    radial-gradient(circle at center,rgba(57,169,255,.1),transparent 45%),
    var(--navy);
}

.cta h2{
    font-size:40px;
}

.cta p{
    color:var(--muted);
    margin:10px 0 25px;
}


/* ================= FOOTER ================= */

footer{
    padding:45px 20px;

    text-align:center;

    background:#050e1d;

    border-top:1px solid var(--border);
}

.footer-logo{
    font-size:22px;
    font-weight:bold;
}

footer p{
    color:#73849d;
    font-size:12px;
    margin-top:7px;
}

.footer-links{
    display:flex;
    justify-content:center;
    gap:20px;
    margin:22px 0;
}

.footer-links a{
    color:#9eafc7;
    font-size:12px;
}


/* ================= MOBILE ================= */

@media(max-width:950px){

    nav{
        display:none;
    }

    .hero-container{
        grid-template-columns:1fr;
    }

    .math-card{
        display:none;
    }

    .feature-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .lesson-grid,
    .summary-grid,
    .room-grid{
        grid-template-columns:1fr 1fr;
    }

    .dashboard-grid{
        grid-template-columns:1fr;
    }
}

@media(max-width:600px){

    .nav{
        height:68px;
    }

    .logo-icon{
        width:42px;
        height:42px;
    }

    .logo-text h2{
        font-size:17px;
    }

    .login-btn{
        padding:9px 12px;
        font-size:11px;
    }

    .hero{
        min-height:600px;
    }

    .hero h1{
        font-size:43px;
    }

    .hero-description{
        font-size:14px;
    }

    .hero-buttons{
        flex-direction:column;
    }

    .hero-buttons .btn{
        width:100%;
    }

    .stats-grid{
        grid-template-columns:1fr 1fr;
    }

    .feature-grid,
    .lesson-grid,
    .summary-grid,
    .room-grid{
        grid-template-columns:1fr;
    }

    .section{
        padding:60px 0;
    }

    .section-head h2{
        font-size:28px;
    }

    .test-box{
        padding:30px;
        flex-direction:column;
        align-items:flex-start;
    }

    .teacher{
        grid-template-columns:1fr;
        text-align:center;
    }

    .teacher-photo{
        margin:auto;
    }

    .teacher p{
        font-size:13px;
    }

    .cta h2{
        font-size:30px;
    }

}

</style>
</head>


<body>


<!-- ================= HEADER ================= -->

<header>

<div class="nav">

<a href="#home" class="logo">

<div class="logo-icon">
∑
</div>

<div class="logo-text">

<h2>منبر ون</h2>

<span>MINBAR ONE</span>

</div>

</a>


<nav>

<a href="#home">الرئيسية</a>
<a href="#dashboard">لوحة الطالب</a>
<a href="#lessons">الحصص</a>
<a href="#summaries">الملخصات</a>
<a href="#rooms">الرومات</a>
<a href="#tests">الاختبارات</a>

</nav>


<button
class="login-btn"
onclick="login()">

👤 دخول الطالب

</button>

</div>

</header>



<!-- ================= HERO ================= -->

<section class="hero" id="home">

<div class="math-bg">

<span>π</span>
<span>√</span>
<span>∑</span>
<span>x²</span>

</div>


<div class="hero-container">


<div>

<div class="date">

📅

<span id="today"></span>

</div>


<h1>

من هنا تبدأ

<br>

رحلتك نحو

<span class="blue">التفوق</span>

<span class="gold"> 🎯</span>

</h1>


<p class="hero-description">

<strong>منبر ون</strong> — منصة تعليمية متخصصة في رياضيات التوجيهي.
حصص مرتبة، ملخصات، اختبارات ورومات تعليمية...
كل ما تحتاجه للنجاح في مكان واحد.

</p>


<div class="hero-buttons">

<button
class="btn primary"
onclick="goTo('lessons')">

🚀 ابدأ التعلم

</button>


<button
class="btn secondary"
onclick="goTo('tests')">

📝 اختبر نفسك

</button>

</div>

</div>



<div class="math-card">

<div class="card-top">

<span>🧮 لوحة الرياضيات</span>

<span class="live">● جاهز للتعلم</span>

</div>


<div class="equation">

<span>x²</span> + 2x + 1 = 0

</div>


<div class="math-items">

<div class="math-item">π</div>
<div class="math-item">√</div>
<div class="math-item">∑</div>
<div class="math-item">x²</div>
<div class="math-item">∞</div>
<div class="math-item">÷</div>

</div>

</div>

</div>

</section>



<!-- ================= STATS ================= -->

<section class="stats">

<div class="stats-grid">

<div class="stat">

<strong>🎥</strong>

<span>حصص تعليمية</span>

</div>


<div class="stat">

<strong>📚</strong>

<span>ملخصات ومراجعات</span>

</div>


<div class="stat">

<strong>📝</strong>

<span>اختبارات تدريبية</span>

</div>


<div class="stat">

<strong>🏆</strong>

<span>طريقك للتميز</span>

</div>

</div>

</section>



<!-- ================= DASHBOARD ================= -->

<section class="section dashboard" id="dashboard">

<div class="container">

<div class="section-head">

<small>مساحتك التعليمية</small>

<h2>👋 أهلاً بك يا بطل</h2>

<p>تابع تقدمك وأنجز مهامك اليومية.</p>

</div>


<div class="dashboard-grid">


<div class="dashboard-card">

<div class="progress-title">

<strong>🔥 تقدمك في الخطة</strong>

<span>72%</span>

</div>


<div class="progress-bar">

<span></span>

</div>


<div class="tasks">


<div class="task">

<div class="task-info">

<div class="task-icon">🎥</div>

<div>

<strong>حصة الدوال</strong>

<p>شرح وتطبيقات</p>

</div>

</div>

<span class="done">مكتملة ✓</span>

</div>


<div class="task">

<div class="task-info">

<div class="task-icon">📖</div>

<div>

<strong>مراجعة القوانين</strong>

<p>15 دقيقة</p>

</div>

</div>

<span class="done">مكتملة ✓</span>

</div>


<div class="task">

<div class="task-info">

<div class="task-icon">📝</div>

<div>

<strong>اختبار اليوم</strong>

<p>10 أسئلة</p>

</div>

</div>

<span style="color:var(--gold);font-size:12px">
ابدأ الآن →
</span>

</div>

</div>

</div>


<div class="dashboard-card goal">

<div class="goal-icon">
🏆
</div>

<h3>هدفك القادم</h3>

<p>
أكمل 3 حصص هذا الأسبوع
لتحصل على شارة الإنجاز.
</p>

<br>

<button
class="btn primary"
onclick="alert('سيتم تفعيل نظام الشارات عند ربط حساب الطالب')">

عرض الإنجازات

</button>

</div>


</div>

</div>

</section>



<!-- ================= FEATURES ================= -->

<section class="section">

<div class="container">

<div class="section-head">

<small>كل شيء في مكان واحد</small>

<h2>🚀 لماذا منبر ون؟</h2>

</div>


<div class="feature-grid">


<div class="feature">

<div class="feature-icon">🎥</div>

<h3>حصص الفيديو</h3>

<p>
دروس مرتبة حسب الوحدات والدروس.
</p>

</div>


<div class="feature">

<div class="feature-icon">📚</div>

<h3>المكتبة</h3>

<p>
ملخصات وقوانين وملفات للمراجعة.
</p>

</div>


<div class="feature">

<div class="feature-icon">💬</div>

<h3>الرومات</h3>

<p>
مساحات للنقاش وطرح الأسئلة.
</p>

</div>


<div class="feature">

<div class="feature-icon">🏆</div>

<h3>الاختبارات</h3>

<p>
اختبر نفسك وتابع مستواك.
</p>

</div>


</div>

</div>

</section>



<!-- ================= LESSONS ================= -->

<section class="section lessons" id="lessons">

<div class="container">

<div class="section-head">

<small>تعلم خطوة بخطوة</small>

<h2>🎥 أحدث الحصص</h2>

<p>اختر الحصة وابدأ التعلم.</p>

</div>


<div class="lesson-grid">


<div class="lesson">

<div class="lesson-image">
📐
</div>

<div class="lesson-body">

<span class="tag">الوحدة الأولى</span>

<h3>الدوال</h3>

<p>
شرح الدوال بطريقة سهلة مع أمثلة وتطبيقات.
</p>

<div class="lesson-bottom">

<span class="duration">⏱ 45 دقيقة</span>

<button
class="btn primary"
onclick="alert('سيتم تشغيل الفيديو هنا بعد ربط المنصة')">

▶ مشاهدة

</button>

</div>

</div>

</div>



<div class="lesson">

<div class="lesson-image">
∫
</div>

<div class="lesson-body">

<span class="tag">الوحدة الثانية</span>

<h3>التفاضل</h3>

<p>
شرح أساسيات التفاضل والقوانين المهمة.
</p>

<div class="lesson-bottom">

<span class="duration">⏱ 50 دقيقة</span>

<button
class="btn primary"
onclick="alert('سيتم تشغيل الفيديو هنا بعد ربط المنصة')">

▶ مشاهدة

</button>

</div>

</div>

</div>



<div class="lesson">

<div class="lesson-image">
√
</div>

<div class="lesson-body">

<span class="tag">الوحدة الثالثة</span>

<h3>التكامل</h3>

<p>
أهم أفكار التكامل مع تدريبات توجيهي.
</p>

<div class="lesson-bottom">

<span class="duration">⏱ 55 دقيقة</span>

<button
class="btn primary"
onclick="alert('سيتم تشغيل الفيديو هنا بعد ربط المنصة')">

▶ مشاهدة

</button>

</div>

</div>

</div>


</div>

</div>

</section>



<!-- ================= SUMMARIES ================= -->

<section class="section" id="summaries">

<div class="container">

<div class="section-head">

<small>مكتبة منبر ون</small>

<h2>📚 الملخصات والملفات</h2>

<p>كل القوانين والمراجعات التي تحتاجها.</p>

</div>


<div class="summary-grid">


<div class="summary">

<div class="pdf">PDF</div>

<h3>ملخص الوحدة الأولى</h3>

<p>أهم القوانين والأفكار والأسئلة.</p>

<button
class="btn primary"
onclick="alert('سيتم فتح الملف بعد رفعه من لوحة الأستاذ')">

📖 فتح الملخص

</button>

</div>


<div class="summary">

<div class="pdf">PDF</div>

<h3>ورقة القوانين</h3>

<p>مراجعة سريعة لأهم القوانين.</p>

<button
class="btn primary"
onclick="alert('سيتم فتح الملف بعد رفعه من لوحة الأستاذ')">

📖 فتح الملف

</button>

</div>


<div class="summary">

<div class="pdf">PDF</div>

<h3>نماذج التوجيهي</h3>

<p>أسئلة تدريبية للمراجعة.</p>

<button
class="btn primary"
onclick="alert('سيتم فتح الملف بعد رفعه من لوحة الأستاذ')">

📖 فتح النماذج

</button>

</div>


</div>

</div>

</section>



<!-- ================= ROOMS ================= -->

<section class="section rooms" id="rooms">

<div class="container">

<div class="section-head">

<small>تعلم مع زملائك</small>

<h2>💬 الرومات التعليمية</h2>

<p>ناقش، اسأل، وتبادل المعرفة.</p>

</div>


<div class="room-grid">


<div class="room">

<div class="room-top">

<div class="room-icon">🧮</div>

<span class="online">● مفتوح</span>

</div>

<h3>روم الرياضيات العام</h3>

<p>
للنقاش والأسئلة العامة.
</p>

<div class="members">
👥 245 طالب
</div>

<br>

<button
class="btn primary"
onclick="alert('سيتم فتح الروم بعد تفعيل حسابات الطلاب')">

دخول الروم

</button>

</div>



<div class="room">

<div class="room-top">

<div class="room-icon">🔥</div>

<span class="online">● مفتوح</span>

</div>

<h3>روم المراجعة</h3>

<p>
مراجعة قبل الاختبارات.
</p>

<div class="members">
👥 180 طالب
</div>

<br>

<button
class="btn primary"
onclick="alert('سيتم فتح الروم بعد تفعيل حسابات الطلاب')">

دخول الروم

</button>

</div>



<div class="room">

<div class="room-top">

<div class="room-icon">❓</div>

<span class="online">● مفتوح</span>

</div>

<h3>روم الأسئلة</h3>

<p>
اسأل عن أي سؤال لم تفهمه.
</p>

<div class="members">
👥 120 طالب
</div>

<br>

<button
class="btn primary"
onclick="alert('سيتم فتح الروم بعد تفعيل حسابات الطلاب')">

دخول الروم

</button>

</div>


</div>

</div>

</section>



<!-- ================= TEST ================= -->

<section class="section" id="tests">

<div class="container">

<div class="test-box">

<div>

<h2>📝 جاهز تختبر نفسك؟</h2>

<p>
اختبار قصير يساعدك على معرفة مستواك.
</p>

</div>

<button
class="btn primary"
onclick="alert('سيتم تفعيل الاختبارات الحقيقية في المرحلة القادمة')">

🚀 ابدأ الاختبار

</button>

</div>

</div>

</section>



<!-- ================= TEACHER ================= -->

<section class="section" id="teacher">

<div class="container">

<div class="section-head">

<small>مدرس الرياضيات</small>

<h2>👨‍🏫 أستاذك معك</h2>

</div>


<div class="teacher">


<div class="teacher-photo">
👨‍🏫
</div>


<div>

<h2>الأستاذ ———</h2>

<p>
هنا نضع اسم الأستاذ ونبذة عنه وخبرته وطريقة تدريسه.
وسيظهر رقم التواصل هنا بعد تجهيز لوحة الإدارة.
</p>

<div class="phone">
📞 رقم الأستاذ: <strong>سيتم إضافته لاحقًا</strong>
</div>

</div>


</div>

</div>

</section>



<!-- ================= CTA ================= -->

<section class="cta">

<h2>🎯 مستعد تحقق هدفك؟</h2>

<p>
ابدأ الآن واجعل كل يوم خطوة جديدة نحو التفوق.
</p>

<button
class="btn primary"
onclick="goTo('lessons')">

🚀 ابدأ رحلتك في منبر ون

</button>

</section>



<!-- ================= FOOTER ================= -->

<footer>

<div class="footer-logo">
∑ منبر ون
</div>

<p>
منصة الرياضيات لطلاب التوجيهي 🎓
</p>


<div class="footer-links">

<a href="#home">الرئيسية</a>
<a href="#lessons">الحصص</a>
<a href="#summaries">الملخصات</a>
<a href="#rooms">الرومات</a>
<a href="#tests">الاختبارات</a>

</div>


<p>
© 2026 منبر ون — جميع الحقوق محفوظة
</p>

</footer>



<script>

/* التاريخ */

const now = new Date();

const days = [
"الأحد",
"الاثنين",
"الثلاثاء",
"الأربعاء",
"الخميس",
"الجمعة",
"السبت"
];

const months = [
"يناير",
"فبراير",
"مارس",
"أبريل",
"مايو",
"يونيو",
"يوليو",
"أغسطس",
"سبتمبر",
"أكتوبر",
"نوفمبر",
"ديسمبر"
];

document.getElementById("today").textContent =
days[now.getDay()] +
" • " +
now.getDate() +
" " +
months[now.getMonth()] +
" " +
now.getFullYear();


/* الانتقال */

function goTo(id){

document.getElementById(id).scrollIntoView({
behavior:"smooth"
});

}


/* الدخول */

function login(){

window.location.href="login.html";

}

</script>

</body>
</html>
