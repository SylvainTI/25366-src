<words>
<?php
	$db = DatabaseManager::getInstance();
	$queryWordsSource = $db->prepare("SELECT * FROM `word` WHERE `idsubtheme` = ? AND `lang` = ? ORDER BY `id` ASC"); // préparation de la requête
	$queryWordsDest = $db->prepare("SELECT * FROM `word` WHERE `idSubtheme` = ? AND `lang` = ? ORDER BY `id` ASC"); // préparation de la requête
	$queryWordsSource->execute(array($subthemeId, $langSource)); // on exécute la requête
	$queryWordsDest->execute(array($subthemeId, $langDest)); // on exécute la requête
	
	$words = $queryWordsSource->fetchAll();
	$wordsDest = $queryWordsDest->fetchAll();
	foreach ($words as $key => $word) :
?>
		
	<word>
		<id><?php echo $word['id']; ?></id>
		<source>
			<lang><?php echo $word['lang']; ?></lang>
			<lib><?php echo $word['lib']; ?></lib>
			<genre><?php echo $word['genre']; ?></genre>
			<phrase><?php echo $word['definition']; ?></phrase>
		</source>
		<destination>
			<lang><?php echo $wordsDest[$key]['lang']; ?></lang>
			<lib><?php echo $wordsDest[$key]['lib']; ?></lib>
			<genre><?php echo $wordsDest[$key]['genre']; ?></genre>
			<phrase><?php echo $wordsDest[$key]['definition']; ?></phrase>
		</destination>
	</word>
<?
	endforeach;
?>
</words>
