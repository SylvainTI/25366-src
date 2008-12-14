<?php
header('Content-type: application/xml; charset="utf-8"');
echo ('<?xml version="1.0" encoding="utf-8" ?>');
$action = isset($_GET["action"]) ? $_GET['action'] : false;
$themeId = isset($_GET["themeId"]) ? $_GET['themeId'] : false;
$subthemeId = isset($_GET["subthemeId"]) ? $_GET['subthemeId'] : false;
$wordId = isset($_GET["wordId"]) ? $_GET['wordId'] : false;
$langSource = isset($_GET["langSource"]) ? $_GET['langSource'] : false;
$langDest = isset($_GET["langDest"]) ? $_GET['langDest'] : false;
$query = isset($_GET["q"]) ? $_GET["q"] : false;

switch ($action) {
	case "langs":
		echo "
<langs>
	<lang>
		<id>fr-fra</id>
		<lib><![CDATA[français]]></lib>
		<destinations>
			<lang>
				<id>zh-zho</id>
				<lib><![CDATA[Chinois]]></lib>
			</lang>
		</destinations>
	</lang>
	<lang>
		<id>zh-zho</id>
		<lib><![CDATA['chinois' en chinois]]></lib>
		<destinations>
			<lang>
				<id>zh-zho</id>
				<lib><![CDATA['français' en chinois]]></lib>
			</lang>
		</destinations>
	</lang>
</langs>
		";
		break;
	case "themes":
		include('themes.php');
		break;
	
	case "subthemes":
	//todo
		include('subthemes.php');
		break;
	case "words":
		include('words.php');
		break;
	case "word":
		include('word.php');
		break;
	case "historical":
		//Thierry, je ne sais pas s'ils utilisent ça, fais un point avec eux. Arnaud
		include('historical.php');
		break;
	case "historic_keys":
		//Thierry, je ne sais pas s'ils utilisent ça, fais un point avec eux. Arnaud
		include('historic_keys.php');
		break;
	case "search":
		include('search.php');
		break;

}
?>