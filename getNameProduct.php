<?php

require "dbCon.php";

class Product{
	function Product($id, $name){
		$this->id = $id;
		$this->name = $name;
	}
}

$query = "SELECT id, name FROM product";

$data = mysqli_query($connect, $query);

$arrayProduct = array();

while($row = mysqli_fetch_assoc($data)){
	array_push($arrayProduct, new Product($row['id'], $row['name']));
}

echo json_encode($arrayProduct);

?>