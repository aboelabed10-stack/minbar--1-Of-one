<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta name="theme-color" content="#071126">
<title>منبر ون | منصة الرياضيات</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
:root{
  --bg:#050917;--bg2:#0a1230;--card:#101a3d;--card2:#151f49;
  --text:#fff;--muted:#aeb9d9;--primary:#7658ff;--cyan:#18d9ff;
  --pink:#ff4fd0;--green:#27e49b;--orange:#ffad42;--red:#ff6678;
  --border:rgba(255,255,255,.10);--shadow:0 24px 70px rgba(0,0,0,.35)
}
html{scroll-behavior:smooth}
body{
  font-family:Arial,"Tahoma",sans-serif;color:var(--text);min-height:100vh;
  background:
    radial-gradient(circle at 8% 8%,rgba(118,88,255,.20),transparent 27%),
    radial-gradient(circle at 92% 18%,rgba(24,217,255,.12),transparent 25%),
    radial-gradient(circle at 50% 95%,rgba(255,79,208,.08),transparent 28%),
    linear-gradient(135deg,var(--bg),#080e25 52%,#101a3c);
  overflow-x:hidden
}
body.locked{overflow:hidden}
body.modal-open{overflow:hidden}
button,input{font-family:inherit}
button{cursor:pointer;border:0}
a{text-decoration:none;color:inherit}
.hidden{display:none!important}

.math-bg{position:fixed;inset:0;pointer-events:none;overflow:hidden;z-index:-1}
.math-bg span{position:absolute;color:rgba(255,255,255,.035);font-size:48px;animation:float 14s infinite ease-in-out}
.math-bg span:nth-child(1){top:12%;left:4%}.math-bg span:nth-child(2){top:30%;left:91%;animation-delay:2s}
.math-bg span:nth-child(3){top:68%;left:9%;animation-delay:4s}.math-bg span:nth-child(4){top:80%;left:82%;animation-delay:1s}
.math-bg span:nth-child(5){top:52%;left:50%;animation-delay:5s}.math-bg span:nth-child(6){top:18%;left:64%;animation-delay:3s}
@keyframes float{0%,100%{transform:translateY(0) rotate(0)}50%{transform:translateY(-24px) rotate(10deg)}}

header{
  position:sticky;top:0;z-index:100;padding:10px 4%;
  background:rgba(5,9,23,.84);backdrop-filter:blur(18px);
  border-bottom:1px solid var(--border)
}
.nav{max-width:1450px;margin:auto;display:flex;align-items:center;justify-content:space-between;gap:15px}
.logo{display:flex;align-items:center;gap:9px}
.logo-icon{
  width:45px;height:45px;border-radius:14px;display:grid;place-items:center;
  font-size:24px;font-weight:bold;background:linear-gradient(135deg,var(--primary),var(--cyan));
  box-shadow:0 8px 26px rgba(118,88,255,.28)
}
.logo-text h1{font-size:20px}.logo-text span{color:var(--cyan);font-size:9px;letter-spacing:2px}
.nav-buttons{display:flex;align-items:center;gap:7px}
.btn{
  padding:10px 14px;border-radius:12px;color:#fff;background:rgba(255,255,255,.065);
  border:1px solid var(--border);font-weight:bold;transition:.25s;font-size:13px
}
.btn:hover{transform:translateY(-2px);background:rgba(255,255,255,.12)}
.btn-primary{background:linear-gradient(135deg,var(--primary),#a24cff);box-shadow:0 8px 25px rgba(118,88,255,.23)}
.btn-danger{background:rgba(255,102,120,.09);border-color:rgba(255,102,120,.22)}
.user-box{
  display:none;align-items:center;gap:7px;padding:8px 11px;border-radius:11px;
  background:rgba(39,228,155,.07);border:1px solid rgba(39,228,155,.18);font-size:12px
}
.points-mini{color:#ffd86b;font-weight:bold}

.container{width:min(1400px,92%);margin:auto}
.hero{
  min-height:535px;display:grid;grid-template-columns:1.08fr .92fr;align-items:center;
  gap:45px;padding:60px 0 30px
}
.hero-badge{
  display:inline-flex;padding:8px 13px;border-radius:50px;background:rgba(118,88,255,.10);
  border:1px solid rgba(118,88,255,.27);color:#dcd5ff;margin-bottom:19px;font-size:13px
}
.hero h2{font-size:clamp(40px,6vw,73px);line-height:1.08;margin-bottom:18px}
.gradient-text{background:linear-gradient(90deg,#fff,var(--cyan),#a98cff,var(--pink));-webkit-background-clip:text;color:transparent}
.hero p{color:var(--muted);font-size:17px;line-height:1.9;max-width:660px}
.hero-buttons{display:flex;gap:10px;margin-top:25px;flex-wrap:wrap}
.hero-card{
  position:relative;min-height:370px;border-radius:31px;
  background:radial-gradient(circle at 50% 20%,rgba(118,88,255,.28),transparent 37%),linear-gradient(145deg,#151f48,#080e22);
  border:1px solid var(--border);box-shadow:var(--shadow);display:flex;align-items:center;justify-content:center;overflow:hidden
}
.hero-equation{
  font-size:100px;font-weight:bold;background:linear-gradient(135deg,var(--cyan),var(--primary),var(--pink));
  -webkit-background-clip:text;color:transparent;filter:drop-shadow(0 0 28px rgba(118,88,255,.3))
}
.hero-orbit{position:absolute;width:265px;height:265px;border:1px solid rgba(255,255,255,.09);border-radius:50%;animation:spin 18s linear infinite}
.hero-orbit:after{content:"✦";position:absolute;top:-13px;left:50%;font-size:22px;color:var(--cyan)}
.hero-orbit:before{content:"π";position:absolute;bottom:8px;right:7px;color:rgba(255,255,255,.15);font-size:26px}
@keyframes spin{to{transform:rotate(360deg)}}

.dashboard-strip{
  display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin:8px 0 35px
}
.strip-card{
  padding:15px 17px;border:1px solid var(--border);border-radius:17px;
  background:linear-gradient(145deg,rgba(255,255,255,.06),rgba(255,255,255,.025));
  display:flex;align-items:center;justify-content:space-between;gap:12px
}
.strip-card strong{font-size:23px}.strip-card span{color:var(--muted);font-size:12px}

.search-wrap{margin:15px 0 50px;position:relative}
.search{
  width:100%;padding:17px 53px 17px 18px;border-radius:18px;border:1px solid var(--border);
  background:rgba(255,255,255,.055);color:#fff;outline:none;font-size:16px
}
.search::placeholder{color:#7f8aab}.search:focus{border-color:var(--primary);box-shadow:0 0 25px rgba(118,88,255,.12)}
.search-icon{position:absolute;right:18px;top:50%;transform:translateY(-50%);font-size:21px}
.search-result-info{margin-top:-37px;margin-bottom:30px;color:var(--muted);font-size:13px;display:none}

.section{margin:64px 0}
.section-title{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:22px}
.section-title h2{font-size:29px}.section-title p{color:var(--muted);margin-top:7px;font-size:13px}

.categories{display:grid;grid-template-columns:repeat(4,1fr);gap:15px}
.category{
  min-height:145px;padding:21px;border-radius:21px;border:1px solid var(--border);
  background:linear-gradient(145deg,rgba(255,255,255,.075),rgba(255,255,255,.025));
  transition:.3s;position:relative;overflow:hidden;cursor:pointer
}
.category:hover{transform:translateY(-6px);border-color:rgba(255,255,255,.23)}
.category:after{content:"";position:absolute;width:100px;height:100px;border-radius:50%;filter:blur(35px);opacity:.15;left:-35px;bottom:-50px}
.cat-purple:after{background:var(--primary)}.cat-blue:after{background:var(--cyan)}.cat-green:after{background:var(--green)}.cat-orange:after{background:var(--orange)}
.category-icon{font-size:28px;margin-bottom:12px}.category h3{font-size:19px;margin-bottom:6px}.category p{color:var(--muted);font-size:13px}
.cat-purple{box-shadow:inset 0 -3px 0 var(--primary)}.cat-blue{box-shadow:inset 0 -3px 0 var(--cyan)}
.cat-green{box-shadow:inset 0 -3px 0 var(--green)}.cat-orange{box-shadow:inset 0 -3px 0 var(--orange)}

.cards{display:grid;grid-template-columns:repeat(3,1fr);gap:20px}
.lesson-card,.resource-card{
  background:linear-gradient(145deg,#131d41,#0c1430);border:1px solid var(--border);
  border-radius:21px;overflow:hidden;transition:.3s;box-shadow:0 12px 35px rgba(0,0,0,.17)
}
.lesson-card:hover,.resource-card:hover{transform:translateY(-6px);border-color:rgba(118,88,255,.43);box-shadow:0 20px 55px rgba(0,0,0,.27)}
.lesson-cover{height:210px;position:relative;overflow:hidden;background:linear-gradient(135deg,#202a55,#10162e)}
.lesson-cover img{width:100%;height:100%;object-fit:cover;display:block;transition:.5s}
.lesson-card:hover .lesson-cover img{transform:scale(1.05)}
.cover-overlay{position:absolute;inset:0;background:linear-gradient(to top,rgba(4,7,18,.88),rgba(4,7,18,.04) 68%)}
.play-button{
  position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);
  width:61px;height:61px;border-radius:50%;display:grid;place-items:center;
  background:rgba(118,88,255,.92);border:2px solid rgba(255,255,255,.78);color:#fff;
  font-size:23px;box-shadow:0 0 28px rgba(118,88,255,.5);transition:.25s
}
.lesson-card:hover .play-button{transform:translate(-50%,-50%) scale(1.08)}
.duration{position:absolute;bottom:11px;left:11px;padding:5px 8px;border-radius:7px;background:rgba(0,0,0,.68);font-size:11px}
.lesson-info{padding:18px}.lesson-info h3{font-size:19px;margin-bottom:8px}.lesson-info p{color:var(--muted);line-height:1.65;min-height:45px;font-size:13px}
.meta{display:flex;justify-content:space-between;gap:10px;margin-top:14px;color:#cbd3ed;font-size:11px}.unit{color:var(--cyan)}
.watch-progress{margin-top:13px}.watch-progress-head{display:flex;justify-content:space-between;color:#8793b5;font-size:10px;margin-bottom:5px}
.mini-progress{height:5px;background:rgba(255,255,255,.07);border-radius:10px;overflow:hidden}.mini-progress i{display:block;height:100%;background:linear-gradient(90deg,var(--primary),var(--cyan));width:0}

.resource-card{padding:20px}.resource-icon{font-size:29px;margin-bottom:12px}.resource-card h3{font-size:18px;margin-bottom:8px}.resource-card p{color:var(--muted);line-height:1.65;font-size:13px;min-height:44px}.resource-card .btn{margin-top:14px;width:100%}
.card-badge{display:inline-block;font-size:10px;padding:5px 8px;border-radius:20px;background:rgba(24,217,255,.08);color:#77eaff;margin-bottom:9px}

.challenge{
  background:radial-gradient(circle at 90% 10%,rgba(255,79,208,.16),transparent 30%),linear-gradient(135deg,#17143c,#101a3e);
  border:1px solid rgba(118,88,255,.28);border-radius:27px;padding:28px
}
.challenge-top{display:flex;align-items:center;justify-content:space-between;gap:10px;flex-wrap:wrap}
.challenge-tag{font-size:12px;color:#d9d2ff}.challenge-points{color:#ffd86b;font-weight:bold;font-size:13px}
.challenge-question{font-size:23px;margin:18px 0;line-height:1.75}
.challenge-options{display:grid;grid-template-columns:repeat(2,1fr);gap:10px}
.option{padding:14px;border-radius:13px;color:white;background:rgba(255,255,255,.055);border:1px solid var(--border);text-align:right;transition:.2s}
.option:hover{background:rgba(118,88,255,.14);border-color:var(--primary)}
.option.correct{border-color:var(--green);background:rgba(39,228,155,.12)}.option.wrong{border-color:var(--red);background:rgba(255,102,120,.10)}
.challenge-nav{display:flex;justify-content:space-between;align-items:center;margin-top:17px;gap:10px}
.challenge-progress{height:7px;background:rgba(255,255,255,.07);border-radius:20px;overflow:hidden;margin-top:17px}
.challenge-progress i{display:block;height:100%;background:linear-gradient(90deg,var(--primary),var(--cyan));width:20%;transition:.3s}

.stats{display:grid;grid-template-columns:repeat(4,1fr);gap:14px}
.stat{text-align:center;padding:21px;border-radius:20px;background:rgba(255,255,255,.045);border:1px solid var(--border)}
.stat strong{display:block;font-size:32px;margin-bottom:6px;background:linear-gradient(90deg,var(--cyan),var(--primary));-webkit-background-clip:text;color:transparent}.stat span{color:var(--muted);font-size:13px}

.modal{position:fixed;inset:0;background:rgba(0,0,0,.83);backdrop-filter:blur(11px);display:none;align-items:center;justify-content:center;padding:12px;z-index:500}
.modal.show{display:flex}
.modal-box{width:min(900px,100%);max-height:92vh;overflow:auto;background:#0c1430;border:1px solid var(--border);border-radius:23px;padding:22px;position:relative;box-shadow:0 25px 90px rgba(0,0,0,.55)}
.close{position:absolute;top:12px;left:12px;width:37px;height:37px;border-radius:50%;color:#fff;background:rgba(255,255,255,.10);font-size:21px;z-index:5}
.video-frame{width:100%;aspect-ratio:16/9;border:0;border-radius:15px;margin-top:19px;background:#050812}
.pdf-frame{width:100%;height:68vh;border:0;border-radius:15px;margin-top:18px;background:#fff}
.modal-actions{display:flex;gap:9px;flex-wrap:wrap;margin-top:13px}.modal-actions .btn{flex:1;min-width:140px}
.auth-box{width:min(450px,100%)}.auth-box h2{font-size:26px;margin-bottom:9px}.auth-sub{color:var(--muted);font-size:13px;line-height:1.7;margin-bottom:15px}
.input{width:100%;padding:14px;border-radius:12px;background:rgba(255,255,255,.06);border:1px solid var(--border);color:white;outline:none;margin-bottom:10px;font-size:15px}
.auth-message{min-height:25px;margin:7px 0;color:var(--muted);line-height:1.6;font-size:13px}
.auth-message.error{color:#ff9aa6}.auth-message.success{color:#6ef0bb}.auth-message.info{color:#6cddff}
.login-note{margin-top:12px;color:#7f8aab;font-size:11px;line-height:1.6;text-align:center}

.exam-box{width:min(800px,100%)}.exam-header{display:flex;justify-content:space-between;gap:15px;align-items:center;margin-bottom:17px}
.exam-question{font-size:22px;line-height:1.8;margin-bottom:21px}.exam-options{display:grid;gap:10px}
.exam-option{width:100%;padding:16px;border-radius:14px;background:rgba(255,255,255,.05);border:1px solid var(--border);color:white;text-align:right;font-size:16px}
.exam-option:hover{background:rgba(118,88,255,.12)}.exam-option.selected{background:rgba(118,88,255,.24);border-color:var(--primary)}
.exam-actions{display:flex;justify-content:space-between;margin-top:22px;gap:10px}
.progress{height:8px;border-radius:20px;background:rgba(255,255,255,.08);overflow:hidden;margin-bottom:21px}.progress-bar{height:100%;background:linear-gradient(90deg,var(--primary),var(--cyan));width:0;transition:.3s}
.result{text-align:center;padding:28px 10px}.result-score{font-size:62px;font-weight:bold;margin:15px;background:linear-gradient(90deg,var(--cyan),var(--primary),var(--pink));-webkit-background-clip:text;color:transparent}
.points-result{color:#ffd86b;font-size:18px;margin-top:8px}

.video-points{
  margin-top:15px;padding:12px;border-radius:14px;background:rgba(39,228,155,.07);
  border:1px solid rgba(39,228,155,.15);display:flex;justify-content:space-between;gap:10px;align-items:center;
  color:#b9c7e6;font-size:12px
}
.video-points strong{color:#6ef0bb}

.loading{text-align:center;padding:29px;color:var(--muted);font-size:15px}
.empty{padding:27px;text-align:center;color:var(--muted);background:rgba(255,255,255,.03);border-radius:18px;border:1px dashed var(--border)}
.error-box{padding:19px;text-align:center;color:#ffd2d2;background:rgba(255,70,70,.07);border:1px solid rgba(255,70,70,.16);border-radius:18px;line-height:1.8}
.debug-line{font-size:10px;color:#8994b6;margin-top:6px;direction:ltr;word-break:break-word}

.lock-screen{
  position:fixed;inset:0;z-index:450;display:none;align-items:center;justify-content:center;padding:18px;
  background:radial-gradient(circle at 50% 25%,rgba(118,88,255,.18),transparent 35%),rgba(3,6,16,.94);backdrop-filter:blur(13px)
}
.lock-screen.show{display:flex}
.lock-card{width:min(520px,100%);text-align:center;padding:35px 25px;border-radius:28px;border:1px solid var(--border);background:linear-gradient(145deg,#111a3d,#090f27);box-shadow:var(--shadow)}
.lock-icon{font-size:45px;margin-bottom:13px}.lock-card h2{font-size:28px;margin-bottom:10px}.lock-card p{color:var(--muted);line-height:1.8;font-size:14px;margin-bottom:20px}
.lock-card .btn{min-width:190px}

footer{margin-top:90px;padding:35px 5%;text-align:center;color:var(--muted);border-top:1px solid var(--border);font-size:12px}

@media(max-width:1000px){
  .hero{grid-template-columns:1fr;text-align:center}.hero p{margin:auto}.hero-buttons{justify-content:center}
  .categories{grid-template-columns:repeat(2,1fr)}.cards{grid-template-columns:repeat(2,1fr)}.stats{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:650px){
  header{padding:8px 3%}.logo-text{display:none}.nav-buttons{margin-right:auto}.nav-buttons .btn{padding:8px 9px;font-size:10px}
  .user-box{font-size:10px;padding:7px 8px}.hero{padding-top:38px;min-height:auto}.hero h2{font-size:41px}.hero p{font-size:15px}
  .hero-card{min-height:260px;margin-top:8px}.hero-equation{font-size:74px}.categories,.cards,.stats,.dashboard-strip,.challenge-options{grid-template-columns:1fr}
  .section-title{display:block}.section-title h2{font-size:25px}.lesson-cover{height:205px}.modal{padding:7px}.modal-box{padding:16px}
  .exam-question{font-size:19px}.pdf-frame{height:67vh}.challenge-question{font-size:20px}
}
</style>
</head>
<body>

<div class="math-bg"><span>∑</span><span>π</span><span>√</span><span>∞</span><span>∫</span><span>∆</span></div>

<header>
  <div class="nav">
    <div class="logo">
      <div class="logo-icon">∑</div>
      <div class="logo-text"><h1>منبر ون</h1><span>MINBAR ONE • MATH</span></div>
    </div>
    <div class="nav-buttons">
      <div class="user-box" id="userBox">👨‍🎓 <span id="userName">طالب</span> <span class="points-mini">⭐ <b id="miniPoints">0</b></span></div>
      <a class="btn" href="teacher.html">⚙️ لوحة التحكم</a>
      <button class="btn btn-primary" id="loginBtn" onclick="openLogin()">👨‍🎓 دخول الطالب</button>
      <button class="btn btn-danger" id="logoutBtn" style="display:none" onclick="logoutStudent()">خروج</button>
    </div>
  </div>
</header>

<div class="lock-screen" id="lockScreen">
  <div class="lock-card">
    <div class="lock-icon">🔐</div>
    <h2>أهلًا بك في منبر ون</h2>
    <p>للدخول إلى الدروس والملخصات والاختبارات والغرف، يجب تسجيل الدخول أولًا.<br>أنشئ حسابك أو سجّل دخولك وابدأ رحلتك التعليمية.</p>
    <button class="btn btn-primary" onclick="openLogin()">👨‍🎓 تسجيل الدخول</button>
  </div>
</div>

<main class="container">
<section class="hero">
  <div>
    <div class="hero-badge">✨ منصة تعليمية ذكية ومتكاملة</div>
    <h2>الرياضيات تصبح <span class="gradient-text">أسهل مع منبر ون</span></h2>
    <p>تعلّم من الحصص، راجع الملخصات، حل الاختبارات، اجمع النقاط وطور مستواك خطوة بخطوة.</p>
    <div class="hero-buttons">
      <button class="btn btn-primary" onclick="requireLogin(()=>scrollToSection('lessonsSection'))">🚀 ابدأ التعلم</button>
      <button class="btn" onclick="requireLogin(()=>scrollToSection('testsSection'))">📝 اختبر نفسك</button>
    </div>
  </div>
  <div class="hero-card"><div class="hero-orbit"></div><div class="hero-equation">x² + y²</div></div>
</section>

<div class="dashboard-strip">
  <div class="strip-card"><div>⭐ <span>نقاطي</span></div><strong id="pointsStrip">0</strong></div>
  <div class="strip-card"><div>🎥 <span>دقائق مشاهدة</span></div><strong id="watchStrip">0</strong></div>
  <div class="strip-card"><div>🏆 <span>المستوى</span></div><strong id="levelStrip">مبتدئ</strong></div>
</div>

<div class="search-wrap">
  <span class="search-icon">🔎</span>
  <input id="searchInput" class="search" type="search" autocomplete="off" placeholder="ابحث عن حصة، ملخص، اختبار أو غرفة...">
</div>
<div id="searchResultInfo" class="search-result-info"></div>

<section class="section">
  <div class="section-title"><div><h2>ماذا تريد أن تتعلم؟ 🎯</h2><p>أقسام المنصة التعليمية</p></div></div>
  <div class="categories">
    <div class="category cat-purple" onclick="requireLogin(()=>scrollToSection('lessonsSection'))"><div class="category-icon">🎥</div><h3>الحصص</h3><p>شروحات فيديو مرتبة</p></div>
    <div class="category cat-blue" onclick="requireLogin(()=>scrollToSection('summariesSection'))"><div class="category-icon">📚</div><h3>الملخصات</h3><p>مراجعة سريعة ومنظمة</p></div>
    <div class="category cat-green" onclick="requireLogin(()=>scrollToSection('testsSection'))"><div class="category-icon">📝</div><h3>الاختبارات</h3><p>اختبر فهمك واحصل على نقاط</p></div>
    <div class="category cat-orange" onclick="requireLogin(()=>scrollToSection('roomsSection'))"><div class="category-icon">💬</div><h3>الغرف</h3><p>غرف التعلم والتواصل</p></div>
  </div>
</section>

<section class="section" id="challengeSection">
  <div class="section-title"><div><h2>🔥 تحدي اليوم</h2><p>5 أسئلة يومية، والنقاط تزيد مع الصعوبة</p></div></div>
  <div class="challenge" id="challengeBox">
    <div class="loading">جاري تجهيز تحدي اليوم...</div>
  </div>
</section>

<section class="section" id="lessonsSection">
  <div class="section-title"><div><h2>🎥 أحدث الحصص</h2><p>كل دقيقة مشاهدة كاملة = ⭐ نقطة</p></div></div>
  <div id="lessonsContainer" class="cards"><div class="loading">جاري تحميل الحصص...</div></div>
</section>

<section class="section" id="summariesSection">
  <div class="section-title"><div><h2>📚 الملخصات</h2><p>اقرأ الملخص داخل الموقع بدون مغادرة المنصة</p></div></div>
  <div id="summariesContainer" class="cards"><div class="loading">جاري تحميل الملخصات...</div></div>
</section>

<section class="section" id="testsSection">
  <div class="section-title"><div><h2>📝 الاختبارات</h2><p>أسئلة متعددة الخيارات وتصحيح فوري</p></div></div>
  <div id="testsContainer" class="cards"><div class="loading">جاري تحميل الاختبارات...</div></div>
</section>

<section class="section" id="roomsSection">
  <div class="section-title"><div><h2>💬 الغرف التعليمية</h2><p>ادخل إلى غرف التعلم بعد تسجيل الدخول</p></div></div>
  <div id="roomsContainer" class="cards"><div class="loading">جاري تحميل الغرف...</div></div>
</section>

<section class="section">
  <div class="section-title"><div><h2>🏆 إحصائياتك</h2><p>تقدمك في منبر ون</p></div></div>
  <div class="stats">
    <div class="stat"><strong id="lessonsCount">0</strong><span>🎥 درس</span></div>
    <div class="stat"><strong id="summariesCount">0</strong><span>📚 ملخص</span></div>
    <div class="stat"><strong id="testsCount">0</strong><span>📝 اختبار</span></div>
    <div class="stat"><strong id="roomsCount">0</strong><span>💬 غرفة</span></div>
  </div>
</section>
</main>

<footer>© 2026 منبر ون — منصة الرياضيات التعليمية ✨</footer>

<!-- تسجيل الدخول -->
<div class="modal" id="loginModal">
  <div class="modal-box auth-box">
    <button class="close" onclick="closeLogin()">×</button>
    <h2>👨‍🎓 دخول الطالب</h2>
    <div class="auth-sub">سجّل دخولك للوصول إلى محتوى المنصة وحفظ نقاطك وتقدمك.</div>
    <input id="studentName" class="input" placeholder="اسم الطالب" type="text">
    <input id="studentEmail" class="input" placeholder="البريد الإلكتروني" type="email" autocomplete="email">
    <input id="studentPassword" class="input" placeholder="كلمة المرور" type="password" autocomplete="current-password">
    <div class="auth-message" id="authMessage"></div>
    <button class="btn btn-primary" style="width:100%" onclick="loginStudent()">تسجيل الدخول</button>
    <button class="btn" style="width:100%;margin-top:8px" onclick="signupStudent()">إنشاء حساب جديد</button>
    <div class="login-note">بيانات كلمة المرور تستخدم مع نظام تسجيل الدخول في Supabase ولا تُعرض للمعلم.</div>
  </div>
</div>

<!-- الفيديو -->
<div class="modal" id="videoModal">
  <div class="modal-box">
    <button class="close" onclick="closeVideo()">×</button>
    <h2 id="videoTitle">🎥 الحصة</h2>
    <iframe id="videoFrame" class="video-frame" allow="autoplay; encrypted-media; picture-in-picture" allowfullscreen></iframe>
    <div class="video-points"><span>⏱️ شاهد الفيديو لتجمع النقاط</span><strong id="videoPointsText">0 دقيقة • ⭐ 0 نقطة</strong></div>
    <div class="modal-actions"><button class="btn" onclick="closeVideo()">إغلاق الحصة</button></div>
  </div>
</div>

<!-- الملخص -->
<div class="modal" id="summaryModal">
  <div class="modal-box">
    <button class="close" onclick="closeSummary()">×</button>
    <h2 id="summaryTitle">📚 الملخص</h2>
    <iframe id="summaryFrame" class="pdf-frame" title="الملخص"></iframe>
    <div class="modal-actions">
      <a id="summaryOpenLink" class="btn btn-primary" href="#" target="_blank" rel="noopener">🔗 فتح الملف في صفحة جديدة</a>
      <button class="btn" onclick="closeSummary()">إغلاق</button>
    </div>
    <div id="summaryNote" class="debug-line" style="direction:rtl"></div>
  </div>
</div>

<!-- الاختبار -->
<div class="modal" id="examModal">
  <div class="modal-box exam-box">
    <button class="close" onclick="closeExam()">×</button>
    <div id="examContent"></div>
  </div>
</div>

<!-- الغرفة -->
<div class="modal" id="roomModal">
  <div class="modal-box">
    <button class="close" onclick="closeRoom()">×</button>
    <h2 id="roomTitle">💬 الغرفة التعليمية</h2>
    <p id="roomDescription" style="color:var(--muted);line-height:1.8;margin-top:11px"></p>
    <div class="modal-actions">
      <a id="roomOpenLink" class="btn btn-primary" href="#" target="_blank" rel="noopener">🚪 دخول الغرفة</a>
      <button class="btn" onclick="closeRoom()">إغلاق</button>
    </div>
  </div>
</div>

<script src="https://www.youtube.com/iframe_api"></script>
<script>
/* =========================================================
   إعدادات المشروع
========================================================= */
const SUPABASE_URL="https://vugnptbvkitokwqxulla.supabase.co";
const SUPABASE_KEY="sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";

let lessonsData=[],summariesData=[],testsData=[],roomsData=[];
let studentProfile=null;
let examState={test:null,questions:[],answers:[],current:0};
let videoPlayer=null,videoLesson=null,videoTimer=null;
let videoEarnedMinutes=0,videoEarnedPoints=0,videoBaseSeconds=0,videoLastSeconds=0;
let challengeState={questions:[],index:0,answered:false,totalPoints:0};

function $(id){return document.getElementById(id)}
function safe(v){return String(v??"").replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/'/g,"&#039;")}
function scrollToSection(id){$(id)?.scrollIntoView({behavior:"smooth",block:"start"})}
function showModal(id){$(id)?.classList.add("show");document.body.classList.add("modal-open")}
function hideModal(id){$(id)?.classList.remove("show");if(!document.querySelector(".modal.show"))document.body.classList.remove("modal-open")}
function getSession(){try{return JSON.parse(localStorage.getItem("minbar_session")||"null")}catch{return null}}
function saveSession(s){localStorage.setItem("minbar_session",JSON.stringify(s))}
function clearSession(){localStorage.removeItem("minbar_session")}
function normalizeSearchText(v){return String(v??"").toLowerCase().replace(/[أإآ]/g,"ا").replace(/ة/g,"ه").replace(/ى/g,"ي").replace(/[ًٌٍَُِّْـ]/g,"").trim()}
function levelName(points){if(points>=500)return"أسطوري";if(points>=250)return"ذهبي";if(points>=100)return"متقدم";if(points>=50)return"متوسط";return"مبتدئ"}

function requireLogin(fn){
  if(!getSession()){openLogin();return}
  if(studentProfile?.status==="blocked"){alert("🚫 تم إيقاف حسابك. تواصل مع المعلم.");return}
  if(typeof fn==="function")fn()
}

function renderError(containerId,title,error){
  const msg=error?.message||"خطأ غير معروف";
  $(containerId).innerHTML='<div class="error-box">❌ <b>'+safe(title)+'</b><div>تعذر تحميل البيانات.</div><div class="debug-line">'+safe(msg)+'</div></div>';
  console.error(title,error)
}

/* =========================================================
   Supabase REST
========================================================= */
async function supabaseFetch(table,params=""){
  const session=getSession();
  const headers={
    "apikey":SUPABASE_KEY,
    "Content-Type":"application/json",
    "Accept":"application/json",
    "Authorization":"Bearer "+(session?.access_token||SUPABASE_KEY)
  };
  const url=SUPABASE_URL+"/rest/v1/"+table+(params?"?"+params:"?select=*");
  const r=await fetch(url,{headers});
  const raw=await r.text();
  let data;try{data=raw?JSON.parse(raw):[]}catch{data=raw}
  if(!r.ok){
    const msg=typeof data==="object"?(data.message||data.hint||data.details||data.code):String(data);
    throw new Error("Supabase "+r.status+": "+(msg||"Unknown error"))
  }
  return data
}
async function supabaseWrite(table,method,body,params=""){
  const session=getSession();
  const headers={
    "apikey":SUPABASE_KEY,"Content-Type":"application/json","Accept":"application/json",
    "Authorization":"Bearer "+(session?.access_token||SUPABASE_KEY),
    "Prefer":"return=representation"
  };
  const r=await fetch(SUPABASE_URL+"/rest/v1/"+table+(params?"?"+params:""),{method,headers,body:JSON.stringify(body)});
  const raw=await r.text();let data;try{data=raw?JSON.parse(raw):[]}catch{data=raw}
  if(!r.ok){const msg=typeof data==="object"?(data.message||data.hint||data.details||data.code):String(data);throw new Error("Supabase "+r.status+": "+(msg||"Unknown error"))}
  return data
}
async function supabaseAuth(path,body){
  const r=await fetch(SUPABASE_URL+"/auth/v1/"+path,{method:"POST",headers:{"apikey":SUPABASE_KEY,"Content-Type":"application/json"},body:JSON.stringify(body)});
  const raw=await r.text();let data;try{data=raw?JSON.parse(raw):{}}catch{data={message:raw}}
  if(!r.ok)throw new Error(data.error_description||data.msg||data.message||"فشل الطلب");
  return data
}

/* =========================================================
   المصادقة + ملف الطالب
========================================================= */
async function ensureStudentProfile(user,nameHint=""){
  if(!user?.email)return null;
  const email=String(user.email).trim().toLowerCase();
  try{
    const found=await supabaseFetch("students","select=*&email=eq."+encodeURIComponent(email)+"&limit=1");
    if(Array.isArray(found)&&found.length){
      const row=found[0];
      if(nameHint && (!row.name||row.name==="طالب")) {
        try{await supabaseWrite("students","PATCH",{name:nameHint,last_seen:new Date().toISOString()},"id=eq."+encodeURIComponent(row.id))}catch{}
      }else{
        try{await supabaseWrite("students","PATCH",{last_seen:new Date().toISOString()},"id=eq."+encodeURIComponent(row.id))}catch{}
      }
      return row
    }
    const created=await supabaseWrite("students","POST",{
      name:nameHint||user.user_metadata?.full_name||"طالب",
      email,
      status:"active",
      points:0,
      watch_minutes:0,
      last_seen:new Date().toISOString()
    });
    return Array.isArray(created)?created[0]:created
  }catch(e){
    console.warn("student profile:",e);
    return {id:null,name:nameHint||user.user_metadata?.full_name||"طالب",email,status:"active",points:0,watch_minutes:0}
  }
}

async function loginStudent(){
  const email=$("studentEmail").value.trim().toLowerCase(),password=$("studentPassword").value;
  if(!email||!password){setAuthMessage("اكتب البريد الإلكتروني وكلمة المرور.","error");return}
  setAuthMessage("⏳ جاري تسجيل الدخول...","info");
  try{
    const data=await supabaseAuth("token?grant_type=password",{email,password});
    const profile=await ensureStudentProfile(data.user);
    if(profile?.status==="blocked"){
      setAuthMessage("🚫 هذا الحساب موقوف من المعلم.","error");
      return
    }
    saveSession(data);
    studentProfile=profile;
    updateAuthUI(data.user);
    updateStudentStats();
    await loadAllContent();
    setAuthMessage("✅ تم تسجيل الدخول بنجاح 🎉","success");
    setTimeout(closeLogin,500);
  }catch(e){setAuthMessage("❌ "+e.message,"error");console.error(e)}
}

async function signupStudent(){
  const name=$("studentName").value.trim(),email=$("studentEmail").value.trim().toLowerCase(),password=$("studentPassword").value;
  if(!name||!email||!password){setAuthMessage("اكتب الاسم والبريد وكلمة المرور.","error");return}
  if(password.length<6){setAuthMessage("كلمة المرور يجب أن تكون 6 أحرف على الأقل.","error");return}
  setAuthMessage("⏳ جاري إنشاء الحساب...","info");
  try{
    const data=await supabaseAuth("signup",{email,password,data:{full_name:name,role:"student"}});
    if(!data.access_token){
      setAuthMessage("✅ تم إنشاء الحساب. إذا طلبت Supabase تأكيد البريد، أكد البريد ثم سجّل الدخول.","success");
      return
    }
    saveSession(data);
    studentProfile=await ensureStudentProfile(data.user,name);
    updateAuthUI(data.user);updateStudentStats();
    await loadAllContent();
    setAuthMessage("✅ تم إنشاء الحساب وتسجيل الدخول 🎉","success");
    setTimeout(closeLogin,600);
  }catch(e){setAuthMessage("❌ "+e.message,"error");console.error(e)}
}

function setAuthMessage(text,type=""){
  $("authMessage").textContent=text;
  $("authMessage").className="auth-message "+type
}
function openLogin(){setAuthMessage("");showModal("loginModal")}
function closeLogin(){hideModal("loginModal")}
function updateAuthUI(user){
  const logged=!!user&&!!getSession();
  $("loginBtn").style.display=logged?"none":"inline-block";
  $("logoutBtn").style.display=logged?"inline-block":"none";
  $("userBox").style.display=logged?"flex":"none";
  $("userName").textContent=user?.user_metadata?.full_name||studentProfile?.name||user?.email||"طالب";
  $("lockScreen").classList.toggle("show",!logged);
  document.body.classList.toggle("locked",!logged);
}
async function logoutStudent(){
  const session=getSession();
  try{if(session?.access_token)await fetch(SUPABASE_URL+"/auth/v1/logout",{method:"POST",headers:{"apikey":SUPABASE_KEY,"Authorization":"Bearer "+session.access_token}})}catch{}
  stopVideoTracking();clearSession();studentProfile=null;updateAuthUI(null);updateStudentStats();closeAllModals();
  alert("تم تسجيل الخروج 👋")
}
function closeAllModals(){document.querySelectorAll(".modal.show").forEach(x=>x.classList.remove("show"));document.body.classList.remove("modal-open")}

/* =========================================================
   إحصائيات ونقاط الطالب
========================================================= */
function updateStudentStats(){
  const points=Number(studentProfile?.points||0),minutes=Number(studentProfile?.watch_minutes||0);
  $("miniPoints").textContent=points;$("pointsStrip").textContent=points;$("watchStrip").textContent=minutes;$("levelStrip").textContent=levelName(points)
}
async function addStudentPoints(amount,watchMinutes=0){
  if(!studentProfile?.email||studentProfile.status==="blocked")return;
  studentProfile.points=Number(studentProfile.points||0)+Number(amount||0);
  studentProfile.watch_minutes=Number(studentProfile.watch_minutes||0)+Number(watchMinutes||0);
  updateStudentStats();
  if(studentProfile.id){
    try{
      await supabaseWrite("students","PATCH",{
        points:studentProfile.points,
        watch_minutes:studentProfile.watch_minutes,
        last_seen:new Date().toISOString()
      },"id=eq."+encodeURIComponent(studentProfile.id))
    }catch(e){console.warn("points save:",e)}
  }
}

/* =========================================================
   YouTube + نقاط المشاهدة
========================================================= */
function getYoutubeId(url){
  if(!url)return"";
  const s=String(url).trim();
  const patterns=[
    /youtu\.be\/([\w-]{11})/,/youtube\.com\/watch\?[^#]*v=([\w-]{11})/,
    /youtube\.com\/embed\/([\w-]{11})/,/youtube\.com\/shorts\/([\w-]{11})/,
    /youtube\.com\/live\/([\w-]{11})/
  ];
  for(const p of patterns){const m=s.match(p);if(m)return m[1]}
  return""
}
function onYouTubeIframeAPIReady(){/* يتم إنشاء المشغل عند فتح الحصة */}
function createVideoPlayer(videoId){
  if(videoPlayer){try{videoPlayer.destroy()}catch{}videoPlayer=null}
  videoPlayer=new YT.Player("videoFrame",{
    videoId,
    playerVars:{rel:0,playsinline:1,enablejsapi:1},
    events:{onStateChange:onPlayerStateChange,onError:e=>console.warn("YouTube:",e)}
  })
}
function onPlayerStateChange(e){
  if(e.data===YT.PlayerState.PLAYING) startVideoTracking();
  else stopVideoTimerOnly();
}
function startVideoTracking(){
  if(videoTimer)return;
  videoTimer=setInterval(trackVideoSecond,1000)
}
function stopVideoTimerOnly(){if(videoTimer){clearInterval(videoTimer);videoTimer=null}}
function stopVideoTracking(){stopVideoTimerOnly();videoLesson=null;videoEarnedMinutes=0;videoEarnedPoints=0;videoBaseSeconds=0;videoLastSeconds=0}
async function trackVideoSecond(){
  if(!videoPlayer||!videoLesson||!studentProfile)return;
  let current=0;try{current=Number(videoPlayer.getCurrentTime()||0)}catch{return}
  if(current<videoLastSeconds-3){videoLastSeconds=current;return}
  videoLastSeconds=current;
  const watchedSeconds=Math.max(0,current-videoBaseSeconds);
  const earnedMinutes=Math.floor(watchedSeconds/60);
  if(earnedMinutes>videoEarnedMinutes){
    const delta=earnedMinutes-videoEarnedMinutes;
    videoEarnedMinutes=earnedMinutes;
    videoEarnedPoints+=delta;
    const progressKey="lesson_progress_"+videoLesson.id;
    const oldMinutes=Number(localStorage.getItem(progressKey)||0);
    localStorage.setItem(progressKey,String(oldMinutes+delta));
    await addStudentPoints(delta,delta);
    $("videoPointsText").textContent=videoEarnedMinutes+" دقيقة • ⭐ "+videoEarnedPoints+" نقطة";
    renderLessons(lessonsData);
  }
}
function openLessonById(id){
  if(!getSession()){openLogin();return}
  if(studentProfile?.status==="blocked"){alert("🚫 حسابك موقوف.");return}
  const lesson=lessonsData.find(x=>String(x.id)===String(id));
  if(!lesson){alert("لم يتم العثور على الحصة.");return}
  const videoId=getYoutubeId(lesson.video_url);
  if(!videoId){alert("رابط الفيديو غير صالح أو غير موجود لهذه الحصة.");return}
  videoLesson=lesson;videoEarnedMinutes=0;videoEarnedPoints=0;videoBaseSeconds=0;videoLastSeconds=0;
  $("videoTitle").textContent="🎥 "+(lesson.title||"الحصة");
  $("videoPointsText").textContent="0 دقيقة • ⭐ 0 نقطة";
  showModal("videoModal");
  setTimeout(()=>createVideoPlayer(videoId),120);
}
function closeVideo(){stopVideoTracking();if(videoPlayer){try{videoPlayer.destroy()}catch{}videoPlayer=null}hideModal("videoModal")}

/* =========================================================
   الدروس
========================================================= */
async function loadLessons(){
  try{
    const data=await supabaseFetch("lessons","select=*&order=created_at.desc");
    lessonsData=Array.isArray(data)?data:[];$("lessonsCount").textContent=lessonsData.length;renderLessons(lessonsData)
  }catch(e){renderError("lessonsContainer","الدروس",e)}
}
function getLessonProgress(id){
  try{return Number(JSON.parse(localStorage.getItem("lesson_progress_"+id)||"0"))}catch{return 0}
}
function renderLessons(list){
  const box=$("lessonsContainer");
  if(!list.length){box.innerHTML='<div class="empty">📭 لا توجد حصص مضافة حاليًا.</div>';return}
  box.innerHTML=list.map(lesson=>{
    const yt=getYoutubeId(lesson.video_url),thumb=yt?"https://img.youtube.com/vi/"+yt+"/hqdefault.jpg":"";
    const progress=getLessonProgress(lesson.id);
    return `<article class="lesson-card">
      <div class="lesson-cover">${thumb?`<img src="${thumb}" alt="${safe(lesson.title||"حصة")}">`:""}
        <div class="cover-overlay"></div><button class="play-button" data-lesson-id="${safe(lesson.id)}">▶</button>
        ${lesson.duration?`<span class="duration">⏱ ${safe(lesson.duration)}</span>`:""}
      </div>
      <div class="lesson-info">
        <span class="card-badge">🎥 فيديو تعليمي</span><h3>${safe(lesson.title||"حصة رياضيات")}</h3>
        <p>${safe(lesson.description||"شرح مبسط للدرس")}</p>
        <div class="meta"><span class="unit">📘 ${safe(lesson.unit||"رياضيات")}</span><span>⭐ نقطة لكل دقيقة</span></div>
        <div class="watch-progress"><div class="watch-progress-head"><span>تقدم المشاهدة</span><span>${progress} دقيقة</span></div><div class="mini-progress"><i style="width:${Math.min(100,progress*2)}%"></i></div></div>
      </div>
    </article>`
  }).join("");
  box.querySelectorAll(".play-button").forEach(b=>b.addEventListener("click",()=>openLessonById(b.dataset.lessonId)))
}

/* =========================================================
   الملخصات
========================================================= */
async function loadSummaries(){
  try{
    const data=await supabaseFetch("summaries","select=*&order=created_at.desc");
    summariesData=Array.isArray(data)?data:[];$("summariesCount").textContent=summariesData.length;renderSummaries(summariesData)
  }catch(e){renderError("summariesContainer","الملخصات",e)}
}
function renderSummaries(list){
  const box=$("summariesContainer");
  if(!list.length){box.innerHTML='<div class="empty">📭 لا توجد ملخصات مضافة حاليًا.</div>';return}
  box.innerHTML=list.map(s=>`<article class="resource-card">
    <div class="resource-icon">📚</div><span class="card-badge">📖 مراجعة</span>
    <h3>${safe(s.title||"ملخص")}</h3><p>${safe(s.description||"ملخص جاهز للمراجعة.")}</p>
    <button class="btn btn-primary summary-btn" data-summary-id="${safe(s.id)}">👁️ قراءة داخل الموقع</button>
  </article>`).join("");
  box.querySelectorAll(".summary-btn").forEach(b=>b.addEventListener("click",()=>openSummaryById(b.dataset.summaryId)))
}
function openSummaryById(id){
  requireLogin(()=>{
    const item=summariesData.find(x=>String(x.id)===String(id));
    if(!item){alert("لم يتم العثور على الملخص.");return}
    if(!item.file_url){alert("⚠️ هذا الملخص لا يحتوي على رابط ملف في قاعدة البيانات.");return}
    const url=String(item.file_url).trim();
    $("summaryTitle").textContent="📚 "+(item.title||"الملخص");
    $("summaryFrame").src=url;$("summaryOpenLink").href=url;
    $("summaryNote").textContent="إذا لم يظهر PDF داخل النافذة بسبب إعدادات موقع الملف، اضغط «فتح الملف في صفحة جديدة».";
    showModal("summaryModal")
  })
}
function closeSummary(){$("summaryFrame").src="about:blank";hideModal("summaryModal")}

/* =========================================================
   الاختبارات
========================================================= */
async function loadTests(){
  try{
    const data=await supabaseFetch("tests","select=*&order=created_at.desc");
    testsData=Array.isArray(data)?data:[];$("testsCount").textContent=testsData.length;renderTests(testsData)
  }catch(e){renderError("testsContainer","الاختبارات",e)}
}
function renderTests(list){
  const box=$("testsContainer");
  if(!list.length){box.innerHTML='<div class="empty">📭 لا توجد اختبارات مضافة حاليًا.</div>';return}
  box.innerHTML=list.map(t=>`<article class="resource-card">
    <div class="resource-icon">📝</div><span class="card-badge">🏆 نقاط الاختبار</span>
    <h3>${safe(t.title||"اختبار")}</h3><p>${safe(t.description||"اختبر معلوماتك في الرياضيات.")}</p>
    <button class="btn btn-primary test-btn" data-test-id="${safe(t.id)}">🚀 بدء الاختبار</button>
  </article>`).join("");
  box.querySelectorAll(".test-btn").forEach(b=>b.addEventListener("click",()=>startExamById(b.dataset.testId)))
}
async function startExamById(testId){
  requireLogin(async()=>{
    const test=testsData.find(x=>String(x.id)===String(testId));
    if(!test){alert("لم يتم العثور على الاختبار.");return}
    const attemptKey="minbar_test_done_"+(studentProfile?.email||"")+"_"+test.id;
    if(localStorage.getItem(attemptKey)==="1"){
      alert("🔒 لقد أنهيت هذا الاختبار من قبل، ولا يمكن إعادته.");
      return;
    }
    try{
      const previous=await supabaseFetch("test_attempts","select=id&test_id=eq."+encodeURIComponent(testId)+"&student_email=eq."+encodeURIComponent(studentProfile.email)+"&limit=1");
      if(Array.isArray(previous)&&previous.length){
        localStorage.setItem(attemptKey,"1");
        alert("🔒 لقد أنهيت هذا الاختبار من قبل، ولا يمكن إعادته.");
        return;
      }
    }catch(e){console.warn("attempt check:",e)}
    $("examContent").innerHTML='<div class="loading">⏳ جاري تحميل أسئلة الاختبار...</div>';showModal("examModal");
    try{
      const questions=await supabaseFetch("test_questions","select=*&test_id=eq."+encodeURIComponent(testId)+"&order=question_order.asc,id.asc");
      if(!Array.isArray(questions)||!questions.length){$("examContent").innerHTML='<div class="empty">📭 هذا الاختبار لا يحتوي على أسئلة بعد.</div>';return}
      examState={test,questions,answers:new Array(questions.length).fill(null),current:0};renderExamQuestion()
    }catch(e){$("examContent").innerHTML='<div class="error-box">❌ تعذر تحميل أسئلة الاختبار.<div class="debug-line">'+safe(e.message)+'</div></div>'}
  })
}
function normalizeCorrectAnswer(q){
  const raw=String(q.correct_answer??"").trim().toLowerCase();
  if(["a","b","c","d"].includes(raw))return raw;
  if(["option_a","option_b","option_c","option_d"].includes(raw))return raw.slice(-1);
  const choices={a:String(q.option_a??"").trim(),b:String(q.option_b??"").trim(),c:String(q.option_c??"").trim(),d:String(q.option_d??"").trim()};
  for(const key of Object.keys(choices))if(choices[key]&&choices[key].toLowerCase()===raw)return key;
  return raw
}
function questionPoints(q,index,total){
  const d=String(q.difficulty||"").toLowerCase();
  if(["hard","صعب","3","high"].includes(d))return 6;
  if(["medium","متوسط","2","normal"].includes(d))return 4;
  return Math.min(2+index,total<=5?index:Math.floor(index/2))
}
function renderExamQuestion(){
  const q=examState.questions[examState.current],total=examState.questions.length,selected=examState.answers[examState.current];
  const opts=[["a",q.option_a],["b",q.option_b],["c",q.option_c],["d",q.option_d]];
  const pts=questionPoints(q,examState.current,total);
  $("examContent").innerHTML=`<div class="exam-header"><div><h2>📝 ${safe(examState.test.title||"الاختبار")}</h2><div style="color:var(--muted);font-size:12px;margin-top:5px">السؤال ${examState.current+1} من ${total} • ⭐ ${pts} نقاط</div></div></div>
  <div class="progress"><div class="progress-bar" style="width:${((examState.current+1)/total)*100}%"></div></div>
  <div class="exam-question">${safe(q.question_text||"")}</div>
  <div class="exam-options">${opts.map(([k,v])=>`<button class="exam-option ${selected===k?"selected":""}" data-option="${k}"><b>${k.toUpperCase()}.</b> ${safe(v)}</button>`).join("")}</div>
  <div class="exam-actions"><button class="btn" id="examPrev" ${examState.current===0?"disabled":""}>⬅ السابق</button>
  ${examState.current===total-1?'<button class="btn btn-primary" id="examFinish">🏁 إنهاء الاختبار</button>':'<button class="btn btn-primary" id="examNext">التالي ➡</button>'}</div>`;
  $("examContent").querySelectorAll(".exam-option").forEach(b=>b.addEventListener("click",()=>{examState.answers[examState.current]=b.dataset.option;renderExamQuestion()}));
  $("examPrev").addEventListener("click",()=>{if(examState.current>0){examState.current--;renderExamQuestion()}});
  $("examNext")?.addEventListener("click",()=>{if(examState.answers[examState.current]===null){alert("اختر إجابة أولًا.");return}examState.current++;renderExamQuestion()});
  $("examFinish")?.addEventListener("click",finishExam)
}
async function finishExam(){
  const unanswered=examState.answers.filter(x=>x===null).length;
  if(unanswered>0&&!confirm("هناك "+unanswered+" سؤال بدون إجابة. هل تريد إنهاء الاختبار؟"))return;
  let correct=0,totalPoints=0,earnedPoints=0;
  examState.questions.forEach((q,i)=>{
    const pts=questionPoints(q,i,examState.questions.length);totalPoints+=pts;
    if(examState.answers[i]===normalizeCorrectAnswer(q)){correct++;earnedPoints+=pts}
  });
  const percent=Math.round((correct/examState.questions.length)*100);
  addStudentPoints(earnedPoints,0);
  const attemptKey="minbar_test_done_"+(studentProfile?.email||"")+"_"+examState.test.id;
  localStorage.setItem(attemptKey,"1");
  if(studentProfile?.email){
    try{
      await supabaseWrite("test_attempts","POST",{
        test_id:examState.test.id,
        student_email:studentProfile.email,
        score:correct,
        total_questions:examState.questions.length,
        points_earned:earnedPoints,
        completed_at:new Date().toISOString()
      });
    }catch(e){console.warn("attempt save:",e)}
  }
  const msg=percent>=90?"🔥 ممتاز جدًا!":percent>=75?"👏 أداء رائع!":percent>=50?"💪 نتيجة جيدة، استمر!":"📚 راجع الدروس وحاول مرة أخرى!";
  $("examContent").innerHTML=`<div class="result"><h2>🎉 انتهى الاختبار</h2><div class="result-score">${correct} / ${examState.questions.length}</div>
  <h3>${percent}%</h3><div class="points-result">⭐ حصلت على ${earnedPoints} من ${totalPoints} نقطة</div><p style="color:var(--muted);margin-top:9px">${msg}</p>
  <div class="modal-actions" style="justify-content:center"><button class="btn" id="closeExamResult">إغلاق</button></div>
  <div style="color:var(--muted);font-size:11px;margin-top:12px">🔒 لا توجد إعادة اختبار من هذه الصفحة.</div></div>`;
  $("closeExamResult").addEventListener("click",closeExam)
}
function closeExam(){hideModal("examModal");examState={test:null,questions:[],answers:[],current:0}}

/* =========================================================
   الغرف
========================================================= */
async function loadRooms(){
  try{
    const data=await supabaseFetch("rooms","select=*&order=created_at.desc");
    roomsData=Array.isArray(data)?data:[];$("roomsCount").textContent=roomsData.length;renderRooms(roomsData)
  }catch(e){renderError("roomsContainer","الغرف",e)}
}
function renderRooms(list){
  const box=$("roomsContainer");
  if(!list.length){box.innerHTML='<div class="empty">📭 لا توجد غرف مضافة حاليًا.</div>';return}
  box.innerHTML=list.map(r=>`<article class="resource-card"><div class="resource-icon">💬</div><span class="card-badge">🌐 غرفة تعليمية</span>
  <h3>${safe(r.name||"غرفة تعليمية")}</h3><p>${safe(r.description||"غرفة للتعلم والتواصل.")}</p>
  <button class="btn btn-primary room-btn" data-room-id="${safe(r.id)}">🚪 فتح الغرفة</button></article>`).join("");
  box.querySelectorAll(".room-btn").forEach(b=>b.addEventListener("click",()=>openRoomById(b.dataset.roomId)))
}
function openRoomById(id){
  requireLogin(()=>{
    const room=roomsData.find(x=>String(x.id)===String(id));
    if(!room){alert("لم يتم العثور على الغرفة.");return}
    if(!room.room_link){alert("هذه الغرفة لا تحتوي على رابط.");return}
    $("roomTitle").textContent="💬 "+(room.name||"الغرفة");$("roomDescription").textContent=room.description||"";$("roomOpenLink").href=room.room_link;showModal("roomModal")
  })
}
function closeRoom(){hideModal("roomModal")}

/* =========================================================
   البحث الشامل
========================================================= */
function searchEverything(){
  const raw=$("searchInput").value,q=normalizeSearchText(raw),info=$("searchResultInfo");
  if(!q){renderLessons(lessonsData);renderSummaries(summariesData);renderTests(testsData);renderRooms(roomsData);info.style.display="none";return}
  const match=obj=>normalizeSearchText([obj.title,obj.name,obj.description,obj.unit,obj.video_url,obj.file_url,obj.room_link,obj.difficulty].join(" ")).includes(q);
  const l=lessonsData.filter(match),s=summariesData.filter(match),t=testsData.filter(match),r=roomsData.filter(match);
  renderLessons(l);renderSummaries(s);renderTests(t);renderRooms(r);
  const total=l.length+s.length+t.length+r.length;
  info.textContent=total?`🔎 تم العثور على ${total} نتيجة عن «${raw}»`:`🔎 لا توجد نتائج عن «${raw}»`;info.style.display="block"
}
$("searchInput").addEventListener("input",searchEverything);

/* =========================================================
   5 أسئلة يومية
========================================================= */
const dailyQuestions=[
 {q:"8 × 7 + 4 = ؟",a:["56","60","64","68"],c:3,p:2,d:1},
 {q:"إذا كان 3x + 6 = 21، فما قيمة x؟",a:["3","5","6","7"],c:1,p:4,d:2},
 {q:"ما مساحة دائرة نصف قطرها 3 إذا اعتبرنا π = 3.14؟",a:["18.84","28.26","9.42","12.56"],c:1,p:4,d:2},
 {q:"إذا كان x² = 49 و x موجب، فما قيمة x؟",a:["5","6","7","8"],c:2,p:6,d:3},
 {q:"إذا كانت f(x)=2x²-3x+1، فما قيمة f(3)؟",a:["10","12","14","18"],c:2,p:8,d:3}
];
function challengeKey(){return"minbar_daily_"+new Date().toISOString().slice(0,10)}
function loadChallenge(){
  const key=challengeKey(),saved=JSON.parse(localStorage.getItem(key)||"null");
  challengeState={questions:dailyQuestions,index:saved?.index||0,answered:saved?.answered||false,totalPoints:saved?.totalPoints||0};
  renderChallenge()
}
function renderChallenge(){
  const q=challengeState.questions[challengeState.index];
  if(!q){$("challengeBox").innerHTML='<div class="empty">🏆 أنهيت أسئلة اليوم الخمسة! عد غدًا لتحدٍ جديد.</div>';return}
  const progress=((challengeState.index+1)/5)*100;
  $("challengeBox").innerHTML=`<div class="challenge-top"><span class="challenge-tag">🧠 السؤال ${challengeState.index+1} من 5 • صعوبة ${q.d}</span><span class="challenge-points">⭐ ${q.p} نقاط</span></div>
  <div class="challenge-question">${q.q}</div><div class="challenge-options">${q.a.map((x,i)=>`<button class="option" data-ci="${i}">${x}</button>`).join("")}</div>
  <div id="challengeFeedback" style="margin-top:14px;color:var(--muted);min-height:22px"></div>
  <div class="challenge-progress"><i style="width:${progress}%"></i></div>
  <div class="challenge-nav"><span style="color:var(--muted);font-size:12px">مجموع نقاط اليوم: ⭐ ${challengeState.totalPoints}</span><button class="btn btn-primary" id="challengeNext" disabled>${challengeState.index===4?"إنهاء اليوم":"السؤال التالي ➡"}</button></div>`;
  $("challengeBox").querySelectorAll(".option").forEach(b=>b.addEventListener("click",()=>answerChallenge(Number(b.dataset.ci))));
  $("challengeNext").addEventListener("click",nextChallenge);
}
function answerChallenge(i){
  if(challengeState.answered)return;
  const q=challengeState.questions[challengeState.index],buttons=$("challengeBox").querySelectorAll(".option");
  challengeState.answered=true;
  buttons.forEach((b,n)=>{if(n===q.c)b.classList.add("correct");if(n===i&&i!==q.c)b.classList.add("wrong")});
  const feedback=$("challengeFeedback");
  if(i===q.c){challengeState.totalPoints+=q.p;feedback.textContent="🎉 إجابة صحيحة! حصلت على "+q.p+" نقطة.";feedback.style.color="var(--green)";addStudentPoints(q.p,0)}
  else{feedback.textContent="❌ إجابة غير صحيحة. الإجابة الصحيحة هي: "+q.a[q.c];feedback.style.color="var(--red)"}
  $("challengeNext").disabled=false;localStorage.setItem(challengeKey(),JSON.stringify(challengeState));updateStudentStats()
}
function nextChallenge(){
  if(!challengeState.answered)return;
  if(challengeState.index>=4){localStorage.setItem(challengeKey(),JSON.stringify({...challengeState,index:5,answered:false}));renderChallenge();return}
  challengeState.index++;challengeState.answered=false;localStorage.setItem(challengeKey(),JSON.stringify(challengeState));renderChallenge()
}

/* =========================================================
   الحماية وإغلاق النوافذ
========================================================= */
document.querySelectorAll(".modal").forEach(modal=>{
  modal.addEventListener("click",e=>{if(e.target===modal){if(modal.id==="loginModal"&&!getSession())return;modal.classList.remove("show");if(!document.querySelector(".modal.show"))document.body.classList.remove("modal-open");if(modal.id==="videoModal")stopVideoTracking()}})
});
document.addEventListener("keydown",e=>{
  if(e.key==="Escape"&&getSession()){document.querySelectorAll(".modal.show").forEach(m=>m.classList.remove("show"));document.body.classList.remove("modal-open");stopVideoTracking()}
});

/* =========================================================
   تشغيل الموقع
========================================================= */
async function loadAllContent(){
  await Promise.allSettled([loadLessons(),loadSummaries(),loadTests(),loadRooms()]);
}
async function init(){
  const session=getSession();
  if(session?.user){
    studentProfile=await ensureStudentProfile(session.user,session.user.user_metadata?.full_name||"");
    if(studentProfile?.status==="blocked"){
      clearSession();studentProfile=null;updateAuthUI(null)
    }else{
      updateAuthUI(session.user);
      await loadAllContent();
    }
  }else{
    updateAuthUI(null);
    ["lessonsContainer","summariesContainer","testsContainer","roomsContainer"].forEach(id=>{
      $(id).innerHTML='<div class="empty">🔐 سجّل الدخول أولًا لعرض هذا القسم.</div>';
    });
  }
  updateStudentStats();
  loadChallenge();
}
init();
</script>
</body>
</html>
