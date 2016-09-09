<?php
	ini_set('max_execution_time',0);

	include 'connectAD.php';

	$nomfichier = 'commune.txt';
	$tabCommune = file($nomfichier);

	function mot_aleatoire () {
		$taille = rand(5,10);
		$c1 = array('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z','dd','ff','ll','mm','nn','pp','rr','ss','tt');
		$c2 = array('a','a','a','e','e','e','i','i','o','o','u','u','y');
		$code='';

		for ($i=1;$i<$taille;$i++) {
			$code .= ($i%2==0)?$c1[rand(0,count($c1)-1)]:$c2[rand(0,count($c2)-1)];
		}

		return $code;
	}

	for($p=1;$p<100;$p++){

		$rlieuId=100+$p;
		$rtabCommune=rand(0,sizeof($tabCommune)-1);
		$rlieuNom=mot_aleatoire();
		$rlieuCoord=rand(1,100);

		$sql="INSERT INTO lieu(`LIEUID`,`VILID`,`LIEUNOM`,`LIEUCOORDGPS`) 
				VALUES ('$rlieuId','$tabCommune[$rtabCommune]','$rlieuNom','$rlieuCoord');";
		echo $sql."<br />";
		$result = mysql_query($sql);
	}
?>