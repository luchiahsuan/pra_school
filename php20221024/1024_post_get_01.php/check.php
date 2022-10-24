<?php
$acc = 'lulu';
$pw = '1234';

$formAcc = $_POST['acc'];
$formPw = $_POST['pw'];

if ($acc == $formAcc && $pw == $formPw) {
    // echo "帳密正確";
    header("location:login.php?result=success");
} else {
    // echo "帳密錯誤";
    header("location:login.php?result=fail");

}
