<?php

require "dbCon.php";


$query = "SELECT * FROM catalog";

if(isset($_POST['idParents'])){
	$idParents = $_POST['idParents'];
	$query = "SELECT * FROM catalog WHERE idParents = '$idParents'";
}


if(isset($_POST['sold'])){
	$sold = $_POST['sold'];
	$query = "SELECT catalog.*
			FROM transact INNER JOIN orders ON transact.id = orders.idTransact 
				JOIN product ON product.id = orders.idProduct 
    			JOIN catalog ON catalog.id = product.idCatalog 
			WHERE  transact.status= 4 
			GROUP BY catalog.id 
			HAVING COUNT(catalog.id)>= $sold
			ORDER BY COUNT(catalog.id) DESC ";
}

$data = mysqli_query($connect, $query);

class Catalog{
	function Catalog($id, $name, $idParents, $imageUrl){
		$this->id= $id;
		$this->name = $name;
		$this->idParents = $idParents;
		$this->imageUrl = $imageUrl;
	}
}

$arrayCatalog = array();
while ($row = mysqli_fetch_assoc($data)){
	array_push($arrayCatalog, new Catalog($row['id'], $row['name'], $row['idParents'], $row['imageUrl']));

}

echo json_encode($arrayCatalog);
?>