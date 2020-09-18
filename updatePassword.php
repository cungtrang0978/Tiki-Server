<?php
require "dbCon.php";

if(isset($_POST['id']) && isset($_POST['newPassword']) && isset($_POST['oldPassword'])){
	$id= $_POST['id'];
	$newPassword= $_POST['newPassword'];
	$oldPassword= $_POST['oldPassword'];

	$query_get = "SELECT password FROM user WHERE id = '$id'";
	if($data_get = mysqli_query($connect, $query_get)){
		$row = mysqli_fetch_assoc($data_get);
		if($row['password']===$oldPassword){
			$query_update = "UPDATE user SET password = '$newPassword' WHERE id = '$id'";
			if($data_update = mysqli_query($connect, $query_update)){
				echo "update_success";
			}else echo "update_fail";
		}else echo "wrong_password";
	}
}else echo "non_post";


?>