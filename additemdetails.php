<?php

	include("dbconnection.php");

	$product_name = $_POST['fname'];
	$product_price = $_POST['sname'];
	$category_name = $_POST['cat_name'];

	$filename = md5(time()).$_FILES['photo']['name'];
	
	$tmpname= $_FILES['photo']['tmp_name'];

	move_uploaded_file($tmpname,"assets/image/$filename");

	$sql = "insert into product(productname,productprice,categoryid,image) values ('$product_name','$product_price','$category_name','$filename')";

	$status = mysqli_query($conn,$sql);

	if($status==true)
	{
		header('Location:home.php');
	}
	else
	{
		header('Location:additem.php');
	}



?>