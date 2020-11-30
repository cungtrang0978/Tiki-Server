<?php
require "dbCon.php";

if(isset($_POST['idUser']) && isset($_POST['idProduct']) && isset($_POST['ratePoint']) && isset($_POST['comment'])){
	$idUser = $_POST['idUser'];
	$idProduct = $_POST['idProduct'];
	$ratePoint = $_POST['ratePoint'];
	$comment = $_POST['comment'];

	$query_insert_rate = "INSERT INTO `rate`(`idUser`, `idProduct`, `ratePoint`, `comment`) VALUES ('$idUser', '$idProduct', '$ratePoint', '$comment')";
	
	if(mysqli_query($connect, $query_insert_rate)){
		echo "insert_success";
	} else echo "insert_fail";
}else{
	echo "non_value";
}
?>