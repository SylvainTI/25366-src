<?php
	require_once('config/config.php');
	$queries = array();
	$queries['get_themes'] = "SELECT * FROM `theme`";
	$queries['get_subthemes'] = "SELECT * FROM `subtheme` WHERE `idTheme` = :idTheme";
	header('Content-Type: text/html; charset=utf-8');
	$db = DatabaseManager::getInstance();
	$sth = $db->prepare($queries['get_themes']);
	$sth->execute();
	foreach($sth->fetchAll() as $theme){
		echo $theme['lib'].'<br/>';
	}
	
?>