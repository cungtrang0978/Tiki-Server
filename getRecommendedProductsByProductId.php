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

	if(isset($_POST['idProduct'])){
		$idProduct = $_POST['idProduct'];

		$query = "SELECT product.*, image_product.imageUrl FROM `product` JOIN catalog on product.idCatalog = catalog.id 
					JOIN image_product ON product.id = image_product.idProduct
					WHERE product.id != $idProduct AND product.idCatalog = (SELECT product.idCatalog FROM product WHERE id = $idProduct)
					GROUP BY product.id
					ORDER by product.id DESC
					LIMIT 5";

		// $arrayIdCatalog = array();
		$dataIdCatalogs = mysqli_query($connect, $query);

		$arrayProducts = array();

		while ($row = mysqli_fetch_assoc($dataIdCatalogs)){
			array_push($arrayProducts, new Product($row['id'], $row['idCatalog'], $row['name'], $row['price'], $row['discount'], $row['qty'], $row['imageUrl'], $row['rate'], $row['rateQty']));
		}
		echo json_encode($arrayProducts);
	}
	else {
		echo "non_value";
	}
?>