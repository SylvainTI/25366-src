<?php
	$row = 1;
	$handle = fopen("data.csv", "r");
	$cols = fgetcsv($handle, 1000, ";");
	while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
	    $num = count($data);
		if (!in_array($data[0], $themes)) {
			$themes[] = $data[0];
		}
		//*
		if (!in_array($data[1], $subthemes)) {
			$subthemes[] = $data[1];
		}
		//*/
		//echo ($data[0].'<br/>');
	    //echo "<p> $num fields in line $row: <br /></p>\n";
	    $row++;
	    for ($c=0; $c < $num; $c++) {
	        //echo $data[$c] . "<br />\n";
			
	    }
	}
	fclose($handle);
	sort($themes);
	sort($subthemes);
	//echo (nl2br(print_r($themes, true)));
	echo (nl2br(print_r($subthemes, true)));
	//echo (nl2br(print_r($themes, true)));
?>

Thématique
Sous-thème
mot
noyau
genre
mot en chinois
phrases françaises
phrases chinoises
tag