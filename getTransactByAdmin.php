<?php
require "dbCon.php";

class Transact{
	// function Transact($qty, $amount){
	// 	// $this->status = $status;
	// 	$this->qty = $qty;
	// 	$this->amount = $amount;
	// }

	function Transact($id, $status, $id_user, $user_name, $user_phone, $province, $district,
		 $ward, $address, $qty, $amount, $message, $created, $modified, $shippingFee)
	{	
		$this->id = $id;
		$this->status = $status;
		$this->id_user = $id_user;
		$this->user_name = $user_name;
		$this->user_phone = $user_phone;
		$this->province = $province;
		$this->district = $district;
		$this->ward = $ward;
		$this->address = $address;
		$this->qty = $qty;
		$this->amount = $amount;
		$this->message = $message;
		$this->created = $created;
		$this->modified = $modified;
		$this->shippingFee = $shippingFee;
	}

}

$query_get = "SELECT * FROM transact ";

if(isset($_POST['status'])){
	$status = $_POST['status'];

	$query_get = "SELECT transact.*
		FROM transact 
		WHERE status= $status ";

	if($status==1){
		$query_get = $query_get . "ORDER BY `transact`.`modified` ASC, `transact`.`created` ASC ";
	}else{
		$query_get = $query_get . "ORDER BY `transact`.`modified` DESC, `transact`.`created` DESC ";
	}

	if(isset($_POST['start']) && isset($_POST['limit'])){
		$start = $_POST['start'];
		$limit = $_POST['limit'];

		$query_get = $query_get . " LIMIT $start, $limit";
	}
}

if($data_get = mysqli_query($connect, $query_get)){
	$arrayTransact = array();
	while ($row = mysqli_fetch_assoc($data_get)){
		array_push($arrayTransact, new Transact(
			$row['id'],
			$row['status'], 
			$row['id_user'], 
			$row['user_name'], 
			$row['user_phone'], 
			$row['province'], 
			$row['district'], 
			$row['ward'], 
			$row['address'], 
			$row['qty'], 
			$row['amount'], 
			$row['message'],
			$row['created'],
			$row['modified'],
			$row['shippingFee']
		));
	}
	echo json_encode($arrayTransact);
}else echo "wrong_query";
?>