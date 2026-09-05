<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0">
<meta name="theme-color" content="#070b1a">
<title>منبر ون | منصة الرياضيات</title>

<script>
(function(){
  try{
    const s=JSON.parse(localStorage.getItem("minbar_student_session")||"null");
    if(!s?.access_token){
      document.documentElement.classList.add("need-login");
    }
  }catch{
    document.documentElement.classList.add("need-login");
  }
})();
</script>

<style>
*{box-sizing:border-box;margin:0;padding:0}

:root{
 --bg:#050817;
 --bg2:#0b1230;
 --card:#101938;
 --card2:#151f48;
 --text:#fff;
 --muted:#aeb9d9;
 --primary:#7657ff;
 --cyan:#18d9ff;
 --pink:#ff4fd0;
 --green:#27e49b;
 --orange:#ff8a30;
 --red:#ff3f45;
 --gold:#ffd66b;
 --border:rgba(255,255,255,.10);

 --lesson:#a98cff;
 --summary:#18d9ff;
 --test:#27e49b;
 --room:#ff9b45;
}

html{scroll-behavior:smooth}

body{
 font-family:Arial,"Tahoma",sans-serif;
 color:var(--text);
 min-height:100vh;
 overflow-x:hidden;
 background:
 radial-gradient(circle at 8% 5%,rgba(118,87,255,.20),transparent 28%),
 radial-gradient(circle at 92% 12%,rgba(24,217,255,.12),transparent 25%),
 linear-gradient(135deg,var(--bg),#090e24 52%,#10183a);
}

body.locked{overflow:hidden}

button,input,textarea{font-family:inherit}
button{border:0;cursor:pointer}
a{text-decoration:none;color:inherit}
.hidden{display:none!important}

/* =========================
   النجوم
========================= */

.stars{
 position:fixed;
 inset:0;
 pointer-events:none;
 overflow:hidden;
 z-index:0;
}

.star{
 position:absolute;
 top:-35px;
 color:#fff;
 font-size:10px;
 opacity:.24;
 animation:
   fall linear infinite,
   twinkle 2.4s ease-in-out infinite alternate;
 will-change:transform,opacity;
 filter:drop-shadow(0 0 5px currentColor);
}

@keyframes fall{
 from{
   transform:translate3d(0,0,0) rotate(0deg)
 }
 to{
   transform:translate3d(var(--drift),115vh,0) rotate(220deg)
 }
}

@keyframes twinkle{
 from{opacity:.10}
 to{opacity:.38}
}

/* =========================
   الهيدر
========================= */

header{
 position:sticky;
 top:0;
 z-index:100;
 background:rgba(5,8,23,.72);
 backdrop-filter:blur(22px) saturate(150%);
 -webkit-backdrop-filter:blur(22px) saturate(150%);
 border-bottom:1px solid rgba(255,255,255,.08);
 box-shadow:0 8px 35px rgba(0,0,0,.18);
}

.nav{
 width:min(1420px,94%);
 margin:auto;
 min-height:70px;
 display:flex;
 align-items:center;
 justify-content:space-between;
 gap:14px;
}

.logo{
 display:flex;
 align-items:center;
 gap:10px;
}

.logo-icon{
 width:42px;
 height:42px;
 border-radius:14px;
 display:grid;
 place-items:center;
 font-size:22px;
 font-weight:900;
 background:
 linear-gradient(145deg,rgba(118,87,255,.95),rgba(24,217,255,.85));
 border:1px solid rgba(255,255,255,.18);
 box-shadow:
 0 0 25px rgba(118,87,255,.25),
 inset 0 1px rgba(255,255,255,.25);
}

.logo-text h1{
 font-size:18px;
 font-weight:900;
}

.logo-text small{
 display:block;
 color:var(--cyan);
 font-size:7px;
 letter-spacing:2px;
 margin-top:3px;
 opacity:.85;
}

.nav-actions{
 display:flex;
 align-items:center;
 gap:8px;
}

.nav-actions .btn{
 position:relative;
 display:inline-flex;
 align-items:center;
 justify-content:center;
 gap:6px;
 min-height:38px;
 padding:8px 13px;
 border-radius:13px;
 color:#fff;
 background:rgba(255,255,255,.045);
 border:1px solid rgba(255,255,255,.10);
 font-weight:800;
 font-size:11px;
 transition:.22s;
 overflow:hidden;
}

.nav-actions .btn:before{
 content:"";
 position:absolute;
 inset:0;
 background:linear-gradient(
   120deg,
   transparent 20%,
   rgba(255,255,255,.10),
   transparent 80%
 );
 transform:translateX(-120%);
 transition:.5s;
}

.nav-actions .btn:hover:before{
 transform:translateX(120%);
}

.nav-actions .btn:hover{
 transform:translateY(-2px);
 background:rgba(255,255,255,.09);
 border-color:rgba(255,255,255,.18);
}

.control-btn{
 background:
 linear-gradient(
   135deg,
   rgba(118,87,255,.20),
   rgba(24,217,255,.08)
 )!important;
 border-color:rgba(118,87,255,.32)!important;
}

.nav-login{
 background:
 linear-gradient(
   135deg,
   rgba(255,63,69,.90),
   rgba(255,139,48,.90)
 )!important;
 border-color:rgba(255,150,80,.55)!important;
 box-shadow:
 0 7px 25px rgba(255,76,55,.18),
 inset 0 1px rgba(255,255,255,.20);
}

.user-box{
 display:none;
 align-items:center;
 gap:7px;
 min-height:38px;
 padding:7px 11px;
 border-radius:13px;
 background:
 linear-gradient(
   135deg,
   rgba(39,228,155,.10),
   rgba(24,217,255,.045)
 );
 border:1px solid rgba(39,228,155,.20);
 font-size:10px;
 white-space:nowrap;
}

.user-points{
 color:var(--gold);
 font-weight:900;
}

.nav-actions .btn-danger{
 background:rgba(255,100,120,.07);
 border-color:rgba(255,100,120,.20);
 color:#ffb7c0;
}

/* =========================
   بوابة الدخول
========================= */

#loginGate{
 position:fixed;
 inset:0;
 z-index:1000;
 background:rgba(4,7,18,.90);
 backdrop-filter:blur(16px);
 display:none;
 place-items:center;
 padding:20px;
}

html.need-login #loginGate{
 display:grid;
}

