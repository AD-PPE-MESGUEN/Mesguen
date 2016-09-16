<?php
	if($_POST['submit']) {
		
		include "connectAD.php";
		
		$TRNNUM = $_POST['TRNNUM'];
	
		$sql = "DELETE FROM tournee WHERE TRNNUM=".$TRNNUM;
		$result=mysql_query($sql);
	
		echo"Tournée supprimée";
		echo"<a href='affichage_tournees.php' />";
		echo'<META HTTP-EQUIV="REFRESH" CONTENT="1; URL=affichage_tournees.php">';
	}else{
		echo"Erreur";
	}
?>
