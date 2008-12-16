<?
/* 
Thierry, c'est une lecture du fichier data_unicode.txt.
Les caractères chinois ne se voient pas avec notepad++ (probablement un souci de substitution typo)
mais ils se voient avec wordpad ou un firefox
L'astuce, c'est la conversion utf-16 little endian vers utf-8
Sans ça, rien ne marche bien
Arnaud
*/
header('Content-type: text/html; charset=UTF-8');
$data = file_get_contents("data_unicode.txt");
$data = mb_convert_encoding( $data, 'UTF-8', 'UTF-16LE'); // Excel fait de l'utf 16 little endian, on convertit en utf-8
$lines = explode("\r",$data);
$themes = array();
$subthemes = array();
$words = array();
$words_list = array();
$subthemes_list = array();
echo "<table>";
foreach ($lines as $line){
	$values = explode("	",$line);
/*
	echo "<tr>";
	foreach ($values as $value){
		echo "<td>".$value."</td>";
	}
	echo "</tr>";
//*/
	// extraction des thèmes
	if (!in_array($values[0], $themes)) {
		$themes[] = $values[0];
	}

}
echo "</table>";
$i=0;
/*
foreach ($lines as $line) {
	$data = explode("	", $line);
	$i++;
	if (!in_array($data[1], $subthemes_list)) {
		$subthemes_list[] = $data[1];
		$subthemes[$i]['subtheme'] = $data[1];
		$subthemes[$i]['theme'] = $data[0];
		$subthemes[$i]['chinois'] = $data[5];
		// récupération de la clé du thème pour le sous-thèmes
		foreach ($themes as $key => $theme) {
			if ($data[0] ==  $theme) {
				$subthemes[$i]['theme_id'] = $key;
			}
		}
	}

}
//*/
/*
$i=0;
// extraction des mots
foreach ($lines as $line) {
	$data = explode("	", $line);
	$i++;
	if (!in_array($data[2], $words_list)) {
		$words_list[] = $data[2];
		$words[$i]['subtheme'] = $data[1];
		$words[$i]['theme'] = $data[0];
		$words[$i]['word'] = $data[2];
		$words[$i]['chinois'] = $data[5];
		// récupération de la clé du sous-themes pour le mot
		foreach ($subthemes as $key => $subtheme) {
			if ($data[1] ==  $subtheme['subtheme']) {
				$words[$i]['subtheme_id'] = $key;
			}
		}
	}

}
//*/
require_once('../config/config.php');
//$db
	foreach ($themes as $key => $theme) {
		if ($themes[$key] == '') unset($themes[$key]);
		if ($themes[$key] == ' ') unset($themes[$key]);
		$themes[$key] = str_replace("\n", '', $themes[$key]);
		$themes[$key] = str_replace("\r", '', $themes[$key]);
		$themes[$key] = str_replace("\t", '', $themes[$key]);
		$themes[$key] = str_replace(" ", '', $themes[$key]);
		if ($themes[$key] != '' && $themes[$key] != ' ') {
			$db->query("INSERT INTO `theme` (`id`, `lib`, `lang`) VALUES ('$key','{$themes[$key]}','fr-fra')");
		}
	}
	sort($themes);
	sort($subthemes);
	sort($words);
	//echo count($subthemes);
	//echo count($lines);
	echo (print_r($themes, true));
	//echo (print_r($subthemes, true));
	//echo (print_r($words, true));

?>