<!DOCTYPE html>
<html>
<head>
	<title>This is Edit Page</title>
	<link rel="stylesheet" href="assets/css/bootstrap.css"/>
</head>
<body>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<form method="POST" action="additemdetails.php" enctype="multipart/form-data">
				<table class="table table-bordered table-hover">
					<caption class="text-center">Add Item Easily</caption>
					<tr>
						<th>Product Name</th>
						<td>
							<input type="text" name="fname">
						</td><!--session variable slows down the server.so use the field those are neccesary.-->
					</tr>
					<tr>
						<th>Product Price</th>
						<td>
							<input type="text" name="sname">
						</td><!--session variable slows down the server.so use the field those are neccesary.-->
					</tr>
					<tr>
						<th>Select Category</th>
						<td>
							<select name="cat_name">
								<option value="">Select Category</option>
								<?php
								include("dbconnection.php");
								$sql= "select * from category";
								$result = mysqli_query($conn,$sql);
								while($row=mysqli_fetch_object($result)){
									echo "<option value='$row->categoryid'>$row->categoryname</option>";
								}
								?>
							</select>
						</td><!--session variable slows down the server.so use the field those are neccesary.-->
					</tr>

					<tr>
						<th>Photo</th>
						<td>
							<input type="file" name="photo">
						</td><!--session variable slows down the server.so use the field those are neccesary.-->
					</tr>
					<tr>
						<th></th>
						<th>
							<button type="submit" class="btn btn-primary">Add</button>
						</th>
					</tr>
				</table>
			</form>
		</div>
		<div class="col-sm-3"></div>
	</div>
</body>
</html>