<results>
<?php
	$db = DatabaseManager::getInstance();
	$querySearch = $db->prepare("SELECT * FROM `word` WHERE `lib` LIKE '%?%' ORDER BY `id` ASC"); // préparation de la requête
	$querySearch->execute(array($query)); // on exécute la requête
	print_r($querySearch);
	print_r($db->errorInfo());
	$searchResults = $querySearch->fetchAll();
	print_r($searchResults);
	foreach ($searchResults as $key => $searchResult) :
?>
	<result>
		<id><?php echo $searchResult['id']; ?></id>
		<type>word</type>
		<lang><?php echo $searchResult['lang']; ?></lang>
		<lib><![CDATA[<?php echo $searchResult['lib']; ?>]]></lib>
		<genre><![CDATA[<?php echo $searchResult['genre']; ?>]]></genre>
		<sens><![CDATA[<?php echo ''; ?>]]></sens>
		<tags><![CDATA[<?php echo $tags; ?>]]></tags>
	</result>
<?php
	endforeach;
?>
		<!--result>
			<type>historicalMarks</type>
			<date> -800 </date>
			<description> Début de l'invasion des Celtes qui vont remplacer peu à peu les Ligures les repoussant jusqu'au Alpes </description>
			<num> Résultat 8 </num>
		</result-->
</results>