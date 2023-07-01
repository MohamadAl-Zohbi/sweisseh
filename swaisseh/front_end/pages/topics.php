<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>الانجازات</title>
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

        #image{
            margin-top: 30px;
            width: 100%;
            border-radius: 20px;
            padding: 10px;
        }
        .title{
            border-bottom:1px solid black;
        }
    </style>
</head>
<body dir="rtl">
    <?php include_once 'header.html'?>
    <div class="container">
        <h1 class="title">العنوان</h1>
        <div class="container">
<img id="image" src="../img/s1.jpg" alt="img">   
        </div>
        <p>الوصف</p>

    </div>
</body>
</html>