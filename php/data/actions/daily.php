<?php
## Renvoie la phrase du jour
$date_ref = "01/01/".date('Y');
$db = DatabaseManager::getInstance();
$query = $db->prepare("INSERT INTO `phrase_du_jour` (`date`,`wordId`,`subthemeId`,`themeId`) VALUES ('?','?','?','?')"); // pr�paration de la requ�te
$query2 = $db->prepare("SELECT * FROM `subtheme`"); // pr�paration de la requ�te
$

for ($i = 1; $i <= 366; $i++) {
	$tomorrow  = mktime(0, 0, 0, 1, $i, date("Y"));
	$queryLangs->execute(array(date('d/m/Y'), '')); // on ex�cute la requ�te
	$langsSources = $queryLangs->fetchAll();
	
	echo date('d/m/Y', $tomorrow)."\n";
}
?>
