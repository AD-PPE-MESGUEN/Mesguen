<?php
	include "AccesDonnees.php";

	$ip=explode(".",$_SERVER['SERVER_ADDR']);

	switch ($ip[0]) {
		case 127 :
			$host = "127.0.0.1";
			$user = "root";
			$password = "";
			$dbname = "mlr1";
			$port="";
			break;
		/*case 192 :
			$host = "127.0.0.1";
			$user = "root";
			$password = "";
			$dbname = "SI6";
			$port='3306';
			break;*/
			
		default :
			exit ("Serveur non reconnu...");
			break;
	}
	
	$connexion=connexion($host,$port,$dbname,$user,$password);
	
	if (!$connexion) {
		echo "Pas de connexion.<br />";
	}

?>

