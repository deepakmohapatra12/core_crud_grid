<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>This is Edit Page</title>
	<link rel="stylesheet" href="assets/css/bootstrap.css"/>
</head>
<body>
	<div class="row">
	<?php
		include("dbconnection.php");
		$editid = $_REQUEST['id'];
		$sql = "select * from product where productid='$editid'";
		$res =  mysqli_query($conn,$sql);
		$row = mysqli_fetch_object($res);
	?>

		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<form method="POST" action="updatedata.php">
				<table class="table table-bordered table-hover">
					<caption class="text-center">View Profile</caption>
					<tr>
						<th>Product Name</th>
						<td>
							<input type="text" name="fname" value="<?php echo $row->productname; ?>">
							<input type="hidden" name="productid" value="<?php echo $editid; ?>">
						</td><!--session variable slows down the server.so use the field those are neccesary.-->
					</tr>
					<tr>
						<th>Product Price</th>
						<td>
							<input type="text" name="pname" value="<?php echo $row->productprice; ?>">
						</td><!--session variable slows down the server.so use the field those are neccesary.-->
					</tr>
					<tr>
						<th></th>
						<th>
							<button type="submit" class="btn btn-primary">Update</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<div class="col-sm-3"></div>
	</div>
</body>
</html>