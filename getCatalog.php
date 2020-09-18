<?php

require "dbCon.php";


$query = "SELECT * FROM catalog";

if(isset($_POST['idParents'])){
	$idParents = $_POST['idParents'];
	$query = "SELECT * FROM catalog WHERE idParents = '$idParents'";
}


if(isset($_POST['views'])){
	$views = $_POST['views'];
	$query = "SELECT catalog.*
		FROM catalog INNER JOIN product ON product.idCatalog = catalog.id
		GROUP BY catalog.name
		HAVING SUM(product.views)>'$views'";
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