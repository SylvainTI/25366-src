<?php
$langS = $_GET['langSource'];
$langD = $_GET['langDest'];
$langAsNature = array('fr-fra'=>'langSource','zh-zho'=>'langDest');

$totalReq = 0;
function getElements($id, $langSource='fr-fra', $langDest='zh-zho')
{
	//Variables utiles/////
	$memStructureId = null;
	$lastIdChecked = null;
	$firstTime = true;
	$turnSinceChange = 0;
	$i=0;
	global $langAsNature;
	///////////////////////
	
	
	echo "\r";
	$complexReq = 'SELECT elements.*,structure.asset FROM structure,elements WHERE structure.parent ='.$id.' AND elements.structureId=structure.id AND (lang = "' . $langSource . '" OR lang="'.$langDest.'")';

	$complexResult = mysql_query($complexReq);
	$totalRows = mysql_num_rows($complexResult);
	//echo 'Total rows :'.$totalRows.' pour la requète: '.$complexReq;
	if ($totalRows == 0){
		//Si jamais la requète ne retourne pas une liste de mots, c'est qu'elle retourne un thème ou un sous-thème. 
		//On refait alors une quète pour récuperer cette dernère donnée.
		$simpleReq = 'SELECT * FROM structure WHERE parent ='.$id;
			$exect = mysql_query($simpleReq);
			if (mysql_num_rows($exect) !==0){
			?> <children> <?php
			$simpleData = mysql_fetch_array($exect);
			
			?>
				<element>
					<id><?php echo $simpleData['id'] ?></id>
					<identifier><![CDATA[<?php echo $simpleData['identifier']?>]]></identifier>
					<asset><?php $simpleData['asset'] ?></asset>
					<?php getElements($simpleData['id']); ?>
				</element>	
			<?php
			//Puis on relance la fonction avec l'id du thème/sous-thème trouvé, pour trouver ses enfants.
			//echo 'Poursuivre avec id:'.$simpleData['id'];
			?></children><?php
			}
	} else {
		?> <children> <?php
		while($complexData = mysql_fetch_array($complexResult)){
				if($lastIdChecked != $complexData['structureId']){
						$lastIdChecked = $complexData['structureId'];
					?>
					<element>
						<id><?php echo $complexData['structureId'] ?></id>
						<identifier><![CDATA[<?php echo $complexData['label']?>]]></identifier>
						<asset><?php echo $complexData['asset'] ?></asset>
					<?php
				}
				$turnSinceChange++;
				?>
				<<?php echo $langAsNature[$complexData['lang']] ?>>
						<identifier><![CDATA[<?php echo $complexData['identifier'] ?>]]></identifier>
						<label><![CDATA[<?php echo $complexData['label'] ?>]]></label>
						<content><![CDATA[<?php echo $complexData['content'] ?>]]></content>
				</<?php echo $langAsNature[$complexData['lang']] ?>>
				<?php	
				if ($turnSinceChange%2 == 0){
					//getElements($complexData['structureId']+1);
					?></element><?php
				}
			//	$lastIdChecked = $complexData['structureId'];
			//Terminer
		}
		//echo 'Poursuivre avec :'.$lastIdChecked+1;
		getElements($lastIdChecked+1);
		?></children><?php
	}
	 
	//Placer récursion
}
$originTime = time();
echo "\r";
getElements(0);
echo 'Durée totale :'.(time() - $originTime);

