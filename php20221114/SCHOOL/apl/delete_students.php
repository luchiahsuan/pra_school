<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>移除學生資料</title>
</head>
<body>
<?php
$dsn="mysql:host=localhost;charest=utf8;
dbname=school";
$pdo=new PDO($dsn,'root','');

$sql="DELETE FROM`students` WHERE`name`='陳彥明'";

//$pdo->query($sql);
$res=$pdo->exec($sql);
echo"移除成功:".$res;


?>
</body>
</html>