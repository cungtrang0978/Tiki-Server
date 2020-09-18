<?php
	require "dbCon.php";

	if(isset($_POST['idTransact']) && isset($_POST['idProduct']) && isset($_POST['qty']) && isset($_POST['amount'])){
		$idTransact = $_POST['idTransact'];
		$idProduct = $_POST['idProduct'];
		$qty = $_POST['qty'];
		$amount = $_POST['amount'];

		$query_insertOrder = "INSERT INTO orders(idTransact, idProduct, qty, amount) VALUES ('$idTransact', '$idProduct', '$qty', '$amount')";
				if($data = mysqli_query($connect, $query_insertOrder)){
					echo "insert_success";
				} else echo "insert_fail";
	}
	else {
		echo "non_value";
	}
?>