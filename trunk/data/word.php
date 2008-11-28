<word>
<?php
	$libSource = "naissance";
	$genreSource = "f.";
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
</word>
