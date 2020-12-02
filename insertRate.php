<?php
require "dbCon.php";

if(isset($_POST['idUser']) && isset($_POST['idProduct']) && isset($_POST['ratePoint']) && isset($_POST['comment']) 
    && isset($_POST['createdAt'])){
        
	$idUser = $_POST['idUser'];
	$idProduct = $_POST['idProduct'];
	$ratePoint = $_POST['ratePoint'];
	$comment = $_POST['comment'];
	$createdAt = $_POST['createdAt'];

	$query_insert_rate = "INSERT INTO `rate`(`idUser`, `idProduct`, `ratePoint`, `comment`, `createdAt`) VALUES ('$idUser', '$idProduct', '$ratePoint', '$comment', '$createdAt')";
	$query_get = "SELECT SUM(ratePoint) AS 'SUM', COUNT(*) AS 'COUNT' FROM rate 
	            WHERE rate.idProduct = $idProduct";
	
	if(mysqli_query($connect, $query_insert_rate)){
		
		if($data_get = mysqli_query($connect, $query_get)){
			$row_get = mysqli_fetch_assoc($data_get);
			if(isset($row_get)){
				$sum = $row_get['SUM'];
				$count = $row_get['COUNT'];
				$everage = round($sum/$count, 2);
				
				$query_update = "UPDATE product SET product.rate = '$everage', product.rateQty = $count WHERE product.id = $idProduct";
				if ($data_update = mysqli_query($connect, $query_update)){
					echo "insert_success";
				}else echo "update_fail";
			}else echo "non_value";
		}else echo "wrong_query";
	} else echo "insert_fail";
}else{
	echo "non_value";
}
?>