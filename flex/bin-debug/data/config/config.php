<?php
## Initialisation de la base de données (singleton PDO)
require_once(dirname(__FILE__).'/../lib/DatabaseManager.class.php');
$db = DatabaseManager::getInstance('mysql:dbname=25366src;host=localhost', 'root', '', 'utf8');

if (file_exists('INSTALL')) {
	$sql = file_get_contents('db.sql');
	$db->query($sql);
	//echo (print_r($db->errorInfo(), true));
	unlink('INSTALL');
	/*
	$handle = fopen('INSTALL', "a+");
	fclose ($handle);
	//*/

}
