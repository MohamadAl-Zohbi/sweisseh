<!DOCTYPE html>
<html lang="ar">
<?php
if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $father_name = $_POST['father_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];

    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];
    $birthday = $_POST['birthday'];
    $phone_number = $_POST['phone_number'];

    $gender = $_POST['gender'];

    include_once '../api/connect.php';
    $query = "SELECT * FROM users WHERE email ='$email'";

    //####################

    require_once '../api/mail.php';
    $mail->setFrom('alzbya0123@gmail.com', 'Mohamad');
    $mail->addAddress('khalilmahmood219@gmail.com');
    $mail->Subject = "test php";
    $mail->Body    ='this message is sent from php mailer mohamad zohbi test';
    $mail->send();

    echo 'done';



    //#############
}

// $result  = mysqli_query($connect,"select * from users");
?>
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
        <form id="form" action="signup.php" method="post">
            <h1>تسجيل في الموقع</h1>
            <div class="content">
                <img src="../img/signup.jpg">
                <input name="name" class="input" type="text" placeholder="أدخل اسمك" required>
                <input name="father_name" class="input" type="text" placeholder="اسم الاب " required>
                <select class="input" name="last_name">
                    <option value="">الزعبي</option>
                    <option value="">الرفاعي</option>
                    <option value="">صالح</option>
                    <option value="">خليل</option>
                    <option value="">القرحاني</option>
                    <option value="">فتوح</option>
                    <option value="">العمر</option>
                    <option value="">المصري</option>
                    <option value="">المشمشاني</option>
                    <option value="">مطر</option>
                    
                </select>
                <input name="email" class="input" type="email" placeholder="ادخل البريد الالكتروني" required>
                <input name="password" class="input" type="password" placeholder="ادخل كلمة مرور" required>
                <input name="cpassword" class="input" type="password" placeholder="تاكيد كلمة المرور" required>

                <input name="birthday" class="input" type="date"  value="2000-02-20" max="2020-01-01" required>
                <div class="number">
                    <code>+961</code>
                    <input name="phone_number" type="text" maxlength="8" placeholder="ادخل رقم الهاتف" required>
                </div>
                <br><br>
                <div>
                    <label for="male"> &nbsp;ذكر</label>
                    <input type="radio" name="gender" value="1" checked>
                    <br>
                    <label for="famme">انثى</label>
                    <input type="radio" name="gender" value="2">
                </div>
                <input name='submit' class="input" style="background-color:#494949; color:white; cursor:pointer; font-size:20px;" type="submit" value="انشاء الحساب">
                
                <p>لديك حساب بالفعل <a href="login.php">تسجيل الدخول</a></p>
                <br>
            </div>
        </form>
    </div>
</body>
<script>
    let ip = `<?php echo $_SERVER["REMOTE_ADDR"]?>`;
    document.getElementById("form").onsubmit = (form)=>{
        form.preventDefault();
        alert('تم تسجيل الدخول');
    }
</script>
</html>