<?php
	$psd=$_POST['psd'];
	$mdp=$_POST['mdp'];
	
	include 'connectAD.php';
	
	@$req="SELECT CHFMDP, CHFPSD FROM chauffeur WHERE CHFPSD = '$psd' AND CHFMDP = '$mdp'";
	$sql=mysql_query($req);
	
	if(@mysql_numrows($sql)==0){
		echo"</br>Erreur de connexion";
		echo'<META HTTP-EQUIV="REFRESH" CONTENT="1; URL=authentif_chauffeur.php">';
	}else{
		echo"</br>Connexion réussie";
		echo'<META HTTP-EQUIV="REFRESH" CONTENT="10; URL=affichage_tournees.php">';
	}
?>
