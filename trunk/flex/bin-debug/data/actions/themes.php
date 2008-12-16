<themes>
<?php
	$db = DatabaseManager::getInstance();
	$queryThemes = $db->prepare("SELECT * FROM `theme` WHERE `lang` = ? ORDER BY `id` ASC"); // préparation de la requête
	$queryThemes->execute(array($langSource)); // on exécute la requête
	$themes = $queryThemes->fetchAll();
	foreach ($themes as $theme) :
?>
		
	<theme>
		<id><?php echo $theme['id']; ?></id>
		<lang><?php echo $theme['lang']; ?></lang>
		<lib><?php echo $theme['lib']; ?></lib>
		<image><?php echo $theme['image']; ?></image>
	</theme>
<?
	endforeach;
?>
</themes>
