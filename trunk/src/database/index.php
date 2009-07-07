<?
require '../../bin/public/data/config.req.php';
mysql_connect($config->server, $config->user, $config->password);
mysql_select_db($config->db);
mysql_query('SET NAMES UTF8');
mysql_query('SET CHARACTER SET UTF8');

$converter = new Converter();
$converter->convert('langs/fr-fra.csv');