<?php
require "dbCon.php";
if(isset($_POST['username']) && isset($_POST['password'])){

	$_username = $_POST['username'];
	$_password = $_POST['password'];
	$query = "SELECT id FROM user WHERE phoneNumber like '$_username' or email like '$_username'";
	if ($data = mysqli_query($connect, $query)) {
				// $fieldcount=mysqli_num_fields($data);
		$row = mysqli_fetch_assoc($data);
		if(isset($row)){
			$query2 = "SELECT id FROM user WHERE (phoneNumber = '$_username' OR email = '$_username') AND password = '$_password'";
			if($data2 = mysqli_query($connect, $query2)){
				$row2 = mysqli_fetch_assoc($data2);
				if(isset($row2)){
					echo $row2['id'];	
				}
				else{
					echo "wrong password";
				}
			}
		}
		else{
			echo "not exist";
		}	
	} else {
		echo "fail connection";
	}	
}

?>
