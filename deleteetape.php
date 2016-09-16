<?php
	if($_POST['submit']) {
	
		include "connectAD.php";
	
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
