<?php 
require "dbCon.php";

class Orders{
	function Orders($id, $idTransact, $idProduct, $qty, $amount, $name, $price, $discount, $imageUrl){
		$this->id = $id;
		$this->idTransact = $idTransact;
		$this->idProduct = $idProduct;
		$this->qty = $qty;
		$this->amount = $amount;
		$this->name = $name;
		$this->price = $price;
		$this->discount = $discount;
		$this->imageUrl = $imageUrl;
	}
}

if(isset($_POST['idTransact'])){
	$idTransact = $_POST['idTransact'];
	$query_select = "SELECT orders.*, product.name, product.price, product.discount, image_product.imageUrl
					FROM `orders` 
						JOIN  (SELECT product.id, product.name, product.price, product.discount FROM product) as product ON product.id = orders.idProduct 
						JOIN image_product on  image_product.idProduct = product.id
					WHERE orders.idTransact = $idTransact
					GROUP BY product.id
					ORDER BY `orders`.`idProduct` DESC";
	
	if($data = mysqli_query($connect, $query_select)){
		$arrayOrder = array();
		while ($row  = mysqli_fetch_assoc($data)) {
			array_push($arrayOrder, new Orders(
					$row['id'],
					$row['idTransact'],
					$row['idProduct'],
					$row['qty'],
					$row['amount'],
					$row['name'],
					$row['price'],
					$row['discount'],
					$row['imageUrl']
				));
		}
		echo json_encode($arrayOrder);
	}  else echo "wrong_query";
}else echo "non_post";

?>