.gate-card{
 width:min(470px,100%);
 padding:32px;
 border-radius:27px;
 text-align:center;
 background:linear-gradient(145deg,#131d43,#090f25);
 border:1px solid rgba(118,87,255,.28);
 box-shadow:0 30px 100px rgba(0,0,0,.55);
}

.gate-logo{
 width:54px;
 height:54px;
 border-radius:17px;
 display:grid;
 place-items:center;
 margin:0 auto 15px;
 font-size:27px;
 background:linear-gradient(135deg,var(--primary),var(--cyan));
}

.gate-card h2{
 font-size:28px;
 margin-bottom:8px;
}

.gate-card p{
 color:var(--muted);
 line-height:1.8;
 font-size:13px;
 margin-bottom:20px;
}

.input{
 width:100%;
 padding:13px 14px;
 margin-bottom:10px;
 border-radius:12px;
 background:rgba(255,255,255,.055);
 border:1px solid var(--border);
 color:#fff;
 outline:none;
 font-size:15px;
}

.input:focus{
 border-color:var(--primary);
 box-shadow:0 0 20px rgba(118,87,255,.12);
}

.message{
 min-height:24px;
 color:var(--muted);
 font-size:12px;
 line-height:1.6;
 margin:4px 0 10px;
}

/* =========================
   الأزرار الحمراء البرتقالية
========================= */

.action-orange{
 color:#fff!important;
 background:
 linear-gradient(135deg,#ff3f45 0%,#ff603b 48%,#ff9b32 100%)!important;
 border:1px solid rgba(255,184,110,.50)!important;
 box-shadow:
 0 8px 24px rgba(255,74,50,.20),
 inset 0 1px rgba(255,255,255,.22);
}

.action-orange:hover{
 transform:translateY(-2px);
 box-shadow:
 0 12px 30px rgba(255,74,50,.28),
 inset 0 1px rgba(255,255,255,.28);
}

/* =========================
   المحتوى
========================= */

.container{
 position:relative;
 z-index:1;
 width:min(1420px,92%);
 margin:auto;
}

.hero{
 min-height:560px;
 display:grid;
 grid-template-columns:1.1fr .9fr;
 align-items:center;
 gap:40px;
 padding:55px 0 35px;
}

.badge{
 display:inline-flex;
 align-items:center;
 gap:6px;
 padding:8px 13px;
 border-radius:50px;
 background:rgba(118,87,255,.10);
 border:1px solid rgba(118,87,255,.25);
 color:#d9d1ff;
 font-size:12px;
 margin-bottom:18px;
}

.hero h2{
 font-size:clamp(42px,6vw,75px);
 line-height:1.05;
 margin-bottom:18px;
}

.gradient{
 background:linear-gradient(90deg,#fff,var(--cyan),#a98cff,var(--pink));
 -webkit-background-clip:text;
 color:transparent;
}

.hero p{
 max-width:650px;
 color:var(--muted);
 font-size:17px;
 line-height:1.9;
}

.hero-actions{
 display:flex;
 gap:10px;
 flex-wrap:wrap;
 margin-top:25px;
}

.hero-actions .btn{
 padding:12px 18px;
 border-radius:13px;
 font-size:12px;
}

.hero-visual{
 min-height:360px;
 border-radius:31px;
 display:grid;
 place-items:center;
 position:relative;
 overflow:hidden;
 background:
 radial-gradient(circle at 50% 30%,rgba(118,87,255,.32),transparent 38%),
 linear-gradient(145deg,#141d43,#080d21);
 border:1px solid var(--border);
 box-shadow:0 30px 80px rgba(0,0,0,.30);
}

.equation{
 font-size:90px;
 font-weight:900;
 background:linear-gradient(135deg,var(--cyan),var(--primary),var(--pink));
 -webkit-background-clip:text;
 color:transparent;
 filter:drop-shadow(0 0 28px rgba(118,87,255,.3));
}

.orbit{
 position:absolute;
 width:250px;
 height:250px;
 border:1px solid rgba(255,255,255,.10);
 border-radius:50%;
 animation:spin 18s linear infinite;
}

.orbit:before,
.orbit:after{
 content:"✦";
 position:absolute;
 font-size:15px;
 color:var(--cyan);
}

.orbit:before{
 top:-8px;
 left:50%;
}

.orbit:after{
 bottom:18px;
 right:7px;
 color:var(--pink);
}

@keyframes spin{
 to{transform:rotate(360deg)}
}

/* =========================
   لوحة الإعلانات
========================= */

.announcement-box{
 position:relative;
 padding:25px;
 border-radius:25px;
 background:
 linear-gradient(
   145deg,
   rgba(118,87,255,.18),
   rgba(24,217,255,.08) 55%,
   rgba(255,79,208,.10)
 );
 border:1px solid rgba(255,255,255,.14);
 box-shadow:
 0 22px 65px rgba(0,0,0,.22),
 inset 0 1px rgba(255,255,255,.08);
 overflow:hidden;
}

.announcement-top{
 position:relative;
 display:flex;
 justify-content:space-between;
 align-items:center;
 color:#d9d1ff;
 font-size:12px;
 font-weight:800;
 margin-bottom:15px;
}

.announcement-live{
 color:var(--green);
 font-size:10px;
}

.announcement-box h2{
 position:relative;
 font-size:clamp(30px,5vw,55px);
 line-height:1.12;
 margin-bottom:13px;
}

.announcement-box p{
 position:relative;
 max-width:700px;
 color:#d5ddf7;
 font-size:15px;
 line-height:1.9;
 white-space:pre-wrap;
}

/* =========================
   شريط الطالب
========================= */

.student-bar{
 display:flex;
 align-items:center;
 justify-content:space-between;
 gap:15px;
 padding:14px 18px;
 margin:10px 0 35px;
 border-radius:18px;
 background:
 linear-gradient(
   90deg,
   rgba(118,87,255,.10),
   rgba(24,217,255,.06)
 );
 border:1px solid var(--border);
}

.student-bar strong{
 font-size:14px;
}

.student-bar span{
 color:var(--muted);
 font-size:12px;
}

.level{
 color:var(--gold)!important;
 font-weight:bold;
}

/* =========================
   صفحة القسم الداخلية
========================= */

.section-page{
 display:none;
 padding:35px 0 80px;
 min-height:650px;
 animation:pageIn .3s ease;
}

.section-page.active{
 display:block;
}

@keyframes pageIn{
 from{
  opacity:0;
  transform:translateY(12px);
 }
 to{
  opacity:1;
  transform:translateY(0);
 }
}

.page-header{
 position:relative;
 padding:28px;
 border-radius:25px;
 margin-bottom:22px;
 overflow:hidden;
 border:1px solid var(--border);
 background:linear-gradient(145deg,#111a3a,#0a112b);
}

.page-header:after{
 content:"";
 position:absolute;
 width:180px;
 height:180px;
 border-radius:50%;
 right:-70px;
 top:-90px;
 opacity:.13;
 filter:blur(3px);
}

.page-header-content{
 position:relative;
 z-index:1;
}

.page-back{
 display:inline-flex;
 align-items:center;
 gap:7px;
 padding:8px 12px;
 border-radius:11px;
 background:rgba(255,255,255,.06);
 border:1px solid var(--border);
 color:#fff;
 font-size:11px;
 font-weight:800;
 margin-bottom:18px;
 transition:.2s;
}

.page-back:hover{
 transform:translateX(3px);
 background:rgba(255,255,255,.10);
}

.page-title{
 display:flex;
 align-items:center;
 gap:11px;
 margin-bottom:8px;
}

.page-icon{
 width:40px;
 height:40px;
 border-radius:12px;
 display:grid;
 place-items:center;
 font-size:20px;
 background:rgba(255,255,255,.07);
 border:1px solid rgba(255,255,255,.10);
}

.page-title h2{
 font-size:31px;
}

.page-header p{
 color:var(--muted);
 font-size:12px;
 line-height:1.8;
}

.page-search-wrap{
 position:relative;
 margin:0 0 25px;
}

.page-search{
 width:100%;
 padding:15px 47px 15px 15px;
 border-radius:15px;
 background:rgba(255,255,255,.055);
 border:1px solid var(--border);
 color:#fff;
 outline:none;
 font-size:14px;
 transition:.2s;
}

.page-search:focus{
 background:rgba(255,255,255,.07);
}

.page-search-icon{
 position:absolute;
 right:15px;
 top:50%;
 transform:translateY(-50%);
 font-size:18px;
 opacity:.85;
}

.page-empty{
 display:none;
 padding:35px;
 text-align:center;
 color:var(--muted);
 border:1px dashed var(--border);
 border-radius:18px;
 background:rgba(255,255,255,.025);
}

/* ألوان الصفحات */

#lessonsPage .page-header{
 border-color:rgba(169,140,255,.25);
 box-shadow:0 18px 50px rgba(118,87,255,.08);
}

#lessonsPage .page-header:after{
 background:var(--lesson);
}

#lessonsPage .page-title h2{
 color:var(--lesson);
}

#lessonsPage .page-search:focus{
 border-color:var(--lesson);
 box-shadow:0 0 22px rgba(169,140,255,.10);
}

#summariesPage .page-header{
 border-color:rgba(24,217,255,.25);
}

#summariesPage .page-header:after{
 background:var(--summary);
}

#summariesPage .page-title h2{
 color:var(--summary);
}

#summariesPage .page-search:focus{
 border-color:var(--summary);
 box-shadow:0 0 22px rgba(24,217,255,.10);
}

#testsPage .page-header{
 border-color:rgba(39,228,155,.25);
}

#testsPage .page-header:after{
 background:var(--test);
}

#testsPage .page-title h2{
 color:var(--test);
}

#testsPage .page-search:focus{
 border-color:var(--test);
 box-shadow:0 0 22px rgba(39,228,155,.10);
}

#roomsPage .page-header{
 border-color:rgba(255,155,69,.25);
}

#roomsPage .page-header:after{
 background:var(--room);
}

#roomsPage .page-title h2{
 color:var(--room);
}

#roomsPage .page-search:focus{
 border-color:var(--room);
 box-shadow:0 0 22px rgba(255,155,69,.10);
}

/* =========================
   التصنيفات الرئيسية
========================= */

.home-section{
 margin:45px 0;
}

.section-title{
 display:flex;
 align-items:end;
 justify-content:space-between;
 gap:15px;
 margin-bottom:20px;
}

.section-title h2{
 font-size:27px;
}

.section-title p{
 color:var(--muted);
 font-size:12px;
 margin-top:7px;
}

.categories{
 display:grid;
 grid-template-columns:repeat(4,1fr);
 gap:13px;
}

.category{
 min-height:120px;
 padding:18px;
 border-radius:19px;
 border:1px solid var(--border);
 background:
 linear-gradient(
   145deg,
   rgba(255,255,255,.065),
   rgba(255,255,255,.025)
 );
 transition:.25s;
 cursor:pointer;
 position:relative;
 overflow:hidden;
}

.category:hover{
 transform:translateY(-5px);
 border-color:rgba(255,255,255,.20);
}

.category-icon{
 font-size:20px;
 margin-bottom:8px;
 opacity:.9;
}

.category h3{
 font-size:17px;
 margin-bottom:6px;
}

.category p{
 font-size:12px;
 color:var(--muted);
}

.cat-purple{
 box-shadow:inset 0 -3px var(--lesson);
}

.cat-purple h3{
 color:var(--lesson);
}

.cat-blue{
 box-shadow:inset 0 -3px var(--summary);
}

.cat-blue h3{
 color:var(--summary);
}

.cat-green{
 box-shadow:inset 0 -3px var(--test);
}

.cat-green h3{
 color:var(--test);
}

.cat-orange{
 box-shadow:inset 0 -3px var(--room);
}

.cat-orange h3{
 color:var(--room);
}

/* =========================
   بطاقات
========================= */

.cards{
 display:grid;
 grid-template-columns:repeat(3,1fr);
 gap:17px;
}

