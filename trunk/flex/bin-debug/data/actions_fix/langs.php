<langs>
	<lang>
<?php
	$langIdSource = "fr-fra";
	$libSource = "français";
	$langIdDest = "zh-zho";
	$libDest = "chinois";
?>		

		<id><?php echo $langId; ?></id>
		<lib><![CDATA[<?php echo $libSource; ?>]]></lib>
		<destination>
			<lang>
				<id><?php echo $langIdDest; ?></id>
				<libSource><![CDATA[<?php echo $libDest; ?>]]></libSource>
			</lang>
		</destination>
	</lang>
</langs>
