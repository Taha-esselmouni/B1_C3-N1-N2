-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3309
-- Généré le :  Dim 07 juin 2020 à 01:48
-- Version du serveur :  5.7.24
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `brief 1 c3-n1-n2`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `gender` enum('F','M') COLLATE utf8_bin DEFAULT NULL,
  `phone_Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `First_name` (`First_name`,`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `First_name`, `last_name`, `gender`, `phone_Number`) VALUES
(1, 'Chris', 'Martin', 'M', 1123147789),
(2, 'Emma', 'Law', 'F', 1123439899),
(3, 'Mark', 'Watkins', 'M', 1174592013),
(4, 'Daniel', 'Williams', 'M', NULL),
(5, 'Sarah', 'Taylor', 'M', 1176348290),
(6, 'Katie', 'Armstrong', 'F', 1145787353),
(7, 'Michael', 'Bluth', 'M', 1980289282),
(8, 'Kat', 'Nash', 'F', 1176987789),
(9, 'Buster', 'Bluth', 'M', 1173456782),
(10, 'Charlie', NULL, 'F', 1139287883),
(11, 'Lindsay', 'Bluth', 'F', 1176923804),
(12, 'Harry', 'Johnson', 'M', NULL),
(13, 'John', 'Taylor', 'M', NULL),
(14, 'Emma', 'Smith', 'F', 1176984116),
(15, 'Gob', 'Bluth', 'M', 1176985498),
(16, 'George', 'Bluth', 'M', 1176984303),
(17, 'Lucille', 'Bluth', 'F', 1198773214),
(18, 'George', 'Evans', 'M', 1174502933),
(19, 'Emily', 'Simmonds', 'F', 1899284352),
(20, 'John', 'Smith', 'M', 1144473330),
(21, 'Jennifer', NULL, 'F', NULL),
(22, 'Toby', 'West', 'M', 1176009822),
(23, 'Paul', 'Edmonds', 'M', 1966947113);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `ID_c` int(11) DEFAULT NULL,
  `Date_order` date DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `ID_c` (`ID_c`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_order`, `ID_c`, `Date_order`) VALUES
(1, 1, '2017-01-01'),
(2, 2, '2017-02-01'),
(3, 12, '2017-01-01'),
(4, 4, '2017-01-01'),
(5, 9, '2017-01-01'),
(6, 22, '2017-01-01'),
(7, 1, '2017-02-02'),
(8, 10, '2017-01-02'),
(9, 2, '2017-02-02'),
(10, 13, '2017-02-02'),
(11, 1, '2017-01-03'),
(12, 16, '2017-01-03'),
(13, 21, '2017-01-03'),
(14, 22, '2017-01-03'),
(15, 3, '2017-01-03'),
(16, 11, '2017-01-03'),
(17, 23, '2017-01-03'),
(18, 1, '2017-01-04'),
(19, 10, '2017-02-04'),
(20, 12, '2017-01-05'),
(21, 1, '2017-01-06'),
(22, 18, '2017-01-06'),
(23, 16, '2017-01-07'),
(24, 14, '2017-01-07'),
(25, 5, '2017-01-08'),
(26, 1, '2017-01-09'),
(27, 20, '2017-01-10'),
(28, 3, '2017-01-10'),
(29, 23, '2017-02-11'),
(30, 8, '2017-01-12'),
(31, 1, '2017-01-14'),
(32, 15, '2017-01-15'),
(33, 7, '2017-01-16');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE IF NOT EXISTS `contient` (
  `Fk_prod` int(11) NOT NULL,
  `FK_cmd` int(11) NOT NULL,
  PRIMARY KEY (`Fk_prod`,`FK_cmd`),
  KEY `FK_cmd` (`FK_cmd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `name_prod` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `Product_origin` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `name_prod`, `price`, `Product_origin`) VALUES
(1, 'special coffee', '32.50', 'Brazil'),
(2, 'coffee family', '8.00', 'Cuba'),
(3, 'animal coffee', '2.50', 'Indonesia'),
(13, 'coffee 2.0', '8.50', 'Ethopia'),
(14, 'coffee ++', '3.00', 'Maroc'),
(22, 'coffe plus', '5.50', 'EST Europe');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`ID_c`) REFERENCES `client` (`id_client`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`Fk_prod`) REFERENCES `produit` (`id_produit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`FK_cmd`) REFERENCES `commande` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
