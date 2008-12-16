-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mar 16 Décembre 2008 à 11:23
-- Version du serveur: 5.0.45
-- Version de PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de données: `25366src`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `lang_dest`
-- 

DROP TABLE IF EXISTS `lang_dest`;
CREATE TABLE IF NOT EXISTS `lang_dest` (
  `lang_source_id` varchar(7) NOT NULL,
  `lang_id` varchar(7) NOT NULL,
  `lib_source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `lang_dest`
-- 

INSERT INTO `lang_dest` (`lang_source_id`, `lang_id`, `lib_source`) VALUES 
('fr-fra', 'zh-zho', 'chinois');

-- --------------------------------------------------------

-- 
-- Structure de la table `lang_source`
-- 

DROP TABLE IF EXISTS `lang_source`;
CREATE TABLE IF NOT EXISTS `lang_source` (
  `id` varchar(7) NOT NULL,
  `lib` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `lang_source`
-- 

INSERT INTO `lang_source` (`id`, `lib`) VALUES 
('fr-fra', 'français');

-- --------------------------------------------------------

-- 
-- Structure de la table `subtheme`
-- 

DROP TABLE IF EXISTS `subtheme`;
CREATE TABLE IF NOT EXISTS `subtheme` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `lib` varchar(50) NOT NULL,
  `idTheme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `subtheme`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `theme`
-- 

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `lib` varchar(60) NOT NULL,
  `image` varchar(50) NOT NULL default 'key.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `theme`
-- 

INSERT INTO `theme` (`id`, `lang`, `lib`, `image`) VALUES 
(1, 'fr-fra', 'vie', 'vie.png'),
(2, 'fr-fra', 'alimentation', 'alimentation.png'),
(3, 'fr-fra', 'jeu & sport', 'jeu.png'),
(4, 'fr-fra', 'société', 'societe.png'),
(5, 'fr-fra', 'art', 'art.png'),
(6, 'fr-fra', 'commerce', 'commerce.png'),
(7, 'fr-fra', 'faire', 'faire.png'),
(8, 'fr-fra', 'communication', 'communication.png'),
(9, 'fr-fra', 'science', 'science.png'),
(10, 'fr-fra', 'intellect', 'intellect.png'),
(11, 'fr-fra', 'aller', 'aller.png'),
(13, 'fr-fra', 'nombre', 'nombre.png'),
(14, 'fr-fra', 'édifice', 'edifice.png'),
(15, 'fr-fra', 'corps', 'corps.png'),
(16, 'fr-fra', 'sens', 'sens.png'),
(17, 'fr-fra', 'végétaux & animaux', 'vegetaux.png'),
(18, 'fr-fra', 'manger', 'manger.png'),
(19, 'fr-fra', 'pouvoir', 'pouvoir.png'),
(20, 'fr-fra', 'militaire', 'militaire.png'),
(21, 'fr-fra', 'famille', 'famille.png'),
(22, 'fr-fra', 'matière', 'matiere.png'),
(23, 'fr-fra', 'espace', 'espace.png'),
(24, 'fr-fra', 'objet', 'objet.png'),
(25, 'fr-fra', 'temps', 'temps.png'),
(26, 'fr-fra', 'sentiment', 'sentiment.png'),
(27, 'fr-fra', 'homme', 'homme.png'),
(28, 'fr-fra', 'textile', 'textile.png'),
(29, 'fr-fra', 'arts', 'arts.png');

-- --------------------------------------------------------

-- 
-- Structure de la table `word`
-- 

DROP TABLE IF EXISTS `word`;
CREATE TABLE IF NOT EXISTS `word` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `lib` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `genre` varchar(50) NOT NULL,
  `idSubtheme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `word`
-- 

