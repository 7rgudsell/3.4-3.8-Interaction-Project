<?php
	ob_start();
	session_start();
		$error = NULL;
		if($_SERVER["REQUEST_METHOD"] == "POST") {
			//connect.php (tells where to connect servername, dbasename, username, password)
			require "MusicDatabase_mysqli.php";
			//username and password sent from form
			$myusername = mysqli_real_escape_string($conn,$_POST["username"]);
			$mypassword = mysqli_real_escape_string($conn,$_POST["password"]);
			
			$query = "SELECT Username FROM users WHERE Username = '$myusername' and Password = '$mypassword'";
			
			$result = mysqli_query($conn,$query);
			$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
			
			$count = mysqli_num_rows($result);
			
			//if result matched $myusername and $mypassword, table must be 1 row
			if($count == 1 && $_SESSION['login_user'] = $myusername) {
				if($myusername == "Admin" || $myusername == "Graeme") {
					header("location: admin.php");
					require 'adminnav.php';
				} else {
					header("location: home.php");
				}
			} else {
				$error = "ERROR! Your login name or password is invalid";
				}
			}
	ob_end_flush();
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
				</div>
			</div>
		
			<div class="body">
				
				<div class="content">
					
					<div class="section3">
						<h1><form method="post" id="loginform">
							
							<label for="login">Username:</label>
							
							<input type="text" name="username" placeholder="Enter user name" id="inputbox"/>
							
							<label for="login">Password:</label>
							
							<input type="text" name="password" placeholder="Enter user password" id="inputbox"/>
							
							<input type="submit" value="Submit" id="submitbutton"/><br>
							
						</form></h1>
						<h3><?php echo $error; ?></h3>
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