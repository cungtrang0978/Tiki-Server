<?php
require "dbCon.php";

if(isset($_POST['idTransact'])){
	$idTransact = $_POST['idTransact'];
	$query_getTransact = "SELECT SUM(qty) AS qty, SUM(amount) AS amount FROM orders WHERE idTransact = '$idTransact'";
	if($data = mysqli_query($connect, $query_getTransact)){
		$row = mysqli_fetch_assoc($data);

		if(isset($row)){
			$arrayCart = array("qty" => $row['qty'], "amount" => $row['amount']);
			echo json_encode($arrayCart);
		}
		else echo "non_value";
	}
	else echo "wrong_query";
}
else {
	echo "non_post";
}

?>