.card{
 background:linear-gradient(145deg,#121c3e,#0b1330);
 border:1px solid var(--border);
 border-radius:20px;
 overflow:hidden;
 box-shadow:0 14px 40px rgba(0,0,0,.15);
 transition:.25s;
}

.card:hover{
 transform:translateY(-5px);
}

.cover{
 height:195px;
 position:relative;
 overflow:hidden;
 background:linear-gradient(135deg,#202b55,#0d1430);
}

.cover img{
 width:100%;
 height:100%;
 object-fit:cover;
 display:block;
}

.cover-shade{
 position:absolute;
 inset:0;
 background:linear-gradient(
   to top,
   rgba(3,6,16,.88),
   transparent 65%
 );
}

.play{
 position:absolute;
 left:50%;
 top:50%;
 transform:translate(-50%,-50%);
 width:44px;
 height:44px;
 border-radius:50%;
 display:grid;
 place-items:center;
 background:rgba(118,87,255,.92);
 border:1.5px solid rgba(255,255,255,.75);
 font-size:16px;
 box-shadow:0 0 25px rgba(118,87,255,.38);
}

.duration{
 position:absolute;
 bottom:10px;
 left:10px;
 padding:5px 8px;
 border-radius:7px;
 background:rgba(0,0,0,.65);
 font-size:10px;
}

.card-body{
 padding:17px;
}

.card-body h3{
 font-size:16px;
 line-height:1.5;
 margin-bottom:7px;
}

.card-body p{
 font-size:12px;
 color:var(--muted);
 line-height:1.7;
 min-height:40px;
}

.meta{
 display:flex;
 justify-content:space-between;
 gap:8px;
 margin-top:13px;
 font-size:10px;
 color:#cbd3ed;
}

.unit{
 color:var(--lesson);
}

.resource-card{
 padding:19px;
}

.resource-icon{
 width:38px;
 height:38px;
 border-radius:11px;
 display:grid;
 place-items:center;
 font-size:19px;
 margin-bottom:12px;
 background:rgba(255,255,255,.055);
 border:1px solid rgba(255,255,255,.08);
}

.resource-card h3{
 font-size:17px;
 line-height:1.5;
 margin-bottom:7px;
}

.resource-card p{
 color:var(--muted);
 font-size:12px;
 line-height:1.7;
 min-height:50px;
}

.resource-card .btn{
 width:100%;
 margin-top:13px;
}

/* =========================
   التحديات
========================= */

.challenge{
 padding:25px;
 border-radius:24px;
 background:
 radial-gradient(
   circle at 90% 10%,
   rgba(255,79,208,.14),
   transparent 30%
 ),
 linear-gradient(135deg,#17143b,#10183a);
 border:1px solid rgba(118,87,255,.25);
 position:relative;
 overflow:hidden;
}

.daily-grid{
 display:grid;
 grid-template-columns:repeat(5,1fr);
 gap:11px;
}

.challenge-progress{
 display:flex;
 gap:7px;
 margin-bottom:18px;
}

.challenge-step{
 height:8px;
 flex:1;
 border-radius:20px;
 background:rgba(255,255,255,.08);
 border:1px solid rgba(255,255,255,.06);
}

.challenge-step.active,
.challenge-step.done{
 background:linear-gradient(90deg,var(--primary),var(--cyan));
}

.challenge-card{
 position:relative;
 z-index:1;
 max-width:760px;
 margin:auto;
 padding:24px;
 border-radius:20px;
 background:rgba(255,255,255,.045);
 border:1px solid rgba(255,255,255,.10);
}

.challenge-card-head{
 display:flex;
 justify-content:space-between;
 align-items:center;
 margin-bottom:14px;
 color:var(--muted);
 font-size:12px;
}

.challenge-number{
 color:#fff;
 font-weight:900;
}

.challenge-points{
 padding:7px 10px;
 border-radius:50px;
 color:var(--gold);
 background:rgba(255,214,107,.08);
 border:1px solid rgba(255,214,107,.18);
 font-weight:900;
}

.challenge-question{
 font-size:22px;
 line-height:1.9;
 margin-bottom:18px;
}

.challenge-options{
 display:grid;
 gap:10px;
}

.challenge-option{
 width:100%;
 padding:13px 15px;
 border-radius:13px;
 background:rgba(255,255,255,.045);
 border:1px solid var(--border);
 color:#fff;
 text-align:right;
 font-size:14px;
 transition:.2s;
}

.challenge-option:hover{
 transform:translateX(-3px);
 border-color:var(--cyan);
 background:rgba(24,217,255,.07);
}

.challenge-option.correct{
 background:rgba(39,228,155,.15);
 border-color:var(--green);
}

.challenge-option.wrong{
 background:rgba(255,100,120,.15);
 border-color:var(--red);
}

.challenge-option:disabled{
 cursor:default;
}

.challenge-feedback{
 text-align:center;
 min-height:28px;
 margin-top:14px;
 font-size:13px;
 font-weight:800;
}

.challenge-next{
 display:none;
 margin:12px auto 0;
}

.challenge-complete{
 text-align:center;
 padding:25px;
}

.challenge-complete .big-star{
 font-size:48px;
}

.challenge-complete h3{
 font-size:25px;
 margin:8px 0;
}

.challenge-complete p{
 color:var(--muted);
 line-height:1.8;
 font-size:13px;
}

/* =========================
   منصة الأرقام - أصغر
========================= */

.stats{
 display:grid;
 grid-template-columns:repeat(4,1fr);
 gap:10px;
}

.stat{
 text-align:center;
 padding:14px;
 border-radius:15px;
 background:rgba(255,255,255,.04);
 border:1px solid var(--border);
}

.stat strong{
 display:block;
 font-size:23px;
 margin-bottom:4px;
 background:linear-gradient(90deg,var(--cyan),var(--primary));
 -webkit-background-clip:text;
 color:transparent;
}

.stat span{
 font-size:10px;
 color:var(--muted);
}

/* =========================
   المودالات
========================= */

.modal{
 position:fixed;
 inset:0;
 z-index:600;
 background:rgba(0,0,0,.78);
 backdrop-filter:blur(10px);
 display:none;
 align-items:center;
 justify-content:center;
 padding:12px;
}

.modal.show{
 display:flex;
}

.modal-box{
 width:min(900px,100%);
 max-height:92vh;
 overflow:auto;
 background:#0c1430;
 border:1px solid var(--border);
 border-radius:22px;
 padding:20px;
 position:relative;
 box-shadow:0 25px 90px rgba(0,0,0,.5);
}

.close{
 position:absolute;
 left:12px;
 top:12px;
 width:35px;
 height:35px;
 border-radius:50%;
 background:rgba(255,255,255,.08);
 color:#fff;
 font-size:20px;
 z-index:3;
}

.video-frame{
 width:100%;
 aspect-ratio:16/9;
 border:0;
 border-radius:14px;
 margin-top:18px;
 background:#000;
}

.video-points{
 display:flex;
 align-items:center;
 justify-content:space-between;
 gap:10px;
 margin-top:10px;
 padding:10px 12px;
 border-radius:11px;
 background:rgba(39,228,155,.06);
 border:1px solid rgba(39,228,155,.14);
 font-size:11px;
 color:#bff5df;
}

.video-points b{
 color:var(--gold);
}

.pdf-frame{
 width:100%;
 height:68vh;
 border:0;
 border-radius:13px;
 background:#fff;
 margin-top:18px;
}

.pdf-fallback{
 padding:25px;
 text-align:center;
 color:var(--muted);
 line-height:1.8;
}

.auth-box{
 width:min(430px,100%);
}

.auth-box h2{
 font-size:25px;
 margin-bottom:15px;
}

.auth-help{
 color:var(--muted);
 font-size:11px;
 line-height:1.7;
 margin-bottom:15px;
}

.exam-question{
 font-size:22px;
 line-height:1.8;
 margin:18px 0;
}

.exam-options{
 display:grid;
 gap:9px;
}

.exam-option{
 padding:14px;
 border-radius:12px;
 background:rgba(255,255,255,.05);
 border:1px solid var(--border);
 color:#fff;
 text-align:right;
 font-size:14px;
}

.exam-option.selected{
 background:rgba(39,228,155,.16);
 border-color:var(--green);
}

.exam-actions{
 display:flex;
 justify-content:space-between;
 gap:8px;
 margin-top:18px;
}

.progress{
 height:7px;
 background:rgba(255,255,255,.08);
 border-radius:20px;
 overflow:hidden;
}

.progress-bar{
 height:100%;
 width:0;
 background:linear-gradient(90deg,var(--primary),var(--cyan));
 transition:.25s;
}

.result{
 text-align:center;
 padding:25px;
}

.result-score{
 font-size:60px;
 font-weight:900;
 margin:14px;
 background:linear-gradient(90deg,var(--cyan),var(--primary),var(--pink));
 -webkit-background-clip:text;
 color:transparent;
}

/* =========================
   إشعار النقاط
========================= */

#pointToast{
 position:fixed;
 right:16px;
 bottom:18px;
 z-index:900;
 display:none;
 padding:10px 14px;
 border-radius:12px;
 background:rgba(11,18,45,.94);
 border:1px solid rgba(255,214,107,.28);
 box-shadow:0 10px 35px rgba(0,0,0,.35);
 color:#fff;
 font-size:12px;
}

#pointToast b{
 color:var(--gold);
}

footer{
 margin-top:50px;
 padding:35px 5%;
 text-align:center;
 color:var(--muted);
 font-size:11px;
 border-top:1px solid var(--border);
}

.loading,
.empty{
 padding:27px;
 text-align:center;
 color:var(--muted);
 background:rgba(255,255,255,.025);
 border-radius:15px;
 font-size:13px;
}

.error{
 padding:16px;
 border-radius:13px;
 color:#ffd1d1;
 background:rgba(255,80,90,.07);
 border:1px solid rgba(255,80,90,.15);
 font-size:12px;
 line-height:1.7;
}

/* =========================
   موبايل
========================= */

@media(max-width:1050px){

 .hero{
  grid-template-columns:1fr;
  text-align:center;
 }

 .hero p{
  margin:auto;
 }

 .hero-actions{
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

 .hero-visual{
  min-height:280px;
 }
}

@media(max-width:650px){

 .nav{
  min-height:60px;
  width:94%;
 }

 .logo-text{
  display:none;
 }

 .logo-icon{
  width:38px;
  height:38px;
  border-radius:12px;
  font-size:20px;
 }

 .nav-actions{
  margin-right:auto;
  gap:5px;
 }

 .nav-actions .btn{
  min-height:35px;
  padding:7px 9px;
  border-radius:11px;
  font-size:9px;
 }

 .user-box{
  min-height:35px;
  padding:6px 8px;
  font-size:9px;
  max-width:125px;
  overflow:hidden;
 }

 .user-box #userName{
  max-width:48px;
  overflow:hidden;
  text-overflow:ellipsis;
 }

 .hero{
  padding:40px 0 25px;
  min-height:auto;
 }

 .hero h2{
  font-size:41px;
 }

 .hero p{
  font-size:15px;
 }

 .hero-visual{
  min-height:240px;
 }

 .equation{
  font-size:65px;
 }

 .orbit{
  width:195px;
  height:195px;
 }

 .categories,
 .cards,
 .stats{
  grid-template-columns:1fr;
 }

 .section-title{
  display:block;
 }

 .section-title h2{
  font-size:24px;
 }

 .category{
  min-height:105px;
  padding:16px;
 }

 .category-icon{
  font-size:19px;
 }

 .cover{
  height:205px;
 }

 .modal-box{
  padding:17px;
 }

 .pdf-frame{
  height:65vh;
 }

 .exam-question{
  font-size:19px;
 }

 .student-bar{
  display:block;
 }

 .student-bar span{
  display:block;
  margin-top:5px;
 }

 .gate-card{
  padding:24px 18px;
  border-radius:22px;
 }

 .gate-card h2{
  font-size:24px;
 }

 .gate-card p{
  font-size:12px;
 }

 .section-page{
  padding-top:25px;
 }

 .page-header{
  padding:21px;
 }

 .page-title h2{
  font-size:25px;
 }

 .page-icon{
  width:36px;
  height:36px;
  font-size:18px;
 }

 .page-search{
  font-size:13px;
 }

 .stats{
  grid-template-columns:repeat(2,1fr);
 }

 .stat{
  padding:12px;
 }

 .stat strong{
  font-size:21px;
 }
}

@media(max-width:390px){

 .nav-actions .btn span{
  display:none;
 }

 .nav-actions .btn{
  min-width:35px;
  padding:7px;
 }

 .user-box{
  max-width:90px;
 }

 .user-box #userName{
  max-width:35px;
 }
}
</style>
</head>

<body>

<div class="stars" id="stars"></div>

