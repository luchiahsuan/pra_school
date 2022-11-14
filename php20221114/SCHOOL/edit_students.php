<?php
$dsn="mysql:host=localhost;charest=utf8;
dbname=school";
$pdo=new PDO($dsn,'root','');

$sql="UPDATE `students` SET `name`='丁小雨' WHERE `id`='1'";

//$pdo->query($sql);
$res=$pdo->exec($sql);
echo"編輯成功:".$res;
