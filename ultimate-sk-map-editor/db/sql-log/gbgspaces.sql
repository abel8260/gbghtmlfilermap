-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 07-Fev-2023 às 01:10
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
-- Banco de dados: `gbgspaces`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id_cfg` int(11) NOT NULL AUTO_INCREMENT,
  `scene` varchar(255) NOT NULL,
  `total_px` int(11) NOT NULL,
  `total_tiles` int(11) NOT NULL,
  UNIQUE KEY `id_cfg` (`id_cfg`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id_cfg`, `scene`, `total_px`, `total_tiles`) VALUES
(1, 'Pavilhao_9', 180, 40),
(2, 'tancredo neves km 6', 180, 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `initiale`
--

DROP TABLE IF EXISTS `initiale`;
CREATE TABLE IF NOT EXISTS `initiale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `init` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ended` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scene` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `initiale`
--

INSERT INTO `initiale` (`id`, `init`, `ended`, `scene`) VALUES
(1, '0', '0', ''),
(2, '0', '0', ''),
(3, '0', '0', ''),
(4, '0', '0', '');

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
  `coin_pe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drop_pe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `greytile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blacktile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pe`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pear`
--

INSERT INTO `pear` (`id_pe`, `link1`, `link2`, `link3`, `llink4`, `x`, `y`, `scene`, `linkc`, `coin_pe`, `drop_pe`, `greytile`, `blacktile`) VALUES
(1, 'andar23', 'andar30', 'andar33', 'andar45', 2, 3, '', '', NULL, '', '', ''),
(2, 'andar22', 'andar23', 'andar34', 'andar8', NULL, NULL, '', '', NULL, '', '', ''),
(3, 'andar_23', 'andar-3', 'andar_40', 'andar_3', 2, 3, 'mapa_da_ruas_de_sigdu', 'andar floor', NULL, '', '', ''),
(4, NULL, 'norte', NULL, 'sul', 3, 2, 'Pavilhao_9', '../maps/keypoint_2001.php', NULL, '', 'grey', ''),
(5, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2002.php', NULL, '', '', ''),
(6, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2003.php', NULL, '', '', ''),
(7, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '', '', ''),
(8, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '', 'grey', ''),
(9, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2005.php', NULL, '../static/03.png', '', ''),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2006.php', NULL, '', 'grey', ''),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2007.php', NULL, '', 'grey', ''),
(12, 'norte', 'leste', 'sul', 'oeste', 31, 1, 'Pavilhao_9', '../maps/keypoint_2008.php', NULL, '', '', ''),
(13, 'norte', 'leste', 'sul', 'oeste', 31, 2, 'Pavilhao_9', '../maps/keypoint_2009.php', NULL, '', '', ''),
(14, 'norte', 'leste', 'sul', 'oeste', 31, 3, 'Pavilhao_9', '../maps/keypoint_2010.php', NULL, '', '', ''),
(15, 'norte', 'leste', 'sul', 'oeste', 31, 4, 'Pavilhao_9', '../maps/keypoint_2011.php', NULL, '', '', ''),
(16, 'norte', 'leste', 'sul', 'oeste', 31, 5, 'Pavilhao_9', '../maps/keypoint_2012.php', NULL, '', '', ''),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2013.php', NULL, '', 'grey', ''),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2014.php', NULL, '', 'grey', ''),
(19, 'norte', 'leste', 'sul', 'oeste', 32, 1, 'Pavilhao_9', '../maps/keypoint_2015.php', NULL, '', '', ''),
(20, 'norte', 'leste', 'sul', 'oeste', 32, 2, 'Pavilhao_9', '../maps/keypoint_2016.php', NULL, '', '', ''),
(21, 'norte', 'leste', 'sul', 'oeste', 32, 3, 'Pavilhao_9', '../maps/keypoint_2017.php', NULL, '', '', ''),
(22, 'norte', 'leste', 'sul', 'oeste', 32, 4, 'Pavilhao_9', '../maps/keypoint_2018.php', NULL, '', '', ''),
(23, 'norte', 'leste', 'sul', 'oeste', 32, 5, 'Pavilhao_9', '../maps/keypoint_2019.php', NULL, '', '', ''),
(24, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2020.php', NULL, '', 'grey', ''),
(25, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../maps/keypoint_2021.php', NULL, '', 'grey', ''),
(26, 'norte', 'leste', 'sul', 'oeste', 33, 1, 'Pavilhao_9', '../maps/keypoint_2022.php', NULL, '', '', ''),
(27, 'norte', 'leste', 'sul', 'oeste', 33, 2, 'Pavilhao_9', '../maps/keypoint_2023.php', NULL, '', 'grey', ''),
(28, 'norte', 'leste', 'sul', 'oeste', 33, 3, 'Pavilhao_9', '../maps/keypoint_2024.php', NULL, '', '', ''),
(29, 'norte', 'leste', 'sul', 'oeste', 33, 4, 'Pavilhao_9', '../maps/keypoint_2025.php', NULL, '', '', ''),
(30, 'norte', 'leste', 'sul', 'oeste', 33, 5, 'Pavilhao_9', '../maps/keypoint_2026.php', NULL, '', '', ''),
(31, 'norte', 'leste', 'sul', 'oeste', 33, 6, 'Pavilhao_9', '../maps/keypoint_2027.php', NULL, '', 'grey', ''),
(33, 'norte', 'leste', 'sul', 'oeste', 33, 7, 'Pavilhao_9', '../maps/keypoint_2028.php', NULL, '', '', ''),
(34, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(37, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(38, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(39, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(40, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(44, NULL, 'norte', NULL, 'sul', 3, 2, 'Pavilhao_9', '../maps/keypoint_2001.php', NULL, '', '', ''),
(45, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2002.php', NULL, '', '', ''),
(46, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2003.php', '../static/bitmap.png', 'null', '', ''),
(47, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '../static/03.png', '', ''),
(48, NULL, 'leste', NULL, 'oeste', 3, 2, 'Pavilhao_9', '../maps/keypoint_2004.php', NULL, '', '', ''),
(49, 'norte', 'leste', 'sul', 'oeste', 30, 3, 'Pavilhao_9', '../maps/keypoint_2005.php', NULL, '../static/03.png', '', ''),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(53, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(54, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(55, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(56, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(57, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(58, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(59, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(60, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(61, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(62, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(63, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(64, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(65, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(66, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(67, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(68, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(69, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(70, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(71, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(72, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(73, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(74, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(75, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(76, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(77, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(78, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(79, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(80, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(81, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(82, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(83, NULL, NULL, NULL, NULL, NULL, NULL, 'Pavilhao_9', '../floor3001.php', NULL, '', '', ''),
(90, 'norte', 'leste', 'sul', 'oeste', 20, 35, 'cruzamento VI', '../maps/keypoint_2035.html', NULL, '', '', ''),
(89, 'norte', 'leste', 'sul', 'oeste', 20, 34, 'cruzamento VI', '../maps/keypoint_2034.html', NULL, '', '', ''),
(88, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2033.html', NULL, '', 'grey', ''),
(87, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2032.html', NULL, '', 'grey', ''),
(86, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2031.html', NULL, '', 'grey', ''),
(85, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2030.html', NULL, '', 'grey', ''),
(84, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2029.html', NULL, '', 'grey', ''),
(91, 'norte', 'leste', 'sul', 'oeste', 20, 36, 'cruzamento VI', '../maps/keypoint_2036.html', NULL, '', '', ''),
(92, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2037.html', NULL, '', 'grey', ''),
(93, 'norte', 'leste', 'sul', 'oeste', 20, 38, 'cruzamento VI', '../maps/keypoint_2038.html', NULL, '', '', ''),
(94, 'norte', 'leste', 'sul', 'oeste', 20, 39, 'cruzamento VI', '../maps/keypoint_2039.html', NULL, '', '', ''),
(95, 'norte', 'leste', 'sul', 'oeste', 20, 40, 'cruzamento VI', '../maps/keypoint_2040.html', NULL, '', '', ''),
(96, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2041.html', NULL, '', 'grey', ''),
(97, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2042.html', NULL, '', 'grey', ''),
(98, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2043.html', NULL, '', 'grey', ''),
(99, NULL, NULL, NULL, NULL, NULL, NULL, 'cruzamento VI', '../maps/keypoint_2044.html', NULL, '', 'grey', ''),
(100, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2045.html', NULL, '', 'grey', ''),
(101, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2046.html', NULL, '', 'grey', ''),
(102, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2047.html', NULL, '', 'grey', ''),
(103, NULL, NULL, NULL, NULL, NULL, NULL, 'rua_tancredo_neves', '../maps/keypoint_2048.html', NULL, '', 'grey', ''),
(104, 'norte', 'leste', 'sul', 'oeste', 20, 49, 'rua_tancredo_neves', '../maps/keypoint_2049.html', NULL, '', '', ''),
(105, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2050.html', NULL, '', '', ''),
(106, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2051.html', NULL, '', '', ''),
(107, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2052.html', NULL, '', '', ''),
(108, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2053.html', NULL, '', '', ''),
(109, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2054.html', NULL, '', '', ''),
(110, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2055.html', NULL, '', '', ''),
(111, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2056.html', NULL, '', '', ''),
(112, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2057.html', NULL, '', '', ''),
(113, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2058.html', NULL, '', '', ''),
(114, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2059.html', NULL, '', '', ''),
(115, 'norte', 'leste', 'sul', 'oeste', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2060.html', NULL, '', '', ''),
(116, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2061.html', NULL, '', 'grey', ''),
(117, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2062.html', NULL, '', 'grey', ''),
(118, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2063.html', NULL, '', 'grey', ''),
(119, '', '', '', '', 20, 50, 'rua_tancredo_neves', '../maps/keypoint_2064.html', NULL, '', 'grey', ''),
(120, NULL, NULL, NULL, NULL, 20, 65, 'tancredo neves km 6', '../maps/keypoint_2065.htm', NULL, '', 'grey', ''),
(121, NULL, NULL, NULL, NULL, 20, 66, 'tancredo neves km 6', '../maps/keypoint_2066.htm', NULL, '', 'grey', ''),
(122, NULL, NULL, NULL, NULL, 20, 67, 'tancredo neves km 6', '../maps/keypoint_2067.htm', NULL, '', 'grey', ''),
(123, NULL, NULL, NULL, NULL, 20, 68, 'tancredo neves km 6', '../maps/keypoint_2068.htm', NULL, '', 'grey', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
