<results>
<?php
	$db = DatabaseManager::getInstance();
	$querySearch = $db->prepare("SELECT ALL FROM `word` WHERE `lib` LIKE '%$query%'"); // préparation de la requête
	$querySearch->execute(array()); // on exécute la requête
	$searchResults = $querySearch->fetchAll();
	//print_r($searchResults);
	//print_r($db->errorInfo());
	//print_r($searchResults);
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