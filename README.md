

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
<
