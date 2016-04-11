-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2016 at 03:44 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `ergebnissesportfest`
--

CREATE TABLE `ergebnissesportfest` (
  `EintragsID` int(11) NOT NULL,
  `schuelerID` int(11) NOT NULL,
  `sportfestID` int(11) NOT NULL,
  `Sportart` varchar(50) DEFAULT NULL,
  `Ergebnis` varchar(50) DEFAULT NULL,
  `Punkte` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ergebnissesportfest`
--

INSERT INTO `ergebnissesportfest` (`EintragsID`, `schuelerID`, `sportfestID`, `Sportart`, `Ergebnis`, `Punkte`) VALUES
(1, 1, 1, 'Sprint', '11.5', '200'),
(2, 1, 1, 'Weitwurf', '39', '180');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `EintragsID` int(11) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Ueberschrift` varchar(100) NOT NULL,
  `Datum` varchar(10) NOT NULL,
  `Inhalt` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`EintragsID`, `Autor`, `Ueberschrift`, `Datum`, `Inhalt`) VALUES
(1, 'sdvx', 'fcnbv ', '45', 'xdfcb vfxcgvb '),
(2, 'test', 'Tilte33', '21.3.2016', 'dies ist mein erter Titel, die BenutzerfÃ¼hrung muss noch verbessert werden!!');

-- --------------------------------------------------------

--
-- Table structure for table `schuelersportfest`
--

