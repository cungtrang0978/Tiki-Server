<?php
require "dbCon.php";

if(isset($_POST['name']) && isset($_POST['phoneNumber']) && isset($_POST['password'])){
	$name = $_POST['name'];
	$phoneNumber = $_POST['phoneNumber'];
	$password = $_POST['password'];

	$b_check = 0;

	$query_checkPhone = "SELECT id FROM user WHERE phoneNumber like '$phoneNumber'";
	if($data_checkPhone = mysqli_query($connect, $query_checkPhone)) {
		$row_phone = mysqli_fetch_assoc($data_checkPhone);
	  	if(isset($row_phone)){
	  		echo "exist_phone";		
			$b_check ++;
	  	}

	}

	if(isset($_POST['email'])){
		$_email = $_POST['email'];
		$query_checkEmail = "SELECT id FROM user WHERE email like '$_email'";
		if($data_checkEmail = mysqli_query($connect, $query_checkEmail)){
			$row_email = mysqli_fetch_assoc($data_checkEmail);
		  	if(isset($row_email)){
		  		echo "exist_email";
				$b_check ++;
		  	}
		  	
		}
	}


	if($b_check==0){
		$query = "INSERT INTO user (name, phoneNumber, password) VALUES
		('$name', '$phoneNumber', '$password')";

		if(mysqli_query($connect, $query)){
			$query_getId = "SELECT id FROM user WHERE phoneNumber like '$phoneNumber'";
			$data = mysqli_query($connect, $query_getId);
			$row = mysqli_fetch_assoc($data);
			$id = $row['id'];

			$result = "success";
			if(isset($_POST['email'])){
				$email = $_POST['email'];
				$query_update = "UPDATE user SET email = '$email' WHERE id = '$id'";
				mysqli_query($connect, $query_update);
				
			}

			if (isset($_POST['birthdate'])){
				$date = $_POST['birthdate'];
				$query_update = "UPDATE user SET birthdate = '$date' WHERE id = '$id'";
				mysqli_query($connect, $query_update);

			}

			if(isset($_POST['sex'])){
				$sex = $_POST['sex'];
				$query_update = "UPDATE user SET sex = '$sex' WHERE id = '$id'";
				mysqli_query($connect, $query_update);
			}
			if(isset($_POST['created'])){
				$created = $_POST['created'];
				$query_update = "UPDATE user SET created = '$created' WHERE id = '$id'";
				mysqli_query($connect, $query_update);
			}

			echo $result;
		}
		else{
			echo "error";
		}
	}
	
}

?>