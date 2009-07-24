<?php
/*
?action=getElements&langSource=fr-fra&langDest=zh-zho
*/
$langSource = $_GET['langSource'];
$langDest = $_GET['langDest'];

function getElements($id, $langSource, $langDest)
{
	echo '<children>';
	$res = mysql_query('SELECT * FROM structure WHERE parent=' . $id);
	while ($data = mysql_fetch_array($res)) {
		echo '
		<element>
			<id>' . $data['id'] . '</id>
			<identifier><![CDATA[' . $data['identifier'] . ']]></identifier>
			<asset>'.$data['asset'].'</asset>';
		$sql2 = 'SELECT * FROM elements WHERE structureId=' . $data['id'] . ' AND lang = "' . $langSource . '"';
		$res2 = mysql_query($sql2);
		$data2 = mysql_fetch_array($res2);
		echo '
			<langSource>
				<identifier>'. $data2['identifier'] . '</identifier>
				<label>'. $data2['label'] . '</label>
				<content>'. $data2['content'] . '</content>
			</langSource>';
		$sql2 = 'SELECT * FROM elements WHERE structureId=' . $data['id'] . ' AND lang = "' . $langDest . '"';
		$res2 = mysql_query($sql2);
		$data2 = mysql_fetch_array($res2);			
		echo '
			<langDest>
				<identifier>'. $data2['identifier'] . '</identifier>
				<label>'. $data2['label'] . '</label>
				<content>'. $data2['content'] . '</content>
			</langDest>';
			getElements($data['id'], $langSource, $langDest);
		echo '
		</element>';
	}
	echo '</children>';
}
echo getElements(0, $langSource, $langDest);
