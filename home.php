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
						<a href="alltrackstitle.php"><li><h3>All Tracks (Title)</h3></li></a>
						<a href="alltracksgenre.php"><li><h3>All Tracks (Genre)</h3></li></a>
						<a href="login.php"><li><h3>Log In</h3></li></a>
						<a href="support.php"><li><h3>Support</h3></li></a>
					</ul>
				</div>
			</div>
		
			<div class="header">
				
				<div class="head1">
					<a href="home.php"><img src="./images/logo.png" id="HeadingLogo" align="left"/></a> <!-- LOGO IMAGE -->
				</div>
				
				<div class="head2">
					<h1 align="right"><a href="#">Support </a> | <a href="#">Log In</a></h1>
					<form method="post"> <!-- LOG OUT BUTTON IN NAV -->
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
					
					<h1 style="text-align:center;">
					<span class="h1span">&nbspWelcome<!--, <?php echo $_SESSION['login_user'] ?>-->!&nbsp</span></h1>
					<h1 style="text-align:center;" id="smallh1">
					<span class="h1span">&nbspThese are our Top Songs!&nbsp</span>
					</h1>
					
					<loginheading1>
						<Songid1><h1 id="smallh1"><span class="h1span">No.</span></h1></Songid1>
						<Title1><h1 id="smallh1"><span class="h1span">Title</span></h1></Title1>
						<Album1><h1 id="smallh1"><span class="h1span">Album</span></h1></Album1>
						<Artist1><h1 id="smallh1"><span class="h1span">Artist</span></h1></Artist1>
						<Genre1><h1 id="smallh1"><span class="h1span">Genre</span></h1></Genre1>
						<Duration1><h1 id="smallh1"><span class="h1span">Duration</span></h1></Duration1>
						<Size1><h1 id="smallh1"><span class="h1span">Size</span></h1></Size1>
					</loginheading1>
					
					<?php
					require "MusicDatabase_mysqli.php";
			
					//Creates a variable to store the sql query
					$query = ('SELECT m.Song_ID, t.Title, 
					GROUP_CONCAT(DISTINCT g.Genre SEPARATOR ", ") AS Genre, 
					GROUP_CONCAT(DISTINCT r.Artist SEPARATOR ", ") AS Artist, 
					GROUP_CONCAT(DISTINCT l.Album SEPARATOR ", ") AS Album, 
					m.Duration, m.Size_KB AS Size 
					FROM musicDetails AS m
					INNER JOIN titleDetails AS t ON m.Title_ID = t.Title_ID
					JOIN musicToAlbum AS k ON m.Song_ID = k.Song_ID JOIN albumDetails AS l ON l.Album_ID = k.Album_ID
					JOIN musicToArtist AS j ON m.Song_ID = j.Song_ID JOIN artistDetails AS r ON r.Artist_ID = j.Artist_ID
					JOIN musicToGenre AS h ON m.Song_ID = h.Song_ID JOIN genreDetails AS g ON g.Genre_ID = h.Genre_ID
					GROUP BY m.Song_ID
					ORDER BY m.Song_ID ASC
					LIMIT 0, 5');
			
					//Runs and stores the query using the variables $con (see nav.php) and $query
					$result = mysqli_query($conn,$query);
					//runs in a 'while' loop
					while($output=mysqli_fetch_array($result))
					{
					?>
					<!--php is above. HTML is below. Used to output the query results-->
					
					<loginheading2>
						<Songid2><p><?php echo $output['Song_ID']; ?></p></Songid2>
						<Title2><p><?php echo $output['Title']; ?></p></Title2>
						<Album2><p><?php echo $output['Album']; ?></p></Album2>
						<Artist2><p><?php echo $output['Artist']; ?></p></Artist2>
						<Genre2><p><?php echo $output['Genre']; ?></p></Genre2>
						<Duration2><p><?php echo $output['Duration']; ?>s</p></Duration2>
						<Size2><p><?php echo $output['Size']; ?>KB</p></Size2>
					</loginheading2>
					<?php
					//Closes the output while loop
					}
				?>
					
				</div>
			
			</div>
		
			<div class="footer">
				<div class="foot1">
				<p>Useful Links: <br> </p>
					<ul>
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