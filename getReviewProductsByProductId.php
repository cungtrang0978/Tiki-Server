<?php
	require "dbCon.php";


class Rate{
    function Rate($id, $ratePoint, $comment, $createdAt, $modifiedAt, $idUser, $userFullName){
        
        $this->id = $id;
		$this->ratePoint = $ratePoint;
		$this->comment = $comment;
		$this->createdAt = $createdAt;
		$this->modifiedAt = $modifiedAt;
		$this->idUser = $idUser;
		$this->userFullName = $userFullName;
		
    }
}

	if(isset($_POST['idProduct'])){
		$idProduct = $_POST['idProduct'];
		
		$query = "SELECT rate.id, rate.ratePoint, rate.comment, rate.createdAt, rate.modifiedAt , user.id as idUser, user.name as userFullName
                FROM rate JOIN product on rate.idProduct = product.id 
                	JOIN user ON user.id = rate.idUser
                WHERE product.id = $idProduct
                ORDER BY modifiedAt DESC, createdAt DESC";	

		$data = mysqli_query($connect, $query);

		$array = array();

        while ($row = mysqli_fetch_assoc($data)){
			    array_push($array, 
			    new Rate($row['id'], 
			    $row['ratePoint'],     
			    $row['comment'], 
			    $row['createdAt'], 
			    $row['modifiedAt'],
			    $row['idUser'],
			    $row['userFullName']
			    ));
		    }
		
		
		echo json_encode($array);
		
	}
	else {
		echo "non_value";
	}
?>