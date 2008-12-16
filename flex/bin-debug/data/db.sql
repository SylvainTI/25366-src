-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mar 16 Décembre 2008 à 09:36
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

CREATE TABLE `lang_dest` (
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

CREATE TABLE `lang_source` (
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

CREATE TABLE `subtheme` (
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

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `lib` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `theme`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `word`
-- 

CREATE TABLE `word` (
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

