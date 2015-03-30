# Introduction #

Le dataprovider est situé dans /trunk/flex/bin-debug/data/


# Details #

  * **'index.php'**
    * charge le xml en fonction des paramètres
    * si param use\_db=true on utilise les fichiers qui sont dans actions
    * si pas le paramètre use\_db (ou = false) on utilise les fichiers qui sont dans actions\_fix
    * les fichiers dans actions\_fix ne renvoie pas de données de la BDD (c'est des xml fixes)

  * les fichiers **'data.xml'** et **'keys.xml'** : je ne sais pas si ils sont toujours utilisés si ce n'est pas le cas on a oublié de les supprimer

  * Répertoire **'config'**
    * contient la configuration de la connexion au serveur MySQL
    * script (commenté donc non exécuté) d'installation du dump mysql (**'db/db.sql'**)

  * Répertoire **'db'**
    * contient le dump mysql avec toutes les clés, sous-clés et mots du xls
    * (est un peu lourd à charger, à faire en plusieurs fois)

  * Répertoire **'lib'**
    * Contient le singleton PDO::DatabaseManager pour la connexion et les requêtes MySQL

  * Répertoire **'manage'**
    * il y a tout ce qui concerne l'intégration du xls dans la base de donnée (l'ancien import csv)
    * dans le dossier unicode le nouvel import avec conservation des idéogrammes
    * pourra contenir le futur backoffice

  * Répertoire **'media'**
    * contient les images des clés et les images utilisé dans l'applis flex


# Détails des réponses aux requêtes du DP #
## http://localhost/svn/25366/data/?action=themes&langSource=fr-fra ##
```
	<?xml version="1.0" encoding="utf-8" ?>
	<themes>
		<theme>
			<id>0</id>
			<lang>fr-fra</lang>
			<lib><![CDATA[vie]]></lib>
		</theme>
		<theme>

			<id>1</id>
			<lang>fr-fra</lang>
			<lib><![CDATA[alimentation]]></lib>
		</theme>
		<theme>
			<id>2</id>
			<lang>fr-fra</lang>

			<lib><![CDATA[espace]]></lib>
		</theme>
	</themes>
```

## http://localhost/svn/25366/data/?action=subthemes&langSource=fr-fra&langDest=zh-zho&themeId=1 ##
```
	<?xml version="1.0" encoding="utf-8" ?>
	<subthemes>
		<subtheme>
			<id>0</id>
			<source>
				<lang>fr-fra</lang>
				<lib><![CDATA[début]]></lib>
				<genre><![CDATA[m.]]></genre>
			</source>
			<destination>
				<lang>zh-zho</lang>
				<lib><![CDATA['début' en chinois]]></lib>
				<genre><![CDATA[genre dans la langue de destination]]></genre>
			</destination>
		</subtheme>
		<subtheme>
			<id>1</id>
			<source>
				<lang>fr-fra</lang>
				<lib><![CDATA[durée]]></lib>
				<genre><![CDATA[m.]]></genre>
			</source>
			<destination>
				<lang>zh-zho</lang>
				<lib><![CDATA['durée' en chinois]]></lib>
				<genre><![CDATA[genre dans la langue de destination]]></genre>
			</destination>
		</subtheme>
	</subthemes>
```

## http://localhost/svn/25366/data/?action=words&langSource=fr-fra&langDest=zh-zho&subthemeId=2 ##
> subtheme 2 est la durée
```
	<?xml version="1.0" encoding="utf-8" ?>
	<words>
		<word>
			<id>0</id>
			<source>
				<lang>fr-fra</lang>
				<lib><![CDATA[initiale]]></lib>
				<genre><![CDATA[f.]]></genre>
			</source>
			<destination>
				<lang>zh-zho</lang>
				<lib><![CDATA['initiale' en chinois]]></lib>
				<genre><![CDATA[genre dans la langue de destination]]></genre>
			</destination>
		</word>
		<word>
			<id>0</id>
			<source>
				<lang>fr-fra</lang>
				<lib><![CDATA[initiative]]></lib>
				<genre><![CDATA[f.]]></genre>
			</source>
			<destination>
				<lang>zh-zho</lang>
				<lib><![CDATA['initiative' en chinois]]></lib>
				<genre><![CDATA[genre dans la langue de destination]]></genre>
			</destination>
		</word>
	</words>
```

## http://localhost/svn/25366/data/index.php?action=search&q=mot_recherché ##
> subtheme 2 est la durée



# Structure BDD MySQL #

