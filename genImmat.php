<?php
	$chiffres = '0123456789';
	$lettres = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
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
	
	echo $immat."<br />";
?>