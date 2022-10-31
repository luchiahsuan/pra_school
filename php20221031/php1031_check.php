<?php
session_start();

$acc = 'lulu';
$pw = '1234';

$formAcc = $_POST['acc'];
$formPw = $_POST['pw'];

if ($acc == $formAcc && $pw == $formPw) {
    // echo "帳密正確";
    $_SESSION['login']= $formAcc;
} 
    // echo "帳密錯誤";
    else{
        $_SESSION['error']="帳號或密碼有誤";
    }
    header("location:php1031_login.php");

