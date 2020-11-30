<?php 
require "dbCon.php";

if(isset($_POST['idUser'])){
	$idUser = $_POST['idUser'];
	$query_select = "SELECT searchKey FROM searches WHERE idUser = '$idUser' ORDER bY id DESC limit 10";
	
	if($data = mysqli_query($connect, $query_select)){
		$arraySearchKeys = array();
		while ($row  = mysqli_fetch_assoc($data)) {
			array_push($arraySearchKeys, $row['searchKey']);
		}
		echo json_encode($arraySearchKeys);
	}  else echo "wrong_query";
}else echo "non_post";

?>