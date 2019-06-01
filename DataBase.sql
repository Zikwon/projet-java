-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 01 juin 2019 à 14:50
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `HelloworldByCode`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `HelloworldByCode` (IN `p_code` VARCHAR(2))  READS SQL DATA
    SQL SECURITY INVOKER
SELECT * FROM test.helloworld where `code`=p_code$$

DROP PROCEDURE IF EXISTS `helloworldById`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `helloworldById` (IN `p_id` INT)  READS SQL DATA
    SQL SECURITY INVOKER
SELECT * FROM helloworld WHERE id = p_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `helloworld`
--

DROP TABLE IF EXISTS `helloworld`;
CREATE TABLE IF NOT EXISTS `helloworld` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `helloworld`
--

INSERT INTO `helloworld` (`id`, `code`, `message`) VALUES
(1, 'UP', '11111111111111111111;15000002223322222331;11112000000000000001;11120000011111111111;11200001120311111111;13203120020020020111;10001220000000002111;10001003111110230111;10021002160020100111;10221020102031070111;10021000200301020111;10002113000112200111;11000021111320200111;11130000200000001111;11111300020020111111;11111111111111111111;'),
(2, 'DW', '11111111111111111111;15000003200020000001;12000000200000002001;10000000000200000001;10000000000002030001;10000000000000000001;10000000020030000001;10000000070000000001;10032000021111100001;10022000300613032001;10020000001111100001;10000000000000200001;10000300000000000001;10002000000000000001;10000200000000000001;12000000000000000001;10000000000030000001;10022300000000000201;11111111111111111111;'),
(3, 'RI', '11111111111111111111;15000001222220102001;10022001233300000021;10200201236320102331;10003001233320102331;10000001222220102221;10000001000000100001;11110111110111111011;12000020000222000021;10020000020070002001;10000000000000020001;10111110111111011111;10231000001200000131;10201200021020000131;10221020033302000001;10001002001020200121;13001300001200003001;11111111111111111111;'),
(4, 'LE', '11111111111111111111;15200020002000000001;10023020000000000201;10002020000000000001;10000000012220022211;10010700001300003121;10021000022132231001;10022100002010010001;10000310000006300001;10000100200010010021;10001002000102201001;10010020001023320101;10000200010002200011;10000000302000002001;10000202000000000001;10000000000000000001;11111111111111111111;'),
(5, 'PP', '11111111111111111111;15000000003020000001;10202000000000000001;10000000000000000001;12022000000000200001;12002000000000220021;10000002000000002001;11100011111000111111;10000020030000202001;10030000020000000001;10002002020000000001;10020000200000000221;10200000200000000201;10320000070000000021;10000000111111111111;10000000000000003001;12200000000022002061;10200200000000200001;11111111111111111111;');

-- --------------------------------------------------------

--
-- Structure de la table `maps`
--

DROP TABLE IF EXISTS `maps`;
CREATE TABLE IF NOT EXISTS `maps` (
  `ID_Map` int(11) DEFAULT NULL,
  `Code_Map` varchar(2000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maps`
--

INSERT INTO `maps` (`ID_Map`, `Code_Map`) VALUES
(1, '11111111111000220201150200200110022020011330030001120002323112230002011000220301100002206110233022211111111111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;