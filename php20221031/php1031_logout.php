<?php
session_start();

unset($_SESSION['login']);

header("php1031_login.php");
?>