<?php
	require "dbCon.php";

	$query = "SELECT * FROM catalog_gr_parents";

	if(isset($_POST['idGrand'])){
		$id = $_POST['idGrand'];
		$query = "SELECT * FROM catalog_gr_parents WHERE id = '$id'";
	}
	$data = mysqli_query($connect, $query);

	class CatalogGrParent{
		function CatalogGrParent($id, $name, $imageUrl){
			$this->id = $id;
			$this->name = $name;
			$this->imageUrl = $imageUrl;
		}
	}

	$arrayGrand = array();
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($arrayGrand, new CatalogGrParent($row['id'],
													$row['name'],
													$row['imageUrl']));
	}

	echo json_encode($arrayGrand);
?>