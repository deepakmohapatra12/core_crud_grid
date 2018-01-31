<?php
session_start();
unset($_SESSION['name']);
unset($_SESSION['id']);

$_SESSION['msg'] = "You are logged out successfully";
header("Location:index.php");

?>