<!-- =========================
     بوابة الدخول
========================= -->

<div id="loginGate">

 <div class="gate-card">

  <div class="gate-logo">∑</div>

  <h2>مرحبًا بك في منبر ون</h2>

  <p>
   سجّل دخولك أولًا للوصول إلى الدروس والملخصات والاختبارات والغرف والتحديات اليومية.
  </p>

  <input
   id="gateName"
   class="input"
   placeholder="اسم الطالب"
  >

  <input
   id="gateEmail"
   class="input"
   type="email"
   placeholder="البريد الإلكتروني"
  >

  <input
   id="gatePassword"
   class="input"
   type="password"
   placeholder="كلمة المرور"
  >

  <div id="gateMessage" class="message"></div>

  <button
   class="btn action-orange"
   style="width:100%"
   onclick="loginStudent()">
   🚀 دخول الطالب
  </button>

  <button
   class="btn action-orange"
   style="width:100%;margin-top:8px"
   onclick="signupStudent()">
   ✨ إنشاء حساب جديد
  </button>

 </div>
</div>

<!-- =========================
     الهيدر
========================= -->

<header>

 <div class="nav">

  <div class="logo">

   <div class="logo-icon">∑</div>

   <div class="logo-text">

    <h1>منبر ون</h1>

    <small>
     MINBAR ONE • MATH
    </small>

   </div>

  </div>

  <div class="nav-actions">

   <div
    id="userBox"
    class="user-box">

    👨‍🎓

    <span id="userName"></span>

    <span style="opacity:.45">•</span>

    <span
     class="user-points"
     id="userPoints">
     0 ⭐
    </span>

   </div>

   <button
    class="btn control-btn"
    onclick="location.href='teacher.html'">

    ⚙️

    <span>
     دخول لوحة التحكم
    </span>

   </button>

   <button
    class="btn nav-login"
    id="topLoginBtn"
    onclick="openLogin()">

    👨‍🎓

    <span>
     تسجيل الدخول
    </span>

   </button>

   <button
    class="btn btn-danger"
    id="logoutBtn"
    style="display:none"
    onclick="logoutStudent()">

    🚪

    <span>
     خروج
    </span>

   </button>

  </div>

 </div>

</header>


<!-- =========================
     المحتوى الرئيسي
========================= -->

<main class="container">

<!-- =========================
     الرئيسية
========================= -->

<div id="homeView">

 <section class="hero">

  <div>

   <div class="badge">
    📢 لوحة إعلانات منبر ون
   </div>

   <div
    id="announcementBox"
    class="announcement-box">

    <div class="announcement-top">

     <span>
      📢 إعلان المنصة
     </span>

     <span class="announcement-live">
      ● مباشر
     </span>

    </div>

    <h2 id="announcementTitle">
     مرحبًا بكم في منبر ون
    </h2>

    <p id="announcementText">
     هنا ستظهر إعلانات وتنبيهات المنصة التي يكتبها المعلم من لوحة التحكم.
    </p>

   </div>

   <div class="hero-actions">

    <button
     class="btn action-orange"
     onclick="openSection('lessons')">

     🎥 ابدأ الحصص

    </button>

    <button
     class="btn"
     onclick="scrollToSection('challengeSection')">

     ⚡ تحديات اليوم

    </button>

   </div>

  </div>


  <div class="hero-visual">

   <div class="orbit"></div>

   <div class="equation">
    x² + y²
   </div>

  </div>

 </section>


 <div class="student-bar">

  <div>

   <strong>

    👋 أهلًا

    <span id="welcomeName">
     بالطالب
    </span>

   </strong>

   <br>

   <span>
    كل دقيقة مشاهدة تمنحك نقطة ⭐
   </span>

  </div>

  <div>

   <span
    class="level"
    id="levelText">
    المستوى 1
   </span>

  </div>

 </div>


 <!-- =========================
      التحديات
 ========================= -->

 <section
  class="home-section"
  id="challengeSection">

  <div class="section-title">

   <div>

    <h2>
     ⚡ خمس تحديات اليوم
    </h2>

    <p>
     سؤال واحد في كل مرة — واجمع النقاط ⭐
    </p>

   </div>

  </div>

  <div class="challenge">

   <div id="challengeContent">

    <div class="loading">
     جاري تجهيز تحديات اليوم...
    </div>

   </div>

  </div>

 </section>


 <!-- =========================
      الأقسام
 ========================= -->

 <section class="home-section">

  <div class="section-title">

   <div>

    <h2>
     ماذا تريد أن تتعلم؟ 🎯
    </h2>

    <p>
     اختر القسم الذي تريد الدخول إليه
    </p>

   </div>

  </div>


  <div class="categories">


   <div
    class="category cat-purple"
    onclick="openSection('lessons')">

    <div class="category-icon">
     🎥
    </div>

    <h3>
     الحصص
    </h3>

    <p>
     شروحات الفيديو
    </p>

   </div>


   <div
    class="category cat-blue"
    onclick="openSection('summaries')">

    <div class="category-icon">
     📚
    </div>

    <h3>
     الملخصات
    </h3>

    <p>
     مراجعة سريعة
    </p>

   </div>


   <div
    class="category cat-green"
    onclick="openSection('tests')">

    <div class="category-icon">
     📝
    </div>

    <h3>
     الاختبارات
    </h3>

    <p>
     اختبر مستواك
    </p>

   </div>


   <div
    class="category cat-orange"
    onclick="openSection('rooms')">

    <div class="category-icon">
     💬
    </div>

    <h3>
     الغرف
    </h3>

    <p>
     تعلم وتواصل
    </p>

   </div>


  </div>

 </section>


 <!-- =========================
      إحصائيات صغيرة
 ========================= -->

 <section class="home-section">

  <div class="section-title">

   <div>

    <h2>
     📊 المنصة بالأرقام
    </h2>

   </div>

  </div>


  <div class="stats">

   <div class="stat">

    <strong id="lessonsCount">
     0
    </strong>

    <span>
     حصص
    </span>

   </div>


   <div class="stat">

    <strong id="summariesCount">
     0
    </strong>

    <span>
     ملخصات
    </span>

   </div>


   <div class="stat">

    <strong id="testsCount">
     0
    </strong>

    <span>
     اختبارات
    </span>

   </div>


   <div class="stat">

    <strong id="roomsCount">
     0
    </strong>

    <span>
     غرف
    </span>

   </div>

  </div>

 </section>

</div>


<!-- =========================
     صفحة الحصص
========================= -->

<section
 id="lessonsPage"
 class="section-page">

 <div class="page-header">

  <div class="page-header-content">

   <button
    class="page-back"
    onclick="goHome()">
    ↩ الرئيسية
   </button>

   <div class="page-title">

    <div class="page-icon">
     🎥
    </div>

    <h2>
     الحصص
    </h2>

   </div>

   <p>
    شاهد جميع الحصص التعليمية وابحث عن الحصة التي تريدها بسهولة.
   </p>

  </div>

 </div>


 <div class="page-search-wrap">

  <span class="page-search-icon">
   🔎
  </span>

  <input
   id="lessonsSearch"
   class="page-search"
   placeholder="اكتب عنوان الحصة أو الوحدة..."
   oninput="searchSection('lessons')">

 </div>


 <div
  id="lessonsContainer"
  class="cards">

  <div class="loading">
   جاري تحميل الحصص...
  </div>

 </div>


 <div
  id="lessonsEmpty"
  class="page-empty">

  🔎 لم نجد حصة مطابقة للبحث.

 </div>

</section>


<!-- =========================
     صفحة الملخصات
========================= -->

<section
 id="summariesPage"
 class="section-page">

 <div class="page-header">

  <div class="page-header-content">

   <button
    class="page-back"
    onclick="goHome()">
    ↩ الرئيسية
   </button>

   <div class="page-title">

    <div class="page-icon">
     📚
    </div>

    <h2>
     الملخصات
    </h2>

   </div>

   <p>
    ابحث عن الملخص الذي تحتاجه وافتحه مباشرة داخل المنصة.
   </p>

  </div>

 </div>


 <div class="page-search-wrap">

  <span class="page-search-icon">
   🔎
  </span>

  <input
   id="summariesSearch"
   class="page-search"
   placeholder="اكتب اسم الملخص..."
   oninput="searchSection('summaries')">

 </div>


 <div
  id="summariesContainer"
  class="cards">

  <div class="loading">
   جاري تحميل الملخصات...
  </div>

 </div>


 <div
  id="summariesEmpty"
  class="page-empty">

  🔎 لم نجد ملخصًا مطابقًا للبحث.

 </div>

</section>


<!-- =========================
     صفحة الاختبارات
========================= -->

<section
 id="testsPage"
 class="section-page">

 <div class="page-header">

  <div class="page-header-content">

   <button
    class="page-back"
    onclick="goHome()">
    ↩ الرئيسية
   </button>

   <div class="page-title">

    <div class="page-icon">
     📝
    </div>

    <h2>
     الاختبارات
    </h2>

   </div>

   <p>
    اختر الاختبار المناسب لك واختبر مستواك.
   </p>

  </div>

 </div>


 <div class="page-search-wrap">

  <span class="page-search-icon">
   🔎
  </span>

  <input
   id="testsSearch"
   class="page-search"
   placeholder="اكتب اسم الاختبار..."
   oninput="searchSection('tests')">

 </div>


 <div
  id="testsContainer"
  class="cards">

  <div class="loading">
   جاري تحميل الاختبارات...
  </div>

 </div>


 <div
  id="testsEmpty"
  class="page-empty">

  🔎 لم نجد اختبارًا مطابقًا للبحث.

 </div>

</section>


<!-- =========================
     صفحة الغرف
========================= -->

<section
 id="roomsPage"
 class="section-page">

 <div class="page-header">

  <div class="page-header-content">

   <button
    class="page-back"
    onclick="goHome()">
    ↩ الرئيسية
   </button>

   <div class="page-title">

    <div class="page-icon">
     💬
    </div>

    <h2>
     الغرف التعليمية
    </h2>

   </div>

   <p>
    ابحث عن الغرفة التعليمية التي تريد الدخول إليها.
   </p>

  </div>

 </div>


 <div class="page-search-wrap">

  <span class="page-search-icon">
   🔎
  </span>

  <input
   id="roomsSearch"
   class="page-search"
   placeholder="اكتب اسم الغرفة..."
   oninput="searchSection('rooms')">

 </div>


 <div
  id="roomsContainer"
  class="cards">

  <div class="loading">
   جاري تحميل الغرف...
  </div>

 </div>


 <div
  id="roomsEmpty"
  class="page-empty">

  🔎 لم نجد غرفة مطابقة للبحث.

 </div>

