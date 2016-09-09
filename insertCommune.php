<?php
	ini_set('max_execution_time',0);

	include 'connectAD.php';
	
	$nomfichier = 'commune.txt';
	$tabCommune = file($nomfichier);

	for($p=1;$p<100;$p++) {

		$rid=10000+$p;

		$rcommune=rand(0,sizeof($tabCommune)-1);

		$sql="INSERT INTO commune(`VILID`,`VILNOM`)
				VALUES ($rid,'$tabCommune[$rcommune]');";
		echo $sql."<br />";
		$result = mysql_query($sql);
	}
?>