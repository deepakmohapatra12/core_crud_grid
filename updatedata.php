<?php
	session_start();

		 $id = $_POST['productid'];

	include("dbconnection.php");
	
	
	$name = $_POST['fname'];
	$pname =$_POST['pname'];
	
	 $sql ="update product set productname = '$name',productprice='$pname' where productid='$id'";
	
	$res = mysqli_query($conn,$sql);
	
	if($res==true)
		{
			
			
			//echo $id;
			header("Location:home.php");
		}
	else
		{
			
			header("Location:editdata.php");
			//echo "Fail";
		}
	
	
?>