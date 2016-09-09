<?php

if($_POST['submit']) {

	@$db=mysql_connect('localhost', 'root', '') or die("erreur de connexion".mysql_error());
	mysql_select_db("mlr1", $db) or die("erreur de connexion à la base mlr1");

	$ETPID = $_POST['ETPID'];

	$sql = "DELETE FROM  WHERE ETPID=".$ETPID;
	$result=mysql_query($sql);

	echo"Etape supprimée";
	echo"<a href='fiche_tournee.php' />";
	echo'<META HTTP-EQUIV="REFRESH" CONTENT="1; URL=fiche_tournee.php">';
} else {
	echo"Erreur";
}

?>