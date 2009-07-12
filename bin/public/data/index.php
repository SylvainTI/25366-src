<?
require 'config.req.php';
mysql_connect($config->server, $config->user, $config->password);
mysql_select_db($config->db);
mysql_query('SET NAMES UTF8');
mysql_query('SET CHARACTER SET UTF8');



// TODO cross script possible
header('Content-type: application/xml; charset="utf-8"');
echo ('<?xml version="1.0" encoding="utf-8" ?>');
require $_GET["action"] . '.req.php';


