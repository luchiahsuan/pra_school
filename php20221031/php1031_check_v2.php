<?php
session_start();

$users = [[
    "name" => "lulu",
    "pw" => "123",
    "level" => "admin",
], [
    "name" => "kiki",
    "pw" => "456",
    "level" => "user",
], [
    "name" => "jiji",
    "pw" => "789",
    "level" => "vip",
]];

$formAcc = $_POST['acc'];
$formPw = $_POST['pw'];

$chk = false;
foreach ($users as $user) {
    if ($user['name'] == $formAcc && $user['pw'] == $formPw) {
        $chk = true;
    }
}

if ($chk) {
    // echo "帳密正確";
    $_SESSION['login'] = $formAcc;
}
// echo "帳密錯誤";
else {
    $_SESSION['error'] = "帳號或密碼有誤";
}
header("location:php1031_login.php");
