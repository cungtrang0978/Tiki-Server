<?php
require "dbCon.php";

if(isset($_POST['idTransact']) && isset($_POST['idProduct'])){
	$idTransact = $_POST['idTransact'];
	$idProduct = $_POST['idProduct'];

	$query_checkOrder = "SELECT orders.id 
						FROM orders INNER JOIN transact ON orders.idTransact = transact.id, product 
						WHERE orders.idProduct = product.id and transact.id = '$idTransact' and product.id = '$idProduct'";
	if($data = mysqli_query($connect, $query_checkOrder)){
		$row = mysqli_fetch_assoc($data);
		if(isset($row)){
			echo $row['id'];
		}else echo "not_exist";
	}else echo "wrong_query";
}else echo "non_post";

?>