<?php
## Initialisation de la base de donn�es (singleton PDO)
require_once('lib/DatabaseManager.class.php');
$db = DatabaseManager::getInstance('mysql:dbname=25366src;host=localhost', 'root', '', 'utf8');

