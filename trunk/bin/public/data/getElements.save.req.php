<?php
$langS = $_GET['langSource'];
$langD = $_GET['langDest'];
$langAsNature = array('fr-fra'=>'langSource','zh-zho'=>'langDest');

$totalReq = 0;
function getElements($id=0, $langSource='fr-fra', $langDest='zh-zho')
{
	global $totalReq;
	global $langAsNature;
	
	echo '<children>'."\r";
	$res = mysql_query('SELECT * FROM structure WHERE parent=' . $id);
	$totalReq++;
	while ($data = mysql_fetch_array($res)) {
			?>
			<element>
				<id><?php echo $data['id'] ?></id>
				<identifier><![CDATA[<?php echo $data['identifier']?>]]></identifier>
				<asset><?php $data['asset'] ?></asset>
			<?php	
			$sql2 = 'SELECT * FROM elements WHERE structureId=' . $data['id'] . ' AND (lang = "' . $langSource . '" OR lang="'.$langDest.'")';
			$totalReq++;
			$res2 = mysql_query($sql2);
			while($data2 = mysql_fetch_array($res2)){
				if($data2['lang']==null)
				break;
			?>
				<<?php echo $langAsNature[$data2['lang']] ?>>
					<identifier><?php echo $data2['identifier'] ?></identifier>
					<label><?php echo $data2['label'] ?></label>
					<content><?php echo $data2['content'] ?></content>
				</<?php echo $langAsNature[$data2['lang']] ?>>
			<?php
			}	
				getElements($data['id'], $langSource, $langDest);
			echo '
			</element>';
	}
	echo '</children>';
}
$originTime = time();
getElements();
//echo 'Durée totale :'.(time() - $originTime);
//echo '<br/>Total req'.$totalReq;

