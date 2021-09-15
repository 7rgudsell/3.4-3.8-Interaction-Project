<?php 
	session_start();
	if(!isset($_SESSION['login_user'])){
		header("location: login.php");
		}
	else {
		$User = $_SESSION['login_user'];
	}
?>

<!DOCTYPE html>
<html>

	<head>
		
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/adminnav.css">
		<title>Graeme's Music</title>
		<meta name="Author" content="Ryan Gudsell, 2021"> <!--metadata tags for search engines-->
		<meta charset="UTF-8">
		<meta name="Description" content="A Music Database designed to categorise and display Graeme's Music from the 60's.">
		<meta name="Keywords" content="Ryan Gudsell, RGudsell, 7RGudsell, RG, Grame, Graeme's Music, Music, Database, Music Database">
		
	</head>
	
	<body>
		
		<?php
			if(isset($_SESSION['login_user']) && $_SESSION['login_user'] == "Admin") {
				echo '<div class="nav">';
					require "adminnav.php";
				echo '</div>';
			}
		?>
		
		<div class="wrapper">
		
			<!-- BURGER MENU -->
			
			<div class="navigation">
				<div id="menuToggle">
    
					<input type="checkbox" />
    
					<span></span>
					<span></span>
					<span></span>
    
					<ul id="menu">
						<!-- <a href="#"><li>Home</li></a>  HIDE CURRENT PAGE LINK  -->
						<a href="home.php"><li><h3>Home</h3></li></a>
						<a href="alltrackstitle.php"><li><h3>All Tracks (Title)</h3></li></a>
						<a href="alltracksgenre.php"><li><h3>All Tracks (Genre)</h3></li></a>
						<a href="login.php"><li><h3>Log In</h3></li></a>
						<a href="support.php"><li><h3>Support</h3></li></a>
					</ul>
				</div>
			</div>
		
			<div class="header">
				
				<div class="head1">
				<a href="home.php"><img src="./images/logo.png" id="HeadingLogo" align="left"/></a>
				</div>
				
				<div class="head2">
					<h1 align="right"><a href="#">Support </a> | <a href="#">Log In</a></h1>
					<form method="post">
						<input type="submit" value="Log Out" name="Log_Out"/>
						<?php
							if(isset($_POST['Log_Out'])) {
								$_SESSION = array();
								header("location: login.php");
							}
						?>
					</form>
				</div>
			</div>
		
			<div class="body">
				
				<div class="content">
					
					<h1> <!-- records the users current name and feeds back to them, also in home.php -->
						<?php echo "<h1 style='text-align:center;'><span class='h1span'>&nbspHello " . $_SESSION['login_user'] . "!&nbsp</span></h1>"; 
						require "MusicDatabase_mysqli.php";
						print "<h3 style='text-align:center;'><span class='h1span'>&nbspConnected to server!&nbsp</span></h3><br>";
						?>
					</h1>
					
					<div class="admin-content">
					
						<div class="admin-show-users">
						
							<div><h1 style="margin:0px;">USERS</h1></div>
						
							<div>
								<?php
									$query = ("SELECT * FROM users");
									$result = mysqli_query($conn,$query);
									while ($output = mysqli_fetch_array($result)) {
										echo "<h3> Username:&nbsp'" . $output["Username"] . "'<br>Password:&nbsp'" . $output["Password"] . "' </h3><br>";
									} ?> <br>
							</div>
						
						</div>

						<div class="admin-update-users">
							
							<!-- CHANGING USERNAME -->
							<div><h1 style="margin:0px;">UPDATE USERNAME:</h1></div>
							<h3><form method="post">
								<label for="login">Old Username:</label>
								<input type="text" name="OldUsername" placeholder="Enter old user name"/><br>
								<label for="login">New Username:</label>
								<input type="text" name="NewUsername" placeholder="Enter new user name"/><br>
								<input type="submit" value="Update" name="Update_Username"/><br>
							</form></h3>

							<?php 
								if(isset($_POST['Update_Username'])) {
									$OldUsername = $_POST['OldUsername'];
									$NewUsername = $_POST['NewUsername'];

									//create a variable to store sql code for the 'Add Users' query
									$updatequery = "UPDATE users SET Username = '$NewUsername' WHERE users.Username = '$OldUsername'";

									if(mysqli_query($conn,$updatequery)) {
										echo "<h3>Record updated:</h3>";
									} else {
										echo "<h3>Record was not updated:</h3>";
									}
								}
							?>
							
							<!-- CHANGING PASSWORD -->
							<div><h1 style="margin:0px;">UPDATE PASSWORD:</h1></div>
							<h3><form method="post">
								<label for="login">Username:</label>
								<input type="text" name="Username" placeholder="Enter current user name"/><br>
								<label for="login">New Password:</label>
								<input type="text" name="NewPassword" placeholder="Enter new password"/><br>
								<input type="submit" value="Update" name="Update_Password"/><br>
							</form></h3>

							<?php 
								if(isset($_POST['Update_Password'])) {
									$Username = $_POST['Username'];
									$NewPassword = $_POST['NewPassword'];

									//create a variable to store sql code for the 'Add Users' query
									$updatepwquery = "UPDATE users SET Password = '$NewPassword' WHERE users.Username = '$Username'";

									if(mysqli_query($conn,$updatepwquery)) {
										echo "<h3>Record updated:</h3>";
									} else {
										echo "<h3>Record was not updated:</h3>";
									}
								}
							?><br>

						</div>
						
						<div class="admin-add-users">

							<div><h1 style="margin:0px;">ADD USER:</h1></div>
							<h3><form method="post">
								<label for="login">Username:</label>
								<input type="text" name="AddUsername" placeholder="Enter user name"/><br>
								<label for="login">Password:</label>
								<input type="text" name="AddPassword" placeholder="Enter user password"/><br>
								<input type="submit" value="Add" name="Add"/><br>
							</form></h3>

							<?php 
								if(isset($_POST['Add'])) {
									$Username = $_POST['AddUsername'];
									$Password = $_POST['AddPassword'];

									//create a variable to store sql code for the 'Add Users' query
									$insertquery = "INSERT INTO users(Username, Password) VALUES('$Username', '$Password')";

									if(mysqli_query($conn,$insertquery)) {
										echo "<h3>Record added:</h3>";
									} else {
										echo "<h3>Record was not added:</h3>";
									}
								}
							?><br>

						</div>
						
						<div class="admin-delete-users">

							<div><h1 style="margin:0px;">DELETE USER:</h1></div>
							<h3><form method="post">
								<label for="login">Username:</label>
								<input type="text" name="DeleteUser" placeholder="Enter user to delete"/><br>
								<input type="submit" value="Delete" name="Delete" onclick="return confirm('Are you sure you want to delete this user?');"/><br>
							</form></h3>

							<?php 
								if(isset($_POST['Delete'])) {
									$DeleteUser = $_POST['DeleteUser'];
									//create a variable to store sql code for the 'Add Users' query
									$deletequery = "DELETE FROM users WHERE users.Username = '$DeleteUser'";

									if(mysqli_query($conn,$deletequery)) {
										echo "<h3>Record deleted:</h3>";
									} else {
										echo "<h3>Record was not deleted:</h3>";
									}
								}
							?><br>

						</div>
					
					</div>

				</div>
			
			</div>
		
			<div class="footer">
				<div class="foot1">
				<p>Useful Links: <br> </p>
					<ul>
						<a href="home.php"><li>Home</li></a>
						<a href="alltrackstitle.php"><li>All Tracks (Title)</li></a>
						<a href="alltracksgenre.php"><li>All Tracks (Genre)</li></a>
						<a href="login.php"><li>Log In</li></a>
						<a href="support.php"><li>Support</li></a>
					</ul>
				<p>Copyright 2021, Ryan Gudsell &copy </p>
				</div>
				<div class="foot2">
				<a href="https://twitter.com/?lang=en" target="_blank"><img src="./images/TwitterLogo.png" id="SocialMedia" id="TwitterLogo"></a>
				<a href="https://www.facebook.com/" target="_blank"><img src="./images/FacebookLogo.png" id="SocialMedia" id="FacebookLogo"></a>
				<a href="https://www.instagram.com/" target="_blank"><img src="./images/InstagramLogo.png" id="SocialMedia" id="InstagramLogo"></a>
				</div>
			</div>
		</div>
	</body>

</html>