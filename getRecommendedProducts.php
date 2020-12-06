<?php
	require "dbCon.php";


class Product{
	function Product($id, $idCatalog, $name, $price, $discount, $qty, $imageUrl, $sold,  $rate, $rateQty){
		$this->id = $id;
		$this->idCatalog = $idCatalog;
		$this->name = $name;
		$this->price = $price;
		$this->discount = $discount;
		$this->qty = $qty;
		$this->imageUrl = $imageUrl;
		$this->sold = $sold;		
		$this->rate = $rate;		
		$this->rateQty = $rateQty;		
	}
}

	if(isset($_POST['idUser'])){
		$idUser = $_POST['idUser'];


		$query_getTopThreeCatalog = "SELECT catalog.id, catalog.name, COUNT(catalog.id) as count 
			FROM `viewed_product` JOIN product ON product.id = viewed_product.idProduct JOIN catalog ON catalog.id = product.idCatalog
			WHERE viewed_product.idUser = $idUser
			GROUP BY catalog.id 
			ORDER by count DESC
			LIMIT 3";

		// $arrayIdCatalog = array();
		$dataIdCatalogs = mysqli_query($connect, $query_getTopThreeCatalog);

		$index = 0;
		$arrayProducts = array();

		while ($row = mysqli_fetch_assoc($dataIdCatalogs)){
			// array_push($arrayIdCatalog, new Product($row['id'], $row['idCatalog'], $row['name'], $row['price'], $row['discount'], $row['qty'], $row['imageUrl']));
			$idCatalog = $row['id'];
			if($index==0){
				$limit = 10;
			}
			else if($index==1){
				$limit = 6;
			}else if($index==2){
				$limit = 4;
			}

			$query_getProducts = "SELECT product.id, product.idCatalog, product.name,
			 product.price, product.discount, product.qty, product.rate, product.rateQty, sum(orders.qty) as sold, ip.imageUrl
				FROM product JOIN orders ON orders.idProduct = product.id 
					JOIN transact ON transact.id = orders.idTransact 
					JOIN (SELECT image_product.* FROM image_product GROUP BY image_product.idProduct) AS ip ON product.id = ip.idProduct
				WHERE transact.status = 4 && product.idCatalog = $idCatalog
				GROUP BY product.id
				ORDER by sold DESC
				LIMIT $limit";

			$dataProducts = mysqli_query($connect, $query_getProducts);

			while ($rowProducts = mysqli_fetch_assoc($dataProducts)) {
				array_push($arrayProducts, new Product($rowProducts['id'], $rowProducts['idCatalog'], $rowProducts['name'], $rowProducts['price'], $rowProducts['discount'], $rowProducts['qty'], $rowProducts['imageUrl'], $rowProducts['sold'], $rowProducts['rate'], $rowProducts['rateQty']));
			}
			$index = $index +1;
		}

		if(sizeof($arrayProducts)==0){
			$query_getProducts = "SELECT product.id, product.idCatalog, product.name, 
			product.price, product.discount, product.qty, product.rate, product.rateQty, sum(orders.qty) as sold, ip.imageUrl
								FROM product JOIN orders ON product.id = orders.idProduct 
									JOIN transact ON transact.id = orders.idTransact 
									JOIN (SELECT image_product.* FROM image_product GROUP by image_product.idProduct) as ip on ip.idProduct = product.id
								WHERE transact.status=4
								GROUP by product.id
								ORDER by sold DESC
								LIMIT 20";

			$dataProducts = mysqli_query($connect, $query_getProducts);

			while ($rowProducts = mysqli_fetch_assoc($dataProducts)) {
				array_push($arrayProducts, new Product($rowProducts['id'], $rowProducts['idCatalog'], $rowProducts['name'], $rowProducts['price'], $rowProducts['discount'], $rowProducts['qty'], $rowProducts['imageUrl'], $rowProducts['sold'], $rowProducts['rate'], $rowProducts['rateQty']));
			}
		}
		echo json_encode($arrayProducts);
	}
	else {
		echo "non_value";
	}
?>