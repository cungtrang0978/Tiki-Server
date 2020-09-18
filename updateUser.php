<?php

require "dbCon.php";

if(isset($_POST['id'])){
	$check_email =0;

	if(isset($_POST['email'])){
		$_email = $_POST['email'];
		$query_checkEmail = "SELECT id FROM user WHERE email like '$_email'";
		if($data_checkEmail = mysqli_query($connect, $query_checkEmail)){
			$row_email = mysqli_fetch_assoc($data_checkEmail);
			if(isset($row_email)){
				echo "exist_email";
				$check_email ++;
			}

		}
	}
	if($check_email==0){
		$query = "UPDATE user SET ";
		$check_indexFirst = 0;
		if(isset($_POST['name'])){
			$name = $_POST['name'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
		//if not first, insert ','
				$query = $query . ",";
			}
			$query = $query . " name = '$name' ";
		}

		if(isset($_POST['sex'])){
			$sex = $_POST['sex'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
				$query = $query . ",";
			}
			$query = $query . " sex = '$sex' ";
		}

		if(isset($_POST['email'])){
			$email = $_POST['email'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
				$query = $query . ",";
			}
			$query = $query . " email = '$email' ";
		}

		if(isset($_POST['birthdate'])){
			$birthdate = $_POST['birthdate'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
				$query = $query . ",";
			}
			$query = $query . " birthdate = '$birthdate' ";
		}

		if(isset($_POST['created'])){
			$created = $_POST['created'];
			if($check_indexFirst==0){
				$check_indexFirst =1;
			}else{
				$query = $query . ",";
			}
			$query = $query . " created = '$created' ";
		}

		$id = $_POST['id'];
		$query = $query . " WHERE id = '$id' ";

		if (mysqli_query($connect, $query)) {
			echo "update_success";
		} else {
			echo "update_error";
		}
	}
	
}


?>