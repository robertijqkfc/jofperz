-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 18 Décembre 2023 à 17:59
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_commune`
--

CREATE TABLE IF NOT EXISTS `table_commune` (
  `code_commune` int(8) NOT NULL,
  `nom_commune` varchar(20) NOT NULL,
  `population_VF` int(11) DEFAULT NULL,
  `surface` int(10) NOT NULL,
  `longitude` int(10) NOT NULL,
  `latitutde` int(10) NOT NULL,
  `num_departement` int(10) NOT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_commune`
--

INSERT INTO `table_commune` (`code_commune`, `nom_commune`, `population_VF`, `surface`, `longitude`, `latitutde`, `num_departement`) VALUES
(75013, 'Paris', 1500000, 4564541, 75456, 45614, 75),
(91540, 'Egly', 453144, 475641, 45646, 486, 91);

-- --------------------------------------------------------

--
-- Structure de la table `table_departement`
--

CREATE TABLE IF NOT EXISTS `table_departement` (
  `num_departement` int(11) NOT NULL,
  `nom_departement` varchar(50) NOT NULL,
  `code_region` varchar(50) NOT NULL,
  PRIMARY KEY (`num_departement`),
  KEY `code_region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_departement`
--

INSERT INTO `table_departement` (`num_departement`, `nom_departement`, `code_region`) VALUES
(75, 'Paris', '75A'),
(91, 'Essone2', '76A');

-- --------------------------------------------------------

--
-- Structure de la table `table_region`
--

CREATE TABLE IF NOT EXISTS `table_region` (
  `code_region` varchar(20) NOT NULL,
  `nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_region`
--

INSERT INTO `table_region` (`code_region`, `nom_region`) VALUES
('75A', 'Ile-de-France'),
('76A', 'Haut-de-France');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table_commune`
--
ALTER TABLE `table_commune`
  ADD CONSTRAINT `table_commune_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `table_departement` (`num_departement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `table_departement`
--
ALTER TABLE `table_departement`
  ADD CONSTRAINT `table_departement_ibfk_1` FOREIGN KEY (`code_region`) REFERENCES `table_region` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
