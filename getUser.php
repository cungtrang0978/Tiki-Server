<?php

require "dbCon.php";

class User{
	function User($id, $name, $phoneNumber, $email, $password, $sex, $province, $district, 
		$ward, $address, $imageUrl, $created, $birthdate, $roleId, $amount){
		$this->id = $id;
		$this->name = $name;
		$this->phoneNumber = $phoneNumber;
		$this->email = $email;
		$this->password = $password;
		$this->sex = $sex;
		$this->province = $province;
		$this->district = $district;
		$this->ward = $ward;
		$this->address = $address;
		$this->imageUrl = $imageUrl;
		$this->created = $created;
		$this->birthdate = $birthdate;
		$this->roleId = $roleId;
		$this->amount = $amount;

	}
}

if(isset($_POST['idUser'])){
	$id = $_POST['idUser'];
	$query = "SELECT * FROM user WHERE id = '$id'";
	if($data = mysqli_query($connect, $query)){
		if($row = mysqli_fetch_assoc($data)){
			$user = new User(
				$row['id'],
				$row['name'],
				$row['phoneNumber'], 
				$row['email'], 
				$row['password'], 
				$row['sex'], 
				$row['province'], 
				$row['district'], 
				$row['ward'], 
				$row['address'], 
				$row['imageUrl'], 
				$row['created'],
				$row['birthdate'],
				$row['roleId'],
				$row['amount']
			);
			echo json_encode($user);
		}
		else{
			echo "not_exist";
		}
	}else {
		echo "fail_connection";
	}
}
else{
	echo "none_post";
}

?>
