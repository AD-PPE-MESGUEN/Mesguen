<?php 
	include "connectAD.php";

	$TRNNUM = $_POST['TRNNUM'];
?>

<html>
<head>
	<title>AC12 : Organiser les tournées</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="gauche", align="left">
	<form>
	<h4>
	<label for="date">Date</label>
	<input type="date" name="date" align="center" style="border-color:lime"></br></br>
	
	<label for="chauffeur">Chauffeur</label>
	<span class="listeD">
		<select name="chauffeur" size=1 style="border-color:lime; width:145px;  ">
		<?php 
			$sql="SELECT CHFNOM FROM chauffeur";
		
			$requete=mysql_query($sql) or die("erreur requete sql !");
			
			while($ligne=mysql_fetch_array($requete)){
				echo"<option>".$ligne['CHFNOM']."</option>";}
		?>
		</select>
	</span></br></br>
	
	<label for="vehicule">Véhicule</label>
	<span class="listeD">
		<select name="vehicule" size=1 style="border-color:lime; width:145px;  ">
		<?php 
		$sql="SELECT VEHIMMAT FROM vehicule";
		
		$requete=mysql_query($sql) or die("erreur requete sql !");
			
		while($ligne=mysql_fetch_array($requete)){
			echo"<option>".$ligne['VEHIMMAT']."</option>";}
		?>
		</select>
	</span></br></br>
	
	<label for="pec">Pris en charge le</label>
	<input type="date" name="pec" align="center" style="border-color:lime"></br></br>
	
	<label for="commentaire">Commentaire</label>
	<textarea name="commentaire" align="center" rows=10 cols=18 style="border-color:lime"></textarea></br>
	</h4>
		
		<div class='boutton' align='center'>
		
		<?php 
			echo"
			<form action='update_etape.php' method='post'>
				<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
				<input class='valider' type='submit' value='Valider'/>
			</form>
			";
		?>
			<input class='supprimer' type='reset' value='Annuler'/>
		</div>
	</form>
</div>
	
<div>
<hr class="separation"/>
</div>

<div id="droite", align="center" >
<h3>Étapes</h3>
	<div class='tablo'>
	<table border = 0>
	<tr>
	<td></td>
	</tr>
<?php 

$sql="SELECT ETPID, LIEUNOM
	FROM etape, tournee, lieu
	WHERE lieu.LIEUID = etape.LIEUID
	AND etape.TRNNUM = tournee.TRNNUM
	AND etape.TRNNUM =".$TRNNUM;

$req=mysql_query($sql) or die("erreur requete sql !");

while($ligne=mysql_fetch_array($req))
{
	echo"<tr align='center'>";
	echo"<td>" . $ligne['ETPID'] ."</td>
		 <td>" . $ligne['LIEUNOM'] ."</td>
		 <td></td>
	 <td>
	 	<form action='deleteetape.php' method='post'>
	 		<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
	 		<input class='supprimerTablo' type='submit'name='submit'>
	 	</form>
	 </td>
	 
	 <td>
	 	<form action='' method='post'>
	 		<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
	 		<input class='modifierTablo' type='submit' name='submit'>
	 	</form>
	 </td>

	 	" ;
	echo"</tr>";
}
?>
	</table>
	</br>
	<div class='boutton' align='center'>
	<input class='ajouter' type='submit' value='Ajouter'/>
	</div>
	</div>

</div>

</body>
</html>
