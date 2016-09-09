<?php
	ini_set('max_execution_time',0);

	include 'connectAD.php';

	$chiffres = '0123456789';
	$lettres = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

	$nomfichier = 'nomVehicule.txt';
	$tabNomVehicule = file($nomfichier);

	for($p=1;$p<100;$p++){

		$immat = '';

		for($i=0;$i<7;$i++){
			if ($i<2){
				$immat .= substr($lettres,rand()%(strlen($lettres)),1);
			}else if ($i<5){
				$immat .= substr($chiffres,rand()%(strlen($chiffres)),1);
			}else{
				$immat .= substr($lettres,rand()%(strlen($lettres)),1);
			}
		}

		$rnomVehicule=rand(0,sizeof($tabNomVehicule)-1);

		$sql="INSERT INTO vehicule(`VEHIMMAT`,`VEHNOM`) 
				VALUES ('$immat','$tabNomVehicule[$rnomVehicule]');";
		echo $sql."<br />";
		$result = mysql_query($sql);
	}
?>