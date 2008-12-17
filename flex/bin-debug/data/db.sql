-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mar 16 Décembre 2008 à 17:31
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
  `langSourceId` varchar(7) NOT NULL,
  `langId` varchar(7) NOT NULL,
  `libSource` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Contenu de la table `lang_dest`
-- 

INSERT INTO `lang_dest` (`langSourceId`, `langId`, `libSource`) VALUES 
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

INSERT INTO `subtheme` (`id`, `lang`, `lib`, `idTheme`) VALUES 
(0, 'fr-fra', 'accessoire', 28),
(1, 'fr-fra', 'accompagner', 11),
(2, 'fr-fra', 'accord', 8),
(3, 'fr-fra', 'acheter', 6),
(4, 'fr-fra', 'activité', 7),
(5, 'fr-fra', 'agriculture', 7),
(6, 'fr-fra', 'aide', 7),
(7, 'fr-fra', 'aimer', 26),
(8, 'fr-fra', 'air', 23),
(9, 'fr-fra', 'alcool', 2),
(10, 'fr-fra', 'aller', 11),
(11, 'fr-fra', 'amphibien', 17),
(12, 'fr-fra', 'analyse', 10),
(13, 'fr-fra', 'animal', 17),
(14, 'fr-fra', 'année', 25),
(15, 'fr-fra', 'apparaître', 16),
(16, 'fr-fra', 'appartenir', 6),
(17, 'fr-fra', 'araignée', 17),
(18, 'fr-fra', 'arbre', 17),
(19, 'fr-fra', 'argent', 6),
(20, 'fr-fra', 'arme', 19),
(21, 'fr-fra', 'art', 5),
(22, 'fr-fra', 'arts', 29),
(23, 'fr-fra', 'assemblée', 4),
(24, 'fr-fra', 'astre', 23),
(25, 'fr-fra', 'athlétisme', 3),
(26, 'fr-fra', 'atome', 22),
(27, 'fr-fra', 'attention', 26),
(28, 'fr-fra', 'augmenter', 13),
(29, 'fr-fra', 'automobile', 11),
(30, 'fr-fra', 'autorité', 19),
(31, 'fr-fra', 'avion', 11),
(32, 'fr-fra', 'basket-ball', 3),
(33, 'fr-fra', 'bateau', 11),
(34, 'fr-fra', 'bateau / avion', 11),
(35, 'fr-fra', 'beau', 26),
(36, 'fr-fra', 'blessure', 15),
(37, 'fr-fra', 'boire', 2),
(38, 'fr-fra', 'bon', 26),
(39, 'fr-fra', 'bouche', 15),
(40, 'fr-fra', 'bouddhisme', 4),
(41, 'fr-fra', 'bouton', 9),
(42, 'fr-fra', 'boxe', 3),
(43, 'fr-fra', 'bébé', 1),
(44, 'fr-fra', 'carnivore', 17),
(45, 'fr-fra', 'carrosserie', 11),
(46, 'fr-fra', 'cause', 25),
(47, 'fr-fra', 'ceci', 10),
(48, 'fr-fra', 'cellule', 1),
(49, 'fr-fra', 'cent', 13),
(50, 'fr-fra', 'chaleur', 22),
(51, 'fr-fra', 'chance', 25),
(52, 'fr-fra', 'changer', 25),
(53, 'fr-fra', 'chaque', 13),
(54, 'fr-fra', 'chasse', 17),
(55, 'fr-fra', 'cheveu', 15),
(56, 'fr-fra', 'chiffre', 13),
(57, 'fr-fra', 'christianisme', 4),
(58, 'fr-fra', 'château', 14),
(59, 'fr-fra', 'cinéma', 29),
(60, 'fr-fra', 'cirque', 4),
(61, 'fr-fra', 'classe', 4),
(62, 'fr-fra', 'classe sociale', 4),
(63, 'fr-fra', 'coller', 24),
(64, 'fr-fra', 'commerce', 6),
(65, 'fr-fra', 'communication', 8),
(66, 'fr-fra', 'comprendre', 10),
(67, 'fr-fra', 'comptabilité', 6),
(68, 'fr-fra', 'compter', 13),
(69, 'fr-fra', 'conception', 1),
(70, 'fr-fra', 'confiance', 26),
(71, 'fr-fra', 'construire', 14),
(72, 'fr-fra', 'contenu', 24),
(73, 'fr-fra', 'continent', 23),
(74, 'fr-fra', 'corps', 15),
(75, 'fr-fra', 'couleur', 16),
(76, 'fr-fra', 'courage', 26),
(77, 'fr-fra', 'couture', 28),
(78, 'fr-fra', 'croire', 4),
(79, 'fr-fra', 'croissance', 15),
(80, 'fr-fra', 'crustacé', 17),
(81, 'fr-fra', 'cuisiner', 2),
(82, 'fr-fra', 'céréale', 17),
(83, 'fr-fra', 'danse', 29),
(84, 'fr-fra', 'date', 25),
(85, 'fr-fra', 'debout', 15),
(86, 'fr-fra', 'degré', 13),
(87, 'fr-fra', 'dent', 15),
(88, 'fr-fra', 'deux-roues', 11),
(89, 'fr-fra', 'devant', 24),
(90, 'fr-fra', 'devoir', 7),
(91, 'fr-fra', 'dieu', 4),
(92, 'fr-fra', 'dimension', 13),
(93, 'fr-fra', 'dire', 8),
(94, 'fr-fra', 'direction', 23),
(95, 'fr-fra', 'distance', 23),
(96, 'fr-fra', 'dix', 13),
(97, 'fr-fra', 'donner', 6),
(98, 'fr-fra', 'dormir', 15),
(99, 'fr-fra', 'durée', 25),
(100, 'fr-fra', 'début', 25),
(101, 'fr-fra', 'déchet', 22),
(102, 'fr-fra', 'décider', 10),
(103, 'fr-fra', 'eau', 22),
(104, 'fr-fra', 'enfant', 21),
(105, 'fr-fra', 'enseigner', 10),
(106, 'fr-fra', 'enthousiasme', 26),
(107, 'fr-fra', 'entreprise', 6),
(108, 'fr-fra', 'entrer', 11),
(109, 'fr-fra', 'environnement', 23),
(110, 'fr-fra', 'espace', 23),
(111, 'fr-fra', 'esprit', 4),
(112, 'fr-fra', 'espèce', 21),
(113, 'fr-fra', 'explosion', 22),
(114, 'fr-fra', 'exprimer', 8),
(115, 'fr-fra', 'faculté', 10),
(116, 'fr-fra', 'faire', 7),
(117, 'fr-fra', 'fait', 25),
(118, 'fr-fra', 'famille', 21),
(119, 'fr-fra', 'farine', 2),
(120, 'fr-fra', 'femme', 27),
(121, 'fr-fra', 'feu', 22),
(122, 'fr-fra', 'fierté', 26),
(123, 'fr-fra', 'finance', 6),
(124, 'fr-fra', 'fleur', 17),
(125, 'fr-fra', 'fonction', 9),
(126, 'fr-fra', 'football', 3),
(127, 'fr-fra', 'force', 22),
(128, 'fr-fra', 'forme', 29),
(129, 'fr-fra', 'fratrie', 21),
(130, 'fr-fra', 'frontière', 19),
(131, 'fr-fra', 'fruit', 2),
(132, 'fr-fra', 'fruit / légume', 2),
(133, 'fr-fra', 'fréquence', 25),
(134, 'fr-fra', 'fumer', 15),
(135, 'fr-fra', 'fusée', 11),
(136, 'fr-fra', 'félidé', 17),
(137, 'fr-fra', 'fête', 4),
(138, 'fr-fra', 'gaz', 22),
(139, 'fr-fra', 'glace', 22),
(140, 'fr-fra', 'grammaire', 8),
(141, 'fr-fra', 'grandeur', 13),
(142, 'fr-fra', 'groupe ', 27),
(143, 'fr-fra', 'guerre', 19),
(144, 'fr-fra', 'habiller', 28),
(145, 'fr-fra', 'habiter', 14),
(146, 'fr-fra', 'heure', 25),
(147, 'fr-fra', 'hindouisme', 4),
(148, 'fr-fra', 'homme', 27),
(149, 'fr-fra', 'humide', 22),
(150, 'fr-fra', 'hygiène', 15),
(151, 'fr-fra', 'héritage', 6),
(152, 'fr-fra', 'idée', 10),
(153, 'fr-fra', 'image', 16),
(154, 'fr-fra', 'immeuble', 14),
(155, 'fr-fra', 'impôt', 6),
(156, 'fr-fra', 'industrie', 7),
(157, 'fr-fra', 'informatique', 9),
(158, 'fr-fra', 'informer', 8),
(159, 'fr-fra', 'insecte', 17),
(160, 'fr-fra', 'institution', 4),
(161, 'fr-fra', 'instrument', 9),
(162, 'fr-fra', 'intellect', 10),
(163, 'fr-fra', 'internet', 8),
(164, 'fr-fra', 'islam', 4),
(165, 'fr-fra', 'jardin', 14),
(166, 'fr-fra', 'jeu', 3),
(168, 'fr-fra', 'jeu de cartes ', 3),
(169, 'fr-fra', 'jeu de société', 3),
(170, 'fr-fra', 'jeu vidéo', 3),
(171, 'fr-fra', 'jouet', 3),
(172, 'fr-fra', 'jour', 25),
(173, 'fr-fra', 'judaïsme', 4),
(174, 'fr-fra', 'juste', 26),
(175, 'fr-fra', 'justice', 19),
(176, 'fr-fra', 'lac et fleuve', 23),
(177, 'fr-fra', 'lait', 2),
(178, 'fr-fra', 'langue', 8),
(179, 'fr-fra', 'lapin', 17),
(180, 'fr-fra', 'lien', 8),
(181, 'fr-fra', 'lieu', 23),
(182, 'fr-fra', 'ligne', 13),
(183, 'fr-fra', 'liquide', 22),
(184, 'fr-fra', 'lire', 8),
(185, 'fr-fra', 'littérature', 29),
(186, 'fr-fra', 'lumière', 22),
(187, 'fr-fra', 'légume', 2),
(188, 'fr-fra', 'machine', 9),
(189, 'fr-fra', 'main', 15),
(190, 'fr-fra', 'maladie', 15),
(191, 'fr-fra', 'mammifère', 17),
(192, 'fr-fra', 'mammifère marin', 17),
(193, 'fr-fra', 'manger', 2),
(194, 'fr-fra', 'manière', 26),
(195, 'fr-fra', 'marcher', 11),
(196, 'fr-fra', 'mariage', 21),
(197, 'fr-fra', 'matière', 22),
(198, 'fr-fra', 'mer', 23),
(199, 'fr-fra', 'mesure', 13),
(200, 'fr-fra', 'meuble', 14),
(201, 'fr-fra', 'militaire', 19),
(202, 'fr-fra', 'minéral', 22),
(203, 'fr-fra', 'mois', 25),
(204, 'fr-fra', 'mollusque', 17),
(205, 'fr-fra', 'montagne', 23),
(206, 'fr-fra', 'monter', 11),
(207, 'fr-fra', 'morceau', 24),
(208, 'fr-fra', 'mort', 1),
(209, 'fr-fra', 'mot', 10),
(210, 'fr-fra', 'moteur', 11),
(211, 'fr-fra', 'mouvement', 11),
(212, 'fr-fra', 'muscle', 15),
(213, 'fr-fra', 'musique', 29),
(214, 'fr-fra', 'mâle', 27),
(215, 'fr-fra', 'média', 8),
(216, 'fr-fra', 'médicament', 15),
(217, 'fr-fra', 'mélanger', 22),
(218, 'fr-fra', 'mémoire', 10),
(219, 'fr-fra', 'métal', 22),
(220, 'fr-fra', 'météo', 23),
(221, 'fr-fra', 'même', 13),
(222, 'fr-fra', 'naissance', 1),
(223, 'fr-fra', 'natation', 3),
(224, 'fr-fra', 'nerf', 15),
(225, 'fr-fra', 'nez', 15),
(226, 'fr-fra', 'nom', 8),
(227, 'fr-fra', 'nombre', 13),
(228, 'fr-fra', 'objectif', 7),
(229, 'fr-fra', 'objet', 24),
(230, 'fr-fra', 'observer', 10),
(231, 'fr-fra', 'oiseau', 17),
(232, 'fr-fra', 'ongulé', 17),
(233, 'fr-fra', 'ordinal', 13),
(234, 'fr-fra', 'oreille', 15),
(235, 'fr-fra', 'organe', 15),
(236, 'fr-fra', 'organisme vivant', 1),
(237, 'fr-fra', 'os', 15),
(238, 'fr-fra', 'oui', 10),
(239, 'fr-fra', 'ouvrir', 24),
(240, 'fr-fra', 'panne', 9),
(241, 'fr-fra', 'parent', 21),
(242, 'fr-fra', 'partie', 3),
(243, 'fr-fra', 'payer', 6),
(244, 'fr-fra', 'pays', 19),
(245, 'fr-fra', 'peau', 15),
(246, 'fr-fra', 'peinture', 29),
(247, 'fr-fra', 'personne', 27),
(248, 'fr-fra', 'peuple', 27),
(249, 'fr-fra', 'peur', 26),
(250, 'fr-fra', 'phonétique', 8),
(251, 'fr-fra', 'pied', 15),
(252, 'fr-fra', 'pierre précieuse', 22),
(253, 'fr-fra', 'pièce', 14),
(254, 'fr-fra', 'plaisir', 26),
(255, 'fr-fra', 'poids', 22),
(256, 'fr-fra', 'poisson', 17),
(257, 'fr-fra', 'police', 19),
(258, 'fr-fra', 'politique', 19),
(259, 'fr-fra', 'ponctuation', 8),
(260, 'fr-fra', 'porter', 16),
(261, 'fr-fra', 'positif', 13),
(262, 'fr-fra', 'possession', 6),
(263, 'fr-fra', 'possible', 7),
(264, 'fr-fra', 'poste', 8),
(265, 'fr-fra', 'pour', 7),
(266, 'fr-fra', 'pouvoir', 19),
(267, 'fr-fra', 'prendre', 16),
(268, 'fr-fra', 'pression', 22),
(269, 'fr-fra', 'primate', 17),
(270, 'fr-fra', 'prix', 6),
(271, 'fr-fra', 'projet', 7),
(272, 'fr-fra', 'présence', 23),
(273, 'fr-fra', 'présent', 25),
(274, 'fr-fra', 'public', 4),
(275, 'fr-fra', 'pétrole', 22),
(276, 'fr-fra', 'pêche', 17),
(277, 'fr-fra', 'qualité', 6),
(278, 'fr-fra', 'question', 10),
(279, 'fr-fra', 'rang', 24),
(280, 'fr-fra', 'ranger', 24),
(281, 'fr-fra', 'rangée', 24),
(282, 'fr-fra', 'rayon', 22),
(283, 'fr-fra', 'regret', 26),
(284, 'fr-fra', 'rein', 15),
(285, 'fr-fra', 'relief', 23),
(286, 'fr-fra', 'religion', 4),
(287, 'fr-fra', 'repas', 2),
(288, 'fr-fra', 'représenter', 7),
(289, 'fr-fra', 'reptile', 17),
(290, 'fr-fra', 'respirer', 15),
(291, 'fr-fra', 'restaurant', 2),
(292, 'fr-fra', 'retour', 11),
(293, 'fr-fra', 'richesse', 6),
(294, 'fr-fra', 'rongeur', 17),
(295, 'fr-fra', 'rugby', 3),
(296, 'fr-fra', 'réel', 10),
(297, 'fr-fra', 'sacré', 4),
(298, 'fr-fra', 'saison', 23),
(299, 'fr-fra', 'salutation', 26),
(300, 'fr-fra', 'sang', 15),
(301, 'fr-fra', 'santé', 15),
(302, 'fr-fra', 'satisfaction', 26),
(303, 'fr-fra', 'saveur', 2),
(304, 'fr-fra', 'savoir', 10),
(305, 'fr-fra', 'science', 9),
(306, 'fr-fra', 'sculpture', 29),
(307, 'fr-fra', 'semaine', 25),
(308, 'fr-fra', 'sens', 15),
(309, 'fr-fra', 'sentiment', 26),
(310, 'fr-fra', 'sentir', 16),
(311, 'fr-fra', 'sexe', 15),
(312, 'fr-fra', 'signe', 10),
(313, 'fr-fra', 'ski', 3),
(314, 'fr-fra', 'société', 4),
(315, 'fr-fra', 'soi', 27),
(316, 'fr-fra', 'sol', 23),
(317, 'fr-fra', 'solide', 22),
(318, 'fr-fra', 'son', 16),
(319, 'fr-fra', 'souffrir', 26),
(320, 'fr-fra', 'sous-vêtement', 28),
(321, 'fr-fra', 'souterrain', 23),
(322, 'fr-fra', 'sport', 3),
(323, 'fr-fra', 'sucrerie', 2),
(324, 'fr-fra', 'surface', 13),
(325, 'fr-fra', 'technique', 9),
(326, 'fr-fra', 'temps', 25),
(327, 'fr-fra', 'tennis', 3),
(328, 'fr-fra', 'terre', 23),
(329, 'fr-fra', 'textile', 28),
(330, 'fr-fra', 'théorie', 10),
(331, 'fr-fra', 'théâtre', 29),
(332, 'fr-fra', 'tissu', 28),
(333, 'fr-fra', 'titre', 19),
(334, 'fr-fra', 'toucher', 16),
(335, 'fr-fra', 'tout', 13),
(336, 'fr-fra', 'train', 11),
(337, 'fr-fra', 'transport', 11),
(338, 'fr-fra', 'travail', 7),
(339, 'fr-fra', 'tuer', 1),
(340, 'fr-fra', 'tâche', 7),
(341, 'fr-fra', 'télécommunication', 8),
(342, 'fr-fra', 'télécommunications', 8),
(343, 'fr-fra', 'téléphone', 8),
(344, 'fr-fra', 'tête', 15),
(345, 'fr-fra', 'tôt', 25),
(346, 'fr-fra', 'univers', 23),
(347, 'fr-fra', 'ustensile', 2),
(348, 'fr-fra', 'variable', 13),
(349, 'fr-fra', 'vendre', 6),
(350, 'fr-fra', 'ventre', 15),
(351, 'fr-fra', 'viande', 2),
(352, 'fr-fra', 'vie', 1),
(353, 'fr-fra', 'ville', 14),
(354, 'fr-fra', 'vingt', 13),
(355, 'fr-fra', 'vitesse', 11),
(356, 'fr-fra', 'voie', 14),
(357, 'fr-fra', 'voir', 16),
(358, 'fr-fra', 'voix', 16),
(359, 'fr-fra', 'volume', 13),
(360, 'fr-fra', 'vouloir', 7),
(361, 'fr-fra', 'voyager', 11),
(362, 'fr-fra', 'végétal', 17),
(363, 'fr-fra', 'vêtement', 28),
(364, 'fr-fra', 'âge', 1),
(365, 'fr-fra', 'échecs', 3),
(366, 'fr-fra', 'économie', 6),
(367, 'fr-fra', 'écrire', 8),
(368, 'fr-fra', 'édifice', 14),
(369, 'fr-fra', 'électricité', 22),
(370, 'fr-fra', 'électroménager', 14),
(371, 'fr-fra', 'électronique', 9),
(372, 'fr-fra', 'élevage', 17),
(373, 'fr-fra', 'élément', 13),
(374, 'fr-fra', 'énergie', 22),
(375, 'fr-fra', 'état', 19),
(376, 'fr-fra', 'éthique', 4),
(377, 'fr-fra', 'évoluer', 7),
(378, 'fr-fra', 'œil', 15);

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
