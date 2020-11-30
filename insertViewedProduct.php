<?php
	require "dbCon.php";

	class ViewedProduct{
		function ViewedProduct($idProduct, $idUser){
			$this->idProduct = $idProduct;
			$this->idUser = $idUser;
		}
	}


	if(isset($_POST['idProduct']) && isset($_POST['idUser']) ){
		$idUser = $_POST['idUser'];
		$idProduct = $_POST['idProduct'];

		$query_select = "SELECT COUNT(idProduct) as 'count' FROM viewed_product WHERE idProduct= '$idProduct' AND idUser = '$idUser'";
		if($data_select = mysqli_query($connect, $query_select)){
			$row = mysqli_fetch_assoc($data_select);
			if($row['count']==0){
				$query_insert_viewedProduct = "INSERT INTO viewed_product(idProduct, idUser) VALUES ('$idProduct', '$idUser')";
				if(mysqli_query($connect, $query_insert_viewedProduct)){
					echo "insert_success";
				} else echo "insert_fail";
			}else{
				echo "seen";
			}
		}
	}
	else {
		echo "non_value";
	}
?>