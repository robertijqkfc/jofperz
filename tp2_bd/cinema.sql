-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 20 Novembre 2023 à 17:37
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `idRealisateur` varchar(50) NOT NULL,
  `nom` int(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `anne_naiss` date NOT NULL,
  PRIMARY KEY (`idRealisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`idRealisateur`, `nom`, `prenom`, `anne_naiss`) VALUES
('Mzhife', 0, 'Elair', '1998-11-10');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `idFilm` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `annee` date NOT NULL,
  `genre` varchar(50) NOT NULL,
  `resume` text NOT NULL,
  `idRealisateur` varchar(50) NOT NULL,
  `codePays` varchar(50) NOT NULL,
  PRIMARY KEY (`idFilm`),
  KEY `codePays` (`codePays`),
  KEY `idRealisateur` (`idRealisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`idFilm`, `titre`, `annee`, `genre`, `resume`, `idRealisateur`, `codePays`) VALUES
('Bukfgg50 ', 'Star Wars', '2009-11-11', 'Action , Fantasy , Guerre', ' dhgilgoergnkg bobjrobhb', 'Mzhife', 'HIHOIGB 4 l');

-- --------------------------------------------------------

--
-- Structure de la table `internaute`
--

CREATE TABLE IF NOT EXISTS `internaute` (
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `internaute`
--

INSERT INTO `internaute` (`email`, `nom`, `prenom`, `region`) VALUES
('grligrn@gmail.com', 'shkflrg', 'ojgg', 'Mongolie'),
('hifg@gmail.com', 'Adam', 'Bam', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `id_notation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_film` varchar(50) NOT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`id_notation`),
  KEY `email` (`email`,`id_film`),
  KEY `id_film` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notation`
--

INSERT INTO `notation` (`id_notation`, `email`, `id_film`, `note`) VALUES
('EDFIMG 5 OJG', 'hifg@gmail.com', 'Bukfgg50', 18),
('HIOG 4 G', 'grligrn@gmail.com', 'Bukfgg50', 15);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `code_pays` varchar(50) NOT NULL,
  `nom` int(50) NOT NULL,
  `langue` varchar(50) NOT NULL,
  PRIMARY KEY (`code_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`code_pays`, `nom`, `langue`) VALUES
('HIHOIGB 4 l', 0, 'FR');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_role` varchar(50) NOT NULL,
  `id_film` varchar(50) NOT NULL,
  `id_realisateur` varchar(50) NOT NULL,
  `nom_role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_role`),
  KEY `id_film` (`id_film`),
  KEY `id_realisateur` (`id_realisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id_role`, `id_film`, `id_realisateur`, `nom_role`) VALUES
('SGFLJBG 4', 'Bukfgg50', 'Mzhife', 'Antagoniste');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`idRealisateur`) REFERENCES `artiste` (`idRealisateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`codePays`) REFERENCES `pays` (`code_pays`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notation`
--
ALTER TABLE `notation`
  ADD CONSTRAINT `notation_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`idFilm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notation_ibfk_1` FOREIGN KEY (`email`) REFERENCES `internaute` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`idFilm`) ON DELETE CASCADE ON UPDATE CASCADE;
