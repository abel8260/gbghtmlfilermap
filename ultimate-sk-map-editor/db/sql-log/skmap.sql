-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 07-Nov-2022 às 00:17
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `skmap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
CREATE TABLE IF NOT EXISTS `catalogo` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `andar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `x` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `initiale`
--

DROP TABLE IF EXISTS `initiale`;
CREATE TABLE IF NOT EXISTS `initiale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `init` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ended` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `initiale`
--

INSERT INTO `initiale` (`id`, `init`, `ended`) VALUES
(1, 'andar30', 'andar31'),
(2, 'andar31', 'andar30'),
(3, '', ''),
(4, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pear`
--

DROP TABLE IF EXISTS `pear`;
CREATE TABLE IF NOT EXISTS `pear` (
  `id_pe` int(11) NOT NULL AUTO_INCREMENT,
  `link1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `llink4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `scene` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pe`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pear`
--

INSERT INTO `pear` (`id_pe`, `link1`, `link2`, `link3`, `llink4`, `x`, `y`, `scene`, `linkc`) VALUES
(1, 'andar23', 'andar30', 'andar33', 'andar45', 2, 3, '', ''),
(2, 'andar22', 'andar23', 'andar34', 'andar8', NULL, NULL, '', ''),
(3, 'andar_23', 'andar-3', 'andar_40', 'andar_3', 2, 3, 'mapa_da_ruas_de_sigdu', 'andar floor'),
(4, NULL, 'norte', NULL, 'sul', 3, 2, 'Pavilhao_9', '../maps/floor3001.html'),
(5, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/floor3002.html');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
