<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تواصل معنا</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            width: 100%;
            height: 100vh;

        }

        .container{
            display: block;
            text-align: center;
            width: 90%;
            margin: auto;
            line-height: 40px;
        }

        #feedback{
            background-color: wheat;
            margin-top: 30px;
            width: 90%;
            border-radius: 20px;
            padding: 10px;
            user-select: auto;
        }
    </style>
</head>
<body dir="rtl">
    <?php include_once 'header.html'?>
    <br>
    <div class="container">
        <h1>اترك لنا رسالة او نصيحة </h1>
        <p>تم تصميم الموقع لتمكين ايصال الاخبار لجيمع الضية بسهولة وضقة في المعلومات 
            <b>ليس هناك جهة مختصة</b> او داعمة لهذا المشروع بل انه فكرة شبابية حصلت على اعجاب الكثيرين بحيث تطورت واصبحت لما هي عليه الان
        </p>
        <div class="container">
            <textarea name="" id="feedback" cols="30" rows="10" placeholder="ادخل الرسالة هنا من فضلك"></textarea>
            <br>
            <input type="submit" value="ارسال">
        </div>
    </div>
</body>
<script>
    document.getElementById("contactus").style.color = "red";
    document.getElementById("header").style.width = 98 + "%";
    document.getElementById("header").style.height = 50 + "px"

</script>
</html>