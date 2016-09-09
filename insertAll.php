<?php
	ini_set('max_execution_time',60);

	include 'connectAD.php';

	function immat_random(){
		$chiffres='0123456789';
		$lettres='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$immat='';

		for($i=0;$i<7;$i++){
			if ($i<2){
				$immat .= substr($lettres,rand()%(strlen($lettres)),1);
			}else if ($i<5){
				$immat .= substr($chiffres,rand()%(strlen($chiffres)),1);
			}else{
				$immat .= substr($lettres,rand()%(strlen($lettres)),1);
			}
		}

		return $immat;
	}

	function mot_aleatoire(){
		$taille=rand(5,10);
		$c1=array('a','a','a','e','e','e','i','i','o','o','u','u','y');
		$c2=array('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z',
					'dd','ff','ll','mm','nn','pp','rr','ss','tt');
		$code='';

		for ($i=1;$i<$taille;$i++) {
			$code .= ($i%2==0)?$c1[rand(0,count($c1)-1)]:$c2[rand(0,count($c2)-1)];
		}

		return $code;
	}

	$nomFic='nom.txt';$tabNom=file($nomFic);

	$nomFic='homme.txt';$tabHomme= file($nomFic);

	$nomFic='femme.txt';$tabFemme=file($nomFic);

	$nomFic='telephone.txt';$tabTel=file($nomFic);

	$nomFic='ville.txt';$tabVille=file($nomFic);

	$nomFic='vehicule.txt';$tabVehicule=file($nomFic);

	for($p=1;$p<=99;$p++){

		$hf=rand(0,9);
		if ($hf<8){
			$tabPrenom=$tabHomme;
		}else{
			$tabPrenom=$tabFemme;
		}

		$rcode=1000+$p*10;
		$rtel=rand(0,sizeof($tabTel)-1);
		$rnom=rand(0,sizeof($tabNom)-1);
		$rpre=rand(0,sizeof($tabPrenom)-1);
		$rmail=trim($tabPrenom[$rpre]).'.'.trim($tabNom[$rnom]).'@gmail.com';

		$ridcom=10000+$p*10;
		$rville=rand(0,sizeof($tabVille)-1);

		$rlieuId=5000+$p*10;
		$rlieuNom=mot_aleatoire();
		$rlieuCoord='('.rand(1,100).",".rand(1,100).')';

		$rimmat=immat_random();
		$rnomVehicule=rand(0,sizeof($tabVehicule)-1);

		// CHAUFFEUR
		$sql="INSERT INTO chauffeur(`CHFID`,`CHFNOM`,`CHFPRENOM`,`CHFTEL`,`CHFMAIL`) 
			VALUES ('$rcode','$tabNom[$rnom]','$tabPrenom[$rpre]','$tabTel[$rtel]','$rmail');";
		echo $sql."<br/>";
		$result = mysql_query($sql);

		// COMMUNE
		$sql="INSERT INTO commune(`VILID`,`VILNOM`) 
			VALUES ('$ridcom','$tabVille[$rville]');";
		echo $sql."<br/>";
		$result = mysql_query($sql);

		// LIEU
		$sql="INSERT INTO lieu(`LIEUID`,`VILID`,`LIEUNOM`,`LIEUCOORDGPS`) 
			VALUES ('$rlieuId','$ridcom','$rlieuNom','$rlieuCoord');";
		echo $sql."<br/>";
		$result = mysql_query($sql);

		// VEHICULE
		$sql="INSERT INTO vehicule(`VEHIMMAT`,`VEHNOM`) 
			VALUES ('$rimmat','$tabVehicule[$rnomVehicule]');";
		echo $sql."<br/>";
		$result = mysql_query($sql);

		echo "<br/>";
	}
?>
