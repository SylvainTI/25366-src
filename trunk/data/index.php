<?php
header('Content-type: application/xml; charset="utf-8"');
?>
<?xml version="1.0" encoding="utf-8" ?>
<?php
$action=isset($_GET["action"]) ? $_GET['action'] : false;
$langSource=isset($_GET["langSource"]) ? $_GET['langSource'] : false;
switch ($action) {
	case "theme":
		echo "
<themes>
	<theme>
		<id>0</id>
		<lang>$langSource</lang>
		<lib><![CDATA[vie]]></lib>
	</theme>
	<theme>
		<id>1</id>
		<lang>$langSource</lang>
		<lib><![CDATA[alimentation]]></lib>
	</theme>
	<theme>
		<id>2</id>
		<lang>$langSource</lang>
		<lib><![CDATA[espace]]></lib>
	</theme>
</themes>
		";
		break;
}
?>