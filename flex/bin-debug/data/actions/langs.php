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
			$queryLangsDest = $db->prepare("SELECT * FROM `lang_dest` WHERE `langSourceId` = ? ORDER BY `langId` ASC"); // préparation de la requête
			$queryLangsDest->execute(array($langSource['id'])); // on exécute la requête
			$langsDest = $queryLangsDest->fetchAll();
			foreach ($langsDest as $langDest) :
			?>
			
			<lang>
				<id><?php echo $langDest['langId']; ?></id>
				<libSource><?php echo $langDest['libSource'] ?></libSource>
			</lang>
		<?php
			endforeach;
		?></destination>
	</lang>
<?php
	endforeach;
?>
</langs>