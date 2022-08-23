-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 21, 2022 at 09:07 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_routes`
--

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routes_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `routes_name`) VALUES
(1, 'ER-01'),
(2, 'SR-02'),
(3, 'DR-03A'),
(4, 'DR-03B'),
(5, 'DR-05'),
(6, 'DR-06'),
(7, 'DR-07'),
(8, 'SR-08'),
(9, 'ER-09'),
(10, 'ER-10');

-- --------------------------------------------------------

--
-- Table structure for table `routes_stations`
--

DROP TABLE IF EXISTS `routes_stations`;
CREATE TABLE IF NOT EXISTS `routes_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `traveltimefromprevious_station` int(11) NOT NULL,
  `traveltimefromprevious_reverse` int(11) NOT NULL,
  `distance_from_previous_station` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

INSERT INTO `routes_stations` (`id`, `route_id`, `station_id`, `sequence`, `traveltimefromprevious_station`, `traveltimefromprevious_reverse`, `distance_from_previous_station`)
VALUES
(1,1,1,1,0,0,NULL),
(2,1,2,2,1,0,NULL),
(3,1,6,3,6,0,NULL),
(4,1,8,4,4,0,NULL),
(5,1,9,5,2,0,NULL),
(6,1,10,6,2,0,NULL),
(7,1,12,7,3,0,NULL),
(8,1,15,8,4,0,NULL),
(9,1,21,9,11,0,NULL),
(10,1,24,10,5,0,NULL),
(11,1,30,11,10,0,NULL),
(12,3,12,1,0,0,NULL),
(13,3,31,2,2,0,NULL),
(14,3,32,3,3,0,NULL),
(15,3,33,4,2,0,NULL),
(16,3,34,5,27,0,NULL),
(17,3,35,6,1,0,NULL),
(18,3,36,7,1,0,NULL),
(19,3,37,8,1,0,NULL),
(20,3,38,9,2,0,NULL),
(21,3,39,10,3,0,NULL),
(25,2,1,1,0,2,NULL),
(26,2,2,2,1,3,NULL),
(27,2,3,3,2,2,NULL),
(28,2,4,4,3,2,NULL),
(29,2,5,5,2,2,NULL),
(30,2,6,6,2,2,NULL),
(31,2,7,7,2,2,NULL),
(32,2,8,8,2,2,NULL),
(33,2,9,9,2,2,NULL),
(34,2,10,10,2,2,NULL),
(35,2,11,11,2,2,NULL),
(36,2,12,12,2,2,NULL),
(37,2,13,13,2,2,NULL),
(38,2,14,14,2,2,NULL),
(39,2,15,15,2,2,NULL),
(40,2,16,16,2,4,NULL),
(41,2,17,17,2,3,NULL),
(42,2,18,18,2,2,NULL),
(43,2,19,19,2,2,NULL),
(44,2,20,20,2,2,NULL),
(45,2,21,21,2,2,NULL),
(46,2,22,22,2,4,NULL),
(47,2,23,23,2,1,NULL),
(48,2,24,24,2,2,NULL),
(49,2,25,25,2,2,NULL),
(50,2,26,26,2,3,NULL),
(51,2,27,27,3,2,NULL),
(52,2,28,28,2,1,NULL),
(53,2,29,29,1,3,NULL),
(54,2,30,30,5,0,NULL),
(55,4,9,1,0,0,NULL),
(56,4,61,2,1,0,NULL),
(57,4,60,3,2,0,NULL),
(58,4,59,4,2,0,NULL),
(59,4,58,5,2,0,NULL),
(60,4,57,6,2,0,NULL),
(61,4,56,7,1,0,NULL),
(62,4,55,8,1,0,NULL),
(63,4,54,9,2,0,NULL),
(64,4,53,10,1,0,NULL),
(65,4,9,1,0,0,NULL),
(66,4,61,2,1,0,NULL),
(67,4,60,3,2,0,NULL),
(68,4,59,4,2,0,NULL),
(69,4,58,5,2,0,NULL),
(70,4,57,6,2,0,NULL),
(71,4,56,7,1,0,NULL),
(72,4,55,8,1,0,NULL),
(73,4,54,9,2,0,NULL),
(74,4,53,10,1,0,NULL),
(75,4,52,11,2,0,NULL),
(76,4,51,12,1,0,NULL),
(77,4,50,13,1,0,NULL),
(78,4,49,14,2,0,NULL),
(79,4,48,15,1,0,NULL),
(80,4,47,16,2,0,NULL),
(81,4,46,17,1,0,NULL),
(82,4,45,18,1,0,NULL),
(83,4,44,19,2,0,NULL),
(84,4,43,20,1,0,NULL),
(85,4,42,21,1,0,NULL),
(86,4,41,22,2,0,NULL),
(87,4,40,23,1,0,NULL),
(88,5,24,1,0,0,NULL),
(89,5,80,2,1,0,NULL),
(90,5,81,3,1,0,NULL),
(91,5,82,4,1,0,NULL),
(92,5,83,5,2,0,NULL),
(93,5,84,6,1,0,NULL),
(94,5,85,7,2,0,NULL),
(95,5,86,8,1,0,NULL),
(96,5,87,9,1,0,NULL),
(97,5,88,10,2,0,NULL),
(98,5,89,11,2,0,NULL),
(99,5,90,12,1,0,NULL),
(100,5,91,13,2,0,NULL),
(101,6,24,1,0,0,NULL),
(102,6,25,2,1,0,NULL),
(103,6,26,3,2,0,NULL),
(104,6,92,4,2,0,NULL),
(105,6,93,5,1,0,NULL),
(106,6,84,6,1,0,NULL),
(107,6,94,7,2,0,NULL),
(108,6,95,8,2,0,NULL),
(109,6,96,9,1,0,NULL),
(110,6,97,10,5,0,NULL),
(111,6,98,11,2,0,NULL),
(112,6,99,12,1,0,NULL),
(113,6,100,13,2,0,NULL),
(114,6,111,14,1,0,NULL),
(115,6,101,15,1,0,NULL),
(116,6,102,16,1,0,NULL),
(117,6,24,1,0,0,NULL),
(118,6,25,2,1,0,NULL),
(119,6,26,3,2,0,NULL),
(120,6,92,4,2,0,NULL),
(121,6,93,5,1,0,NULL),
(122,6,84,6,1,0,NULL),
(123,6,94,7,2,0,NULL),
(124,6,95,8,2,0,NULL),
(125,6,96,9,1,0,NULL),
(126,6,97,10,5,0,NULL),
(127,6,98,11,2,0,NULL),
(128,6,99,12,1,0,NULL),
(129,6,100,13,2,0,NULL),
(130,6,111,14,1,0,NULL),
(131,6,101,15,1,0,NULL),
(132,6,102,16,1,0,NULL),
(133,7,30,1,0,0,NULL),
(134,7,112,2,1,0,NULL),
(135,7,103,3,1,0,NULL),
(136,7,104,4,1,0,NULL),
(137,7,105,5,1,0,NULL),
(138,7,106,6,2,0,NULL),
(139,7,107,7,1,0,NULL),
(140,7,95,8,1,0,NULL),
(141,7,94,9,2,0,NULL),
(142,7,108,10,2,0,NULL),
(143,7,109,11,1,0,NULL),
(144,7,89,12,2,0,NULL),
(145,7,110,13,2,0,NULL),
(146,7,102,14,2,0,NULL),
(147,8,38,1,0,0,NULL),
(148,8,8,2,1,0,NULL),
(149,8,9,3,2,0,NULL),
(150,8,10,4,3,0,NULL),
(151,8,11,5,1,0,NULL),
(152,8,12,6,2,0,NULL),
(153,8,13,7,2,0,NULL),
(154,8,14,8,2,0,NULL),
(155,8,15,9,2,0,NULL),
(156,8,16,10,2,0,NULL),
(157,8,17,11,4,0,NULL),
(158,8,18,12,2,0,NULL),
(159,8,19,13,2,0,NULL),
(160,8,20,14,2,0,NULL),
(161,8,21,15,2,0,NULL),
(162,8,22,16,2,0,NULL),
(163,8,23,17,1,0,NULL),
(164,8,24,18,4,0,NULL),
(165,9,7,1,0,0,NULL),
(166,9,9,2,1,0,NULL),
(167,9,12,3,5,0,NULL),
(168,9,15,4,4,0,NULL),
(169,9,19,5,9,0,NULL),
(170,9,21,6,3,0,NULL),
(171,9,23,7,3,0,NULL),
(172,9,81,8,5,0,NULL),
(173,9,82,9,2,0,NULL),
(174,9,83,10,2,0,NULL),
(175,9,94,11,4,0,NULL),
(176,9,89,12,5,0,NULL),
(177,9,90,13,2,0,NULL),
(178,9,91,14,2,0,NULL),
(179,10,29,1,0,0,NULL),
(180,10,26,2,3,0,NULL),
(181,10,24,3,4,0,NULL),
(182,10,22,4,4,0,NULL),
(183,10,17,5,8,0,NULL),
(184,10,16,6,4,0,NULL),
(185,10,15,7,2,0,NULL),
(186,10,35,8,12,0,NULL),
(187,10,37,9,3,0,NULL),
(188,10,39,10,3,0,NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stations_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `stations_name`) VALUES
(10, 'Khyber Bazar'),
(9, 'Malik Saad Shaheed'),
(8, 'Hashtnagri'),
(7, 'Gulbahar Chowk'),
(6, 'Lahore Adda'),
(5, 'Old Haji Camp'),
(4, 'Faisal Colony'),
(3, 'Chughal Pura'),
(2, 'Sardar Ghari'),
(1, 'Chamkani'),
(11, 'Shoba Bazar'),
(12, 'Dabgari Gardens'),
(13, 'Railway Station'),
(14, 'FC Chowk'),
(15, 'Saddar Bazar'),
(16, 'Mall road'),
(17, 'Tehkal Payyan'),
(18, 'Tehkal Bala'),
(19, 'Abdara road'),
(20, 'University town'),
(21, 'University of Peshawar'),
(22, 'Islamia College'),
(23, 'Board Bazar'),
(24, 'Mall of Hayatabad'),
(25, 'Bab-e-Peshawar'),
(26, 'Hayatabad Phase 3'),
(27, 'Tatara Park'),
(28, 'PDA'),
(29, 'Hospital Chowk'),
(30, 'Karkhano Market'),
(31, 'Shaheed Saqib Ghani School'),
(32, 'Civil Quarters'),
(33, 'Bhana Marri'),
(34, 'Civil Colony'),
(35, 'Technical College'),
(36, 'Landi Arbab'),
(37, 'Ghari Qamar Din'),
(38, 'Gulshan Rehman Colony'),
(39, 'Kohat Adda'),
(40, 'Shah Alam Pull '),
(41, 'Wahid Garhi'),
(42, 'Tauda'),
(43, 'Khazana'),
(44, 'Faqeer Abad'),
(45, 'Sewan'),
(46, 'Sugar Mill'),
(47, 'Nasapa Bala'),
(48, 'Nasapa'),
(49, 'Muslim Abad'),
(50, 'Bakhshu Pul'),
(51, 'Ibrahim Abad'),
(52, 'Habib Abad'),
(53, 'Shero Jhangi'),
(54, 'Landey Sarrak'),
(55, 'Nishat Mill'),
(56, 'Budhni Pull'),
(57, 'Shaheed Tehsin Chowk'),
(58, 'Charsadda adda'),
(59, 'Eid Gah'),
(60, 'Shahi Bagh'),
(61, 'Bacha Khan Chowk'),
(62, 'Pir Zakori Bridge'),
(63, 'Motorway Bridge'),
(64, 'Kamboh Adda'),
(65, 'Pahari Pura'),
(66, 'Kabotar Chowk'),
(67, 'MMC Hospital'),
(68, 'Wazir Colony'),
(69, 'Abasyn University'),
(70, 'Patang Chowk'),
(71, 'Stadium Chowk'),
(72, 'Khyber Super Market'),
(73, 'Swatu Pattak'),
(74, 'Airport'),
(75, 'Bara Gate'),
(76, 'Rashakai'),
(77, 'Custom Chowk'),
(78, 'Pishtakhara Thana'),
(79, 'Pishtakhara Chowk'),
(80, 'Bakht Khan Market'),
(81, 'Basharat Market'),
(82, 'Yousafzai Market'),
(83, 'Ring road Bridge'),
(84, 'Itwar Bazar'),
(85, 'Achini'),
(86, 'Shalman Park'),
(87, 'Government College'),
(88, 'CECOS University'),
(89, 'Gol Chowk'),
(90, 'Nawab Market'),
(91, 'Phase 6 Terminal'),
(92, 'Bagh-e-Naran'),
(93, 'Iqra University'),
(94, 'Zarghuni Masjid'),
(95, 'Lalazar'),
(96, 'Malik Saad Market'),
(97, 'Rehman Baba Market'),
(98, 'Haji Camp'),
(99, 'Judicial Complex'),
(100, 'Madrassa'),
(101, 'IMSciences'),
(102, 'Phase 7 Terminal'),
(103, 'TEVTA'),
(104, 'Fort'),
(105, 'Industrial Estate'),
(106, 'Fast University'),
(107, 'Shamali Market'),
(108, 'Deans Heigths'),
(109, 'Phase 7 Chowk'),
(110, 'Bangash Market'),
(111, 'Football Ground'),
(112, 'Karkhano Chowk');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
