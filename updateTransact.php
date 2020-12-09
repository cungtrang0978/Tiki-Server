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

		$success_transact= false;
		if(isset($_POST['status'])){
			$status = $_POST['status'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " status = '$status' ";

			if($status==4){
				$success_transact = true;
			}
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
			if($success_transact==true){

				//get transact by transact's Id
				$query_get_transact = "SELECT transact.* FROM transact WHERE transact.id = $idTransact";
				if($data_get_transact = mysql_query($connect, $query_get_transact)){
					$row_get_transact = mysqli_fetch_assoc($data_get_transact);
					if(isset($row_get_transact)){
						$amount = $row_get_transact['amount'];
						$shippingFee = $row_get_transact['shippingFee'];
						$idUser = $row_get_transact['id_user'];
						$idShipper = $row_get_transact['idShipper'];


						//get admin's id then update admin
						$query_get_idAdmin = "SELECT user.id FROM user WHERE user.roleId = 0";
						if($data_get_idAdmin = mysql_query($connect, $query_get_idAdmin)){
							$row_get_idAdmin = mysqli_fetch_assoc($data_get_idAdmin);
							if(isset($row_get_idAdmin)){
								$idAdmin = $row_1['id'];

								//update admin
								$query_update_admin = "UPDATE user SET user.amount  =  user.amount + $amount WHERE user.id = $idAdmin";
								if(mysqli_query($connect, $query_update_admin)){

									//update minus account of user
									$query_update_user = "UPDATE user SET user.amount  =  user.amount - ($amount+ $shippingFee) WHERE user.id = $idUser";
									if(mysqli_query($connect, $query_update_user)){

										//update account shipper
										$query_update_shipper = "UPDATE user SET user.amount  =  user.amount + $shippingFee WHERE user.id = $idShipper";
										if(mysqli_query($connect, $query_update_shipper)){
											echo "update_success";
										}else{
											echo "update_shipper_fail";
										}
									}else{
										echo "update_user_fail";
									}
								}else{
									echo "update_admin_fail";
								}
							}else{
								echo "cant get admin's Id ";
							}
						}else{
							echo "cant get admin's Id ";
						}
					}else{
						echo "cant get transact";
					}
				}else{
					echo "cant get transact";
				}
			}else{
				echo "update_success";
			}
		} else {
			echo "update_error";
		}
	}
}else echo "non_post";

?>