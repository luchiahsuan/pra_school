<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新增學生資料</title>
</head>
<body>
<?php
$dsn="mysql:host=localhost;charest=utf8;
dbname=school";
$pdo=new PDO($dsn,'root','');

$school_num=$_POST['school_num'];
$name=$_POST['name']; 
$birthday=$_POST['birthday'];
$uni_id=$_POST['uni_id'];
$addr=$_POST['addr'];
$parents=$_POST['parents'];
$tel=$_POST['tel'];
$dept=$_POST['dept']; 
$graduate_at=$_POST['graduate_at'];
$status_code=$_POST['status_code'];

$classes=$_POST['classes'];
$year=2000;

$seat_num=$pdo->query("SELECT max(`seat_num`) FROM `class_student` WHERE `class_code`='$classes'")->fetchColumn()+1;

$sql="INSERT INTO `students` 
(`id`, `school_num`, `name`, 
`birthday`, `uni_id`, `addr`, 
`parents`, `tel`, `dept`, 
`graduate_at`, `status_code`) VALUES 
(NULL, '$school_num', '$name', 
'$birthday', '$uni_id', '$addr', 
'$parents', '$tel', '$dept', 
'$graduate_at', '$status_code')";

$sql_class="INSERT INTO `class_student`(`$school_num`,`$classes_code`,`$seat_num`,`$year`)
values('$school_num','$classes_code','$seat_num','$year')";

//$pdo->query($sql);
$res=$pdo->exec($sql);
$res=$pdo->exec($sql_class);
echo"新增成功:".$res;

?>
</body>
</html>