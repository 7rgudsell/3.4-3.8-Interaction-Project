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
						<!--<a href="support.php"><li><h3>Support</h3></li></a>-->
					</ul>
				</div>
			</div>
		
			<div class="header">
				
				<div class="head1">
				<a href="home.php"><img src="./images/logo.png" id="HeadingLogo" align="left"/></a>
				</div>
				
				<div class="head2">
					<?php
						if(isset($_SESSION['login_user'])) {
							echo '<br><br><br><br><form method="post">
								<input type="submit" value="Log Out" name="Log_Out"/>';
								if(isset($_POST['Log_Out'])) {
								$_SESSION = array();
								header("location: login.php");
								}
							echo '</form>';
						}
					?>
				</div>
					
			</div>
		
			<div class="body">
				
				<div class="supportlogincontent">
					
					<h1> <!-- records the users current name and feeds back to them, also in home.php -->
						<?php echo "<h1 style='text-align:center;'><span class='h1span'>&nbspHello " . $_SESSION['login_user'] . "!&nbsp</span></h1>"; 
						require "MusicDatabase_mysqli.php";
						print "<h3 style='text-align:center;'><span class='h1span'>&nbspConnected to server!&nbsp</span></h3><br>";
						?>
					</h1>
						<h1 id="smallh1" align="center">Please write a support ticket and we will send feedback to your email!</h1>
						<h3><form method="post">
							<div><label for="login">Email:</label>
							<input type="text" name="Email" id="supporttext" placeholder="Enter email"/></div>
							
							<div><label for="login">Ticket:</label><br>
							<textarea name="SupportTicket" placeholder="Write your ticket in this box for it to be forwarded to an administrator..." rows="8" cols="52" wrap="soft" maxlength="800" style="overflow:hidden; resize:none; font-family:Montserrat; font-size:18px;"></textarea></div>
							
							<div><input type="submit" value="Send Ticket!" name="UserSupport" id="supportsubmitbutton"/></div>
						</form></h3>

						<br><?php 
							if(isset($_POST['UserSupport'])) {
								$Email = $_POST['Email'];
								$SupportTicket = $_POST['SupportTicket'];

								//create a variable to store sql code for the 'Add Users' query
								$supportquery = "INSERT INTO support(Email, SupportTicket) VALUES('$Email', '$SupportTicket')";

								if(mysqli_query($conn,$supportquery)) {
									echo "<h3>Feedback sent!</h3>";
								} else {
									echo "<h3>Feedback not sent.</h3>";
								}
							}
						?>

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