<langs>
<?php 
	$db = DatabaseManager::getInstance();
	$queryLangs = $db->prepare("SELECT * FROM `lang_source` ORDER BY `id` ASC"); // préparation de la requête
	$queryLangs->execute(array()); // on exécute la requête
	$langsSources = $queryLangs->fetchAll();
	foreach ($langsSources as $langSource) :
?>
		
	<lang>
		<id><?php echo $langSource['id']; ?></id>
		<lib><![CDATA[<?php echo $langSource['lib']; ?>]]></lib>
		<destination><?php 
			$queryLangsDest = $db->prepare("SELECT * FROM `lang_dest` WHERE `lang_source_id` = ? ORDER BY `lang_id` ASC"); // préparation de la requête
			$queryLangsDest->execute(array($langSource['id'])); // on exécute la requête
			$langsDest = $queryLangsDest->fetchAll();
			foreach ($langsDest as $langDest) :
			?>
			
			<lang>
				<id><?php echo $langDest['lang_id']; ?></id>
				<libSource><?php echo $langDest['lib_source'] ?></libSource>
			</lang>
		<?php
			endforeach;
		?></destination>
	</lang>
<?php
	endforeach;
?>
</langs>