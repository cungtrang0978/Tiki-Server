<?php
require "dbCon.php";

$code_check_phone = "CHECK_PHONE";
$code_check_email = "CHECK_EMAIL";

if(isset($_POST['CODE_CHECK']) && isset($_POST['value'])){
	$_code = $_POST['CODE_CHECK'];
	$_value = $_POST['value'];
	if($_code === $code_check_phone){
		$query_checkUser = "SELECT id FROM user WHERE phoneNumber ='$_value'";
		if($data_checkUser = mysqli_query($connect, $query_checkUser)){
			$row = mysqli_fetch_assoc($data_checkUser);
			if(isset($row)){
				echo "exist";
			}
			else{
				echo "non_exist";
			}
		
		}
	}
	elseif ($_code === $code_check_email) {
		$query_checkUser = "SELECT id FROM user WHERE email ='$_value'";
		if($data_checkUser = mysqli_query($connect, $query_checkUser)){
			$row = mysqli_fetch_assoc($data_checkUser);
			if(isset($row)){
				echo "exist";
			}
			else{
				echo "non_exist";
			}
		}
		
	}
}

?>