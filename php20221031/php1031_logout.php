<?php
session_start();

unset($_SESSION['login']);

header("location:php1031_login.php");
?>