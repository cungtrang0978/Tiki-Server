<?php
	require "dbCon.php";


class Product{
	function Product($id, $idCatalog, $name, $price, $discount, $qty, $imageUrl,  $rate, $rateQty){
		$this->id = $id;
		$this->idCatalog = $idCatalog;
		$this->name = $name;
		$this->price = $price;
		$this->discount = $discount;
		$this->qty = $qty;
		$this->imageUrl = $imageUrl;		
		$this->rate = $rate;		
		$this->rateQty = $rateQty;		
	}
}


	if(isset($_POST['idUser'])){
		$idUser = $_POST['idUser'];

		$query_select = "SELECT product.*, image_product.imageUrl 
		FROM viewed_product join product on viewed_product.idProduct = product.id join image_product on image_product.idProduct = product.id 
		WHERE viewed_product.idUser = '$idUser'  
		GROUP by product.id 
		ORDER BY viewed_product.id desc ";

		if(isset($_POST['limit'])){
			$limit = (int)$_POST['limit'];
			$query_select = $query_select." limit $limit ";
		}

		$arrayProduct = array();
		$data = mysqli_query($connect, $query_select);

		while ($rowProducts = mysqli_fetch_assoc($data)){
			array_push($arrayProduct, new Product($rowProducts['id'], $rowProducts['idCatalog'], $rowProducts['name'], $rowProducts['price'], $rowProducts['discount'], $rowProducts['qty'], $rowProducts['imageUrl'], $rowProducts['rate'], $rowProducts['rateQty']));
		}

		echo json_encode($arrayProduct);
	}
	else {
		echo "non_value";
	}
?>