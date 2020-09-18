<?php
	require "dbCon.php";

	if(isset($_POST['idUser'])){
		$idUser = $_POST['idUser'];
		if ($idUser != 0){
			$query_check = "SELECT id FROM transact WHERE id_user = '$idUser' and status = 0 ORDER BY id ASC LIMIT 1";
			if($data = mysqli_query($connect, $query_check)){
				$row = mysqli_fetch_assoc($data);
				if(isset($row)){
					echo $row['id'];
				}else echo "non_exist";
			}else echo "wrong_query";
		}else{
			echo "non_account";
		}
	}else{
		echo "non_idUser";
	}
?>