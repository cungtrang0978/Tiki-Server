<?php
require "dbCon.php";
if(isset($_POST['id'])){
	$id = $_POST['id'];
	$query_delete = "DELETE FROM orders WHERE id = '$id'";
	if(mysqli_query($connect, $query_delete)){
		echo "delete_success";
	}else echo "delete_fail";
}else echo "non_post";
?>