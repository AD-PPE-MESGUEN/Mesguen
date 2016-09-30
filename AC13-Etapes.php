<?php include "connectAD.php"; ?>

<html>
<head>
	<title>AC13 : Organiser les étapes</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div>
	<form>
		<h4>

		<label for="lieu">Lieu</label>
		<!--<span class="listeD">-->
			<select name="lieu" size=1 style="border-color:lime; width:145px;  ">
			<?php 
				$sql="SELECT LIEUNOM FROM lieu";

				$requete=mysql_query($sql) or die("erreur requete sql !");

				while($ligne=mysql_fetch_array($requete)){
					echo"<option>".$ligne['LIEUNOM']."</option>";
				}
			?>
			</select>
		<!--</span>--><br/><br/>

		<label for="rdv1">Rendez-vous entre</label>
		<input type="date" name="rdv1" align="center" style="border-color:lime"><br/><br/>	

		<label for="rdv2"><t/>et</label>
		<input type="date" name="rdv2" align="center" style="border-color:lime"><br/><br/>	

		<label for="pec">Pris en charge le</label>
		<input type="date" name="pec" align="center" style="border-color:lime"><br/><br/>

		<label for="commentaire">Commentaire</label>
		<textarea name="commentaire" align="center" rows=10 cols=18 style="border-color:lime"></textarea><br/>
	</h4>
		<div class='boutton' align='center'>
			<?php 
				echo "<form action='update_etape.php' method='post'>
					<input type='hidden' name='ETPID' value='". $ligne['ETPID']."'>
					<input class='valider' type='submit' value='Valider'/>
				</form>
				";
			?>
			<input class='supprimer' type='reset' value='Annuler'/>
		</div>
	</form>
</div>

</body>
</html>
