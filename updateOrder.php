<?php
require "dbCon.php";
$CODE_UPD_ORDER = "CODE_UPD_ORDER";
$CODE_UPD_ADD_ONE = "CODE_UPD_ORDER_ADD_ONE";
$CODE_UPD_SUBTRACT_ONE = "CODE_UPD_ORDER_SUBTRACT_ONE";

if(isset($_POST['CODE'], $_POST['id'], $_POST['qty'], $_POST['amount'])){
	$id = $_POST['id'];
	$qty = $_POST['qty'];
	$amount = $_POST['amount'];
	$_CODE = $_POST['CODE'];


	if ($_CODE === $CODE_UPD_ADD_ONE) {
		$query_select = "SELECT qty, amount FROM orders WHERE id = '$id'";
		$qty_old = 0;
		$amount_old = 0;
		if($data_select = mysqli_query($connect, $query_select)){
			$row_select = mysqli_fetch_assoc($data_select);
			if(isset($row_select)){
				$qty_old = $row_select['qty'];
				$amount_old = $row_select['amount'];
			}
			$qty = $qty + $qty_old;
			$amount = $amount + $amount_old;
		}
	}else	if($_CODE === $CODE_UPD_SUBTRACT_ONE){
		$query_select = "SELECT qty, amount FROM orders WHERE id = '$id'";
		$qty_old = 0;
		$amount_old = 0;
		if($data_select = mysqli_query($connect, $query_select)){
			$row_select = mysqli_fetch_assoc($data_select);
			if(isset($row_select)){
				$qty_old = $row_select['qty'];
				$amount_old = $row_select['amount'];
			}
			$qty = $qty - $qty_old;
			$amount = $amount - $amount_old;
		}
	}

	$query = "UPDATE orders SET qty = '$qty', amount = '$amount' WHERE id = '$id'";
	if(mysqli_query($connect, $query)){
		echo "update_success";
	}else echo "update_fail";
}else echo "non_post";

?>