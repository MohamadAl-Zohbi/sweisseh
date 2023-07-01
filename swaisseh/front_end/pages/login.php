<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>انشاء حساب</title>
    <link rel="stylesheet" href="../css/signup.css">
    <meta name="theme-color" content="#00d5d5">
</head>

<body dir="rtl">
    <div class="form">
        <form id="form" action="index.html" method="post">
            <h1>تسجيل الدخول</h1>
            <div class="content">
                <img src="../img/signup.jpg">

                <input class="input" type="email" placeholder="ادخل البريد الالكتروني" required>
                <div class="number">
                    <code>+961</code>
                    <input class="" type="text" maxlength="8" placeholder="ادخل رقم الهاتف" required>
                </div>
                <input class="input" type="password" placeholder="ادخل كلمة مرور" required>
                

                <input class="input" style="background-color:#494949; color:white; cursor:pointer; font-size:20px;" type="submit" value="تسجيل الدخول">
                <p><a href="signup.php">انشاء حساب</a></p>
                <br>
            </div>
        </form>
    </div>
</body>
<script>
    // let ip = ``;
    // // alert(ip);
    document.getElementById("form").onsubmit = (form)=>{
        form.preventDefault();
        alert('تم تسجيل الدخول');
    }
</script>
</html>