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

html{
    scroll-behavior:smooth;
}

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


/* =========================
   الهيدر
========================= */

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

    background:linear-gradient(
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


/* =========================
   أزرار الهيدر
========================= */

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

.userBox{

    display:none;

    align-items:center;

    gap:7px;

    background:#0b1b36;

    border:
        1px solid
        rgba(255,255,255,.09);

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


/* =========================
   الزخارف
========================= */

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


/* =========================
   البطل
========================= */

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


/* =========================
   البحث
========================= */

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


/* =========================
   نتائج البحث
========================= */

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

    transform:translateX(-3px);

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

.type-summary{
    background:#7547bd;
}

.type-test{
    background:#b26b18;
}

.type-room{
    background:#16806d;
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


/* =========================
   الأقسام
========================= */

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


/* =========================
   الخيارات
========================= */

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
    transform:translateY(-4px);
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


/* =========================
   التحدي
========================= */

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


/* =========================
   الإحصائيات
========================= */

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
    color
    <!-- =========================
     نافذة تسجيل الدخول
========================= -->

<div id="studentModal" class="modal">

    <div class="loginBox">

        <button class="close" onclick="closeStudentLogin()">×</button>

        <h2 id="authTitle">👨‍🎓 دخول الطالب</h2>

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


<!-- =========================
     نافذة الأسئلة
========================= -->

<div id="quizModal" class="modal">

    <div class="loginBox quizBox">

        <button
            class="close"
            onclick="closeQuiz()">

            ×

        </button>

        <div class="challengeTag">
            🧠 تحدي الرياضيات
        </div>

        <h2 id="quizTitle">
            تحدي اليوم
        </h2>

        <p id="quizProgress">
            السؤال 1 من 6
        </p>

        <div
            id="quizQuestion"
            class="question">

            جاري تحميل السؤال...

        </div>

        <div
            id="quizOptions"
            class="quizOptions">
        </div>

        <div
            id="quizMessage"
            class="message">
        </div>

        <button
            id="nextQuestionButton"
            class="main"
            onclick="nextQuestion()"
            style="display:none;">

            السؤال التالي ➡️

        </button>

    </div>

</div>


<script>

/* =====================================================
   Supabase
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
   التحدي
===================================================== */

let currentQuestion = 0;

let dailyScore = 0;

let challengeFinished = false;


/* =====================================================
   الأسئلة
=============================/

const challengeQuestions = [

    {
        question: "8 × 7 + 4 = ؟",
        options: ["56", "60", "64", "68"],
        answer: 1
    },

    {
        question: "15 + 6 × 2 = ؟",
        options: ["42", "27", "36", "21"],
        answer: 1
    },

    {
        question: "48 ÷ 6 + 7 = ؟",
        options: ["13", "15", "14", "16"],
        answer: 0
    },

    {
        question: "9² - 5² = ؟",
        options: ["46", "56", "64", "81"],
        answer: 1
    },

    {
        question: "3 × (8 + 4) - 7 = ؟",
        options: ["29", "31", "36", "25"],
        answer: 1
    },

    {
        question: "إذا كان 2x + 6 = 20، فما قيمة x؟",
        options: ["5", "6", "7", "8"],
        answer: 2
    }

];


/* =====================================================
   طلب Supabase
===================================================== */

async function supabaseRequest(url, options = {}) {

    const headers = {

        "apikey": SUPABASE_KEY,

        "Content-Type": "application/json",

        ...(options.headers || {})

    };

    return fetch(

        url,

        {
            ...options,
            headers: headers
        }

    );

}


/* =====================================================
   جلب جدول
===================================================== */

async function getTable(table) {

    try {

        const response =
        await supabaseRequest(

            SUPABASE_URL +
            "/rest/v1/" +
            table +
            "?select=*"

        );

        if (!response.ok) {

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

    }

    catch (error) {

        console.error(error);

        return [];

    }

}


/* =====================================================
   حماية النص
===================================================== */

function safe(text) {

    return String(text ?? "")

        .replaceAll("&", "&amp;")

        .replaceAll("<", "&lt;")

        .replaceAll(">", "&gt;")

        .replaceAll('"', "&quot;")

        .replaceAll("'", "&#039;");

}


/* =====================================================
   الحصص
===================================================== */

async function loadLessons() {

    const box =
    document.getElementById(
        "lessonsContainer"
    );

    const lessons =
    await getTable("lessons");

    allLessons =
    Array.isArray(lessons)
    ? lessons
    : [];

    allLessons.sort(

        (a, b) =>

        new Date(
            b.created_at || 0
        )

        -

        new Date(
            a.created_at || 0
        )

    );

    if (!allLessons.length) {

        box.innerHTML = `

            <div class="empty">

                📚 لا توجد حصص حتى الآن.

                <br>

                عندما يضيف الأستاذ حصة
                ستظهر هنا تلقائيًا.

            </div>

        `;

        return;

    }

    box.innerHTML = "";

    allLessons.forEach(

        function(lesson) {

            const title =
            lesson.title ||
            "حصة رياضيات";

            const unit =
            lesson.unit ||
            "رياضيات";

            const duration =
            lesson.duration
            ? " • " + lesson.duration
            : "";

            const videoUrl =
            String(
                lesson.video_url || ""
            ).trim();

            const hasVideo =
            videoUrl !== "";

            const item =
            document.createElement(
                "div"
            );

            item.className =
            "lesson";

            item.innerHTML = `

                <div class="lessonIcon ${
                    hasVideo
                    ? ""
                    : "noVideoIcon"
                }">

                    ${hasVideo ? "🎥" : "⚠️"}

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

        }

    );

}


/* =====================================================
   الملخصات
===================================================== */

async function loadSummaries() {

    const box =
    document.getElementById(
        "summariesContainer"
    );

    const summaries =
    await getTable("summaries");

    allSummaries =
    Array.isArray(summaries)
    ? summaries
    : [];

    allSummaries.sort(

        (a, b) =>

        new Date(
            b.created_at || 0
        )

        -

        new Date(
            a.created_at || 0
        )

    );

    if (!allSummaries.length) {

        box.innerHTML = `

            <div class="empty">

                📚 لا توجد ملخصات حتى الآن.

                <br>

                عندما يضيف الأستاذ ملخصًا
                سيظهر هنا تلقائيًا.

            </div>

        `;

        return;

    }

    box.innerHTML = "";

    allSummaries.forEach(

        function(summary) {

            const title =
            summary.title ||
            "ملخص درس";

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
            document.createElement(
                "div"
            );

            card.className =
            "contentCard";

            let button = "";

            if (fileUrl) {

                button = `

                    <a
                        class="contentButton summaryButton"
                        href="${safe(fileUrl)}"
                        target="_blank"
                        rel="noopener noreferrer">

                        📖 فتح الملخص

                    </a>

                `;

            }

            else {

                button = `

                    <span class="contentButton">

                        📖 الملخص متاح

                    </span>

                `;

            }

            card.innerHTML = `

                <div class="contentIcon summaryIcon">
                    📚
                </div>

                <h3>
                    ${safe(title)}
                </h3>

                <p>
                    ${safe(description)}
                </p>

                ${button}

            `;

            box.appendChild(card);

        }

    );

}


/* =====================================================
   الاختبارات
===================================================== */

async function loadTests() {

    const box =
    document.getElementById(
        "testsContainer"
    );

    const tests =
    await getTable("tests");

    allTests =
    Array.isArray(tests)
    ? tests
    : [];

    allTests.sort(

        (a, b) =>

        new Date(
            b.created_at || 0
        )

        -

        new Date(
            a.created_at || 0
        )

    );

    if (!allTests.length) {

        box.innerHTML = `

            <div class="empty">

                📝 لا توجد اختبارات حتى الآن.

                <br>

                عندما يضيف الأستاذ اختبارًا
                سيظهر هنا تلقائيًا.

            </div>

        `;

        return;

    }

    box.innerHTML = "";

    allTests.forEach(

        function(test) {

            const title =
            test.title ||
            "اختبار رياضيات";

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
            document.createElement(
                "div"
            );

            card.className =
            "contentCard";

            let button = "";

            if (testUrl) {

                button = `

                    <a
                        class="contentButton testButton"
                        href="${safe(testUrl)}"
                        target="_blank"
                        rel="noopener noreferrer">

                        📝 بدء الاختبار

                    </a>

                `;

            }

            else {

                button = `

                    <span class="contentButton">

                        📝 الاختبار متاح

                    </span>

                `;

            }

            card.innerHTML = `

                <div class="contentIcon testIcon">
                    📝
                </div>

                <h3>
                    ${safe(title)}
                </h3>

                <p>
                    ${safe(description)}
                </p>

                ${button}

            `;

            box.appendChild(card);

        }

    );

}


/* =====================================================
   الرومات
===================================================== */

async function loadRooms() {

    const box =
    document.getElementById(
        "roomsContainer"
    );

    const rooms =
    await getTable("rooms");

    allRooms =
    Array.isArray(rooms)
    ? rooms
    : [];

    allRooms.sort(

        (a, b) =>

        new Date(
            b.created_at || 0
        )

        -

        new Date(
            a.created_at || 0
        )

    );

    if (!allRooms.length) {

        box.innerHTML = `

            <div class="empty">

                💬 لا توجد رومات حتى الآن.

                <br>

                عندما يضيف الأستاذ رومًا
                سيظهر هنا تلقائيًا.

            </div>

        `;

        return;

    }

    box.innerHTML = "";

    allRooms.forEach(

        function(room) {

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
            document.createElement(
                "div"
            );

            card.className =
            "contentCard";

            let button = "";

            if (roomUrl) {

                button = `

                    <a
                        class="contentButton roomButton"
                        href="${safe(roomUrl)}"
                        target="_blank"
                        rel="noopener noreferrer">

                        💬 دخول الروم

                    </a>

                `;

            }

            else {

                button = `

                    <span class="contentButton">

                        💬 الروم متاح

                    </span>

                `;

            }

            card.innerHTML = `

                <div class="contentIcon roomIcon">
                    💬
                </div>

                <h3>
                    ${safe(title)}
                </h3>

                <p>
                    ${safe(description)}
                </p>

                ${button}

            `;

            box.appendChild(card);

        }

    );

}


/* =====================================================
   البحث
===================================================== */

function searchEverything() {

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

    if (!text) {

        resultsBox
        .classList
        .remove("show");

        return;

    }

    resultsBox
    .classList
    .add("show");

    const results = [];


    allLessons.forEach(

        function(item) {

            const title =
            String(
                item.title || ""
            ).toLowerCase();

            const description =
            String(
                item.description || ""
            ).toLowerCase();

            const unit =
            String(
                item.unit || ""
            ).toLowerCase();

            if (

                title.includes(text) ||
                description.includes(text) ||
                unit.includes(text)

            ) {

                results.push({

                    type: "lesson",

                    title:
                    item.title ||
                    "حصة رياضيات",

                    description:
                    item.unit ||
                    "حصة",

                    url:
                    item.video_url ||
                    ""

                });

            }

        }

    );


    allSummaries.forEach(

        function(item) {

            const title =
            String(
                item.title || ""
            ).toLowerCase();

            const description =
            String(
                item.description ||
                item.content ||
                ""
            ).toLowerCase();

            if (

                title.includes(text) ||
                description.includes(text)

            ) {

                results.push({

                    type: "summary",

                    title:
                    item.title ||
                    "ملخص",

                    description:
                    item.description ||
                    "ملخص درس",

                    url:
                    item.file_url ||
                    item.url ||
                    item.link ||
                    ""

                });

            }

        }

    );


    allTests.forEach(

        function(item) {

            const title =
            String(
                item.title || ""
            ).toLowerCase();

            const description =
            String(
                item.description || ""
            ).toLowerCase();

            if (

                title.includes(text) ||
                description.includes(text)

            ) {

                results.push({

                    type: "test",

                    title:
                    item.title ||
                    "اختبار",

                    description:
                    item.description ||
                    "اختبار",

                    url:
                    item.test_url ||
                    item.url ||
                    item.link ||
                    ""

                });

            }

        }

    );


    allRooms.forEach(

        function(item) {

            const title =
            String(
                item.title ||
                item.name ||
                ""
            ).toLowerCase();

            const description =
            String(
                item.description || ""
            ).toLowerCase();

            if (

                title.includes(text) ||
                description.includes(text)

            ) {

                results.push({

                    type: "room",

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

        }

    );


    if (!results.length) {

        list.innerHTML = `

            <div class="empty">

                🔍 لم نجد شيئًا مطابقًا لبحثك.

            </div>

        `;

        return;

    }


    list.innerHTML = "";


    results.forEach(

        function(item) {

            const hasUrl =
            String(
                item.url || ""
            ).trim() !== "";

            const result =
            document.createElement(
                hasUrl ? "a" : "div"
            );

            result.className =
            "result";

            if (hasUrl) {

                result.href =
                item.url;

                result.target =
                "_blank";

                result.rel =
                "noopener noreferrer";

            }

            let icon = "📚";

            let iconClass =
            "type-summary";

            let typeName =
            "ملخص";

            if (item.type === "lesson") {

                icon = "🎥";
                iconClass = "type-video";
                typeName = "حصة";

            }

            if (item.type === "test") {

                icon = "📝";
                iconClass = "type-test";
                typeName = "اختبار";

            }

            if (item.type === "room") {

                icon = "💬";
                iconClass = "type-room";
                typeName = "روم";

            }

            result.innerHTML = `

                <div
                    class="resultIcon ${iconClass}">

                    ${icon}

                </div>

                <div class="resultInfo">

                    <h3>
                        ${safe(item.title)}
                    </h3>

                    <p>

                        ${typeName}

                        •

                        ${safe(item.description)}

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

function startDailyChallenge() {

    currentQuestion = 0;

    dailyScore = 0;

    challengeFinished = false;

}


function challengeAnswer() {

    const modal =
    document.getElementById(
        "quizModal"
    );

    modal.classList.add("show");

    currentQuestion = 0;

    dailyScore = 0;

    challengeFinished = false;

    showQuestion();

}


function showQuestion() {

    const q =
    challengeQuestions[currentQuestion];

    if (!q) {

        finishChallenge();

        return;

    }

    document.getElementById(
        "quizTitle"
    ).innerText =
    currentQuestion === 0
    ? "🔥 تحدي اليوم"
    : "🧠 السؤال الإضافي";


    document.getElementById(
        "quizProgress"
    ).innerText =

    "السؤال " +
    (currentQuestion + 1) +
    " من " +
    challengeQuestions.length;


    document.getElementById(
        "quizQuestion"
    ).innerText =
    q.question;


    const options =
    document.getElementById(
        "quizOptions"
    );

    options.innerHTML = "";


    q.options.forEach(

        function(option, index) {

            const button =
            document.createElement(
                "button"
            );

            button.className =
            "quizOption";

            button.innerText =
            option;

            button.onclick =
            function() {

                answerQuestion(
                    index
                );

            };

            options.appendChild(
                button
            );

        }

    );


    document.getElementById(
        "nextQuestionButton"
    ).style.display =
    "none";


    document.getElementById(
        "quizMessage"
    ).innerText = "";

}


function answerQuestion(selected) {

    const q =
    challengeQuestions[currentQuestion];

    const buttons =
    document.querySelectorAll(
        ".quizOption"
    );


    buttons.forEach(
        function(button) {

            button.disabled =
            true;

        }
    );


    if(selected === q.answer) {

        dailyScore++;

        document.getElementById(
            "quizMessage"
        ).innerText =
        "✅ إجابة صحيحة! أحسنت 🎉";

        document.getElementById(
            "quizMessage"
        ).className =
        "message successMessage";

    }

    else {

        document.getElementById(
            "quizMessage"
        ).innerText =
        "❌ ليست الإجابة الصحيحة.";

        document.getElementById(
            "quizMessage"
        ).className =
        "message errorMessage";

    }


    document.getElementById(
        "nextQuestionButton"
    ).style.display =
    "block";

}


function nextQuestion() {

    currentQuestion++;

    showQuestion();

}


function finishChallenge() {

    challengeFinished = true;

    const points =
    dailyScore * 10;


    savePoints(points);


    document.getElementById(
        "quizTitle"
    ).innerText =
    "🏆 انتهى التحدي!";


    document.getElementById(
        "quizProgress"
    ).innerText =
    "نتيجتك";


    document.getElementById(
        "quizQuestion"
    ).innerText =

    "أجبت بشكل صحيح على " +
    dailyScore +
    " من " +
    challengeQuestions.length +
    " أسئلة 🎉";


    document.getElementById(
        "quizOptions"
    ).innerHTML = `

        <div class="empty">

            ⭐ حصلت على ${points} نقطة

        </div>

    `;


    document.getElementById(
        "nextQuestionButton"
    ).style.display =
    "none";


    document.getElementById(
        "quizMessage"
    ).innerText =
    "👏 أحسنت! عد غدًا لتحدٍ جديد.";

}


function closeQuiz() {

    document
    .getElementById(
        "quizModal"
    )
    .classList
    .remove("show");

}


/* =====================================================
   النقاط
===================================================== */

function getPoints() {

    return Number(
        localStorage.getItem(
            "minbar_points"
        ) || 0
    );

}


function savePoints(points) {

    const total =
    getPoints() + Number(points || 0);

    localStorage.setItem(
        "minbar_points",
        total
    );

    updateStats();

}


function updateStats() {

    const points =
    getPoints();


    const pointElement =
    document.querySelector(
        ".points strong"
    );


    const progressElement =
    document.querySelector(
        ".progress strong"
    );


    const rankElement =
    document.querySelector(
        ".rank strong"
    );


    if(pointElement) {

        pointElement.innerText =
        points;

    }


    if(progressElement) {

        const progress =
        Math.min(
            100,
            points
        );

        progressElement.innerText =
        progress + "%";

    }


    if(rankElement) {

        if(points >= 100) {

            rankElement.innerText =
            "🥇";

        }

        else if(points >= 50) {

            rankElement.innerText =
            "🥈";

        }

        else {

            rankElement.innerText =
            "🥉";

        }

    }

}


/* =====================================================
   تسجيل الدخول
===================================================== */

function openStudentLogin() {

    isSignupMode = false;

    updateAuthWindow();

    document
    .getElementById(
        "studentModal"
    )
    .classList
    .add("show");

}


function closeStudentLogin() {

    document
    .getElementById(
        "studentModal"
    )
    .classList
    .remove("show");

    clearAuthMessage();

}


function switchAuthMode() {

    isSignupMode =
    !isSignupMode;

    updateAuthWindow();

}


function updateAuthWindow() {

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


    if(isSignupMode) {

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

    }

    else {

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


function showAuthMessage(
    text,
    type = "info"
) {

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

    box.innerText =
    text;

}


function clearAuthMessage() {

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
   تسجيل الطالب / إنشاء الحساب
===================================================== */

async function studentLogin() {

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
    emailInput.value.trim();

    const password =
    passwordInput.value;


    clearAuthMessage();


    if(!email) {

        showAuthMessage(
            "📧 اكتب البريد الإلكتروني أولًا.",
            "error"
        );

        return;

    }


    if(!password) {

        showAuthMessage(
            "🔐 اكتب كلمة المرور أولًا.",
            "error"
        );

        return;

    }


    if(password.length < 6) {

        showAuthMessage(
            "🔐 كلمة المرور يجب أن تكون 6 أحرف على الأقل.",
            "error"
        );

        return;

    }


    button.disabled = true;


    try {

        /* =========================
           إنشاء حساب
        ========================= */

        if(isSignupMode) {

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

                    body:
                    JSON.stringify({

                        email: email,

                        password: password

                    })

                }

            );


            const data =
            await response.json();


            if(!response.ok) {

                let message =
                "تعذر إنشاء الحساب.";


                if(data && data.msg) {

                    message =
                    data.msg;

                }

                else if(
                    data &&
                    data.error_description
                ) {

                    message =
                    data.error_description;

                }

                else if(
                    data &&
                    data.message
                ) {

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


            if(data.access_token) {

                saveSession(data);

                showAuthMessage(
                    "✅ تم إنشاء الحساب وتسجيل الدخول بنجاح 🎉",
                    "success"
                );


                setTimeout(
                    function() {

                        closeStudentLogin();

                    },
                    1000
                );

            }

            else {

                showAuthMessage(
                    "✅ تم إنشاء الحساب. افتح Gmail واضغط رابط تأكيد البريد، ثم ارجع وسجّل الدخول.",
                    "success"
                );

            }


            button.disabled =
            false;

            return;

        }


        /* =========================
           تسجيل الدخول
        ========================= */

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

                body:
                JSON.stringify({

                    email: email,

                    password: password

                })

            }

        );


        const data =
        await response.json();


        if(!response.ok) {

            let message =
            "البريد الإلكتروني أو كلمة المرور غير صحيحة.";


            if(data && data.error_description) {

                message =
                data.error_description;

            }


            showAuthMessage(
                "❌ " + message,
                "error"
            );


            button.disabled =
            false;

            return;

        }


        saveSession(data);


        showAuthMessage(
            "✅ تم تسجيل الدخول بنجاح 🎉",
            "success"
        );


        setTimeout(
            function() {

                closeStudentLogin();

            },
            800
        );


    }

    catch(error) {

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
   حفظ الجلسة
===================================================== */

function saveSession(data) {

    if(!data) {

        return;

    }


    if(data.access_token) {

        localStorage.setItem(
            "minbar_access_token",
            data.access_token
        );

    }


    if(data.refresh_token) {

        localStorage.setItem(
            "minbar_refresh_token",
            data.refresh_token
        );

    }


    if(data.user) {

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
   جلب الطالب المحفوظ
===================================================== */

function getSavedUser() {

    try {

        const user =
        localStorage.getItem(
            "minbar_user"
        );


        if(!user) {

            return null;

        }


        return JSON.parse(user);

    }

    catch(error) {

        return null;

    }

}


/* =====================================================
   واجهة الطالب
===================================================== */

function updateUserInterface(user) {

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


    if(user) {

        loginButton.style.display =
        "none";

        userBox.style.display =
        "flex";

        logoutButton.style.display =
        "flex";

        userEmail.innerText =
        user.email ||
        "الطالب";

    }

    else {

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

async function logoutStudent() {

    const accessToken =
    localStorage.getItem(
        "minbar_access_token"
    );


    try {

        if(accessToken) {

            await supabaseRequest(

                SUPABASE_URL +
                "/auth/v1/logout",

                {

                    method:"POST",

                    headers: {

                        "Authorization":
                        "Bearer " +
                        accessToken

                    }

                }

            );

        }

    }

    catch(error) {

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


    alert(
        "تم تسجيل الخروج 👋"
    );

}


/* =====================================================
   استعادة الجلسة
===================================================== */

async function restoreSession() {

    const accessToken =
    localStorage.getItem(
        "minbar_access_token"
    );


    const savedUser =
    getSavedUser();


    if(!accessToken) {

        updateUserInterface(
            savedUser
        );

        return;

    }


    try {

        const response =
        await supabaseRequest(

            SUPABASE_URL +
            "/auth/v1/user",

            {

                method:"GET",

                headers: {

                    "Authorization":
                    "Bearer " +
                    accessToken

                }

            }

        );


        if(response.ok) {

            const user =
            await response.json();


            localStorage.setItem(

                "minbar_user",

                JSON.stringify(user)

            );


            updateUserInterface(
                user
            );

        }

        else {

            updateUserInterface(
                savedUser
            );

        }

    }

    catch(error) {

        console.error(error);

        updateUserInterface(
            savedUser
        );

    }

}


/* =====================================================
   إغلاق النوافذ عند الضغط خارجها
===================================================== */

document
.getElementById(
    "studentModal"
)
.addEventListener(
    "click",
    function(event) {

        if(event.target === this) {

            closeStudentLogin();

        }

    }
);


document
.getElementById(
    "quizModal"
)
.addEventListener(
    "click",
    function(event) {

        if(event.target === this) {

            closeQuiz();

        }

    }
);


/* =====================================================
   تشغيل الموقع
===================================================== */

async function startSite() {

    updateUserInterface(
        getSavedUser()
    );


    updateStats();


    startDailyChallenge();


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