CREATE TABLE `schuelersportfest` (
  `SchuelerID` int(11) NOT NULL,
  `SchuelerNachname` varchar(100) NOT NULL,
  `SchuelerVorname` varchar(100) NOT NULL,
  `SchuelerStufe` varchar(2) NOT NULL,
  `SchuelerKlasse` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schuelersportfest`
--

INSERT INTO `schuelersportfest` (`SchuelerID`, `SchuelerNachname`, `SchuelerVorname`, `SchuelerStufe`, `SchuelerKlasse`) VALUES
(1, 'Leon', 'Beck', '11', 'a'),
(2, 'Thorsten', 'Lammertz', '11', 'a'),
(3, 'Thorsten', 'Steinmetz', '8', 'a'),
(4, 'David', 'Brenner', '10', 'a'),
(5, 'Maurice', 'Dynak', '12', 'a'),
(6, 'Carmen', 'Böhrer', '8', 'a'),
(7, 'Martits', 'Kaufmann', '12', 'a'),
(8, 'Simon', 'Brenner', '7', 'a'),
(9, 'Kevin', 'Böhrer', '7', 'a'),
(10, 'Jaqueline', 'Althoff', '9', 'a'),
(11, 'Jaqueline', 'Baumann', '7', 'a'),
(12, 'Florian', 'Brenner', '9', 'a'),
(13, 'Florian', 'Steinmetz', '8', 'c'),
(14, 'Johann', 'Einhaus', '10', 'd'),
(15, 'Sarah', 'Groß', '11', 'c'),
(16, 'David', 'Böhrer', '12', 'd'),
(17, 'Sandra', 'Böhrer', '9', 'c'),
(18, 'Judith', 'Böhrer', '6', 'd'),
(19, 'Anna', 'Skalitz', '6', 'b'),
(20, 'Johanna', 'Blume', '10', 'a'),
(21, 'Verena', 'Tank', '8', 'a'),
(22, 'Jana', 'Meier', '6', 'c'),
(23, 'Thorsten', 'Wilhem', '9', 'b'),
(24, 'Jana', 'Skalitz', '8', 'd'),
(25, 'Linda', 'Blume', '12', 'd'),
(26, 'Jil', 'Blume', '8', 'c'),
(27, 'Florian', 'Lammertz', '9', 'd'),
(28, 'Sandra', 'Eck', '7', 'c'),
(29, 'Sabrina', 'Groß', '7', 'd'),
(30, 'Thomas', 'Dynak', '6', 'b'),
(31, 'Johann', 'Kaufmann', '11', 'b'),
(32, 'Simon', 'Groß', '9', 'a'),
(33, 'Thorsten', 'Böhrer', '8', 'c'),
(34, 'Sabrina', 'Eck', '10', 'a'),
(35, 'Anna', 'Blume', '11', 'c'),
(36, 'Thomas', 'Steinmetz', '10', 'd'),
(37, 'Sarah', 'Knorr', '12', 'b'),
(38, 'Thorsten', 'Knorr', '10', 'c'),
(39, 'Johann', 'Skalitz', '6', 'd'),
(40, 'Jana', 'Kaufmann', '10', 'a'),
(41, 'Johann', 'Beck', '12', 'b'),
(42, 'Hannah', 'Schröter', '11', 'a'),
(43, 'Lena', 'Kaufmann', '10', 'b'),
(44, 'Lena', 'Meier', '7', 'c'),
(45, 'David', 'Brenner', '12', 'd'),
(46, 'Verena', 'Lammertz', '9', 'a'),
(47, 'Lena', 'Debus', '7', 'c'),
(48, 'Lena', 'Einhaus', '12', 'd'),
(49, 'Judith', 'Gößling', '10', 'b'),
(50, 'Hannah', 'Baumann', '7', 'd'),
(51, 'Linda', 'Wilhem', '6', 'c'),
(52, 'Johanna', 'Beck', '6', 'b'),
(53, 'Thomas', 'Skalitz', '9', 'b'),
(54, 'Jan', 'Kaufmann', '11', 'b'),
(55, 'Christina', 'Wyink', '6', 'a'),
(56, 'David', 'Böhrer', '9', 'c'),
(57, 'Jens', 'Böhrer', '7', 'c'),
(58, 'Thomas', 'Tank', '8', 'c'),
(59, 'Sabrina', 'Debus', '10', 'b'),
(60, 'Kevin', 'Gößling', '10', 'c'),
(61, 'David', 'Gößling', '12', 'a'),
(62, 'Martits', 'Schmidt', '7', 'a'),
(63, 'Christina', 'Baumann', '10', 'd'),
(64, 'David', 'Debus', '9', 'c'),
(65, 'Kevin', 'Beck', '10', 'b'),
(66, 'Anna', 'Knorr', '10', 'd'),
(67, 'Judith', 'Gößling', '10', 'd'),
(68, 'Simon', 'Althoff', '7', 'b'),
(69, 'Carmen', 'Eck', '12', 'c'),
(70, 'Christina', 'Wilhem', '12', 'c'),
(71, 'Verena', 'Groß', '8', 'a'),
(72, 'Hannah', 'Böhrer', '10', 'd'),
(73, 'Anna', 'Wyink', '6', 'd'),
(74, 'Thorsten', 'Skalitz', '8', 'b'),
(75, 'Judith', 'Lammertz', '12', 'c'),
(76, 'Thomas', 'Wilhem', '11', 'a'),
(77, 'Thomas', 'Böhrer', '12', 'c'),
(78, 'Christina', 'Steinmetz', '11', 'b'),
(79, 'Thomas', 'Schmidt', '9', 'a'),
(80, 'Florian', 'Groß', '8', 'c'),
(81, 'Martits', 'Lammertz', '9', 'b'),
(82, 'Sandra', 'Wyink', '7', 'b'),
(83, 'Jens', 'Baumann', '8', 'c'),
(84, 'Martits', 'Kaufmann', '11', 'a'),
(85, 'Maurice', 'Lammertz', '11', 'b'),
(86, 'Maurice', 'Schmidt', '10', 'b'),
(87, 'Thorsten', 'Althoff', '8', 'a'),
(88, 'Johann', 'Schröter', '7', 'c'),
(89, 'Carmen', 'Debus', '8', 'b'),
(90, 'Sandra', 'Knorr', '8', 'd'),
(91, 'Christina', 'Lammertz', '10', 'b'),
(92, 'Carmen', 'Trogant', '6', 'd'),
(93, 'Thomas', 'Meier', '7', 'b'),
(94, 'Anna', 'Einhaus', '6', 'd'),
(95, 'Anna', 'Baumann', '9', 'c'),
(96, 'Kevin', 'Gößling', '11', 'c'),
(97, 'David', 'Einhaus', '8', 'c'),
(98, 'Johanna', 'Eck', '11', 'a'),
(99, 'Kevin', 'Tank', '6', 'c'),
(100, 'Linda', 'Debus', '6', 'b'),
(101, 'Jil', 'Gößling', '6', 'd'),
(102, 'Hannah', 'Böhrer', '10', 'd'),
(103, 'Johann', 'Debus', '11', 'b'),
(104, 'Anna', 'Schmidt', '12', 'c'),
(105, 'Christina', 'Beck', '7', 'c'),
(106, 'Verena', 'Kaufmann', '10', 'c'),
(107, 'Johanna', 'Althoff', '6', 'a'),
(108, 'Verena', 'Tank', '8', 'a'),
(109, 'Florian', 'Gößling', '7', 'c'),
(110, 'Linda', 'Groß', '6', 'a'),
(111, 'Linda', 'Gößling', '6', 'b'),
(112, 'Florian', 'Dynak', '12', 'a'),
(113, 'Johanna', 'Lammertz', '12', 'a'),
(114, 'Hannah', 'Groß', '9', 'a'),
(115, 'Johann', 'Dynak', '6', 'c'),
(116, 'Sabrina', 'Beck', '11', 'd'),
(117, 'Verena', 'Debus', '11', 'c'),
(118, 'Felix', 'Dynak', '12', 'c'),
(119, 'Verena', 'Tank', '11', 'b'),
(120, 'Martits', 'Trogant', '9', 'd'),
(121, 'Judith', 'Tank', '7', 'd'),
(122, 'Anna', 'Schröter', '10', 'a'),
(123, 'Thomas', 'Böhrer', '12', 'b'),
(124, 'Felix', 'Schmidt', '8', 'd'),
(125, 'Sarah', 'Schröter', '10', 'c'),
(126, 'David', 'Kaufmann', '6', 'a'),
(127, 'Sarah', 'Wyink', '10', 'b'),
(128, 'Linda', 'Kaufmann', '11', 'a'),
(129, 'Linda', 'Einhaus', '10', 'c'),
(130, 'Thorsten', 'Schmidt', '12', 'd'),
(131, 'Michelle', 'Dynak', '6', 'd'),
(132, 'Leon', 'Beck', '8', 'c'),
(133, 'Verena', 'Schmidt', '7', 'a'),
(134, 'Jan', 'Groß', '10', 'c'),
(135, 'Linda', 'Gößling', '11', 'a'),
(136, 'Anna', 'Knorr', '9', 'c'),
(137, 'Simon', 'Wilhem', '9', 'c'),
(138, 'Linda', 'Brenner', '8', 'd'),
(139, 'Sandra', 'Kaufmann', '8', 'b'),
(140, 'Carmen', 'Dynak', '11', 'c'),
(141, 'Jaqueline', 'Blume', '6', 'a'),
(142, 'Jil', 'Einhaus', '6', 'b'),
(143, 'Kevin', 'Einhaus', '11', 'c'),
(144, 'Simon', 'Schmidt', '6', 'c'),
(145, 'Sandra', 'Lammertz', '10', 'c'),
(146, 'Jens', 'Dynak', '12', 'c'),
(147, 'Verena', 'Wilhem', '11', 'd'),
(148, 'Verena', 'Groß', '9', 'c'),
(149, 'David', 'Tank', '8', 'b'),
(150, 'Felix', 'Brenner', '9', 'a'),
(151, 'Linda', 'Dynak', '6', 'd'),
(152, 'David', 'Lammertz', '6', 'c'),
(153, 'Johanna', 'Blume', '11', 'b'),
(154, 'Thomas', 'Böhrer', '7', 'd'),
(155, 'David', 'Lammertz', '7', 'b'),
(156, 'Jana', 'Blume', '7', 'c'),
(157, 'Maurice', 'Steinmetz', '9', 'c'),
(158, 'Maurice', 'Gößling', '6', 'd'),
(159, 'Anna', 'Gößling', '9', 'b'),
(160, 'Sandra', 'Baumann', '8', 'c'),
(161, 'Jan', 'Groß', '6', 'a'),
(162, 'Linda', 'Steinmetz', '8', 'a'),
(163, 'Jan', 'Tank', '7', 'b'),
(164, 'Judith', 'Skalitz', '11', 'b'),
(165, 'Kevin', 'Baumann', '10', 'd'),
(166, 'Judith', 'Dynak', '9', 'b'),
(167, 'Linda', 'Althoff', '8', 'b'),
(168, 'Christina', 'Lammertz', '12', 'a'),
(169, 'Anna', 'Schröter', '8', 'd'),
(170, 'Thomas', 'Eck', '12', 'a'),
(171, 'Simon', 'Wilhem', '12', 'd'),
(172, 'Michelle', 'Beck', '7', 'a'),
(173, 'Jan', 'Meier', '8', 'a'),
(174, 'Johann', 'Schröter', '11', 'a'),
(175, 'David', 'Einhaus', '8', 'c'),
(176, 'Linda', 'Blume', '6', 'b'),
(177, 'Maurice', 'Groß', '6', 'b'),
(178, 'Felix', 'Baumann', '12', 'b'),
(179, 'Lena', 'Lammertz', '6', 'b'),
(180, 'Michelle', 'Baumann', '8', 'c'),
(181, 'Johann', 'Böhrer', '6', 'c'),
(182, 'Jens', 'Brenner', '6', 'c'),
(183, 'Sabrina', 'Groß', '7', 'c'),
(184, 'Christina', 'Böhrer', '8', 'a'),
(185, 'Lena', 'Blume', '11', 'b'),
(186, 'Simon', 'Lammertz', '11', 'd'),
(187, 'Linda', 'Einhaus', '8', 'd'),
(188, 'Thomas', 'Meier', '6', 'c'),
(189, 'Jaqueline', 'Groß', '7', 'a'),
(190, 'Sarah', 'Blume', '12', 'a'),
(191, 'Judith', 'Althoff', '7', 'd'),
(192, 'Thomas', 'Trogant', '12', 'c'),
(193, 'Maurice', 'Wilhem', '10', 'c'),
(194, 'David', 'Wyink', '9', 'a'),
(195, 'Linda', 'Groß', '7', 'b'),
(196, 'Hannah', 'Knorr', '12', 'c'),
(197, 'Lena', 'Meier', '8', 'd'),
(198, 'Carmen', 'Schröter', '9', 'b'),
(199, 'Christina', 'Lammertz', '12', 'b'),
(200, 'Jana', 'Wilhem', '11', 'a'),
(201, 'Johanna', 'Kaufmann', '10', 'd'),
(202, 'Hannah', 'Einhaus', '7', 'a'),
(203, 'Thorsten', 'Tank', '8', 'd'),
(204, 'Carmen', 'Debus', '9', 'c'),
(205, 'Judith', 'Einhaus', '6', 'a'),
(206, 'Christina', 'Kaufmann', '8', 'b'),
(207, 'Jens', 'Trogant', '10', 'a'),
(208, 'Jan', 'Debus', '8', 'b'),
(209, 'Christina', 'Wilhem', '6', 'a'),
(210, 'Leon', 'Althoff', '11', 'd'),
(211, 'Carmen', 'Lammertz', '7', 'd'),
(212, 'Linda', 'Kaufmann', '8', 'c'),
(213, 'Jil', 'Dynak', '6', 'd'),
(214, 'Jan', 'Steinmetz', '8', 'd'),
(215, 'Lena', 'Meier', '11', 'c'),
(216, 'Carmen', 'Trogant', '9', 'd'),
(217, 'Jens', 'Tank', '10', 'a'),
(218, 'Thorsten', 'Tank', '9', 'c'),
(219, 'Jens', 'Groß', '12', 'd'),
(220, 'Maurice', 'Knorr', '11', 'b'),
(221, 'Johann', 'Böhrer', '11', 'd'),
(222, 'Jaqueline', 'Skalitz', '12', 'a'),
(223, 'Martits', 'Althoff', '12', 'd'),
(224, 'Christina', 'Kaufmann', '9', 'a'),
(225, 'Sabrina', 'Meier', '11', 'a'),
(226, 'Jens', 'Wilhem', '8', 'c'),
(227, 'Maurice', 'Blume', '7', 'b'),
(228, 'Jaqueline', 'Wilhem', '7', 'd'),
(229, 'Johann', 'Wyink', '6', 'b'),
(230, 'Sandra', 'Wyink', '6', 'a'),
(231, 'Martits', 'Blume', '10', 'c'),
(232, 'Jil', 'Kaufmann', '9', 'a'),
(233, 'Sarah', 'Einhaus', '6', 'b'),
(234, 'Jaqueline', 'Einhaus', '8', 'd'),
(235, 'Jaqueline', 'Debus', '6', 'd'),
(236, 'Jens', 'Groß', '11', 'd'),
(237, 'Thorsten', 'Dynak', '9', 'c'),
(238, 'Carmen', 'Blume', '9', 'c'),
(239, 'Kevin', 'Trogant', '6', 'c'),
(240, 'Johanna', 'Gößling', '8', 'c'),
(241, 'Jan', 'Debus', '6', 'a'),
(242, 'Leon', 'Knorr', '12', 'a'),
(243, 'Michelle', 'Schröter', '7', 'd'),
(244, 'Jil', 'Knorr', '6', 'c'),
(245, 'Sarah', 'Skalitz', '6', 'b'),
(246, 'Lena', 'Brenner', '7', 'c'),
(247, 'Leon', 'Eck', '12', 'c'),
(248, 'Maurice', 'Kaufmann', '12', 'd'),
(249, 'Jan', 'Debus', '9', 'b'),
(250, 'Simon', 'Dynak', '8', 'c'),
(251, 'Jens', 'Eck', '11', 'b'),
(252, 'Felix', 'Althoff', '10', 'a'),
(253, 'Thomas', 'Groß', '6', 'c'),
(254, 'Jil', 'Meier', '10', 'd'),
(255, 'Linda', 'Brenner', '7', 'c'),
(256, 'Martits', 'Skalitz', '6', 'c'),
(257, 'David', 'Tank', '9', 'd'),
(258, 'Simon', 'Beck', '8', 'b'),
(259, 'Martits', 'Groß', '10', 'a'),
(260, 'Simon', 'Schmidt', '8', 'd'),
(261, 'Thorsten', 'Blume', '12', 'd'),
(262, 'Sabrina', 'Debus', '9', 'a'),
(263, 'Michelle', 'Brenner', '9', 'a'),
(264, 'Sabrina', 'Althoff', '7', 'b'),
(265, 'Martits', 'Blume', '11', 'd'),
(266, 'David', 'Schmidt', '7', 'a'),
(267, 'Martits', 'Beck', '9', 'a'),
(268, 'Kevin', 'Steinmetz', '10', 'c'),
(269, 'Linda', 'Kaufmann', '10', 'b'),
(270, 'Simon', 'Meier', '11', 'a'),
(271, 'Sandra', 'Althoff', '10', 'b'),
(272, 'Jan', 'Trogant', '10', 'c'),
(273, 'Sabrina', 'Tank', '12', 'a'),
(274, 'Lena', 'Blume', '9', 'c'),
(275, 'Judith', 'Wilhem', '6', 'b'),
(276, 'Lena', 'Eck', '6', 'b'),
(277, 'Maurice', 'Debus', '10', 'c'),
(278, 'Sabrina', 'Tank', '7', 'a'),
(279, 'Leon', 'Blume', '12', 'd'),
(280, 'Judith', 'Baumann', '9', 'c'),
(281, 'Jana', 'Böhrer', '9', 'b'),
(282, 'David', 'Althoff', '11', 'c'),
(283, 'Lena', 'Kaufmann', '12', 'b'),
(284, 'Johann', 'Skalitz', '8', 'd'),
(285, 'Kevin', 'Lammertz', '7', 'c'),
(286, 'Sandra', 'Skalitz', '11', 'a'),
(287, 'Jan', 'Debus', '8', 'a'),
(288, 'Jan', 'Althoff', '8', 'c'),
(289, 'Leon', 'Debus', '8', 'd'),
(290, 'Carmen', 'Einhaus', '6', 'b'),
(291, 'Felix', 'Skalitz', '12', 'b'),
(292, 'Carmen', 'Groß', '6', 'c'),
(293, 'Jana', 'Wyink', '12', 'b'),
(294, 'Jana', 'Einhaus', '8', 'a'),
(295, 'Johann', 'Groß', '10', 'b'),
(296, 'Jan', 'Schröter', '12', 'a'),
(297, 'Maurice', 'Groß', '9', 'b'),
(298, 'Florian', 'Blume', '8', 'c'),
(299, 'Florian', 'Tank', '7', 'b'),
(300, 'Sarah', 'Einhaus', '8', 'c'),
(301, 'Christina', 'Blume', '9', 'c'),
(302, 'Thorsten', 'Wilhem', '9', 'b'),
(303, 'Martits', 'Gößling', '6', 'd'),
(304, 'David', 'Groß', '11', 'a'),
(305, 'Jil', 'Blume', '7', 'd'),
(306, 'Martits', 'Dynak', '9', 'a'),
(307, 'Florian', 'Debus', '9', 'a'),
(308, 'Linda', 'Schröter', '8', 'a'),
(309, 'Lena', 'Meier', '12', 'd'),
(310, 'Martits', 'Meier', '7', 'c'),
(311, 'Lena', 'Wyink', '10', 'd'),
(312, 'David', 'Wilhem', '7', 'c'),
(313, 'Judith', 'Eck', '11', 'b'),
(314, 'Judith', 'Knorr', '7', 'b'),
(315, 'Linda', 'Skalitz', '8', 'a'),
(316, 'Jaqueline', 'Groß', '6', 'c'),
(317, 'Verena', 'Brenner', '11', 'd'),
(318, 'Thomas', 'Wyink', '10', 'b'),
(319, 'Sarah', 'Wilhem', '8', 'b'),
(320, 'Johann', 'Gößling', '10', 'd'),
(321, 'Lena', 'Trogant', '8', 'd'),
(322, 'David', 'Beck', '12', 'b'),
(323, 'Jaqueline', 'Lammertz', '7', 'a'),
(324, 'Jan', 'Trogant', '10', 'd'),
(325, 'Anna', 'Tank', '7', 'b'),
(326, 'David', 'Lammertz', '11', 'd'),
(327, 'Carmen', 'Blume', '11', 'a'),
(328, 'David', 'Lammertz', '10', 'b'),
(329, 'David', 'Böhrer', '9', 'd'),
(330, 'Kevin', 'Meier', '6', 'c'),
(331, 'Carmen', 'Baumann', '11', 'c'),
(332, 'Johann', 'Lammertz', '7', 'c'),
(333, 'Jaqueline', 'Steinmetz', '10', 'd'),
(334, 'Johann', 'Skalitz', '11', 'd'),
(335, 'David', 'Eck', '6', 'c'),
(336, 'Martits', 'Schmidt', '10', 'a'),
(337, 'Anna', 'Brenner', '8', 'c'),
(338, 'Judith', 'Trogant', '6', 'a'),
(339, 'Judith', 'Gößling', '12', 'a'),
(340, 'Thorsten', 'Wilhem', '12', 'd'),
(341, 'Judith', 'Skalitz', '7', 'c'),
(342, 'Johanna', 'Wilhem', '6', 'a'),
(343, 'Linda', 'Brenner', '7', 'a'),
(344, 'Johanna', 'Kaufmann', '8', 'c'),
(345, 'David', 'Beck', '7', 'a'),
(346, 'Hannah', 'Böhrer', '8', 'a'),
(347, 'Kevin', 'Meier', '11', 'd'),
(348, 'Sabrina', 'Groß', '11', 'c'),
(349, 'Judith', 'Dynak', '8', 'd'),
(350, 'Jil', 'Beck', '9', 'd'),
(351, 'Maurice', 'Groß', '12', 'a'),
(352, 'Martits', 'Meier', '12', 'b'),
(353, 'Johanna', 'Eck', '12', 'd'),
(354, 'Simon', 'Knorr', '7', 'd'),
(355, 'Michelle', 'Debus', '12', 'a'),
(356, 'Judith', 'Debus', '8', 'b'),
(357, 'Judith', 'Meier', '7', 'b'),
(358, 'Lena', 'Lammertz', '10', 'd'),
(359, 'David', 'Eck', '12', 'b'),
(360, 'Michelle', 'Steinmetz', '11', 'd'),
(361, 'Michelle', 'Schröter', '12', 'c'),
(362, 'Felix', 'Baumann', '11', 'd'),
(363, 'Carmen', 'Beck', '10', 'b'),
(364, 'Linda', 'Beck', '10', 'd'),
(365, 'Jaqueline', 'Kaufmann', '6', 'b'),
(366, 'Judith', 'Dynak', '9', 'c'),
(367, 'Anna', 'Blume', '9', 'c'),
(368, 'Lena', 'Blume', '12', 'b'),
(369, 'Christina', 'Schröter', '6', 'b'),
(370, 'Christina', 'Eck', '12', 'a'),
(371, 'Kevin', 'Debus', '10', 'd'),
(372, 'Simon', 'Wilhem', '7', 'd'),
(373, 'Sabrina', 'Wyink', '6', 'b'),
(374, 'Jana', 'Blume', '10', 'b'),
(375, 'Anna', 'Trogant', '10', 'c'),
(376, 'Jens', 'Einhaus', '11', 'a'),
(377, 'Jil', 'Dynak', '10', 'a'),
(378, 'David', 'Knorr', '10', 'b'),
(379, 'Judith', 'Skalitz', '9', 'c'),
(380, 'Christina', 'Eck', '7', 'c'),
(381, 'Lena', 'Dynak', '8', 'a'),
(382, 'Felix', 'Einhaus', '12', 'c'),
(383, 'Christina', 'Groß', '7', 'd'),
(384, 'Johanna', 'Trogant', '9', 'a'),
(385, 'Thorsten', 'Schmidt', '12', 'c'),
(386, 'Jil', 'Lammertz', '6', 'd'),
(387, 'Jaqueline', 'Tank', '8', 'd'),
(388, 'Sarah', 'Groß', '11', 'a'),
(389, 'Martits', 'Trogant', '8', 'b'),
(390, 'Carmen', 'Eck', '6', 'a'),
(391, 'Christina', 'Blume', '12', 'b'),
(392, 'Thorsten', 'Knorr', '7', 'c'),
(393, 'Martits', 'Brenner', '9', 'd'),
(394, 'Florian', 'Eck', '8', 'd'),
(395, 'Thomas', 'Schröter', '12', 'a'),
(396, 'Kevin', 'Lammertz', '10', 'c'),
(397, 'Jan', 'Eck', '11', 'a'),
(398, 'Sandra', 'Lammertz', '8', 'b'),
(399, 'Maurice', 'Groß', '7', 'a'),
(400, 'Felix', 'Lammertz', '11', 'd'),
(401, 'Jil', 'Skalitz', '12', 'a'),
(402, 'Jaqueline', 'Groß', '12', 'b'),
(403, 'Verena', 'Kaufmann', '12', 'a'),
(404, 'Florian', 'Lammertz', '9', 'b'),
(405, 'Jana', 'Schröter', '6', 'd'),
(406, 'Jaqueline', 'Beck', '11', 'b'),
(407, 'Christina', 'Meier', '12', 'a'),
(408, 'Johanna', 'Eck', '9', 'b'),
(409, 'David', 'Blume', '6', 'a'),
(410, 'Felix', 'Steinmetz', '9', 'd'),
(411, 'Kevin', 'Meier', '8', 'b'),
(412, 'Jana', 'Meier', '8', 'd'),
(413, 'Lena', 'Wilhem', '6', 'd'),
(414, 'Judith', 'Wyink', '11', 'c'),
(415, 'David', 'Knorr', '8', 'b'),
(416, 'Kevin', 'Schmidt', '10', 'd'),
(417, 'Sandra', 'Schröter', '6', 'b'),
(418, 'Thomas', 'Böhrer', '10', 'c'),
(419, 'Felix', 'Kaufmann', '10', 'a'),
(420, 'Thomas', 'Böhrer', '9', 'b'),
(421, 'Carmen', 'Trogant', '6', 'd'),
(422, 'Sarah', 'Meier', '10', 'a'),
(423, 'Christina', 'Trogant', '8', 'a'),
(424, 'Anna', 'Dynak', '6', 'a'),
(425, 'Kevin', 'Wilhem', '6', 'b'),
(426, 'Linda', 'Meier', '9', 'd'),
(427, 'Thorsten', 'Baumann', '12', 'c'),
(428, 'Simon', 'Lammertz', '10', 'a'),
(429, 'Martits', 'Kaufmann', '10', 'c'),
(430, 'Simon', 'Brenner', '10', 'd'),
(431, 'Christina', 'Wilhem', '10', 'c'),
(432, 'David', 'Schmidt', '10', 'a'),
(433, 'Michelle', 'Steinmetz', '9', 'b'),
(434, 'Sabrina', 'Wilhem', '11', 'a'),
(435, 'Jil', 'Groß', '9', 'b'),
(436, 'Verena', 'Althoff', '11', 'b'),
(437, 'Jan', 'Trogant', '6', 'c'),
(438, 'Sarah', 'Wyink', '8', 'c'),
(439, 'Johann', 'Wyink', '8', 'd'),
(440, 'Carmen', 'Blume', '12', 'b'),
(441, 'Sarah', 'Eck', '11', 'b'),
(442, 'Sandra', 'Schmidt', '8', 'a'),
(443, 'Judith', 'Kaufmann', '11', 'c'),
(444, 'Johann', 'Trogant', '12', 'd'),
(445, 'Jaqueline', 'Baumann', '11', 'd'),
(446, 'Michelle', 'Debus', '7', 'b'),
(447, 'Johann', 'Baumann', '6', 'b'),
(448, 'Jil', 'Kaufmann', '11', 'a'),
(449, 'Jens', 'Groß', '6', 'b'),
(450, 'Kevin', 'Schröter', '6', 'c'),
(451, 'Johanna', 'Eck', '11', 'd'),
(452, 'Jan', 'Skalitz', '11', 'a'),
(453, 'Carmen', 'Tank', '7', 'd'),
(454, 'Jil', 'Wyink', '12', 'a'),
(455, 'Sandra', 'Skalitz', '11', 'd'),
(456, 'Simon', 'Einhaus', '10', 'b'),
(457, 'Thorsten', 'Debus', '12', 'd'),
(458, 'Jaqueline', 'Schmidt', '8', 'b'),
(459, 'Kevin', 'Schmidt', '11', 'c'),
(460, 'Martits', 'Wyink', '11', 'd'),
(461, 'Florian', 'Einhaus', '8', 'c'),
(462, 'David', 'Schmidt', '9', 'a'),
(463, 'Simon', 'Steinmetz', '7', 'c'),
(464, 'Christina', 'Steinmetz', '7', 'a'),
(465, 'Kevin', 'Knorr', '8', 'c'),
(466, 'Christina', 'Groß', '12', 'b'),
(467, 'Verena', 'Schröter', '6', 'd'),
(468, 'David', 'Steinmetz', '10', 'a'),
(469, 'Jens', 'Schröter', '11', 'a'),
(470, 'Judith', 'Althoff', '7', 'b'),
(471, 'Johann', 'Althoff', '8', 'a'),
(472, 'Kevin', 'Knorr', '12', 'a'),
(473, 'Jan', 'Lammertz', '10', 'a'),
(474, 'Johanna', 'Groß', '12', 'c'),
(475, 'Johanna', 'Lammertz', '11', 'd'),
(476, 'Johann', 'Blume', '9', 'c'),
(477, 'Jan', 'Schröter', '8', 'b'),
(478, 'Carmen', 'Kaufmann', '11', 'c'),
(479, 'Kevin', 'Althoff', '9', 'a'),
(480, 'Carmen', 'Schmidt', '8', 'a'),
(481, 'Sabrina', 'Tank', '9', 'd'),
(482, 'Thorsten', 'Groß', '12', 'd'),
(483, 'Judith', 'Debus', '7', 'c'),
(484, 'Lena', 'Groß', '8', 'b'),
(485, 'Sabrina', 'Althoff', '8', 'b'),
(486, 'Christina', 'Dynak', '8', 'c'),
(487, 'Lena', 'Wilhem', '12', 'c'),
(488, 'Hannah', 'Debus', '11', 'a'),
(489, 'Christina', 'Lammertz', '6', 'a'),
(490, 'Jana', 'Lammertz', '6', 'b'),
(491, 'Felix', 'Gößling', '12', 'b'),
(492, 'Sabrina', 'Kaufmann', '12', 'd'),
(493, 'Johann', 'Lammertz', '10', 'b'),
(494, 'Thorsten', 'Beck', '12', 'd'),
(495, 'Jens', 'Trogant', '8', 'c'),
(496, 'Thorsten', 'Meier', '6', 'd'),
(497, 'Jaqueline', 'Debus', '6', 'd'),
(498, 'Jil', 'Knorr', '11', 'c'),
(499, 'Verena', 'Blume', '7', 'd'),
(500, 'Thorsten', 'Dynak', '10', 'c'),
(501, 'Sabrina', 'Wyink', '7', 'a'),
(502, 'Hannah', 'Steinmetz', '8', 'a'),
(503, 'David', 'Brenner', '12', 'd'),
(504, 'Kevin', 'Meier', '8', 'b'),
(505, 'Lena', 'Blume', '8', 'b'),
(506, 'Florian', 'Meier', '7', 'a'),
(507, 'Judith', 'Tank', '10', 'b'),
(508, 'Carmen', 'Gößling', '6', 'c'),
(509, 'Michelle', 'Trogant', '11', 'c'),
(510, 'David', 'Steinmetz', '7', 'd'),
(511, 'Michelle', 'Meier', '6', 'a'),
(512, 'Maurice', 'Einhaus', '6', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `sportfeste`
--

CREATE TABLE `sportfeste` (
  `SportfestID` int(11) NOT NULL,
  `SportfestDatum` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sportfeste`
--

INSERT INTO `sportfeste` (`SportfestID`, `SportfestDatum`) VALUES
(1, '10.10.10'),
(2, '10.10.10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Vorname` varchar(50) NOT NULL,
  `Nachname` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Passwort` varchar(255) NOT NULL,
  `Status` int(2) NOT NULL,
  `session_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Vorname`, `Nachname`, `Email`, `Passwort`, `Status`, `session_ID`) VALUES
(2, 'Fabian', 'Schick', 'info@fabian-schick.de', '7c222fb2927d828af22f592134e8932480637c0d', 1, ''),
(3, 'Jan', 'Tank', 'info@Jan-Tank.de', '12345678', 1, ''),
(4, 'Maurice', 'Beck', 'info@Maurice-Beck.de', '12345678', 1, ''),
(5, 'Jan', 'Meier', 'info@Jan-Meier.de', '12345678', 1, ''),
(6, 'Jens', 'Meier', 'info@Jens-Meier.de', '12345678', 1, ''),
(7, 'Thorsten', 'Groß', 'info@Thorsten-Groß.de', '12345678', 1, ''),
(8, 'Thomas', 'Groß', 'info@Thomas-Groß.de', '12345678', 1, ''),
(9, 'Jan', 'Groß', 'info@Jan-Groß.de', '12345678', 1, ''),
(10, 'Maurice', 'Meier', 'info@Maurice-Meier.de', '12345678', 1, ''),
(11, 'Maurice', 'Beck', 'info@Maurice-Beck.de', '12345678', 1, ''),
(12, 'Thorsten', 'Beck', 'info@Thorsten-Beck.de', '12345678', 1, ''),
(13, 'Thorsten', 'Schmidt', 'info@Thorsten-Schmidt.de', '12345678', 1, ''),
(14, 'Thorsten', 'Groß', 'info@Thorsten-Groß.de', '12345678', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ergebnissesportfest`
--
ALTER TABLE `ergebnissesportfest`
  ADD PRIMARY KEY (`EintragsID`),
  ADD KEY `schuelerID` (`schuelerID`),
  ADD KEY `sportfestID` (`sportfestID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`EintragsID`);

--
-- Indexes for table `schuelersportfest`
--
ALTER TABLE `schuelersportfest`
  ADD PRIMARY KEY (`SchuelerID`);

--
-- Indexes for table `sportfeste`
--
ALTER TABLE `sportfeste`
  ADD PRIMARY KEY (`SportfestID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ergebnissesportfest`
--
ALTER TABLE `ergebnissesportfest`
  MODIFY `EintragsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `EintragsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `schuelersportfest`
--
ALTER TABLE `schuelersportfest`
  MODIFY `SchuelerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;
--
-- AUTO_INCREMENT for table `sportfeste`
--
ALTER TABLE `sportfeste`
  MODIFY `SportfestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ergebnissesportfest`
--
ALTER TABLE `ergebnissesportfest`
  ADD CONSTRAINT `ergebnissesportfest_ibfk_1` FOREIGN KEY (`schuelerID`) REFERENCES `schuelersportfest` (`SchuelerID`),
  ADD CONSTRAINT `ergebnissesportfest_ibfk_2` FOREIGN KEY (`sportfestID`) REFERENCES `sportfeste` (`SportfestID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
