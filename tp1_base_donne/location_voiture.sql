-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 20 Novembre 2023 à 16:25
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `nCIN` varchar(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` int(11) NOT NULL,
  PRIMARY KEY (`nCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`nCIN`, `nom`, `prenom`, `date_naissance`, `adresse`) VALUES
('755454', 'BAbjdkf', 'HILFm', '2023-11-02', 2),
('78674856', 'Batiste', 'Mathieu', '2023-11-08', 2),
('78757857', 'Adam', 'Bam', '2023-11-07', 2);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `code_location` varchar(50) NOT NULL,
  `date_location` date NOT NULL,
  `prix_jour` int(11) NOT NULL,
  `duree` int(11) NOT NULL,
  `caution` int(11) NOT NULL,
  `code_client` varchar(50) NOT NULL,
  `immatriculation` varchar(50) NOT NULL,
  PRIMARY KEY (`code_location`),
  KEY `code_client` (`code_client`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--


-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(11) NOT NULL,
  `carburant` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `nbre_porte` int(11) NOT NULL,
  `etat` text NOT NULL,
  `nbre_place` int(11) NOT NULL,
  `annee_circulation` int(11) NOT NULL,
  `marque` varchar(50) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `carburant`, `couleur`, `kilometrage`, `modele`, `nbre_porte`, `etat`, `nbre_place`, `annee_circulation`, `marque`) VALUES
('12 TU 2000', 'gazoil', 'noir', 45, 'renaud', 6, 'bonne état', 0, 0, ''),
('16 RR 3000', 'petrole', 'rouge', 90, 'peugeot', 4, 'reconditioné', 0, 0, '');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`code_client`) REFERENCES `clients` (`nCIN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
