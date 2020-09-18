<?php
	require "dbCon.php";
	
	$name = $_POST['name'];
	$idParents = $_POST['idParents'];
	$imageUrl = $_POST['imageUrl'];

	$query = "INSERT INTO catalog(id, name, idParents, imageUrl) VALUES (null, '$name', '$idParents', '$imageUrl')";

	if(mysqli_query($connect, $query)){
		echo "success";
	}
	else{
		echo "error";
	}
?>