<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>منبر ون | رياضيات التوجيهي</title>

<style>
*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

:root{
    --bg:#061226;
    --bg2:#091a32;
    --card:#0d2340;
    --card2:#112b4c;
    --blue:#35b7ff;
    --purple:#8068ff;
    --gold:#ffc84a;
    --green:#38d39f;
    --red:#ff6d8d;
    --white:#f5f8ff;
    --muted:#9cafc7;
    --line:rgba(255,255,255,.09);
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Tahoma,Arial,sans-serif;
    background:var(--bg);
    color:var(--white);
    overflow-x:hidden;
}

button,input,textarea,select{
    font-family:inherit;
}

button{
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

/* ===== الخلفية الرياضية ===== */

body:before{
    content:"π     √     ∑     x²     ∞     ÷";
    position:fixed;
    inset:0;
    z-index:-1;
    color:rgba(255,255,255,.018);
    font-size:70px;
    font-weight:bold;
    line-height:3;
    word-spacing:50px;
    transform:rotate(-12deg) scale(1.4);
    pointer-events:none;
}

/* ===== HEADER ===== */

header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(6,18,38,.88);
    backdrop-filter:blur(18px);
    border-bottom:1px solid var(--line);
}

.nav{
    width:94%;
    max-width:1250px;
    min-height:72px;
    margin:auto;

    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:15px;
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
}

.logo-icon{
    width:45px;
    height:45px;
    border-radius:14px;

    display:grid;
    place-items:center;

    font-size:25px;
    font-weight:bold;

    background:linear-gradient(135deg,var(--blue),var(--purple));
    box-shadow:0 8px 25px rgba(53,183,255,.18);
}

.logo h2{
    font-size:20px;
}

.logo small{
    display:block;
    color:var(--muted);
    font-size:8px;
    letter-spacing:2px;
    margin-top:2px;
}

.nav-links{
    display:flex;
    gap:18px;
}

.nav-links a{
    color:#aebed3;
    font-size:12px;
    transition:.2s;
}

.nav-links a:hover{
    color:var(--blue);
}

.nav-actions{
    display:flex;
    gap:8px;
}

.small-btn{
    padding:10px 14px;
    border-radius:11px;
    border:1px solid var(--line);
    color:white;
    background:rgba(255,255,255,.04);
    font-size:11px;
}

.small-btn.primary{
    border:0;
    background:linear-gradient(135deg,var(--blue),var(--purple));
}

/* ===== HERO ===== */

.hero{
    min-height:650px;
    display:flex;
    align-items:center;
    position:relative;
    overflow:hidden;
}

.glow{
    position:absolute;
    width:400px;
    height:400px;
    border-radius:50%;
    filter:blur(100px);
    opacity:.12;
    pointer-events:none;
}

.glow.one{
    background:var(--blue);
    top:-180px;
    right:-100px;
}

.glow.two{
    background:var(--purple);
    bottom:-180px;
    left:-100px;
}

.hero-content{
    width:94%;
    max-width:1250px;
    margin:auto;

    display:grid;
    grid-template-columns:1.1fr .9fr;
    gap:55px;
    align-items:center;
}

.badge{
    display:inline-flex;
    padding:8px 13px;
    border-radius:30px;
    background:rgba(53,183,255,.07);
    border:1px solid rgba(53,183,255,.16);
    color:#8edbff;
    font-size:11px;
}

.hero h1{
    font-size:clamp(42px,6vw,72px);
    line-height:1.12;
    margin-top:20px;
}

.hero h1 span{
    color:var(--blue);
}

.hero h1 b{
    color:var(--gold);
}

.hero-text{
    color:var(--muted);
    max-width:650px;
    margin-top:20px;
    line-height:1.9;
    font-size:14px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    margin-top:28px;
}

.btn{
    border:0;
    border-radius:13px;
    padding:14px 21px;
    color:white;
    font-weight:bold;
    font-size:12px;
    transition:.2s;
}

.btn:hover{
    transform:translateY(-3px);
}

.btn.primary{
    background:linear-gradient(135deg,var(--blue),var(--purple));
    box-shadow:0 12px 30px rgba(53,183,255,.16);
}

