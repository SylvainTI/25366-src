<?php
$langS = $_GET['langSource'];
$langD = $_GET['langDest'];
$langAsNature = array('fr-fra'=>'langSource','zh-zho'=>'langDest');

$structure = array();
$elements = array();

$getStructure = "SELECT * FROM structure";
$structureQ = mysql_query($getStructure);
while($structureData = mysql_fetch_array($structureQ)){
	$structure[$structureData['parent']][] = 'Wouhou';
	/*array(
							$structureData['id']=>array(
								'identifier'=>$structureData['identifier'],
								'asset'=>$structureData['asset'])
							);*/
	// = $structureData['id'];
}

$getElements = "SELECT * FROM elements";
$elementsQ = mysql_query($getElements);
while($elementsData = mysql_fetch_array($elementsQ)){
	$elements[$elementsData['structureId']] = array(
											'label'=>$elementsData['label'],
											'lang'=>$elementsData['lang'],
											'content'=>$elementsData['content'],
											'phrase'=>$elementsData['phrase']
											);
}
print_r($structure);
//print_r($elements);
function getElements($id=0, $langSource='fr-fra', $langDest='zh-zho')
{
	global $totalReq;
	global $langAsNature;
	
	echo '<children>'."\r";
	foreach($structure[0] as $childId => $childDatas){
		?>
		<element>
			<id><?php echo $childId ?></id>
			<identifier><?php $childDatas['identifier'] ?></identifier>
			<asset><?php $childDatas['asset'] ?></asset>
		<?php
		if (isset($elements[$childId])){
			foreach($elements[$childId] as $datas){
			?>
				<<?php echo $langAsNature[$datas['lang']] ?>>
					<lang><?php echo $datas['lang'] ?></lang>
					<label><?php echo $datas['label'] ?></label>
					<content><?php echo $datas['content'] ?></content>
					<phrase><?php echo $datas['phrase'] ?></phrase>
				</<?php echo $langAsNature[$datas['lang']] ?>>
			<?php
			}
		}
		 //getElements($childId);
		 ?><elements><?php
	}
	die();
	/*while ($data = mysql_fetch_array($res)) {
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
	echo '</children>';*/
}
$originTime = time();
getElements();
//echo 'Durée totale :'.(time() - $originTime);
//echo '<br/>Total req'.$totalReq;

