<?php
	require "dbCon.php";

	$code_upd_views = "UPDATE_VIEWS_PRODUCT";
	$code_upd_product = "UPDATE_PRODUCT";

	if (isset($_POST['CODE'])) {
		$_CODE = $_POST['CODE'];
		if ($_CODE === $code_upd_product) {
			$indexFirst = 0;

			$query = "UPDATE product SET ";

			if (isset($_POST['idCatalog'])) {
				$idCatalog = $_POST['idCatalog'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . " idCatalog = '$idCatalog' ";
				} else {
					$query = $query . ", idCatalog = '$idCatalog' ";
				}
			}

			if (isset($_POST['name'])) {
				$name = $_POST['name'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . "  name = '$name' ";
				} else {
					$query = $query . ", name = '$name' ";
				}
			}

			if (isset($_POST['description'])) {
				$description = $_POST['description'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . " description = '$description' ";
				} else {
					$query = $query . ", description = '$description' ";
				}
			}

			if (isset($_POST['price'])) {
				$price = $_POST['price'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . " price = '$price' ";
				} else {
					$query = $query . ", price = '$price' ";
				}
			}

			if (isset($_POST['created'])) {
				$created = $_POST['created'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . " created = '$created' ";
				} else {
					$query = $query . ", created = '$created' ";
				}
			}

			if (isset($_POST['views'])) {
				$views = $_POST['views'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . " views = '$views' ";
				} else {
					$query = $query . ", views = '$views' ";
				}
			}

			if (isset($_POST['qty'])) {
				$qty = $_POST['qty'];
				if ($indexFirst == 0) {
					$indexFirst = 1;
					$query = $query . " qty = '$qty' ";
				} else {
					$query = $query . ", qty = '$qty' ";
				}
			}

			if (isset($_POST['id'])) {
				$id = $_POST['id'];
				$query = $query . " WHERE id = '$id' ";
			}

			if (mysqli_query($connect, $query)) {
				echo "update_success";
			} else {
				echo "update_fail";
			}
		}
		else if($_CODE == $code_upd_views && isset($_POST['id'])){

			$id = $_POST['id'];
			$query2 = "SELECT views FROM product WHERE id = '$id'";
			$data = mysqli_query($connect, $query2);
			$row = mysqli_fetch_assoc($data);
			$views = $row['views'];
			$views += 1;
		
			$query3 = "UPDATE product SET views = '$views' WHERE id = '$id'";

			if (mysqli_query($connect, $query3)) {
				echo "Update views success";
			} else {
				echo "Update views error";
			}
		}		
	}


?>