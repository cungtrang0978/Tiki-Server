<?php
require "dbCon.php";

if(isset($_POST['idUser'])){
	$idUser = $_POST['idUser'];
	$query = "INSERT INTO transact (id_user) VALUES ('$idUser')";
	if(mysqli_query($connect, $query)){
		// $query_getId = "SELECT id FROM transact WHERE id_user = '$idUser' and status = 0 ORDER BY id DESC LIMIT 1";
		// $data_getId = mysqli_query($connect, $query_getId);
		// $row = mysqli_fetch_assoc($data_getId);
		echo "insert_success";
	} else echo "insert_fail";
} else echo "non_idUser";

?>