<?php
require "dbCon.php";


$query = "SELECT * FROM product ORDER BY product.id DESC";

if(isset($_POST['idCatalog'])){
	$idCatalog = $_POST['idCatalog'];
	$query = "SELECT * FROM product WHERE idCatalog = '$idCatalog' ORDER BY product.id DESC";
}

if(isset($_POST['idProduct'])){
	$idProduct = $_POST['idProduct'];
	$query = "SELECT * FROM product WHERE id = '$idProduct' ORDER BY product.id DESC";

}

if(isset($_POST['name'])){
	$name = $_POST['name'];
	$query = "SELECT * FROM product WHERE name like '%$name%' ORDER BY product.id DESC";
}

if(isset($_POST['views'])){
	$views = $_POST['views'];
	$query = "SELECT * FROM product WHERE views >= '$views' ORDER BY product.id DESC";
}

if(isset($_POST['idParents'])){
	$idParents = $_POST['idParents'];
	$query = "SELECT product.* FROM product INNER JOIN catalog ON catalog.id = product.idCatalog, catalog_parents 
			WHERE catalog_parents.id = catalog.idParents and catalog_parents.id = '$idParents' ORDER BY product.id DESC";
}
if(isset($_POST['status']) && $_POST['idUser']){
	$status = $_POST['status'];
	$id_user = $_POST['idUser'];
	$query = "SELECT product.* FROM transact INNER JOIN orders ON transact.id = orders.idTransact, product WHERE product.id = orders.idProduct and transact.status='$status' and transact.id_user = '$id_user' GROUP BY orders.idProduct";
}

if(isset($_POST['idArray'])){
	$idArray = array();
	$idArray = json_decode($_POST['idArray']);
	// $idArray = $_POST['idArray'];

	$first = 0;

	$query = "SELECT * FROM product WHERE ";
	foreach ($idArray as $value ) {
		if($first==0){
			$first =1;
		}else{
			//if not first, insert ','
			$query = $query . "OR";
		}

		$query = $query . " id = '$value' "; 
	}
}

$data = mysqli_query($connect, $query);

class Product{
	function Product($id, $idCatalog, $name, $description, $price, $discount, $created, $views, $qty){
		$this->id = $id;
		$this->idCatalog = $idCatalog;
		$this->name = $name;
		$this->description = $description;
		$this->price = $price;
		$this->discount = $discount;
		$this->created = $created;
		$this->views = $views;
		$this->qty = $qty;
	}
}

$arrayProduct = array();

while($row = mysqli_fetch_assoc($data)){
	array_push($arrayProduct, new Product($row['id'], $row['idCatalog'],  $row['name'],  $row['description'],  $row['price'],  $row['discount'],  $row['created'],  $row['views'], $row['qty']));
}

echo json_encode($arrayProduct);


?>