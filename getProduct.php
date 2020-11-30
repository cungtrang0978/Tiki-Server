<?php
require "dbCon.php";


$query = "SELECT * FROM product WHERE 1 ";

if(isset($_POST['idCatalog'])){
	$idCatalog = $_POST['idCatalog'];
	$query = "SELECT * FROM product WHERE idCatalog = '$idCatalog' ";
}

if(isset($_POST['idProduct'])){
	$idProduct = $_POST['idProduct'];
	$query = "SELECT * FROM product WHERE id = '$idProduct' ";

}

if(isset($_POST['name'])){
	$name = $_POST['name'];
	$query = "SELECT * FROM product WHERE name like '%$name%' ";
}

if(isset($_POST['views'])){
	$views = $_POST['views'];
	$query = "SELECT * FROM product WHERE views >= '$views' ";
}

if(isset($_POST['idParents'])){
	$idParents = $_POST['idParents'];
	$query = "SELECT product.* FROM product INNER JOIN catalog ON catalog.id = product.idCatalog, catalog_parents 
			WHERE catalog_parents.id = catalog.idParents and catalog_parents.id = '$idParents' ";
}
if(isset($_POST['status']) && $_POST['idUser']){
	$status = $_POST['status'];
	$id_user = $_POST['idUser'];
	$query = "SELECT product.* FROM transact INNER JOIN orders ON transact.id = orders.idTransact, product WHERE product.id = orders.idProduct and transact.status='$status' and transact.id_user = '$id_user' GROUP BY orders.idProduct ";
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

if(isset($_POST['priceFrom'])){
    $priceFrom = $_POST['priceFrom'];
    $query = $query . " AND (price - price*discount/100) >= $priceFrom "; 
    
}

if(isset($_POST['priceTo'])){
    $priceTo = $_POST['priceTo'];
    $query = $query . " AND (price - price*discount/100) <= $priceTo "; 
    
}

if(isset($_POST['rate'])){
    $rate = $_POST['rate'];
    $query = $query . " AND product.rate >= $rate "; 
    
}

if(isset($_POST['orderCreated'])){
    $orderCreated = $_POST['orderCreated'];
    
    if(isset($_POST['orderPrice'])){
        $orderPrice = $_POST['orderPrice'];
        $query = $query . " ORDER BY (price - price*discount/100) $orderPrice , id $orderCreated ";
    }else{
        $query = $query . " ORDER BY id $orderCreated ";
    }
}
else if(isset($_POST['orderPrice'])){
    $orderPrice = $_POST['orderPrice'];
    $query = $query . " ORDER BY (price - price*discount/100) $orderPrice ";
}


if(isset($_POST['limit']) && isset($_POST['start'])){
    $limit = $_POST['limit'];
    $start = $_POST['start'];
    $query = $query . " LIMIT $start, $limit ";
}

$data = mysqli_query($connect, $query);

class Product{
	function Product($id, $idCatalog, $name, $description, $price, $discount, $created, $views, $qty, $rate, $rateQty){
		$this->id = $id;
		$this->idCatalog = $idCatalog;
		$this->name = $name;
		$this->description = $description;
		$this->price = $price;
		$this->discount = $discount;
		$this->created = $created;
		$this->views = $views;
		$this->qty = $qty;
		$this->rate = $rate;
		$this->rateQty = $rateQty;
	}
}

$arrayProduct = array();

while($row = mysqli_fetch_assoc($data)){
	array_push($arrayProduct, new Product($row['id'], $row['idCatalog'],  $row['name'],  $row['description'],  $row['price'],  $row['discount'],  $row['created'],  $row['views'], $row['qty'], $row['rate'],  $row['rateQty'] ));
}

echo json_encode($arrayProduct);


?>