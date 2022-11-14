<?php
$dsn="mysql:host=localhost;charest=utf8;
dbname=school";
$pdo=new PDO($dsn,'root','');

$sql="DELETE FROM`students` WHERE`name`='陳彥明'";

//$pdo->query($sql);
$res=$pdo->exec($sql);
echo"刪除成功:".$res;


?>