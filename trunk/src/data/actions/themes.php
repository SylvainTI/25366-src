<themes>
<?php
	$db = DatabaseManager::getInstance();
	$queryThemes = $db->prepare("SELECT * FROM `theme2` WHERE `lang` = ? ORDER BY `id` ASC"); // préparation de la requête
	$queryThemes->execute(array($langSource)); // on exécute la requête
	$themes = $queryThemes->fetchAll();
	foreach ($themes as $theme) :
?>	
	<theme>
		<id><?php echo $theme['id']; ?></id>
		<lang><?php echo $theme['lang']; ?></lang>
		<lib><![CDATA[<?php echo $theme['lib']; ?>]]></lib>
		<image><?php echo $theme['image']; ?></image>
		<asset><?php echo $theme['asset']; ?></asset>
	</theme>

<?php
	endforeach;
?>
</themes>
