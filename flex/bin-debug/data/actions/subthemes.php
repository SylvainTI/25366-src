<subthemes>
<?php
	$db = DatabaseManager::getInstance();
	$querySubThemesSource = $db->prepare("SELECT * FROM `subtheme` WHERE `idTheme` = ? AND `lang` = ? ORDER BY `id` ASC"); // préparation de la requête
	$querySubThemesDest = $db->prepare("SELECT * FROM `subtheme` WHERE `idTheme` = ? AND `lang` = ? ORDER BY `id` ASC"); // préparation de la requête
	$querySubThemesSource->execute(array($themeId, $langSource)); // on exécute la requête
	$querySubThemesDest->execute(array($themeId, $langDest)); // on exécute la requête
	//die (print_r($db->errorInfo(), true));
	$subthemes = $querySubThemesSource->fetchAll();
	$subthemesDest = $querySubThemesDest->fetchAll();
	foreach ($subthemes as $key => $subtheme) :
?>
		
	<subtheme>
		<id><?php echo $subtheme['id']; ?></id>
		<source>
			<lang><?php echo $subtheme['lang']; ?></lang>
			<lib><?php echo $subtheme['lib']; ?></lib>
			<genre><?php echo $subtheme['image']; ?></genre>
		</source>
		<destination>
			<lang><?php echo $subthemesDest[$key]['lang']; ?></lang>
			<lib><?php echo $subthemesDest[$key]['lib']; ?></lib>
			<genre><?php echo $subthemesDest[$key]['image']; ?></genre>
		</destination>
	</subtheme>
<?
	endforeach;
?>
</subthemes>
