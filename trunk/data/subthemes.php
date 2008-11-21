<?php

echo '<?xml version="1.0" encoding="UTF-8" ?>';
echo '<subthemes>';
echo '<subtheme>';

	$subthemeId = "2";
	$libSource = "durée";
	$genreSource = "f.";
	$langSource = "fr-fra";
	$langDest = "zh-zho";
	$libDest = "'durée' dans la langue de destination";
	$genreDest = "genre du mot edans la langue de destination";
?>		<id><?php echo $subthemeId; ?></id>
		<source>
			<lang><?php echo $langSource; ?></lang>
			<lib><![CDATA[<?php echo $libSource; ?>]]></lib>
			<genre><![CDATA[<?php echo $genreSource; ?>]]></genre>
		</source>
		<destination>
			<lang><?php echo $langDest; ?></lang>
			<lib><![CDATA[<?php echo $libDest; ?>]]></lib>
			<genre><![CDATA[<?php echo $genreDest; ?>]]></genre>
		</destination>
	</subtheme>
	<subtheme>
<?php
	$subthemeId = "1";
	$libSource = "naissance";
	$genreSource = "f.";
	$langSource = "fr-fra";
	$langDest = "zh-zho";
	$libDest = "'naissance' dans la langue de destination";
	$genreDest = "genre du mot edans la langue de destination";
?>		<id><?php echo $subthemeId; ?></id>
		<source>
			<lang><?php echo $langSource; ?></lang>
			<lib><![CDATA[<?php echo $libSource; ?>]]></lib>
			<genre><![CDATA[<?php echo $genreSource; ?>]]></genre>
		</source>
		<destination>
			<lang><?php echo $langDest; ?></lang>
			<lib><![CDATA[<?php echo $libDest; ?>]]></lib>
			<genre><![CDATA[<?php echo $genreDest; ?>]]></genre>
		</destination>
	</subtheme>
</subthemes>
