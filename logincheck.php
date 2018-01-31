  <?php
	session_start();
	include("dbconnection.php");
	
	$email=$_POST['email'];
	$pass=$_POST['password'];
	
	$sql = "select * from user where email='$email' and password='$pass'";
	$res=mysqli_query($conn,$sql);
	$totaluser = mysqli_num_rows($res);
	//echo $totaluser;
	
	if($totaluser>0)
	{
		header("Location:home.php");
		$row = mysqli_fetch_object($res);
		$_SESSION['name'] = $row->name;
		$_SESSION['id'] = $row->id;
		
	}
	else
	{
		$_SESSION['msg'] = "invalid login details!";
		header("Location:index.php");
		//echo "no user matching the criteria";
	}
?>