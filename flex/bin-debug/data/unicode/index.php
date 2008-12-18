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
$lines = explode("\r\n",$data);
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
//*
foreach ($lines as $line) {
	$data = explode("	", $line);
	$i++;
	if (!in_array($data[1], $subthemes_list)) {
		$subthemes_list[] = $data[1];
		//$subthemes[$data[1]] = $i;
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
//*
$i=0;
// extraction des mots
echo count($subthemes).'<br/>';
foreach ($lines as $line) {
	$data = explode("	", $line);
	$i++;
	if (!in_array($data[2], $words_list)) {
		$words_list[] = $data[2];
		$words[$i]['subtheme'] = $data[1];
		$words[$i]['theme'] = $data[0];
		$words[$i]['word'] = $data[2];
		$words[$i]['genre'] = $data[4];
		$words[$i]['chinois'] = $data[5];
		$words[$i]['phrase'] = $data[6];
		$words[$i]['phrase_c'] = $data[7];
		//$words[$i]['subtheme_id'] = $subthemes[$data[1]];
		// récupération de la clé du sous-themes pour le mot
		//*
		$j=0;
		foreach ($subthemes as $subtheme) {
			$j++;
			//echo count($subthemes).'<br/>';
			//echo ($data[1].' = '.$subtheme['subtheme']."<br/>\n");
			if ($data[1] ==  $subtheme['subtheme']) {
				//echo $subthemes[$subtheme['subtheme']].'<br/>';
				$words[$i]['subtheme_id'] = $j;
				break;

			}
		}
		//*/
	}
}
$i=0;
//*/
require_once('../config/config.php');
sort($themes);
sort($subthemes);
sort($words);
/* insertion des mots dans la base
foreach ($words as $key => $word) {
$i++;
			$db->query("INSERT INTO `word` (`id`, `lib`, `lang`, `definition`, `genre`, `idSubtheme`) VALUES ('$i','{$words[$key]['chinois']}','zh-zho', '{$words[$key]['phrase_c']}', '', '{$words[$key]['subtheme_id']}')");
			//echo("INSERT INTO `word` (`id`, `lib`, `lang`, `definition`, `genre`, `idSubtheme`) VALUES ('$i','{$words[$key]['word']}','fr-fra', '{$words[$key]['phrase']}', '{$words[$key]['genre']}', '{$words[$key]['subtheme_id']}')".'<br/>');
}
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
	echo (print_r($words, true));

?>