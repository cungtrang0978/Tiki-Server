<?php
require "dbCon.php";

class Transact{
	// function Transact($qty, $amount){
	// 	// $this->status = $status;
	// 	$this->qty = $qty;
	// 	$this->amount = $amount;
	// }

	function Transact($id, $status, $id_user, $user_name, $user_phone, $province, $district, $ward, $address, $qty, $amount, $message, $created, $modified)
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
	}

}

$query_get = "SELECT * FROM transact ";

if(isset($_POST['idTransact'])){
	$idTransact = $_POST['idTransact'];

	$query_get = "SELECT * FROM transact WHERE id = '$idTransact'";	
}else if(isset($_POST['id_user'])){
	$query_get = $query_get . " WHERE ";
	$first = 0;
	if(isset($_POST['status'])){
		$status = $_POST['status'];
		if($first==0){
			$first=1;
		}else {
			$query_get = $query_get . " and ";
		}
		$query_get = $query_get . " status = '$status'";
	}
	if(isset($_POST['id_user'])){
		$id_user = $_POST['id_user'];
		if($first==0){
			$first=1;
		}else {
			$query_get = $query_get . " and ";
		}
		$query_get = $query_get . " id_user = '$id_user'";
	}
}

$query_get = $query_get . " ORDER BY id DESC";

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
			$row['modified']
		));
	}
	echo json_encode($arrayTransact);
}else echo "wrong_query";


?>