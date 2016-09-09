<?php
	for ($i=0; $i<50; $i++) {
		$string = "";
			$chaine = "1234567890";
			for($j=0; $j<8; $j++) {
				$string .= $chaine[rand()%strlen($chaine)];
			}
		echo "06".$string."<br/>";
	}
?>