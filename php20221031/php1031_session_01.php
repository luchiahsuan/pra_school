
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>session</title>
    </head>
    <body>
    <h1>session練習</h1>
    <?php
    
    session_start();
    $_SESSION['name']='LULU';

    echo $_SESSION['name'];
    
    ?>
    <a href="./php1031_session_02.php">會員中心</a>|
    <a href="./php1031_session_03.php">個人資料</a>|
    <a href="./php1031_logout.php">登出</a>
    
</body>
</html>