</section>

</main>


<footer>
 © 2026 منبر ون — منصة الرياضيات التعليمية ✨
</footer>


<!-- =========================
     تسجيل الدخول
========================= -->

<div
 class="modal"
 id="loginModal">

 <div class="modal-box auth-box">

  <button
   class="close"
   onclick="closeModal('loginModal')">
   ×
  </button>

  <h2>
   👨‍🎓 دخول الطالب
  </h2>

  <div class="auth-help">
   استخدم البريد وكلمة المرور المسجلين في Supabase Auth.
  </div>

  <input
   id="studentName"
   class="input"
   placeholder="اسم الطالب">

  <input
   id="studentEmail"
   class="input"
   type="email"
   placeholder="البريد الإلكتروني">

  <input
   id="studentPassword"
   class="input"
   type="password"
   placeholder="كلمة المرور">

  <div
   id="authMessage"
   class="message">
  </div>

  <button
   class="btn action-orange"
   style="width:100%"
   onclick="loginStudent('modal')">
   🚀 دخول
  </button>

  <button
   class="btn action-orange"
   style="width:100%;margin-top:8px"
   onclick="signupStudent('modal')">
   ✨ إنشاء حساب جديد
  </button>

 </div>

</div>


<!-- =========================
     الفيديو
========================= -->

<div
 class="modal"
 id="videoModal">

 <div class="modal-box">

  <button
   class="close"
   onclick="closeVideo()">
   ×
  </button>

  <h2 id="videoTitle">
   الحصة
  </h2>

  <div
   id="videoFrame"
   class="video-frame">
  </div>

  <div class="video-points">

   <span>
    🎯 وقت المشاهدة:
    <b id="watchClock">0:00</b>
   </span>

   <span>
    ⭐ نقاط المشاهدة:
    <b id="watchPoints">0</b>
   </span>

  </div>

 </div>

</div>


<!-- =========================
     الملخص
========================= -->

<div
 class="modal"
 id="summaryModal">

 <div class="modal-box">

  <button
   class="close"
   onclick="closeModal('summaryModal')">
   ×
  </button>

  <h2 id="summaryTitle">
   📚 الملخص
  </h2>

  <div id="summaryContent"></div>

 </div>

</div>


<!-- =========================
     الاختبار
========================= -->

<div
 class="modal"
 id="examModal">

 <div class="modal-box">

  <button
   class="close"
   onclick="closeExam()">
   ×
  </button>

  <div id="examContent"></div>

 </div>

</div>


<div id="pointToast">
 ⭐ <b>+1</b> نقطة! أحسنت 👏
</div>


<script src="https://www.youtube.com/iframe_api"></script>

<script>

/* =========================
   إعدادات Supabase
========================= */

const SUPABASE_URL="https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY="sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";

let session=null;
let student=null;

let lessons=[];
let summaries=[];
let tests=[];
let rooms=[];

let currentSection="home";

let exam={
 test:null,
 questions:[],
 answers:[],
 index:0,
 attempted:false
};

let ytPlayer=null;
let watchTimer=null;
let watchSeconds=0;
let awardedMinutes=0;
let watchPoints=0;
let currentVideoId=null;
let pendingVideoId=null;
let playerReady=false;


/* =========================
   تحديات اليوم
========================= */

const DAILY=[
 {
  q:"إذا كان 3x = 18 فما قيمة x؟",
  o:["3","6","9","12"],
  a:1,
  d:1,
  p:1
 },
 {
  q:"ما ناتج 5² − 3²؟",
  o:["8","12","16","18"],
  a:2,
  d:2,
  p:2
 },
 {
  q:"إذا كان x² = 49، فما القيم الممكنة لـ x؟",
  o:["7 فقط","−7 فقط","7 أو −7","49"],
  a:2,
  d:2,
  p:3
 },
 {
  q:"ما قيمة √144 + 2³؟",
  o:["16","18","20","22"],
  a:2,
  d:3,
  p:4
 },
 {
  q:"إذا كان 2^(x+1)=32، فما قيمة x؟",
  o:["3","4","5","6"],
  a:1,
  d:4,
  p:5
 }
];


/* =========================
   أدوات
========================= */

function $(id){
 return document.getElementById(id);
}

