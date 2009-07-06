<word>
<?php
	$libSource = "naissance";
	$genreSource = "f.";
	$sensSource = "Définition du mot dans la langue source";
	$libDest = "'naissance' dans la langue de destination";
	$genreDest = "genre dest";
	$sensDest = "Définition du mot dans la langue de destination";
	$tags = "Les tags en rapport avec le mot";
?>		
	<id><?php echo $wordId; ?></id>
		<source>
			<lang><?php echo $langSource; ?></lang>
			<lib><![CDATA[<?php echo $libSource; ?>]]></lib>
			<genre><![CDATA[<?php echo $genreSource; ?>]]></genre>
			<sens><![CDATA[<?php echo $sensSource; ?>]]></sens>
		</source>
		<destination>
			<lang><?php echo $langDest; ?></lang>
			<lib><![CDATA[<?php echo $libDest; ?>]]></lib>
			<genre><![CDATA[<?php echo $genreDest; ?>]]></genre>
			<sens><![CDATA[<?php echo $sensDest; ?>]]></sens>
		</destination>
		<tags><![CDATA[<?php echo $tags; ?>]]></tags>
</word>
