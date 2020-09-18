<?php

require "dbCon.php";

$query = "SELECT imageUrl FROM advertisement";

$data = mysqli_query($connect, $query);

$arrayImage = array();

while ($row = mysqli_fetch_assoc($data)) {
		array_push($arrayImage, $row['imageUrl']);
	}

echo json_encode($arrayImage);	
?>