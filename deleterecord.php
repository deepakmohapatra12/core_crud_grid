<?php
	session_start();

	include("dbconnection.php");
	
	$signupid = $_REQUEST['id'];
	
	$sql = "delete from product where productid='$signupid'";
	
	mysqli_query($conn,$sql);
	
	$_SESSION['msg'] = "Data Deleted Successfully";
	
	header("Location:home.php");
?>