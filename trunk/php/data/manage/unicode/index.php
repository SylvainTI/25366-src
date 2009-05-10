<?php
/* 
Thierry, c'est une lecture du fichier data_unicode.txt.
Les caractères chinois ne se voient pas avec notepad++ (probablement un souci de substitution typo)
mais ils se voient avec wordpad ou un firefox
L'astuce, c'est la conversion utf-16 little endian vers utf-8
Sans ça, rien ne marche bien
Arnaud
*/
header('Content-type: text/html; charset=UTF-8');
$file = file_get_contents("data_unicode.txt");
$file = mb_convert_encoding( $file, 'UTF-8', 'UTF-16LE'); // Excel fait de l'utf 16 little endian, on convertit en utf-8
$lines = explode("\n",$file);
$themes = array();
$subthemes = array();
$words = array();
$words_list = array();
$subthemes_list = array();

$i = $j = $k = 0;
require_once('../../config/config.php');

foreach ($lines as $nb_line => $line){
	$data = explode("	",$line);
	##  extraction des thèmes
	if (!in_array($data[0], $themes)) {
		$i++;
		$themes[$i] = $data[0];
		//$db->query("INSERT INTO `theme` (`id`, `lib`, `lang`) VALUES ('$i','{$themes[$i]}','fr-fra')");		
	}
	if (!in_array($data[1], $subthemes_list)) {
		$j++;
		$subthemes_list[$j] = $data[1];
		$subthemes[$j]['subtheme'] = $data[1];
		$subthemes[$j]['theme'] = $data[0];
		$subthemes[$j]['chinois'] = $data[5];
		// récupération de la clé du thème pour le sous-thèmes
		$subthemes[$j]['theme_id'] = $i;
		//$db->query("INSERT INTO `subtheme` (`id`, `lib`, `lang`, `idTheme`) VALUES ('$j','{$subthemes[$j]['subtheme']}','fr-fra', '{$subthemes[$j]['theme_id']}')");		
	}
	if (!in_array($data[2], $words_list)) {
		$k++;
		$words_list[$k] = $data[2];
		$words[$k]['subtheme'] = $data[1];
		$words[$k]['theme'] = $data[0];
		$words[$k]['word'] = $data[2];
		$words[$k]['genre'] = $data[4];
		$words[$k]['chinois'] = $data[5];
		$words[$k]['phrase'] = $data[6];
		$words[$k]['phrase_c'] = $data[7];
		$words[$k]['tags'] = $data[8];
		// récupération de la clé du sous-themes pour le mot
		$words[$k]['subtheme_id'] = $j;
		//$db->query("INSERT INTO `word` (`id`, `lib`, `lang`, `definition`, `genre`, `idSubtheme`, `tags`) VALUES ('$k','{$words[$k]['chinois']}','zh-zho', '{$words[$k]['phrase_c']}', '', '{$words[$k]['subtheme_id']}', '')");
		//$db->query("INSERT INTO `word` (`id`, `lib`, `lang`, `definition`, `genre`, `idSubtheme`, `tags`) VALUES ('$k','{$words[$k]['word']}','fr-fra', '{$words[$k]['phrase']}', '{$words[$k]['genre']}', '{$words[$k]['subtheme_id']}', '{$words[$k]['tags']}')");
	}
	echo "$i - $j - $k - {$themes[$i]} - {$subthemes[$j]['subtheme']} - {$words[$k]['word']}<br/>";
}
$i=0;
//*/
//sort($themes);
//sort($subthemes);
//sort($words);

//*/

/* Insertion des sous-thèmes dans la base
	foreach ($subthemes as $key => $subtheme) {
			$db->query("INSERT INTO `subtheme` (`id`, `lib`, `lang`, `idTheme`) VALUES ('$key','{$subthemes[$key]['subtheme']}','fr-fra', '{$subthemes[$key]['theme_id']}')");		
	}
//*/

		/* nettoyage clé thème
		if ($subthemes[$key] == '') unset($subthemes[$key]);
		if ($subthemes[$key] == ' ') unset($subthemes[$key]);
		
		$subthemes[$key] = str_replace("\n", '', $subthemes[$key]);
		$subthemes[$key] = str_replace("\r", '', $subthemes[$key]);
		$subthemes[$key] = str_replace("\t", '', $subthemes[$key]);
		$subthemes[$key] = str_replace(" ", '', $subthemes[$key]);
		if ($subthemes[$key] != '' && $subthemes[$key] != ' ') {
		//*/

	//echo count($subthemes);
	//echo count($lines);
	//echo (print_r($themes, true));
	//echo (print_r($subthemes, true));
	//echo (print_r($words, true));

?>