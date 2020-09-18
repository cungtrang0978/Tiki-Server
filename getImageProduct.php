<?php
	require "dbCon.php";
	$query = "SELECT * FROM image_product";
	if(isset($_POST['idProduct'])){
		$idProduct = $_POST['idProduct'];
		$query = "SELECT * FROM image_product WHERE idProduct = '$idProduct'";
	}

	$data = mysqli_query($connect, $query);

	class ImageProduct{
		function ImageProduct($id, $idProduct, $imageUrl){
			$this->id = $id;
			$this->idProduct = $idProduct;
			$this->imageUrl = $imageUrl;
		}
	}

	$arrayImage = array();

	while ($row = mysqli_fetch_assoc($data)) {
		array_push($arrayImage, new ImageProduct($row['id'],
												$row['idProduct'],
												$row['imageUrl']));
	}

	echo json_encode($arrayImage);

?>