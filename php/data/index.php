<?php


## Envoie les headers XML
header('Content-type: application/xml; charset="utf-8"');
echo ('<?xml version="1.0" encoding="utf-8" ?>');


$action = isset($_GET["action"]) ? $_GET['action'] : false;
$themeId = isset($_GET["themeId"]) ? $_GET['themeId'] : false;
$subthemeId = isset($_GET["subthemeId"]) ? $_GET['subthemeId'] : false;
$wordId = isset($_GET["wordId"]) ? $_GET['wordId'] : false;
$langSource = isset($_GET["langSource"]) ? $_GET['langSource'] : false;
$langDest = isset($_GET["langDest"]) ? $_GET['langDest'] : false;
$query = isset($_GET["q"]) ? $_GET["q"] : false;

$use_db = isset($_GET["use_db"]) ? $_GET["use_db"] : false;

if (!$use_db) {
	switch ($action) {
		case "langs":
			include('actions-no-bdd/langs.php');
			break;
		case "themes":
			include('actions-no-bdd/themes.php');
			break;
		
		case "subthemes":
			include('actions-no-bdd/subthemes.php');
			break;
		case "words":
			include('actions-no-bdd/words.php');
			break;
		case "word":
			include('actions-no-bdd/word.php');
			break;
		case "historic_keys":
			include('actions-no-bdd/historic_keys.php');
			break;
		case "search":
			include('actions-no-bdd/search.php');
			break;
	}
} else {
## Chargement de la configuration (connexion BDD)
require_once('config/config.php');

	switch ($action) {
		case "langs":
			include('actions/langs.php');
			break;
		case "themes":
			include('actions/themes.php');
			break;
		
		case "subthemes":
			include('actions/subthemes.php');
			break;
		case "words":
			include('actions/words.php');
			break;
		case "word":
			include('actions/word.php');
			break;
		case "historical":
			//Thierry, je ne sais pas s'ils utilisent ça, fais un point avec eux. Arnaud
			include('actions/historical.php');
			break;
		case "historic_keys":
			//Thierry, je ne sais pas s'ils utilisent ça, fais un point avec eux. Arnaud
			include('actions/historic_keys.php');
			break;
		case "search":
			include('actions/search.php');
			break;
		case "daily";
			include('actions/daily.php');
			break;
	}
}