<?php

if($_POST['submit']) {
	
	@$db=mysql_connect('localhost', 'root', '') or die("erreur de connexion".mysql_error());
	mysql_select_db("mlr1", $db) or die("erreur de connexion � la base mlr1");
	
	$TRNNUM = $_POST['TRNNUM'];
	$VEHIMMAT = $_POST['VEHIMMAT']
	
	
	$sql ="UPDATE mlr1 SET  WHERE TRNNUM=".$TRNNUM;
	$result=mysql_query($sql);
	
	echo"Tourn�e modifi�e";
	echo"<a href='affichage_tournees.php' />";
	echo'<META HTTP-EQUIV="REFRESH" CONTENT="1; URL=affichage_tournees.php">';
	} else {
		echo"Erreur";
}