<words>
	<word>
<?php
	$libSource = "mort";
	$genreSource = "f.";
	$libDest = "'mort' dans la langue de destination";
	$genreDest = "genre du mot dans la langue de destination";
	$wordId = "1";
	$subthemeId = "4";
?>		

		<id><?php echo $wordId; ?></id>
		<subThemeId><?php echo $subthemeId; ?></subThemeId>
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
	<word>
<?php
	$libSource = "naissance";
	$genreSource = "f.";
	$libDest = "'naissance' dans la langue de destination";
	$genreDest = "genre du mot dans la langue de destination";
	$wordId = "2";
?>		
		<id><?php echo $wordId; ?></id>
		<subThemeId><?php echo $subthemeId; ?></subThemeId>
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
</words>