function safe(v){
 return String(v??"")
 .replace(/&/g,"&amp;")
 .replace(/</g,"&lt;")
 .replace(/>/g,"&gt;")
 .replace(/"/g,"&quot;")
 .replace(/'/g,"&#039;");
}

function closeModal(id){
 $(id).classList.remove("show");
}


/* =========================
   التنقل بين الصفحات
========================= */

function openSection(section){

 currentSection=section;

 $("homeView").style.display="none";

 document.querySelectorAll(".section-page")
 .forEach(page=>{
  page.classList.remove("active");
 });

 const page=$(section+"Page");

 if(page){
  page.classList.add("active");
 }

 window.scrollTo({
  top:0,
  behavior:"smooth"
 });

 if(section==="lessons"){
  setTimeout(()=>{
   $("lessonsSearch")?.focus();
  },350);
 }

 if(section==="summaries"){
  setTimeout(()=>{
   $("summariesSearch")?.focus();
  },350);
 }

 if(section==="tests"){
  setTimeout(()=>{
   $("testsSearch")?.focus();
  },350);
 }

 if(section==="rooms"){
  setTimeout(()=>{
   $("roomsSearch")?.focus();
  },350);
 }
}

function goHome(){

 currentSection="home";

 document.querySelectorAll(".section-page")
 .forEach(page=>{
  page.classList.remove("active");
 });

 $("homeView").style.display="block";

 window.scrollTo({
  top:0,
  behavior:"smooth"
 });
}


/* =========================
   التمرير للتحديات
========================= */

function scrollToSection(id){

 goHome();

 setTimeout(()=>{
  $(id)?.scrollIntoView({
   behavior:"smooth",
   block:"start"
  });
 },50);
}


/* =========================
   بوابة الدخول
========================= */

function showGate(){

 $("loginGate").style.display="grid";

 document.documentElement.classList.add("need-login");

 document.body.classList.add("locked");

 if($("topLoginBtn"))
  $("topLoginBtn").style.display="inline-flex";

 if($("userBox"))
  $("userBox").style.display="none";

 if($("logoutBtn"))
  $("logoutBtn").style.display="none";
}

function hideGate(){

 $("loginGate").style.display="none";

 document.documentElement.classList.remove("need-login");

 document.body.classList.remove("locked");
}


/* =========================
   الرسائل
========================= */

function setMsg(id,text){
 if($(id))
  $(id).textContent=text;
}


/* =========================
   النجوم
========================= */

function makeStars(){

 const box=$("stars");

 let html="";

 const symbols=[
  "✦",
  "✧",
  "⋆",
  "·",
  "★",
  "✦",
  "✧"
 ];

 const colors=[
  "#18d9ff",
  "#a98cff",
  "#ff4fd0",
  "#ffd66b",
  "#27e49b",
  "#8fdcff",
  "#ffffff"
 ];

 for(let i=0;i<75;i++){

  const left=Math.random()*100;

  const delay=-(Math.random()*14);

  const dur=9+Math.random()*14;

  const size=5+Math.random()*7;

  const drift=(Math.random()*140-70).toFixed(0);

  const color=
   colors[
    Math.floor(
     Math.random()*colors.length
    )
   ];

  const symbol=
   symbols[
    Math.floor(
     Math.random()*symbols.length
    )
   ];

  html+=`
   <span
    class="star"
    style="
     left:${left}%;
     animation-delay:${delay}s;
     animation-duration:${dur}s;
     font-size:${size}px;
     --drift:${drift}px;
     color:${color};
    ">
    ${symbol}
   </span>
  `;
 }

 box.innerHTML=html;
}

makeStars();


/* =========================
   Supabase Auth
========================= */

async function auth(path,body,method="POST"){

 const r=await fetch(
  SUPABASE_URL+"/auth/v1/"+path,
  {
   method,
   headers:{
    "apikey":SUPABASE_KEY,
    "Content-Type":"application/json"
   },
   body:
    method==="GET"
    ?undefined
    :JSON.stringify(body||{})
  }
 );

 const raw=await r.text();

 let d={};

 try{
  d=raw?JSON.parse(raw):{};
 }catch{
  d={message:raw};
 }

 if(!r.ok){

  throw new Error(
   d.error_description||
   d.msg||
   d.message||
   "تعذر تنفيذ العملية"
  );
 }

 return d;
}


/* =========================
   تحديث الجلسة
========================= */

async function refreshSession(){

 if(!session?.refresh_token)
  return false;

 try{

  const s=await auth(
   "token?grant_type=refresh_token",
   {
    refresh_token:session.refresh_token
   }
  );

  session=s;

  localStorage.setItem(
   "minbar_student_session",
   JSON.stringify(s)
  );

  return true;

 }catch{

  return false;
 }
}


/* =========================
   API
========================= */

async function api(
 table,
 method="GET",
 body=null,
 params="",
 useSession=true,
 retried=false
){

 const token=
  useSession
  ?(session?.access_token||SUPABASE_KEY)
  :SUPABASE_KEY;

 const headers={
  "apikey":SUPABASE_KEY,
  "Accept":"application/json",
  "Content-Type":"application/json",
  "Authorization":"Bearer "+token
 };

 if(method!=="GET"){
  headers.Prefer="return=representation";
 }

 const r=await fetch(
  SUPABASE_URL+"/rest/v1/"+
  table+
  (params?"?"+params:""),
  {
   method,
   headers,
   body:
    body
    ?JSON.stringify(body)
    :undefined
  }
 );

 const raw=await r.text();

 let d;

 try{
  d=raw?JSON.parse(raw):[];
 }catch{
  d=raw;
 }

 if(!r.ok){

  if(
   r.status===401 &&
   useSession &&
   !retried &&
   await refreshSession()
  ){

   return api(
    table,
    method,
    body,
    params,
    useSession,
    true
   );
  }

  let msg=
   typeof d==="object"
   ?(
     d.message||
     d.hint||
     d.details||
     d.code
    )
   :String(d);

  throw new Error(
   "Supabase "+r.status+": "+
   (msg||"خطأ")
  );
 }

 return d;
}


/* =========================
   إنشاء صف الطالب
========================= */

async function ensureStudentRow(){

 if(!session?.user?.email)
  return false;

 const email=
  session.user.email.toLowerCase();

 try{

  const rows=await api(
   "students",
   "GET",
   null,
   "select=*&email=eq."+
   encodeURIComponent(email)+
   "&limit=1"
  );

  if(rows?.length){

   student=rows[0];

  }else{

   const created=await api(
    "students",
    "POST",
    {
     name:
      session.user.user_metadata?.name||
      $("gateName").value.trim()||
      "طالب",

     email,

     password:null,

     status:"active",

     points:0,

     watch_minutes:0,

     last_seen:
      new Date().toISOString()
    },
    "",
    true
   );

   student=created?.[0]||null;
  }


  if(student?.status==="blocked"){

   await auth("logout",{}).catch(()=>{});

   session=null;

   student=null;

   localStorage.removeItem(
    "minbar_student_session"
   );

   showGate();

   setMsg(
    "gateMessage",
    "🚫 تم إيقاف هذا الحساب من لوحة التحكم."
   );

   return false;
  }


  await api(
   "students",
   "PATCH",
   {
    last_seen:
     new Date().toISOString()
   },
   "id=eq."+student.id
  );

  return true;

 }catch(e){

  setMsg(
   "gateMessage",
   "❌ "+e.message
  );

  return false;
 }
}


/* =========================
   واجهة الطالب
========================= */

function fillStudentUI(){

 if(!student)
  return;

 $("userBox").style.display="flex";

 $("logoutBtn").style.display="inline-flex";

 $("topLoginBtn").style.display="none";

 $("userName").textContent=
  student.name||"طالب";

 $("welcomeName").textContent=
  student.name||"بالطالب";

 updatePointsUI();
}

function updatePointsUI(){

 const pts=
  Number(student?.points||0);

 $("userPoints").textContent=
  pts+" ⭐";

 $("levelText").textContent=
  "المستوى "+
  (Math.floor(pts/50)+1);
}


/* =========================
   تسجيل الدخول
========================= */

async function loginStudent(source){

 const p=
 source==="modal"
 ?
 {
  name:$("studentName").value.trim(),

  email:
   $("studentEmail").value
   .trim()
   .toLowerCase(),

  password:
   $("studentPassword").value
 }
 :
 {
  name:$("gateName").value.trim(),

  email:
   $("gateEmail").value
   .trim()
   .toLowerCase(),

  password:
   $("gatePassword").value
 };

 const msgId=
 source==="modal"
 ?"authMessage"
 :"gateMessage";

 if(!p.email||!p.password){

  setMsg(
   msgId,
   "اكتب البريد وكلمة المرور."
  );

  return;
 }

 setMsg(
  msgId,
  "⏳ جاري تسجيل الدخول..."
 );

 try{

  const s=await auth(
   "token?grant_type=password",
   {
    email:p.email,
    password:p.password
   }
  );

  session=s;

  localStorage.setItem(
   "minbar_student_session",
   JSON.stringify(s)
  );

  const ok=
   await ensureStudentRow();

  if(!ok)
   return;

  hideGate();

  fillStudentUI();

  closeModal("loginModal");

  await loadAll();

  renderDaily();

 }catch(e){

  setMsg(
   msgId,
   "❌ "+e.message
  );
 }
}


/* =========================
   إنشاء حساب
========================= */

async function signupStudent(source){

 const p=
 source==="modal"
 ?
 {
  name:$("studentName").value.trim(),

  email:
   $("studentEmail").value
   .trim()
   .toLowerCase(),

  password:
   $("studentPassword").value
 }
 :
 {
  name:$("gateName").value.trim(),

  email:
   $("gateEmail").value
   .trim()
   .toLowerCase(),

  password:
   $("gatePassword").value
 };

 const msgId=
 source==="modal"
 ?"authMessage"
 :"gateMessage";

 if(!p.name||!p.email||!p.password){

  setMsg(
   msgId,
   "اكتب الاسم والبريد وكلمة المرور."
  );

  return;
 }

 setMsg(
  msgId,
  "⏳ جاري إنشاء الحساب..."
 );

 try{

  const s=await auth(
   "signup",
   {
    email:p.email,
    password:p.password,
    data:{
     name:p.name
    }
   }
  );

  if(s.access_token){

   session=s;

   localStorage.setItem(
    "minbar_student_session",
    JSON.stringify(s)
   );

   const ok=
    await ensureStudentRow();

   if(!ok)
    return;

   hideGate();

   fillStudentUI();

   closeModal("loginModal");

   await loadAll();

   renderDaily();

  }else{

   setMsg(
    msgId,
    "✅ تم إنشاء الحساب. إذا كان تأكيد البريد مفعّلًا، أكد بريدك ثم سجّل الدخول."
   );
  }

 }catch(e){

  setMsg(
   msgId,
   "❌ "+e.message
  );
 }
}


/* =========================
   استعادة الجلسة
========================= */

async function restoreSession(){

 try{

  session=
   JSON.parse(
    localStorage.getItem(
     "minbar_student_session"
    )||"null"
   );

 }catch{

  session=null;
 }


 if(!session?.access_token){

  showGate();

  return;
 }


 try{

  const ok=
   await ensureStudentRow();

  if(!ok){

   if(!student){

    session=null;

    localStorage.removeItem(
     "minbar_student_session"
    );

    showGate();
   }

   return;
  }

  hideGate();

  fillStudentUI();

  await loadAll();

  renderDaily();

 }catch{

  if(await refreshSession()){

   const ok=
    await ensureStudentRow();

   if(ok){

    hideGate();

    fillStudentUI();

    await loadAll();

    renderDaily();

    return;
   }
  }

  session=null;

  student=null;

  localStorage.removeItem(
   "minbar_student_session"
  );

  showGate();
 }
}


/* =========================
   تسجيل الخروج
========================= */

async function logoutStudent(){

 try{
  await auth("logout",{});
 }catch{}

 session=null;

 student=null;

 localStorage.removeItem(
  "minbar_student_session"
 );

 location.reload();
}


/* =========================
   تحميل المحتوى
========================= */

async function getTable(table){

 return await api(
  table,
  "GET",
  null,
  "select=*"
 );
}


async function loadLessons(){

 try{

  lessons=
   await getTable("lessons");

  if(!Array.isArray(lessons))
   lessons=[];

  renderLessons(lessons);

  $("lessonsCount").textContent=
   lessons.length;

 }catch(e){

  $("lessonsContainer").innerHTML=
  `
   <div class="error">

    ❌ تعذر تحميل الحصص.

    <br>

    ${safe(e.message)}

    <br>

    <small>
     إذا كان الخطأ 401، تأكد من Publishable Key.
    </small>

   </div>
  `;
 }
}


async function loadSummaries(){

 try{

  summaries=
   await getTable("summaries");

  if(!Array.isArray(summaries))
   summaries=[];

  renderSummaries(summaries);

  $("summariesCount").textContent=
   summaries.length;

 }catch(e){

  $("summariesContainer").innerHTML=
  `
   <div class="error">

    ❌ تعذر تحميل الملخصات.

    <br>

    ${safe(e.message)}

   </div>
  `;
 }
}


async function loadTests(){

 try{

  tests=
   await getTable("tests");

  if(!Array.isArray(tests))
   tests=[];

  renderTests(tests);

  $("testsCount").textContent=
   tests.length;

 }catch(e){

  $("testsContainer").innerHTML=
  `
   <div class="error">

    ❌ تعذر تحميل الاختبارات.

    <br>

    ${safe(e.message)}

   </div>
  `;
 }
}


async function loadRooms(){

 try{

  rooms=
   await getTable("rooms");

  if(!Array.isArray(rooms))
   rooms=[];

  renderRooms(rooms);

  $("roomsCount").textContent=
   rooms.length;

 }catch(e){

  $("roomsContainer").innerHTML=
  `
   <div class="error">

    ❌ تعذر تحميل الغرف.

    <br>

    ${safe(e.message)}

   </div>
  `;
 }
}


/* =========================
   الإعلانات
========================= */

async function loadAnnouncement(){

 try{

  const rows=
   await api(
    "teacher_info",
    "GET",
    null,
    "select=announcement_title,announcement_text,announcement_active&order=id.asc&limit=1"
   );

  const a=rows?.[0];

  if(
   a &&
   a.announcement_active!==false &&
   (
    a.announcement_title||
    a.announcement_text
   )
  ){

   $("announcementTitle").textContent=
    a.announcement_title||
    "إعلان من المنصة";

   $("announcementText").textContent=
    a.announcement_text||"";

   $("announcementBox")
    .classList
    .remove("hidden");
  }

 }catch(e){

  console.warn(
   "announcement",
   e.message
  );
 }
}


async function loadAll(){

 await Promise.allSettled([
  loadLessons(),
  loadSummaries(),
  loadTests(),
  loadRooms(),
  loadAnnouncement()
 ]);
}


/* =========================
   YouTube
========================= */

function youtubeId(url){

 const s=
  String(url||"").trim();

 let m=
  s.match(
   /youtu\.be\/([A-Za-z0-9_-]{6,})/
  );

 if(m)
  return m[1];

 m=
  s.match(
   /[?&]v=([A-Za-z0-9_-]{6,})/
  );

 if(m)
  return m[1];

 m=
  s.match(
   /youtube\.com\/shorts\/([A-Za-z0-9_-]{6,})/
  );

 if(m)
  return m[1];

 m=
  s.match(
   /youtube\.com\/embed\/([A-Za-z0-9_-]{6,})/
  );

 if(m)
  return m[1];

 return "";
}


function youtubeEmbed(url){

 const id=
  youtubeId(url);

 return id
 ?
 `https://www.youtube.com/embed/${id}?enablejsapi=1&rel=0&modestbranding=1`
 :"";
}


/* =========================
   عرض الحصص
========================= */

function renderLessons(list){

 if(!list.length){

  $("lessonsContainer").innerHTML=
   '<div class="empty">لا توجد حصص مضافة بعد.</div>';

  return;
 }

 $("lessonsContainer").innerHTML=

 list.map((x,i)=>{

  const id=
   youtubeId(x.video_url);

  const thumb=
   id
   ?
   `https://img.youtube.com/vi/${id}/hqdefault.jpg`
   :"";

  return `

   <article
    class="card"
    data-search="${safe(
     (x.title||"")+" "+
     (x.description||"")+" "+
     (x.unit||"")
    )}"
    onclick="openVideoByIndex(${lessons.indexOf(x)})">

    <div class="cover">

     ${
      thumb
      ?
      `<img src="${thumb}" alt="">`
      :""
     }

     <div class="cover-shade"></div>

     <div class="play">
      ▶
     </div>

     ${
      x.duration
      ?
      `<span class="duration">${safe(x.duration)}</span>`
      :""
     }

    </div>

    <div class="card-body">

     <h3>
      ${safe(x.title||"حصة رياضيات")}
     </h3>

     <p>
      ${safe(
       x.description||
       "🎬 فيديو تعليمي — اضغط للمشاهدة."
      )}
     </p>

     <div class="meta">

      <span class="unit">
       ${safe(x.unit||"رياضيات")}
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
   عرض الملخصات
========================= */

function renderSummaries(list){

 if(!list.length){

  $("summariesContainer").innerHTML=
   '<div class="empty">لا توجد ملخصات مضافة بعد.</div>';

  return;
 }

 $("summariesContainer").innerHTML=

 list.map((x,i)=>`

  <article
   class="card resource-card"
   data-search="${safe(
    (x.title||"")+" "+
    (x.description||"")
   )}">

   <div class="resource-icon">
    📚
   </div>

   <h3>
    ${safe(x.title||"ملخص")}
   </h3>

   <p>
    ${safe(
     x.description||
     "ملخص جاهز للمراجعة."
    )}
   </p>

   <button
    class="btn action-orange"
    onclick="event.stopPropagation();openSummaryByIndex(${i})">

    📖 فتح الملخص

   </button>

  </article>

 `).join("");
}


/* =========================
   عرض الاختبارات
========================= */

function renderTests(list){

 if(!list.length){

  $("testsContainer").innerHTML=
   '<div class="empty">لا توجد اختبارات مضافة بعد.</div>';

  return;
 }

 $("testsContainer").innerHTML=

 list.map((x,i)=>`

  <article
   class="card resource-card"
   data-search="${safe(
    (x.title||"")+" "+
    (x.description||"")
   )}">

   <div class="resource-icon">
    📝
   </div>

   <h3>
    ${safe(x.title||"اختبار")}
   </h3>

   <p>
    ${safe(
     x.description||
     "اختبار من أسئلة المنصة."
    )}
   </p>

   <div class="meta">

    <span>
     ${Number(x.questions_count||0)} سؤال
    </span>

    <span>
     🎯 اختبار
    </span>

   </div>

   <button
    class="btn action-orange"
    onclick="event.stopPropagation();startExamByIndex(${i})">

    🚀 بدء الاختبار

   </button>

  </article>

 `).join("");
}


/* =========================
   عرض الغرف
========================= */

function renderRooms(list){

 if(!list.length){

  $("roomsContainer").innerHTML=
   '<div class="empty">لا توجد غرف مضافة بعد.</div>';

  return;
 }

 $("roomsContainer").innerHTML=

 list.map((x,i)=>`

  <article
   class="card resource-card"
   data-search="${safe(
    (x.name||"")+" "+
    (x.description||"")
   )}">

   <div class="resource-icon">
    💬
   </div>

   <h3>
    ${safe(x.name||"غرفة تعليمية")}
   </h3>

   <p>
    ${safe(
     x.description||
     "غرفة تعليمية."
    )}
   </p>

   ${
    x.room_link
    ?
    `
     <button
      class="btn action-orange"
      onclick="
       event.stopPropagation();
       window.open('${safe(x.room_link)}','_blank','noopener')
      ">

      🔗 دخول الغرفة

     </button>
    `
    :""
   }

  </article>

 `).join("");
}


/* =========================
   البحث داخل الأقسام
========================= */

function searchSection(section){

 const input=$(section+"Search");

 const query=
  input.value
  .trim()
  .toLowerCase();

 const container=
  $(section+"Container");

 const empty=
  $(section+"Empty");

 const cards=
  container.querySelectorAll(
   "[data-search]"
  );

 let visible=0;

 cards.forEach(card=>{

  const text=
   (card.getAttribute("data-search")||"")
   .toLowerCase();

  const match=
   !query||
   text.includes(query);

  card.style.display=
   match?"":"none";

  if(match)
   visible++;
 });

 if(empty){

  empty.style.display=
   query && visible===0
   ?"block"
   :"none";
 }
}


/* =========================
   الملخصات
========================= */

function drivePreview(url){

 const s=
  String(url||"").trim();

 let m=
  s.match(
   /drive\.google\.com\/file\/d\/([^/]+)/
  );

 if(m)
  return `https://drive.google.com/file/d/${m[1]}/preview`;

 m=
  s.match(
   /[?&]id=([^&]+)/
  );

 if(
  s.includes("drive.google.com")&&
  m
 )
  return `https://drive.google.com/file/d/${m[1]}/preview`;

 return s;
}


