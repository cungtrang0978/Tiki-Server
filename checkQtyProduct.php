<?php
	require "dbCon.php";

	if(isset($_POST['idProduct']) && isset($_POST['qty'])){
		
		$idProduct = $_POST['idProduct'];
		$qty = $_POST['qty'];

		$query_checkQty = "SELECT qty FROM product WHERE product.id = '$idProduct'";
		if($data_checkQty = mysqli_query($connect, $query_checkQty)){
			$row = mysqli_fetch_assoc($data_checkQty); 
			if(isset($row) &&  $row['qty'] < $qty){
				echo "out_of_stock";	
			}
		}
	}
	else {
		echo "non_value";
	}
?>