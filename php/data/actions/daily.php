<?php
## Renvoie la phrase du jour
$date_ref = "01/01/".date('Y');
$db = DatabaseManager::getInstance();
$query = $db->prepare("INSERT INTO `phrase_du_jour` (`date`,`wordId`,`subthemeId`,`themeId`) VALUES ('?','?','?','?')"); // préparation de la requête
$query2 = $db->prepare("SELECT * FROM `subtheme`"); // préparation de la requête
$

for ($i = 1; $i <= 366; $i++) {
	$tomorrow  = mktime(0, 0, 0, 1, $i, date("Y"));
	$queryLangs->execute(array(date('d/m/Y'), '')); // on exécute la requête
	$langsSources = $queryLangs->fetchAll();
	
	echo date('d/m/Y', $tomorrow)."\n";
}
?>