function openSummaryByIndex(i){

 const x=summaries[i];

 if(!x)
  return;

 $("summaryTitle").textContent=
  "📚 "+(x.title||"الملخص");

 const url=
  drivePreview(x.file_url);

 if(!url){

  $("summaryContent").innerHTML=
  `
   <div class="pdf-fallback">

    ⚠️ هذا الملخص لا يحتوي على رابط ملف صحيح.

   </div>
  `;

 }else{

  $("summaryContent").innerHTML=
  `

   <iframe
    class="pdf-frame"
    src="${safe(url)}"
    title="الملخص">
   </iframe>

   <div class="pdf-fallback">

    إذا لم يظهر الملف، افتحه في صفحة جديدة.

    <br>

    <button
     class="btn action-orange"
     style="margin-top:10px"
     onclick="
      window.open(
       '${safe(x.file_url)}',
       '_blank',
       'noopener'
      )
     ">

     🔗 فتح الملف في صفحة جديدة

    </button>

   </div>
  `;
 }

 $("summaryModal")
  .classList
  .add("show");
}


/* =========================
   الفيديو والنقاط
========================= */

function openVideoByIndex(i){

 const x=lessons[i];

 if(!x)
  return;

 const id=
  youtubeId(x.video_url);

 if(!id){

  alert(
   "رابط YouTube غير صالح."
  );

  return;
 }

 stopWatching();

 currentVideoId=id;

 pendingVideoId=id;

 watchSeconds=0;

 awardedMinutes=0;

 watchPoints=0;

 $("videoTitle").textContent=
  x.title||"الحصة";

 $("watchClock").textContent=
  "0:00";

 $("watchPoints").textContent=
  "0";

 $("videoModal")
  .classList
  .add("show");

 if(
  window.YT&&
  YT.Player
 ){

  createYoutubePlayer(id);
 }
}


function createYoutubePlayer(id){

 if(
  ytPlayer&&
  typeof ytPlayer.destroy==="function"
 ){

  try{
   ytPlayer.destroy()
  }catch{}
 }

 $("videoFrame").innerHTML="";

 ytPlayer=
 new YT.Player(
  "videoFrame",
  {
   width:"100%",
   height:"100%",

   videoId:id,

   playerVars:{
    autoplay:1,
    rel:0,
    modestbranding:1,
    playsinline:1
   },

   events:{

    onReady:function(){

     playerReady=true;

     startWatchCounter();
    },

    onStateChange:function(e){

     if(
      e.data===
      YT.PlayerState.PLAYING
     ){

      startWatchCounter();

     }else{

      clearInterval(
       watchTimer
      );
     }
    }
   }
  }
 );
}


window.onYouTubeIframeAPIReady=
function(){

 playerReady=true;

 if(
  pendingVideoId&&
  $("videoModal")
   .classList
   .contains("show")
 ){

  createYoutubePlayer(
   pendingVideoId
  );
 }
};


function startWatchCounter(){

 clearInterval(watchTimer);

 watchTimer=
 setInterval(
  async()=>{

   if(
    !ytPlayer||
    typeof ytPlayer.getPlayerState!=="function"
   )
    return;

   if(
    ytPlayer.getPlayerState()!==
    YT.PlayerState.PLAYING
   )
    return;

   watchSeconds++;

   $("watchClock").textContent=
    Math.floor(
     watchSeconds/60
    )+
    ":"+
    String(
     watchSeconds%60
    ).padStart(2,"0");

   const mins=
    Math.floor(
     watchSeconds/60
    );

   if(mins>awardedMinutes){

    awardedMinutes=mins;

    watchPoints=mins;

    $("watchPoints").textContent=
     watchPoints;

    await addStudentPoints(
     1,
     "watch"
    );
   }

  },
  1000
 );
}


async function addStudentPoints(
 amount,
 reason
){

 if(
  !student||
  amount<=0
 )
  return;

 try{

  const newPoints=
   Number(student.points||0)+
   amount;

  const newMinutes=
   Number(student.watch_minutes||0)+
   (
    reason==="watch"
    ?1
    :0
   );

  await api(
   "students",
   "PATCH",
   {
    points:newPoints,

    watch_minutes:newMinutes,

    last_seen:
     new Date().toISOString()
   },
   "id=eq."+student.id
  );

  student.points=
   newPoints;

  student.watch_minutes=
   newMinutes;

  student.last_seen=
   new Date().toISOString();

  updatePointsUI();

  $("pointToast").innerHTML=
  `
   ⭐ <b>+${amount}</b>
   نقطة! أحسنت 👏
  `;

  $("pointToast").style.display=
   "block";

  clearTimeout(
   window.pointToastTimer
  );

  window.pointToastTimer=
   setTimeout(
    ()=>{
     $("pointToast").style.display=
      "none";
    },
    2300
   );

 }catch(e){

  console.warn(
   "points:",
   e.message
  );
 }
}


function stopWatching(){

 clearInterval(
  watchTimer
 );

 watchTimer=null;

 pendingVideoId=null;

 if(
  ytPlayer&&
  typeof ytPlayer.destroy==="function"
 ){

  try{
   ytPlayer.destroy()
  }catch{}
 }

 ytPlayer=null;

 playerReady=false;

 if($("videoFrame"))
  $("videoFrame").innerHTML="";
}


function closeVideo(){

 stopWatching();

 closeModal(
  "videoModal"
 );
}


