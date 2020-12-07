<?php
require "dbCon.php";
$CODE_UPDATE_PRICE = "CODE_UPDATE_PRICE";
$CODE_UPDATE_TRANSACT = "CODE_UPDATE_TRANSACT";

if(isset($_POST['idTransact']) && isset($_POST['code'])){
	$code = $_POST['code'];
	$idTransact = $_POST['idTransact'];

	if($code === $CODE_UPDATE_PRICE){
		$query_get = "SELECT SUM(qty) AS qty, SUM(amount) AS amount FROM `orders` WHERE idTransact = '$idTransact'";
		if($data_get = mysqli_query($connect, $query_get)){
			$row_get = mysqli_fetch_assoc($data_get);
			if(isset($row_get)){
				$amount = $row_get['amount'];
				$qty = $row_get['qty'];
				if($amount == null && $qty == null){
					$amount = 0; 
					$qty = 0;
				}
				$query_update = "UPDATE `transact` SET `qty`= $qty,`amount`= $amount WHERE `id` = $idTransact";
				if (mysqli_query($connect, $query_update)){
					echo "update_success";
				}else echo "update_fail";
			}else echo "non_value";
		}else echo "wrong_query";
	}
	elseif($code === $CODE_UPDATE_TRANSACT){
		$query = "UPDATE transact SET ";
		$check_indexFirst = 0;
		if(isset($_POST['status'])){
			$status = $_POST['status'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " status = '$status' ";
		}

		if(isset($_POST['user_name'])){
			$user_name = $_POST['user_name'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " user_name = '$user_name' ";
		}

		if(isset($_POST['user_phone'])){
			$user_phone = $_POST['user_phone'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " user_phone = '$user_phone' ";
		}

		if(isset($_POST['province'])){
			$province = $_POST['province'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " province = '$province' ";
		}

		if(isset($_POST['district'])){
			$district = $_POST['district'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " district = '$district' ";
		}

		if(isset($_POST['ward'])){
			$ward = $_POST['ward'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " ward = '$ward' ";
		}

		if(isset($_POST['address'])){
			$address = $_POST['address'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " address = '$address' ";
		}

		if(isset($_POST['qty'])){
			$qty = $_POST['qty'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " qty = '$qty' ";
		}

		if(isset($_POST['amount'])){
			$amount = $_POST['amount'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " amount = '$amount' ";
		}

		if(isset($_POST['message'])){
			$message = $_POST['message'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " message = '$message' ";
		}

		if(isset($_POST['created'])){
			$created = $_POST['created'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " created = '$created' ";
		}
		
        if(isset($_POST['modified'])){
			$modified = $_POST['modified'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " modified = '$modified' ";
		}

		if(isset($_POST['idShipper'])){
			$idShipper = $_POST['idShipper'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " idShipper = '$idShipper' ";
		}

		$query = $query . " WHERE id = '$idTransact' ";

		if (mysqli_query($connect, $query)) {
			echo "update_success";
		} else {
			echo "update_error";
		}
	}
}else echo "non_post";

?>