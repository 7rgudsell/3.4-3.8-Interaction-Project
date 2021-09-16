<?php 
	if(isset($_POST['search'])) {
		$searchq = $_POST['search'];
		$searchq = preg_replace("#[^0-9a-z]#i", "", $searchq);
		$query = mysqli_query(
			"SELECT * FROM tReference WHERE sReference LIKE '%$searchq%' OR sSearch LIKE '%$searchq%' OR sSort LIKE '%$searchq%'") or die("The search was not completed.");
		if(mysqli_num_rows($query) == 0) {
			$output = "The search was completed!";
		} else {
			$output = '<div><ul>';
			while($row = mysqli_fetch_assoc($query)){
				$sReference = $row['sReference'];
				$output .= '<li>';
				$output .= '<a target="_blank" href="references.php?reference="' . $sReference . '" ';
				$output .= '" title="' . $sReference . '">' . $sReference . '</a>';
				$output .= '</li>';
			}
			$output .= '</ul></div>';
		}
	}
?>