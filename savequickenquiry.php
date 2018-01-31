<?php
	
	session_start();

		
	$n = $_POST['name'];
	$e = $_POST['email'];
	$m = $_POST['mobile'];
	$mes = $_POST['message'];
	
	

	
	
		
		include("dbconfig.php");

		$sql = "insert into enquiry (name,email,mobile,message) values('$n','$e','$m','$mes')";
		
		$status = mysqli_query($conn,$sql);
		
		
		echo "<p class='alert alert-success'>Data saved successfully we will call you back soon</p>";
		
		

?>