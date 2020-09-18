<?php
require "dbCon.php";

if(isset($_POST['id'])){
	$id = $_POST['id'];
	$query = "SELECT product.name, COUNT(orders.id)-1 as 'count' FROM `transact` INNER JOIN orders ON transact.id = orders.idTransact, product WHERE product.id = orders.idProduct AND transact.id = '$id' ORDER BY orders.id ASC";

	if($data = mysqli_query($connect, $query)){
		$row = mysqli_fetch_assoc($data);
		if(isset($row)){
			$name = substr($row['name'], 0, 40);

			if($row['count'] == 0){
				echo $name;
			}else echo $name . "...và " .$row['count'] ." sản phẩm khác";
		}
	}
}
// $query = "SELECT product.name, COUNT(orders.id)-1 as 'count' FROM `transact` INNER JOIN orders ON transact.id = orders.idTransact, product WHERE product.id = orders.idProduct AND transact.id = 50 ORDER BY orders.id ASC";

// 	if($data = mysqli_query($connect, $query)){
// 		$row = mysqli_fetch_assoc($data);
// 		if(isset($row)){
// 			$name = substr($row['name'], 0, 50);
// 			echo $name . "...và " .$row['count'] ." sản phẩm khác";
// 		}
// 	}

?>