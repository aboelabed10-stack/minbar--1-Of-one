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

:root{
  --bg:#070b1a;
  --bg2:#0d1430;
  --card:#111a38;
  --card2:#151f45;
  --text:#fff;
  --muted:#aeb8d8;
  --primary:#7c5cff;
  --secondary:#00d4ff;
  --pink:#ff4fd8;
  --green:#25e39a;
  --orange:#ffad42;
  --border:rgba(255,255,255,.10);
}

body{
  font-family:Arial,"Tahoma",sans-serif;
  background:
    radial-gradient(circle at 10% 10%,rgba(124,92,255,.22),transparent 28%),
    radial-gradient(circle at 90% 20%,rgba(0,212,255,.14),transparent 25%),
    linear-gradient(135deg,var(--bg),#090d20 50%,#101735);
  color:var(--text);
  min-height:100vh;
  overflow-x:hidden;
}

button,input{
  font-family:inherit;
}

button{
  cursor:pointer;
  border:0;
}

a{
  text-decoration:none;
  color:inherit;
}

/* خلفية الرموز */

.math-bg{
  position:fixed;
  inset:0;
  pointer-events:none;
  overflow:hidden;
  z-index:-1;
}

.math-bg span{
  position:absolute;
  color:rgba(255,255,255,.045);
  font-size:60px;
  animation:float 12s infinite ease-in-out;
}

.math-bg span:nth-child(1){top:10%;left:5%}
.math-bg span:nth-child(2){top:30%;left:90%;animation-delay:2s}
.math-bg span:nth-child(3){top:70%;left:12%;animation-delay:4s}
.math-bg span:nth-child(4){top:80%;left:80%;animation-delay:1s}
.math-bg span:nth-child(5){top:50%;left:50%;animation-delay:5s}
.math-bg span:nth-child(6){top:15%;left:60%;animation-delay:3s}

@keyframes float{
  0%,100%{transform:translateY(0) rotate(0)}
  50%{transform:translateY(-30px) rotate(12deg)}
}

/* الهيدر */

header{
  position:sticky;
  top:0;
  z-index:100;
  padding:15px 5%;
  background:rgba(7,11,26,.78);
  backdrop-filter:blur(18px);
  border-bottom:1px solid var(--border);
}

.nav{
  max-width:1400px;
  margin:auto;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:20px;
}

.logo{
  display:flex;
  align-items:center;
  gap:12px;
}

.logo-icon{
  width:55px;
  height:55px;
  border-radius:17px;
  display:flex;
  align-items:center;
  justify-content:center;
  font-size:30px;
  font-weight:bold;
  background:linear-gradient(135deg,var(--primary),var(--secondary));
  box-shadow:0 0 30px rgba(124,92,255,.35);
}

.logo-text h1{
  font-size:22px;
}

.logo-text span{
  color:var(--secondary);
  font-size:11px;
  letter-spacing:2px;
}

.nav-buttons{
  display:flex;
  gap:10px;
  align-items:center;
}

.btn{
  padding:12px 18px;
  border-radius:13px;
  color:white;
  background:rgba(255,255,255,.07);
  border:1px solid var(--border);
  font-weight:bold;
  transition:.25s;
}

.btn:hover{
  transform:translateY(-2px);
  background:rgba(255,255,255,.13);
}

.btn-primary{
  background:linear-gradient(135deg,var(--primary),#a94cff);
  box-shadow:0 8px 25px rgba(124,92,255,.25);
}

.user-box{
  display:none;
  align-items:center;
  gap:8px;
  padding:10px 14px;
  border-radius:12px;
  background:rgba(37,227,154,.09);
  border:1px solid rgba(37,227,154,.2);
}

/* الصفحة */

.container{
  width:min(1400px,92%);
  margin:auto;
}

.hero{
  min-height:590px;
  display:grid;
  grid-template-columns:1.15fr .85fr;
  align-items:center;
  gap:40px;
  padding:70px 0 50px;
}

.hero-badge{
  display:inline-flex;
  padding:10px 16px;
  border-radius:50px;
  background:rgba(124,92,255,.12);
  border:1px solid rgba(124,92,255,.3);
  color:#cfc6ff;
  margin-bottom:22px;
}

.hero h2{
  font-size:clamp(42px,6vw,76px);
  line-height:1.05;
  margin-bottom:22px;
}

.gradient-text{
  background:linear-gradient(90deg,#fff,var(--secondary),#a98cff,var(--pink));
  -webkit-background-clip:text;
  color:transparent;
}

.hero p{
  color:var(--muted);
  font-size:19px;
  line-height:1.9;
  max-width:650px;
}

.hero-buttons{
  display:flex;
  gap:14px;
  margin-top:30px;
  flex-wrap:wrap;
}

.hero-card{
  position:relative;
  min-height:400px;
  border-radius:35px;
  background:
    radial-gradient(circle at 50% 20%,rgba(124,92,255,.35),transparent 35%),
    linear-gradient(145deg,#151d43,#090e22);
  border:1px solid var(--border);
  box-shadow:0 30px 80px rgba(0,0,0,.3);
  display:flex;
  align-items:center;
  justify-content:center;
  overflow:hidden;
}

.hero-equation{
  font-size:120px;
  font-weight:bold;
  background:linear-gradient(135deg,var(--secondary),var(--primary),var(--pink));
  -webkit-background-clip:text;
  color:transparent;
  filter:drop-shadow(0 0 30px rgba(124,92,255,.35));
}

.hero-orbit{
  position:absolute;
  width:300px;
  height:300px;
  border:1px solid rgba(255,255,255,.1);
  border-radius:50%;
  animation:spin 18s linear infinite;
}

.hero-orbit:after{
  content:"✦";
  position:absolute;
  top:-15px;
  left:50%;
  font-size:28px;
  color:var(--secondary);
}

@keyframes spin{
  to{transform:rotate(360deg)}
}

/* البحث */

.search-wrap{
  margin:20px 0 55px;
  position:relative;
}

.search{
  width:100%;
  padding:20px 60px 20px 20px;
  border-radius:20px;
  border:1px solid var(--border);
  background:rgba(255,255,255,.06);
  color:white;
  outline:none;
  font-size:17px;
}

.search:focus{
  border-color:var(--primary);
  box-shadow:0 0 30px rgba(124,92,255,.12);
}

.search-icon{
  position:absolute;
  right:22px;
  top:50%;
  transform:translateY(-50%);
  font-size:25px;
}

/* العناوين */

.section{
  margin:70px 0;
}

.section-title{
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:20px;
  margin-bottom:25px;
}

.section-title h2{
  font-size:32px;
}

.section-title p{
  color:var(--muted);
  margin-top:8px;
}

/* التصنيفات */

.categories{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:18px;
}

.category{
  min-height:190px;
  padding:28px;
  border-radius:25px;
  border:1px solid var(--border);
  background:linear-gradient(145deg,rgba(255,255,255,.08),rgba(255,255,255,.025));
  transition:.3s;
  position:relative;
  overflow:hidden;
}

.category:hover{
  transform:translateY(-8px);
  border-color:rgba(255,255,255,.25);
}

.category-icon{
  font-size:45px;
  margin-bottom:20px;
}

.category h3{
  font-size:22px;
  margin-bottom:8px;
}

.category p{
  color:var(--muted);
}

.cat-purple{box-shadow:inset 0 -3px 0 var(--primary)}
.cat-blue{box-shadow:inset 0 -3px 0 var(--secondary)}
.cat-green{box-shadow:inset 0 -3px 0 var(--green)}
.cat-orange{box-shadow:inset 0 -3px 0 var(--orange)}

/* بطاقات الدروس */

.cards{
  display:grid;
  grid-template-columns:repeat(3,1fr);
  gap:25px;
}

.lesson-card{
  background:linear-gradient(145deg,#131c3d,#0d1430);
  border:1px solid var(--border);
  border-radius:25px;
  overflow:hidden;
  transition:.3s;
  box-shadow:0 15px 45px rgba(0,0,0,.18);
}

.lesson-card:hover{
  transform:translateY(-7px);
  border-color:rgba(124,92,255,.5);
  box-shadow:0 20px 60px rgba(0,0,0,.3);
}

/* غلاف الفيديو الكبير */

.lesson-cover{
  height:245px;
  position:relative;
  overflow:hidden;
  background:linear-gradient(135deg,#202a55,#10162e);
}

.lesson-cover img{
  width:100%;
  height:100%;
  object-fit:cover;
  display:block;
  transition:.5s;
}

.lesson-card:hover .lesson-cover img{
  transform:scale(1.06);
}

.cover-overlay{
  position:absolute;
  inset:0;
  background:linear-gradient(to top,rgba(4,7,18,.85),rgba(4,7,18,.05) 65%);
}

.play-button{
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%,-50%);
  width:76px;
  height:76px;
  border-radius:50%;
  display:flex;
  align-items:center;
  justify-content:center;
  background:rgba(124,92,255,.9);
  border:3px solid rgba(255,255,255,.8);
  font-size:30px;
  box-shadow:0 0 35px rgba(124,92,255,.6);
  transition:.25s;
}

.lesson-card:hover .play-button{
  transform:translate(-50%,-50%) scale(1.1);
}

.duration{
  position:absolute;
  bottom:14px;
  left:14px;
  padding:7px 10px;
  border-radius:8px;
  background:rgba(0,0,0,.7);
  font-size:13px;
}

.lesson-info{
  padding:22px;
}

.lesson-info h3{
  font-size:22px;
  margin-bottom:10px;
}

.lesson-info p{
  color:var(--muted);
  line-height:1.7;
  min-height:50px;
}

.meta{
  display:flex;
  justify-content:space-between;
  gap:10px;
  margin-top:18px;
  color:#cbd3ed;
  font-size:13px;
}

.unit{
  color:var(--secondary);
}

/* بطاقات عادية */

.resource-card{
  background:linear-gradient(145deg,#131c3d,#0d1430);
  border:1px solid var(--border);
  border-radius:22px;
  padding:25px;
  transition:.3s;
}

.resource-card:hover{
  transform:translateY(-5px);
  border-color:rgba(124,92,255,.4);
}

.resource-icon{
  font-size:42px;
  margin-bottom:15px;
}

.resource-card h3{
  font-size:20px;
  margin-bottom:10px;
}

.resource-card p{
  color:var(--muted);
  line-height:1.7;
}

.resource-card .btn{
  margin-top:18px;
  width:100%;
}

/* التحدي */

.challenge{
  background:
    radial-gradient(circle at 90% 10%,rgba(255,79,216,.18),transparent 30%),
    linear-gradient(135deg,#17143b,#111a3d);
  border:1px solid rgba(124,92,255,.3);
  border-radius:30px;
  padding:35px;
}

.challenge-question{
  font-size:25px;
  margin:20px 0;
  line-height:1.7;
}

.challenge-options{
  display:grid;
  grid-template-columns:repeat(2,1fr);
  gap:12px;
}

.option{
  padding:16px;
  border-radius:14px;
  color:white;
  background:rgba(255,255,255,.06);
  border:1px solid var(--border);
  text-align:right;
  transition:.2s;
}

.option:hover{
  background:rgba(124,92,255,.15);
  border-color:var(--primary);
}

/* الإحصائيات */

.stats{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:18px;
}

.stat{
  text-align:center;
  padding:25px;
  border-radius:22px;
  background:rgba(255,255,255,.05);
  border:1px solid var(--border);
}

.stat strong{
  display:block;
  font-size:36px;
  margin-bottom:7px;
  background:linear-gradient(90deg,var(--secondary),var(--primary));
  -webkit-background-clip:text;
  color:transparent;
}

.stat span{
  color:var(--muted);
}

/* المودالات */

.modal{
  position:fixed;
  inset:0;
  background:rgba(0,0,0,.78);
  backdrop-filter:blur(10px);
  display:none;
  align-items:center;
  justify-content:center;
  padding:20px;
  z-index:500;
}

.modal.show{
  display:flex;
}

.modal-box{
  width:min(900px,100%);
  max-height:90vh;
  overflow:auto;
  background:#0d1430;
  border:1px solid var(--border);
  border-radius:25px;
  padding:25px;
  position:relative;
}

.close{
  position:absolute;
  top:15px;
  left:15px;
  width:40px;
  height:40px;
  border-radius:50%;
  color:white;
  background:rgba(255,255,255,.1);
  font-size:22px;
  z-index:2;
}

.video-frame{
  width:100%;
  aspect-ratio:16/9;
  border:0;
  border-radius:17px;
  margin-top:25px;
}

/* تسجيل الدخول */

.auth-box{
  width:min(450px,100%);
}

.auth-box h2{
  font-size:28px;
  margin-bottom:20px;
}

.input{
  width:100%;
  padding:15px;
  border-radius:13px;
  background:rgba(255,255,255,.06);
  border:1px solid var(--border);
  color:white;
  outline:none;
  margin-bottom:12px;
  font-size:16px;
}

.auth-message{
  margin:12px 0;
  color:var(--muted);
  line-height:1.6;
}

/* الاختبار */

.exam-box{
  width:min(800px,100%);
}

.exam-header{
  display:flex;
  justify-content:space-between;
  gap:15px;
  align-items:center;
  margin-bottom:20px;
}

.progress{
  height:9px;
  border-radius:20px;
  background:rgba(255,255,255,.08);
  overflow:hidden;
  margin-bottom:25px;
}

.progress-bar{
  height:100%;
  background:linear-gradient(90deg,var(--primary),var(--secondary));
  width:0%;
  transition:.3s;
}

.exam-question{
  font-size:25px;
  line-height:1.8;
  margin-bottom:25px;
}

.exam-options{
  display:grid;
  gap:12px;
}

.exam-option{
  width:100%;
  padding:18px;
  border-radius:15px;
  background:rgba(255,255,255,.05);
  border:1px solid var(--border);
  color:white;
  text-align:right;
  font-size:17px;
}

.exam-option.selected{
  background:rgba(124,92,255,.25);
  border-color:var(--primary);
}

.exam-actions{
  display:flex;
  justify-content:space-between;
  margin-top:25px;
  gap:10px;
}

.result{
  text-align:center;
  padding:35px 10px;
}

.result-score{
  font-size:70px;
  font-weight:bold;
  margin:20px;
  background:linear-gradient(90deg,var(--secondary),var(--primary),var(--pink));
  -webkit-background-clip:text;
  color:transparent;
}

/* فوتر */

footer{
  margin-top:100px;
  padding:40px 5%;
  text-align:center;
  color:var(--muted);
  border-top:1px solid var(--border);
}

/* تحميل */

.loading{
  text-align:center;
  padding:35px;
  color:var(--muted);
  font-size:18px;
}

.empty{
  padding:30px;
  text-align:center;
  color:var(--muted);
  background:rgba(255,255,255,.03);
  border-radius:20px;
}

/* موبايل */

@media(max-width:1000px){
  .hero{
    grid-template-columns:1fr;
    text-align:center;
  }

  .hero p{
    margin:auto;
  }

  .hero-buttons{
    justify-content:center;
  }

  .categories{
    grid-template-columns:repeat(2,1fr);
  }

  .cards{
    grid-template-columns:repeat(2,1fr);
  }

  .stats{
    grid-template-columns:repeat(2,1fr);
  }
}

@media(max-width:650px){
  header{
    padding:10px 4%;
  }

  .nav{
    flex-wrap:wrap;
  }

  .logo-text{
    display:none;
  }

  .nav-buttons{
    margin-right:auto;
  }

  .nav-buttons .btn{
    padding:9px 11px;
    font-size:12px;
  }

  .hero{
    padding-top:45px;
    min-height:auto;
  }

  .hero h2{
    font-size:43px;
  }

  .hero p{
    font-size:16px;
  }

  .hero-card{
    min-height:290px;
  }

  .hero-equation{
    font-size:85px;
  }

  .categories,
  .cards,
  .stats,
  .challenge-options{
    grid-template-columns:1fr;
  }

  .section-title{
    display:block;
  }

  .section-title h2{
    font-size:27px;
  }

  .lesson-cover{
    height:230px;
  }

  .modal{
    padding:10px;
  }

  .modal-box{
    padding:18px;
  }

  .exam-question{
    font-size:20px;
  }
}
</style>
</head>

<body>

<div class="math-bg">
  <span>∑</span>
  <span>π</span>
  <span>√</span>
  <span>∞</span>
  <span>∫</span>
  <span>∆</span>
</div>

<header>
  <div class="nav">

    <div class="logo">
      <div class="logo-icon">∑</div>
      <div class="logo-text">
        <h1>منبر ون</h1>
        <span>MINBAR ONE • MATH</span>
      </div>
    </div>

    <div class="nav-buttons">

      <div class="user-box" id="userBox">
        👨‍🎓 <span id="userName"></span>
      </div>

      <button class="btn" id="teacherBtn"
        onclick="window.location.href='teacher.html'">
        👨‍🏫 المعلم
      </button>

      <button class="btn btn-primary"
        id="loginBtn"
        onclick="openLogin()">
        👨‍🎓 دخول الطالب
      </button>

      <button class="btn"
        id="logoutBtn"
        style="display:none"
        onclick="logoutStudent()">
        خروج
      </button>

    </div>
  </div>
</header>

<main class="container">

<section class="hero">

  <div>
    <div class="hero-badge">
      ✨ منصتك الذكية لتعلّم الرياضيات
    </div>

    <h2>
      الرياضيات تصبح
      <span class="gradient-text">أسهل مع منبر ون</span>
    </h2>

    <p>
      دروس فيديو، ملخصات، اختبارات وتحديات يومية
      في مكان واحد، بتجربة تعليمية حديثة وممتعة.
    </p>

    <div class="hero-buttons">
      <button class="btn btn-primary"
        onclick="document.getElementById('lessonsSection').scrollIntoView({behavior:'smooth'})">
        🚀 ابدأ التعلم
      </button>

      <button class="btn"
        onclick="document.getElementById('testsSection').scrollIntoView({behavior:'smooth'})">
        📝 جرّب اختبارًا
      </button>
    </div>
  </div>

  <div class="hero-card">
    <div class="hero-orbit"></div>
    <div class="hero-equation">x² + y²</div>
  </div>

</section>

<div class="search-wrap">
  <span class="search-icon">🔎</span>
  <input
    id="searchInput"
    class="search"
    type="text"
    placeholder="ابحث عن درس، ملخص، اختبار أو غرفة..."
    oninput="searchEverything()"
  >
</div>

<section class="section">

  <div class="section-title">
    <div>
      <h2>ماذا تريد أن تتعلم؟ 🎯</h2>
      <p>اختر القسم الذي تريد الوصول إليه</p>
    </div>
  </div>

  <div class="categories">

    <div class="category cat-purple"
      onclick="scrollToSection('lessonsSection')">
      <div class="category-icon">🎥</div>
      <h3>الدروس</h3>
      <p>شرح مبسط بالفيديو</p>
    </div>

    <div class="category cat-blue"
      onclick="scrollToSection('summariesSection')">
      <div class="category-icon">📚</div>
      <h3>الملخصات</h3>
      <p>راجع أهم الأفكار بسرعة</p>
    </div>

    <div class="category cat-green"
      onclick="scrollToSection('testsSection')">
      <div class="category-icon">📝</div>
      <h3>الاختبارات</h3>
      <p>اختبر معلوماتك</p>
    </div>

    <div class="category cat-orange"
      onclick="scrollToSection('roomsSection')">
      <div class="category-icon">💬</div>
      <h3>الغرف</h3>
      <p>أماكن التعلم والتواصل</p>
    </div>

  </div>
</section>

<section class="section" id="challengeSection">

  <div class="section-title">
    <div>
      <h2>⚡ تحدي اليوم</h2>
      <p>سؤال سريع لاختبار مهاراتك</p>
    </div>
  </div>

  <div class="challenge">

    <div id="challengeContent">
      <div class="loading">جاري تحميل التحدي...</div>
    </div>

  </div>
</section>

<section class="section" id="lessonsSection">

  <div class="section-title">
    <div>
      <h2>🎥 أحدث الحصص</h2>
      <p>شاهد الحصة مباشرة من الغلاف</p>
    </div>
  </div>

  <div id="lessonsContainer" class="cards">
    <div class="loading">جاري تحميل الحصص...</div>
  </div>

</section>

<section class="section" id="summariesSection">

  <div class="section-title">
    <div>
      <h2>📚 الملخصات</h2>
      <p>ملخصات جاهزة للمراجعة</p>
    </div>
  </div>

  <div id="summariesContainer" class="cards">
    <div class="loading">جاري تحميل الملخصات...</div>
  </div>

</section>

<section class="section" id="testsSection">

  <div class="section-title">
    <div>
      <h2>📝 الاختبارات</h2>
      <p>اختبر نفسك بالأسئلة الموجودة في المنصة</p>
    </div>
  </div>

  <div id="testsContainer" class="cards">
    <div class="loading">جاري تحميل الاختبارات...</div>
  </div>

</section>

<section class="section" id="roomsSection">

  <div class="section-title">
    <div>
      <h2>💬 الغرف التعليمية</h2>
      <p>ادخل إلى غرف التعلم</p>
    </div>
  </div>

  <div id="roomsContainer" class="cards">
    <div class="loading">جاري تحميل الغرف...</div>
  </div>

</section>

<section class="section">

  <div class="section-title">
    <div>
      <h2>📊 المنصة بالأرقام</h2>
    </div>
  </div>

  <div class="stats">

    <div class="stat">
      <strong id="lessonsCount">0</strong>
      <span>درس</span>
    </div>

    <div class="stat">
      <strong id="summariesCount">0</strong>
      <span>ملخص</span>
    </div>

    <div class="stat">
      <strong id="testsCount">0</strong>
      <span>اختبار</span>
    </div>

    <div class="stat">
      <strong id="roomsCount">0</strong>
      <span>غرفة</span>
    </div>

  </div>

</section>

</main>

<footer>
  <p>© 2026 منبر ون — منصة الرياضيات التعليمية ✨</p>
</footer>


<!-- تسجيل الدخول -->

<div class="modal" id="loginModal">

  <div class="modal-box auth-box">

    <button class="close" onclick="closeLogin()">×</button>

    <h2>👨‍🎓 دخول الطالب</h2>

    <input
      id="studentName"
      class="input"
      placeholder="اسم الطالب"
      type="text"
    >

    <input
      id="studentEmail"
      class="input"
      placeholder="البريد الإلكتروني"
      type="email"
    >

    <input
      id="studentPassword"
      class="input"
      placeholder="كلمة المرور"
      type="password"
    >

    <div class="auth-message" id="authMessage"></div>

    <button class="btn btn-primary"
      style="width:100%"
      onclick="loginStudent()">
      دخول
    </button>

    <button class="btn"
      style="width:100%;margin-top:10px"
      onclick="signupStudent()">
      إنشاء حساب جديد
    </button>

  </div>
</div>


<!-- الفيديو -->

<div class="modal" id="videoModal">

  <div class="modal-box">

    <button class="close" onclick="closeVideo()">×</button>

    <h2 id="videoTitle">الحصة</h2>

    <iframe
      id="videoFrame"
      class="video-frame"
      allowfullscreen>
    </iframe>

  </div>
</div>


<!-- الملخص / الغرفة -->

<div class="modal" id="resourceModal">

  <div class="modal-box">

    <button class="close" onclick="closeResource()">×</button>

    <h2 id="resourceTitle"></h2>

    <iframe
      id="resourceFrame"
      class="video-frame">
    </iframe>

    <br><br>

    <button
      class="btn btn-primary"
      style="width:100%"
      onclick="openResourceExternal()">
      🔗 فتح في نافذة جديدة
    </button>

  </div>
</div>


<!-- الاختبار -->

<div class="modal" id="examModal">

  <div class="modal-box exam-box">

    <button class="close" onclick="closeExam()">×</button>

    <div id="examContent"></div>

  </div>

</div>


<script>

/* =========================
   SUPABASE
========================= */

const SUPABASE_URL =
  "https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
  "sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


let accessToken =
  localStorage.getItem("minbar_access_token") || "";

let currentStudent =
  JSON.parse(localStorage.getItem("minbar_student") || "null");


/* =========================
   أدوات
========================= */

function safe(value){
  if(value === null || value === undefined){
    return "";
  }

  return String(value)
    .replace(/&/g,"&amp;")
    .replace(/</g,"&lt;")
    .replace(/>/g,"&gt;")
    .replace(/"/g,"&quot;")
    .replace(/'/g,"&#039;");
}


async function supabaseRequest(
  endpoint,
  options={}
){

  const headers = {
    "apikey":SUPABASE_KEY,
    "Content-Type":"application/json",
    ...(options.headers || {})
  };

  if(accessToken){
    headers["Authorization"] =
      "Bearer " + accessToken;
  }

  const response =
    await fetch(
      SUPABASE_URL + endpoint,
      {
        ...options,
        headers
      }
    );

  const text =
    await response.text();

  let data = null;

  try{
    data = text ? JSON.parse(text) : null;
  }catch{
    data = text;
  }

  if(!response.ok){
    throw new Error(
      data?.message ||
      data?.error_description ||
      data?.hint ||
      "حدث خطأ"
    );
  }

  return data;
}


async function getTable(table){

  return await supabaseRequest(
    "/rest/v1/" +
    table +
    "?select=*"
  );

}


/* =========================
   الفيديو
========================= */

function getYoutubeId(url){

  if(!url) return null;

  const patterns = [

    /youtu\.be\/([^?&/]+)/,

    /youtube\.com\/watch\?v=([^?&]+)/,

    /youtube\.com\/embed\/([^?&/]+)/,

    /youtube\.com\/shorts\/([^?&/]+)/

  ];

  for(const pattern of patterns){

    const match =
      String(url).match(pattern);

    if(match){
      return match[1];
    }

  }

  return null;
}


function getVideoCover(url){

  const id =
    getYoutubeId(url);

  if(id){

    return "https://img.youtube.com/vi/" +
      id +
      "/maxresdefault.jpg";

  }

  return "";
}


function getYoutubeEmbed(url){

  const id =
    getYoutubeId(url);

  if(!id) return "";

  return "https://www.youtube.com/embed/" +
    id +
    "?rel=0";
}


function openVideo(url,title){

  const embed =
    getYoutubeEmbed(url);

  if(!embed){

    window.open(url,"_blank");
    return;

  }

  document.getElementById("videoTitle")
    .textContent =
    title || "الحصة";

  document.getElementById("videoFrame")
    .src = embed;

  document.getElementById("videoModal")
    .classList.add("show");
}


function closeVideo(){

  document.getElementById("videoFrame")
    .src = "";

  document.getElementById("videoModal")
    .classList.remove("show");
}


/* =========================
   الموارد
========================= */

let currentResourceUrl = "";


function openResource(url,title){

  if(!url){

    alert("لا يوجد رابط لهذا المورد.");
    return;

  }

  currentResourceUrl = url;

  document.getElementById("resourceTitle")
    .textContent =
    title || "المورد";

  document.getElementById("resourceFrame")
    .src = url;

  document.getElementById("resourceModal")
    .classList.add("show");
}


function openResourceExternal(){

  if(currentResourceUrl){
    window.open(
      currentResourceUrl,
      "_blank"
    );
  }

}


function closeResource(){

  document.getElementById("resourceFrame")
    .src = "";

  document.getElementById("resourceModal")
    .classList.remove("show");
}


/* =========================
   الدروس
========================= */

let lessonsData = [];


async function loadLessons(){

  const container =
    document.getElementById(
      "lessonsContainer"
    );

  try{

    lessonsData =
      await getTable("lessons");

    lessonsData =
      lessonsData.sort(
        (a,b)=>
          new Date(b.created_at || 0) -
          new Date(a.created_at || 0)
      );

    renderLessons(lessonsData);

    document.getElementById("lessonsCount")
      .textContent =
      lessonsData.length;

  }catch(error){

    console.error(error);

    container.innerHTML =
      `<div class="empty">
        ❌ تعذر تحميل الحصص
      </div>`;

  }

}


function renderLessons(data){

  const container =
    document.getElementById(
      "lessonsContainer"
    );

  if(!data.length){

    container.innerHTML =
      `<div class="empty">
        لا توجد حصص حتى الآن.
      </div>`;

    return;
  }

  container.innerHTML =
    data.map(lesson => {

      const cover =
        getVideoCover(
          lesson.video_url
        );

      const coverHtml =
        cover
        ?
        `<img
          src="${cover}"
          alt="${safe(lesson.title)}"
          onerror="this.src='https://images.unsplash.com/photo-1635070041078-e363dbe005cb?auto=format&fit=crop&w=1200&q=80'"
        >`
        :
        `<img
          src="https://images.unsplash.com/photo-1635070041078-e363dbe005cb?auto=format&fit=crop&w=1200&q=80"
          alt="رياضيات"
        >`;

      return `

        <article class="lesson-card">

          <div
            class="lesson-cover"
            onclick="openVideo(
              '${safe(lesson.video_url)}',
              '${safe(lesson.title)}'
            )"
            style="cursor:pointer"
          >

            ${coverHtml}

            <div class="cover-overlay"></div>

            <div class="play-button">
              ▶
            </div>

            ${
              lesson.duration
              ?
              `<div class="duration">
                ⏱ ${safe(lesson.duration)}
              </div>`
              :
              ""
            }

          </div>

          <div class="lesson-info">

            <h3>
              ${safe(lesson.title)}
            </h3>

            <p>
              ${
                safe(
                  lesson.description ||
                  "شاهد شرح الحصة وتعلم بطريقة سهلة ومبسطة."
                )
              }
            </p>

            <div class="meta">

              <span class="unit">
                📘 ${safe(lesson.unit || "رياضيات")}
              </span>

              <span>
                🎥 فيديو
              </span>

            </div>

          </div>

        </article>

      `;

    }).join("");

}


/* =========================
   الملخصات
========================= */

let summariesData = [];


async function loadSummaries(){

  const container =
    document.getElementById(
      "summariesContainer"
    );

  try{

    summariesData =
      await getTable("summaries");

    summariesData =
      summariesData.sort(
        (a,b)=>
          new Date(b.created_at || 0) -
          new Date(a.created_at || 0)
      );

    container.innerHTML =
      summariesData.length
      ?
      summariesData.map(item => `

        <article class="resource-card">

          <div class="resource-icon">
            📚
          </div>

          <h3>
            ${safe(item.title)}
          </h3>

          <p>
            ${
              safe(
                item.description ||
                "ملخص مفيد للمراجعة."
              )
            }
          </p>

          <button
            class="btn btn-primary"
            onclick="openResource(
              '${safe(item.file_url)}',
              '${safe(item.title)}'
            )"
          >
            📖 فتح الملخص
          </button>

        </article>

      `).join("")
      :
      `<div class="empty">
        لا توجد ملخصات حتى الآن.
      </div>`;

    document.getElementById("summariesCount")
      .textContent =
      summariesData.length;

  }catch(error){

    console.error(error);

    container.innerHTML =
      `<div class="empty">
        ❌ تعذر تحميل الملخصات
      </div>`;

  }

}


/* =========================
   الاختبارات
========================= */

let testsData = [];


async function loadTests(){

  const container =
    document.getElementById(
      "testsContainer"
    );

  try{

    testsData =
      await getTable("tests");

    testsData =
      testsData.sort(
        (a,b)=>
          new Date(b.created_at || 0) -
          new Date(a.created_at || 0)
      );

    renderTests(testsData);

    document.getElementById("testsCount")
      .textContent =
      testsData.length;

  }catch(error){

    console.error(error);

    container.innerHTML =
      `<div class="empty">
        ❌ تعذر تحميل الاختبارات
      </div>`;

  }

}


function renderTests(data){

  const container =
    document.getElementById(
      "testsContainer"
    );

  if(!data.length){

    container.innerHTML =
      `<div class="empty">
        لا توجد اختبارات حتى الآن.
      </div>`;

    return;
  }

  container.innerHTML =
    data.map(test => `

      <article class="resource-card">

        <div class="resource-icon">
          📝
        </div>

        <h3>
          ${safe(test.title)}
        </h3>

        <p>
          ${
            safe(
              test.description ||
              "اختبار لقياس مدى فهمك للدرس."
            )
          }
        </p>

        <div class="meta">
          <span>
            ❓ ${
              test.questions_count ??
              "أسئلة متعددة"
            }
          </span>

          <span>
            🎯 اختبار
          </span>
        </div>

        <button
          class="btn btn-primary"
          style="width:100%;margin-top:18px"
          onclick="openExam(${Number(test.id)})"
        >
          🚀 بدء الاختبار
        </button>

      </article>

    `).join("");

}


/* =========================
   الاختبار الحقيقي
========================= */

let currentExam = null;
let currentQuestionIndex = 0;
let examAnswers = [];


async function openExam(testId){

  const test =
    testsData.find(
      t => Number(t.id) === Number(testId)
    );

  if(!test){

    alert("لم يتم العثور على الاختبار.");
    return;

  }

  document.getElementById("examModal")
    .classList.add("show");

  document.getElementById("examContent")
    .innerHTML =
    `<div class="loading">
      ⏳ جاري تحميل أسئلة الاختبار...
    </div>`;

  try{

    const questions =
      await supabaseRequest(
        "/rest/v1/test_questions" +
        "?select=*" +
        "&test_id=eq." +
        Number(testId) +
        "&order=question_order.asc"
      );

    if(!questions.length){

      document.getElementById("examContent")
        .innerHTML =
        `<div class="empty">
          ⚠️ لا توجد أسئلة لهذا الاختبار حتى الآن.
        </div>`;

      return;
    }

    currentExam = {
      test,
      questions
    };

    currentQuestionIndex = 0;

    examAnswers =
      new Array(questions.length)
        .fill(null);

    renderExamQuestion();

  }catch(error){

    console.error(error);

    document.getElementById("examContent")
      .innerHTML =
      `<div class="empty">
        ❌ حدث خطأ أثناء تحميل الأسئلة.
        <br><br>
        ${safe(error.message)}
      </div>`;

  }

}


function renderExamQuestion(){

  if(!currentExam) return;

  const questions =
    currentExam.questions;

  const q =
    questions[currentQuestionIndex];

  const number =
    currentQuestionIndex + 1;

  const total =
    questions.length;

  const progress =
    (number / total) * 100;

  const selected =
    examAnswers[currentQuestionIndex];

  document.getElementById("examContent")
    .innerHTML = `

      <div class="exam-header">

        <div>
          <h2>
            📝 ${safe(currentExam.test.title)}
          </h2>

          <p style="color:var(--muted);margin-top:7px">
            السؤال ${number} من ${total}
          </p>
        </div>

      </div>

      <div class="progress">
        <div
          class="progress-bar"
          style="width:${progress}%"
        ></div>
      </div>

      <div class="exam-question">
        ${safe(q.question_text)}
      </div>

      <div class="exam-options">

        ${examOption("a",q.option_a,selected)}
        ${examOption("b",q.option_b,selected)}
        ${examOption("c",q.option_c,selected)}
        ${examOption("d",q.option_d,selected)}

      </div>

      <div class="exam-actions">

        <button
          class="btn"
          onclick="previousExamQuestion()"
          ${number === 1 ? "disabled" : ""}
        >
          ← السابق
        </button>

        ${
          number < total
          ?
          `<button
            class="btn btn-primary"
            onclick="nextExamQuestion()"
          >
            التالي →
          </button>`
          :
          `<button
            class="btn btn-primary"
            onclick="finishExam()"
          >
            🏆 إنهاء الاختبار
          </button>`
        }

      </div>
    `;

}


function examOption(letter,text,selected){

  return `
    <button
      class="exam-option ${
        selected === letter
        ? "selected"
        : ""
      }"
      onclick="selectExamAnswer('${letter}')"
    >
      <strong>
        ${letter.toUpperCase()})
      </strong>
      ${safe(text)}
    </button>
  `;

}


function selectExamAnswer(letter){

  examAnswers[currentQuestionIndex] =
    letter;

  renderExamQuestion();

}


function nextExamQuestion(){

  if(!currentExam) return;

  if(
    !examAnswers[currentQuestionIndex]
  ){

    alert("اختر إجابة أولًا.");
    return;

  }

  if(
    currentQuestionIndex <
    currentExam.questions.length - 1
  ){

    currentQuestionIndex++;

    renderExamQuestion();

  }

}


function previousExamQuestion(){

  if(currentQuestionIndex > 0){

    currentQuestionIndex--;

    renderExamQuestion();

  }

}


/* =========================
   تصحيح الإجابات
========================= */

function normalizeCorrectAnswer(value,q){

  const s =
    String(value || "")
      .trim()
      .toLowerCase();

  if(["a","b","c","d"].includes(s)){
    return s;
  }

  if(
    ["option_a","option a","a)"].includes(s)
  ){
    return "a";
  }

  if(
    ["option_b","option b","b)"].includes(s)
  ){
    return "b";
  }

  if(
    ["option_c","option c","c)"].includes(s)
  ){
    return "c";
  }

  if(
    ["option_d","option d","d)"].includes(s)
  ){
    return "d";
  }

  const values = {
    a:String(q.option_a || "")
      .trim()
      .toLowerCase(),

    b:String(q.option_b || "")
      .trim()
      .toLowerCase(),

    c:String(q.option_c || "")
      .trim()
      .toLowerCase(),

    d:String(q.option_d || "")
      .trim()
      .toLowerCase()
  };

  if(s === values.a) return "a";
  if(s === values.b) return "b";
  if(s === values.c) return "c";
  if(s === values.d) return "d";

  return s;
}


function finishExam(){

  if(!currentExam) return;

  const questions =
    currentExam.questions;

  const unanswered =
    examAnswers.filter(
      answer => !answer
    ).length;

  if(unanswered > 0){

    const proceed =
      confirm(
        `لديك ${unanswered} سؤال بدون إجابة. هل تريد إنهاء الاختبار؟`
      );

    if(!proceed) return;

  }

  let score = 0;

  questions.forEach((q,index)=>{

    const correct =
      normalizeCorrectAnswer(
        q.correct_answer,
        q
      );

    if(
      examAnswers[index] === correct
    ){
      score++;
    }

  });

  const total =
    questions.length;

  const percentage =
    Math.round(
      (score / total) * 100
    );

  let message = "";

  if(percentage >= 90){
    message =
      "🔥 ممتاز جدًا! أداء رائع.";
  }
  else if(percentage >= 75){
    message =
      "👏 ممتاز! استمر بهذا المستوى.";
  }
  else if(percentage >= 50){
    message =
      "💪 جيد، لكن يمكنك الوصول لأفضل.";
  }
  else{
    message =
      "📚 لا بأس، راجع الدروس وحاول مرة أخرى.";
  }

  document.getElementById("examContent")
    .innerHTML = `

      <div class="result">

        <div style="font-size:60px">
          🏆
        </div>

        <h2>
          انتهى الاختبار!
        </h2>

        <div class="result-score">
          ${percentage}%
        </div>

        <h3>
          ${score} من ${total}
        </h3>

        <p
          style="
            color:var(--muted);
            font-size:18px;
            margin:18px 0 25px;
          "
        >
          ${message}
        </p>

        <button
          class="btn btn-primary"
          onclick="retryExam()"
        >
          🔄 إعادة الاختبار
        </button>

        <button
          class="btn"
          onclick="closeExam()"
          style="margin-right:8px"
        >
          إغلاق
        </button>

      </div>
    `;

}


function retryExam(){

  if(!currentExam) return;

  currentQuestionIndex = 0;

  examAnswers =
    new Array(
      currentExam.questions.length
    ).fill(null);

  renderExamQuestion();

}


function closeExam(){

  currentExam = null;

  document.getElementById("examModal")
    .classList.remove("show");

}


/* =========================
   الغرف
========================= */

let roomsData = [];


async function loadRooms(){

  const container =
    document.getElementById(
      "roomsContainer"
    );

  try{

    roomsData =
      await getTable("rooms");

    roomsData =
      roomsData.sort(
        (a,b)=>
          new Date(b.created_at || 0) -
          new Date(a.created_at || 0)
      );

    container.innerHTML =
      roomsData.length
      ?
      roomsData.map(room => `

        <article class="resource-card">

          <div class="resource-icon">
            💬
          </div>

          <h3>
            ${safe(room.name)}
          </h3>

          <p>
            ${
              safe(
                room.description ||
                "غرفة تعليمية."
              )
            }
          </p>

          <button
            class="btn btn-primary"
            style="width:100%"
            onclick="openRoom(
              '${safe(room.room_link)}'
            )"
          >
            🚪 دخول الغرفة
          </button>

        </article>

      `).join("")
      :
      `<div class="empty">
        لا توجد غرف حتى الآن.
      </div>`;

    document.getElementById("roomsCount")
      .textContent =
      roomsData.length;

  }catch(error){

    console.error(error);

    container.innerHTML =
      `<div class="empty">
        ❌ تعذر تحميل الغرف
      </div>`;

  }

}


function openRoom(url){

  if(!url){

    alert("لا يوجد رابط للغرفة.");
    return;

  }

  window.open(
    url,
    "_blank"
  );

}


/* =========================
   البحث
========================= */

function searchEverything(){

  const query =
    document.getElementById(
      "searchInput"
    ).value
      .trim()
      .toLowerCase();

  if(!query){

    renderLessons(lessonsData);
    renderTests(testsData);

    return;

  }

  const lessonResults =
    lessonsData.filter(item =>
      (
        String(item.title || "") +
        " " +
        String(item.description || "") +
        " " +
        String(item.unit || "")
      )
      .toLowerCase()
      .includes(query)
    );

  const summaryResults =
    summariesData.filter(item =>
      (
        String(item.title || "") +
        " " +
        String(item.description || "")
      )
      .toLowerCase()
      .includes(query)
    );

  const testResults =
    testsData.filter(item =>
      (
        String(item.title || "") +
        " " +
        String(item.description || "")
      )
      .toLowerCase()
      .includes(query)
    );

  renderLessons(lessonResults);
  renderTests(testResults);

  const summariesContainer =
    document.getElementById(
      "summariesContainer"
    );

  summariesContainer.innerHTML =
    summaryResults.length
    ?
    summaryResults.map(item => `

      <article class="resource-card">

        <div class="resource-icon">
          📚
        </div>

        <h3>
          ${safe(item.title)}
        </h3>

        <p>
          ${safe(item.description || "")}
        </p>

        <button
          class="btn btn-primary"
          onclick="openResource(
            '${safe(item.file_url)}',
            '${safe(item.title)}'
          )"
        >
          📖 فتح الملخص
        </button>

      </article>

    `).join("")
    :
    `<div class="empty">
      لا توجد نتائج للبحث.
    </div>`;

}


/* =========================
   تسجيل الطالب
========================= */

function openLogin(){

  document.getElementById("loginModal")
    .classList.add("show");

}


function closeLogin(){

  document.getElementById("loginModal")
    .classList.remove("show");

}


function showAuthMessage(message){

  document.getElementById("authMessage")
    .textContent =
    message;

}


async function loginStudent(){

  const email =
    document.getElementById(
      "studentEmail"
    ).value.trim();

  const password =
    document.getElementById(
      "studentPassword"
    ).value;

  if(!email || !password){

    showAuthMessage(
      "⚠️ أدخل البريد وكلمة المرور."
    );

    return;

  }

  showAuthMessage(
    "⏳ جاري تسجيل الدخول..."
  );

  try{

    const data =
      await supabaseRequest(
        "/auth/v1/token?grant_type=password",
        {
          method:"POST",
          body:JSON.stringify({
            email,
            password
          })
        }
      );

    accessToken =
      data.access_token;

    localStorage.setItem(
      "minbar_access_token",
      accessToken
    );

    let name =
      document.getElementById(
        "studentName"
      ).value.trim();

    if(!name){
      name = email.split("@")[0];
    }

    currentStudent = {
      name,
      email
    };

    localStorage.setItem(
      "minbar_student",
      JSON.stringify(currentStudent)
    );

    updateUserInterface();

    closeLogin();

    alert("🎉 تم تسجيل الدخول بنجاح!");

  }catch(error){

    console.error(error);

    showAuthMessage(
      "❌ " +
      error.message
    );

  }

}


async function signupStudent(){

  const name =
    document.getElementById(
      "studentName"
    ).value.trim();

  const email =
    document.getElementById(
      "studentEmail"
    ).value.trim();

  const password =
    document.getElementById(
      "studentPassword"
    ).value;

  if(!name || !email || !password){

    showAuthMessage(
      "⚠️ املأ جميع البيانات."
    );

    return;

  }

  if(password.length < 6){

    showAuthMessage(
      "⚠️ كلمة المرور يجب أن تكون 6 أحرف على الأقل."
    );

    return;

  }

  showAuthMessage(
    "⏳ جاري إنشاء الحساب..."
  );

  try{

    const data =
      await supabaseRequest(
        "/auth/v1/signup",
        {
          method:"POST",
          body:JSON.stringify({
            email,
            password,
            data:{
              name
            }
          })
        }
      );

    if(data.access_token){

      accessToken =
        data.access_token;

      localStorage.setItem(
        "minbar_access_token",
        accessToken
      );

      currentStudent = {
        name,
        email
      };

      localStorage.setItem(
        "minbar_student",
        JSON.stringify(currentStudent)
      );

      updateUserInterface();

      closeLogin();

      alert(
        "🎉 تم إنشاء الحساب وتسجيل الدخول!"
      );

    }else{

      showAuthMessage(
        "✅ تم إنشاء الحساب. إذا طلب منك Supabase تأكيد البريد الإلكتروني، قم بتأكيده ثم سجل الدخول."
      );

    }

  }catch(error){

    console.error(error);

    showAuthMessage(
      "❌ " +
      error.message
    );

  }

}


async function logoutStudent(){

  try{

    if(accessToken){

      await supabaseRequest(
        "/auth/v1/logout",
        {
          method:"POST"
        }
      );

    }

  }catch(error){

    console.log(error);

  }

  accessToken = "";
  currentStudent = null;

  localStorage.removeItem(
    "minbar_access_token"
  );

  localStorage.removeItem(
    "minbar_student"
  );

  updateUserInterface();

}


function updateUserInterface(){

  const loginBtn =
    document.getElementById(
      "loginBtn"
    );

  const logoutBtn =
    document.getElementById(
      "logoutBtn"
    );

  const userBox =
    document.getElementById(
      "userBox"
    );

  const userName =
    document.getElementById(
      "userName"
    );

  if(currentStudent){

    loginBtn.style.display =
      "none";

    logoutBtn.style.display =
      "block";

    userBox.style.display =
      "flex";

    userName.textContent =
      currentStudent.name ||
      currentStudent.email;

  }else{

    loginBtn.style.display =
      "block";

    logoutBtn.style.display =
      "none";

    userBox.style.display =
      "none";

  }

}


/* =========================
   تحدي اليوم
========================= */

const challenges = [

  {
    q:"إذا كان 3 × 4 = ؟",
    options:["7","12","14","16"],
    answer:1
  },

  {
    q:"ما قيمة 5² ؟",
    options:["10","15","20","25"],
    answer:3
  },

  {
    q:"إذا كان x + 7 = 12 فإن x = ؟",
    options:["3","4","5","6"],
    answer:2
  },

  {
    q:"ما قيمة √49 ؟",
    options:["6","7","8","9"],
    answer:1
  },

  {
    q:"مجموع زوايا المثلث يساوي؟",
    options:["90°","180°","270°","360°"],
    answer:1
  },

  {
    q:"ما قيمة 10 ÷ 2 ؟",
    options:["2","5","8","10"],
    answer:1
  }

];


let challengeIndex =
  new Date().getDate()
  %
  challenges.length;

let challengeAnswered = false;


function loadChallenge(){

  const challenge =
    challenges[challengeIndex];

  document.getElementById(
    "challengeContent"
  ).innerHTML = `

    <div style="color:var(--secondary)">
      ⚡ تحدي سريع
    </div>

    <div class="challenge-question">
      ${challenge.q}
    </div>

    <div class="challenge-options">

      ${challenge.options.map(
        (option,index)=>`

          <button
            class="option"
            onclick="answerChallenge(${index})"
          >
            ${String.fromCharCode(65+index)})
            ${option}
          </button>

      `).join("")}

    </div>

    <div
      id="challengeResult"
      style="margin-top:20px;font-size:18px"
    ></div>
  `;

}


function answerChallenge(index){

  if(challengeAnswered) return;

  challengeAnswered = true;

  const challenge =
    challenges[challengeIndex];

  const result =
    document.getElementById(
      "challengeResult"
    );

  if(index === challenge.answer){

    result.innerHTML =
      "🎉 إجابة صحيحة! أحسنت.";

  }else{

    result.innerHTML =
      "💡 إجابة غير صحيحة. حاول مراجعة الفكرة.";

  }

}


/* =========================
   أدوات
========================= */

function scrollToSection(id){

  const element =
    document.getElementById(id);

  if(element){

    element.scrollIntoView({
      behavior:"smooth"
    });

  }

}


/* =========================
   بدء الموقع
========================= */

async function startSite(){

  updateUserInterface();

  loadChallenge();

  await Promise.allSettled([
    loadLessons(),
    loadSummaries(),
    loadTests(),
    loadRooms()
  ]);

}


startSite();


/* إغلاق المودالات عند الضغط خارجها */

document.querySelectorAll(".modal")
  .forEach(modal => {

    modal.addEventListener(
      "click",
      function(e){

        if(e.target === modal){

          modal.classList.remove(
            "show"
          );

        }

      }
    );

  });

</script>

</body>
</html>
