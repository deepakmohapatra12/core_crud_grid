	<?php
				if(isset($_SESSION['message']))
					{
						echo "<p class='alert alert-warning'>";
						
						echo $_SESSION['message'];
						
						unset ($_SESSION['message']);
						
						echo "</p>";
						
						
					}
			?>
<!DOCTYPE html>
<html>
<head>
	<title>This Listing Page</title>
	<link rel="stylesheet" href="assets/css/bootstrap.css"/>
</head>
<body>	
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<a href="additem.php" class="btn btn-primary" role="button">Add Item</a>
			</div>
			<div class="col-sm-6">
			<a href="logout.php" class="btn btn-primary" role="button">Logout</a>
			</div>

		</div>
		<br>
		<br>
		<div class="row">
			<table class="table table-bordered table-responsive">

				<tr>
					<th>Id</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>category name </th>
					<th>Product photo</th>
					<th>Delete</th>
					<th>Edit</th>

				</tr>

				<?php

				include("dbconnection.php");

				$sql = "select product.productid,product.productname,product.image,product.productprice,category.categoryname from product inner join category ON product.categoryid=category.categoryid";

				$res = mysqli_query($conn,$sql);

				$i=1;

				$total = mysqli_num_rows($res);

				while($row = mysqli_fetch_object($res))
				{
					echo "<tr>";
					echo "<td>".$row->productid."</td>";
					echo "<td>".$row->productname."</td>";
					echo "<td>".$row->productprice."</td>";
					echo "<td>".$row->categoryname."</td>";
					//echo "<td>".$row->image."</td>";
        			echo "<td><img src='assets/image/".$row->image."' height='100' width='100'></td>";
					echo "<td> <a href='deleterecord.php?id=$row->productid'>Delete </a></td>";
					echo "<td> <a 'href='editdata.php?id=$row->productid'>Edit </a></td>";
					echo "<tr>";
				}

				?>
			</table>
		</div>
	</div>


</body>
</html>