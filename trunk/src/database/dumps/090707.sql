-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 07 Juillet 2009 à 21:04
-- Version du serveur: 5.1.30
-- Version de PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `ec25366`
--

-- --------------------------------------------------------

--
-- Structure de la table `elements`
--

CREATE TABLE IF NOT EXISTS `elements` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `structureId` int(14) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=5 ;

--
-- Contenu de la table `elements`
--

INSERT INTO `elements` (`id`, `structureId`, `identifier`, `label`, `lang`, `content`) VALUES
(1, 1, 'alimentation', 'Alimentation', 'fr-fra', ''),
(2, 3, 'alcool', 'Alcool', 'fr-fra', ''),
(3, 1, 'alimentation-en-pinyin', 'Alimentation en Pinyin', 'zh-zho', ''),
(4, 3, 'jiu-jing-shao-jiu', '酒精/烧酒', 'zh-zho', '<content>\r\n<pinyin>jiǔ jīng /shāo jiǔ</pinyin>\r\n</content>');

-- --------------------------------------------------------

--
-- Structure de la table `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` mediumint(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=5 ;

--
-- Contenu de la table `langs`
--

INSERT INTO `langs` (`id`, `parent`, `identifier`, `label`) VALUES
(1, 0, 'zh-zho', 'Chinois (en chinois)'),
(2, 0, 'fr-fra', 'Français'),
(3, 2, 'zh-zho', 'Chinois'),
(4, 1, 'fr-fra', 'Français');

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `structure`
--

INSERT INTO `structure` (`id`, `parent`, `identifier`) VALUES
(1, 0, 'alimentation'),
(2, 0, 'aller'),
(3, 1, 'alcool'),
(4, 1, 'boire'),
(5, 3, 'alcool'),
(6, 4, 'boisson');
