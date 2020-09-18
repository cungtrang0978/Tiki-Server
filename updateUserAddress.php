<?php
require "dbCon.php";

if(isset($_POST['id'])){
	$query = "UPDATE user SET ";
	$check_indexFirst = 0;

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

	$id = $_POST['id'];
		$query = $query . " WHERE id = '$id' ";

		if (mysqli_query($connect, $query)) {
			echo "update_success";
		} else {
			echo "update_error";
		}

}




?>