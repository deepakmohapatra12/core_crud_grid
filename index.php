<html>
<head>
	<title>Login_Page</title>
</head>
<body bgcolor="skyblue">
	<center>
	<?php
		session_start();
		if (isset($_SESSION['msg']))
		{
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
	
	?>
	</center>
	<form method="POST" action="logincheck.php">
		<table bgcolor="white" cellpadding="10" cellspacing="10" align="center">
			<caption><u>User Login</u></caption>
			<tr>
				<th>Email Id</th>
				<td><input type="email" name="email" size="25"></td>
			</tr>
				<th>Password</th>
				<td><input type="password" name="password" size="25"></td>
			<tr>
			</tr>
			
			<tr>
				<th colspan="2">
					<button>login</button>
					<button type="reset">Reset</button>
					<hr>
					<a href="register.php">Register</a>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>