.btn.dark{
    background:rgba(255,255,255,.05);
    border:1px solid var(--line);
}

.math-board{
    min-height:410px;
    padding:28px;
    border-radius:30px;

    background:
    radial-gradient(circle at center,rgba(53,183,255,.12),transparent 45%),
    linear-gradient(145deg,rgba(255,255,255,.07),rgba(255,255,255,.025));

    border:1px solid var(--line);
    box-shadow:0 30px 90px rgba(0,0,0,.28);
}

.board-head{
    display:flex;
    justify-content:space-between;
    color:var(--muted);
    font-size:11px;
}

.board-status{
    color:var(--green);
}

.equation{
    text-align:center;
    margin:65px 0;
    font-size:38px;
    font-weight:bold;
}

.equation span{
    color:var(--blue);
}

.symbols{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:12px;
}

.symbol{
    height:75px;
    border-radius:17px;
    display:grid;
    place-items:center;
    background:rgba(255,255,255,.035);
    border:1px solid var(--line);
    font-size:25px;
}

.symbol:nth-child(2){
    color:var(--gold);
}

.symbol:nth-child(3){
    color:#a894ff;
}

.symbol:nth-child(4){
    color:var(--green);
}

.symbol:nth-child(5){
    color:#ff8db2;
}

.symbol:nth-child(6){
    color:var(--blue);
}

/* ===== STATS ===== */

.stats{
    padding:10px 0 50px;
}

.stats-grid{
    width:94%;
    max-width:1100px;
    margin:auto;

    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:13px;
}

.stat{
    padding:20px;
    text-align:center;
    border:1px solid var(--line);
    background:rgba(255,255,255,.025);
    border-radius:18px;
}

.stat strong{
    display:block;
    font-size:25px;
    color:var(--blue);
}

.stat span{
    color:var(--muted);
    font-size:11px;
}

/* ===== SECTIONS ===== */

.section{
    padding:80px 0;
}

.alt{
    background:#08192f;
}

.container{
    width:94%;
    max-width:1250px;
    margin:auto;
}

.section-title{
    margin-bottom:30px;
}

.section-title small{
    color:var(--blue);
    font-size:11px;
}

.section-title h2{
    font-size:32px;
    margin-top:6px;
}

.section-title p{
    color:var(--muted);
    margin-top:7px;
    font-size:12px;
}

/* ===== DASHBOARD ===== */

.dashboard-grid{
    display:grid;
    grid-template-columns:1.4fr .8fr;
    gap:18px;
}

.panel{
    padding:26px;
    background:var(--card);
    border:1px solid var(--line);
    border-radius:22px;
}

.progress-head{
    display:flex;
    justify-content:space-between;
    margin-bottom:12px;
    font-size:12px;
}

.progress-head span{
    color:var(--blue);
}

.progress{
    height:9px;
    background:#061326;
    border-radius:20px;
    overflow:hidden;
}

.progress span{
    display:block;
    width:72%;
    height:100%;
    background:linear-gradient(90deg,var(--blue),var(--purple));
}

.tasks{
    display:grid;
    gap:10px;
    margin-top:22px;
}

.task{
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:13px;
    border-radius:13px;
    background:rgba(255,255,255,.035);
}

.task-info{
    display:flex;
    align-items:center;
    gap:10px;
}

.task-icon{
    width:40px;
    height:40px;
    border-radius:11px;
    display:grid;
    place-items:center;
    background:rgba(53,183,255,.08);
}

.task p{
    color:var(--muted);
    font-size:10px;
    margin-top:3px;
}

.completed{
    color:var(--green);
    font-size:11px;
}

.goal{
    text-align:center;
}

.trophy{
    font-size:55px;
}

.goal p{
    color:var(--muted);
    font-size:12px;
    line-height:1.8;
    margin:8px 0 20px;
}

/* ===== FEATURES ===== */

.features{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
}

.feature{
    padding:25px 20px;
    background:var(--card);
    border:1px solid var(--line);
    border-radius:20px;
    transition:.25s;
}

