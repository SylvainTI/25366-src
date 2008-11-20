<?php
header('Content-type: application/xml; charset="utf-8"');
?>
<?xml version="1.0" encoding="utf-8" ?>
<?php
$action=isset($_GET["action"]) ? $_GET['action'] : false;
$langSource=isset($_GET["langSource"]) ? $_GET['langSource'] : false;
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
	
	case "subthemes":
	//todo
		echo "
<subthemes>
	<subtheme>
		<id>0</id>
		<lang>$langSource</lang>
		<lib><![CDATA[naissance]]></lib>
	</subtheme>
	<subtheme>
		<id>1</id>
		<lang>$langSource</lang>
		<lib><![CDATA[alimentation]]></lib>
	</subtheme>
	<subtheme>
		<id>2</id>
		<lang>$langSource</lang>
		<lib><![CDATA[espace]]></lib>
	</subtheme>
</subthemes>
		";
		break;
	case "words":
	//todo
		echo "
<words>
</subthemes>
		";
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