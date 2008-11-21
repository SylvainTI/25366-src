<?php
header('Content-type: application/xml; charset="utf-8"');
?>
<?xml version="1.0" encoding="utf-8" ?>
<?php
$action = isset($_GET["action"]) ? $_GET['action'] : false;
$themeId = isset($_GET["themeId"]) ? $_GET['themeId'] : false;
$subthemeId = isset($_GET["subthemeId"]) ? $_GET['subthemeId'] : false;
$langSource = isset($_GET["langSource"]) ? $_GET['langSource'] : false;
$langDest = isset($_GET["langDest"]) ? $_GET['langDest'] : false;
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
		include('words.php');
		break;
	
	case "subthemes":
	//todo
		include('subthemes.php');
		break;
	case "words":
	//todo
		include('words.php');
		break;
	case "word":
	//todo
		break;
	case "historical":
	//todo
		break;
	case "search":
	//todo
		break;

}
?>