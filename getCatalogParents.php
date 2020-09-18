<?php
	require "dbCon.php";

	$query = "SELECT * FROM catalog_parents";

	if(isset($_POST['idGrand'])){
		$idGrand = $_POST['idGrand'];
		$query = "SELECT * FROM catalog_parents WHERE idCatalog_gr_parents = '$idGrand'";
	}

	$data = mysqli_query($connect, $query);

	class CatalogParents{
		function CatalogParents($id, $name, $idCatalog_gr_parents){
			$this->id = $id;
			$this->name = $name;
			$this->idCatalog_gr_parents = $idCatalog_gr_parents;
		}
	}
	$arrayParents =array();

	while ($row = mysqli_fetch_assoc($data)) {
		array_push($arrayParents, new CatalogParents(
			$row['id'],
			$row['name'],
			$row['idCatalog_gr_parents']));
	}

	echo json_encode($arrayParents);


?>