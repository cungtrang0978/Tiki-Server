<?php
	require "dbCon.php";

	if(isset($_POST['searchKey']) && isset($_POST['idUser']) ){
		$idUser = $_POST['idUser'];
		$searchKey = $_POST['searchKey'];

		$query_select = "SELECT id, COUNT(id) as 'count' FROM searches WHERE searchKey like '$searchKey' AND idUser = '$idUser'";
		if($data_select = mysqli_query($connect, $query_select)){
			$row = mysqli_fetch_assoc($data_select);
			if($row['count']!=0){
			    $id = $row['id'];
                $query_delete = "DELETE FROM searches WHERE id = $id";
			    if($data_delete = mysqli_query($connect, $query_delete)){
			       
			    }
			}
			$query_insert_searchKey = "INSERT INTO searches(idUser, searchKey) VALUES ('$idUser', '$searchKey')";
		    if(mysqli_query($connect, $query_insert_searchKey)){
			    	echo "insert_success";
			} else echo "insert_fail";
		}
	}
	else {
		echo "non_value";
	}
?>