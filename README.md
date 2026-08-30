<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>منبر ون | منصة التعليم</title>

<style>

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Tahoma,Arial,sans-serif;
    background:
    radial-gradient(circle at 85% 5%,#172b63 0,transparent 28%),
    radial-gradient(circle at 10% 70%,#27174f 0,transparent 28%),
    #050b1d;
    color:#fff;
    min-height:100vh;
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

.page{
    position:relative;
    z-index:2;
}


/* =========================
   الهيدر
========================= */

header{
    height:76px;
    background:rgba(5,13,32,.94);
    backdrop-filter:blur(15px);
    border-bottom:1px solid #ffffff14;
    position:sticky;
    top:0;
    z-index:100;
}

.header{
    width:92%;
    max-width:1150px;
    height:100%;
    margin:auto;

    display:flex;
    align-items:center;
    justify-content:space-between;
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
}

.logoIcon{
    width:46px;
    height:46px;
    border-radius:13px;

    display:flex;
    align-items:center;
    justify-content:center;

    background:linear-gradient(135deg,#12c9ff,#855cff);

    font-size:22px;

    box-shadow:0 8px 25px #168cff35;
}

.logoText{
    font-size:18px;
    font-weight:bold;
}

.logoText small{
    display:block;
    color:#7187a7;
    font-size:8px;
    margin-top:3px;
}

.headerActions{
    display:flex;
    gap:8px;
}

.headerBtn{
    text-decoration:none;

    border:1px solid #ffffff20;
    color:#fff;

    background:#0b1b36;

    padding:11px 15px;
    border-radius:11px;

    font-size:12px;

    transition:.2s;
}

.headerBtn:hover{
    background:#132b50;
    transform:translateY(-1px);
}

.teacherBtn{
    background:linear-gradient(135deg,#087fb5,#7650e5);
    border:0;
}


/* =========================
   البطل
========================= */

.hero{
    width:92%;
    max-width:1150px;

    margin:28px auto 0;

    padding:45px 30px;

    border-radius:28px;

    background:
    linear-gradient(
        135deg,
        rgba(11,49,88,.97),
        rgba(42,23,76,.95)
    );

    border:1px solid #5abfff2e;

    box-shadow:0 18px 60px #0004;

    text-align:center;
}

.heroBadge{
    display:inline-block;

    padding:8px 13px;

    border-radius:30px;

    background:#23caff1a;
    border:1px solid #23caff30;

    color:#5cdcff;

    font-size:11px;
}

.hero h1{
    font-size:34px;
    line-height:1.5;

    margin-top:14px;
}

.hero h1 span{
    color:#54d8ff;
}

.hero p{
    color:#a2b4cc;

    font-size:13px;
    line-height:2;

    max-width:700px;

    margin:8px auto 0;
}


/* =========================
   أزرار سريعة
========================= */

.quickActions{
    width:92%;
    max-width:1150px;

    margin:18px auto 0;

    display:grid;
    grid-template-columns:repeat(4,1fr);

    gap:12px;
}

.quickBtn{
    border:1px solid #ffffff15;

    background:#0a1b36;

    color:#fff;

    border-radius:15px;

    padding:18px 10px;

    font-size:14px;

    transition:.25s;
}

.quickBtn:hover{
    transform:translateY(-3px);
    border-color:#55d8ff55;
    background:#0d2344;
}

.quickBtn span{
    display:block;
    font-size:26px;
    margin-bottom:8px;
}


/* =========================
   الأقسام
========================= */

.section{
    width:92%;
    max-width:1150px;

    margin:34px auto 0;
}

.sectionHead{
    display:flex;

    justify-content:space-between;
    align-items:center;

    margin-bottom:13px;
}

.sectionHead h2{
    font-size:21px;
}

.sectionHead span{
    color:#7188a6;
    font-size:10px;
}


/* =========================
   البطاقات
========================= */

.cards{
    display:grid;

    grid-template-columns:
    repeat(3,1fr);

    gap:13px;
}

.card{
    background:
    linear-gradient(
        145deg,
        rgba(11,30,57,.96),
        rgba(8,21,42,.96)
    );

    border:1px solid #ffffff13;

    border-radius:18px;

    padding:18px;

    transition:.25s;

    overflow:hidden;
}

.card:hover{
    transform:translateY(-3px);
    border-color:#55d8ff35;
    box-shadow:0 15px 40px #0004;
}

.cardIcon{
    width:50px;
    height:50px;

    border-radius:14px;

    display:flex;
    align-items:center;
    justify-content:center;

    font-size:24px;

    margin-bottom:13px;
}

.blue{
    background:linear-gradient(135deg,#087fb5,#386bd1);
}

.purple{
    background:linear-gradient(135deg,#7041bd,#9a52d8);
}

.gold{
    background:linear-gradient(135deg,#a65d19,#d99327);
}

.green{
    background:linear-gradient(135deg,#087866,#19ad91);
}

.card h3{
    font-size:16px;

    line-height:1.6;

    margin-bottom:7px;
}

.card p{
    color:#8297b1;

    font-size:11px;

    line-height:1.8;

    min-height:40px;
}

.cardMeta{
    color:#5f7896;

    font-size:10px;

    margin-top:10px;
}

.cardButton{
    width:100%;

    border:0;

    border-radius:11px;

    color:#fff;

    padding:12px;

    margin-top:15px;

    font-size:12px;

    background:linear-gradient(
        135deg,
        #08a9df,
        #7650e5
    );
}

.cardButton:hover{
    filter:brightness(1.12);
}


/* =========================
   حالة التحميل
========================= */

.loading{
    grid-column:1/-1;

    padding:35px;

    text-align:center;

    color:#65d8ff;

    background:#091931;

    border:1px dashed #294563;

    border-radius:17px;

    font-size:12px;
}

.empty{
    grid-column:1/-1;

    padding:35px;

    text-align:center;

    color:#7188a4;

    background:#091931;

    border:1px dashed #294563;

    border-radius:17px;

    font-size:12px;

    line-height:2;
}

.errorBox{
    grid-column:1/-1;

    padding:25px;

    text-align:center;

    color:#ff9aa8;

    background:#351322;

    border:1px solid #ff547033;

    border-radius:17px;

    font-size:12px;

    line-height:2;
}


/* =========================
   قسم الترحيب
========================= */

.infoBox{
    background:
    linear-gradient(
        135deg,
        #102d50,
        #241945
    );

    border:1px solid #ffffff14;

    border-radius:20px;

    padding:25px;

    text-align:center;
}

.infoBox h2{
    font-size:21px;
    margin-bottom:8px;
}

.infoBox p{
    color:#8ea2bd;
    font-size:12px;
    line-height:2;
}


/* =========================
   الفوتر
========================= */

footer{
    width:92%;
    max-width:1150px;

    margin:45px auto 0;

    padding:30px 0 22px;

    border-top:1px solid #ffffff10;

    text-align:center;

    color:#4e6682;

    font-size:10px;

    line-height:2;
}


/* =========================
   نافذة الفيديو
========================= */

.videoOverlay{
    position:fixed;

    inset:0;

    background:#000c;

    backdrop-filter:blur(8px);

    display:none;

    align-items:center;
    justify-content:center;

    z-index:500;

    padding:18px;
}

.videoOverlay.show{
    display:flex;
}

.videoBox{
    width:100%;
    max-width:900px;

    background:#07152d;

    border:1px solid #ffffff18;

    border-radius:20px;

    padding:15px;

    position:relative;
}

.videoClose{
    position:absolute;

    top:-12px;
    left:-12px;

    width:38px;
    height:38px;

    border:0;

    border-radius:50%;

    background:#9a3450;

    color:#fff;

    font-size:17px;

    z-index:5;
}

.videoTitle{
    font-size:16px;

    margin-bottom:12px;

    padding-left:35px;
}

.videoFrame{
    width:100%;

    aspect-ratio:16/9;

    border:0;

    border-radius:13px;

    background:#000;
}


/* =========================
   استجابة الهاتف
========================= */

@media(max-width:850px){

    .cards{
        grid-template-columns:
        repeat(2,1fr);
    }

    .quickActions{
        grid-template-columns:
        repeat(2,1fr);
    }

    .hero h1{
        font-size:29px;
    }

}


@media(max-width:520px){

    header{
        height:70px;
    }

    .header{
        width:94%;
    }

    .logoIcon{
        width:39px;
        height:39px;

        font-size:19px;
    }

    .logoText{
        font-size:14px;
    }

    .logoText small{
        font-size:6px;
    }

    .headerActions{
        gap:5px;
    }

    .headerBtn{
        padding:8px 8px;
        font-size:9px;
    }

    .hero{
        width:94%;

        padding:32px 17px;

        border-radius:22px;
    }

    .hero h1{
        font-size:23px;
    }

    .hero p{
        font-size:11px;
    }

    .section{
        width:94%;
        margin-top:27px;
    }

    .sectionHead h2{
        font-size:17px;
    }

    .sectionHead span{
        font-size:8px;
    }

    .cards{
        grid-template-columns:1fr;
    }

    .quickActions{
        width:94%;

        grid-template-columns:
        repeat(2,1fr);

        gap:8px;
    }

    .quickBtn{
        padding:14px 7px;
        font-size:11px;
    }

    .quickBtn span{
        font-size:23px;
    }

}

</style>
</head>


<body>

<div class="page">


<!-- =========================
     الهيدر
========================= -->

<header>

<div class="header">

    <div class="logo">

        <div class="logoIcon">
            ∑
        </div>

        <div class="logoText">

            منبر ون

            <small>
                MINBAR ONE • EDUCATION
            </small>

        </div>

    </div>


    <div class="headerActions">

        <a
            href="#lessons"
            class="headerBtn">
            🎥 الحصص
        </a>

        <a
            href="teacher.html"
            class="headerBtn teacherBtn">
            👨‍🏫 الأستاذ
        </a>

    </div>

</div>

</header>


<!-- =========================
     الترحيب
========================= -->

<section class="hero">

    <div class="heroBadge">
        🎓 منصة منبر ون التعليمية
    </div>

    <h1>
        تعلم بطريقة
        <span>أسهل وأفضل</span>
    </h1>

    <p>
        شاهد الحصص التعليمية،
        اقرأ الملخصات،
        واختبر معلوماتك من مكان واحد.
    </p>

</section>


<!-- =========================
     الاختصارات
========================= -->

<div class="quickActions">

    <button
        class="quickBtn"
        onclick="scrollToSection('lessons')">

        <span>🎥</span>

        الحصص

    </button>


    <button
        class="quickBtn"
        onclick="scrollToSection('summaries')">

        <span>📚</span>

        الملخصات

    </button>


    <button
        class="quickBtn"
        onclick="scrollToSection('tests')">

        <span>📝</span>

        الاختبارات

    </button>


    <button
        class="quickBtn"
        onclick="scrollToSection('rooms')">

        <span>💬</span>

        رومات الدراسة

    </button>

</div>


<!-- =========================
     الحصص
========================= -->

<section
    class="section"
    id="lessons">

    <div class="sectionHead">

        <h2>
            🎥 الحصص التعليمية
        </h2>

        <span>
            أحدث الحصص
        </span>

    </div>


    <div
        class="cards"
        id="lessonsList">

        <div class="loading">
            ⏳ جاري تحميل الحصص...
        </div>

    </div>

</section>


<!-- =========================
     الملخصات
========================= -->

<section
    class="section"
    id="summaries">

    <div class="sectionHead">

        <h2>
            📚 الملخصات
        </h2>

        <span>
            مواد تساعدك على المراجعة
        </span>

    </div>


    <div
        class="cards"
        id="summariesList">

        <div class="loading">
            ⏳ جاري تحميل الملخصات...
        </div>

    </div>

</section>


<!-- =========================
     الاختبارات
========================= -->

<section
    class="section"
    id="tests">

    <div class="sectionHead">

        <h2>
            📝 الاختبارات
        </h2>

        <span>
            اختبر معلوماتك
        </span>

    </div>


    <div
        class="cards"
        id="testsList">

        <div class="loading">
            ⏳ جاري تحميل الاختبارات...
        </div>

    </div>

</section>


<!-- =========================
     الرومات
========================= -->

<section
    class="section"
    id="rooms">

    <div class="sectionHead">

        <h2>
            💬 رومات الدراسة
        </h2>

        <span>
            تواصل وتعلم
        </span>

    </div>


    <div
        class="cards"
        id="roomsList">

        <div class="loading">
            ⏳ جاري تحميل الرومات...
        </div>

    </div>

</section>


<!-- =========================
     معلومات
========================= -->

<section class="section">

    <div class="infoBox">

        <h2>
            🚀 منبر ون
        </h2>

        <p>
            منصة تعليمية تجمع الحصص والملخصات
            والاختبارات ورومات الدراسة في مكان واحد.
        </p>

    </div>

</section>


<footer>

    منبر ون • منصة التعليم 🎓

    <br>

    جميع الحقوق محفوظة © 2026

</footer>

</div>


<!-- =========================
     نافذة مشاهدة الفيديو
========================= -->

<div
    class="videoOverlay"
    id="videoOverlay">

    <div class="videoBox">

        <button
            class="videoClose"
            onclick="closeVideo()">
            ✕
        </button>

        <div
            class="videoTitle"
            id="videoTitle">
            مشاهدة الحصة
        </div>

        <iframe
            id="videoFrame"
            class="videoFrame"
            allowfullscreen
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture">
        </iframe>

    </div>

</div>


<script>

/* =========================================================
   إعداد Supabase
========================================================= */

const SUPABASE_URL =
"https://vugnptbvkitokwqxulla.supabase.co";

const SUPABASE_KEY =
"sb_publishable__WJDSewc6JN6XTM6czk11Q_lgON6Chj";


/* =========================================================
   البيانات
========================================================= */

let lessons = [];
let summaries = [];
let tests = [];
let rooms = [];


/* =========================================================
   طلب Supabase
========================================================= */

async function supabaseRequest(url){

    return fetch(url,{

        method:"GET",

        headers:{
            apikey:SUPABASE_KEY,
            "Content-Type":"application/json"
        }

    });

}


/* =========================================================
   جلب جدول
========================================================= */

async function getTable(table){

    try{

        const response =
        await supabaseRequest(
            `${SUPABASE_URL}/rest/v1/${table}?select=*`
        );

        if(!response.ok){

            console.error(
                "Supabase Error:",
                table,
                response.status
            );

            return null;

        }

        const data =
        await response.json();

        return Array.isArray(data)
            ? data
            : [];

    }catch(error){

        console.error(error);

        return null;

    }

}


/* =========================================================
   ترتيب الأحدث أولًا
========================================================= */

function sortNewest(a,b){

    return new Date(
        b.created_at || 0
    )
    -
    new Date(
        a.created_at || 0
    );

}


/* =========================================================
   حماية النصوص
========================================================= */

function escapeHTML(value){

    return String(value ?? "")

        .replaceAll("&","&amp;")

        .replaceAll("<","&lt;")

        .replaceAll(">","&gt;")

        .replaceAll('"',"&quot;")

        .replaceAll("'","&#039;");

}


/* =========================================================
   الحصص
========================================================= */

async function loadLessons(){

    const data =
    await getTable("lessons");


    const box =
    document.getElementById("lessonsList");


    if(data === null){

        box.innerHTML = `
            <div class="errorBox">
                ❌ تعذر تحميل الحصص حاليًا.
                <br>
                حاول تحديث الصفحة.
            </div>
        `;

        return;

    }


    lessons =
    data.sort(sortNewest);


    renderLessons();

}


function renderLessons(){

    const box =
    document.getElementById("lessonsList");


    if(!lessons.length){

        box.innerHTML = `
            <div class="empty">
                🎥 لا توجد حصص منشورة حتى الآن.
                <br>
                ستظهر الحصص هنا عندما يضيفها الأستاذ.
            </div>
        `;

        return;

    }


    box.innerHTML = "";


    lessons.forEach(item=>{

        const card =
        document.createElement("div");

        card.className = "card";


        const videoUrl =
        item.video_url || "";


        card.innerHTML = `

            <div class="cardIcon blue">
                🎥
            </div>

            <h3>
                ${escapeHTML(
                    item.title ||
                    "حصة بدون عنوان"
                )}
            </h3>

            <p>
                ${escapeHTML(
                    item.description ||
                    "شاهد الحصة التعليمية."
                )}
            </p>

            <div class="cardMeta">

                📘
                ${escapeHTML(
                    item.unit ||
                    "رياضيات"
                )}

                ${
                    item.duration
                    ? " • ⏱️ " +
                      escapeHTML(item.duration)
                    : ""
                }

            </div>

            <button
                class="cardButton"
                onclick="watchLesson('${encodeURIComponent(videoUrl)}','${encodeURIComponent(item.title || "مشاهدة الحصة")}')">

                ▶️ مشاهدة الحصة

            </button>
        `;


        box.appendChild(card);

    });

}


/* =========================================================
   تشغيل فيديو YouTube
========================================================= */

function watchLesson(encodedUrl,encodedTitle){

    const url =
    decodeURIComponent(encodedUrl);

    const title =
    decodeURIComponent(encodedTitle);


    if(!url){

        alert(
            "⚠️ لم يتم إضافة رابط الفيديو لهذه الحصة."
        );

        return;

    }


    const videoId =
    getYouTubeId(url);


    if(!videoId){

        window.open(
            url,
            "_blank",
            "noopener"
        );

        return;

    }


    document
    .getElementById("videoTitle")
    .textContent = title;


    document
    .getElementById("videoFrame")
    .src =
    "https://www.youtube.com/embed/" +
    videoId +
    "?autoplay=1";


    document
    .getElementById("videoOverlay")
    .classList.add("show");

}


function getYouTubeId(url){

    try{

        const parsed =
        new URL(url);


        if(
            parsed.hostname.includes(
                "youtu.be"
            )
        ){

            return parsed.pathname
            .replace("/","")
            .split("?")[0];

        }


        if(
            parsed.hostname.includes(
                "youtube.com"
            )
        ){

            if(
                parsed.searchParams.get("v")
            ){

                return parsed.searchParams.get("v");

            }


            const parts =
            parsed.pathname.split("/");


            const embedIndex =
            parts.indexOf("embed");


            if(
                embedIndex !== -1 &&
                parts[embedIndex + 1]
            ){

                return parts[embedIndex + 1];

            }


            const shortsIndex =
            parts.indexOf("shorts");


            if(
                shortsIndex !== -1 &&
                parts[shortsIndex + 1]
            ){

                return parts[shortsIndex + 1];

            }

        }

    }catch(error){

        return null;

    }


    return null;

}


function closeVideo(){

    document
    .getElementById("videoFrame")
    .src = "";


    document
    .getElementById("videoOverlay")
    .classList.remove("show");

}


document
.getElementById("videoOverlay")
.addEventListener(
    "click",
    function(event){

        if(event.target === this){

            closeVideo();

        }

    }
);


/* =========================================================
   الملخصات
========================================================= */

async function loadSummaries(){

    const data =
    await getTable("summaries");


    const box =
    document.getElementById("summariesList");


    if(data === null){

        box.innerHTML = `
            <div class="errorBox">
                ❌ تعذر تحميل الملخصات حاليًا.
            </div>
        `;

        return;

    }


    summaries =
    data.sort(sortNewest);


    renderSummaries();

}


function renderSummaries(){

    const box =
    document.getElementById("summariesList");


    if(!summaries.length){

        box.innerHTML = `
            <div class="empty">
                📚 لا توجد ملخصات منشورة حتى الآن.
                <br>
                ستظهر هنا تلقائيًا عندما يضيفها الأستاذ.
            </div>
        `;

        return;

    }


    box.innerHTML = "";


    summaries.forEach(item=>{

        const card =
        document.createElement("div");


        card.className = "card";


        const fileUrl =
        item.file_url || "";


        card.innerHTML = `

            <div class="cardIcon purple">
                📚
            </div>

            <h3>
                ${escapeHTML(
                    item.title ||
                    "ملخص بدون عنوان"
                )}
            </h3>

            <p>
                ${escapeHTML(
                    item.description ||
                    "ملخص للمراجعة."
                )}
            </p>

            <div class="cardMeta">
                📖 ملخص تعليمي
            </div>

            <button
                class="cardButton"
                onclick="openSummary('${encodeURIComponent(fileUrl)}')">

                📖 فتح الملخص

            </button>
        `;


        box.appendChild(card);

    });

}


function openSummary(encodedUrl){

    const url =
    decodeURIComponent(encodedUrl);


    if(!url){

        alert(
            "⚠️ لم يتم إضافة رابط ملف الملخص."
        );

        return;

    }


    window.open(
        url,
        "_blank",
        "noopener"
    );

}


/* =========================================================
   الاختبارات
========================================================= */

async function loadTests(){

    const data =
    await getTable("tests");


    const box =
    document.getElementById("testsList");


    if(data === null){

        box.innerHTML = `
            <div class="errorBox">
                ❌ تعذر تحميل الاختبارات حاليًا.
            </div>
        `;

        return;

    }


    tests =
    data.sort(sortNewest);


    renderTests();

}


function renderTests(){

    const box =
    document.getElementById("testsList");


    if(!tests.length){

        box.innerHTML = `
            <div class="empty">
                📝 لا توجد اختبارات منشورة حتى الآن.
                <br>
                ستظهر الاختبارات هنا عندما يضيفها الأستاذ.
            </div>
        `;

        return;

    }


    box.innerHTML = "";


    tests.forEach(item=>{

        const card =
        document.createElement("div");


        card.className = "card";


        card.innerHTML = `

            <div class="cardIcon gold">
                📝
            </div>

            <h3>
                ${escapeHTML(
                    item.title ||
                    "اختبار بدون عنوان"
                )}
            </h3>

            <p>
                ${escapeHTML(
                    item.description ||
                    "اختبر معلوماتك."
                )}
            </p>

            <div class="cardMeta">

                🔢
                ${
                    item.questions_count ||
                    0
                }
                سؤال

            </div>

            <button
                class="cardButton"
                onclick="openTest('${encodeURIComponent(item.id)}')">

                🚀 دخول الاختبار

            </button>
        `;


        box.appendChild(card);

    });

}


function openTest(encodedId){

    const id =
    decodeURIComponent(encodedId);


    /*
       حاليًا هذه الصفحة تعرض الاختبار
       الذي أضافه الأستاذ.

       صفحة الاختبار الفعلية سنربطها
       في الخطوة التالية.
    */

    alert(
        "📝 تم اختيار الاختبار رقم " +
        id +
        "\\n\\nصفحة حل الأسئلة سنجهزها في الخطوة التالية."
    );

}


/* =========================================================
   الرومات
========================================================= */

async function loadRooms(){

    const data =
    await getTable("rooms");


    const box =
    document.getElementById("roomsList");


    if(data === null){

        box.innerHTML = `
            <div class="errorBox">
                ❌ تعذر تحميل الرومات حاليًا.
            </div>
        `;

        return;

    }


    rooms =
    data.sort(sortNewest);


    renderRooms();

}


function renderRooms(){

    const box =
    document.getElementById("roomsList");


    if(!rooms.length){

        box.innerHTML = `
            <div class="empty">
                💬 لا توجد رومات متاحة حتى الآن.
            </div>
        `;

        return;

    }


    box.innerHTML = "";


    rooms.forEach(item=>{

        const card =
        document.createElement("div");


        card.className = "card";


        const roomLink =
        item.room_link || "";


        card.innerHTML = `

            <div class="cardIcon green">
                💬
            </div>

            <h3>
                ${escapeHTML(
                    item.name ||
                    "روم بدون اسم"
                )}
            </h3>

            <p>
                ${escapeHTML(
                    item.description ||
                    "روم للدراسة."
                )}
            </p>

            <div class="cardMeta">
                💬 روم الدراسة
            </div>

            <button
                class="cardButton"
                onclick="openRoom('${encodeURIComponent(roomLink)}')">

                🚪 دخول الروم

            </button>
        `;


        box.appendChild(card);

    });

}


function openRoom(encodedUrl){

    const url =
    decodeURIComponent(encodedUrl);


    if(!url){

        alert(
            "⚠️ لم يتم إضافة رابط الروم."
        );

        return;

    }


    window.open(
        url,
        "_blank",
        "noopener"
    );

}


/* =========================================================
   الانتقال للأقسام
========================================================= */

function scrollToSection(id){

    const element =
    document.getElementById(id);


    if(element){

        element.scrollIntoView({
            behavior:"smooth",
            block:"start"
        });

    }

}


/* =========================================================
   تحميل كل البيانات
========================================================= */

async function loadEverything(){

    await Promise.all([

        loadLessons(),

        loadSummaries(),

        loadTests(),

        loadRooms()

    ]);

}


/* =========================================================
   تشغيل الصفحة
========================================================= */

loadEverything();


/*
   تحديث المحتوى كل 60 ثانية
   حتى تظهر الإضافات الجديدة
   بدون الحاجة لإعادة فتح الموقع.
*/

setInterval(
    loadEverything,
    60000
);

</script>

</body>
</html>