.feature:hover{
    transform:translateY(-6px);
    border-color:rgba(53,183,255,.25);
}

.feature-icon{
    font-size:35px;
}

.feature h3{
    margin-top:13px;
    font-size:16px;
}

.feature p{
    color:var(--muted);
    font-size:11px;
    line-height:1.7;
    margin-top:6px;
}

/* ===== CARDS ===== */

.cards{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.card{
    background:var(--card);
    border:1px solid var(--line);
    border-radius:21px;
    overflow:hidden;
    transition:.25s;
}

.card:hover{
    transform:translateY(-5px);
}

.card-image{
    height:170px;
    display:grid;
    place-items:center;
    font-size:60px;
    background:
    radial-gradient(circle,rgba(53,183,255,.13),transparent 60%),
    #0a1d36;
}

.card-body{
    padding:21px;
}

.tag{
    display:inline-block;
    color:var(--blue);
    background:rgba(53,183,255,.07);
    padding:5px 9px;
    border-radius:20px;
    font-size:9px;
}

.card h3{
    margin:10px 0 6px;
    font-size:16px;
}

.card p{
    color:var(--muted);
    font-size:11px;
    line-height:1.7;
}

.card-bottom{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:17px;
}

.duration{
    color:var(--muted);
    font-size:10px;
}

/* ===== SUMMARIES ===== */

.summary-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.summary{
    padding:24px;
    background:var(--card);
    border:1px solid var(--line);
    border-radius:20px;
}

.pdf{
    width:55px;
    height:62px;
    display:grid;
    place-items:center;
    border-radius:13px;
    color:#ff8bad;
    background:rgba(255,107,157,.08);
    font-weight:bold;
}

.summary h3{
    margin-top:14px;
}

.summary p{
    color:var(--muted);
    font-size:11px;
    margin:6px 0 17px;
}

/* ===== ROOMS ===== */

.rooms-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.room{
    padding:24px;
    border-radius:20px;
    background:var(--card);
    border:1px solid var(--line);
}

.room-head{
    display:flex;
    justify-content:space-between;
}

.room-icon{
    font-size:35px;
}

.online{
    color:var(--green);
    font-size:10px;
}

.room p{
    color:var(--muted);
    font-size:11px;
    line-height:1.7;
    margin:8px 0;
}

/* ===== TEST ===== */

.test{
    padding:38px;
    border-radius:25px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:20px;

    background:
    radial-gradient(circle at 80% 20%,rgba(53,183,255,.13),transparent 35%),
    linear-gradient(135deg,#102d50,#151d46);

    border:1px solid var(--line);
}

.test p{
    color:var(--muted);
    font-size:12px;
    margin-top:7px;
}

/* ===== TEACHER ===== */

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
    font-size:70px;
    background:linear-gradient(145deg,#123b60,#211f50);
    border:1px solid var(--line);
}

.teacher p{
    color:var(--muted);
    font-size:12px;
    line-height:1.9;
    max-width:750px;
    margin:10px 0 18px;
}

.phone{
    display:inline-block;
    padding:12px 16px;
    border-radius:12px;
    background:rgba(255,255,255,.04);
    border:1px solid var(--line);
    font-size:12px;
}

/* ===== CTA ===== */

.cta{
    text-align:center;
    padding:90px 20px;
}

.cta h2{
    font-size:38px;
}

.cta p{
    color:var(--muted);
    margin:10px 0 23px;
}

/* ===== FOOTER ===== */

footer{
    padding:45px 20px;
    text-align:center;
    background:#040c19;
    border-top:1px solid var(--line);
}

footer h3{
    font-size:22px;
}

footer p{
    color:#71839c;
    font-size:11px;
    margin-top:7px;
}

.footer-links{
    display:flex;
    justify-content:center;
    gap:20px;
    margin:20px 0;
}

.footer-links a{
    color:#91a3bc;
    font-size:11px;
}

/* ===== MODAL ===== */

.modal{
    position:fixed;
    inset:0;
    z-index:2000;

    display:none;
    align-items:center;
    justify-content:center;

    padding:20px;

    background:rgba(0,0,0,.7);
    backdrop-filter:blur(8px);
}

.modal.show{
    display:flex;
}

.modal-box{
    width:100%;
    max-width:440px;
    padding:28px;

    border-radius:24px;

    background:#0d2340;
    border:1px solid var(--line);

    box-shadow:0 30px 100px rgba(0,0,0,.5);
}

.modal-top{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:20px;
}

.close{
    width:35px;
    height:35px;
    border:0;
    border-radius:10px;
    color:white;
    background:rgba(255,255,255,.06);
    font-size:18px;
}

.form-group{
    margin-bottom:15px;
}

.form-group label{
    display:block;
    color:#dbe7f5;
    font-size:11px;
    margin-bottom:7px;
}

.form-group input,
.form-group textarea,
.form-group select{
    width:100%;
    padding:13px;
    border-radius:11px;
    border:1px solid var(--line);
    outline:none;
    background:#07172b;
    color:white;
}

.form-group textarea{
    min-height:100px;
    resize:vertical;
}

.form-note{
    color:var(--muted);
    font-size:10px;
    line-height:1.7;
    margin-top:13px;
}

/* ===== MOBILE ===== */

@media(max-width:950px){

    .nav-links{
        display:none;
    }

    .hero-content{
        grid-template-columns:1fr;
    }

    .math-board{
        display:none;
    }

    .features{
        grid-template-columns:repeat(2,1fr);
    }

    .dashboard-grid{
        grid-template-columns:1fr;
    }

    .cards,
    .summary-grid,
    .rooms-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:600px){

    .nav{
        min-height:65px;
    }

    .logo h2{
        font-size:17px;
    }

    .nav-actions .small-btn:first-child{
        display:none;
    }

    .hero{
        min-height:590px;
    }

    .hero h1{
        font-size:43px;
    }

    .hero-text{
        font-size:13px;
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

    .features,
    .cards,
    .summary-grid,
    .rooms-grid{
        grid-template-columns:1fr;
    }

    .section{
        padding:60px 0;
    }

    .section-title h2{
        font-size:28px;
    }

    .test{
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

    .cta h2{
        font-size:29px;
    }
}
</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<div class="nav">

<a href="#home" class="logo">

<div class="logo-icon">∑</div>

<div>
<h2>منبر ون</h2>
<small>MINBAR ONE</small>
</div>

</a>


<div class="nav-links">

<a href="#home">الرئيسية</a>
<a href="#lessons">الحصص</a>
<a href="#summaries">الملخصات</a>
<a href="#rooms">الرومات</a>
<a href="#tests">الاختبارات</a>

</div>


<div class="nav-actions">

<button class="small-btn" onclick="openModal('teacherModal')">
👨‍🏫 الأستاذ
</button>

<button class="small-btn primary" onclick="openModal('loginModal')">
👤 دخول
</button>

</div>

</div>

</header>


<!-- ================= HERO ================= -->

<section class="hero" id="home">

<div class="glow one"></div>
<div class="glow two"></div>


<div class="hero-content">

<div>

<div class="badge">
🎓 منصة الرياضيات لطلاب التوجيهي
</div>


<h1>
مستقبلك يبدأ
<br>
من <span>منبر ون</span>
<b> 🚀</b>
</h1>


<p class="hero-text">

منصة تعليمية تجمع لك الحصص، الملخصات،
الاختبارات والرومات التعليمية في مكان واحد.
تعلّم، تدرب، وتابع تقدمك خطوة بخطوة نحو هدفك.

</p>


<div class="hero-buttons">

<button class="btn primary" onclick="scrollToSection('lessons')">
🚀 ابدأ التعلم
</button>

<button class="btn dark" onclick="scrollToSection('tests')">
📝 اختبر نفسك
</button>

</div>

</div>


<div class="math-board">

<div class="board-head">

<span>🧮 مختبر الرياضيات</span>

<span class="board-status">
● جاهز للتعلم
</span>

</div>


<div class="equation">
<span>x²</span> + 2x + 1 = 0
</div>


<div class="symbols">

<div class="symbol">π</div>
<div class="symbol">√</div>
<div class="symbol">∑</div>
<div class="symbol">x²</div>
<div class="symbol">∞</div>
<div class="symbol">÷</div>

</div>

</div>

</div>

</section>


<!-- ================= STATS ================= -->

<section class="stats">

<div class="stats-grid">

<div class="stat">
<strong>🎥</strong>
<span>حصص فيديو</span>
</div>

<div class="stat">
<strong>📚</strong>
<span>ملخصات</span>
</div>

<div class="stat">
<strong>📝</strong>
<span>اختبارات</span>
</div>

<div class="stat">
<strong>🏆</strong>
<span>إنجازات</span>
</div>

</div>

</section>


<!-- ================= DASHBOARD ================= -->

<section class="section alt" id="dashboard">

<div class="container">

<div class="section-title">

<small>لوحة الطالب</small>

<h2>👋 أهلاً بك يا بطل</h2>

<p>هنا تتابع رحلتك التعليمية.</p>

</div>


<div class="dashboard-grid">


<div class="panel">

<div class="progress-head">

<strong>🔥 تقدمك في الخطة</strong>

<span>72%</span>

</div>


<div class="progress">
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

<span class="completed">✓ مكتملة</span>

</div>


<div class="task">

<div class="task-info">

<div class="task-icon">📚</div>

<div>
<strong>مراجعة القوانين</strong>
<p>15 دقيقة</p>
</div>

</div>

<span class="completed">✓ مكتملة</span>

</div>


<div class="task">

<div class="task-info">

<div class="task-icon">📝</div>

<div>
<strong>اختبار اليوم</strong>
<p>10 أسئلة</p>
</div>

</div>

<span style="color:var(--gold);font-size:10px">
ابدأ →
</span>

</div>

</div>

</div>


<div class="panel goal">

<div class="trophy">🏆</div>

<h3>هدفك القادم</h3>

<p>
أكمل 3 حصص هذا الأسبوع
لتحصل على شارة الإنجاز.
</p>

<button class="btn primary" onclick="showMessage('سيتم تفعيل نظام الإنجازات مع حساب الطالب.')">
الإنجازات
</button>

</div>


</div>

</div>

</section>


<!-- ================= FEATURES ================= -->

<section class="section">

<div class="container">

<div class="section-title">

<small>كل شيء في مكان واحد</small>

<h2>🚀 منصة صممت لتساعدك</h2>

</div>


<div class="features">


<div class="feature">
<div class="feature-icon">🎥</div>
<h3>الحصص</h3>
<p>حصص مرتبة حسب الوحدات والدروس.</p>
</div>


<div class="feature">
<div class="feature-icon">📚</div>
<h3>المكتبة</h3>
<p>ملخصات وقوانين وملفات للمراجعة.</p>
</div>


<div class="feature">
<div class="feature-icon">💬</div>
<h3>الرومات</h3>
<p>تفاعل وناقش واسأل عن المسائل.</p>
</div>


<div class="feature">
<div class="feature-icon">🏆</div>
<h3>الاختبارات</h3>
<p>اختبر نفسك وتابع مستوى تقدمك.</p>
</div>


</div>

</div>

</section>


<!-- ================= LESSONS ================= -->

<section class="section alt" id="lessons">

<div class="container">

<div class="section-title">

<small>تعلم خطوة بخطوة</small>

<h2>🎥 الحصص التعليمية</h2>

<p>اختر الدرس وابدأ التعلم.</p>

</div>


<div class="cards">


<div class="card">

<div class="card-image">📐</div>

<div class="card-body">

<span class="tag">الوحدة الأولى</span>

<h3>الدوال</h3>

<p>
شرح الدوال بطريقة سهلة مع أمثلة وتطبيقات.
</p>

<div class="card-bottom">

<span class="duration">⏱ 45 دقيقة</span>

<button class="btn primary" onclick="showMessage('سيتم تشغيل الفيديو بعد ربط مكتبة الفيديوهات.')">
▶ مشاهدة
</button>

</div>

</div>

</div>


<div class="card">

<div class="card-image">∫</div>

<div class="card-body">

<span class="tag">الوحدة الثانية</span>

<h3>التفاضل</h3>

<p>
أساسيات التفاضل وأهم القوانين والتطبيقات.
</p>

<div class="card-bottom">

<span class="duration">⏱ 50 دقيقة</span>

<button class="btn primary" onclick="showMessage('سيتم تشغيل الفيديو بعد ربط مكتبة الفيديوهات.')">
▶ مشاهدة
</button>

</div>

</div>

</div>


<div class="card">

<div class="card-image">√</div>

<div class="card-body">

<span class="tag">الوحدة الثالثة</span>

<h3>التكامل</h3>

<p>
أهم أفكار التكامل مع تدريبات توجيهي.
</p>

<div class="card-bottom">

<span class="duration">⏱ 55 دقيقة</span>

<button class="btn primary" onclick="showMessage('سيتم تشغيل الفيديو بعد ربط مكتبة الفيديوهات.')">
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

<div class="section-title">

<small>مكتبة منبر ون</small>

<h2>📚 الملخصات</h2>

<p>ملفات تساعدك على المراجعة بسرعة.</p>

</div>


<div class="summary-grid">


<div class="summary">

<div class="pdf">PDF</div>

<h3>ملخص الوحدة الأولى</h3>

<p>أهم القوانين والأفكار والأسئلة.</p>

<button class="btn primary" onclick="showMessage('سيتم فتح ملف PDF بعد ربط المكتبة.')">
📖 فتح الملخص
</button>

</div>


<div class="summary">

<div class="pdf">PDF</div>

<h3>ورقة القوانين</h3>

<p>مراجعة سريعة لأهم القوانين.</p>

<button class="btn primary" onclick="showMessage('سيتم فتح ملف PDF بعد ربط المكتبة.')">
📖 فتح الملف
</button>

</div>


<div class="summary">

<div class="pdf">PDF</div>

<h3>نماذج التوجيهي</h3>

<p>نماذج وأسئلة تدريبية للمراجعة.</p>

<button class="btn primary" onclick="showMessage('سيتم فتح ملف PDF بعد ربط المكتبة.')">
📖 فتح النماذج
</button>

</div>


</div>

</div>

</section>


<!-- ================= ROOMS ================= -->

<section class="section alt" id="rooms">

<div class="container">

<div class="section-title">

<small>تعلم مع زملائك</small>

<h2>💬 الرومات التعليمية</h2>

<p>مساحات للنقاش وطرح الأسئلة.</p>

</div>


<div class="rooms-grid">


<div class="room">

<div class="room-head">

<div class="room-icon">🧮</div>

<span class="online">● مفتوح</span>

</div>

<h3>روم الرياضيات العام</h3>

<p>للنقاش والأسئلة العامة.</p>

<button class="btn primary" onclick="showMessage('سيتم فتح الروم بعد تسجيل الدخول.')">
دخول الروم
</button>

</div>


<div class="room">

<div class="room-head">

<div class="room-icon">🔥</div>

<span class="online">● مفتوح</span>

</div>

<h3>روم المراجعة</h3>

<p>مراجعة قبل الاختبارات.</p>

<button class="btn primary" onclick="showMessage('سيتم فتح الروم بعد تسجيل الدخول.')">
دخول الروم
</button>

</div>


<div class="room">

<div class="room-head">

<div class="room-icon">❓</div>

<span class="online">● مفتوح</span>

</div>

<h3>روم الأسئلة</h3>

<p>اسأل عن أي سؤال لم تفهمه.</p>

<button class="btn primary" onclick="showMessage('سيتم فتح الروم بعد تسجيل الدخول.')">
دخول الروم
</button>

</div>


</div>

</div>

</section>


<!-- ================= TESTS ================= -->

<section class="section" id="tests">

<div class="container">

<div class="test">

<div>

<h2>📝 جاهز تختبر نفسك؟</h2>

<p>
اختبار قصير يساعدك على معرفة مستواك في الرياضيات.
</p>

</div>

<button class="btn primary" onclick="showMessage('سيتم تشغيل نظام الاختبارات في المرحلة القادمة.')">
🚀 ابدأ الاختبار
</button>

</div>

</div>

</section>


<!-- ================= TEACHER ================= -->

<section class="section alt" id="teacher">

<div class="container">

<div class="section-title">

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
هنا ستظهر معلومات الأستاذ، خبرته، وطريقة التواصل معه.
يمكن تعديل هذه المعلومات من لوحة تحكم الأستاذ بعد ربط قاعدة البيانات.
</p>

<div class="phone">
📞 رقم الأستاذ: سيتم إضافته
</div>

</div>

</div>

</div>

</section>


<!-- ================= CTA ================= -->

<section class="cta">

<h2>🎯 مستعد تحقق هدفك؟</h2>

<p>
كل يوم دراسة هو خطوة جديدة نحو التفوق.
</p>

<button class="btn primary" onclick="scrollToSection('lessons')">
🚀 ابدأ رحلة منبر ون
</button>

</section>


<!-- ================= FOOTER ================= -->

<footer>

<h3>∑ منبر ون</h3>

<p>منصة الرياضيات لطلاب التوجيهي 🎓</p>


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


<!-- ================= LOGIN MODAL ================= -->

<div class="modal" id="loginModal">

<div class="modal-box">

<div class="modal-top">

<h2>👤 دخول الطالب</h2>

<button class="close" onclick="closeModal('loginModal')">
×
</button>

</div>


<div class="form-group">

<label>البريد الإلكتروني</label>

<input
type="email"
id="loginEmail"
placeholder="example@email.com"
>

</div>


<div class="form-group">

<label>كلمة المرور</label>

<input
type="password"
id="loginPassword"
placeholder="كلمة المرور"
>

</div>


<button class="btn primary" style="width:100%" onclick="fakeLogin()">
🚀 تسجيل الدخول
</button>


<p class="form-note">

في المرحلة القادمة سيتم ربط هذا النموذج بحسابات الطلاب في Supabase،
بحيث يستطيع كل طالب إنشاء حساب والدخول إلى ملفه الشخصي.

</p>

</div>

</div>


<!-- ================= TEACHER MODAL ================= -->

<div class="modal" id="teacherModal">

<div class="modal-box">

<div class="modal-top">

<h2>👨‍🏫 دخول الأستاذ</h2>

<button class="close" onclick="closeModal('teacherModal')">
×
</button>

</div>


<div class="form-group">

<label>البريد الإلكتروني</label>

<input
type="email"
placeholder="البريد الإلكتروني"
>

</div>


<div class="form-group">

<label>كلمة المرور</label>

<input
type="password"
placeholder="كلمة المرور"
>

</div>


<button class="btn primary" style="width:100%" onclick="showMessage('سيتم تفعيل لوحة الأستاذ في المرحلة القادمة.')">
🔐 دخول لوحة الأستاذ
</button>

</div>

</div>


<script>

/* ===== التاريخ ===== */

function scrollToSection(id){

    const element =
    document.getElementById(id);

    if(element){
        element.scrollIntoView({
            behavior:"smooth"
        });
    }

}


/* ===== النوافذ ===== */

function openModal(id){

    document
    .getElementById(id)
    .classList.add("show");

}


function closeModal(id){

    document
    .getElementById(id)
    .classList.remove("show");

}


/* إغلاق النافذة عند الضغط خارجها */

document.querySelectorAll(".modal").forEach(function(modal){

    modal.addEventListener("click",function(event){

        if(event.target === modal){
            modal.classList.remove("show");
        }

    });

});


/* ===== تسجيل دخول تجريبي ===== */

function fakeLogin(){

    const email =
    document.getElementById("loginEmail").value;

    const password =
    document.getElementById("loginPassword").value;

    if(!email || !password){

        alert("⚠️ اكتب البريد الإلكتروني وكلمة المرور.");

        return;

    }

    alert(
        "✅ تم استلام بيانات الدخول.\n\nسيتم ربط تسجيل الدخول الحقيقي بـ Supabase في المرحلة القادمة."
    );

}


/* ===== رسائل ===== */

function showMessage(text){

    alert("ℹ️ " + text);

}

</script>

</body>
</html>
