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
echo "<table>";
foreach ($lines as $line){
	echo "<tr>";
	$values = explode("	",$line);
	foreach ($values as $value){
		echo "<td>".$value."</td>";
	}
	echo "</tr>";
}
echo "</table>";
?>