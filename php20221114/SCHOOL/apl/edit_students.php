<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>編輯學生資料</title>
</head>
<body>
<?php
$dsn="mysql:host=localhost;charest=utf8;
dbname=school";
$pdo=new PDO($dsn,'root','');

$sql="UPDATE `students` SET `name`='丁小雨' WHERE `id`='1'";

//$pdo->query($sql);
$res=$pdo->exec($sql);
echo"編輯成功:".$res;
?>
</body>
</html>