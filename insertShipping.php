<?php
require "dbCon.php";

if(isset($_POST['idTransact'])){

	$idTransact = $_POST['idTransact'];

	$idShipper = 0;

	// get userId not in any transact = new shipper
	$query1 = "SELECT user.id FROM user
			WHERE user.roleId = 2 AND user.id NOT IN
												 	(SELECT shipping.idShipper FROM `shipping`
			                                         GROUP BY shipping.idShipper
			                                         ORDER BY `shipping`.`id` DESC                 
													)
			LIMIT 1";

	if ($data_1 = mysqli_query($connect, $query1)) {
		$row_1 = mysqli_fetch_assoc($data_1);
		
		if(isset($row_1)){
			$idShipper = $row_1['id'];

			//insert
			$query_insert_shipping = "INSERT INTO `shipping`(`idTransact`, `idShipper`) VALUES ('$idTransact', '$idShipper')";
			if(mysqli_query($connect, $query_insert_shipping)){
				echo "insert_success";
			} else echo "insert_fail";
		}else{
			//count shipper
			$query2 = "SELECT COUNT(*) AS count FROM user WHERE user.roleId = 2";
			if($data_2 = mysqli_query($connect, $query2)){
				$row_2 = mysqli_fetch_assoc($data_2);
				if(isset($row_2)){
					$count = $row_2['count'];
		
					//get userId of shiiper has oldest transact.
					$query3 ="SELECT shipping.idShipper FROM (SELECT shipping.* FROM `shipping`
      				                  ORDER BY shipping.id DESC
      				                  LIMIT $count) as shipping
							ORDER BY `shipping`.`id` ASC                        
							LIMIT 1";
					if($data_3 = mysqli_query($connect, $query3)){
						$row_3 = mysqli_fetch_assoc($data_3);
						if(isset($row_3)){
							$idShipper = $row_3['idShipper'];
							//insert
							$query_insert_shipping = "INSERT INTO `shipping`(`idTransact`, `idShipper`) VALUES ('$idTransact', '$idShipper')";
							if(mysqli_query($connect, $query_insert_shipping)){
								echo "insert_success";
							} else echo "insert_fail";
						}
					}
				}
			}
		}		
	}
} else echo "non_value";


?>