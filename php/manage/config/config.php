<?php
	define('ROOT_PATH', dirname(__FILE__).'/../');
	define('ROOT_URL', '');
	define('CONFIG_INCLUDED', true);
	
	require_once(ROOT_PATH.'libs/DatabaseManager.class.php');
	require_once(ROOT_PATH.'libs/Error.class.php');
	require_once(ROOT_PATH.'libs/DevelopmentTools.class.php');
	
	//$db = DatabaseManager::getInstance('sqlite:C:/wamp/apps/sqlitemanager1.2.0/db.sqlite3');
	//$db = DatabaseManager::getInstance('sqlite:'.ROOT_PATH.'datas/test.sqlite3');
	$db = DatabaseManager::getInstance('mysql:host=localhost;dbname=25366;', 'root', '', 'utf8');

/*
try{
	$db->exec('SALUT tyoidmsqfjqsdf dskfdqsj  dsfdq$dsfqlkjq');
} catch (PDOException $error) { //Le catch est chargé d'intercepter une éventuelle erreur
	echo 'N° : '.$error->getCode().'<br />';
	die ('Erreur : '.$error->getMessage().'<br />');
}

//*/
