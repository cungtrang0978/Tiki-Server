<?php 
require "dbCon.php";

class Orders{
	function Orders($id, $idTransact, $idProduct, $qty, $amount){
		$this->id = $id;
		$this->idTransact = $idTransact;
		$this->idProduct = $idProduct;
		$this->qty = $qty;
		$this->amount = $amount;
	}
}

if(isset($_POST['idTransact'])){
	$idTransact = $_POST['idTransact'];
	$query_select = "SELECT * FROM orders WHERE idTransact = '$idTransact' ORDER bY id DESC";
	
	if($data = mysqli_query($connect, $query_select)){
		$arrayOrder = array();
		while ($row  = mysqli_fetch_assoc($data)) {
			array_push($arrayOrder, new Orders(
					$row['id'],
					$row['idTransact'],
					$row['idProduct'],
					$row['qty'],
					$row['amount']
				));
		}
		echo json_encode($arrayOrder);
	}  else echo "wrong_query";
}else echo "non_post";

?>