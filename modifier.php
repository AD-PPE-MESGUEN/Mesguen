<?php
	if($_POST['submit']) {
		
		include "connectAD.php";
		
		$TRNNUM = $_POST['TRNNUM'];
		$VEHIMMAT = $_POST['VEHIMMAT']
		
		
		$sql ="UPDATE mlr1 SET  WHERE TRNNUM=".$TRNNUM;
		$result=mysql_query($sql);
		
		echo"Tournée modifiée";
		echo"<a href='affichage_tournees.php' />";
		echo'<META HTTP-EQUIV="REFRESH" CONTENT="1; URL=affichage_tournees.php">';
	}else{
		echo"Erreur";
	}
?>
