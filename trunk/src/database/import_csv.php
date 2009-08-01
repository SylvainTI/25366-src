<?php
/*
 * Created on 6 mai 09
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */

/*************************** vérification connexion à la base ***************************/
//connexion à la base
$connect = mysql_connect("localhost", "root", "");
    if ( !$connect ) {
          $err .= "-impossible de se connecter <br/>";
          echo $err;
             }
$db_select = mysql_select_db("ec25366");
    if ( !$db_select ) {
          $err .= "-sélection de la table impossible <br/>";
          echo $err;
              }
header('Content-type: text/html; charset=UTF-8');
mysql_query('SET NAMES UTF8');
mysql_query('SET CHARACTER SET UTF8');              

/****************************** fin vérification ********************************/


// ouverture du csv
$datas = file_get_contents("toImport.txt");
$datas = mb_convert_encoding( $datas, 'UTF-8', 'UTF-16LE');
$datas = explode("\n",$datas);
//echo sizeof($datas);
//initialisation du tableau contenant toutes les valeurs
$liste = array();
$arbre = array();

/*echo "<pre>";
print_r($datas);
echo "</pre>";
*/
/******************************************* création du tableau listant toutes les données à récupérer *********************************************/
// on parcours le csv
for($i=1; $i<sizeof($datas); $i++){


			// On récupère les données de la ligne courante
			list($theme, $sous_theme, $mot_fr, $noyau, $genre, $mot_ch, $phrase_fr, $phrase_ch, $tag) = explode("\t", $datas[$i]);

			//incrémentation du tableau
			$liste[] = array("theme"=>$theme, "sous_theme"=>$sous_theme, "mot_fr" => $mot_fr, "noyau" => $noyau, "genre"=> $genre, "mot_ch"=>$mot_ch, "phrase_fr"=>$phrase_fr,"phrase_ch"=>$phrase_ch, "tag" =>$tag );
			
			$arbre[$theme][$sous_theme][] = array("mot_fr"=>$mot_fr,"phrase_fr"=>$phrase_fr,"mot_zh"=>$mot_ch,"phrase_zh"=>$phrase_ch,"tag"=>$tag);
			

	
}
/*************************************** fin création tableau ************************************************************************************/
/*
echo "<pre>";
print_r($liste);
echo "</pre>";

echo "<pre>";
print_r($arbre);
echo "</pre>";
*/
/******************************************** insertion ou mis à jour dans la bdd *************************************************************/
foreach($arbre as $theme => $value){
 //echo "<h1>".$theme."</h1>";
 
 //requete sql d'insertion
$sql_insert = "INSERT INTO structure SET parent ='0', identifier ='".$theme."'";

if(mysql_query($sql_insert)) echo $sql_insert."<br/>";
$last_id_theme = mysql_insert_id();
//echo $last_id_theme."<br/>";
 
 	foreach($arbre[$theme] as $sous_theme => $value){
 	//echo "<h3>".$sous_theme."</h3>";
 	
 	//requete sql d'insertion
	$sql_insert = "INSERT INTO structure SET parent ='".$last_id_theme."', identifier ='".$sous_theme."'";
	
	if(mysql_query($sql_insert)) echo $sql_insert."<br/>";
	$last_id_sous_theme = mysql_insert_id();
	//echo $last_id_sous_theme."<br/>";
 	
 		foreach($arbre[$theme][$sous_theme] as $word => $value){
 		//echo "<h6>".$value['mot_fr']."</h6>";
 		
 		//requete sql d'insertion
		$sql_insert = "INSERT INTO structure SET parent ='".$last_id_sous_theme."', identifier ='".$value['mot_fr']."'";
		if(mysql_query($sql_insert)) echo $sql_insert."<br/>";
			$id_to_elements = mysql_insert_id();
			$frElement = "INSERT INTO elements SET structureId='".$id_to_elements."', label='".$value['mot_fr']."', lang='fr-fra', content='<content></content>', phrase='".$value['phrase_fr']."'";
			$zhElement = "INSERT INTO elements SET structureId='".$id_to_elements."', label='".$value['mot_zh']."', lang='zh-zho', content='<content></content>', phrase='".$value['phrase_zh']."'";
			echo $frElement.'<br/>';
			echo $zhElement.'<br/>';
			mysql_query($frElement);
			mysql_query($zhElement);

			
 		}
 	}
 
 //echo "<hr>";
}
/******************************************* fin script d'insertion ou mise à jour ************************************************************/

?>
