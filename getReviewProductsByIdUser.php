<?php
	require "dbCon.php";

class Product{

	function Product($id, $name, $price, $discount,  $imageUrl){
		$this->id = $id;
		$this->name = $name;
		$this->price = $price;
		$this->discount = $discount;
		$this->imageUrl = $imageUrl;
	}
}

class Rate{
    function Rate($id, $ratePoint, $comment, $createdAt, $modifiedAt, $idProduct, $productName, $price, $discount, $imageProductUrl, $idUser, $userFullName){
        $this->id = $id;
		$this->ratePoint = $ratePoint;
		$this->comment = $comment;
		$this->createdAt = $createdAt;
		$this->modifiedAt = $modifiedAt;
		$this->idProduct = $idProduct;
		$this->productName = $productName;
		$this->price = $price;
		$this->discount = $discount;
		$this->imageProductUrl = $imageProductUrl;
		$this->idUser = $idUser;
		$this->userFullName = $userFullName;
		
    }
}

	if(isset($_POST['idUser']) && isset($_POST['status'])){
		$idUser = $_POST['idUser'];
		$status = $_POST['status']; // 1: waitingreviews; 2: reviewed

		$query = "";
		if($status==1){
			$query = "SELECT product.id, product.name, product.price, product.discount, ip.imageUrl
				FROM transact 
					JOIN orders ON transact.id = orders.idTransact 
					JOIN product ON product.id = orders.idProduct 
    				JOIN (SELECT image_product.* FROM image_product GROUP by image_product.idProduct) as ip on ip.idProduct = product.id
				WHERE transact.status=4 and transact.id_user = $idUser AND product.id NOT IN (
					SELECT product.id FROM transact 
						JOIN orders ON transact.id = orders.idTransact 
						JOIN product ON product.id = orders.idProduct 
    					JOIN rate on rate.idProduct = product.id
    				WHERE transact.status=4 and transact.id_user = $idUser and rate.idUser = $idUser
    				GROUP by orders.idProduct
				)
				GROUP BY orders.idProduct";
		}else if($status ==2){
			$query = "SELECT rate.id, rate.ratePoint, rate.comment, rate.createdAt, rate.modifiedAt, product.id as idProduct, product.name as productName, product.price, product.discount, ip.imageUrl as imageProductUrl, user.id as idUser, 		user.name as userFullName
FROM transact 
	JOIN orders ON transact.id = orders.idTransact 
	JOIN (SELECT product.id, product.name, product.price, product.discount from product) as product ON product.id = orders.idProduct 
	JOIN rate on rate.idProduct = product.id
	JOIN (SELECT image_product.* FROM image_product GROUP by image_product.idProduct) as ip on ip.idProduct = product.id
    JOIN (SELECT user.id, user.name FROM user) as user ON user.id = rate.idUser
WHERE transact.status=4 and transact.id_user = $idUser and rate.idUser= $idUser
GROUP by product.id";
		}


		// $arrayIdCatalog = array();
		$data = mysqli_query($connect, $query);

		$array = array();

        if($status ==1){
            while ($row = mysqli_fetch_assoc($data)){
			    array_push($array, new Product($row['id'], $row['name'],     $row['price'], $row['discount'], $row['imageUrl']));
		    }
        }else if($status ==2){
            while ($row = mysqli_fetch_assoc($data)){
			    array_push($array, 
			    new Rate($row['id'], 
			    $row['ratePoint'],     
			    $row['comment'], 
			    $row['createdAt'], 
			    $row['modifiedAt'],
			    $row['idProduct'],
			    $row['productName'],
			    $row['price'],
			    $row['discount'],
			    $row['imageProductUrl'],
			    $row['idUser'],
			    $row['userFullName']
			    ));
		    }
        }
		
		
		echo json_encode($array);
		
	}
	else {
		echo "non_value";
	}
?>