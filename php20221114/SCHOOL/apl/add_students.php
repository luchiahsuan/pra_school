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

$sql="INSERT INTO `students` 
(`id`, `school_num`, `name`, 
`birthday`, `uni_id`, `addr`, 
`parents`, `tel`, `dept`, 
`graduate_at`, `status_code`) VALUES 
(NULL, '915084', '陳彥明', 
'1995-10-23', 'F100004523', '台中縣太平市復興街503號', 
'陳家騏', '02450238', '2', 
'23', '001')";

//$pdo->query($sql);
$res=$pdo->exec($sql);
echo"新增成功:".$res;

?>
</body>
</html>