## Repères historiques ##
```
-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Jeu 18 Décembre 2008 à 05:10
-- Version du serveur: 5.0.45
-- Version de PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de données: `25366`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `historical_marks`
-- 

CREATE TABLE `historical_marks` (
  `id` int(4) NOT NULL,
  `date` bigint(20) NOT NULL,
  `events_id` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `historical_marks`
-- 

INSERT INTO `historical_marks` (`id`, `date`, `events_id`) VALUES 
(17, 50, ''),
(18, 100, ''),
(19, 150, ''),
(20, 200, ''),
(21, 250, ''),
(22, 300, ''),
(23, 350, ''),
(24, 400, ''),
(25, 450, ''),
(26, 500, ''),
(27, 550, ''),
(28, 600, ''),
(29, 650, ''),
(30, 700, ''),
(31, 750, ''),
(32, 800, ''),
(33, 850, ''),
(34, 900, ''),
(35, 950, ''),
(36, 1000, ''),
(37, 1025, ''),
(38, 1050, ''),
(39, 1075, ''),
(40, 1100, ''),
(41, 1125, ''),
(42, 1150, ''),
(43, 1175, ''),
(44, 1200, ''),
(45, 1225, ''),
(46, 1250, ''),
(47, 1275, ''),
(48, 1300, ''),
(49, 1325, ''),
(50, 1350, ''),
(51, 1375, ''),
(52, 1400, ''),
(53, 1425, ''),
(54, 1450, ''),
(55, 1475, ''),
(56, 1500, ''),
(57, 1525, ''),
(58, 1550, ''),
(59, 1575, ''),
(60, 1600, ''),
(61, 1625, ''),
(62, 1650, ''),
(63, 1675, ''),
(64, 1700, ''),
(65, 1725, ''),
(66, 1750, ''),
(67, 1775, ''),
(68, 1800, ''),
(69, 1810, ''),
(70, 1820, ''),
(71, 1830, ''),
(72, 1840, ''),
(73, 1850, ''),
(74, 1860, ''),
(75, 1870, ''),
(76, 1880, ''),
(77, 1890, ''),
(78, 1900, ''),
(79, 1910, ''),
(80, 1915, ''),
(81, 1920, ''),
(82, 1925, ''),
(83, 1930, ''),
(84, 1935, ''),
(85, 1940, ''),
(86, 1945, ''),
(87, 1950, ''),
(88, 1955, ''),
(89, 1960, ''),
(90, 1965, ''),
(91, 1970, ''),
(92, 1975, ''),
(93, 1980, ''),
(94, 1985, ''),
(95, 1990, ''),
(96, 1995, ''),
(97, 2000, ''),
(98, 2005, ''),
(99, 2010, ''),
(100, 2010, ''),
(1, -1000000, ''),
(2, -100000, ''),
(3, -10000, ''),
(4, -5000, ''),
(5, -2000, ''),
(6, -1000, ''),
(7, -900, ''),
(8, -800, ''),
(9, -700, ''),
(10, -600, ''),
(11, -500, ''),
(12, -400, ''),
(13, -300, ''),
(14, -200, ''),
(15, -100, ''),
(16, 0, '');
```

## Evénements historiques ##

```
-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Jeu 18 Décembre 2008 à 05:09
-- Version du serveur: 5.0.45
-- Version de PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de données: `25366`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `historical_events`
-- 

CREATE TABLE `historical_events` (
  `id` int(11) NOT NULL auto_increment,
  `marks_id` int(11) NOT NULL,
  `event_type` varchar(15) NOT NULL default 'basic',
  `date_type` varchar(15) NOT NULL default 'single',
  `from_date` double NOT NULL,
  `to_date` double NOT NULL,
  `description` text NOT NULL,
  `link` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Contenu de la table `historical_events`
-- 

INSERT INTO `historical_events` (`id`, `marks_id`, `event_type`, `date_type`, `from_date`, `to_date`, `description`, `link`) VALUES 
(1, 83, 'basic', 'single', 1927, 0, 'Henri Bergson, prix Nobel de littérature', 0),
(2, 83, 'basic', 'single', 1929, 0, 'Krach boursier à New York (Jeudi Noir)', 0),
(3, 84, 'basic', 'single', 1931, 0, 'Paul Doumer - Président', 0),
(4, 84, 'basic', 'single', 1932, 0, 'Albert Lebrun - Président', 0),
(5, 84, 'basic', 'single', 1933, 0, 'Début de l''affaire Stavisky (scandale financier)', 0),
(6, 84, 'basic', 'single', 1933, 0, 'Hitler devient Chancelier en Allemagne', 0),
(7, 84, 'basic', 'single', 1933, 0, 'Un barbare en Asie d’Henri Michaux', 0),
(8, 85, 'basic', 'single', 1936, 0, 'Le Front populaire remporte les élections législatives – série de réformes sociales', 0),
(9, 85, 'basic', 'single', 1939, 0, 'Hitler envahit la Pologne', 0),
(10, 85, 'basic', 'single', 1940, 0, '17 juin : Appel radiophonique du maréchal Pétain à cesser le combat – Pétain, chef de l’état', 0),
(11, 85, 'basic', 'single', 1940, 0, '18 juin : Appel à la résistance du général De Gaulle réfugié à Londres.', 0),
(12, 86, 'basic', 'single', 1943, 0, 'Publication de l’Être et le Néant de Jean-Paul Sartre - Publication du Petit Prince d’Antoine de Saint-Exupéry', 0),
(13, 86, 'basic', 'single', 1943, 0, 'Conseil national de la résistance avec Jean Moulin', 0),
(14, 86, 'basic', 'single', 1944, 0, 'Charles de Gaulle – gouvernement provisoire', 0);


```