/* =========================
   التحديات اليومية
========================= */

function dailyKey(){

 const d=new Date();

 return "minbar_daily_"+
  d.getFullYear()+"_"+
  (d.getMonth()+1)+"_"+
  d.getDate();
}


function readDaily(){

 const key=
  dailyKey();

 try{

  return JSON.parse(
   localStorage.getItem(key)||
   "{}"
  );

 }catch{

  return {};
 }
}


function saveDaily(done){

 localStorage.setItem(
  dailyKey(),
  JSON.stringify(done)
 );
}


function renderDaily(){

 const done=
  readDaily();

 const completed=
  Object.keys(done).length;

 if(completed>=DAILY.length){

  const total=
   DAILY.reduce(
    (sum,q)=>
     sum+q.p,
    0
   );

  $("challengeContent").innerHTML=
  `
   <div class="challenge-complete">

    <div class="big-star">
     🌟
    </div>

    <h3>
     أكملت تحديات اليوم!
    </h3>

    <p>

     أحسنت 👏 أجبت عن الأسئلة الخمسة.

     <br>

     مجموع نقاط التحدي اليومي الممكن:

     <b style="color:var(--gold)">
      ${total} ⭐
     </b>

    </p>

   </div>
  `;

  return;
 }

 const i=completed;

 const q=DAILY[i];

 const steps=
  DAILY.map(
   (_,n)=>
   `
    <span
     class="challenge-step
     ${n<completed?"done":""}
     ${n===i?"active":""}">
    </span>
   `
  ).join("");

 $("challengeContent").innerHTML=
 `
  <div class="challenge-progress">
   ${steps}
  </div>

  <div class="challenge-card">

   <div class="challenge-card-head">

    <span class="challenge-number">
     السؤال ${i+1} من ${DAILY.length}
    </span>

    <span class="challenge-points">
     ⭐ ${q.p} نقطة
    </span>

   </div>

   <div class="challenge-question">
    ${q.q}
   </div>

   <div class="challenge-options">

    ${q.o.map(
     (o,j)=>
     `
      <button
       class="challenge-option"
       onclick="answerDaily(${i},${j},this)">

       ${safe(o)}

      </button>
     `
    ).join("")}

   </div>

   <div
    id="dailyFeedback"
    class="challenge-feedback">
   </div>

   <button
    id="dailyNext"
    class="btn action-orange challenge-next"
    onclick="nextDaily()">

    السؤال التالي ➡

   </button>

  </div>
 `;
}


async function answerDaily(i,j,btn){

 const done=
  readDaily();

 if(done[i])
  return;

 const q=DAILY[i];

 const correct=
  j===q.a;

 const opts=
  btn.parentElement
   .querySelectorAll(
    ".challenge-option"
   );

 opts.forEach(
  x=>x.disabled=true
 );

 btn.classList.add(
  correct
  ?"correct"
  :"wrong"
 );

 if(!correct){

  opts[q.a]?.classList
   .add("correct");
 }

 done[i]={
  choice:j,
  correct
 };

 saveDaily(done);

 const fb=
  $("dailyFeedback");

 if(correct){

  fb.innerHTML=
  `
   🎉 إجابة صحيحة!

   <span style="color:var(--gold)">
    +${q.p} ⭐
   </span>
  `;

  await addStudentPoints(
   q.p,
   "daily"
  );

 }else{

  fb.innerHTML=
  `
   💡 ليست صحيحة.

   الإجابة الصحيحة هي:

   <b>
    ${safe(q.o[q.a])}
   </b>
  `;
 }

 const next=
  $("dailyNext");

 if(next){

  next.style.display=
   "block";

  next.textContent=
   i===DAILY.length-1
   ?
   "🏁 عرض النتيجة"
   :
   "السؤال التالي ➡";
 }
}


function nextDaily(){

 renderDaily();
}


/* =========================
   الاختبارات
========================= */

async function startExamByIndex(i){

 const t=tests[i];

 if(!t)
  return;

 try{

  const existing=
   await api(
    "test_attempts",
    "GET",
    null,
    "select=*&test_id=eq."+
    t.id+
    "&student_email=eq."+
    encodeURIComponent(
     student.email
    )+
    "&limit=1"
   );

  if(existing?.length){

   alert(
    "🔒 لقد أنهيت هذا الاختبار من قبل، ولا يمكن إعادته."
   );

   return;
  }

  const qs=
   await api(
    "test_questions",
    "GET",
    null,
    "select=*&test_id=eq."+
    t.id+
    "&order=question_order.asc"
   );

  if(!qs.length){

   alert(
    "⚠️ هذا الاختبار لا يحتوي على أسئلة بعد."
   );

   return;
  }

  exam={
   test:t,
   questions:qs,
   answers:Array(
    qs.length
   ).fill(null),
   index:0,
   attempted:false
  };

  renderExam();

  $("examModal")
   .classList
   .add("show");

 }catch(e){

  alert(
   "❌ تعذر فتح الاختبار: "+
   e.message
  );
 }
}


function normalizeAnswer(q){

 const v=
  String(
   q.correct_answer??""
  )
  .trim()
  .toLowerCase();

 const map={
  a:0,
  b:1,
  c:2,
  d:3,
  option_a:0,
  option_b:1,
  option_c:2,
  option_d:3
 };

 if(map[v]!=null)
  return map[v];

 const opts=[
  q.option_a,
  q.option_b,
  q.option_c,
  q.option_d
 ].map(
  x=>
   String(x??"")
   .trim()
   .toLowerCase()
 );

 const idx=
  opts.indexOf(v);

 return idx>=0
  ?idx
  :-1;
}


function renderExam(){

 const q=
  exam.questions[
   exam.index
  ];

 const total=
  exam.questions.length;

 const chosen=
  exam.answers[
   exam.index
  ];

 $("examContent").innerHTML=
 `
  <div class="exam-header">

   <strong>
    📝
    ${safe(
     exam.test.title||
     "اختبار"
    )}
   </strong>

   <span>
    ${exam.index+1} / ${total}
   </span>

  </div>

  <div class="progress">

   <div
    class="progress-bar"
    style="width:${(
     (exam.index+1)/
     total
    )*100}%">
   </div>

  </div>

  <div class="exam-question">
   ${safe(q.question_text)}
  </div>

  <div class="exam-options">

   ${
    [
     q.option_a,
     q.option_b,
     q.option_c,
     q.option_d
    ].map(
     (o,j)=>
     `
      <button
       class="exam-option ${
        chosen===j
        ?"selected"
        :""
       }"
       onclick="chooseExam(${j})">

       ${String.fromCharCode(65+j)})
       ${safe(o)}

      </button>
     `
    ).join("")
   }

  </div>

  <div class="exam-actions">

   <button
    class="btn"
    onclick="prevExam()"
    ${exam.index===0?"disabled":""}>

    ⬅ السابق

   </button>

   <button
    class="btn action-orange"
    onclick="${
     exam.index===total-1
     ?"finishExam()"
     :"nextExam()"
    }">

    ${
     exam.index===total-1
     ?"🏁 إنهاء الاختبار"
     :"التالي ➡"
    }

   </button>

  </div>
 `;
}


function chooseExam(j){

 exam.answers[
  exam.index
 ]=j;

 renderExam();
}


function prevExam(){

 if(exam.index>0){

  exam.index--;

  renderExam();
 }
}


function nextExam(){

 if(
  exam.answers[
   exam.index
  ]==null
 ){

  alert(
   "اختر إجابة أولًا."
  );

  return;
 }

 if(
  exam.index<
  exam.questions.length-1
 ){

  exam.index++;

  renderExam();
 }
}


async function finishExam(){

 if(
  exam.answers.some(
   x=>x==null
  )
 ){

  alert(
   "أجب عن جميع الأسئلة أولًا."
  );

  return;
 }

 let correct=0;

 for(
  let i=0;
  i<exam.questions.length;
  i++
 ){

  if(
   exam.answers[i]===
   normalizeAnswer(
    exam.questions[i]
   )
  ){

   correct++;
  }
 }

 const total=
  exam.questions.length;

 const points=
  correct*2;

 try{

  await api(
   "test_attempts",
   "POST",
   {
    test_id:exam.test.id,
    student_email:student.email,
    score:correct,
    total_questions:total,
    points_earned:points
   }
  );

  if(points){

   await addStudentPoints(
    points,
    "test"
   );
  }

  exam.attempted=true;

  $("examContent").innerHTML=
  `
   <div class="result">

    <h2>
     🎉 انتهى الاختبار
    </h2>

    <div class="result-score">
     ${correct}/${total}
    </div>

    <p
     style="
      color:var(--muted);
      line-height:1.8
     ">

     حصلت على

     <b style="color:var(--gold)">
      ${points} نقطة ⭐
     </b>

     <br>

     🔒 تم تسجيل المحاولة
     ولا يمكن إعادة هذا الاختبار.

    </p>

    <button
     class="btn action-orange"
     style="margin-top:15px"
     onclick="closeExam()">

     حسنًا

    </button>

   </div>
  `;

 }catch(e){

  if(
   String(e.message)
   .includes("23505")
  ){

   alert(
    "🔒 هذا الاختبار مسجل مسبقًا ولا يمكن إعادته."
   );

  }else{

   alert(
    "❌ تعذر حفظ النتيجة: "+
    e.message
   );
  }
 }
}


function closeExam(){

 closeModal(
  "examModal"
 );

 exam={
  test:null,
  questions:[],
  answers:[],
  index:0,
  attempted:false
 };
}


/* =========================
   فتح تسجيل الدخول
========================= */

function openLogin(){

 $("loginModal")
  .classList
  .add("show");
}


/* =========================
   إغلاق المودالات
========================= */

document
 .querySelectorAll(".modal")
 .forEach(
  m=>
   m.addEventListener(
    "click",
    e=>{

     if(
      e.target===m&&
      m.id!=="examModal"&&
      m.id!=="videoModal"
     ){

      m.classList.remove(
       "show"
      );
     }

    }
   )
 );


/* =========================
   تحديث آخر ظهور
========================= */

setInterval(
 ()=>{

  if(student){

   api(
    "students",
    "PATCH",
    {
     last_seen:
      new Date().toISOString()
    },
    "id=eq."+student.id
   )
   .catch(()=>{});
  }

 },
 60000
);


/* =========================
   بدء الموقع
========================= */

restoreSession();

</script>

</body>
</html>
