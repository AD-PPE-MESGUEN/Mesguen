<?php
//A remplacer par une fonction connecxion
@$db=mysql_connect('localhost', 'root', '') or die("erreur de connexion".mysql_error());
mysql_select_db("mlr1", $db) or die("erreur de connexion � la base mlr1");
?>

<!DOCTYPE html>
<html>
	<head>
		<title>AC11 : Affichage tourn�es</title>
		<link rel="stylesheet" type="text/css" href="style.css"/>
	</head>
		
<body>
<div class='tableau'>
	<table align='center' border=2>
	<caption>Liste des tourn�es</caption>
	
		<tr>
			<td>Tourn�e</td>
			<td>Date</td>
			<td>Chauffeur</td>
			<td>V�hicule</td>
			<td>D�part</td>
			<td>Arriv�e</td>
			<td>Supprimer</td>
			<td>Modifier</td>
		</tr>
<?php 

$sql="SELECT DISTINCT tournee.TRNNUM, TRNDTE, CHFNOM, VEHIMMAT, LIEUNOM
		FROM chauffeur, etape, lieu, tournee
		WHERE lieu.LIEUID = etape.LIEUID
		AND etape .TRNNUM = tournee.TRNNUM
		AND tournee.CHFID = chauffeur.CHFID
		AND TRNDTE >= CURDATE()";
	
$req=mysql_query($sql) or die("erreur requete sql !");

while($ligne=mysql_fetch_array($req))
{
	echo"<tr align='center'>";
	echo"<td>" . $ligne['TRNNUM'] ."</td>
	 	 <td>" . $ligne['TRNDTE'] ."</td>
	 	 <td>" . $ligne['CHFNOM'] ."</td>
	 	 <td>" . $ligne['VEHIMMAT'] ."</td>
		 <td>" . $ligne['LIEUNOM'] ."</td>
		 <td>" . $ligne['LIEUNOM'] ."</td>

	 <td>
	 	<form action='delete.php' method='post'>
	 		<input type='hidden' name='TRNNUM' value='". $ligne['TRNNUM']."'>
	 		<input class='supprimerTablo' type='submit'name='submit'>
	 	</form>
	 </td>
	 
	 <td>
	 	<form action='fiche_tournee.php' method='post'>
	 		<input type='hidden' name='TRNNUM' value='". $ligne['TRNNUM']."'>
	 		<input class='modifierTablo' type='submit' name='submit2'>
	 	</form>
	 </td>
		
	 	" ;
	echo"</tr>";
}
?>

	</table>
	</div>
	<br/><br/>	
		<div class='boutton' align='center'>	
			<input class='ajouter' type='submit' value='Ajouter'/>
			<input class='valider' type='reset' value='Retour'/>
		</div>
</body>
</html>