<?php
	ini_set('max_execution_time',0);

	include 'connectAD.php';

	$nomfichier = 'nom.txt';
	$tablonomfamille = file($nomfichier);

	$nomfichier = 'garcon.txt';
	$tabloprenomgarcon = file($nomfichier);

	$nomfichier = 'fille.txt';
	$tabloprenomfille = file($nomfichier);

	$nomfichier = 'adresse.txt';
	$tabloadresse = file($nomfichier);

	$nomfichier = 'code.txt';
	$tablocode = file($nomfichier);

	$nomfichier = 'date.txt';
	$tablodate = file($nomfichier);

	$nomfichier = 'telephone.txt';
	$tablotel = file($nomfichier);

	for($p=1;$p<100;$p++){
		$rnom=rand(0,sizeof($tablonomfamille)-1);
		$rcode=rand(0,sizeof($tablocode)-1);
		$radre=rand(0,sizeof($tabloadresse)-1);
		$rdate=rand(0,sizeof($tablodate)-1);
		$rtel=rand(0,sizeof($tablotel)-1);
		$gf=rand(0,9);

		if ($gf<8){
			$tabloprenom=$tabloprenomgarcon;
		}else{
			$tabloprenom=$tabloprenomfille;
		}

		$rpre=rand(0,sizeof($tabloprenom)-1);
		$mail=$tabloprenom[$rpre].".".$tablonomfamille[$rnom]."@domain.com"; 

		$sql="INSERT INTO chauffeur(`CHFID`,`CHFNOM`,`CHFPRENOM`,`CHFTEL`,`CHFMAIL`) 
				VALUES ('$tablocode[$rcode]','$tablonomfamille[$rnom]','$tabloprenom[$rpre]','$tablotel[$rtel]','$mail');";
		echo $sql."<br />";
		$result = mysql_query($sql)
			or die ("Requete invalide");
	}

		/* TOURNEE
		$sql="INSERT INTO tournee(`TRNNUM`,`VEHIMMAT`,`CHFID`,`TRNCOMMENTAIRE`,`TRNPECCHAUFFEUR`,`TRNDTE`) 
			VALUES ();";
		echo $sql."<br/>";
		$result = mysql_query($sql);*/

		/* ETAPE
		$sql="INSERT INTO tournee(`TRNNUM`,`ETPID`,`LIEUID`) 
			VALUES ();";
		echo $sql."<br/>";
		$result = mysql_query($sql);*/
?>
