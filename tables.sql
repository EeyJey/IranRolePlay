-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 12:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fivem5`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
(1, 'caution', 'Caution', 0),
(2, 'society_cardealer', 'Galery mashin', 1),
(3, 'society_ambulance', 'Bimarestan', 1),
(4, 'society_mecano', 'Mekanik', 1),
(5, 'society_police', 'Police', 1),
(6, 'society_tabac', 'Dokhaniyat', 1),
(7, 'society_taxi', 'Taxi', 1),
(8, 'society_unicorn', 'Kabare', 1),
(9, 'society_vigne', 'Takestan', 1),
(10, 'property_black_money', 'Darayi e pool e siyah', 0),
(11, 'society_realestateagent', 'Moshaver e amlak', 1),
(12, 'society_bahama', 'Disco', 1),
(13, 'society_avocat', 'Dadgostari', 1),
(14, 'society_aircraftdealer', 'Havapeyma sazi', 1),
(15, 'society_boatdealer', 'Kashtisazi', 1),
(16, 'organisation_mafia', 'Mafia', 1),
(17, 'organisation_gang', 'gang', 1),
(18, 'organisation_cartel', 'Cartel', 1),
(19, 'society_biker', 'Motorsavara', 1),
(20, 'society_securiter', 'Security', 1),
(21, 'society_mafia', 'Mafia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 5505920, NULL),
(2, 'society_ambulance', 425200, NULL),
(3, 'society_mecano', 5519713, NULL),
(4, 'society_police', 10001023770, NULL),
(5, 'society_tabac', 6438, NULL),
(6, 'society_taxi', 154530, NULL),
(7, 'society_unicorn', 10097000, NULL),
(8, 'society_vigne', 0, NULL),
(9, 'caution', 0, 'steam:11000010d6c30cb'),
(10, 'society_realestateagent', 4756, NULL),
(11, 'property_black_money', 0, 'steam:11000010d6c30cb'),
(12, 'society_bahama', 278090, NULL),
(13, 'society_avocat', 1000, NULL),
(14, 'society_aircraftdealer', 0, NULL),
(15, 'society_boatdealer', 0, NULL),
(16, 'property_black_money', 0, 'steam:11000010ed15b6b'),
(17, 'caution', 0, 'steam:11000010ed15b6b'),
(18, 'property_black_money', 0, 'steam:1100001325b7a9b'),
(19, 'caution', 0, 'steam:1100001325b7a9b'),
(20, 'caution', 0, 'steam:110000111b71726'),
(21, 'property_black_money', 54000, 'steam:110000111b71726'),
(22, 'caution', 0, 'steam:110000113248a42'),
(23, 'property_black_money', 0, 'steam:110000113248a42'),
(24, 'caution', 0, 'steam:110000117d510a6'),
(25, 'property_black_money', 0, 'steam:110000117d510a6'),
(26, 'caution', 0, 'steam:11000011ad5e46e'),
(27, 'property_black_money', 0, 'steam:11000011ad5e46e'),
(28, 'caution', 0, 'steam:11000010ede2397'),
(29, 'property_black_money', 0, 'steam:11000010ede2397'),
(30, 'caution', 0, 'steam:11000011230bca7'),
(31, 'property_black_money', 0, 'steam:11000011230bca7'),
(32, 'caution', 0, 'steam:11000010719503b'),
(33, 'property_black_money', 0, 'steam:11000010719503b'),
(34, 'caution', 0, 'steam:11000013491dae7'),
(35, 'property_black_money', 0, 'steam:11000013491dae7'),
(36, 'caution', 0, 'steam:110000131d556ee'),
(37, 'property_black_money', 0, 'steam:110000131d556ee'),
(38, 'caution', 0, 'steam:110000119ac453f'),
(39, 'property_black_money', 0, 'steam:110000119ac453f'),
(40, 'caution', 0, 'steam:110000134626eca'),
(41, 'property_black_money', 0, 'steam:110000134626eca'),
(42, 'caution', 0, 'steam:1100001196b3017'),
(43, 'property_black_money', 0, 'steam:1100001196b3017'),
(44, 'property_black_money', 0, 'steam:11000010f7f9504'),
(45, 'caution', 0, 'steam:11000010f7f9504'),
(46, 'caution', 0, 'steam:11000010d17d505'),
(47, 'property_black_money', 0, 'steam:11000010d17d505'),
(48, 'property_black_money', 148000, 'steam:11000010cb4181f'),
(49, 'caution', 0, 'steam:11000010cb4181f'),
(50, 'caution', 0, 'steam:11000011a59b3fc'),
(51, 'property_black_money', 0, 'steam:11000011a59b3fc'),
(52, 'caution', 0, 'steam:110000104cf5aeb'),
(53, 'property_black_money', 0, 'steam:110000104cf5aeb'),
(54, 'caution', 0, 'steam:11000010d819702'),
(55, 'property_black_money', 0, 'steam:11000010d819702'),
(56, 'property_black_money', 0, 'steam:11000010032f30a'),
(57, 'caution', 0, 'steam:11000010032f30a'),
(58, 'caution', 0, 'steam:110000108ddaaf3'),
(59, 'property_black_money', 0, 'steam:110000108ddaaf3'),
(60, 'caution', 0, 'steam:11000013493c4b7'),
(61, 'property_black_money', 0, 'steam:11000013493c4b7'),
(62, 'caution', 0, 'steam:1100001179c3bb7'),
(63, 'property_black_money', 0, 'steam:1100001179c3bb7'),
(64, 'caution', 0, 'steam:11000010dd9c7d6'),
(65, 'property_black_money', 0, 'steam:11000010dd9c7d6'),
(66, 'caution', 0, 'steam:110000103c6f9cc'),
(67, 'property_black_money', 0, 'steam:110000103c6f9cc'),
(68, 'caution', 2000, 'steam:110000132b7e237'),
(69, 'property_black_money', 0, 'steam:110000132b7e237'),
(70, 'property_black_money', 0, 'steam:1100001350a83ef'),
(71, 'caution', 0, 'steam:1100001350a83ef'),
(72, 'property_black_money', 0, 'steam:110000117825a22'),
(73, 'caution', 0, 'steam:110000117825a22'),
(74, 'property_black_money', 0, 'steam:110000135b8dcac'),
(75, 'caution', 0, 'steam:110000135b8dcac'),
(76, 'society_mafia', 80000, NULL),
(77, 'society_gang', 0, NULL),
(78, 'caution', 0, 'steam:11000011b8aadb1'),
(79, 'property_black_money', 0, 'steam:11000011b8aadb1'),
(80, 'organisation_mafia', 0, NULL),
(81, 'organisation_gang', 216160, NULL),
(82, 'organisation_cartel', 279500, NULL),
(84, 'caution', 0, 'steam:110000110c6f75a'),
(85, 'property_black_money', 0, 'steam:110000110c6f75a'),
(86, 'caution', 0, 'steam:11000011555ac07'),
(87, 'property_black_money', 0, 'steam:11000011555ac07'),
(88, 'property_black_money', 0, 'steam:11000011c0b0ace'),
(89, 'caution', 0, 'steam:11000011c0b0ace'),
(90, 'caution', 0, 'steam:11000011c7b5be5'),
(91, 'property_black_money', 0, 'steam:11000011c7b5be5'),
(92, 'property_black_money', 0, 'steam:110000111bfcd46'),
(93, 'caution', 0, 'steam:110000111bfcd46'),
(94, 'property_black_money', 0, 'steam:11000011ce402c4'),
(95, 'caution', 0, 'steam:11000011ce402c4'),
(96, 'property_black_money', 10781, 'steam:11000011acec85a'),
(97, 'caution', 0, 'steam:11000011acec85a'),
(98, 'property_black_money', 0, 'steam:110000132a349ee'),
(99, 'caution', 0, 'steam:110000132a349ee'),
(100, 'caution', 0, 'steam:11000010bb4b9f1'),
(101, 'property_black_money', 0, 'steam:11000010bb4b9f1'),
(102, 'property_black_money', 0, 'steam:11000013613fa78'),
(103, 'caution', 0, 'steam:11000013613fa78'),
(104, 'caution', 0, 'steam:110000111a58cab'),
(105, 'property_black_money', 0, 'steam:110000111a58cab'),
(106, 'property_black_money', 0, 'steam:11000011760b77b'),
(107, 'caution', 0, 'steam:11000011760b77b'),
(108, 'property_black_money', 0, 'steam:110000110bff738'),
(109, 'caution', 0, 'steam:110000110bff738'),
(110, 'caution', 0, 'steam:11000010f8be390'),
(111, 'property_black_money', 0, 'steam:11000010f8be390'),
(112, 'caution', 0, 'steam:1100001154fdc54'),
(113, 'property_black_money', 0, 'steam:1100001154fdc54'),
(114, 'property_black_money', 0, 'steam:11000011ae2da25'),
(115, 'caution', 0, 'steam:11000011ae2da25'),
(116, 'caution', 0, 'steam:11000010e555ae1'),
(117, 'property_black_money', 0, 'steam:11000010e555ae1'),
(118, 'property_black_money', 0, 'steam:11000010ccc8c9b'),
(119, 'caution', 0, 'steam:11000010ccc8c9b'),
(120, 'caution', 0, 'steam:11000013260f4bc'),
(121, 'property_black_money', 0, 'steam:11000013260f4bc'),
(122, 'caution', 0, 'steam:11000010f3c770c'),
(123, 'property_black_money', 0, 'steam:11000010f3c770c'),
(124, 'caution', 0, 'steam:11000010c4036d7'),
(125, 'property_black_money', 0, 'steam:11000010c4036d7'),
(126, 'property_black_money', 0, 'steam:1100001076bae8a'),
(127, 'caution', 0, 'steam:1100001076bae8a'),
(128, 'caution', 0, 'steam:110000118496987'),
(129, 'property_black_money', 0, 'steam:110000118496987'),
(130, 'caution', 0, 'steam:11000010f4464c0'),
(131, 'property_black_money', 0, 'steam:11000010f4464c0'),
(132, 'property_black_money', 0, 'steam:110000109729f67'),
(133, 'caution', 0, 'steam:110000109729f67'),
(134, 'property_black_money', 0, 'steam:110000108f366a1'),
(135, 'caution', 2000, 'steam:110000108f366a1'),
(136, 'caution', 0, 'steam:11000011669fc09'),
(137, 'property_black_money', 0, 'steam:11000011669fc09'),
(138, 'caution', 0, 'steam:11000011172f5d0'),
(139, 'property_black_money', 0, 'steam:11000011172f5d0'),
(140, 'caution', 0, 'steam:11000010fb96ddc'),
(141, 'property_black_money', 0, 'steam:11000010fb96ddc'),
(142, 'caution', 0, 'steam:110000118d3e52c'),
(143, 'property_black_money', 0, 'steam:110000118d3e52c'),
(144, 'property_black_money', 0, 'steam:11000010d6914d7'),
(145, 'caution', 0, 'steam:11000010d6914d7'),
(146, 'caution', 0, 'steam:110000107122573'),
(147, 'property_black_money', 0, 'steam:110000107122573'),
(148, 'property_black_money', 0, 'steam:11000010b4bab32'),
(149, 'caution', 0, 'steam:11000010b4bab32'),
(150, 'caution', 0, 'steam:11000011ccff156'),
(151, 'property_black_money', 0, 'steam:11000011ccff156'),
(152, 'property_black_money', 0, 'steam:11000011d24e38e'),
(153, 'caution', 0, 'steam:11000011d24e38e'),
(154, 'caution', 0, 'steam:110000113e42854'),
(155, 'property_black_money', 0, 'steam:110000113e42854'),
(156, 'property_black_money', 0, 'steam:11000011861fe2d'),
(157, 'caution', 0, 'steam:11000011861fe2d'),
(158, 'property_black_money', 0, 'steam:110000108f73203'),
(159, 'caution', 0, 'steam:110000108f73203'),
(160, 'society_biker', 436000, NULL),
(161, 'property_black_money', 0, 'steam:1100001155e5d75'),
(162, 'caution', 0, 'steam:1100001155e5d75'),
(163, 'property_black_money', 0, 'steam:1100001080602bc'),
(164, 'caution', 2000, 'steam:1100001080602bc'),
(165, 'caution', 0, 'steam:11000010e7887ad'),
(166, 'property_black_money', 0, 'steam:11000010e7887ad'),
(167, 'caution', 0, 'steam:11000013621a142'),
(168, 'property_black_money', 0, 'steam:11000013621a142'),
(169, 'property_black_money', 0, 'steam:11000010f692bdd'),
(170, 'caution', 0, 'steam:11000010f692bdd'),
(171, 'caution', 0, 'steam:11000013582fc5f'),
(172, 'property_black_money', 0, 'steam:11000013582fc5f'),
(173, 'caution', 0, 'steam:110000133ef6d99'),
(174, 'property_black_money', 0, 'steam:110000133ef6d99'),
(175, 'property_black_money', 0, 'steam:110000114b9921b'),
(176, 'caution', 0, 'steam:110000114b9921b'),
(177, 'caution', 0, 'steam:110000118c34052'),
(178, 'property_black_money', 0, 'steam:110000118c34052'),
(179, 'caution', 0, 'steam:11000010c9bdcd9'),
(180, 'property_black_money', 0, 'steam:11000010c9bdcd9'),
(181, 'property_black_money', 0, 'steam:1100001353fe56e'),
(182, 'caution', 0, 'steam:1100001353fe56e'),
(183, 'property_black_money', 0, 'steam:1100001173d36f1'),
(184, 'caution', 76, 'steam:1100001173d36f1'),
(185, 'caution', 0, 'steam:11000010d228cea'),
(186, 'property_black_money', 0, 'steam:11000010d228cea'),
(187, 'property_black_money', 0, 'steam:110000111593e00'),
(188, 'caution', 0, 'steam:110000111593e00'),
(189, 'caution', 0, 'steam:11000010e49b073'),
(190, 'property_black_money', 0, 'steam:11000010e49b073'),
(191, 'caution', 0, 'steam:11000010e81d760'),
(192, 'property_black_money', 0, 'steam:11000010e81d760'),
(193, 'property_black_money', 0, 'steam:110000119c0d7ec'),
(194, 'caution', 59, 'steam:110000119c0d7ec'),
(195, 'caution', 0, 'steam:11000010b490325'),
(196, 'property_black_money', 0, 'steam:11000010b490325'),
(197, 'society_securiter', 0, NULL),
(198, 'caution', 0, 'steam:110000109b99f47'),
(199, 'property_black_money', 0, 'steam:110000109b99f47'),
(200, 'caution', 0, 'steam:11000011cded001'),
(201, 'property_black_money', 0, 'steam:11000011cded001'),
(202, 'caution', 0, 'steam:1100001128ff308'),
(203, 'property_black_money', 0, 'steam:1100001128ff308'),
(204, 'caution', 0, 'steam:110000118282d31'),
(205, 'property_black_money', 0, 'steam:110000118282d31'),
(206, 'caution', 0, 'steam:11000010c789c31'),
(207, 'property_black_money', 0, 'steam:11000010c789c31'),
(208, 'caution', 0, 'steam:1100001173f3092'),
(209, 'property_black_money', 0, 'steam:1100001173f3092'),
(210, 'property_black_money', 0, 'steam:11000010b4b70d9'),
(211, 'caution', 0, 'steam:11000010b4b70d9'),
(212, 'caution', 0, 'steam:11000010077a8c1'),
(213, 'property_black_money', 0, 'steam:11000010077a8c1'),
(214, 'caution', 0, 'steam:110000132daf29b'),
(215, 'property_black_money', 0, 'steam:110000132daf29b'),
(216, 'property_black_money', 0, 'steam:110000116a28200'),
(217, 'caution', 0, 'steam:110000116a28200'),
(218, 'caution', 0, 'steam:11000010013511a'),
(219, 'property_black_money', 0, 'steam:11000010013511a'),
(220, 'property_black_money', 0, 'steam:11000010eb00ea7'),
(221, 'caution', 0, 'steam:11000010eb00ea7'),
(222, 'caution', 0, 'steam:1100001152f0a24'),
(223, 'property_black_money', 0, 'steam:1100001152f0a24'),
(224, 'property_black_money', 0, 'steam:110000117053659'),
(225, 'caution', 0, 'steam:110000117053659'),
(226, 'caution', 0, 'steam:1100001136fb180'),
(227, 'property_black_money', 0, 'steam:1100001136fb180'),
(228, 'caution', 0, 'steam:11000013634c728'),
(229, 'property_black_money', 0, 'steam:11000013634c728'),
(230, 'property_black_money', 0, 'steam:1100001135b73a1'),
(231, 'caution', 0, 'steam:1100001135b73a1'),
(232, 'caution', 0, 'steam:11000010ca2c7e9'),
(233, 'property_black_money', 0, 'steam:11000010ca2c7e9'),
(234, 'caution', 0, 'steam:1100001077856e8'),
(235, 'property_black_money', 0, 'steam:1100001077856e8'),
(236, 'caution', 0, 'steam:110000131f9e30e'),
(237, 'property_black_money', 0, 'steam:110000131f9e30e'),
(238, 'caution', 0, 'steam:110000119dc2827'),
(239, 'property_black_money', 0, 'steam:110000119dc2827'),
(240, 'caution', 0, 'steam:1100001061d0cb1'),
(241, 'property_black_money', 0, 'steam:1100001061d0cb1'),
(242, 'caution', 0, 'steam:11000011852ee0c'),
(243, 'property_black_money', 0, 'steam:11000011852ee0c'),
(244, 'property_black_money', 0, 'steam:11000011d1423db'),
(245, 'caution', 0, 'steam:11000011d1423db'),
(246, 'property_black_money', 0, 'steam:11000010302b529'),
(247, 'caution', 0, 'steam:11000010302b529'),
(248, 'property_black_money', 0, 'steam:110000119a721fd'),
(249, 'caution', 0, 'steam:110000119a721fd'),
(250, 'caution', 0, 'steam:110000114a6bf17'),
(251, 'property_black_money', 0, 'steam:110000114a6bf17'),
(252, 'property_black_money', 0, 'steam:11000010acfe014'),
(253, 'caution', 0, 'steam:11000010acfe014'),
(254, 'caution', 0, 'steam:11000011cf4c40d'),
(255, 'property_black_money', 0, 'steam:11000011cf4c40d'),
(256, 'society_army', 0, NULL),
(257, 'caution', 0, 'steam:11000010a01c0bc'),
(258, 'property_black_money', 0, 'steam:11000010a01c0bc'),
(259, 'caution', 0, 'steam:1100001098c0f10'),
(260, 'property_black_money', 0, 'steam:1100001098c0f10'),
(261, 'property_black_money', 0, 'steam:11000013518e15d'),
(262, 'caution', 0, 'steam:11000013518e15d'),
(263, 'caution', 0, 'steam:11000010cba93cb'),
(264, 'property_black_money', 0, 'steam:11000010cba93cb'),
(265, 'property_black_money', 0, 'steam:1100001048dd98c'),
(266, 'caution', 0, 'steam:1100001048dd98c'),
(267, 'property_black_money', 0, 'steam:11000011bd90656'),
(268, 'caution', 0, 'steam:11000011bd90656'),
(269, 'caution', 0, 'steam:110000115a29e25'),
(270, 'property_black_money', 0, 'steam:110000115a29e25'),
(271, 'property_black_money', 0, 'steam:110000114a058a8'),
(272, 'caution', 0, 'steam:110000114a058a8'),
(273, 'property_black_money', 0, 'steam:1100001167d265e'),
(274, 'caution', 0, 'steam:1100001167d265e'),
(275, 'caution', 0, 'steam:1100001197619a3'),
(276, 'property_black_money', 0, 'steam:1100001197619a3'),
(277, 'caution', 0, 'steam:1100001045fbd8f'),
(278, 'property_black_money', 0, 'steam:1100001045fbd8f'),
(279, 'property_black_money', 0, 'steam:11000010a1b83df'),
(280, 'caution', 0, 'steam:11000010a1b83df'),
(281, 'caution', 0, 'steam:11000010b3a30a0'),
(282, 'property_black_money', 7352, 'steam:11000010b3a30a0'),
(283, 'property_black_money', 0, 'steam:11000011685b145'),
(284, 'caution', 0, 'steam:11000011685b145'),
(285, 'caution', 0, 'steam:1100001197354a7'),
(286, 'property_black_money', 0, 'steam:1100001197354a7'),
(287, 'property_black_money', 0, 'steam:110000111df570b');

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
(1, 'society_cardealer', 'Galery mashin', 1),
(2, 'society_ambulance', 'Bimarestan', 1),
(3, 'society_mecano', 'Mekanik', 1),
(4, 'society_police', 'Police', 1),
(5, 'society_tabac', 'Dokhaniyat', 1),
(6, 'society_taxi', 'Taxi', 1),
(7, 'society_unicorn', 'Kabare', 1),
(8, 'society_unicorn_fridge', 'Kabare (yakhchal)', 1),
(9, 'society_vigne', 'Takestan', 1),
(10, 'property', 'Amlak', 0),
(11, 'society_bahama', 'Disco', 1),
(12, 'society_avocat', 'Dadgostari', 1),
(13, 'society_aircraftdealer', 'Havapeyma sazi', 1),
(14, 'society_boatdealer', 'Keshti sazi', 1),
(15, 'organisation_mafia', 'Mafia', 1),
(16, 'organisation_gang', 'Gang', 1),
(17, 'organisation_cartel', 'Cartel', 1),
(18, 'society_biker', 'Motorsavara', 1),
(19, 'society_securiter', 'Security', 1),
(20, 'society_mafia', 'Mafia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_vigne', 'raisin', 0, NULL),
(2, 'society_tabac', 'malbora', 0, NULL),
(3, 'society_tabac', 'gitanes', 0, NULL),
(4, 'society_tabac', 'tequila', 0, NULL),
(5, 'society_tabac', 'redbull', 0, NULL),
(6, 'society_tabac', 'whisky', 0, NULL),
(7, 'society_tabac', 'vodka', 0, NULL),
(8, 'society_tabac', 'grand_cru', 0, NULL),
(9, 'property', 'tabacbrun', 0, 'steam:110000111b71726'),
(10, 'property', 'water', 0, 'steam:110000111b71726'),
(11, 'property', 'bread', 0, 'steam:110000111b71726'),
(12, 'property', 'diamond', 0, 'steam:110000111b71726'),
(13, 'society_tabac', 'weed', 0, NULL),
(14, 'property', 'tabacbrunsec', 0, 'steam:110000111b71726'),
(15, 'property', 'croquettes', 43, 'steam:11000011c7b5be5'),
(16, 'property', 'weed', 50, 'steam:110000111b71726'),
(17, 'property', 'weed_pooch', 34, 'steam:110000111b71726'),
(18, 'property', 'gitanes', 0, 'steam:110000111b71726'),
(19, 'society_police', 'wool', 69, NULL),
(20, 'society_tabac', 'tabacbrunsec', 0, NULL),
(21, 'society_tabac', 'tabacbrun', 0, NULL),
(22, 'society_tabac', 'water', 0, NULL),
(23, 'society_tabac', 'bread', 0, NULL),
(24, 'society_tabac', 'weed_pooch', 0, NULL),
(25, 'society_police', 'weed', 230, NULL),
(26, 'society_unicorn', 'weed', 25, NULL),
(27, 'society_police', 'cagoule', 0, NULL),
(28, 'organisation_mafia', 'coke_pooch', 0, NULL),
(29, 'organisation_mafia', 'opium', 0, NULL),
(30, 'organisation_mafia', 'weed', 0, NULL),
(31, 'organisation_mafia', 'coke', 0, NULL),
(32, 'organisation_gang', 'weed', 483, NULL),
(33, 'property', 'grand_cru', 50, 'steam:110000111b71726'),
(34, 'property', 'redbull', 0, 'steam:110000111b71726'),
(35, 'property', 'yusuf', 0, 'steam:110000111b71726'),
(36, 'property', 'tabacblond', 1316, 'steam:110000111b71726'),
(37, 'property', 'tequila', 100, 'steam:110000111b71726'),
(38, 'organisation_mafia', 'malbora', 0, NULL),
(39, 'organisation_mafia', 'weed_pooch', 0, NULL),
(40, 'organisation_mafia', 'tabacblond', 0, NULL),
(41, 'organisation_mafia', 'yusuf', 17, NULL),
(42, 'organisation_mafia', 'silencieux', 12, NULL),
(43, 'organisation_mafia', 'grip', 8, NULL),
(44, 'organisation_mafia', 'clip', 0, NULL),
(45, 'society_police', 'flashlight', 5, NULL),
(46, 'society_police', 'clip', 26, NULL),
(47, 'society_police', 'silencieux', 6, NULL),
(48, 'society_mecano', 'fixkit', 13, NULL),
(49, 'society_mecano', 'blowpipe', 10, NULL),
(50, 'property', 'water', 0, 'steam:11000011c7b5be5'),
(51, 'property', 'bread', 34, 'steam:11000011c7b5be5'),
(52, 'property', 'flashlight', 1, 'steam:11000011c7b5be5'),
(53, 'society_police', 'weed_pooch', 10, NULL),
(54, 'property', 'malbora', 0, 'steam:110000111b71726'),
(55, 'organisation_mafia', 'raisin', 0, NULL),
(56, 'society_mecano', 'weed_pooch', 0, NULL),
(57, 'organisation_gang', 'coke', 50, NULL),
(58, 'society_police', 'coke', 66, NULL),
(59, 'society_police', 'opium', 5, NULL),
(60, 'society_mecano', 'coke', 0, NULL),
(61, 'society_mecano', 'opium', 0, NULL),
(62, 'society_police', 'malbora', 0, NULL),
(63, 'property', 'coke_pooch', 24, 'steam:110000111b71726'),
(64, 'property', 'coke', 450, 'steam:110000111b71726'),
(65, 'property', 'coke', 0, 'steam:11000010cb4181f'),
(66, 'property', 'cagoule', 1, 'steam:11000011acec85a'),
(67, 'property', 'clip', 6, 'steam:11000011acec85a'),
(68, 'property', 'coke', 475, 'steam:11000011acec85a'),
(69, 'property', 'malbora', 34, 'steam:11000011acec85a'),
(70, 'property', 'weed', 136, 'steam:11000011acec85a'),
(71, 'property', 'coke', 21, 'steam:1100001325b7a9b'),
(72, 'property', 'opium', 0, 'steam:1100001325b7a9b'),
(73, 'property', 'weed_pooch', 3598, 'steam:1100001325b7a9b'),
(74, 'property', 'weed', 1272, 'steam:1100001325b7a9b'),
(75, 'property', 'weed_pooch', 0, 'steam:11000011acec85a'),
(76, 'property', 'coke_pooch', 10, 'steam:110000118c34052'),
(77, 'property', 'weed', 0, 'steam:110000110c6f75a'),
(78, 'property', 'weed', 0, 'steam:110000103c6f9cc'),
(79, 'property', 'weed_pooch', 219, 'steam:110000103c6f9cc'),
(80, 'organisation_gang', 'clip', 0, NULL),
(81, 'property', 'water', 0, 'steam:11000011acec85a'),
(82, 'property', 'grand_cru', 0, 'steam:11000011cded001'),
(83, 'property', 'weed', 0, 'steam:11000011cded001'),
(84, 'society_police', 'coke_pooch', 11, NULL),
(85, 'property', 'weed', 29, 'steam:11000010f3c770c'),
(86, 'property', 'tequila', 0, 'steam:110000103c6f9cc'),
(87, 'society_police', 'grand_cru', 8, NULL),
(88, 'organisation_gang', 'opium', 50, NULL),
(89, 'organisation_gang', 'meth_pooch', 0, NULL),
(90, 'property', 'bread', 0, 'steam:110000118c34052'),
(91, 'property', 'weed_pooch', 120, 'steam:1100001179c3bb7'),
(92, 'property', 'weed', 0, 'steam:1100001179c3bb7'),
(93, 'property', 'tequila', 73, 'steam:1100001325b7a9b'),
(94, 'property', 'vodka', 95, 'steam:1100001325b7a9b'),
(95, 'property', 'yusuf', 1, 'steam:1100001325b7a9b'),
(96, 'property', 'grand_cru', 5, 'steam:1100001325b7a9b'),
(97, 'property', 'meth_pooch', 70, 'steam:1100001325b7a9b'),
(98, 'property', 'silencieux', 1010, 'steam:11000013613fa78'),
(99, 'property', 'grip', 559, 'steam:11000013613fa78'),
(100, 'property', 'flashlight', 920, 'steam:11000013613fa78'),
(101, 'property', 'clip', 1600, 'steam:11000013613fa78'),
(102, 'property', 'bread', 0, 'steam:110000103c6f9cc'),
(103, 'property', 'water', 0, 'steam:110000103c6f9cc'),
(104, 'property', 'flashlight', 2, 'steam:11000011acec85a'),
(105, 'property', 'grip', 6, 'steam:11000011acec85a'),
(106, 'property', 'silencieux', 3, 'steam:11000011acec85a'),
(107, 'property', 'water', 200, 'steam:11000013613fa78'),
(108, 'property', 'bread', 910, 'steam:11000013613fa78'),
(109, 'society_cardealer', 'weed', -100, NULL),
(110, 'society_cardealer', 'whisky', -100, NULL),
(111, 'society_cardealer', 'vodka', -100, NULL),
(112, 'society_cardealer', 'coke', -100, NULL),
(113, 'society_cardealer', 'opium', -100, NULL),
(114, 'society_cardealer', 'meth', -100, NULL),
(115, 'society_cardealer', 'bread', -100, NULL),
(116, 'society_cardealer', 'water', -100, NULL),
(117, 'property', 'coke', 100, 'steam:11000013613fa78'),
(118, 'property', 'meth', 100, 'steam:11000013613fa78'),
(119, 'property', 'opium', 100, 'steam:11000013613fa78'),
(120, 'property', 'vodka', 0, 'steam:11000013613fa78'),
(121, 'property', 'weed', 95, 'steam:11000013613fa78'),
(122, 'property', 'whisky', 100, 'steam:11000013613fa78'),
(123, 'society_unicorn_fridge', 'weed', 0, NULL),
(124, 'organisation_gang', 'flashlight', 0, NULL),
(125, 'organisation_gang', 'grip', 0, NULL),
(126, 'organisation_gang', 'silencieux', 0, NULL),
(127, 'organisation_gang', 'yusuf', 0, NULL),
(128, 'property', 'silencieux', 0, 'steam:11000011cded001'),
(129, 'property', 'flashlight', 0, 'steam:11000011cded001'),
(130, 'property', 'grip', 0, 'steam:11000011cded001'),
(131, 'property', 'croquettes', 0, 'steam:11000011cded001'),
(132, 'property', 'coke', 0, 'steam:11000011cded001'),
(133, 'property', 'meth', 0, 'steam:11000011cded001'),
(134, 'property', 'coke_pooch', 0, 'steam:11000011cded001'),
(135, 'society_police', 'washed_stone', 7, NULL),
(136, 'society_police', 'grip', 0, NULL),
(137, 'society_police', 'tequila', 4, NULL),
(138, 'society_police', 'yusuf', 0, NULL),
(139, 'society_police', 'vodka', 4, NULL),
(140, 'property', 'opium', 0, 'steam:11000011acec85a'),
(141, 'property', 'meth_pooch', 5, 'steam:11000011acec85a'),
(142, 'property', 'fixkit', 2, 'steam:11000011acec85a'),
(143, 'organisation_gang', 'weed_pooch', 10, NULL),
(144, 'society_mecano', 'clip', 1, NULL),
(145, 'society_mecano', 'flashlight', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aircraftdealer_aircrafts`
--

CREATE TABLE `aircraftdealer_aircrafts` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircrafts`
--

INSERT INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
('Alpha Z1', 'alphaz1', 1121000, 'plane'),
('Besra', 'besra', 1000000, 'plane'),
('Cuban 800', 'cuban800', 240000, 'plane'),
('Dodo', 'dodo', 500000, 'plane'),
('Duster', 'duster', 175000, 'plane'),
('Howard NX25', 'howard', 975000, 'plane'),
('Luxor', 'luxor', 1500000, 'plane'),
('Luxor Deluxe ', 'luxor2', 1750000, 'plane'),
('Mallard', 'stunt', 250000, 'plane'),
('Mammatus', 'mammatus', 300000, 'plane'),
('Nimbus', 'nimbus', 900000, 'plane'),
('Rogue', 'rogue', 1000000, 'plane'),
('Sea Breeze', 'seabreeze', 850000, 'plane'),
('Shamal', 'shamal', 1150000, 'plane'),
('Ultra Light', 'microlight', 50000, 'plane'),
('Velum', 'velum2', 450000, 'plane'),
('Vestra', 'vestra', 950000, 'plane'),
('Buzzard', 'buzzard2', 500000, 'heli'),
('Frogger', 'frogger', 800000, 'heli'),
('Havok', 'havok', 250000, 'heli'),
('Maverick', 'maverick', 750000, 'heli'),
('Sea Sparrow', 'seasparrow', 815000, 'heli'),
('SuperVolito', 'supervolito', 1000000, 'heli'),
('SuperVolito Carbon', 'supervolito2', 1250000, 'heli'),
('Swift', 'swift', 1000000, 'heli'),
('Swift Deluxe', 'swift2', 1250000, 'heli'),
('Volatus', 'volatus', 1250000, 'heli');

-- --------------------------------------------------------

--
-- Table structure for table `aircraft_categories`
--

CREATE TABLE `aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft_categories`
--

INSERT INTO `aircraft_categories` (`name`, `label`) VALUES
('plane', 'Havapeyma'),
('heli', 'Helicopter');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(41, 'steam:11000010cb4181f', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Vol de voiture', 1800),
(91, 'steam:1100001179c3bb7', 'steam:11000011acec85a', 'society', 'society_police', 'Amende: Port d\'arme illégal', 80000),
(104, 'steam:11000011b8aadb1', 'steam:11000011acec85a', 'society', 'society_police', 'Amende: Tentative de corruption', 80000),
(105, 'steam:11000011b8aadb1', 'steam:11000011acec85a', 'society', 'society_police', 'Amende: Port d\'arme non autorisé (défaut de license)', 20000),
(106, 'steam:110000118496987', 'steam:11000010dd9c7d6', 'society', 'society_police', 'Amende: Excès de vitesse < 5 kmh', 2000),
(107, 'steam:110000118496987', 'steam:11000010dd9c7d6', 'society', 'society_police', 'Amende: Non-respect d\'un feu rouge', 5000),
(150, 'steam:11000013621a142', 'steam:11000011acec85a', 'society', 'society_police', 'Amende: Tentative de meurtre sur civil', 40000),
(151, 'steam:11000013621a142', 'steam:11000011acec85a', 'society', 'society_police', 'Amende: Port d\'arme illégal', 80000),
(152, 'steam:11000013621a142', 'steam:11000011acec85a', 'society', 'society_police', 'Amende: Outrage à agent de police', 30000),
(157, 'steam:1100001179c3bb7', 'steam:11000011ad5e46e', 'society', 'society_police', 'Amende: Port d\'arme illégal', 80000),
(186, 'steam:11000011ad5e46e', 'steam:11000011cded001', 'society', 'society_police', 'Amende: Tir sur agent de l\'état', 80000),
(194, 'steam:11000011ad5e46e', 'steam:11000011cded001', 'society', 'society_police', 'Amende: Non-respect des distances de sécurité', 5000),
(196, 'steam:1100001173f3092', 'steam:11000011cded001', 'society', 'society_police', 'Amende: Excès de vitesse > 30 kmh', 15000),
(197, 'steam:1100001173f3092', 'steam:11000011cded001', 'society', 'society_police', 'Amende: Véhicule non en état', 15000),
(221, 'steam:110000110c6f75a', 'steam:110000116a28200', 'society', 'society_mecano', 'Mecano', 62500),
(227, 'steam:110000131d556ee', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Outrage à agent de police', 30000),
(229, 'steam:11000011c0b0ace', 'steam:110000131d556ee', 'society', 'society_tabac', 'Translation [fr][Tabac] does not exist', 10000),
(230, 'steam:11000011c0b0ace', 'steam:110000131d556ee', 'society', 'society_tabac', 'Translation [fr][Tabac] does not exist', 100000),
(231, 'steam:11000011c0b0ace', 'steam:110000131d556ee', 'society', 'society_tabac', 'Translation [fr][Tabac] does not exist', 10000),
(236, 'steam:1100001179c3bb7', 'steam:11000011cded001', 'society', 'society_police', 'Amende: Tentative de meurtre sur agent de l\'état', 150000),
(239, 'steam:1100001179c3bb7', 'steam:11000011cded001', 'society', 'society_police', 'Amende: Prise d\'ôtage agent de l\'état', 200000),
(242, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Délit de fuite', 25000),
(243, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Conduite sans permis', 8000),
(244, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Excès de vitesse > 30 kmh', 15000),
(245, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Outrage à agent de police', 30000),
(246, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Menace verbale ou intimidation envers policier', 25000),
(247, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Port d\'arme illégal', 80000),
(248, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Tentative de meurtre sur agent de l\'état', 150000),
(249, 'steam:11000010f3c770c', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Meurte sur agent de l\'état', 300000),
(257, 'steam:110000110c6f75a', 'steam:11000011c0b0ace', 'society', 'society_police', 'Amende: Port d\'arme illégal', 80000),
(264, 'steam:11000010f3c770c', 'steam:11000011ad5e46e', 'society', 'society_police', 'Amende: Outrage à agent de police', 30000),
(265, 'steam:11000010f3c770c', 'steam:11000011ad5e46e', 'society', 'society_police', 'Amende: Menace verbale ou intimidation envers civil', 20000),
(269, 'steam:1100001197619a3', 'steam:11000010b3a30a0', 'society', 'society_mecano', 'Mecanic', 1700000);

-- --------------------------------------------------------

--
-- Table structure for table `boatdealer_boats`
--

CREATE TABLE `boatdealer_boats` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`name`, `model`, `price`, `category`) VALUES
('Seashark', 'seashark', 1500, 'boat'),
('Seashark2', 'seashark2', 1500, 'boat'),
('Yacht Seashark', 'seashark3', 1500, 'boat'),
('Suntrap', 'suntrap', 1500, 'boat'),
('Dinghy', 'dinghy', 2500, 'boat'),
('Dinghy2 ', 'dinghy2', 2500, 'boat'),
('Yacht Dinghy', 'dinghy4', 1500, 'boat'),
('Tropic', 'tropic', 10000, 'boat'),
('Yacht Tropic', 'tropic2', 10000, 'boat'),
('Squalo', 'squalo', 12000, 'boat'),
('Yacht Toro', 'toro2', 15000, 'boat'),
('Toro', 'toro', 15000, 'boat'),
('Jetmax', 'jetmax', 17500, 'boat'),
('Voilier Marquis', 'marquis', 45500, 'boat');

-- --------------------------------------------------------

--
-- Table structure for table `boat_categories`
--

CREATE TABLE `boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boat_categories`
--

INSERT INTO `boat_categories` (`name`, `label`) VALUES
('boat', 'Ghayegh');

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(9, 'glendale', 6500);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000010d6c30cb', 'Rayane', 'Daoudi', '24/09/1997', 'm', '184'),
(2, 'steam:11000010d6c30cb', 'Rayane', 'Daoudi', '24/09/1997', 'm', '184'),
(4, 'steam:110000111b71726', 'Arthur ', 'Dubai', '11/11/1990', 'm', '190'),
(5, 'steam:110000113248a42', 'Theo     ', 'Grenier', '16/11/1981', 'm', '198'),
(6, 'steam:110000117d510a6', 'Martin', 'Edwarts', '11-11-1997', 'm', '185'),
(9, 'steam:11000011230bca7', 'Lucas', 'Kennan', '24/06/1992', 'm', '180'),
(10, 'steam:11000010719503b', 'Joy', 'Williams', '27/07/1992', 'f', '176'),
(11, 'steam:110000111b71726', 'Arthur ', 'Dubai', '11/11/90', 'm', '190'),
(12, 'steam:110000131d556ee', 'Aleksei', 'Kislev', '09/03/1995', 'm', '185'),
(13, 'steam:11000013491dae7', 'Erwan', 'Jones', '27/11/1999', 'm', '181'),
(15, 'steam:110000134626eca', 'Tayler', 'Anderson', '20/01/1993', 'm', '178'),
(16, 'steam:1100001196b3017', 'Trevis ', 'Watson ', '16-07-1993', 'm', '183'),
(17, 'steam:11000010f7f9504', 'Narek', 'Sargsyan', '21/09/1997', 'm', '180'),
(18, 'steam:11000010d17d505', 'Ricardo', 'Rocha', '10/06/1998', 'm', '195'),
(19, 'steam:11000010cb4181f', 'Mike', 'Bradd', '23/04/1997', 'm', '180'),
(23, 'steam:11000011a59b3fc', 'Zoe', 'Meyers', '01-10-93', 'f', '168'),
(24, 'steam:110000104cf5aeb', 'John', 'Leman', '23 01 1995', 'm', '170'),
(25, 'steam:11000010d17d505', 'Ricardo', 'Rocha', '10/06/1998', 'm', '195'),
(26, 'steam:11000010d819702', 'John', 'Belliard', '09/10/1997', 'm', '187'),
(27, 'steam:11000010032f30a', 'Uther', 'Ghandi', '20/01/1995', 'm', '180'),
(28, 'steam:11000010032f30a', 'Uther', 'Ghandi', '20/01/1995', 'm', '180'),
(29, 'steam:110000108ddaaf3', 'Marc', 'Gryffin', '22-09-1998', 'm', '198'),
(31, 'steam:110000103c6f9cc', 'Younes', 'Hamza', '16-06-67', 'm', '180'),
(32, 'steam:11000010dd9c7d6', 'Damon', 'Bradd', '01-11-1997', 'm', '175'),
(33, 'steam:11000013493c4b7', 'Hector', 'Anderman', '07/06/2018', 'm', '180'),
(34, 'steam:11000013493c4b7', 'Hector', 'Anderman', '07/06/2018', 'm', '180'),
(35, 'steam:11000013493c4b7', 'Hector', 'Anderman', '07/06/2018', 'm', '180'),
(36, 'steam:110000132b7e237', 'Alex', 'Fred', '09031994', 'm', '200'),
(38, 'steam:1100001350a83ef', 'Theo', 'Riche', '291203', 'm', '175'),
(39, 'steam:110000135b8dcac', 'Lucie', 'Ange', '12/01/1998', 'f', '180'),
(40, 'steam:11000010dd9c7d6', 'Damon', 'Bradd', '01-11-1997', 'm', '175'),
(41, 'steam:11000011b8aadb1', 'Alex', 'Think', '06/10/1998', 'm', '175'),
(42, 'steam:110000110c6f75a', 'Matthieu', 'Nairod', '07/04/1990', 'm', '185'),
(45, 'steam:11000011c0b0ace', 'Kane', 'Duke', '31/05/1995', 'm', '180'),
(48, 'steam:11000011c7b5be5', 'Eric', 'Lebrun', '21-03-1971', 'm', '165'),
(49, 'steam:110000111bfcd46', 'Moustouf', 'Mouloud', '22/11/1996', 'm', '185'),
(50, 'steam:11000011ce402c4', 'Erwan', 'Skel', '22-12-1994', 'm', '180'),
(52, 'steam:110000132a349ee', 'Mario', 'Duke', '29/07/2000', 'm', '165'),
(53, 'steam:11000010bb4b9f1', 'Dwayne ', 'Barton', '12/04/1996', 'm', '200'),
(54, 'steam:110000111b71726', 'Lucious', 'Lyon', '11/11/19', 'm', '190'),
(55, 'steam:11000010bb4b9f1', 'Dwayne', 'Lyon', '12/04/1996', 'm', '200'),
(57, 'steam:110000111b71726', 'Lucious', 'Lyon', '11/11/90', 'm', '190'),
(58, 'steam:11000013613fa78', 'Carla', 'Moukate', '12/01/98', 'm', '180'),
(59, 'steam:11000013613fa78', 'Carla', 'Moukate', '12/01/98', 'm', '180'),
(60, 'steam:110000111a58cab', 'Lucas', 'Chaissac', '12/10/1985', 'm', '175'),
(61, 'steam:110000111a58cab', 'Lucas', 'Rodriguez', '12/10/1985', 'm', '175'),
(62, 'steam:110000111a58cab', 'Lucas', 'Rodriguez', '12/10/1985', 'm', '170'),
(63, 'steam:11000011760b77b', 'Jean', 'Lafond', '19-08-1997', 'm', '180'),
(64, 'steam:110000110bff738', 'Sika', 'Gli', '19870801', 'm', '180'),
(67, 'steam:11000010f8be390', 'Junior', 'Devinson', '06/07/1995', 'm', '182'),
(74, 'steam:110000113248a42', 'Jack     ', ' Wiil      ', '16/11/1988', 'm', '198'),
(75, 'steam:110000112856892', 'Lone ', 'Dore', '10-08-99', 'm', '181'),
(78, 'steam:1100001154fdc54', 'Mark', 'Daniels', '25-03-1991', 'm', '179'),
(79, 'steam:110000131d556ee', 'Aleksei', 'Kislev', '09/03/1990', 'm', '185'),
(80, 'steam:11000011ae2da25', 'Jhon', 'Class', '28/07/1993', 'm', '180'),
(81, 'steam:11000010e555ae1', 'Allain', 'Chiffou', '21-05-1967', 'm', '170'),
(82, 'steam:11000010ccc8c9b', 'James', 'Ali', '31031999', 'm', '181'),
(83, 'steam:11000013260f4bc', 'Nailil', 'Majusta', '21/07/1996', 'm', '180'),
(84, 'steam:11000010f7f9504', 'Narek', 'Sargsyan', '21/09/1997', 'm', '180'),
(85, 'steam:11000010f7f9504', 'Jack', 'Walter', '21/09/1997', 'm', '180'),
(87, 'steam:11000010c4036d7', 'Paul', 'Minou', '02-02-1984', 'm', '145'),
(88, 'steam:1100001076bae8a', 'Tony', 'Dupeyron', '31/05/2000', 'm', '180'),
(89, 'steam:110000118496987', 'Alex', 'Carter', '29-07-1990', 'm', '185'),
(90, 'steam:11000010f4464c0', 'Leo', 'Francesco', '24/09/0998', 'm', '190'),
(91, 'steam:110000109729f67', 'Laura', 'Rodriguez', '09/11/95', 'f', '160'),
(92, 'steam:110000132b7e237', 'Alex', 'Fred', '09031994', 'm', '200'),
(94, 'steam:110000108f366a1', 'Francis', 'Vanoutenne', '09/04/1987', 'm', '175'),
(96, 'steam:11000011669fc09', 'BeHumble', 'Man', '06/12/1999', 'm', '172'),
(98, 'steam:11000010fb96ddc', 'Rick', 'Ornichon', '06/07/1997', 'm', '200'),
(99, 'steam:110000118d3e52c', 'Gibril', 'Salah', '05/05/1995', 'm', '178'),
(100, 'steam:11000010d6914d7', 'Igor', 'Pokrovsky', '20/03/1997', 'm', '186'),
(102, 'steam:110000118d3e52c', 'Gibril', 'Salah', '05/05/1995', 'm', '178'),
(103, 'steam:110000107122573', 'Igor', 'Pokrovsky', '20/03/1997', 'm', '186'),
(104, 'steam:110000110c6f75a', 'Calvin', 'Danson', '07/04/1990', 'm', '194'),
(105, 'steam:11000010b4bab32', 'Lilian', 'Millot', '03/01/1990', 'm', '200'),
(106, 'steam:11000011ccff156', 'Loucas', 'Vanel', '26/12/1998', 'm', '200'),
(107, 'steam:11000011d24e38e', 'Jules', 'Rodriguez', '08/03/1993', 'm', '180'),
(108, 'steam:11000011d24e38e', 'Jules', 'Rodriguez', '08/03/1993', 'm', '180'),
(109, 'steam:11000011861fe2d', 'Net', 'Flix', '17-04-1989', 'm', '180'),
(111, 'steam:11000011172f5d0', 'Hakim', 'Benaboui', '24/06/1992', 'm', '195'),
(112, 'steam:110000108f73203', 'Laurent', 'Valter', '4-07-1987', 'm', '180'),
(113, 'steam:1100001080602bc', 'Mamadou ', 'Londuba', '10121995', 'm', '200'),
(114, 'steam:11000010e7887ad', 'Ilan', 'Manis', '12.122.1998', 'm', '172'),
(115, 'steam:11000013621a142', 'David', 'Kendrick', '23-10-1995', 'm', '180'),
(116, 'steam:11000010f692bdd', 'Rayane', 'Tayache', '15/05/1999', 'm', '200'),
(117, 'steam:11000011172f5d0', 'Hakim', 'Benaboui', '24/06/1992', 'm', '195'),
(118, 'steam:11000013582fc5f', 'Marc', 'Kendrick', '30/12/1990', 'm', '180 '),
(120, 'steam:11000011ad5e46e', 'Koba', 'Devinson', '09/08/1993', 'm', '189'),
(121, 'steam:11000011ad5e46e', 'Marvin', 'Loks', '09/08/1990', 'm', '180'),
(122, 'steam:110000133ef6d99', 'Melvyn ', 'Lopez', '18/09/1993', 'm', '185'),
(123, 'steam:110000114b9921b', 'Jean ', 'DelaHauteTour', '03-03-1975', 'm', '195'),
(124, 'steam:11000010ede2397', 'Adam', 'Maurd', '03/12/1994', 'm', '180'),
(125, 'steam:11000011555ac07', 'Sam', 'Wilster', '24/04/1987', 'm', '200'),
(126, 'steam:110000118c34052', 'Dominic', 'Toretto', '12/05/1988', 'm', '200'),
(128, 'steam:11000010c9bdcd9', 'Pierre', 'Mathieu', '04/04/1980', 'm', '187'),
(129, 'steam:1100001353fe56e', 'James', 'LeGrand', '13/12/1980', 'm', '180'),
(130, 'steam:1100001173d36f1', 'Vincent', 'Labifle', '05-08-1982', 'm', '180'),
(134, 'steam:110000119ac453f', 'Paco', 'Benderas', '06/07/1995', 'm', '182'),
(135, 'steam:110000111593e00', 'Malia', 'Hale', '22-12-1993', 'f', '170'),
(137, 'steam:11000010e49b073', 'Michel', 'Bastien', '28/10/1992', 'm', '185'),
(138, 'steam:11000010e81d760', 'Hari', 'Clark', '16/01/1999', 'm', '165'),
(141, 'steam:110000119c0d7ec', 'Guillaume', 'Wade', '12/02/1995', 'm', '195'),
(142, 'steam:11000010b490325', 'Rudy ', 'Lorence', '26/01/1999', 'm', '175'),
(144, 'steam:11000010b490325', 'Rudy ', 'Lorence', '26/01/1999', 'm', '175'),
(145, 'steam:11000010b490325', 'Rudy', 'Lorence', '26-01-1999', 'm', '180'),
(146, 'steam:110000109b99f47', 'Pete', 'Jackson', '11/03/1998', 'm', '180'),
(147, 'steam:11000011cded001', 'Said', 'Lamine', '08/10/95', 'm', '185'),
(148, 'steam:1100001128ff308', 'Tobias', 'Leite', '23/07/98', 'm', '191'),
(149, 'steam:110000118282d31', 'Mathis', 'Bo', '21/06/2000', 'm', '180'),
(150, 'steam:11000010c789c31', 'Jeremy', 'Breston', '02/04/1989', 'm', '186'),
(151, 'steam:1100001173f3092', 'Loran', 'Beru', '31-03-1984', 'm', '182'),
(153, 'steam:11000011acec85a', 'Danton', 'Prackt', '06/12/1990', 'm', '180'),
(157, 'steam:11000010b4b70d9', 'Robert', 'Potevins', '13-08-1985', 'm', '180'),
(158, 'steam:11000010077a8c1', 'Jason', 'Bourne', '12/08/1986', 'm', '190'),
(159, 'steam:110000132daf29b', 'James', 'Cooperfield', '15/06/1998', 'm', '185'),
(160, 'steam:110000116a28200', 'Pablo', 'Menendez', '02/02/2000', 'm', '180'),
(162, 'steam:11000010eb00ea7', 'Jackson', 'Black', '02-02-1984', 'm', '175'),
(163, 'steam:11000010013511a', 'Jean Claude', 'Pignon', '05/15/1960', 'm', '180'),
(164, 'steam:110000117053659', 'Jay ', 'Salty', '27/12/1998', 'm', '185'),
(165, 'steam:1100001152f0a24', 'Maxence', 'Salty', '10/15/1997', 'm', '200'),
(166, 'steam:110000118c34052', 'Dominic', 'Toretto', '24/04/1987', 'm', '200'),
(167, 'steam:1100001136fb180', 'Hamza', 'Mohazad', '09/03/1986', 'm', '168'),
(168, 'steam:1100001136fb180', 'Hamza', 'Mohazad', '09/03/1986', 'm', '168'),
(170, 'steam:11000013634c728', 'Gregory', 'Moukate', '01/01/2000', 'm', '180'),
(171, 'steam:11000011acec85a', 'Danton ', 'Prackt ', '06/12/1999', 'm', '150'),
(172, 'steam:1100001135b73a1', 'Maxime', 'Brioche', '11-07-98', 'm', '200'),
(173, 'steam:1100001179c3bb7', 'Scott', 'Mccall', '08/19/1995', 'm', '152'),
(174, 'steam:11000010ca2c7e9', 'Adrien', 'LeRoy', '22/05/1997', 'm', '180'),
(175, 'steam:11000010ca2c7e9', 'Adrien', 'Traker', '22/05/1997', 'm', '180'),
(176, 'steam:1100001077856e8', 'Franjo', 'Castelane', '25/06/1996', 'm', '195'),
(177, 'steam:110000131f9e30e', 'Jackson', 'Burns', '03/01/1997', 'm', '190'),
(178, 'steam:110000119dc2827', 'Ambrozy', 'Lakpo', '18/11/1990', 'm', '181'),
(179, 'steam:1100001061d0cb1', 'Kais', 'Azar', '02-03-1992', 'm', '188'),
(180, 'steam:11000011852ee0c', 'Stefan', 'Salva', '08/11/1990', 'f', '150'),
(181, 'steam:11000013613fa78', 'Nicolas', 'Moukate', '12/01/1998', 'm', '180'),
(182, 'steam:11000011d1423db', 'Marvin', 'Gucci', '18/11/1998', 'm', '195'),
(183, 'steam:11000010302b529', 'Darius', 'Lewis', '02-03-1995', 'm', '188'),
(184, 'steam:11000013613fa78', 'Julia', 'Moukate', '12/01/12', 'f', '180'),
(185, 'steam:11000013634c728', 'Gregory', 'Moukate', '01012000', 'm', '180'),
(186, 'steam:110000119a721fd', 'Yuri', 'Popov', '31/07/1990', 'm', '184'),
(187, 'steam:110000114a6bf17', 'Samy', 'Walker', '19/10/1985', 'm', '185'),
(188, 'steam:11000010acfe014', 'Seydi', 'Dia', '23/07/1992', 'm', '172'),
(189, 'steam:11000011cf4c40d', 'Dalian', 'Uchiwa', '21/06/1996', 'm', '176'),
(190, 'steam:11000010a01c0bc', 'Francesco', 'Agostini', '18/08/1996', 'm', '186'),
(191, 'steam:1100001098c0f10', 'Valentina', 'Moretti', '19/05/93', 'f', '173'),
(192, 'steam:11000010ed15b6b', 'Ferman', 'Omerta', '27/12/1994', 'm', '177'),
(193, 'steam:11000010ed15b6b', 'Ferman', 'Omerta', '27/12/1994', 'm', '177'),
(194, 'steam:11000013518e15d', 'Gomez', 'Diaz', '26/07/1992', 'm', '170'),
(195, 'steam:11000010cba93cb', 'Elias', 'DEMARCO', '13-03-90', 'm', '200'),
(196, 'steam:11000011ad5e46e', 'Marvin', 'Loks', '09/08/1993', 'm', '185'),
(198, 'steam:1100001048dd98c', 'Alexander', 'Mahonne', '06/02/1990', 'm', '183'),
(199, 'steam:11000010f3c770c', 'Killian', 'Danson', '03/07/1995', 'm', '195'),
(200, 'steam:11000011bd90656', 'Haby', 'RODRIGUEZ', '16/02/1998', 'f', '170'),
(201, 'steam:11000010f3c770c', 'Killian', 'Danson', '03/07/1995', 'm', '195'),
(202, 'steam:11000010f3c770c', 'Killian', 'Danson', '03/07/1995', 'm', '195'),
(203, 'steam:110000115a29e25', 'Brian', 'Aznor', '18/06/1998', 'm', '200'),
(204, 'steam:1100001325b7a9b', 'Erwan', 'Parlor', '11-11-1997', 'm', '186'),
(205, 'steam:1100001325b7a9b', 'Erwan', 'Belliard', '11-11-1997', 'm', '186'),
(206, 'steam:110000114a058a8', 'Vidat', 'Boz', '24-12-94', 'm', '181'),
(207, 'steam:1100001167d265e', 'MR', 'Farhan', '', 'm', '189'),
(208, 'steam:1100001045fbd8f', 'Parsa', 'Ghyasi', '1994-02-07', 'm', '185'),
(209, 'steam:110000114a058a8', 'Vidat', 'Boz', '24-12-94', 'm', '181'),
(210, 'steam:1100001197619a3', 'Amir', 'V13', '09/03/98', 'm', '180'),
(211, 'steam:11000010a1b83df', 'AAA', 'BBB', '11.11.1111', 'm', '150'),
(212, 'steam:1100001167d265e', 'MR', 'Farhan', '', 'm', '189'),
(213, 'steam:11000010b3a30a0', 'Nobody', 'Somebody', '14-7-1374', 'm', '180'),
(214, 'steam:11000011685b145', 'SAjjad', 'Dsh', '23/10/50', 'm', '184'),
(215, 'steam:1100001197354a7', 'Abt1n', 'Kennys', '19/03/2000', 'm', '187'),
(216, 'steam:110000111df570b', 'No-------', 'U--------', '28-05-199', 'm', '188');

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
(1, 'user_ears', 'Goosh', 0),
(2, 'user_glasses', 'Eynak', 0),
(3, 'user_helmet', 'Kolah', 0),
(4, 'user_mask', 'Mask', 0),
(5, 'society_ambulance', 'Bimarestan', 1),
(6, 'society_police', 'Police', 1),
(7, 'society_tabac', 'Dokhaniyat', 1),
(8, 'society_taxi', 'Taxi', 1),
(9, 'society_unicorn', 'Kabare', 1),
(10, 'society_vigne', 'Takestan', 1),
(11, 'property', 'Amlak', 0),
(12, 'society_avocat', 'Dadgostari', 1),
(13, 'organisation_mafia', 'Mafia', 1),
(14, 'organisation_gang', 'Gang', 1),
(15, 'organisation_cartel', 'Cartel', 1),
(16, 'society_biker', 'Motorsavara', 1),
(17, 'society_mafia', 'Mafia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":22},{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":25},{\"name\":\"WEAPON_ASSAULTSMG\",\"count\":34},{\"name\":\"WEAPON_STUNGUN\",\"count\":11},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":1},{\"name\":\"WEAPON_PISTOL\",\"count\":1},{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":0},{\"name\":\"WEAPON_RPG\",\"count\":0},{\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"count\":41},{\"name\":\"WEAPON_BULLPUPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"count\":0},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_APPISTOL\",\"count\":2},{\"name\":\"WEAPON_SMG\",\"count\":0},{\"name\":\"WEAPON_HEAVYPISTOL\",\"count\":0},{\"name\":\"WEAPON_REVOLVER\",\"count\":0},{\"name\":\"WEAPON_KNUCKLE\",\"count\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"count\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"count\":0},{\"name\":\"WEAPON_SPECIALCARBINE\",\"count\":0},{\"name\":\"WEAPON_COMPACTRIFLE\",\"count\":0},{\"name\":\"WEAPON_MG\",\"count\":0},{\"name\":\"WEAPON_STICKYBOMB\",\"count\":0},{\"name\":\"WEAPON_VINTAGEPISTOL\",\"count\":1},{\"name\":\"WEAPON_SMOKEGRENADE\",\"count\":0},{\"name\":\"WEAPON_KNIFE\",\"count\":1},{\"name\":\"WEAPON_PIPEBOMB\",\"count\":0},{\"name\":\"WEAPON_MOLOTOV\",\"count\":0},{\"name\":\"WEAPON_HAMMER\",\"count\":1},{\"name\":\"WEAPON_GOLFCLUB\",\"count\":0},{\"name\":\"WEAPON_CROWBAR\",\"count\":0},{\"name\":\"WEAPON_PISTOL50\",\"count\":0},{\"name\":\"WEAPON_SNSPISTOL\",\"count\":1},{\"name\":\"WEAPON_MUSKET\",\"count\":1},{\"name\":\"WEAPON_HATCHET\",\"count\":0},{\"name\":\"WEAPON_MACHETE\",\"count\":0},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"count\":0},{\"name\":\"WEAPON_COMBATMG\",\"count\":0},{\"name\":\"WEAPON_COMBATMG_MK2\",\"count\":0},{\"name\":\"WEAPON_SMG_MK2\",\"count\":0},{\"name\":\"WEAPON_COMBATPDW\",\"count\":1},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":0}]}'),
(3, 'society_tabac', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'society_unicorn', NULL, '{}'),
(6, 'society_vigne', NULL, '{}'),
(7, 'user_helmet', 'steam:11000010d6c30cb', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":120},\"hasHelmet\":true}'),
(8, 'user_glasses', 'steam:11000010d6c30cb', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":0,\"glasses_2\":0}}'),
(9, 'user_mask', 'steam:11000010d6c30cb', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":32}}'),
(10, 'user_ears', 'steam:11000010d6c30cb', '{}'),
(11, 'property', 'steam:11000010d6c30cb', '{\"dressing\":[{\"label\":\"NOEL\",\"skin\":{\"hair_color_2\":5,\"hair_1\":45,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":4,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":4,\"beard_2\":7,\"pants_1\":37,\"eyebrows_1\":29,\"glasses_1\":0,\"bags_1\":0,\"skin\":0,\"shoes_1\":12,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":1,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"tshirt_1\":15,\"arms\":14,\"face\":0,\"torso_1\":196,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"sex\":0,\"makeup_1\":0,\"tshirt_2\":0,\"mask_2\":0,\"beard_4\":0,\"eyebrows_2\":10,\"makeup_2\":0,\"bags_2\":0,\"decals_2\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"hair_2\":0,\"shoes_2\":3,\"makeup_4\":0}},{\"label\":\"MAILLOT\",\"skin\":{\"makeup_2\":0,\"hair_1\":45,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":4,\"beard_2\":7,\"ears_2\":0,\"eyebrows_1\":29,\"glasses_1\":0,\"bags_1\":0,\"skin\":0,\"shoes_1\":34,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"tshirt_1\":15,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"makeup_1\":0,\"arms\":15,\"face\":0,\"sex\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"hair_color_2\":5,\"torso_1\":15,\"tshirt_2\":0,\"mask_2\":0,\"beard_4\":0,\"pants_1\":54,\"eyebrows_2\":10,\"bags_2\":0,\"decals_2\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"hair_2\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Chaperons rouge\",\"skin\":{\"makeup_2\":0,\"hair_1\":45,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":1,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":4,\"beard_2\":7,\"ears_2\":0,\"eyebrows_1\":29,\"glasses_1\":0,\"bags_1\":0,\"skin\":0,\"shoes_1\":24,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"tshirt_1\":15,\"ears_1\":-1,\"mask_1\":0,\"lipstick_2\":0,\"decals_1\":0,\"hair_color_2\":5,\"arms\":60,\"makeup_1\":0,\"sex\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"torso_1\":188,\"beard_4\":0,\"tshirt_2\":0,\"mask_2\":0,\"pants_1\":31,\"eyebrows_2\":10,\"lipstick_3\":0,\"bags_2\":0,\"decals_2\":0,\"hair_2\":0,\"helmet_1\":120,\"face\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"CHAPERON ROUGE BONNET\",\"skin\":{\"hair_color_2\":5,\"hair_1\":39,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":1,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":4,\"beard_2\":7,\"ears_2\":0,\"eyebrows_1\":29,\"glasses_1\":0,\"bags_1\":0,\"skin\":0,\"shoes_1\":24,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"tshirt_1\":15,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"sex\":0,\"arms\":60,\"face\":0,\"makeup_1\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"torso_1\":188,\"beard_4\":0,\"tshirt_2\":0,\"mask_2\":0,\"pants_1\":31,\"eyebrows_2\":10,\"makeup_2\":0,\"bags_2\":0,\"decals_2\":0,\"lipstick_2\":0,\"helmet_1\":120,\"hair_2\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"PERE NOEL\",\"skin\":{\"makeup_2\":0,\"hair_1\":39,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":4,\"beard_2\":7,\"ears_2\":0,\"eyebrows_1\":29,\"glasses_1\":0,\"bags_1\":0,\"skin\":0,\"shoes_1\":39,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"tshirt_1\":72,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"makeup_1\":0,\"arms\":60,\"face\":0,\"hair_color_2\":5,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"torso_1\":116,\"beard_4\":0,\"tshirt_2\":1,\"mask_2\":0,\"pants_1\":57,\"eyebrows_2\":10,\"sex\":0,\"bags_2\":0,\"decals_2\":0,\"lipstick_2\":0,\"helmet_1\":120,\"lipstick_1\":0,\"shoes_2\":0,\"makeup_4\":0}}],\"weapons\":[{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":34,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":1,\"name\":\"WEAPON_BALL\"},{\"ammo\":0,\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":16,\"name\":\"WEAPON_CARBINERIFLE\"},{\"ammo\":250,\"name\":\"WEAPON_COMBATPISTOL\"},{\"ammo\":250,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_MARKSMANRIFLE\"}]}'),
(12, 'society_avocat', NULL, '{}'),
(13, 'user_helmet', 'steam:11000010ed15b6b', '{}'),
(14, 'user_mask', 'steam:11000010ed15b6b', '{\"skin\":{\"mask_1\":39,\"mask_2\":0},\"hasMask\":true}'),
(15, 'user_glasses', 'steam:11000010ed15b6b', '{}'),
(16, 'property', 'steam:11000010ed15b6b', '{\"dressing\":[{\"label\":\"Normal\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":0,\"bproof_1\":0,\"tshirt_1\":85,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":4,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":30,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":2,\"mask_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"torso_1\":247,\"sex\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_2\":10,\"makeup_4\":0}},{\"label\":\"Costume Rouge\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":4,\"chain_2\":4,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":4,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"torso_1\":29,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"makeup_1\":0,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":22,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"face\":4,\"tshirt_2\":4,\"mask_2\":0,\"hair_1\":21,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"pants_1\":24,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costume Noir\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":2,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":24,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":11,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":0,\"mask_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"torso_1\":29,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costume Gris\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":1,\"chain_2\":1,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":1,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":24,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":22,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":1,\"mask_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"torso_1\":29,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costume Bleu\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":2,\"chain_2\":3,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":24,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":22,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":2,\"mask_2\":0,\"torso_1\":29,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costume Vert\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":3,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":3,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"torso_1\":29,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"makeup_1\":0,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":22,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"face\":4,\"tshirt_2\":3,\"mask_2\":0,\"hair_1\":21,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"pants_1\":24,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costume Blanc\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":5,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":5,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":24,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":22,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":5,\"mask_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"torso_1\":29,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costume Marron\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":6,\"chain_2\":9,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":33,\"bproof_2\":0,\"pants_2\":6,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":24,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":33,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":22,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":6,\"mask_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"torso_1\":29,\"hair_color_1\":0,\"sex\":0,\"helmet_1\":-1,\"makeup_1\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Travaux\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":1,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":25,\"bproof_1\":0,\"tshirt_1\":59,\"bproof_2\":0,\"pants_2\":1,\"eyebrows_3\":0,\"age_2\":0,\"sex\":0,\"pants_1\":47,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":52,\"face\":4,\"mask_1\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":21,\"tshirt_2\":0,\"mask_2\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"torso_1\":97,\"glasses_2\":0,\"makeup_1\":0,\"helmet_1\":-1,\"hair_color_1\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Sécurité\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":25,\"bproof_1\":0,\"tshirt_1\":129,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":6,\"hair_color_1\":0,\"ears_1\":2,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":31,\"makeup_1\":0,\"lipstick_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"face\":4,\"hair_1\":21,\"tshirt_2\":0,\"mask_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":10,\"torso_1\":53,\"sex\":0,\"helmet_1\":-1,\"pants_1\":33,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Sécurité\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":11,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":8,\"bags_1\":0,\"skin\":11,\"shoes_1\":25,\"bproof_1\":0,\"tshirt_1\":129,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":6,\"hair_color_1\":0,\"ears_1\":2,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":37,\"makeup_1\":0,\"face\":4,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"torso_1\":13,\"lipstick_2\":0,\"tshirt_2\":0,\"mask_2\":0,\"mask_1\":0,\"hair_1\":21,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":10,\"pants_1\":33,\"helmet_1\":-1,\"sex\":0,\"shoes_2\":0,\"makeup_4\":0}}]}'),
(17, 'user_ears', 'steam:11000010ed15b6b', '{}'),
(18, 'user_glasses', 'steam:1100001325b7a9b', '{\"skin\":{\"glasses_2\":0,\"glasses_1\":5},\"hasGlasses\":true}'),
(19, 'user_mask', 'steam:1100001325b7a9b', '{\"hasMask\":true,\"skin\":{\"mask_2\":5,\"mask_1\":99}}'),
(20, 'property', 'steam:1100001325b7a9b', '{\"dressing\":[{\"label\":\"maillot2\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":15,\"mask_1\":0,\"sex\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":57,\"bags_1\":0,\"glasses_2\":0,\"torso_2\":0,\"shoes_1\":34,\"torso_1\":252,\"lipstick_1\":0,\"makeup_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"helmet_2\":0,\"hair_color_2\":37,\"hair_color_1\":0,\"glasses_1\":5,\"makeup_4\":0,\"pants_1\":54,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":1,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"helmet_1\":-1}},{\"label\":\"tenue blanche\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":19,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":76,\"pants_1\":49,\"glasses_2\":0,\"torso_2\":0,\"shoes_1\":40,\"lipstick_2\":0,\"torso_1\":192,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":4,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":5,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"braquage colors\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":27,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":57,\"pants_1\":77,\"glasses_2\":0,\"torso_2\":3,\"shoes_1\":55,\"lipstick_2\":0,\"torso_1\":178,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":3,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":0,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":3,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"police\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":30,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":58,\"pants_1\":79,\"glasses_2\":0,\"torso_2\":0,\"shoes_1\":1,\"lipstick_2\":0,\"torso_1\":55,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":0,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"braquage bien\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":30,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":57,\"pants_1\":97,\"glasses_2\":7,\"torso_2\":24,\"shoes_1\":60,\"lipstick_2\":0,\"torso_1\":251,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":5,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":24,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"costar bleu\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":1,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":90,\"pants_1\":49,\"glasses_2\":7,\"torso_2\":1,\"shoes_1\":40,\"lipstick_2\":0,\"torso_1\":102,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":9,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":5,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":1,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"costar noir & blanc \",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":90,\"pants_1\":52,\"glasses_2\":7,\"torso_2\":4,\"shoes_1\":20,\"lipstick_2\":0,\"torso_1\":183,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":7,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":5,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":2,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"biker bleu\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":30,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":45,\"pants_1\":26,\"glasses_2\":7,\"torso_2\":2,\"shoes_1\":36,\"lipstick_2\":0,\"torso_1\":172,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":3,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":5,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":4,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"veste pd\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":106,\"pants_1\":79,\"glasses_2\":0,\"torso_2\":3,\"shoes_1\":1,\"lipstick_2\":0,\"torso_1\":240,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":-1,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"tenu civil vilette blanc\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":28,\"mask_1\":0,\"sex\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":130,\"bags_1\":0,\"glasses_2\":0,\"torso_2\":10,\"shoes_1\":60,\"torso_1\":187,\"lipstick_1\":0,\"makeup_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"helmet_2\":0,\"hair_color_2\":37,\"hair_color_1\":0,\"glasses_1\":-1,\"makeup_4\":0,\"pants_1\":79,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"helmet_1\":-1}},{\"label\":\"Anonyme\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":28,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":55,\"pants_1\":79,\"glasses_2\":0,\"torso_2\":0,\"shoes_1\":60,\"lipstick_2\":0,\"torso_1\":89,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":-1,\"hair_color_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"quartier\",\"skin\":{\"mask_2\":18,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":112,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":106,\"pants_1\":79,\"glasses_2\":0,\"torso_2\":4,\"shoes_1\":1,\"lipstick_2\":0,\"torso_1\":230,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":48,\"glasses_1\":-1,\"hair_color_1\":36,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":1,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"gang \",\"skin\":{\"mask_2\":7,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":54,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":0,\"tshirt_1\":106,\"pants_1\":79,\"glasses_2\":0,\"torso_2\":4,\"shoes_1\":1,\"lipstick_2\":0,\"torso_1\":230,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":48,\"glasses_1\":-1,\"hair_color_1\":36,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"gang1\",\"skin\":{\"mask_2\":7,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":54,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":11,\"tshirt_1\":106,\"pants_1\":79,\"glasses_2\":0,\"torso_2\":4,\"shoes_1\":1,\"lipstick_2\":0,\"torso_1\":230,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":0,\"hair_color_1\":1,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"crips\",\"skin\":{\"mask_2\":9,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":51,\"sex\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":19,\"tshirt_1\":106,\"bags_1\":0,\"glasses_2\":0,\"torso_2\":6,\"shoes_1\":60,\"torso_1\":230,\"lipstick_1\":0,\"makeup_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"hair_color_2\":37,\"hair_color_1\":1,\"glasses_1\":0,\"makeup_4\":0,\"pants_1\":59,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":5,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"helmet_1\":-1}},{\"label\":\"crips 2\",\"skin\":{\"mask_2\":9,\"beard_2\":8,\"tshirt_2\":1,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":51,\"bags_1\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":19,\"tshirt_1\":115,\"pants_1\":59,\"glasses_2\":0,\"torso_2\":6,\"shoes_1\":60,\"lipstick_2\":0,\"torso_1\":230,\"decals_1\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_2\":37,\"glasses_1\":0,\"hair_color_1\":1,\"sex\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":5,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"makeup_1\":0}},{\"label\":\"vrai crips\",\"skin\":{\"mask_2\":9,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":51,\"sex\":0,\"makeup_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"skin\":19,\"tshirt_1\":57,\"bags_1\":44,\"glasses_2\":0,\"torso_2\":11,\"shoes_1\":8,\"torso_1\":87,\"lipstick_1\":0,\"makeup_3\":0,\"lipstick_2\":0,\"beard_4\":0,\"eyebrows_1\":0,\"shoes_2\":5,\"helmet_2\":0,\"hair_color_2\":37,\"hair_color_1\":1,\"glasses_1\":0,\"makeup_4\":0,\"pants_1\":3,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":3,\"ears_1\":-1,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"helmet_1\":-1}},{\"label\":\"tenue civil\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":28,\"mask_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"tshirt_1\":130,\"skin\":19,\"glasses_2\":0,\"bags_1\":0,\"torso_2\":10,\"shoes_1\":60,\"torso_1\":187,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_1\":79,\"lipstick_1\":0,\"beard_4\":0,\"hair_color_1\":1,\"shoes_2\":0,\"helmet_2\":0,\"hair_color_2\":37,\"makeup_4\":0,\"glasses_1\":-1,\"age_1\":0,\"helmet_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"sex\":0,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar cartel\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":12,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"makeup_2\":0,\"tshirt_1\":96,\"bproof_1\":0,\"eyebrows_4\":0,\"glasses_2\":7,\"skin\":19,\"lipstick_2\":0,\"bags_1\":0,\"shoes_1\":40,\"torso_1\":102,\"eyebrows_1\":0,\"makeup_3\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"beard_4\":0,\"hair_color_1\":1,\"shoes_2\":9,\"helmet_2\":0,\"hair_color_2\":37,\"ears_1\":-1,\"glasses_1\":5,\"helmet_1\":-1,\"pants_1\":28,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":0,\"sex\":0,\"hair_1\":6,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar cartel sans lunettes\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":12,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"makeup_2\":0,\"tshirt_1\":96,\"bproof_1\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"skin\":19,\"lipstick_2\":0,\"bags_1\":0,\"shoes_1\":40,\"torso_1\":102,\"eyebrows_1\":0,\"makeup_3\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"beard_4\":0,\"hair_color_1\":61,\"shoes_2\":9,\"helmet_2\":0,\"hair_color_2\":33,\"ears_1\":-1,\"glasses_1\":0,\"helmet_1\":-1,\"pants_1\":28,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":0,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar 1\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"tshirt_1\":90,\"skin\":19,\"glasses_2\":7,\"bags_1\":0,\"torso_2\":2,\"shoes_1\":40,\"torso_1\":101,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_1\":28,\"lipstick_1\":0,\"beard_4\":0,\"hair_color_1\":61,\"shoes_2\":9,\"helmet_2\":0,\"hair_color_2\":33,\"makeup_4\":0,\"glasses_1\":5,\"age_1\":0,\"helmet_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar bleu clair\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"tshirt_1\":96,\"skin\":19,\"glasses_2\":7,\"bags_1\":0,\"torso_2\":1,\"shoes_1\":40,\"torso_1\":99,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_1\":28,\"lipstick_1\":0,\"beard_4\":0,\"hair_color_1\":61,\"shoes_2\":9,\"helmet_2\":0,\"hair_color_2\":33,\"makeup_4\":0,\"glasses_1\":5,\"age_1\":0,\"helmet_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar anniv\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":6,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":31,\"mask_1\":0,\"lipstick_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"tshirt_1\":96,\"skin\":19,\"glasses_2\":7,\"bags_1\":0,\"torso_2\":4,\"shoes_1\":20,\"torso_1\":100,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_1\":28,\"lipstick_1\":0,\"beard_4\":0,\"hair_color_1\":44,\"shoes_2\":9,\"helmet_2\":0,\"hair_color_2\":35,\"makeup_4\":0,\"glasses_1\":5,\"age_1\":0,\"helmet_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":7,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"enterement\",\"skin\":{\"mask_2\":0,\"sex\":0,\"tshirt_2\":17,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":3,\"arms\":31,\"mask_1\":0,\"makeup_2\":0,\"tshirt_1\":96,\"bproof_1\":0,\"eyebrows_4\":0,\"torso_2\":2,\"skin\":19,\"glasses_2\":7,\"pants_1\":28,\"shoes_1\":20,\"torso_1\":101,\"eyebrows_1\":0,\"lipstick_2\":0,\"age_1\":0,\"helmet_1\":-1,\"lipstick_1\":0,\"beard_4\":0,\"bags_1\":0,\"shoes_2\":7,\"helmet_2\":0,\"hair_color_1\":35,\"hair_color_2\":45,\"glasses_1\":5,\"beard_2\":8,\"decals_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"makeup_3\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar enterement 2\",\"skin\":{\"mask_2\":0,\"sex\":0,\"tshirt_2\":2,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":31,\"mask_1\":0,\"helmet_1\":-1,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"tshirt_1\":31,\"skin\":19,\"glasses_2\":7,\"bags_1\":0,\"torso_2\":2,\"shoes_1\":20,\"lipstick_2\":0,\"beard_2\":8,\"torso_1\":102,\"pants_1\":28,\"age_1\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":7,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_1\":35,\"glasses_1\":5,\"hair_color_2\":45,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"makeup_3\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"hallowen\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":50,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":20,\"mask_1\":0,\"makeup_3\":55,\"makeup_2\":10,\"bproof_1\":0,\"eyebrows_4\":0,\"tshirt_1\":76,\"skin\":4,\"glasses_2\":0,\"bags_1\":0,\"ears_1\":-1,\"shoes_1\":40,\"lipstick_2\":0,\"torso_1\":192,\"makeup_4\":29,\"eyebrows_2\":0,\"pants_1\":49,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":4,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_1\":28,\"glasses_1\":5,\"hair_color_2\":28,\"helmet_1\":50,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"braco\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":50,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"makeup_4\":29,\"hair_2\":3,\"arms\":31,\"mask_1\":0,\"age_1\":0,\"bags_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"skin\":4,\"glasses_2\":0,\"pants_1\":31,\"tshirt_1\":122,\"shoes_1\":60,\"makeup_3\":55,\"lipstick_2\":0,\"torso_1\":53,\"eyebrows_2\":0,\"helmet_1\":-1,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":5,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_1\":28,\"glasses_1\":-1,\"hair_color_2\":28,\"decals_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":3,\"pants_2\":0,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"redline\",\"skin\":{\"mask_2\":0,\"beard_2\":8,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":50,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":31,\"mask_1\":0,\"bags_1\":0,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"torso_2\":12,\"skin\":4,\"glasses_2\":0,\"pants_1\":26,\"makeup_3\":55,\"shoes_1\":31,\"lipstick_2\":0,\"torso_1\":200,\"tshirt_1\":57,\"lipstick_1\":0,\"makeup_4\":29,\"beard_4\":0,\"eyebrows_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"hair_color_1\":28,\"hair_color_2\":28,\"glasses_1\":-1,\"helmet_1\":-1,\"age_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":5,\"sex\":0,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}},{\"label\":\"costar sans manche\",\"skin\":{\"mask_2\":0,\"sex\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"makeup_4\":29,\"hair_2\":3,\"arms\":37,\"mask_1\":0,\"tshirt_1\":57,\"makeup_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"bags_1\":0,\"skin\":4,\"glasses_2\":0,\"pants_1\":26,\"makeup_1\":50,\"shoes_1\":31,\"beard_2\":8,\"makeup_3\":55,\"lipstick_2\":0,\"torso_1\":26,\"eyebrows_2\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"eyebrows_1\":0,\"hair_color_1\":28,\"glasses_1\":-1,\"hair_color_2\":28,\"decals_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"ears_1\":-1,\"hair_1\":14,\"beard_1\":14,\"eyebrows_3\":0,\"shoes\":9}}],\"weapons\":[]}'),
(21, 'user_helmet', 'steam:1100001325b7a9b', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":50}}'),
(22, 'user_ears', 'steam:1100001325b7a9b', '{\"skin\":{\"ears_2\":0,\"ears_1\":17},\"hasEars\":true}'),
(23, 'property', 'steam:110000111b71726', '{\"dressing\":[{\"label\":\"Classe et noir\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":2,\"chain_2\":0,\"hair_2\":0,\"beard_1\":10,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":10,\"bproof_1\":0,\"hair_color_1\":3,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"pants_1\":28,\"arms\":42,\"face\":4,\"eyebrows_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":4,\"tshirt_1\":35,\"tshirt_2\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_2\":0,\"torso_1\":102,\"helmet_1\":-1,\"makeup_2\":0,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"6six9niene\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":9,\"chain_2\":0,\"hair_2\":0,\"beard_1\":10,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":12,\"bproof_1\":0,\"hair_color_1\":3,\"bproof_2\":0,\"pants_2\":5,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"pants_1\":26,\"arms\":5,\"face\":4,\"eyebrows_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":4,\"tshirt_1\":15,\"tshirt_2\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_2\":0,\"torso_1\":200,\"helmet_1\":-1,\"makeup_2\":0,\"shoes_2\":13,\"makeup_4\":0}},{\"label\":\"Style en blanc\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":1,\"chain_2\":0,\"hair_2\":0,\"beard_1\":10,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":12,\"bproof_1\":0,\"hair_color_1\":3,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"pants_1\":4,\"arms\":6,\"face\":4,\"eyebrows_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":4,\"tshirt_1\":15,\"tshirt_2\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_2\":0,\"torso_1\":171,\"helmet_1\":-1,\"makeup_2\":0,\"shoes_2\":10,\"makeup_4\":0}},{\"label\":\"Styler en rouge\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":1,\"chain_2\":0,\"hair_2\":0,\"beard_1\":10,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":12,\"bproof_1\":0,\"hair_color_1\":3,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"pants_1\":4,\"arms\":11,\"face\":4,\"eyebrows_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":4,\"tshirt_1\":23,\"tshirt_2\":1,\"mask_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_2\":0,\"torso_1\":167,\"helmet_1\":-1,\"makeup_2\":0,\"shoes_2\":9,\"makeup_4\":0}},{\"label\":\"Basketteur\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":0,\"bags_1\":0,\"skin\":8,\"shoes_1\":31,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"pants_1\":42,\"arms\":11,\"face\":4,\"eyebrows_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":4,\"tshirt_1\":15,\"tshirt_2\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_2\":0,\"torso_1\":81,\"helmet_1\":56,\"makeup_2\":0,\"shoes_2\":1,\"makeup_4\":0}},{\"label\":\"Homme en noir \",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":31,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"beard_4\":4,\"arms\":44,\"face\":4,\"pants_1\":28,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"tshirt_2\":2,\"mask_2\":0,\"lipstick_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"helmet_1\":-1,\"torso_1\":142,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Negociateur\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":20,\"bproof_1\":0,\"tshirt_1\":31,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"eyebrows_2\":0,\"arms\":82,\"face\":4,\"pants_1\":53,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":4,\"makeup_2\":0,\"tshirt_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"makeup_1\":0,\"hair_color_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"helmet_1\":-1,\"torso_1\":104,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Timberland\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":4,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":12,\"bproof_1\":0,\"tshirt_1\":15,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"bags_2\":0,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"beard_4\":4,\"arms\":14,\"face\":4,\"pants_1\":4,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"makeup_2\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"mask_2\":0,\"lipstick_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"helmet_1\":-1,\"torso_1\":125,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Boum t mort\",\"skin\":{\"hair_color_2\":54,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":4,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":31,\"bproof_1\":0,\"tshirt_1\":15,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":79,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"makeup_2\":0,\"arms\":44,\"face\":4,\"bags_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"eyebrows_2\":10,\"beard_4\":4,\"tshirt_2\":0,\"mask_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"decals_2\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"torso_1\":224,\"shoes_2\":1,\"makeup_4\":0}},{\"label\":\"Au bain\",\"skin\":{\"bags_2\":0,\"beard_4\":4,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":4,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":5,\"bproof_1\":0,\"tshirt_1\":15,\"bproof_2\":0,\"pants_2\":1,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":54,\"ears_1\":-1,\"mask_1\":0,\"lipstick_3\":0,\"decals_1\":0,\"eyebrows_2\":10,\"arms\":15,\"face\":4,\"makeup_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"hair_color_2\":54,\"hair_color_1\":0,\"tshirt_2\":0,\"mask_2\":0,\"makeup_1\":0,\"sex\":0,\"hair_1\":50,\"lipstick_1\":0,\"decals_2\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"torso_1\":15,\"shoes_2\":2,\"makeup_4\":0}},{\"label\":\"Normal \",\"skin\":{\"makeup_2\":0,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":6,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":4,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":59,\"bproof_1\":0,\"tshirt_1\":23,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":4,\"ears_1\":-1,\"decals_2\":0,\"lipstick_2\":0,\"decals_1\":0,\"eyebrows_2\":10,\"arms\":14,\"face\":4,\"torso_1\":136,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"bags_2\":0,\"sex\":0,\"tshirt_2\":1,\"mask_2\":0,\"hair_color_1\":0,\"mask_1\":0,\"makeup_1\":0,\"hair_color_2\":54,\"beard_4\":4,\"lipstick_1\":0,\"helmet_1\":-1,\"lipstick_3\":0,\"shoes_2\":20,\"makeup_4\":0}},{\"label\":\"Discret\",\"skin\":{\"makeup_2\":0,\"hair_1\":50,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"hair_2\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":4,\"glasses_1\":5,\"bags_1\":0,\"skin\":8,\"shoes_1\":59,\"bproof_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"pants_2\":2,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"pants_1\":78,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_color_2\":54,\"arms\":14,\"face\":4,\"eyebrows_2\":10,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"bags_2\":0,\"beard_4\":4,\"tshirt_2\":1,\"mask_2\":0,\"mask_1\":0,\"tshirt_1\":24,\"makeup_1\":0,\"lipstick_1\":0,\"sex\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"torso_1\":187,\"shoes_2\":20,\"makeup_4\":0}}],\"weapons\":[{\"ammo\":250,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":232,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_PISTOL50\"},{\"ammo\":1,\"name\":\"WEAPON_APPISTOL\"},{\"ammo\":80,\"name\":\"WEAPON_APPISTOL\"},{\"ammo\":250,\"name\":\"WEAPON_CARBINERIFLE\"},{\"ammo\":248,\"name\":\"WEAPON_PISTOL50\"}]}'),
(24, 'user_helmet', 'steam:110000111b71726', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":12}}'),
(25, 'user_glasses', 'steam:110000111b71726', '{}'),
(26, 'user_mask', 'steam:110000111b71726', '{\"hasMask\":true,\"skin\":{\"mask_2\":10,\"mask_1\":129}}'),
(27, 'user_ears', 'steam:110000111b71726', '{\"skin\":{\"ears_1\":4,\"ears_2\":0},\"hasEars\":true}'),
(28, 'user_ears', 'steam:110000113248a42', '{}'),
(29, 'user_glasses', 'steam:110000113248a42', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(30, 'property', 'steam:110000113248a42', '{\"dressing\":[{\"skin\":{\"bags_1\":0,\"skin\":0,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"beard_1\":0,\"shoes_2\":0,\"chain_2\":0,\"hair_color_2\":0,\"mask_1\":0,\"face\":0,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":19,\"tshirt_2\":0,\"sex\":0,\"beard_3\":0,\"hair_2\":0,\"makeup_2\":0,\"tshirt_1\":6,\"torso_1\":25,\"ears_1\":-1,\"decals_1\":0,\"shoes_1\":10,\"torso_2\":6,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"bproof_2\":0,\"mask_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_4\":0,\"arms\":0,\"helmet_1\":-1,\"age_2\":0,\"hair_color_1\":3,\"pants_1\":24,\"beard_2\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"chain_1\":0,\"eyebrows_2\":0,\"glasses_1\":5},\"label\":\"baz\"},{\"skin\":{\"bags_1\":0,\"skin\":0,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"beard_1\":0,\"shoes_2\":0,\"arms\":19,\"hair_color_2\":0,\"mask_1\":0,\"face\":0,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":19,\"tshirt_2\":0,\"sex\":0,\"beard_3\":0,\"hair_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"torso_1\":66,\"ears_1\":-1,\"decals_1\":0,\"shoes_1\":24,\"tshirt_1\":15,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":4,\"lipstick_1\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"bproof_2\":0,\"torso_2\":0,\"mask_2\":0,\"makeup_1\":0,\"beard_4\":0,\"lipstick_4\":0,\"hair_color_1\":3,\"age_2\":0,\"glasses_1\":5,\"chain_2\":0,\"chain_1\":0,\"eyebrows_3\":0,\"makeup_4\":0,\"beard_2\":0,\"eyebrows_2\":0,\"pants_1\":39},\"label\":\"taf\"},{\"skin\":{\"bags_1\":0,\"skin\":0,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"beard_4\":0,\"ears_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"shoes_2\":0,\"chain_2\":0,\"hair_color_2\":0,\"mask_1\":99,\"face\":0,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":19,\"tshirt_2\":0,\"makeup_2\":0,\"beard_3\":0,\"hair_2\":0,\"sex\":0,\"helmet_1\":-1,\"torso_1\":66,\"ears_1\":-1,\"decals_1\":0,\"shoes_1\":24,\"torso_2\":0,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"bproof_2\":0,\"tshirt_1\":15,\"mask_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_1\":0,\"bags_2\":0,\"age_2\":0,\"arms\":20,\"hair_color_1\":3,\"beard_2\":0,\"glasses_1\":5,\"makeup_4\":0,\"chain_1\":0,\"eyebrows_2\":0,\"pants_1\":39},\"label\":\"taf\"},{\"skin\":{\"bags_1\":0,\"skin\":0,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"shoes_2\":0,\"chain_2\":2,\"hair_color_2\":0,\"mask_1\":0,\"face\":0,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":19,\"tshirt_2\":0,\"makeup_2\":0,\"age_2\":0,\"hair_2\":0,\"torso_2\":0,\"helmet_1\":-1,\"torso_1\":31,\"ears_1\":-1,\"decals_1\":0,\"shoes_1\":10,\"sex\":0,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"bproof_2\":0,\"mask_2\":0,\"beard_4\":0,\"makeup_1\":0,\"lipstick_4\":0,\"arms\":20,\"tshirt_1\":31,\"hair_color_1\":3,\"beard_3\":0,\"beard_1\":0,\"chain_1\":12,\"pants_1\":24,\"makeup_4\":0,\"glasses_1\":5,\"beard_2\":0,\"eyebrows_2\":0},\"label\":\"costar\"},{\"skin\":{\"bags_1\":0,\"skin\":0,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"shoes_2\":6,\"arms\":0,\"hair_color_2\":1,\"sex\":0,\"face\":0,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":9,\"tshirt_2\":0,\"bags_2\":0,\"age_2\":0,\"hair_2\":1,\"hair_color_1\":3,\"tshirt_1\":15,\"torso_1\":26,\"ears_1\":-1,\"decals_1\":0,\"shoes_1\":12,\"beard_4\":0,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"torso_2\":8,\"helmet_2\":0,\"eyebrows_4\":0,\"bproof_2\":0,\"glasses_1\":5,\"lipstick_1\":0,\"makeup_1\":0,\"mask_2\":0,\"chain_1\":0,\"eyebrows_2\":0,\"lipstick_4\":0,\"beard_1\":0,\"mask_1\":0,\"beard_3\":0,\"pants_1\":26,\"makeup_4\":0,\"helmet_1\":-1,\"beard_2\":0,\"chain_2\":0},\"label\":9}]}'),
(31, 'user_mask', 'steam:110000113248a42', '{\"skin\":{\"mask_2\":0,\"mask_1\":99},\"hasMask\":true}'),
(32, 'user_helmet', 'steam:110000113248a42', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":52}}'),
(33, 'user_mask', 'steam:110000117d510a6', '{\"hasMask\":true,\"skin\":{\"mask_1\":56,\"mask_2\":1}}'),
(34, 'property', 'steam:110000117d510a6', '{\"dressing\":[{\"label\":\"gentleman1\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"decals_2\":0,\"beard_3\":1,\"pants_1\":24,\"shoes_1\":11,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":2,\"sex\":0,\"makeup_4\":0,\"eyebrows_3\":1,\"makeup_2\":0,\"skin\":10,\"bproof_1\":0,\"mask_2\":0,\"hair_color_2\":38,\"chain_2\":0,\"shoes_2\":14,\"makeup_1\":0,\"bags_2\":0,\"helmet_1\":-1,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":4,\"hair_color_1\":38,\"mask_1\":0,\"torso_1\":142,\"tshirt_2\":2,\"lipstick_4\":0,\"eyebrows_1\":0,\"face\":0,\"age_1\":0,\"age_2\":0,\"beard_1\":7,\"beard_2\":7,\"eyebrows_2\":10,\"tshirt_1\":28,\"lipstick_2\":0,\"hair_2\":0,\"bproof_2\":0,\"decals_1\":0,\"helmet_2\":0,\"chain_1\":0,\"glasses_1\":5,\"pants_2\":0,\"arms\":6,\"ears_1\":-1,\"torso_2\":0}},{\"label\":\"gentleman2\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"decals_2\":0,\"beard_3\":1,\"pants_1\":24,\"shoes_1\":10,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":2,\"sex\":0,\"makeup_4\":0,\"helmet_1\":-1,\"makeup_2\":0,\"skin\":10,\"bproof_1\":0,\"mask_2\":0,\"hair_color_2\":38,\"chain_2\":0,\"ears_1\":-1,\"makeup_1\":0,\"bags_2\":0,\"shoes_2\":14,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":4,\"eyebrows_3\":1,\"mask_1\":0,\"torso_1\":30,\"tshirt_2\":0,\"lipstick_4\":0,\"hair_2\":0,\"face\":0,\"beard_1\":7,\"age_2\":0,\"age_1\":0,\"beard_2\":7,\"eyebrows_2\":10,\"decals_1\":0,\"lipstick_2\":0,\"hair_color_1\":38,\"bproof_2\":0,\"tshirt_1\":35,\"helmet_2\":0,\"chain_1\":0,\"eyebrows_1\":0,\"pants_2\":0,\"arms\":6,\"glasses_1\":5,\"torso_2\":0}},{\"label\":\"street1\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"decals_2\":0,\"beard_3\":1,\"pants_1\":4,\"shoes_1\":1,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":2,\"sex\":0,\"makeup_4\":0,\"helmet_1\":-1,\"makeup_2\":0,\"skin\":10,\"bproof_1\":0,\"mask_2\":0,\"hair_color_2\":38,\"chain_2\":0,\"ears_1\":-1,\"makeup_1\":0,\"bags_2\":0,\"shoes_2\":10,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":4,\"eyebrows_3\":1,\"mask_1\":0,\"torso_1\":113,\"tshirt_2\":0,\"lipstick_4\":0,\"hair_2\":0,\"face\":0,\"beard_1\":7,\"age_2\":0,\"age_1\":0,\"beard_2\":7,\"eyebrows_2\":10,\"tshirt_1\":15,\"lipstick_2\":0,\"hair_color_1\":38,\"bproof_2\":0,\"decals_1\":0,\"helmet_2\":0,\"chain_1\":0,\"glasses_1\":5,\"pants_2\":0,\"arms\":6,\"eyebrows_1\":0,\"torso_2\":0}},{\"label\":\"drogue1\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":45,\"decals_2\":0,\"beard_3\":1,\"pants_1\":33,\"shoes_1\":24,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":4,\"sex\":0,\"makeup_4\":0,\"eyebrows_3\":1,\"makeup_2\":0,\"skin\":10,\"bproof_1\":0,\"mask_2\":2,\"hair_color_2\":38,\"chain_2\":0,\"shoes_2\":0,\"makeup_1\":0,\"bags_2\":0,\"ears_1\":-1,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":4,\"hair_color_1\":38,\"mask_1\":90,\"torso_1\":253,\"tshirt_2\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"face\":0,\"helmet_1\":6,\"age_2\":0,\"beard_1\":7,\"beard_2\":7,\"eyebrows_2\":10,\"tshirt_1\":15,\"age_1\":0,\"lipstick_2\":0,\"torso_2\":1,\"hair_2\":0,\"helmet_2\":1,\"chain_1\":0,\"decals_1\":0,\"pants_2\":0,\"arms\":17,\"glasses_1\":25,\"bproof_2\":0}},{\"label\":\"street cross\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"decals_2\":0,\"beard_3\":1,\"pants_1\":78,\"shoes_1\":31,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":4,\"sex\":0,\"makeup_4\":0,\"helmet_1\":-1,\"makeup_2\":0,\"skin\":10,\"bproof_1\":0,\"mask_2\":1,\"hair_color_2\":38,\"chain_2\":0,\"ears_1\":-1,\"makeup_1\":0,\"bags_2\":0,\"shoes_2\":3,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":4,\"eyebrows_3\":1,\"mask_1\":56,\"torso_1\":253,\"tshirt_2\":0,\"lipstick_4\":0,\"hair_2\":0,\"face\":0,\"beard_1\":7,\"age_2\":0,\"age_1\":0,\"beard_2\":7,\"eyebrows_2\":10,\"tshirt_1\":15,\"lipstick_2\":0,\"hair_color_1\":38,\"bproof_2\":0,\"decals_1\":0,\"helmet_2\":0,\"chain_1\":0,\"glasses_1\":24,\"pants_2\":5,\"arms\":17,\"eyebrows_1\":0,\"torso_2\":8}},{\"label\":\"plage\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"chain_1\":0,\"beard_3\":1,\"pants_1\":16,\"shoes_1\":1,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":1,\"sex\":0,\"makeup_4\":0,\"helmet_1\":-1,\"makeup_2\":0,\"skin\":10,\"bproof_1\":0,\"mask_2\":0,\"hair_color_2\":38,\"chain_2\":0,\"tshirt_1\":15,\"makeup_1\":0,\"bags_2\":0,\"torso_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":4,\"shoes_2\":15,\"mask_1\":0,\"torso_1\":15,\"tshirt_2\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"face\":0,\"hair_color_1\":38,\"age_2\":0,\"decals_2\":0,\"beard_2\":7,\"eyebrows_2\":10,\"decals_1\":0,\"beard_1\":7,\"eyebrows_3\":1,\"bproof_2\":0,\"age_1\":0,\"helmet_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"pants_2\":3,\"arms\":15,\"glasses_1\":5,\"ears_1\":-1}}]}'),
(35, 'user_ears', 'steam:110000117d510a6', '{}'),
(36, 'user_glasses', 'steam:110000117d510a6', '{\"skin\":{\"glasses_2\":2,\"glasses_1\":5},\"hasGlasses\":true}'),
(37, 'user_helmet', 'steam:110000117d510a6', '{\"skin\":{\"helmet_1\":6,\"helmet_2\":1},\"hasHelmet\":true}'),
(43, 'user_ears', 'steam:11000010ede2397', '{}'),
(44, 'user_glasses', 'steam:11000010ede2397', '{}'),
(45, 'user_helmet', 'steam:11000010ede2397', '{}'),
(46, 'user_mask', 'steam:11000010ede2397', '{\"skin\":{\"mask_2\":5,\"mask_1\":99},\"hasMask\":true}'),
(47, 'property', 'steam:11000010ede2397', '{\"dressing\":[{\"skin\":{\"mask_1\":0,\"lipstick_4\":0,\"makeup_4\":0,\"eyebrows_2\":10,\"tshirt_1\":21,\"bags_1\":0,\"eyebrows_3\":0,\"beard_1\":10,\"decals_2\":0,\"makeup_2\":0,\"face\":0,\"chain_2\":2,\"hair_color_2\":0,\"sex\":0,\"chain_1\":12,\"eyebrows_1\":0,\"hair_2\":0,\"bproof_1\":0,\"hair_1\":19,\"pants_2\":0,\"arms\":17,\"mask_2\":0,\"lipstick_2\":0,\"makeup_1\":0,\"ears_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"torso_2\":1,\"helmet_1\":-1,\"bproof_2\":0,\"shoes_1\":10,\"glasses_1\":5,\"helmet_2\":0,\"glasses_2\":5,\"lipstick_3\":0,\"tshirt_2\":4,\"ears_1\":2,\"age_1\":0,\"pants_1\":24,\"skin\":0,\"makeup_3\":0,\"bags_2\":0,\"hair_color_1\":29,\"eyebrows_4\":0,\"beard_2\":10,\"age_2\":0,\"torso_1\":142,\"shoes_2\":0,\"beard_4\":0,\"beard_3\":0},\"label\":\"Col roulé\"},{\"skin\":{\"mask_1\":0,\"lipstick_4\":0,\"makeup_4\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"bags_1\":0,\"eyebrows_3\":0,\"arms\":17,\"decals_2\":0,\"makeup_2\":0,\"face\":0,\"chain_2\":0,\"hair_color_2\":0,\"sex\":0,\"chain_1\":0,\"eyebrows_1\":0,\"hair_2\":0,\"beard_1\":10,\"hair_1\":19,\"pants_2\":3,\"mask_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"ears_2\":0,\"helmet_1\":-1,\"lipstick_1\":0,\"decals_1\":0,\"torso_2\":3,\"beard_3\":0,\"glasses_1\":10,\"shoes_1\":25,\"helmet_2\":0,\"tshirt_1\":15,\"glasses_2\":5,\"lipstick_3\":0,\"bproof_2\":0,\"ears_1\":2,\"age_1\":0,\"pants_1\":39,\"skin\":0,\"bags_2\":0,\"shoes_2\":0,\"hair_color_1\":29,\"eyebrows_4\":0,\"beard_2\":10,\"tshirt_2\":0,\"torso_1\":66,\"age_2\":0,\"beard_4\":0,\"makeup_3\":0},\"label\":\"Illegal\"},{\"skin\":{\"mask_1\":99,\"lipstick_4\":0,\"makeup_4\":0,\"eyebrows_2\":10,\"tshirt_1\":15,\"glasses_2\":5,\"eyebrows_3\":0,\"beard_1\":10,\"decals_2\":0,\"makeup_2\":0,\"face\":0,\"chain_2\":0,\"hair_color_2\":0,\"sex\":0,\"chain_1\":0,\"eyebrows_1\":0,\"hair_2\":0,\"glasses_1\":10,\"hair_1\":19,\"pants_2\":1,\"helmet_2\":0,\"arms\":17,\"mask_2\":5,\"makeup_1\":0,\"lipstick_2\":0,\"ears_2\":0,\"decals_1\":0,\"torso_2\":1,\"beard_3\":0,\"helmet_1\":-1,\"shoes_1\":25,\"lipstick_1\":0,\"bproof_2\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"bproof_1\":0,\"bags_1\":0,\"age_1\":0,\"pants_1\":39,\"ears_1\":2,\"skin\":0,\"bags_2\":0,\"hair_color_1\":29,\"eyebrows_4\":0,\"beard_2\":10,\"makeup_3\":0,\"shoes_2\":0,\"beard_4\":0,\"age_2\":0,\"torso_1\":66},\"label\":\"Illégal bon\"}]}'),
(48, 'user_ears', 'steam:11000011230bca7', '{}'),
(49, 'user_glasses', 'steam:11000011230bca7', '{}'),
(50, 'user_helmet', 'steam:11000011230bca7', '{}'),
(51, 'user_mask', 'steam:11000011230bca7', '{}'),
(52, 'property', 'steam:11000011230bca7', '{}'),
(53, 'property', 'steam:11000010719503b', '{\"dressing\":[{\"label\":\"Civil 1\",\"skin\":{\"eyebrows_1\":2,\"hair_2\":0,\"age_2\":0,\"face\":21,\"glasses_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"hair_color_1\":15,\"glasses_1\":5,\"helmet_2\":0,\"eyebrows_2\":10,\"tshirt_2\":1,\"skin\":0,\"ears_1\":-1,\"mask_1\":0,\"tshirt_1\":13,\"makeup_3\":0,\"decals_2\":0,\"torso_2\":1,\"makeup_2\":10,\"eyebrows_3\":17,\"bags_1\":0,\"lipstick_3\":20,\"lipstick_2\":10,\"hair_color_2\":29,\"bproof_2\":0,\"torso_1\":64,\"arms\":1,\"lipstick_4\":0,\"bags_2\":0,\"ears_2\":0,\"beard_1\":0,\"beard_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"hair_1\":4,\"makeup_1\":3,\"shoes_1\":7,\"helmet_1\":-1,\"mask_2\":0,\"beard_3\":0,\"pants_2\":10,\"shoes_2\":0,\"beard_4\":0,\"sex\":1,\"decals_1\":0,\"pants_1\":0,\"age_1\":0,\"chain_1\":0,\"makeup_4\":0}},{\"label\":\"BRAQUAGE !!!\",\"skin\":{\"eyebrows_1\":2,\"hair_2\":0,\"age_2\":0,\"face\":21,\"glasses_2\":1,\"chain_2\":0,\"lipstick_1\":0,\"hair_color_1\":15,\"glasses_1\":7,\"helmet_2\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"skin\":0,\"ears_1\":-1,\"mask_1\":99,\"tshirt_1\":2,\"makeup_3\":0,\"decals_2\":0,\"torso_2\":0,\"makeup_2\":10,\"eyebrows_3\":17,\"bags_1\":0,\"sex\":1,\"torso_1\":60,\"hair_color_2\":29,\"lipstick_2\":10,\"lipstick_3\":20,\"lipstick_4\":0,\"beard_1\":0,\"bags_2\":0,\"ears_2\":0,\"eyebrows_2\":10,\"beard_2\":0,\"chain_1\":0,\"hair_1\":4,\"bproof_2\":0,\"makeup_1\":3,\"shoes_1\":25,\"helmet_1\":-1,\"mask_2\":0,\"arms\":3,\"pants_2\":0,\"shoes_2\":0,\"beard_3\":0,\"beard_4\":0,\"decals_1\":0,\"pants_1\":39,\"age_1\":0,\"bproof_1\":0,\"makeup_4\":0}},{\"label\":\"Strip Tease\",\"skin\":{\"eyebrows_1\":2,\"hair_2\":0,\"age_2\":0,\"face\":21,\"glasses_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"hair_color_1\":15,\"glasses_1\":5,\"helmet_2\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"skin\":0,\"ears_1\":-1,\"mask_1\":0,\"tshirt_1\":2,\"makeup_3\":0,\"decals_2\":0,\"torso_2\":2,\"makeup_2\":10,\"eyebrows_3\":17,\"bags_1\":0,\"shoes_1\":41,\"sex\":1,\"hair_color_2\":29,\"lipstick_2\":10,\"torso_1\":22,\"bproof_2\":0,\"lipstick_3\":20,\"bags_2\":0,\"ears_2\":0,\"beard_1\":0,\"beard_2\":0,\"chain_1\":0,\"arms\":15,\"hair_1\":4,\"makeup_1\":3,\"beard_3\":0,\"helmet_1\":-1,\"mask_2\":0,\"lipstick_4\":0,\"pants_2\":2,\"shoes_2\":4,\"eyebrows_4\":0,\"bproof_1\":0,\"decals_1\":0,\"pants_1\":20,\"age_1\":0,\"beard_4\":0,\"makeup_4\":0}},{\"label\":\"Ecoliere\",\"skin\":{\"eyebrows_1\":2,\"hair_2\":0,\"age_2\":0,\"face\":21,\"glasses_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"hair_color_1\":15,\"glasses_1\":5,\"helmet_2\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"skin\":0,\"ears_1\":-1,\"mask_1\":0,\"tshirt_1\":2,\"makeup_3\":0,\"decals_2\":0,\"torso_2\":0,\"makeup_2\":10,\"eyebrows_3\":17,\"bags_1\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"hair_color_2\":29,\"lipstick_2\":10,\"torso_1\":74,\"lipstick_3\":20,\"arms\":4,\"bags_2\":0,\"ears_2\":0,\"beard_1\":0,\"beard_2\":0,\"chain_1\":0,\"hair_1\":4,\"bproof_2\":0,\"makeup_1\":3,\"shoes_1\":0,\"helmet_1\":-1,\"mask_2\":0,\"lipstick_4\":0,\"pants_2\":1,\"shoes_2\":0,\"beard_3\":0,\"beard_4\":0,\"decals_1\":0,\"pants_1\":12,\"age_1\":0,\"bproof_1\":0,\"sex\":1}},{\"label\":\"Cuir\",\"skin\":{\"hair_1\":4,\"hair_2\":0,\"age_2\":0,\"face\":21,\"glasses_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"hair_color_1\":15,\"glasses_1\":5,\"helmet_2\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"skin\":0,\"ears_1\":-1,\"mask_1\":0,\"tshirt_1\":2,\"makeup_3\":0,\"decals_2\":0,\"torso_2\":0,\"makeup_2\":10,\"eyebrows_3\":17,\"bags_1\":0,\"lipstick_3\":20,\"makeup_4\":0,\"hair_color_2\":29,\"lipstick_2\":10,\"torso_1\":262,\"eyebrows_1\":2,\"beard_1\":0,\"bags_2\":0,\"ears_2\":0,\"bproof_2\":0,\"beard_2\":0,\"chain_1\":0,\"arms\":7,\"lipstick_4\":0,\"makeup_1\":3,\"beard_3\":0,\"helmet_1\":-1,\"mask_2\":0,\"shoes_1\":77,\"pants_2\":0,\"shoes_2\":0,\"beard_4\":0,\"bproof_1\":0,\"decals_1\":0,\"pants_1\":43,\"age_1\":0,\"eyebrows_4\":0,\"sex\":1}},{\"label\":\"Soft\",\"skin\":{\"eyebrows_1\":2,\"hair_2\":0,\"age_2\":0,\"face\":21,\"glasses_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"hair_color_1\":15,\"glasses_1\":5,\"helmet_2\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"skin\":0,\"ears_1\":-1,\"mask_1\":0,\"tshirt_1\":2,\"makeup_3\":0,\"decals_2\":0,\"beard_4\":0,\"makeup_2\":10,\"eyebrows_3\":17,\"bags_1\":0,\"torso_2\":0,\"beard_3\":0,\"lipstick_3\":20,\"lipstick_2\":10,\"makeup_4\":0,\"torso_1\":117,\"bproof_2\":0,\"bags_2\":0,\"ears_2\":0,\"beard_1\":0,\"beard_2\":0,\"bproof_1\":0,\"arms\":11,\"hair_1\":4,\"makeup_1\":3,\"shoes_1\":43,\"helmet_1\":-1,\"mask_2\":0,\"lipstick_4\":0,\"pants_2\":4,\"shoes_2\":3,\"eyebrows_2\":10,\"hair_color_2\":29,\"decals_1\":0,\"pants_1\":74,\"age_1\":0,\"chain_1\":0,\"sex\":1}}]}'),
(54, 'user_mask', 'steam:11000010719503b', '{\"skin\":{\"mask_2\":0,\"mask_1\":99},\"hasMask\":true}'),
(55, 'user_glasses', 'steam:11000010719503b', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":7,\"glasses_2\":1}}'),
(56, 'user_ears', 'steam:11000010719503b', '{}'),
(57, 'user_helmet', 'steam:11000010719503b', '{}'),
(58, 'user_ears', 'steam:11000013491dae7', '{}'),
(59, 'user_helmet', 'steam:11000013491dae7', '{\"skin\":{\"helmet_1\":49,\"helmet_2\":0},\"hasHelmet\":true}'),
(60, 'user_glasses', 'steam:11000013491dae7', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":25,\"glasses_2\":4}}'),
(61, 'user_mask', 'steam:11000013491dae7', '{\"hasMask\":true,\"skin\":{\"mask_1\":90,\"mask_2\":2}}'),
(62, 'property', 'steam:11000013491dae7', '{\"dressing\":[{\"label\":\"moto\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"decals_2\":0,\"beard_3\":0,\"pants_1\":31,\"shoes_1\":24,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":0,\"sex\":0,\"glasses_1\":5,\"helmet_1\":-1,\"makeup_2\":0,\"skin\":1,\"shoes_2\":0,\"mask_2\":0,\"hair_color_2\":53,\"chain_2\":0,\"bproof_1\":0,\"makeup_1\":0,\"bags_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":33,\"beard_1\":10,\"mask_1\":0,\"torso_1\":49,\"tshirt_2\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"face\":2,\"hair_2\":0,\"age_2\":0,\"age_1\":0,\"beard_2\":10,\"eyebrows_2\":10,\"decals_1\":0,\"lipstick_2\":0,\"tshirt_1\":15,\"torso_2\":0,\"hair_color_1\":0,\"helmet_2\":0,\"chain_1\":0,\"ears_1\":-1,\"pants_2\":0,\"arms\":4,\"bproof_2\":0,\"makeup_4\":0}},{\"label\":\"narnar\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":45,\"decals_2\":0,\"beard_3\":0,\"pants_1\":33,\"shoes_1\":24,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":4,\"sex\":0,\"glasses_1\":25,\"helmet_1\":6,\"makeup_2\":0,\"skin\":1,\"shoes_2\":0,\"mask_2\":2,\"hair_color_2\":53,\"chain_2\":0,\"bproof_1\":0,\"makeup_1\":0,\"bags_2\":0,\"lipstick_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":33,\"beard_1\":10,\"mask_1\":90,\"torso_1\":253,\"tshirt_2\":0,\"lipstick_4\":0,\"hair_2\":0,\"face\":2,\"eyebrows_3\":0,\"age_2\":0,\"age_1\":0,\"beard_2\":10,\"eyebrows_2\":10,\"tshirt_1\":15,\"decals_1\":0,\"chain_1\":0,\"torso_2\":1,\"ears_1\":-1,\"helmet_2\":1,\"eyebrows_1\":0,\"hair_color_1\":0,\"pants_2\":0,\"arms\":17,\"bproof_2\":0,\"makeup_4\":0}},{\"label\":\"plage\",\"skin\":{\"lipstick_3\":0,\"lipstick_1\":0,\"bags_1\":0,\"chain_1\":0,\"beard_3\":0,\"pants_1\":16,\"shoes_1\":34,\"ears_2\":0,\"beard_4\":0,\"glasses_2\":0,\"sex\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"makeup_2\":0,\"skin\":1,\"bproof_1\":0,\"mask_2\":0,\"hair_color_2\":53,\"chain_2\":0,\"helmet_1\":-1,\"makeup_1\":0,\"bags_2\":0,\"hair_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"hair_1\":33,\"shoes_2\":0,\"mask_1\":0,\"torso_1\":15,\"tshirt_2\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"face\":2,\"age_1\":0,\"age_2\":0,\"beard_1\":10,\"beard_2\":10,\"eyebrows_2\":10,\"decals_1\":0,\"lipstick_2\":0,\"tshirt_1\":15,\"bproof_2\":0,\"torso_2\":0,\"helmet_2\":0,\"decals_2\":0,\"hair_color_1\":0,\"pants_2\":3,\"arms\":15,\"glasses_1\":5,\"ears_1\":-1}}]}'),
(63, 'user_ears', 'steam:110000131d556ee', '{}'),
(64, 'user_glasses', 'steam:110000131d556ee', '{\"skin\":{\"glasses_1\":9,\"glasses_2\":0},\"hasGlasses\":true}'),
(65, 'user_helmet', 'steam:110000131d556ee', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":52,\"helmet_2\":0}}'),
(66, 'user_mask', 'steam:110000131d556ee', '{\"skin\":{\"mask_1\":129,\"mask_2\":0},\"hasMask\":true}'),
(67, 'property', 'steam:110000131d556ee', '{\"dressing\":[{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":79,\"sex\":0,\"mask_2\":0,\"shoes_1\":59,\"hair_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":20,\"beard_1\":0,\"torso_2\":0,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":101,\"age_1\":0,\"decals_1\":0,\"torso_1\":181,\"makeup_2\":0,\"arms\":19,\"glasses_1\":5,\"bags_2\":0,\"decals_2\":0,\"pants_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"hair_1\":19,\"makeup_4\":0,\"eyebrows_2\":0,\"tshirt_2\":22,\"helmet_1\":105,\"lipstick_4\":0,\"ears_1\":-1,\"shoes_2\":20,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"face\":44,\"glasses_2\":5,\"lipstick_3\":0,\"makeup_1\":0,\"skin\":1,\"age_2\":0,\"hair_color_1\":8,\"beard_3\":0,\"mask_1\":0,\"eyebrows_1\":0},\"label\":\"roger\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":12,\"sex\":0,\"mask_2\":0,\"shoes_1\":69,\"hair_2\":0,\"makeup_4\":0,\"mask_1\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":0,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":130,\"age_1\":0,\"lipstick_3\":0,\"pants_2\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"decals_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"lipstick_4\":0,\"chain_1\":0,\"hair_1\":19,\"torso_1\":15,\"eyebrows_2\":0,\"tshirt_2\":0,\"face\":44,\"arms\":51,\"decals_1\":0,\"ears_1\":-1,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bags_2\":0,\"shoes_2\":0,\"lipstick_2\":0,\"skin\":1,\"makeup_1\":0,\"hair_color_1\":8,\"beard_3\":0,\"glasses_2\":0,\"eyebrows_1\":0},\"label\":\"pepouse\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":71,\"sex\":0,\"mask_2\":0,\"shoes_1\":25,\"hair_2\":0,\"makeup_4\":0,\"mask_1\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":0,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":125,\"age_1\":0,\"lipstick_3\":0,\"pants_2\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"decals_2\":0,\"helmet_1\":50,\"bproof_1\":0,\"lipstick_4\":0,\"chain_1\":0,\"hair_1\":19,\"torso_1\":224,\"eyebrows_2\":0,\"tshirt_2\":0,\"face\":44,\"arms\":19,\"decals_1\":0,\"ears_1\":-1,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"bags_2\":0,\"shoes_2\":0,\"lipstick_2\":0,\"skin\":1,\"makeup_1\":0,\"hair_color_1\":8,\"beard_3\":0,\"glasses_2\":0,\"eyebrows_1\":0},\"label\":\"taff\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":26,\"sex\":0,\"mask_2\":0,\"shoes_1\":59,\"lipstick_4\":0,\"makeup_4\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":20,\"beard_4\":0,\"face\":44,\"lipstick_1\":0,\"tshirt_1\":95,\"age_1\":0,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0,\"arms\":19,\"glasses_1\":18,\"pants_2\":0,\"decals_2\":0,\"ears_2\":0,\"bproof_1\":0,\"chain_1\":0,\"hair_1\":19,\"helmet_1\":-1,\"torso_1\":191,\"eyebrows_2\":0,\"tshirt_2\":1,\"bags_2\":0,\"ears_1\":-1,\"shoes_2\":25,\"chain_2\":0,\"beard_2\":0,\"glasses_2\":6,\"eyebrows_4\":0,\"mask_1\":0,\"age_2\":0,\"makeup_1\":0,\"eyebrows_1\":0,\"skin\":1,\"eyebrows_3\":0,\"hair_color_1\":8,\"beard_3\":0,\"lipstick_3\":0,\"hair_2\":0},\"label\":\"gtr\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":59,\"sex\":0,\"mask_2\":0,\"shoes_1\":27,\"hair_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":5,\"beard_1\":18,\"torso_2\":5,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":57,\"age_1\":0,\"decals_1\":0,\"torso_1\":84,\"makeup_2\":0,\"arms\":20,\"glasses_1\":8,\"bags_2\":0,\"decals_2\":0,\"pants_2\":2,\"bproof_1\":0,\"lipstick_1\":0,\"chain_1\":0,\"hair_1\":19,\"makeup_4\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"helmet_1\":14,\"lipstick_4\":0,\"ears_1\":-1,\"shoes_2\":0,\"beard_2\":9,\"eyebrows_3\":0,\"eyebrows_4\":0,\"face\":44,\"glasses_2\":0,\"lipstick_3\":0,\"makeup_1\":5,\"skin\":8,\"age_2\":0,\"hair_color_1\":17,\"beard_3\":26,\"mask_1\":0,\"eyebrows_1\":0},\"label\":\"ganggggg\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":33,\"sex\":0,\"mask_2\":0,\"shoes_1\":27,\"hair_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":18,\"torso_2\":11,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":53,\"age_1\":0,\"decals_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"decals_2\":0,\"lipstick_1\":0,\"pants_2\":0,\"makeup_4\":0,\"chain_1\":0,\"bproof_1\":0,\"hair_1\":19,\"eyebrows_2\":10,\"tshirt_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"face\":44,\"ears_1\":-1,\"beard_2\":9,\"eyebrows_3\":0,\"torso_1\":88,\"arms\":20,\"shoes_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"skin\":8,\"makeup_1\":5,\"hair_color_1\":17,\"beard_3\":26,\"mask_1\":0,\"bags_2\":0},\"label\":\"gangi\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":3,\"sex\":0,\"mask_2\":0,\"shoes_1\":8,\"hair_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":18,\"torso_2\":11,\"beard_4\":0,\"chain_2\":0,\"arms\":20,\"tshirt_1\":53,\"age_1\":0,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"eyebrows_1\":0,\"decals_2\":0,\"torso_1\":88,\"pants_2\":3,\"face\":44,\"chain_1\":0,\"bproof_1\":0,\"hair_1\":19,\"eyebrows_2\":10,\"tshirt_2\":0,\"makeup_4\":0,\"helmet_1\":-1,\"ears_1\":-1,\"lipstick_4\":0,\"beard_2\":9,\"eyebrows_3\":0,\"eyebrows_4\":0,\"glasses_1\":0,\"shoes_2\":5,\"glasses_2\":0,\"makeup_1\":5,\"skin\":8,\"bags_2\":0,\"hair_color_1\":37,\"beard_3\":26,\"mask_1\":14,\"lipstick_3\":0},\"label\":\"ga\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":26,\"sex\":0,\"mask_2\":0,\"shoes_1\":59,\"hair_2\":0,\"makeup_4\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":18,\"torso_2\":5,\"beard_4\":0,\"face\":44,\"lipstick_4\":0,\"tshirt_1\":60,\"age_1\":0,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0,\"arms\":19,\"lipstick_1\":0,\"eyebrows_1\":0,\"decals_2\":0,\"pants_2\":0,\"bproof_1\":0,\"ears_2\":0,\"chain_1\":0,\"hair_1\":19,\"torso_1\":192,\"eyebrows_2\":10,\"tshirt_2\":0,\"helmet_1\":-1,\"bags_2\":0,\"ears_1\":-1,\"glasses_1\":17,\"beard_2\":9,\"glasses_2\":7,\"eyebrows_4\":0,\"eyebrows_3\":0,\"shoes_2\":20,\"chain_2\":0,\"age_2\":0,\"skin\":8,\"makeup_1\":5,\"hair_color_1\":37,\"beard_3\":26,\"mask_1\":0,\"lipstick_3\":0},\"label\":\"MAMA\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":59,\"sex\":0,\"mask_2\":0,\"shoes_1\":27,\"hair_2\":0,\"makeup_4\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":18,\"torso_2\":0,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":57,\"helmet_1\":-1,\"lipstick_3\":0,\"pants_2\":9,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":0,\"ears_2\":0,\"shoes_2\":0,\"face\":44,\"bproof_1\":0,\"chain_1\":0,\"hair_1\":40,\"lipstick_1\":0,\"torso_1\":50,\"eyebrows_2\":10,\"tshirt_2\":0,\"arms\":19,\"decals_2\":0,\"decals_1\":0,\"ears_1\":-1,\"beard_2\":9,\"eyebrows_3\":0,\"eyebrows_4\":0,\"lipstick_4\":0,\"eyebrows_1\":0,\"age_1\":0,\"makeup_1\":5,\"skin\":8,\"mask_1\":0,\"hair_color_1\":26,\"beard_3\":26,\"glasses_2\":0,\"bags_2\":0},\"label\":\"ano\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":24,\"sex\":0,\"mask_2\":0,\"shoes_1\":20,\"makeup_1\":5,\"ears_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"helmet_2\":0,\"beard_1\":18,\"torso_2\":5,\"beard_4\":0,\"face\":44,\"hair_1\":40,\"tshirt_1\":25,\"age_1\":0,\"lipstick_3\":0,\"bags_1\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"makeup_4\":0,\"shoes_2\":0,\"pants_2\":6,\"bproof_1\":0,\"eyebrows_4\":0,\"arms\":79,\"hair_color_2\":0,\"decals_2\":0,\"eyebrows_2\":10,\"tshirt_2\":5,\"helmet_1\":-1,\"lipstick_4\":0,\"hair_2\":0,\"decals_1\":0,\"beard_2\":9,\"glasses_2\":0,\"torso_1\":24,\"glasses_1\":0,\"chain_2\":0,\"ears_1\":-1,\"mask_1\":0,\"skin\":8,\"bags_2\":0,\"hair_color_1\":26,\"beard_3\":26,\"eyebrows_3\":0,\"eyebrows_1\":0},\"label\":\"style\"}]}'),
(68, 'user_mask', 'steam:110000119ac453f', '{\"hasMask\":true,\"skin\":{\"mask_2\":5,\"mask_1\":101}}'),
(69, 'user_helmet', 'steam:110000119ac453f', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":1,\"helmet_1\":12}}'),
(70, 'property', 'steam:110000119ac453f', '{\"dressing\":[{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"torso_1\":50,\"pants_1\":28,\"skin\":4,\"lipstick_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"makeup_1\":0,\"lipstick_2\":0,\"shoes_1\":26,\"shoes_2\":1,\"eyebrows_1\":0,\"hair_color_1\":26,\"beard_4\":0,\"lipstick_4\":0,\"makeup_3\":0,\"helmet_2\":0,\"hair_color_2\":1,\"eyebrows_4\":0,\"glasses_1\":5,\"sex\":0,\"decals_2\":0,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"tshirt_1\":57,\"hair_1\":14,\"beard_1\":0,\"eyebrows_3\":0,\"makeup_4\":0},\"label\":\"Trkl\"},{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"pants_1\":3,\"skin\":8,\"hair_color_1\":0,\"bags_1\":0,\"hair_color_2\":41,\"makeup_2\":0,\"shoes_2\":5,\"lipstick_2\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"lipstick_1\":0,\"beard_4\":0,\"lipstick_4\":0,\"makeup_3\":0,\"helmet_2\":0,\"shoes_1\":8,\"torso_1\":87,\"glasses_1\":5,\"decals_2\":0,\"sex\":0,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":11,\"pants_2\":3,\"tshirt_1\":57,\"hair_1\":14,\"beard_1\":0,\"eyebrows_3\":0,\"makeup_4\":0},\"label\":\"CRIPZ\"},{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":29,\"bproof_1\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"pants_1\":3,\"skin\":8,\"hair_color_1\":37,\"bags_1\":0,\"hair_color_2\":37,\"makeup_2\":0,\"shoes_2\":2,\"lipstick_2\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"lipstick_1\":0,\"beard_4\":0,\"lipstick_4\":0,\"makeup_3\":0,\"helmet_2\":0,\"shoes_1\":8,\"torso_1\":200,\"glasses_1\":5,\"decals_2\":0,\"sex\":0,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":2,\"tshirt_1\":57,\"hair_1\":14,\"beard_1\":0,\"eyebrows_3\":0,\"makeup_4\":0},\"label\":\"JSDFDS\"},{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":29,\"lipstick_4\":0,\"beard_3\":37,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":-1,\"pants_1\":31,\"eyebrows_4\":0,\"lipstick_1\":0,\"skin\":8,\"makeup_2\":0,\"bags_1\":0,\"makeup_4\":0,\"lipstick_2\":0,\"decals_2\":0,\"shoes_2\":1,\"eyebrows_1\":0,\"shoes_1\":35,\"bproof_1\":0,\"beard_4\":0,\"hair_color_1\":37,\"makeup_3\":0,\"helmet_2\":0,\"torso_1\":53,\"hair_color_2\":37,\"glasses_1\":5,\"tshirt_1\":57,\"sex\":0,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":3,\"pants_2\":4,\"helmet_1\":-1,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"lo\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":5,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":72,\"chain_2\":0,\"age_2\":0,\"makeup_1\":29,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":75,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":-1,\"bags_2\":0,\"hair_color_2\":28,\"hair_color_1\":28,\"skin\":8,\"makeup_4\":0,\"pants_1\":28,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"decals_2\":0,\"shoes_2\":3,\"eyebrows_1\":16,\"eyebrows_4\":0,\"beard_4\":0,\"lipstick_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"torso_1\":140,\"bags_1\":0,\"glasses_1\":5,\"sex\":0,\"bproof_1\":0,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":1,\"pants_2\":8,\"shoes_1\":20,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"Cartel\"},{\"skin\":{\"mask_2\":4,\"beard_2\":10,\"tshirt_2\":5,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":72,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":75,\"mask_1\":99,\"eyebrows_2\":10,\"ears_1\":-1,\"bags_2\":0,\"hair_color_2\":28,\"lipstick_1\":0,\"skin\":8,\"lipstick_4\":0,\"bags_1\":0,\"helmet_1\":-1,\"glasses_2\":2,\"lipstick_2\":0,\"pants_1\":28,\"helmet_2\":0,\"hair_color_1\":28,\"makeup_3\":0,\"beard_4\":0,\"makeup_4\":0,\"shoes_2\":3,\"eyebrows_1\":16,\"eyebrows_4\":0,\"torso_1\":140,\"glasses_1\":0,\"decals_2\":0,\"sex\":0,\"shoes_1\":20,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":1,\"pants_2\":8,\"makeup_1\":29,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"DRG\"},{\"skin\":{\"mask_2\":4,\"beard_2\":10,\"tshirt_2\":3,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":96,\"mask_1\":99,\"eyebrows_2\":10,\"ears_1\":-1,\"helmet_1\":-1,\"hair_color_2\":28,\"lipstick_1\":0,\"skin\":8,\"bproof_1\":0,\"bags_1\":0,\"tshirt_1\":72,\"glasses_2\":3,\"lipstick_2\":0,\"torso_1\":140,\"shoes_2\":0,\"eyebrows_1\":16,\"makeup_1\":29,\"beard_4\":0,\"makeup_4\":0,\"makeup_3\":0,\"helmet_2\":0,\"hair_color_1\":28,\"eyebrows_4\":0,\"glasses_1\":5,\"pants_1\":28,\"decals_2\":0,\"shoes_1\":21,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":6,\"pants_2\":0,\"sex\":0,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"PD\"},{\"skin\":{\"mask_2\":4,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":77,\"mask_1\":99,\"eyebrows_2\":10,\"ears_1\":-1,\"pants_1\":28,\"hair_color_2\":28,\"hair_color_1\":28,\"skin\":8,\"lipstick_4\":0,\"bags_1\":45,\"tshirt_1\":31,\"shoes_1\":8,\"lipstick_2\":0,\"makeup_1\":50,\"helmet_1\":-1,\"eyebrows_1\":16,\"shoes_2\":0,\"beard_4\":0,\"lipstick_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"eyebrows_4\":0,\"torso_1\":134,\"glasses_1\":0,\"sex\":0,\"decals_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":8,\"makeup_4\":29,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"kldkld\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":5,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":33,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":75,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":-1,\"bags_2\":0,\"torso_1\":76,\"hair_color_1\":28,\"skin\":8,\"makeup_1\":50,\"bags_1\":0,\"makeup_2\":0,\"shoes_1\":20,\"lipstick_2\":0,\"makeup_4\":29,\"helmet_2\":0,\"makeup_3\":0,\"lipstick_4\":0,\"beard_4\":0,\"lipstick_1\":0,\"shoes_2\":3,\"eyebrows_1\":16,\"hair_color_2\":28,\"eyebrows_4\":0,\"glasses_1\":5,\"pants_1\":28,\"decals_2\":0,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":3,\"pants_2\":8,\"sex\":0,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"mdfdlks\"},{\"skin\":{\"mask_2\":5,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":50,\"bproof_1\":0,\"beard_3\":0,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":30,\"mask_1\":101,\"sex\":0,\"eyebrows_2\":10,\"decals_2\":0,\"hair_color_2\":28,\"lipstick_1\":0,\"skin\":8,\"hair_color_1\":28,\"bags_1\":0,\"shoes_2\":1,\"tshirt_1\":57,\"makeup_2\":0,\"lipstick_2\":0,\"helmet_1\":-1,\"shoes_1\":49,\"eyebrows_1\":16,\"beard_4\":0,\"lipstick_4\":0,\"makeup_3\":0,\"helmet_2\":0,\"age_1\":0,\"torso_1\":0,\"glasses_1\":5,\"makeup_4\":29,\"pants_1\":15,\"glasses_2\":2,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":1,\"pants_2\":15,\"eyebrows_4\":0,\"hair_1\":14,\"beard_1\":3,\"eyebrows_3\":0,\"shoes\":9},\"label\":\"zz\"}]}'),
(71, 'user_glasses', 'steam:110000119ac453f', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":5,\"glasses_1\":5}}'),
(72, 'user_ears', 'steam:110000119ac453f', '{\"hasEars\":true,\"skin\":{\"ears_1\":11,\"ears_2\":1}}'),
(73, 'user_ears', 'steam:110000134626eca', '{\"skin\":{\"ears_1\":0,\"ears_2\":0},\"hasEars\":true}'),
(74, 'property', 'steam:110000134626eca', '{\"dressing\":[{\"label\":1,\"skin\":{\"glasses_2\":7,\"mask_2\":0,\"pants_2\":0,\"decals_1\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"chain_1\":0,\"tshirt_2\":0,\"bproof_2\":0,\"age_2\":0,\"beard_4\":0,\"shoes_2\":0,\"hair_color_1\":0,\"beard_2\":10,\"bproof_1\":0,\"shoes_1\":24,\"lipstick_4\":0,\"sex\":0,\"hair_color_2\":19,\"helmet_2\":0,\"beard_1\":10,\"hair_1\":11,\"lipstick_2\":0,\"arms\":1,\"age_1\":0,\"glasses_1\":18,\"lipstick_3\":0,\"tshirt_1\":23,\"eyebrows_2\":0,\"chain_2\":0,\"mask_1\":0,\"hair_2\":0,\"eyebrows_1\":0,\"torso_1\":62,\"ears_1\":-1,\"bags_2\":0,\"eyebrows_3\":0,\"makeup_2\":0,\"skin\":5,\"torso_2\":0,\"beard_3\":0,\"makeup_3\":0,\"ears_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"pants_1\":31,\"face\":2,\"helmet_1\":-1,\"makeup_4\":0,\"bags_1\":0}},{\"label\":\"avocat\",\"skin\":{\"glasses_2\":7,\"mask_2\":0,\"pants_2\":0,\"decals_1\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"chain_1\":0,\"tshirt_2\":0,\"bproof_2\":0,\"age_2\":0,\"beard_4\":0,\"shoes_2\":0,\"face\":2,\"beard_2\":10,\"bproof_1\":0,\"shoes_1\":10,\"lipstick_4\":0,\"sex\":0,\"hair_color_2\":19,\"age_1\":0,\"mask_1\":0,\"hair_1\":11,\"lipstick_2\":0,\"arms\":1,\"hair_2\":0,\"beard_1\":10,\"lipstick_3\":0,\"tshirt_1\":31,\"eyebrows_2\":0,\"chain_2\":0,\"skin\":5,\"glasses_1\":18,\"helmet_2\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"bags_2\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"torso_1\":31,\"torso_2\":0,\"beard_3\":0,\"makeup_3\":0,\"ears_2\":0,\"decals_2\":0,\"lipstick_1\":0,\"pants_1\":28,\"hair_color_1\":0,\"helmet_1\":-1,\"makeup_4\":0,\"bags_1\":0}},{\"label\":\"procés\",\"skin\":{\"glasses_2\":7,\"mask_2\":0,\"pants_2\":0,\"decals_1\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"chain_1\":0,\"tshirt_2\":0,\"bproof_2\":0,\"age_2\":0,\"lipstick_4\":0,\"shoes_2\":0,\"hair_color_1\":0,\"beard_2\":10,\"bproof_1\":0,\"shoes_1\":10,\"age_1\":0,\"sex\":0,\"hair_color_2\":19,\"skin\":5,\"beard_1\":10,\"hair_1\":11,\"mask_1\":0,\"arms\":4,\"hair_2\":0,\"lipstick_2\":0,\"lipstick_3\":0,\"tshirt_1\":31,\"eyebrows_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"beard_4\":0,\"glasses_1\":18,\"eyebrows_1\":0,\"ears_1\":-1,\"bags_2\":0,\"torso_1\":29,\"makeup_2\":0,\"decals_2\":0,\"torso_2\":0,\"beard_3\":0,\"makeup_3\":0,\"ears_2\":0,\"helmet_2\":0,\"lipstick_1\":0,\"pants_1\":28,\"face\":2,\"helmet_1\":-1,\"makeup_4\":0,\"bags_1\":0}}]}'),
(75, 'user_glasses', 'steam:110000134626eca', '{\"skin\":{\"glasses_2\":7,\"glasses_1\":18},\"hasGlasses\":true}'),
(76, 'user_helmet', 'steam:110000134626eca', '{\"skin\":{\"helmet_1\":52,\"helmet_2\":0},\"hasHelmet\":true}'),
(77, 'user_mask', 'steam:110000134626eca', '{}'),
(78, 'property', 'steam:1100001196b3017', '{\"dressing\":[{\"skin\":{\"glasses_2\":1,\"lipstick_4\":0,\"eyebrows_2\":10,\"skin\":0,\"decals_2\":0,\"glasses_1\":5,\"mask_1\":0,\"eyebrows_3\":0,\"arms\":1,\"eyebrows_4\":0,\"makeup_1\":0,\"lipstick_3\":0,\"bproof_2\":0,\"makeup_2\":0,\"shoes_1\":7,\"beard_3\":0,\"eyebrows_1\":0,\"beard_4\":0,\"decals_1\":0,\"torso_1\":136,\"bproof_1\":0,\"hair_color_1\":0,\"helmet_1\":-1,\"tshirt_2\":0,\"torso_2\":6,\"hair_2\":0,\"age_2\":0,\"beard_1\":11,\"bags_2\":0,\"bags_1\":0,\"makeup_3\":0,\"chain_2\":0,\"chain_1\":53,\"mask_2\":0,\"sex\":0,\"tshirt_1\":23,\"age_1\":0,\"makeup_4\":0,\"pants_2\":0,\"pants_1\":24,\"face\":4,\"beard_2\":10,\"shoes_2\":0,\"helmet_2\":0,\"lipstick_1\":0,\"hair_color_2\":0,\"lipstick_2\":0,\"hair_1\":33,\"ears_1\":-1,\"ears_2\":0},\"label\":\"BG\"}]}'),
(79, 'user_mask', 'steam:1100001196b3017', '{}'),
(80, 'user_ears', 'steam:1100001196b3017', '{}'),
(81, 'user_helmet', 'steam:1100001196b3017', '{}'),
(82, 'user_glasses', 'steam:1100001196b3017', '{}'),
(83, 'user_ears', 'steam:11000010f7f9504', '{}'),
(84, 'user_glasses', 'steam:11000010f7f9504', '{}'),
(85, 'user_mask', 'steam:11000010f7f9504', '{}'),
(86, 'user_helmet', 'steam:11000010f7f9504', '{}'),
(87, 'property', 'steam:11000010f7f9504', '{\"dressing\":[{\"label\":\"Police\",\"skin\":{\"mask_1\":0,\"decals_1\":0,\"pants_1\":10,\"torso_2\":0,\"skin\":0,\"torso_1\":55,\"bproof_1\":0,\"glasses_1\":4,\"arms\":41,\"beard_2\":0,\"mask_2\":0,\"beard_4\":0,\"ears_2\":0,\"helmet_1\":-1,\"lipstick_1\":0,\"bproof_2\":0,\"shoes_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"hair_color_2\":0,\"bags_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"lipstick_2\":0,\"tshirt_1\":58,\"age_2\":0,\"face\":0,\"makeup_2\":0,\"makeup_1\":0,\"eyebrows_1\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"chain_1\":0,\"hair_color_1\":0,\"beard_3\":0,\"chain_2\":0,\"tshirt_2\":0,\"decals_2\":0,\"beard_1\":0,\"lipstick_3\":0,\"hair_1\":11,\"bags_2\":0,\"age_1\":0,\"shoes_1\":10,\"sex\":0,\"pants_2\":0,\"makeup_3\":0,\"ears_1\":-1,\"hair_2\":0}}]}'),
(88, 'user_mask', 'steam:11000010d17d505', '{}'),
(89, 'user_glasses', 'steam:11000010d17d505', '{}'),
(90, 'property', 'steam:11000010d17d505', '{}'),
(91, 'user_helmet', 'steam:11000010d17d505', '{}'),
(92, 'user_ears', 'steam:11000010d17d505', '{}'),
(93, 'user_helmet', 'steam:11000010cb4181f', '{}'),
(94, 'user_ears', 'steam:11000010cb4181f', '{}'),
(95, 'property', 'steam:11000010cb4181f', '{\"dressing\":[{\"label\":\"Special\",\"skin\":{\"beard_2\":0,\"hair_2\":4,\"skin\":4,\"eyebrows_1\":0,\"tshirt_2\":0,\"lipstick_1\":0,\"age_1\":0,\"decals_2\":0,\"glasses_1\":5,\"ears_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"shoes_2\":0,\"bproof_1\":0,\"torso_1\":53,\"ears_1\":-1,\"decals_1\":0,\"hair_1\":14,\"shoes_1\":25,\"bags_1\":0,\"bags_2\":0,\"arms\":1,\"pants_1\":33,\"lipstick_4\":0,\"makeup_4\":0,\"sex\":0,\"eyebrows_3\":0,\"beard_4\":0,\"helmet_2\":0,\"age_2\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"makeup_3\":0,\"torso_2\":0,\"hair_color_1\":1,\"beard_3\":0,\"glasses_2\":5,\"tshirt_1\":15,\"pants_2\":0,\"bproof_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"chain_1\":0,\"eyebrows_4\":0,\"beard_1\":0,\"mask_1\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"face\":2}},{\"label\":\"6xi9ine\",\"skin\":{\"beard_2\":0,\"hair_2\":4,\"skin\":4,\"glasses_2\":7,\"tshirt_2\":0,\"makeup_3\":0,\"age_1\":0,\"decals_2\":0,\"glasses_1\":5,\"ears_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"shoes_2\":0,\"bproof_1\":0,\"torso_1\":200,\"ears_1\":-1,\"decals_1\":0,\"hair_1\":14,\"shoes_1\":29,\"bags_1\":0,\"bags_2\":0,\"arms\":1,\"tshirt_1\":15,\"lipstick_4\":0,\"makeup_4\":0,\"sex\":0,\"eyebrows_3\":0,\"beard_4\":0,\"helmet_1\":-1,\"age_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"chain_1\":0,\"beard_3\":0,\"hair_color_1\":1,\"eyebrows_1\":0,\"torso_2\":12,\"eyebrows_2\":0,\"pants_2\":1,\"bproof_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"pants_1\":78,\"eyebrows_4\":0,\"beard_1\":0,\"mask_1\":0,\"lipstick_1\":0,\"makeup_2\":0,\"face\":2}},{\"label\":\"Costume\",\"skin\":{\"beard_2\":0,\"hair_2\":4,\"skin\":4,\"glasses_2\":1,\"tshirt_2\":0,\"chain_1\":0,\"age_1\":0,\"decals_2\":0,\"glasses_1\":5,\"ears_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"shoes_2\":0,\"bproof_1\":0,\"torso_1\":30,\"ears_1\":-1,\"decals_1\":0,\"hair_1\":14,\"shoes_1\":10,\"bags_1\":0,\"bags_2\":0,\"arms\":1,\"helmet_1\":-1,\"lipstick_4\":0,\"makeup_4\":0,\"sex\":0,\"eyebrows_3\":0,\"beard_4\":0,\"helmet_2\":0,\"age_2\":0,\"hair_color_2\":0,\"eyebrows_1\":0,\"beard_3\":0,\"eyebrows_2\":0,\"hair_color_1\":1,\"torso_2\":0,\"tshirt_1\":35,\"makeup_3\":0,\"pants_2\":0,\"bproof_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"eyebrows_4\":0,\"beard_1\":0,\"mask_1\":0,\"pants_1\":24,\"makeup_2\":0,\"face\":2}},{\"label\":\"Normal\",\"skin\":{\"beard_2\":0,\"hair_2\":4,\"skin\":4,\"glasses_2\":1,\"tshirt_2\":10,\"lipstick_1\":0,\"age_1\":0,\"decals_2\":0,\"glasses_1\":5,\"ears_2\":0,\"beard_3\":0,\"lipstick_3\":0,\"mask_2\":0,\"shoes_2\":1,\"face\":2,\"torso_1\":70,\"ears_1\":-1,\"decals_1\":0,\"hair_1\":14,\"shoes_1\":31,\"bags_1\":0,\"bags_2\":0,\"arms\":1,\"pants_1\":78,\"helmet_1\":-1,\"makeup_4\":0,\"sex\":0,\"lipstick_4\":0,\"beard_4\":0,\"eyebrows_1\":0,\"age_2\":0,\"hair_color_2\":0,\"eyebrows_2\":0,\"helmet_2\":0,\"makeup_3\":0,\"hair_color_1\":1,\"eyebrows_3\":0,\"torso_2\":11,\"chain_1\":0,\"pants_2\":2,\"bproof_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"tshirt_1\":26,\"eyebrows_4\":0,\"beard_1\":0,\"mask_1\":0,\"chain_2\":0,\"makeup_2\":0,\"bproof_1\":0}}]}'),
(96, 'user_glasses', 'steam:11000010cb4181f', '{}'),
(97, 'user_mask', 'steam:11000010cb4181f', '{\"hasMask\":true,\"skin\":{\"mask_2\":4,\"mask_1\":16}}'),
(98, 'user_glasses', 'steam:11000011a59b3fc', '{}'),
(99, 'user_helmet', 'steam:11000011a59b3fc', '{}'),
(100, 'user_mask', 'steam:11000011a59b3fc', '{}'),
(101, 'property', 'steam:11000011a59b3fc', '{\"dressing\":[{\"skin\":{\"glasses_2\":1,\"lipstick_4\":0,\"eyebrows_2\":10,\"skin\":4,\"chain_1\":0,\"glasses_1\":11,\"mask_1\":0,\"eyebrows_3\":0,\"arms\":14,\"eyebrows_4\":0,\"makeup_1\":0,\"lipstick_3\":19,\"sex\":1,\"makeup_2\":0,\"shoes_1\":1,\"mask_2\":0,\"shoes_2\":0,\"bproof_2\":0,\"eyebrows_1\":2,\"torso_1\":14,\"bproof_1\":0,\"hair_color_1\":0,\"helmet_1\":-1,\"pants_2\":15,\"beard_4\":0,\"hair_2\":0,\"age_2\":0,\"beard_1\":0,\"tshirt_1\":2,\"bags_1\":0,\"makeup_3\":0,\"chain_2\":0,\"hair_1\":4,\"beard_3\":0,\"decals_2\":0,\"makeup_4\":0,\"torso_2\":0,\"lipstick_1\":1,\"helmet_2\":0,\"pants_1\":11,\"face\":45,\"beard_2\":0,\"bags_2\":0,\"ears_2\":0,\"age_1\":0,\"hair_color_2\":0,\"lipstick_2\":10,\"decals_1\":0,\"ears_1\":-1,\"tshirt_2\":0},\"label\":\"Lacoste\"}]}'),
(102, 'user_ears', 'steam:11000011a59b3fc', '{}'),
(103, 'user_ears', 'steam:110000104cf5aeb', '{}'),
(104, 'user_glasses', 'steam:110000104cf5aeb', '{}'),
(105, 'user_helmet', 'steam:110000104cf5aeb', '{}'),
(106, 'user_mask', 'steam:110000104cf5aeb', '{}'),
(107, 'property', 'steam:110000104cf5aeb', '{}'),
(108, 'user_ears', 'steam:11000010d819702', '{}'),
(109, 'user_glasses', 'steam:11000010d819702', '{}'),
(110, 'user_helmet', 'steam:11000010d819702', '{}'),
(111, 'property', 'steam:11000010d819702', '{}'),
(112, 'user_mask', 'steam:11000010d819702', '{}'),
(113, 'property', 'steam:11000010032f30a', '{\"dressing\":[{\"skin\":{\"mask_1\":99,\"lipstick_4\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"tshirt_1\":36,\"glasses_2\":0,\"eyebrows_3\":0,\"beard_1\":5,\"decals_2\":0,\"makeup_2\":0,\"face\":0,\"chain_2\":0,\"hair_color_2\":0,\"sex\":0,\"chain_1\":0,\"eyebrows_1\":0,\"hair_2\":0,\"lipstick_2\":0,\"hair_1\":21,\"pants_2\":0,\"mask_2\":4,\"arms\":0,\"helmet_2\":0,\"makeup_3\":0,\"ears_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"torso_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"shoes_1\":9,\"glasses_1\":0,\"beard_4\":0,\"bags_2\":0,\"lipstick_3\":0,\"tshirt_2\":0,\"ears_1\":-1,\"age_1\":0,\"pants_1\":4,\"skin\":0,\"age_2\":0,\"bags_1\":0,\"hair_color_1\":12,\"eyebrows_4\":0,\"beard_2\":10,\"makeup_1\":0,\"shoes_2\":0,\"bproof_2\":0,\"beard_3\":0,\"torso_1\":112},\"label\":\"Tenue Basique / Froid\"},{\"skin\":{\"mask_1\":99,\"lipstick_4\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"tshirt_1\":15,\"glasses_2\":0,\"eyebrows_3\":0,\"beard_1\":5,\"decals_2\":0,\"makeup_2\":0,\"face\":0,\"chain_2\":0,\"hair_color_2\":0,\"sex\":0,\"chain_1\":0,\"eyebrows_1\":0,\"hair_2\":0,\"lipstick_2\":0,\"hair_1\":21,\"pants_2\":2,\"mask_2\":4,\"arms\":17,\"helmet_1\":-1,\"bproof_1\":0,\"ears_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"torso_2\":2,\"makeup_3\":0,\"glasses_1\":0,\"shoes_1\":35,\"age_2\":0,\"makeup_1\":0,\"bags_2\":0,\"lipstick_3\":0,\"bags_1\":0,\"ears_1\":-1,\"tshirt_2\":0,\"pants_1\":39,\"skin\":0,\"bproof_2\":0,\"age_1\":0,\"hair_color_1\":12,\"eyebrows_4\":0,\"beard_2\":10,\"beard_3\":0,\"torso_1\":66,\"helmet_2\":0,\"beard_4\":0,\"shoes_2\":1},\"label\":\"Tenue mafia / Petite frappe\"},{\"skin\":{\"mask_1\":99,\"lipstick_4\":0,\"makeup_4\":0,\"eyebrows_2\":0,\"tshirt_1\":15,\"bags_1\":0,\"eyebrows_3\":0,\"beard_1\":5,\"decals_2\":0,\"makeup_2\":0,\"face\":0,\"chain_2\":0,\"hair_color_2\":0,\"sex\":0,\"chain_1\":0,\"eyebrows_1\":0,\"hair_2\":0,\"ears_2\":0,\"hair_1\":21,\"pants_2\":3,\"arms\":17,\"lipstick_2\":0,\"mask_2\":4,\"bproof_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"decals_1\":0,\"torso_2\":3,\"tshirt_2\":0,\"beard_3\":0,\"shoes_1\":35,\"helmet_1\":-1,\"glasses_1\":25,\"glasses_2\":4,\"lipstick_3\":0,\"ears_1\":-1,\"skin\":0,\"age_1\":0,\"pants_1\":39,\"beard_4\":0,\"bags_2\":0,\"helmet_2\":0,\"hair_color_1\":12,\"eyebrows_4\":0,\"beard_2\":10,\"bproof_2\":0,\"shoes_2\":0,\"makeup_3\":0,\"age_2\":0,\"torso_1\":66},\"label\":\"Tenue Mafia\"}]}'),
(114, 'user_helmet', 'steam:11000010032f30a', '{}'),
(115, 'user_ears', 'steam:11000010032f30a', '{}'),
(116, 'user_glasses', 'steam:11000010032f30a', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":25,\"glasses_2\":4}}'),
(117, 'user_mask', 'steam:11000010032f30a', '{\"hasMask\":true,\"skin\":{\"mask_2\":4,\"mask_1\":99}}'),
(118, 'property', 'steam:110000108ddaaf3', '{}'),
(119, 'user_mask', 'steam:110000108ddaaf3', '{}'),
(120, 'user_ears', 'steam:110000108ddaaf3', '{}'),
(121, 'user_glasses', 'steam:110000108ddaaf3', '{}'),
(122, 'user_helmet', 'steam:110000108ddaaf3', '{}'),
(123, 'user_glasses', 'steam:11000013493c4b7', '{}'),
(124, 'user_ears', 'steam:11000013493c4b7', '{}'),
(125, 'user_helmet', 'steam:11000013493c4b7', '{}'),
(126, 'user_mask', 'steam:11000013493c4b7', '{\"hasMask\":true,\"skin\":{\"mask_2\":10,\"mask_1\":52}}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(127, 'property', 'steam:11000013493c4b7', '{\"dressing\":[{\"skin\":{\"lipstick_2\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"torso_2\":0,\"beard_2\":10,\"helmet_1\":51,\"lipstick_3\":0,\"mask_1\":0,\"lipstick_4\":0,\"pants_2\":0,\"shoes_2\":0,\"beard_4\":0,\"face\":0,\"arms\":0,\"glasses_2\":0,\"makeup_4\":0,\"ears_1\":2,\"makeup_1\":0,\"sex\":0,\"tshirt_1\":21,\"bproof_1\":0,\"beard_3\":0,\"hair_1\":38,\"lipstick_1\":0,\"glasses_1\":0,\"hair_color_2\":6,\"chain_2\":0,\"beard_1\":10,\"helmet_2\":0,\"eyebrows_4\":0,\"shoes_1\":24,\"hair_2\":0,\"ears_2\":0,\"pants_1\":28,\"decals_1\":0,\"eyebrows_3\":0,\"age_1\":0,\"torso_1\":115,\"eyebrows_1\":0,\"bags_2\":0,\"bags_1\":0,\"mask_2\":0,\"tshirt_2\":0,\"decals_2\":0,\"chain_1\":0,\"age_2\":0,\"makeup_2\":0,\"hair_color_1\":4,\"skin\":20,\"bproof_2\":0},\"label\":\"Civil\"},{\"skin\":{\"lipstick_2\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"torso_2\":0,\"beard_2\":10,\"helmet_1\":-1,\"lipstick_3\":0,\"mask_1\":0,\"lipstick_4\":0,\"pants_2\":0,\"shoes_2\":0,\"beard_4\":0,\"face\":0,\"arms\":0,\"glasses_2\":0,\"makeup_4\":0,\"ears_1\":2,\"makeup_1\":0,\"sex\":0,\"tshirt_1\":21,\"bproof_1\":0,\"beard_3\":0,\"hair_1\":38,\"lipstick_1\":0,\"glasses_1\":0,\"hair_color_2\":6,\"chain_2\":0,\"beard_1\":10,\"helmet_2\":0,\"eyebrows_4\":0,\"shoes_1\":24,\"hair_2\":0,\"ears_2\":0,\"makeup_2\":0,\"decals_1\":0,\"eyebrows_3\":0,\"age_1\":0,\"torso_1\":115,\"eyebrows_1\":0,\"bags_2\":0,\"bags_1\":0,\"chain_1\":0,\"tshirt_2\":0,\"decals_2\":0,\"pants_1\":28,\"age_2\":0,\"mask_2\":0,\"hair_color_1\":4,\"skin\":20,\"bproof_2\":0},\"label\":\"Civil\"},{\"skin\":{\"lipstick_2\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"torso_2\":0,\"beard_2\":10,\"helmet_1\":-1,\"lipstick_3\":0,\"mask_1\":0,\"lipstick_4\":0,\"pants_2\":0,\"shoes_2\":6,\"beard_4\":0,\"face\":0,\"arms\":0,\"glasses_2\":0,\"makeup_4\":0,\"ears_1\":2,\"makeup_1\":0,\"sex\":0,\"tshirt_1\":94,\"beard_3\":0,\"lipstick_1\":0,\"hair_1\":38,\"chain_2\":0,\"glasses_1\":0,\"hair_color_2\":6,\"decals_2\":0,\"beard_1\":10,\"helmet_2\":0,\"eyebrows_4\":0,\"shoes_1\":14,\"hair_2\":0,\"age_2\":0,\"pants_1\":19,\"decals_1\":0,\"eyebrows_3\":0,\"age_1\":0,\"torso_1\":87,\"makeup_2\":0,\"bags_2\":0,\"bags_1\":0,\"hair_color_1\":4,\"tshirt_2\":0,\"bproof_1\":0,\"chain_1\":0,\"ears_2\":0,\"eyebrows_1\":0,\"mask_2\":0,\"skin\":20,\"bproof_2\":0},\"label\":\"Bloodz\"}]}'),
(128, 'user_mask', 'steam:1100001179c3bb7', '{\"hasMask\":true,\"skin\":{\"mask_1\":116,\"mask_2\":12}}'),
(129, 'user_ears', 'steam:1100001179c3bb7', '{}'),
(130, 'user_helmet', 'steam:1100001179c3bb7', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":22}}'),
(131, 'property', 'steam:1100001179c3bb7', '{\"dressing\":[{\"skin\":{\"face\":8,\"age_2\":0,\"beard_1\":0,\"eyebrows_2\":0,\"age_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"pants_1\":5,\"tshirt_2\":0,\"lipstick_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"tshirt_1\":15,\"skin\":0,\"makeup_1\":0,\"mask_2\":0,\"chain_1\":0,\"ears_1\":-1,\"decals_2\":0,\"makeup_3\":0,\"torso_2\":2,\"makeup_4\":0,\"mask_1\":0,\"eyebrows_3\":0,\"beard_3\":0,\"bags_2\":0,\"beard_4\":0,\"beard_2\":0,\"torso_1\":143,\"hair_1\":3,\"shoes_1\":9,\"sex\":0,\"hair_2\":0,\"eyebrows_1\":0,\"bproof_2\":0,\"hair_color_1\":0,\"glasses_2\":0,\"shoes_2\":5,\"pants_2\":9,\"helmet_1\":-1,\"hair_color_2\":0,\"chain_2\":0,\"makeup_2\":0,\"bags_1\":45,\"helmet_2\":0,\"arms\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"ears_2\":0,\"lipstick_3\":0},\"label\":\"gang\"},{\"skin\":{\"face\":8,\"age_2\":0,\"beard_1\":0,\"eyebrows_2\":0,\"age_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"pants_1\":4,\"tshirt_2\":0,\"lipstick_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"tshirt_1\":23,\"skin\":0,\"makeup_1\":0,\"mask_2\":0,\"chain_1\":0,\"ears_1\":-1,\"decals_2\":0,\"makeup_3\":0,\"torso_2\":0,\"makeup_4\":0,\"mask_1\":0,\"eyebrows_3\":0,\"beard_3\":0,\"bags_2\":0,\"beard_4\":0,\"beard_2\":0,\"torso_1\":115,\"hair_1\":3,\"helmet_1\":-1,\"shoes_1\":12,\"hair_2\":0,\"eyebrows_1\":0,\"hair_color_2\":0,\"sex\":0,\"hair_color_1\":0,\"glasses_2\":0,\"pants_2\":2,\"shoes_2\":1,\"makeup_2\":0,\"chain_2\":0,\"bproof_2\":0,\"bags_1\":0,\"helmet_2\":0,\"arms\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"ears_2\":0,\"lipstick_3\":0},\"label\":\"normal\"},{\"skin\":{\"face\":8,\"age_2\":0,\"beard_1\":1,\"eyebrows_2\":10,\"age_1\":0,\"decals_1\":0,\"sex\":0,\"pants_1\":58,\"tshirt_2\":0,\"lipstick_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"tshirt_1\":15,\"skin\":0,\"makeup_1\":45,\"mask_2\":0,\"chain_1\":0,\"ears_1\":-1,\"decals_2\":0,\"makeup_3\":0,\"torso_2\":10,\"beard_3\":0,\"mask_1\":0,\"eyebrows_3\":0,\"beard_2\":10,\"bags_2\":0,\"beard_4\":0,\"hair_1\":58,\"torso_1\":117,\"makeup_4\":0,\"shoes_1\":42,\"helmet_1\":40,\"hair_2\":0,\"eyebrows_1\":0,\"makeup_2\":10,\"hair_color_1\":30,\"glasses_2\":0,\"shoes_2\":2,\"pants_2\":10,\"bproof_2\":0,\"bags_1\":0,\"chain_2\":0,\"helmet_2\":2,\"lipstick_4\":0,\"glasses_1\":0,\"arms\":1,\"hair_color_2\":29,\"eyebrows_4\":0,\"ears_2\":0,\"lipstick_3\":0},\"label\":\"noel\"},{\"skin\":{\"face\":8,\"age_2\":0,\"beard_1\":1,\"eyebrows_2\":10,\"age_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"pants_1\":10,\"tshirt_2\":0,\"lipstick_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"tshirt_1\":31,\"skin\":0,\"makeup_1\":0,\"mask_2\":0,\"chain_1\":28,\"ears_1\":-1,\"decals_2\":0,\"makeup_3\":0,\"torso_2\":0,\"makeup_4\":0,\"mask_1\":0,\"eyebrows_3\":0,\"beard_3\":0,\"bags_2\":0,\"beard_4\":0,\"beard_2\":10,\"torso_1\":32,\"hair_1\":67,\"shoes_1\":10,\"sex\":0,\"hair_2\":0,\"eyebrows_1\":0,\"hair_color_1\":31,\"glasses_2\":0,\"hair_color_2\":29,\"shoes_2\":0,\"pants_2\":0,\"helmet_1\":-1,\"bproof_2\":0,\"chain_2\":2,\"makeup_2\":10,\"bags_1\":0,\"helmet_2\":0,\"arms\":1,\"glasses_1\":0,\"eyebrows_4\":0,\"ears_2\":0,\"lipstick_3\":0},\"label\":\"chic\"},{\"skin\":{\"face\":8,\"age_2\":0,\"beard_1\":1,\"eyebrows_2\":10,\"age_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"pants_1\":10,\"tshirt_2\":0,\"lipstick_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"tshirt_1\":31,\"skin\":0,\"makeup_1\":0,\"mask_2\":0,\"chain_1\":28,\"ears_1\":-1,\"decals_2\":0,\"makeup_3\":0,\"torso_2\":2,\"beard_3\":0,\"mask_1\":0,\"eyebrows_3\":0,\"hair_color_1\":63,\"bags_2\":0,\"beard_4\":0,\"bags_1\":0,\"torso_1\":72,\"beard_2\":10,\"hair_1\":39,\"shoes_2\":0,\"hair_2\":0,\"eyebrows_1\":0,\"hair_color_2\":38,\"shoes_1\":10,\"makeup_4\":0,\"sex\":0,\"pants_2\":0,\"glasses_2\":0,\"helmet_1\":-1,\"chain_2\":2,\"makeup_2\":10,\"bproof_2\":0,\"helmet_2\":0,\"arms\":1,\"glasses_1\":0,\"eyebrows_4\":0,\"ears_2\":0,\"lipstick_3\":0},\"label\":\"chic manteau\"}]}'),
(132, 'user_glasses', 'steam:1100001179c3bb7', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":0,\"glasses_1\":7}}'),
(133, 'user_ears', 'steam:11000010dd9c7d6', '{\"skin\":{\"ears_2\":0,\"ears_1\":9},\"hasEars\":true}'),
(134, 'user_glasses', 'steam:11000010dd9c7d6', '{}'),
(135, 'user_helmet', 'steam:11000010dd9c7d6', '{}'),
(136, 'user_mask', 'steam:11000010dd9c7d6', '{}'),
(137, 'property', 'steam:11000010dd9c7d6', '{\"weapons\":[{\"ammo\":121,\"name\":\"WEAPON_ASSAULTSMG\"},{\"ammo\":156,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":233,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":250,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":0,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"}],\"dressing\":[{\"label\":\"POLICE\",\"skin\":{\"beard_1\":0,\"beard_3\":0,\"makeup_1\":0,\"hair_color_1\":3,\"face\":0,\"tshirt_2\":1,\"chain_1\":0,\"helmet_1\":-1,\"decals_2\":0,\"sex\":0,\"makeup_2\":0,\"age_1\":0,\"hair_2\":0,\"tshirt_1\":60,\"ears_1\":2,\"mask_1\":0,\"skin\":8,\"pants_1\":25,\"eyebrows_2\":0,\"glasses_1\":4,\"mask_2\":0,\"hair_1\":14,\"beard_2\":0,\"bproof_1\":0,\"glasses_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"torso_1\":55,\"lipstick_4\":0,\"eyebrows_1\":0,\"decals_1\":0,\"lipstick_2\":0,\"shoes_1\":25,\"hair_color_2\":0,\"bags_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"pants_2\":0,\"age_2\":0,\"eyebrows_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"arms\":41,\"ears_2\":0,\"shoes_2\":0,\"makeup_3\":0,\"lipstick_1\":0,\"chain_2\":0,\"bags_1\":0,\"torso_2\":0}},{\"label\":\"Vie de tous les jour \",\"skin\":{\"beard_1\":0,\"lipstick_1\":0,\"makeup_1\":0,\"hair_color_1\":3,\"face\":0,\"tshirt_2\":0,\"chain_1\":0,\"helmet_1\":-1,\"decals_2\":0,\"sex\":0,\"makeup_2\":0,\"age_1\":0,\"hair_2\":0,\"tshirt_1\":5,\"ears_1\":2,\"mask_1\":0,\"skin\":8,\"pants_1\":82,\"mask_2\":0,\"glasses_1\":0,\"eyebrows_2\":0,\"hair_1\":14,\"beard_2\":0,\"bproof_1\":0,\"glasses_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"lipstick_4\":0,\"torso_1\":80,\"decals_1\":0,\"lipstick_2\":0,\"shoes_1\":28,\"hair_color_2\":0,\"bags_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"pants_2\":4,\"eyebrows_4\":0,\"age_2\":0,\"beard_4\":0,\"arms\":43,\"ears_2\":0,\"shoes_2\":0,\"makeup_3\":0,\"chain_2\":0,\"beard_3\":0,\"bags_1\":0,\"torso_2\":0}},{\"label\":\"Soirée\",\"skin\":{\"beard_1\":0,\"beard_3\":0,\"makeup_1\":0,\"hair_color_1\":3,\"face\":0,\"tshirt_2\":0,\"chain_1\":0,\"helmet_1\":-1,\"bproof_1\":0,\"sex\":0,\"torso_1\":35,\"age_1\":0,\"hair_2\":0,\"tshirt_1\":10,\"ears_1\":2,\"mask_1\":0,\"skin\":8,\"age_2\":0,\"eyebrows_2\":0,\"glasses_1\":4,\"mask_2\":0,\"hair_1\":14,\"beard_2\":0,\"decals_2\":0,\"glasses_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"pants_1\":28,\"lipstick_2\":0,\"shoes_1\":23,\"hair_color_2\":0,\"bags_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"decals_1\":0,\"lipstick_1\":0,\"eyebrows_4\":0,\"pants_2\":0,\"beard_4\":0,\"arms\":42,\"ears_2\":0,\"shoes_2\":6,\"makeup_3\":0,\"lipstick_4\":0,\"chain_2\":0,\"bags_1\":0,\"torso_2\":0}}]}'),
(138, 'user_glasses', 'steam:110000103c6f9cc', '{}'),
(139, 'user_mask', 'steam:110000103c6f9cc', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":121}}'),
(140, 'user_helmet', 'steam:110000103c6f9cc', '{}'),
(141, 'property', 'steam:110000103c6f9cc', '{\"dressing\":[{\"skin\":{\"pants_1\":9,\"pants_2\":7,\"glasses_1\":4,\"eyebrows_3\":2,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":3,\"makeup_1\":0,\"helmet_2\":9,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"age_1\":0,\"hair_1\":7,\"mask_2\":0,\"helmet_1\":-1,\"chain_1\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"torso_1\":185,\"beard_3\":3,\"decals_1\":0,\"beard_4\":0,\"hair_color_1\":3,\"bags_1\":0,\"makeup_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"skin\":8,\"eyebrows_2\":10,\"beard_2\":10,\"ears_1\":0,\"eyebrows_1\":4,\"arms\":0,\"decals_2\":0,\"hair_2\":0,\"shoes_1\":25,\"tshirt_1\":23,\"glasses_2\":0,\"bags_2\":0,\"bproof_2\":0,\"face\":2,\"bproof_1\":0},\"label\":\"Civil\"},{\"skin\":{\"pants_1\":40,\"pants_2\":0,\"glasses_1\":4,\"eyebrows_3\":2,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":2,\"makeup_1\":0,\"helmet_2\":0,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":1,\"mask_1\":115,\"lipstick_3\":0,\"age_1\":0,\"hair_1\":1,\"mask_2\":21,\"helmet_1\":-1,\"chain_1\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"torso_1\":143,\"beard_3\":3,\"decals_1\":0,\"beard_4\":0,\"hair_color_1\":29,\"bags_1\":0,\"makeup_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"skin\":8,\"eyebrows_2\":10,\"beard_2\":10,\"ears_1\":0,\"eyebrows_1\":4,\"arms\":0,\"decals_2\":0,\"hair_2\":0,\"shoes_1\":6,\"tshirt_1\":15,\"glasses_2\":0,\"bags_2\":0,\"bproof_2\":0,\"face\":2,\"bproof_1\":0},\"label\":\"Gang\"},{\"skin\":{\"pants_1\":32,\"pants_2\":0,\"glasses_1\":25,\"beard_2\":10,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":5,\"tshirt_1\":15,\"helmet_2\":0,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"age_1\":0,\"skin\":8,\"ears_1\":0,\"face\":2,\"chain_1\":0,\"eyebrows_3\":2,\"mask_2\":0,\"age_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":3,\"decals_1\":0,\"lipstick_4\":0,\"hair_2\":0,\"bags_1\":0,\"eyebrows_1\":4,\"lipstick_1\":0,\"ears_2\":0,\"beard_4\":0,\"eyebrows_2\":10,\"torso_1\":197,\"makeup_1\":0,\"helmet_1\":24,\"arms\":0,\"decals_2\":0,\"hair_color_1\":29,\"shoes_1\":17,\"hair_1\":1,\"glasses_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"bags_2\":0,\"bproof_1\":0},\"label\":\"Noel\"},{\"skin\":{\"pants_1\":40,\"pants_2\":1,\"glasses_1\":4,\"beard_2\":10,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":10,\"tshirt_1\":15,\"helmet_2\":0,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":1,\"mask_1\":115,\"lipstick_3\":0,\"age_1\":0,\"skin\":8,\"ears_1\":0,\"face\":2,\"chain_1\":0,\"eyebrows_3\":2,\"mask_2\":21,\"age_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":3,\"decals_1\":0,\"lipstick_4\":0,\"hair_2\":0,\"bags_1\":0,\"eyebrows_1\":4,\"lipstick_1\":0,\"ears_2\":0,\"beard_4\":0,\"eyebrows_2\":10,\"torso_1\":229,\"makeup_1\":0,\"helmet_1\":-1,\"arms\":0,\"decals_2\":0,\"hair_color_1\":29,\"shoes_1\":6,\"hair_1\":1,\"glasses_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"bags_2\":0,\"bproof_1\":0},\"label\":\"Gang 2\"},{\"skin\":{\"pants_1\":9,\"pants_2\":10,\"glasses_1\":25,\"beard_2\":10,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":23,\"tshirt_1\":15,\"helmet_2\":0,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":24,\"mask_1\":104,\"lipstick_3\":0,\"age_1\":0,\"skin\":8,\"ears_1\":0,\"face\":2,\"chain_1\":0,\"eyebrows_3\":2,\"mask_2\":3,\"age_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":3,\"decals_1\":0,\"lipstick_4\":0,\"hair_2\":0,\"bags_1\":0,\"eyebrows_1\":4,\"lipstick_1\":0,\"ears_2\":0,\"beard_4\":0,\"eyebrows_2\":10,\"torso_1\":248,\"makeup_1\":0,\"helmet_1\":117,\"arms\":96,\"decals_2\":0,\"hair_color_1\":29,\"shoes_1\":73,\"hair_1\":1,\"glasses_2\":4,\"makeup_2\":0,\"bproof_2\":0,\"bags_2\":0,\"bproof_1\":0},\"label\":\"Armé des neige\"},{\"skin\":{\"pants_1\":24,\"pants_2\":1,\"glasses_1\":17,\"eyebrows_3\":2,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":0,\"makeup_1\":0,\"helmet_2\":6,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"age_1\":0,\"hair_1\":1,\"mask_2\":0,\"helmet_1\":61,\"chain_1\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"torso_1\":11,\"beard_3\":3,\"decals_1\":0,\"beard_4\":0,\"hair_color_1\":29,\"bags_1\":0,\"makeup_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"skin\":8,\"eyebrows_2\":10,\"beard_2\":10,\"ears_1\":-1,\"eyebrows_1\":4,\"arms\":4,\"decals_2\":0,\"hair_2\":0,\"shoes_1\":10,\"tshirt_1\":22,\"glasses_2\":7,\"bags_2\":0,\"bproof_2\":0,\"face\":2,\"bproof_1\":0},\"label\":\"Enterement\"},{\"skin\":{\"pants_1\":9,\"pants_2\":7,\"glasses_1\":15,\"eyebrows_3\":2,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":2,\"makeup_1\":0,\"helmet_2\":2,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":121,\"lipstick_3\":0,\"age_1\":0,\"hair_1\":1,\"mask_2\":0,\"helmet_1\":58,\"chain_1\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"torso_1\":242,\"beard_3\":3,\"decals_1\":0,\"beard_4\":0,\"hair_color_1\":29,\"bags_1\":0,\"makeup_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"skin\":8,\"eyebrows_2\":10,\"beard_2\":10,\"ears_1\":-1,\"eyebrows_1\":4,\"arms\":30,\"decals_2\":0,\"hair_2\":0,\"shoes_1\":25,\"tshirt_1\":58,\"glasses_2\":1,\"bags_2\":0,\"bproof_2\":0,\"face\":2,\"bproof_1\":0},\"label\":\"Sécurity\"},{\"skin\":{\"pants_1\":54,\"pants_2\":2,\"glasses_1\":17,\"lipstick_4\":0,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":0,\"tshirt_1\":15,\"helmet_2\":0,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"age_1\":0,\"hair_1\":1,\"ears_1\":-1,\"helmet_1\":-1,\"torso_1\":15,\"eyebrows_3\":2,\"age_2\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"chain_1\":0,\"beard_3\":3,\"decals_1\":0,\"beard_4\":0,\"hair_color_1\":29,\"mask_2\":0,\"arms\":15,\"lipstick_1\":0,\"bags_1\":0,\"ears_2\":0,\"eyebrows_2\":10,\"skin\":8,\"beard_2\":10,\"makeup_1\":0,\"eyebrows_1\":4,\"decals_2\":0,\"hair_2\":0,\"shoes_1\":16,\"bags_2\":0,\"glasses_2\":5,\"makeup_2\":0,\"bproof_2\":0,\"face\":2,\"bproof_1\":0},\"label\":\"Pla\"},{\"skin\":{\"pants_1\":76,\"pants_2\":2,\"glasses_1\":18,\"beard_2\":10,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":6,\"tshirt_1\":15,\"helmet_2\":0,\"sex\":0,\"chain_2\":0,\"lipstick_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":0,\"lipstick_3\":0,\"age_1\":0,\"hair_1\":1,\"makeup_1\":0,\"face\":2,\"bags_1\":0,\"ears_1\":-1,\"eyebrows_3\":2,\"age_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":3,\"decals_1\":0,\"lipstick_4\":0,\"hair_2\":0,\"mask_2\":0,\"makeup_2\":0,\"lipstick_1\":0,\"ears_2\":0,\"skin\":8,\"eyebrows_2\":10,\"torso_1\":78,\"chain_1\":51,\"eyebrows_1\":4,\"helmet_1\":-1,\"decals_2\":0,\"hair_color_1\":29,\"shoes_1\":7,\"arms\":0,\"glasses_2\":2,\"bags_2\":0,\"bproof_2\":0,\"bproof_1\":0,\"beard_4\":0},\"label\":\"Civil riche\"},{\"skin\":{\"pants_1\":87,\"pants_2\":3,\"glasses_1\":5,\"lipstick_4\":0,\"hair_color_2\":0,\"tshirt_2\":0,\"torso_2\":4,\"tshirt_1\":130,\"helmet_2\":3,\"sex\":0,\"chain_2\":0,\"bags_2\":0,\"beard_1\":18,\"makeup_4\":0,\"shoes_2\":0,\"mask_1\":116,\"lipstick_3\":0,\"age_1\":0,\"beard_4\":0,\"lipstick_2\":0,\"helmet_1\":105,\"torso_1\":238,\"skin\":8,\"bproof_1\":0,\"age_2\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":3,\"decals_1\":0,\"eyebrows_3\":2,\"hair_2\":0,\"ears_2\":0,\"eyebrows_1\":4,\"lipstick_1\":0,\"arms\":2,\"mask_2\":13,\"eyebrows_2\":10,\"bags_1\":0,\"makeup_1\":0,\"hair_color_1\":29,\"hair_1\":1,\"decals_2\":0,\"face\":2,\"shoes_1\":35,\"chain_1\":112,\"glasses_2\":7,\"beard_2\":10,\"bproof_2\":0,\"makeup_2\":0,\"ears_1\":-1},\"label\":\"armée\"}],\"weapons\":[{\"name\":\"WEAPON_HEAVYSNIPER\",\"ammo\":239},{\"ammo\":0,\"name\":\"WEAPON_CARBINERIFLE\"}]}'),
(142, 'user_ears', 'steam:110000103c6f9cc', '{\"skin\":{\"ears_1\":-1,\"ears_2\":0},\"hasEars\":true}'),
(143, 'user_ears', 'steam:110000132b7e237', '{}'),
(144, 'user_glasses', 'steam:110000132b7e237', '{}'),
(145, 'user_mask', 'steam:110000132b7e237', '{}'),
(146, 'user_helmet', 'steam:110000132b7e237', '{}'),
(147, 'property', 'steam:110000132b7e237', '{}'),
(148, 'user_helmet', 'steam:1100001350a83ef', '{}'),
(149, 'property', 'steam:1100001350a83ef', '{}'),
(150, 'user_ears', 'steam:1100001350a83ef', '{}'),
(151, 'user_glasses', 'steam:1100001350a83ef', '{}'),
(152, 'user_mask', 'steam:1100001350a83ef', '{}'),
(153, 'user_glasses', 'steam:110000117825a22', '{}'),
(154, 'user_helmet', 'steam:110000117825a22', '{}'),
(155, 'property', 'steam:110000117825a22', '{}'),
(156, 'user_mask', 'steam:110000117825a22', '{}'),
(157, 'user_ears', 'steam:110000117825a22', '{}'),
(158, 'user_helmet', 'steam:110000135b8dcac', '{}'),
(159, 'property', 'steam:110000135b8dcac', '{}'),
(160, 'user_glasses', 'steam:110000135b8dcac', '{}'),
(161, 'user_ears', 'steam:110000135b8dcac', '{}'),
(162, 'user_mask', 'steam:110000135b8dcac', '{}'),
(163, 'society_mafia', NULL, '{}'),
(164, 'society_gang', NULL, '{}'),
(165, 'user_glasses', 'steam:11000011b8aadb1', '{}'),
(166, 'user_ears', 'steam:11000011b8aadb1', '{}'),
(167, 'user_helmet', 'steam:11000011b8aadb1', '{}'),
(168, 'property', 'steam:11000011b8aadb1', '{\"dressing\":[{\"skin\":{\"lipstick_4\":0,\"glasses_1\":0,\"shoes_1\":9,\"face\":0,\"beard_3\":0,\"arms\":0,\"helmet_2\":5,\"beard_1\":12,\"hair_color_1\":0,\"pants_1\":5,\"mask_2\":12,\"beard_2\":7,\"tshirt_2\":0,\"torso_2\":2,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":9,\"tshirt_1\":15,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":44,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"helmet_1\":14,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":18,\"makeup_3\":0,\"age_2\":0,\"decals_1\":0,\"sex\":0,\"hair_color_2\":0,\"decals_2\":0,\"mask_1\":116,\"hair_2\":0,\"lipstick_1\":0,\"bproof_1\":0,\"eyebrows_2\":10,\"lipstick_3\":0,\"shoes_2\":5,\"bproof_2\":0,\"torso_1\":143,\"glasses_2\":0,\"chain_2\":0,\"ears_2\":0,\"eyebrows_4\":0,\"eyebrows_1\":12},\"label\":\"gang \"},{\"skin\":{\"lipstick_4\":0,\"bproof_1\":0,\"shoes_1\":8,\"face\":0,\"beard_3\":0,\"arms\":0,\"helmet_2\":3,\"beard_1\":12,\"hair_color_1\":0,\"pants_1\":4,\"mask_2\":12,\"beard_2\":7,\"tshirt_2\":0,\"torso_2\":7,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":1,\"tshirt_1\":57,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":41,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"helmet_1\":96,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":18,\"lipstick_1\":0,\"age_2\":0,\"decals_1\":0,\"sex\":0,\"hair_color_2\":0,\"decals_2\":0,\"mask_1\":116,\"glasses_1\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"eyebrows_2\":10,\"lipstick_3\":0,\"shoes_2\":0,\"bproof_2\":0,\"torso_1\":152,\"eyebrows_1\":12,\"chain_2\":0,\"ears_2\":0,\"makeup_3\":0,\"hair_2\":0},\"label\":\"moto\"},{\"skin\":{\"lipstick_4\":0,\"bproof_1\":0,\"shoes_1\":9,\"face\":0,\"beard_3\":0,\"arms\":0,\"helmet_2\":5,\"beard_1\":12,\"hair_color_1\":0,\"pants_1\":5,\"mask_2\":12,\"beard_2\":7,\"tshirt_2\":0,\"torso_2\":2,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":9,\"tshirt_1\":11,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":44,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"helmet_1\":-1,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":18,\"lipstick_1\":0,\"age_2\":0,\"decals_1\":0,\"sex\":0,\"hair_color_2\":0,\"decals_2\":0,\"mask_1\":95,\"glasses_1\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"eyebrows_2\":10,\"lipstick_3\":0,\"shoes_2\":5,\"bproof_2\":0,\"torso_1\":143,\"eyebrows_1\":12,\"chain_2\":0,\"ears_2\":0,\"makeup_3\":0,\"hair_2\":0},\"label\":\"gang allouwine \"},{\"skin\":{\"shoes\":9,\"glasses_1\":0,\"shoes_1\":8,\"face\":0,\"beard_3\":0,\"arms\":0,\"helmet_2\":1,\"beard_1\":12,\"hair_color_1\":0,\"pants_1\":27,\"mask_2\":12,\"beard_2\":7,\"tshirt_2\":0,\"torso_2\":8,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":11,\"tshirt_1\":57,\"makeup_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"eyebrows_2\":10,\"bproof_2\":0,\"ears_1\":-1,\"hair_1\":18,\"glasses_2\":0,\"age_2\":0,\"sex\":0,\"decals_1\":0,\"hair_color_2\":0,\"eyebrows_1\":12,\"decals_2\":0,\"mask_1\":116,\"helmet_1\":97,\"chain_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"shoes_2\":0,\"lipstick_4\":0,\"torso_1\":197,\"makeup_3\":0,\"chain_2\":0,\"ears_2\":0,\"lipstick_1\":0,\"bags_1\":41},\"label\":\"noel\"},{\"skin\":{\"shoes\":9,\"glasses_1\":0,\"shoes_1\":8,\"face\":0,\"beard_3\":0,\"arms\":0,\"helmet_2\":3,\"beard_1\":12,\"hair_color_1\":0,\"pants_1\":26,\"mask_2\":0,\"beard_2\":7,\"tshirt_2\":0,\"torso_2\":6,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":4,\"tshirt_1\":23,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":41,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"eyebrows_2\":10,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":18,\"glasses_2\":0,\"age_2\":0,\"lipstick_1\":0,\"decals_1\":0,\"hair_color_2\":0,\"hair_2\":0,\"decals_2\":0,\"mask_1\":0,\"sex\":0,\"bproof_1\":0,\"ears_2\":0,\"bproof_2\":0,\"lipstick_3\":0,\"shoes_2\":12,\"helmet_1\":96,\"torso_1\":127,\"lipstick_4\":0,\"chain_2\":0,\"eyebrows_4\":0,\"eyebrows_1\":12,\"makeup_3\":0},\"label\":\"normal\"}]}'),
(169, 'user_mask', 'steam:11000011b8aadb1', '{\"skin\":{\"mask_1\":105,\"mask_2\":7},\"hasMask\":true}'),
(170, 'organisation_cartel', NULL, '{\"weapons\":[{\"count\":2,\"name\":\"WEAPON_HEAVYSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":0,\"name\":\"WEAPON_MICROSMG\"},{\"count\":0,\"name\":\"WEAPON_MARKSMANRIFLE\"},{\"count\":0,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":1,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"count\":3,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"count\":0,\"name\":\"WEAPON_MOLOTOV\"},{\"count\":1,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"count\":0,\"name\":\"WEAPON_KNIFE\"},{\"count\":0,\"name\":\"WEAPON_BAT\"},{\"count\":0,\"name\":\"WEAPON_CROWBAR\"},{\"count\":1,\"name\":\"WEAPON_REVOLVER\"},{\"count\":1,\"name\":\"WEAPON_STUNGUN\"},{\"count\":0,\"name\":\"WEAPON_VINTAGEPISTOL\"}]}'),
(171, 'organisation_mafia', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_APPISTOL\"},{\"count\":0,\"name\":\"WEAPON_MICROSMG\"},{\"count\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"count\":0,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_BAT\"},{\"count\":0,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"count\":0,\"name\":\"WEAPON_MACHETE\"},{\"count\":0,\"name\":\"WEAPON_SMG\"},{\"count\":0,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"count\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":6,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":0,\"name\":\"WEAPON_STUNGUN\"},{\"count\":2,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_HEAVYSNIPER\"},{\"count\":0,\"name\":\"WEAPON_HOMINGLAUNCHER\"},{\"count\":0,\"name\":\"WEAPON_COMPACTLAUNCHER\"},{\"count\":0,\"name\":\"WEAPON_GUSENBERG\"},{\"count\":0,\"name\":\"WEAPON_HEAVYSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_BZGAS\"},{\"count\":0,\"name\":\"WEAPON_MOLOTOV\"},{\"count\":2,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"count\":0,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"count\":0,\"name\":\"WEAPON_COMPACTRIFLE\"},{\"count\":0,\"name\":\"WEAPON_MG\"},{\"count\":2,\"name\":\"WEAPON_PIPEBOMB\"},{\"count\":0,\"name\":\"WEAPON_STICKYBOMB\"},{\"count\":0,\"name\":\"WEAPON_COMBATPDW\"}]}'),
(172, 'organisation_gang', NULL, '{\"weapons\":[{\"name\":\"WEAPON_COMBATPISTOL\",\"count\":0},{\"name\":\"WEAPON_CARBINERIFLE\",\"count\":2},{\"name\":\"WEAPON_BAT\",\"count\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"count\":0},{\"name\":\"WEAPON_ASSAULTSMG\",\"count\":1},{\"name\":\"WEAPON_STUNGUN\",\"count\":0},{\"name\":\"WEAPON_APPISTOL\",\"count\":1},{\"name\":\"WEAPON_MICROSMG\",\"count\":0},{\"name\":\"WEAPON_SMG\",\"count\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"count\":1},{\"name\":\"WEAPON_HEAVYSNIPER\",\"count\":0},{\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"count\":2},{\"name\":\"WEAPON_HEAVYPISTOL\",\"count\":1},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"count\":1},{\"name\":\"WEAPON_PISTOL\",\"count\":0},{\"name\":\"WEAPON_MARKSMANRIFLE\",\"count\":0},{\"name\":\"WEAPON_MACHETE\",\"count\":0},{\"name\":\"WEAPON_PISTOL50\",\"count\":0},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"count\":3},{\"name\":\"WEAPON_MG\",\"count\":2},{\"name\":\"WEAPON_COMBATMG\",\"count\":1},{\"name\":\"WEAPON_SPECIALCARBINE\",\"count\":1},{\"name\":\"WEAPON_MOLOTOV\",\"count\":1},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":0},{\"name\":\"GADGET_PARACHUTE\",\"count\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"count\":0},{\"name\":\"WEAPON_COMBATPDW\",\"count\":0},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":0},{\"name\":\"WEAPON_COMPACTRIFLE\",\"count\":0},{\"name\":\"WEAPON_ASSAULTRIFLE_MK2\",\"count\":0},{\"name\":\"WEAPON_COMBATMG_MK2\",\"count\":0},{\"name\":\"WEAPON_SMG_MK2\",\"count\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"count\":1},{\"name\":\"WEAPON_STICKYBOMB\",\"count\":0},{\"name\":\"WEAPON_KNUCKLE\",\"count\":0}]}'),
(173, 'user_helmet', 'steam:110000110c6f75a', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":9,\"helmet_1\":91}}'),
(174, 'user_glasses', 'steam:110000110c6f75a', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":0,\"glasses_1\":5}}'),
(175, 'user_mask', 'steam:110000110c6f75a', '{\"hasMask\":true,\"skin\":{\"mask_2\":9,\"mask_1\":110}}'),
(176, 'property', 'steam:110000110c6f75a', '{\"dressing\":[{\"label\":\"costard\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":27,\"mask_1\":0,\"sex\":0,\"torso_1\":31,\"eyebrows_4\":0,\"eyebrows_2\":0,\"skin\":5,\"makeup_2\":0,\"pants_1\":24,\"glasses_2\":0,\"hair_color_2\":13,\"decals_1\":1,\"eyebrows_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":0,\"hair_color_1\":13,\"makeup_3\":0,\"helmet_2\":0,\"makeup_1\":0,\"tshirt_1\":31,\"glasses_1\":0,\"bags_1\":0,\"lipstick_2\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"lipstick_1\":0,\"hair_1\":19,\"beard_1\":10,\"eyebrows_3\":0,\"shoes_1\":10}},{\"label\":\"GANG\",\"skin\":{\"mask_2\":0,\"sex\":0,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":33,\"mask_1\":0,\"lipstick_2\":0,\"torso_1\":129,\"eyebrows_4\":0,\"beard_2\":5,\"skin\":5,\"makeup_2\":0,\"pants_1\":31,\"makeup_1\":0,\"hair_color_2\":13,\"eyebrows_2\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":0,\"hair_color_1\":13,\"makeup_3\":0,\"helmet_2\":0,\"lipstick_1\":0,\"tshirt_1\":55,\"glasses_1\":5,\"bags_1\":0,\"decals_1\":1,\"shoes_1\":24,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"glasses_2\":0,\"hair_1\":19,\"beard_1\":10,\"eyebrows_3\":0,\"decals_2\":0}},{\"label\":\"Braquage\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":33,\"mask_1\":0,\"lipstick_2\":0,\"torso_1\":49,\"eyebrows_4\":0,\"glasses_2\":0,\"skin\":5,\"decals_1\":1,\"pants_1\":31,\"eyebrows_1\":0,\"hair_color_2\":13,\"lipstick_1\":0,\"shoes_2\":0,\"torso_2\":0,\"hair_color_1\":13,\"lipstick_4\":0,\"beard_4\":0,\"age_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"sex\":0,\"makeup_1\":0,\"glasses_1\":0,\"tshirt_1\":128,\"bags_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"makeup_2\":0,\"hair_1\":19,\"beard_1\":10,\"eyebrows_3\":0,\"shoes_1\":25}},{\"label\":\"plage\",\"skin\":{\"mask_2\":0,\"sex\":0,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":15,\"mask_1\":0,\"lipstick_2\":0,\"torso_1\":15,\"eyebrows_4\":0,\"beard_2\":5,\"skin\":5,\"makeup_2\":0,\"pants_1\":16,\"makeup_1\":0,\"hair_color_2\":13,\"eyebrows_2\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":0,\"hair_color_1\":13,\"makeup_3\":0,\"helmet_2\":0,\"lipstick_1\":0,\"tshirt_1\":15,\"glasses_1\":0,\"bags_1\":0,\"decals_1\":1,\"shoes_1\":5,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":3,\"glasses_2\":0,\"hair_1\":19,\"beard_1\":10,\"eyebrows_3\":0,\"decals_2\":0}},{\"label\":\"civil\",\"skin\":{\"mask_2\":0,\"beard_2\":5,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":0,\"face\":12,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":1,\"mask_1\":0,\"lipstick_2\":0,\"torso_1\":41,\"eyebrows_4\":0,\"glasses_2\":0,\"skin\":5,\"makeup_1\":0,\"pants_1\":15,\"eyebrows_1\":0,\"hair_color_2\":13,\"lipstick_1\":0,\"shoes_2\":0,\"torso_2\":0,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":0,\"sex\":0,\"makeup_3\":0,\"helmet_2\":0,\"makeup_2\":0,\"tshirt_1\":130,\"glasses_1\":0,\"bags_1\":0,\"decals_1\":1,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":6,\"hair_color_1\":13,\"hair_1\":19,\"beard_1\":10,\"eyebrows_3\":0,\"shoes_1\":5}},{\"label\":\"calvin\",\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":4,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"lipstick_1\":0,\"mask_1\":0,\"sex\":0,\"torso_1\":14,\"eyebrows_4\":0,\"glasses_2\":0,\"skin\":2,\"hair_color_1\":19,\"pants_1\":1,\"eyebrows_1\":0,\"hair_color_2\":0,\"decals_1\":0,\"shoes_2\":0,\"torso_2\":9,\"lipstick_4\":0,\"age_1\":0,\"beard_4\":0,\"lipstick_2\":0,\"makeup_3\":0,\"helmet_2\":1,\"tshirt_1\":15,\"bags_1\":0,\"glasses_1\":0,\"decals_2\":0,\"makeup_1\":0,\"shoes_1\":6,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"helmet_1\":3,\"hair_1\":8,\"beard_1\":2,\"eyebrows_3\":0,\"arms\":1}},{\"label\":\"bloods\",\"skin\":{\"mask_2\":0,\"sex\":0,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"beard_3\":0,\"face\":4,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":1,\"mask_1\":0,\"makeup_2\":0,\"torso_1\":87,\"eyebrows_4\":0,\"beard_2\":10,\"skin\":2,\"torso_2\":0,\"pants_1\":19,\"makeup_1\":0,\"eyebrows_1\":0,\"hair_color_2\":0,\"hair_color_1\":19,\"shoes_2\":6,\"lipstick_1\":0,\"lipstick_4\":0,\"beard_4\":0,\"age_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"glasses_2\":0,\"tshirt_1\":24,\"glasses_1\":0,\"bags_1\":0,\"shoes_1\":14,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"decals_1\":1,\"hair_1\":8,\"beard_1\":2,\"eyebrows_3\":0,\"bproof_1\":0}},{\"label\":\"hiver\",\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":4,\"chain_1\":0,\"decals_1\":1,\"hair_2\":0,\"arms\":12,\"mask_1\":0,\"sex\":0,\"torso_1\":51,\"eyebrows_4\":0,\"glasses_2\":1,\"skin\":2,\"torso_2\":2,\"pants_1\":24,\"age_1\":0,\"hair_color_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"shoes_2\":2,\"hair_color_1\":19,\"lipstick_4\":0,\"beard_4\":0,\"lipstick_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"makeup_1\":0,\"tshirt_1\":15,\"glasses_1\":0,\"bags_1\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"pants_2\":6,\"helmet_1\":-1,\"hair_1\":8,\"beard_1\":2,\"eyebrows_3\":0,\"shoes_1\":7}}],\"weapons\":[{\"name\":\"WEAPON_HATCHET\",\"ammo\":0},{\"name\":\"WEAPON_SMG\",\"ammo\":250},{\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"ammo\":250}]}'),
(177, 'user_ears', 'steam:110000110c6f75a', '{\"hasEars\":true,\"skin\":{\"ears_2\":0,\"ears_1\":0}}'),
(178, 'user_helmet', 'steam:11000011555ac07', '{\"skin\":{\"helmet_1\":14,\"helmet_2\":1},\"hasHelmet\":true}'),
(179, 'user_glasses', 'steam:11000011555ac07', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":3,\"glasses_1\":0}}'),
(180, 'user_mask', 'steam:11000011555ac07', '{\"skin\":{\"mask_2\":1,\"mask_1\":51},\"hasMask\":true}'),
(181, 'property', 'steam:11000011555ac07', '{\"dressing\":[{\"skin\":{\"lipstick_4\":0,\"glasses_1\":7,\"shoes_1\":9,\"face\":2,\"beard_3\":0,\"arms\":4,\"helmet_2\":1,\"beard_1\":7,\"hair_color_1\":0,\"pants_1\":5,\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"torso_2\":9,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":2,\"tshirt_1\":15,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"eyebrows_1\":0,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":2,\"makeup_3\":0,\"age_2\":0,\"decals_1\":0,\"hair_color_2\":0,\"glasses_2\":3,\"decals_2\":0,\"mask_1\":0,\"helmet_1\":-1,\"bproof_1\":0,\"eyebrows_2\":0,\"bproof_2\":0,\"lipstick_3\":0,\"shoes_2\":2,\"eyebrows_4\":0,\"torso_1\":143,\"lipstick_1\":0,\"chain_2\":0,\"ears_2\":0,\"sex\":0,\"hair_2\":0},\"label\":\"Gang\"},{\"skin\":{\"lipstick_4\":0,\"glasses_1\":0,\"shoes_1\":27,\"face\":2,\"beard_3\":0,\"arms\":1,\"helmet_2\":0,\"beard_1\":7,\"hair_color_1\":0,\"pants_1\":9,\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"torso_2\":3,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":11,\"tshirt_1\":15,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":0,\"eyebrows_1\":0,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":2,\"makeup_3\":0,\"age_2\":0,\"decals_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"sex\":0,\"mask_1\":0,\"helmet_1\":2,\"decals_2\":0,\"bproof_1\":0,\"eyebrows_2\":0,\"lipstick_3\":0,\"shoes_2\":0,\"bproof_2\":0,\"torso_1\":139,\"glasses_2\":0,\"chain_2\":0,\"eyebrows_4\":0,\"hair_2\":0,\"ears_2\":0},\"label\":\"Army\"},{\"skin\":{\"lipstick_4\":0,\"glasses_1\":0,\"shoes_1\":27,\"decals_2\":0,\"beard_3\":36,\"arms\":17,\"helmet_2\":0,\"beard_1\":7,\"hair_color_1\":36,\"pants_1\":9,\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"torso_2\":3,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":7,\"tshirt_1\":15,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":36,\"eyebrows_1\":0,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":14,\"glasses_2\":0,\"age_2\":0,\"decals_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"sex\":0,\"mask_1\":0,\"helmet_1\":-1,\"bproof_1\":0,\"eyebrows_2\":10,\"bproof_2\":0,\"lipstick_3\":0,\"shoes_2\":0,\"hair_2\":0,\"torso_1\":139,\"makeup_3\":0,\"chain_2\":0,\"eyebrows_4\":0,\"face\":2,\"ears_2\":0},\"label\":\"Mecano\"},{\"skin\":{\"lipstick_4\":0,\"glasses_1\":7,\"shoes_1\":9,\"face\":2,\"beard_3\":47,\"arms\":4,\"helmet_2\":1,\"beard_1\":7,\"hair_color_1\":47,\"pants_1\":5,\"mask_2\":1,\"beard_2\":10,\"tshirt_2\":0,\"torso_2\":9,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":2,\"tshirt_1\":15,\"makeup_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":36,\"helmet_1\":14,\"chain_1\":0,\"ears_1\":-1,\"hair_1\":11,\"makeup_3\":0,\"age_2\":0,\"decals_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"hair_2\":0,\"mask_1\":51,\"glasses_2\":3,\"sex\":0,\"bproof_1\":0,\"eyebrows_2\":10,\"lipstick_3\":0,\"shoes_2\":2,\"bproof_2\":0,\"torso_1\":143,\"eyebrows_1\":0,\"chain_2\":0,\"eyebrows_4\":0,\"ears_2\":0,\"decals_2\":0},\"label\":\"Voleur\"},{\"skin\":{\"lipstick_4\":0,\"glasses_1\":5,\"shoes_1\":4,\"face\":2,\"beard_3\":29,\"arms\":15,\"helmet_2\":0,\"beard_1\":11,\"hair_color_1\":29,\"pants_1\":1,\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"torso_2\":0,\"makeup_4\":0,\"beard_4\":0,\"age_1\":0,\"pants_2\":2,\"tshirt_1\":111,\"makeup_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"bags_2\":0,\"makeup_1\":0,\"skin\":4,\"eyebrows_3\":29,\"eyebrows_2\":10,\"bproof_2\":0,\"ears_1\":-1,\"hair_1\":21,\"lipstick_1\":0,\"age_2\":0,\"decals_1\":0,\"hair_color_2\":0,\"chain_1\":0,\"decals_2\":0,\"mask_1\":0,\"helmet_1\":-1,\"sex\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"lipstick_3\":0,\"shoes_2\":2,\"glasses_2\":0,\"torso_1\":5,\"eyebrows_1\":0,\"chain_2\":0,\"ears_2\":0,\"makeup_3\":0,\"bags_1\":0},\"label\":\"Dom Toretto\"}]}'),
(182, 'user_ears', 'steam:11000011555ac07', '{\"hasEars\":true,\"skin\":{\"ears_1\":-1,\"ears_2\":0}}'),
(183, 'user_ears', 'steam:11000011c0b0ace', '{}'),
(184, 'user_glasses', 'steam:11000011c0b0ace', '{}'),
(185, 'user_helmet', 'steam:11000011c0b0ace', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":51}}'),
(186, 'user_mask', 'steam:11000011c0b0ace', '{}'),
(187, 'property', 'steam:11000011c0b0ace', '{\"dressing\":[{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":58,\"chain_2\":0,\"age_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"beard_3\":3,\"face\":0,\"chain_1\":0,\"decals_1\":8,\"hair_2\":0,\"arms\":41,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":2,\"eyebrows_4\":0,\"lipstick_1\":0,\"skin\":5,\"hair_color_2\":0,\"bags_1\":0,\"makeup_2\":0,\"torso_1\":50,\"lipstick_2\":0,\"pants_1\":25,\"lipstick_4\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"beard_4\":0,\"makeup_1\":0,\"shoes_2\":0,\"helmet_2\":0,\"decals_2\":3,\"bags_2\":0,\"glasses_1\":0,\"hair_color_1\":15,\"sex\":0,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"shoes_1\":25,\"hair_1\":11,\"beard_1\":16,\"eyebrows_3\":0,\"makeup_4\":0},\"label\":\"Police Hiver\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":17,\"chain_2\":0,\"age_2\":0,\"helmet_1\":4,\"lipstick_4\":0,\"beard_3\":3,\"face\":0,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":0,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":2,\"eyebrows_4\":0,\"torso_1\":167,\"skin\":5,\"lipstick_1\":0,\"pants_1\":26,\"makeup_2\":0,\"bproof_1\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"makeup_1\":0,\"makeup_3\":0,\"beard_4\":0,\"hair_color_1\":15,\"shoes_2\":3,\"eyebrows_1\":0,\"decals_2\":0,\"bags_2\":0,\"glasses_1\":4,\"bags_1\":0,\"shoes_1\":32,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"sex\":0,\"hair_1\":11,\"beard_1\":16,\"eyebrows_3\":0,\"decals_1\":0},\"label\":\"Civil\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":3,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":0,\"mask_1\":0,\"eyebrows_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"lipstick_1\":0,\"skin\":5,\"hair_color_1\":15,\"bags_1\":0,\"helmet_1\":51,\"ears_1\":2,\"lipstick_2\":0,\"tshirt_1\":17,\"torso_1\":167,\"eyebrows_1\":0,\"hair_color_2\":0,\"beard_4\":0,\"shoes_2\":3,\"makeup_3\":0,\"helmet_2\":0,\"pants_1\":26,\"makeup_4\":0,\"glasses_1\":4,\"sex\":0,\"lipstick_4\":0,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":3,\"pants_2\":0,\"makeup_1\":0,\"hair_1\":11,\"beard_1\":16,\"eyebrows_3\":0,\"shoes_1\":32},\"label\":\"zd\"}]}'),
(188, 'user_glasses', 'steam:11000011c7b5be5', '{}'),
(189, 'user_helmet', 'steam:11000011c7b5be5', '{}'),
(190, 'property', 'steam:11000011c7b5be5', '{\"dressing\":[{\"label\":\"Civil 1\",\"skin\":{\"hair_color_2\":0,\"beard_4\":3,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":1,\"beard_2\":10,\"pants_1\":4,\"eyebrows_1\":0,\"glasses_1\":3,\"bags_1\":0,\"skin\":7,\"shoes_1\":1,\"bproof_1\":0,\"tshirt_1\":12,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"sex\":0,\"face\":4,\"ears_1\":1,\"decals_2\":0,\"lipstick_2\":0,\"decals_1\":0,\"lipstick_3\":0,\"arms\":20,\"makeup_1\":0,\"ears_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"tshirt_2\":0,\"mask_2\":0,\"bags_2\":0,\"hair_2\":0,\"torso_1\":4,\"glasses_2\":0,\"hair_1\":37,\"hair_color_1\":0,\"helmet_1\":12,\"mask_1\":0,\"shoes_2\":0,\"makeup_4\":0}}],\"weapons\":[{\"ammo\":1,\"name\":\"WEAPON_BALL\"},{\"ammo\":249,\"name\":\"WEAPON_COMBATPISTOL\"},{\"ammo\":250,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"ammo\":250,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":10,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"ammo\":250,\"name\":\"WEAPON_ASSAULTSMG\"},{\"ammo\":250,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":250,\"name\":\"WEAPON_COMBATPISTOL\"},{\"ammo\":0,\"name\":\"WEAPON_APPISTOL\"},{\"ammo\":242,\"name\":\"WEAPON_ASSAULTSMG\"},{\"ammo\":242,\"name\":\"WEAPON_CARBINERIFLE\"},{\"ammo\":248,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"ammo\":250,\"name\":\"WEAPON_SNIPERRIFLE\"}]}'),
(191, 'user_mask', 'steam:11000011c7b5be5', '{}'),
(192, 'user_ears', 'steam:11000011c7b5be5', '{}'),
(193, 'property', 'steam:110000111bfcd46', '{}'),
(194, 'user_glasses', 'steam:110000111bfcd46', '{}'),
(195, 'user_mask', 'steam:110000111bfcd46', '{}'),
(196, 'user_ears', 'steam:110000111bfcd46', '{}'),
(197, 'user_helmet', 'steam:110000111bfcd46', '{}'),
(198, 'user_ears', 'steam:11000011ce402c4', '{}'),
(199, 'user_helmet', 'steam:11000011ce402c4', '{}'),
(200, 'user_glasses', 'steam:11000011ce402c4', '{}'),
(201, 'user_mask', 'steam:11000011ce402c4', '{\"skin\":{\"mask_1\":51,\"mask_2\":6},\"hasMask\":true}'),
(202, 'property', 'steam:11000011ce402c4', '{\"dressing\":[{\"label\":\"CHIC\",\"skin\":{\"makeup_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":14,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":1,\"glasses_1\":5,\"bags_1\":0,\"skin\":12,\"shoes_1\":20,\"bproof_1\":0,\"tshirt_1\":74,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":4,\"pants_1\":28,\"ears_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":20,\"makeup_1\":60,\"bags_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"face\":12,\"tshirt_2\":3,\"mask_2\":0,\"hair_1\":13,\"hair_color_2\":47,\"eyebrows_2\":10,\"mask_1\":0,\"torso_1\":32,\"sex\":0,\"helmet_1\":-1,\"hair_color_1\":30,\"shoes_2\":7,\"makeup_4\":29}},{\"label\":\"Gang\",\"skin\":{\"makeup_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":3,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":3,\"beard_2\":10,\"ears_2\":0,\"eyebrows_1\":30,\"glasses_1\":8,\"bags_1\":45,\"skin\":12,\"shoes_1\":9,\"bproof_1\":0,\"tshirt_1\":15,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"sex\":0,\"hair_color_1\":0,\"ears_1\":0,\"mask_1\":51,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":50,\"makeup_1\":56,\"bags_2\":0,\"helmet_2\":2,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"hair_1\":15,\"tshirt_2\":0,\"mask_2\":6,\"face\":12,\"hair_color_2\":0,\"eyebrows_2\":10,\"glasses_2\":0,\"decals_2\":0,\"torso_1\":126,\"helmet_1\":59,\"pants_1\":81,\"shoes_2\":5,\"makeup_4\":29}}]}'),
(203, 'user_mask', 'steam:11000011acec85a', '{\"skin\":{\"mask_2\":0,\"mask_1\":54},\"hasMask\":true}'),
(204, 'user_helmet', 'steam:11000011acec85a', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":13,\"helmet_1\":96}}'),
(205, 'user_glasses', 'steam:11000011acec85a', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(206, 'property', 'steam:11000011acec85a', '{\"dressing\":[{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":15,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":44,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":5,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"eyebrows_4\":0,\"helmet_1\":-1,\"skin\":11,\"lipstick_1\":0,\"pants_1\":16,\"bags_2\":0,\"decals_2\":0,\"bproof_1\":0,\"lipstick_2\":0,\"torso_1\":237,\"shoes_2\":0,\"eyebrows_1\":2,\"beard_4\":0,\"glasses_2\":1,\"makeup_3\":0,\"helmet_2\":0,\"bags_1\":0,\"hair_color_2\":0,\"glasses_1\":5,\"hair_color_1\":7,\"makeup_1\":0,\"shoes_1\":16,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":4,\"pants_2\":3,\"sex\":0,\"hair_1\":19,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Plage\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":2,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":32,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":44,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"eyebrows_4\":0,\"helmet_1\":-1,\"skin\":11,\"lipstick_1\":0,\"pants_1\":25,\"bags_2\":0,\"decals_2\":0,\"bproof_1\":0,\"lipstick_2\":0,\"torso_1\":32,\"shoes_2\":0,\"eyebrows_1\":2,\"beard_4\":0,\"glasses_2\":1,\"makeup_3\":0,\"helmet_2\":0,\"bags_1\":0,\"hair_color_2\":0,\"glasses_1\":5,\"hair_color_1\":17,\"makeup_1\":0,\"shoes_1\":10,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":2,\"sex\":0,\"hair_1\":19,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Costar\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":15,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":44,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"hair_color_2\":0,\"decals_2\":0,\"skin\":11,\"hair_color_1\":17,\"pants_1\":28,\"helmet_2\":0,\"lipstick_1\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"shoes_2\":15,\"beard_4\":0,\"bags_1\":0,\"makeup_3\":0,\"eyebrows_1\":2,\"bags_2\":0,\"torso_1\":111,\"glasses_1\":5,\"shoes_1\":12,\"sex\":0,\"glasses_2\":1,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":3,\"pants_2\":0,\"makeup_1\":0,\"hair_1\":19,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Froid\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":15,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":44,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"hair_color_2\":0,\"decals_2\":0,\"skin\":11,\"hair_color_1\":17,\"pants_1\":67,\"helmet_2\":0,\"lipstick_1\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"shoes_2\":3,\"beard_4\":0,\"bags_1\":0,\"makeup_3\":0,\"eyebrows_1\":2,\"bags_2\":0,\"torso_1\":148,\"glasses_1\":5,\"shoes_1\":46,\"sex\":0,\"glasses_2\":1,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":1,\"pants_2\":1,\"makeup_1\":0,\"hair_1\":19,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Course\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":15,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":44,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"hair_color_2\":0,\"decals_2\":0,\"skin\":11,\"hair_color_1\":17,\"pants_1\":67,\"helmet_2\":16,\"lipstick_1\":0,\"helmet_1\":82,\"lipstick_2\":0,\"eyebrows_4\":0,\"bproof_1\":0,\"shoes_2\":3,\"beard_4\":0,\"bags_1\":0,\"makeup_3\":0,\"eyebrows_1\":2,\"bags_2\":0,\"torso_1\":148,\"glasses_1\":5,\"shoes_1\":46,\"sex\":0,\"glasses_2\":1,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":1,\"pants_2\":1,\"makeup_1\":0,\"hair_1\":19,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Course\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":1,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":23,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":44,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"hair_color_2\":0,\"hair_color_1\":9,\"skin\":11,\"lipstick_1\":0,\"pants_1\":24,\"bags_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"lipstick_2\":0,\"torso_1\":191,\"shoes_2\":7,\"eyebrows_1\":2,\"beard_4\":0,\"decals_2\":0,\"makeup_3\":0,\"helmet_2\":0,\"bags_1\":0,\"helmet_1\":-1,\"glasses_1\":5,\"shoes_1\":8,\"sex\":0,\"glasses_2\":1,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":22,\"pants_2\":0,\"eyebrows_4\":0,\"hair_1\":19,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Posé\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":129,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":25,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":31,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"eyebrows_4\":0,\"helmet_1\":-1,\"skin\":11,\"lipstick_1\":0,\"pants_1\":33,\"bags_2\":0,\"decals_2\":0,\"bproof_1\":0,\"lipstick_2\":0,\"torso_1\":53,\"shoes_2\":0,\"eyebrows_1\":2,\"beard_4\":0,\"glasses_2\":6,\"makeup_3\":0,\"helmet_2\":0,\"bags_1\":0,\"hair_color_2\":0,\"glasses_1\":15,\"hair_color_1\":41,\"makeup_1\":0,\"shoes_1\":25,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"sex\":0,\"hair_1\":50,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Securité\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":15,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":25,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"eyebrows_4\":0,\"hair_color_1\":41,\"skin\":11,\"lipstick_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"shoes_1\":32,\"shoes_2\":12,\"lipstick_2\":0,\"bags_2\":0,\"makeup_1\":0,\"eyebrows_1\":2,\"beard_4\":0,\"bproof_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"hair_color_2\":0,\"torso_1\":200,\"glasses_1\":4,\"pants_1\":26,\"sex\":0,\"glasses_2\":6,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":12,\"pants_2\":0,\"decals_2\":0,\"hair_1\":50,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Sweet R\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":32,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":25,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"hair_color_2\":0,\"bags_2\":0,\"skin\":11,\"lipstick_1\":0,\"pants_1\":25,\"helmet_1\":-1,\"shoes_1\":10,\"bproof_1\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"eyebrows_1\":2,\"beard_4\":0,\"bags_1\":0,\"makeup_3\":0,\"helmet_2\":0,\"shoes_2\":0,\"torso_1\":32,\"glasses_1\":5,\"decals_2\":0,\"sex\":0,\"glasses_2\":1,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"beard_1\":13,\"hair_1\":50,\"hair_color_1\":41,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Costar 2\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":3,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":71,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":27,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":0,\"hair_color_2\":0,\"hair_color_1\":37,\"skin\":11,\"lipstick_1\":0,\"pants_1\":31,\"bags_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"lipstick_2\":0,\"torso_1\":224,\"makeup_3\":0,\"eyebrows_1\":2,\"beard_4\":0,\"shoes_1\":60,\"shoes_2\":0,\"helmet_2\":0,\"bags_1\":0,\"helmet_1\":-1,\"glasses_1\":4,\"decals_2\":0,\"sex\":0,\"glasses_2\":6,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"eyebrows_4\":0,\"hair_1\":50,\"beard_1\":13,\"eyebrows_3\":5,\"decals_1\":0},\"label\":\"Noir\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":1,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":59,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":40,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":41,\"mask_1\":0,\"bags_1\":0,\"eyebrows_2\":10,\"hair_color_2\":0,\"decals_2\":0,\"skin\":11,\"hair_color_1\":18,\"pants_1\":25,\"shoes_1\":25,\"helmet_1\":-1,\"makeup_4\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"bags_2\":0,\"eyebrows_1\":2,\"beard_4\":0,\"ears_1\":2,\"shoes_2\":0,\"helmet_2\":0,\"makeup_1\":0,\"sex\":0,\"glasses_1\":5,\"torso_1\":55,\"eyebrows_4\":0,\"glasses_2\":1,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":0,\"makeup_3\":0,\"hair_1\":52,\"beard_1\":13,\"eyebrows_3\":5,\"lipstick_1\":0},\"label\":\"Flic Gilet\"}],\"weapons\":[{\"name\":\"WEAPON_APPISTOL\",\"ammo\":250},{\"name\":\"WEAPON_ASSAULTSMG\",\"ammo\":250},{\"name\":\"WEAPON_SMG\",\"ammo\":0},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":250},{\"name\":\"WEAPON_COMPACTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_VINTAGEPISTOL\",\"ammo\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":500},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_STICKYBOMB\",\"ammo\":25},{\"name\":\"WEAPON_MG\",\"ammo\":250},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":250},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"ammo\":247},{\"name\":\"WEAPON_CROWBAR\",\"ammo\":0},{\"name\":\"WEAPON_KNIFE\",\"ammo\":0}]}'),
(207, 'user_ears', 'steam:11000011acec85a', '{}'),
(208, 'user_glasses', 'steam:110000132a349ee', '{}'),
(209, 'user_helmet', 'steam:110000132a349ee', '{}'),
(210, 'user_mask', 'steam:110000132a349ee', '{}'),
(211, 'property', 'steam:110000132a349ee', '{}'),
(212, 'user_ears', 'steam:110000132a349ee', '{}'),
(213, 'user_mask', 'steam:11000010bb4b9f1', '{\"skin\":{\"mask_1\":28,\"mask_2\":0},\"hasMask\":true}'),
(214, 'user_helmet', 'steam:11000010bb4b9f1', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":4,\"helmet_1\":18}}'),
(215, 'user_glasses', 'steam:11000010bb4b9f1', '{}'),
(216, 'property', 'steam:11000010bb4b9f1', '{\"dressing\":[{\"skin\":{\"bags_1\":0,\"skin\":3,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"beard_1\":6,\"shoes_2\":0,\"arms\":42,\"hair_color_2\":0,\"mask_1\":0,\"face\":2,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":14,\"tshirt_2\":0,\"sex\":0,\"age_2\":0,\"hair_2\":2,\"glasses_1\":3,\"helmet_1\":-1,\"torso_1\":30,\"ears_1\":25,\"decals_1\":0,\"shoes_1\":10,\"mask_2\":0,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":1,\"eyebrows_4\":0,\"bproof_2\":0,\"lipstick_4\":0,\"hair_color_1\":0,\"makeup_1\":0,\"tshirt_1\":35,\"makeup_2\":0,\"beard_3\":0,\"eyebrows_2\":10,\"chain_2\":0,\"pants_1\":28,\"beard_4\":0,\"torso_2\":0,\"makeup_4\":0,\"chain_1\":0,\"beard_2\":10,\"eyebrows_3\":0},\"label\":\"classe\"},{\"skin\":{\"bags_1\":0,\"skin\":3,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"beard_1\":6,\"shoes_2\":6,\"chain_2\":0,\"hair_color_2\":0,\"sex\":0,\"face\":2,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":14,\"tshirt_2\":0,\"glasses_1\":3,\"beard_3\":0,\"hair_2\":2,\"mask_2\":0,\"helmet_1\":-1,\"torso_1\":142,\"ears_1\":25,\"decals_1\":0,\"shoes_1\":12,\"tshirt_1\":72,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":1,\"eyebrows_4\":0,\"bproof_2\":0,\"lipstick_4\":0,\"hair_color_1\":0,\"makeup_1\":0,\"mask_1\":0,\"arms\":96,\"age_2\":0,\"makeup_2\":0,\"eyebrows_2\":10,\"chain_1\":0,\"beard_4\":0,\"torso_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"beard_2\":10,\"pants_1\":28},\"label\":\"mouais\"},{\"skin\":{\"bags_1\":0,\"skin\":3,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"beard_4\":0,\"ears_2\":0,\"lipstick_2\":0,\"beard_1\":6,\"shoes_2\":4,\"arms\":96,\"hair_color_2\":44,\"sex\":0,\"face\":2,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":14,\"tshirt_2\":0,\"eyebrows_2\":10,\"beard_3\":0,\"hair_2\":0,\"torso_2\":0,\"tshirt_1\":55,\"torso_1\":53,\"ears_1\":25,\"decals_1\":0,\"shoes_1\":62,\"glasses_1\":0,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":1,\"eyebrows_4\":0,\"bproof_2\":0,\"age_2\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"bags_2\":0,\"mask_1\":0,\"chain_1\":0,\"helmet_1\":-1,\"chain_2\":0,\"hair_color_1\":0,\"makeup_2\":0,\"pants_1\":26,\"eyebrows_3\":0,\"beard_2\":10,\"makeup_4\":0},\"label\":\"tuer\"}]}'),
(217, 'user_ears', 'steam:11000010bb4b9f1', '{}'),
(218, 'property', 'steam:11000013613fa78', '{\"dressing\":[{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":25,\"sex\":1,\"mask_2\":0,\"shoes_1\":0,\"makeup_1\":0,\"ears_2\":0,\"lipstick_2\":10,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":0,\"beard_4\":0,\"chain_2\":0,\"chain_1\":0,\"tshirt_1\":13,\"age_1\":0,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":1,\"hair_1\":3,\"shoes_2\":1,\"hair_2\":0,\"pants_2\":0,\"bproof_1\":0,\"decals_2\":0,\"lipstick_1\":3,\"makeup_4\":0,\"eyebrows_2\":10,\"tshirt_2\":3,\"face\":40,\"arms\":0,\"ears_1\":-1,\"lipstick_4\":0,\"beard_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"torso_1\":8,\"mask_1\":0,\"skin\":0,\"lipstick_3\":23,\"hair_color_1\":12,\"beard_3\":0,\"eyebrows_1\":0,\"bags_2\":0},\"label\":\"tchoin\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":43,\"sex\":1,\"mask_2\":0,\"shoes_1\":25,\"makeup_1\":0,\"ears_2\":0,\"lipstick_2\":10,\"chain_1\":0,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":2,\"beard_4\":0,\"chain_2\":0,\"bags_1\":0,\"tshirt_1\":13,\"age_1\":0,\"lipstick_3\":23,\"lipstick_4\":0,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":11,\"hair_2\":0,\"shoes_2\":0,\"lipstick_1\":3,\"pants_2\":0,\"hair_color_2\":0,\"bproof_1\":0,\"hair_1\":3,\"makeup_4\":0,\"eyebrows_2\":10,\"tshirt_2\":3,\"helmet_1\":-1,\"face\":40,\"decals_1\":0,\"ears_1\":-1,\"beard_2\":0,\"glasses_2\":0,\"torso_1\":81,\"arms\":18,\"decals_2\":0,\"eyebrows_3\":0,\"mask_1\":0,\"skin\":0,\"eyebrows_4\":0,\"hair_color_1\":12,\"beard_3\":0,\"bags_2\":0,\"eyebrows_1\":0},\"label\":\"gang\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":43,\"sex\":1,\"mask_2\":0,\"shoes_1\":1,\"makeup_1\":0,\"makeup_4\":0,\"lipstick_2\":10,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":0,\"beard_4\":0,\"face\":40,\"bags_1\":0,\"tshirt_1\":13,\"age_1\":0,\"lipstick_3\":23,\"ears_2\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":3,\"eyebrows_1\":0,\"decals_2\":0,\"pants_2\":2,\"bproof_1\":0,\"chain_1\":0,\"hair_2\":0,\"hair_1\":3,\"helmet_1\":-1,\"eyebrows_2\":10,\"tshirt_2\":3,\"bags_2\":0,\"decals_1\":0,\"ears_1\":-1,\"arms\":4,\"beard_2\":0,\"eyebrows_3\":0,\"torso_1\":209,\"glasses_1\":1,\"shoes_2\":1,\"lipstick_4\":0,\"chain_2\":0,\"skin\":0,\"mask_1\":0,\"hair_color_1\":12,\"beard_3\":0,\"glasses_2\":0,\"eyebrows_4\":0},\"label\":\"bigness\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":4,\"sex\":1,\"mask_2\":0,\"shoes_1\":2,\"lipstick_4\":0,\"ears_2\":0,\"bags_2\":0,\"hair_color_2\":22,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":1,\"eyebrows_1\":0,\"face\":45,\"bags_1\":0,\"tshirt_1\":8,\"age_1\":0,\"lipstick_3\":49,\"pants_2\":1,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"decals_2\":0,\"shoes_2\":1,\"hair_2\":0,\"bproof_1\":0,\"chain_1\":0,\"hair_1\":4,\"helmet_1\":-1,\"makeup_4\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"decals_1\":0,\"ears_1\":-1,\"arms\":4,\"glasses_1\":1,\"beard_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"chain_2\":0,\"makeup_1\":0,\"torso_1\":74,\"mask_1\":0,\"skin\":45,\"eyebrows_3\":0,\"hair_color_1\":60,\"beard_3\":0,\"lipstick_2\":7,\"beard_4\":0},\"label\":\"biker\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":15,\"sex\":1,\"mask_2\":0,\"shoes_1\":19,\"makeup_1\":0,\"makeup_4\":0,\"bags_2\":0,\"hair_color_2\":22,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":1,\"beard_4\":0,\"face\":45,\"bags_1\":0,\"tshirt_1\":9,\"age_1\":0,\"lipstick_3\":49,\"pants_2\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"eyebrows_1\":0,\"shoes_2\":4,\"lipstick_4\":0,\"bproof_1\":0,\"hair_2\":0,\"chain_1\":0,\"hair_1\":4,\"torso_1\":21,\"eyebrows_2\":10,\"tshirt_2\":0,\"helmet_1\":51,\"decals_2\":0,\"decals_1\":0,\"ears_1\":-1,\"beard_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"arms\":37,\"glasses_1\":1,\"ears_2\":0,\"chain_2\":0,\"skin\":45,\"lipstick_2\":7,\"hair_color_1\":60,\"beard_3\":0,\"mask_1\":0,\"glasses_2\":0},\"label\":\"robe\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":102,\"sex\":1,\"mask_2\":0,\"shoes_1\":73,\"hair_1\":4,\"ears_2\":0,\"lipstick_2\":7,\"hair_color_2\":22,\"helmet_2\":0,\"beard_1\":0,\"torso_2\":1,\"beard_4\":0,\"face\":45,\"chain_1\":0,\"tshirt_1\":67,\"age_1\":0,\"lipstick_3\":49,\"bags_1\":0,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":1,\"pants_2\":0,\"shoes_2\":3,\"eyebrows_1\":0,\"bproof_1\":0,\"lipstick_4\":0,\"helmet_1\":-1,\"hair_2\":0,\"decals_2\":0,\"eyebrows_2\":10,\"tshirt_2\":3,\"torso_1\":70,\"lipstick_1\":0,\"mask_1\":0,\"decals_1\":0,\"beard_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"eyebrows_3\":0,\"arms\":37,\"chain_2\":0,\"makeup_4\":0,\"skin\":45,\"makeup_1\":0,\"hair_color_1\":60,\"beard_3\":0,\"ears_1\":-1,\"bags_2\":0},\"label\":\"tueuse\"}],\"weapons\":[{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"ammo\":250,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":0},{\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"ammo\":42,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"name\":\"WEAPON_KNIFE\",\"ammo\":0},{\"ammo\":0,\"name\":\"WEAPON_HAMMER\"},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"ammo\":250,\"name\":\"WEAPON_PISTOL50\"},{\"name\":\"WEAPON_HEAVYPISTOL\",\"ammo\":0},{\"ammo\":0,\"name\":\"WEAPON_SNSPISTOL\"},{\"name\":\"WEAPON_MUSKET\",\"ammo\":42},{\"ammo\":0,\"name\":\"WEAPON_HATCHET\"},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"ammo\":0,\"name\":\"WEAPON_KNUCKLE\"},{\"name\":\"WEAPON_CROWBAR\",\"ammo\":0},{\"ammo\":0,\"name\":\"WEAPON_VINTAGEPISTOL\"},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"ammo\":0,\"name\":\"WEAPON_REVOLVER\"},{\"name\":\"WEAPON_GOLFCLUB\",\"ammo\":0}]}'),
(219, 'user_ears', 'steam:11000013613fa78', '{}'),
(220, 'user_glasses', 'steam:11000013613fa78', '{}'),
(221, 'user_mask', 'steam:11000013613fa78', '{\"hasMask\":true,\"skin\":{\"mask_2\":2,\"mask_1\":63}}'),
(222, 'user_helmet', 'steam:11000013613fa78', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":51}}'),
(223, 'user_mask', 'steam:110000111a58cab', '{}'),
(224, 'user_helmet', 'steam:110000111a58cab', '{}'),
(225, 'user_glasses', 'steam:110000111a58cab', '{}'),
(226, 'user_ears', 'steam:110000111a58cab', '{}'),
(227, 'property', 'steam:110000111a58cab', '{}'),
(228, 'user_mask', 'steam:11000011760b77b', '{}'),
(229, 'property', 'steam:11000011760b77b', '{}'),
(230, 'user_ears', 'steam:11000011760b77b', '{}'),
(231, 'user_glasses', 'steam:11000011760b77b', '{}'),
(232, 'user_helmet', 'steam:11000011760b77b', '{}'),
(233, 'user_glasses', 'steam:110000110bff738', '{}'),
(234, 'property', 'steam:110000110bff738', '{}'),
(235, 'user_ears', 'steam:110000110bff738', '{}'),
(236, 'user_mask', 'steam:110000110bff738', '{}'),
(237, 'user_helmet', 'steam:110000110bff738', '{}'),
(238, 'user_helmet', 'steam:11000010f8be390', '{}'),
(239, 'property', 'steam:11000010f8be390', '{}'),
(240, 'user_ears', 'steam:11000010f8be390', '{}'),
(241, 'user_mask', 'steam:11000010f8be390', '{}'),
(242, 'user_glasses', 'steam:11000010f8be390', '{}'),
(243, 'user_ears', 'steam:110000112856892', '{}'),
(244, 'property', 'steam:1100001154fdc54', '{\"dressing\":[{\"skin\":{\"tshirt_1\":7,\"shoes_1\":1,\"beard_3\":0,\"chain_1\":0,\"bproof_1\":0,\"hair_1\":3,\"sex\":0,\"skin\":0,\"glasses_1\":5,\"makeup_3\":0,\"makeup_4\":0,\"face\":11,\"torso_1\":143,\"glasses_2\":5,\"decals_1\":0,\"beard_2\":10,\"eyebrows_3\":1,\"eyebrows_1\":0,\"ears_2\":0,\"makeup_2\":0,\"hair_color_2\":29,\"chain_2\":0,\"eyebrows_4\":0,\"shoes_2\":0,\"mask_1\":116,\"mask_2\":12,\"pants_2\":2,\"makeup_1\":0,\"tshirt_2\":0,\"helmet_2\":2,\"pants_1\":55,\"helmet_1\":14,\"hair_color_1\":0,\"bags_1\":0,\"torso_2\":2,\"ears_1\":-1,\"lipstick_1\":0,\"age_1\":0,\"beard_1\":10,\"beard_4\":0,\"eyebrows_2\":10,\"lipstick_4\":0,\"lipstick_3\":0,\"hair_2\":0,\"bags_2\":0,\"bproof_2\":0,\"age_2\":0,\"lipstick_2\":0,\"decals_2\":0,\"arms\":59},\"label\":\"gang\"},{\"skin\":{\"tshirt_1\":15,\"ears_1\":-1,\"beard_3\":0,\"chain_1\":0,\"bproof_1\":0,\"hair_1\":3,\"age_2\":0,\"hair_2\":0,\"glasses_1\":5,\"makeup_3\":0,\"makeup_4\":0,\"face\":11,\"torso_1\":143,\"glasses_2\":5,\"decals_1\":0,\"beard_2\":10,\"eyebrows_3\":1,\"eyebrows_1\":0,\"ears_2\":0,\"skin\":0,\"pants_1\":55,\"hair_color_2\":29,\"eyebrows_4\":0,\"eyebrows_2\":10,\"mask_1\":116,\"mask_2\":12,\"pants_2\":2,\"makeup_1\":0,\"tshirt_2\":0,\"helmet_2\":2,\"bags_1\":0,\"lipstick_1\":0,\"hair_color_1\":0,\"shoes_2\":0,\"torso_2\":2,\"helmet_1\":14,\"makeup_2\":0,\"chain_2\":0,\"age_1\":0,\"beard_4\":0,\"beard_1\":10,\"lipstick_4\":0,\"lipstick_3\":0,\"shoes_1\":1,\"bags_2\":0,\"bproof_2\":0,\"sex\":0,\"lipstick_2\":0,\"decals_2\":0,\"arms\":59},\"label\":\"gang\"},{\"label\":\"gang encore\",\"skin\":{\"tshirt_1\":15,\"ears_1\":-1,\"age_1\":0,\"chain_1\":0,\"bproof_1\":0,\"hair_1\":3,\"age_2\":0,\"bags_2\":0,\"glasses_1\":5,\"makeup_3\":0,\"makeup_4\":0,\"face\":11,\"torso_1\":143,\"glasses_2\":5,\"decals_1\":0,\"beard_2\":10,\"eyebrows_3\":1,\"eyebrows_1\":0,\"ears_2\":0,\"beard_1\":10,\"tshirt_2\":0,\"arms\":59,\"makeup_2\":0,\"bags_1\":44,\"mask_1\":116,\"mask_2\":12,\"eyebrows_4\":0,\"makeup_1\":0,\"eyebrows_2\":10,\"helmet_2\":5,\"pants_2\":2,\"hair_2\":0,\"hair_color_1\":0,\"shoes_2\":0,\"torso_2\":2,\"pants_1\":55,\"lipstick_1\":0,\"lipstick_2\":0,\"skin\":0,\"beard_4\":0,\"shoes_1\":1,\"lipstick_4\":0,\"lipstick_3\":0,\"beard_3\":0,\"helmet_1\":14,\"bproof_2\":0,\"hair_color_2\":29,\"sex\":0,\"decals_2\":0,\"chain_2\":0}}]}'),
(245, 'user_helmet', 'steam:1100001154fdc54', '{}'),
(246, 'user_mask', 'steam:1100001154fdc54', '{\"skin\":{\"mask_1\":4,\"mask_2\":0},\"hasMask\":true}'),
(247, 'user_glasses', 'steam:1100001154fdc54', '{}'),
(248, 'user_ears', 'steam:1100001154fdc54', '{}'),
(249, 'user_mask', 'steam:11000011ae2da25', '{}'),
(250, 'property', 'steam:11000011ae2da25', '{}'),
(251, 'user_helmet', 'steam:11000011ae2da25', '{}'),
(252, 'user_glasses', 'steam:11000011ae2da25', '{}'),
(253, 'user_ears', 'steam:11000011ae2da25', '{}'),
(254, 'user_mask', 'steam:11000010e555ae1', '{}'),
(255, 'user_helmet', 'steam:11000010e555ae1', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":15,\"helmet_2\":1}}'),
(256, 'property', 'steam:11000010e555ae1', '{}'),
(257, 'user_glasses', 'steam:11000010e555ae1', '{}'),
(258, 'user_ears', 'steam:11000010e555ae1', '{}'),
(259, 'user_glasses', 'steam:11000010ccc8c9b', '{}'),
(260, 'user_mask', 'steam:11000010ccc8c9b', '{}'),
(261, 'property', 'steam:11000010ccc8c9b', '{}'),
(262, 'user_helmet', 'steam:11000010ccc8c9b', '{}'),
(263, 'user_ears', 'steam:11000010ccc8c9b', '{}'),
(264, 'property', 'steam:11000013260f4bc', '{}'),
(265, 'user_helmet', 'steam:11000013260f4bc', '{}'),
(266, 'user_ears', 'steam:11000013260f4bc', '{}'),
(267, 'user_mask', 'steam:11000013260f4bc', '{}'),
(268, 'user_glasses', 'steam:11000013260f4bc', '{}'),
(269, 'property', 'steam:11000010f3c770c', '{\"dressing\":[{\"label\":\"Costar cravate\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":0,\"beard_2\":0,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":0,\"bags_1\":0,\"skin\":4,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":10,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"hair_color_1\":29,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":4,\"face\":2,\"lipstick_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"mask_1\":0,\"torso_1\":4,\"tshirt_2\":2,\"mask_2\":0,\"hair_1\":14,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"makeup_1\":0,\"sex\":0,\"helmet_1\":-1,\"pants_1\":35,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Gang\",\"skin\":{\"bags_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":0,\"beard_2\":0,\"ears_2\":0,\"eyebrows_1\":0,\"glasses_1\":0,\"bags_1\":51,\"skin\":4,\"shoes_1\":32,\"bproof_1\":0,\"tshirt_1\":74,\"bproof_2\":0,\"pants_2\":6,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"hair_color_1\":29,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"hair_2\":3,\"arms\":4,\"makeup_1\":0,\"lipstick_2\":0,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"mask_1\":0,\"torso_1\":68,\"tshirt_2\":0,\"mask_2\":0,\"hair_1\":14,\"hair_color_2\":0,\"makeup_2\":0,\"eyebrows_2\":0,\"face\":2,\"sex\":0,\"helmet_1\":-1,\"pants_1\":26,\"shoes_2\":0,\"makeup_4\":0}},{\"label\":\"Costar sac\",\"skin\":{\"makeup_2\":0,\"beard_4\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"beard_3\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"beard_1\":0,\"beard_2\":0,\"pants_1\":35,\"eyebrows_1\":0,\"glasses_1\":0,\"bags_1\":44,\"skin\":4,\"shoes_1\":10,\"bproof_1\":0,\"tshirt_1\":10,\"bproof_2\":0,\"pants_2\":0,\"eyebrows_3\":0,\"age_2\":0,\"glasses_2\":0,\"hair_color_1\":29,\"ears_1\":-1,\"decals_2\":0,\"lipstick_3\":0,\"decals_1\":0,\"face\":2,\"arms\":4,\"makeup_1\":0,\"hair_2\":3,\"helmet_2\":0,\"chain_1\":0,\"lipstick_4\":0,\"age_1\":0,\"lipstick_2\":0,\"torso_1\":4,\"tshirt_2\":2,\"mask_2\":0,\"bags_2\":0,\"hair_1\":14,\"mask_1\":0,\"hair_color_2\":0,\"eyebrows_2\":0,\"sex\":0,\"helmet_1\":-1,\"ears_2\":0,\"shoes_2\":0,\"makeup_4\":0}}]}'),
(270, 'user_mask', 'steam:11000010f3c770c', '{\"skin\":{\"mask_2\":0,\"mask_1\":95},\"hasMask\":true}'),
(271, 'user_glasses', 'steam:11000010f3c770c', '{}'),
(272, 'user_helmet', 'steam:11000010f3c770c', '{\"skin\":{\"helmet_1\":62,\"helmet_2\":6},\"hasHelmet\":true}'),
(273, 'user_ears', 'steam:11000010f3c770c', '{}'),
(274, 'user_ears', 'steam:11000010c4036d7', '{}'),
(275, 'property', 'steam:11000010c4036d7', '{}'),
(276, 'user_glasses', 'steam:11000010c4036d7', '{}'),
(277, 'user_mask', 'steam:11000010c4036d7', '{}'),
(278, 'user_helmet', 'steam:11000010c4036d7', '{}'),
(279, 'user_ears', 'steam:1100001076bae8a', '{}'),
(280, 'user_glasses', 'steam:1100001076bae8a', '{}'),
(281, 'user_mask', 'steam:1100001076bae8a', '{}'),
(282, 'property', 'steam:1100001076bae8a', '{}'),
(283, 'user_helmet', 'steam:1100001076bae8a', '{}'),
(284, 'user_mask', 'steam:110000118496987', '{}'),
(285, 'property', 'steam:110000118496987', '{}'),
(286, 'user_ears', 'steam:110000118496987', '{}'),
(287, 'user_helmet', 'steam:110000118496987', '{}'),
(288, 'user_glasses', 'steam:110000118496987', '{\"skin\":{\"glasses_2\":3,\"glasses_1\":5},\"hasGlasses\":true}'),
(289, 'user_helmet', 'steam:11000010f4464c0', '{}'),
(290, 'property', 'steam:11000010f4464c0', '{}'),
(291, 'user_ears', 'steam:11000010f4464c0', '{}'),
(292, 'user_glasses', 'steam:11000010f4464c0', '{}'),
(293, 'user_mask', 'steam:11000010f4464c0', '{}'),
(294, 'property', 'steam:110000109729f67', '{}'),
(295, 'user_mask', 'steam:110000109729f67', '{}'),
(296, 'user_helmet', 'steam:110000109729f67', '{}'),
(297, 'user_glasses', 'steam:110000109729f67', '{}'),
(298, 'user_ears', 'steam:110000109729f67', '{}'),
(299, 'user_glasses', 'steam:110000108f366a1', '{}'),
(300, 'property', 'steam:110000108f366a1', '{}'),
(301, 'user_mask', 'steam:110000108f366a1', '{}'),
(302, 'user_helmet', 'steam:110000108f366a1', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":15,\"helmet_2\":1}}'),
(303, 'user_ears', 'steam:110000108f366a1', '{}'),
(304, 'user_helmet', 'steam:11000011669fc09', '{}'),
(305, 'user_mask', 'steam:11000011669fc09', '{}'),
(306, 'user_glasses', 'steam:11000011669fc09', '{}'),
(307, 'user_ears', 'steam:11000011669fc09', '{}'),
(308, 'property', 'steam:11000011669fc09', '{}'),
(309, 'user_mask', 'steam:11000011172f5d0', '{}'),
(310, 'user_ears', 'steam:11000011172f5d0', '{}'),
(311, 'user_glasses', 'steam:11000011172f5d0', '{}'),
(312, 'user_helmet', 'steam:11000011172f5d0', '{}'),
(313, 'property', 'steam:11000011172f5d0', '{\"dressing\":[{\"skin\":{\"glasses\":0,\"bags_1\":0,\"skin\":4,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"beard_4\":0,\"ears_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"shoes_2\":2,\"arms\":17,\"hair_color_2\":0,\"sex\":0,\"face\":0,\"pants_2\":7,\"bproof_1\":0,\"shoes\":10,\"hair_1\":73,\"tshirt_2\":0,\"eyebrows_4\":0,\"beard_3\":0,\"hair_2\":0,\"torso_2\":2,\"helmet_1\":120,\"torso_1\":86,\"ears_1\":0,\"decals_1\":0,\"shoes_1\":8,\"mask_2\":16,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"bproof_2\":0,\"chain_1\":0,\"age_2\":0,\"makeup_1\":0,\"eyebrows_2\":0,\"lipstick_4\":0,\"beard_1\":11,\"mask_1\":121,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"tshirt_1\":57,\"makeup_4\":0,\"glasses_1\":0,\"beard_2\":10,\"pants_1\":9},\"label\":\"dealer\"}]}'),
(314, 'user_glasses', 'steam:11000010fb96ddc', '{}'),
(315, 'user_mask', 'steam:11000010fb96ddc', '{}'),
(316, 'user_helmet', 'steam:11000010fb96ddc', '{}'),
(317, 'user_ears', 'steam:11000010fb96ddc', '{}'),
(318, 'property', 'steam:11000010fb96ddc', '{}'),
(319, 'user_mask', 'steam:110000118d3e52c', '{}'),
(320, 'property', 'steam:110000118d3e52c', '{}'),
(321, 'user_ears', 'steam:110000118d3e52c', '{}'),
(322, 'user_helmet', 'steam:110000118d3e52c', '{}'),
(323, 'user_glasses', 'steam:110000118d3e52c', '{}'),
(324, 'user_ears', 'steam:11000010d6914d7', '{}'),
(325, 'user_helmet', 'steam:11000010d6914d7', '{}'),
(326, 'property', 'steam:11000010d6914d7', '{}'),
(327, 'user_glasses', 'steam:11000010d6914d7', '{}'),
(328, 'user_mask', 'steam:11000010d6914d7', '{}'),
(329, 'property', 'steam:110000107122573', '{}'),
(330, 'user_mask', 'steam:110000107122573', '{}'),
(331, 'user_helmet', 'steam:110000107122573', '{}'),
(332, 'user_glasses', 'steam:110000107122573', '{}'),
(333, 'user_ears', 'steam:110000107122573', '{}'),
(334, 'property', 'steam:11000010b4bab32', '{}'),
(335, 'user_mask', 'steam:11000010b4bab32', '{}'),
(336, 'user_helmet', 'steam:11000010b4bab32', '{}'),
(337, 'user_glasses', 'steam:11000010b4bab32', '{}'),
(338, 'user_ears', 'steam:11000010b4bab32', '{}'),
(339, 'user_ears', 'steam:11000011ccff156', '{}'),
(340, 'property', 'steam:11000011ccff156', '{}'),
(341, 'user_helmet', 'steam:11000011ccff156', '{}'),
(342, 'user_glasses', 'steam:11000011ccff156', '{}'),
(343, 'user_mask', 'steam:11000011ccff156', '{}'),
(344, 'user_helmet', 'steam:11000011d24e38e', '{}'),
(345, 'user_glasses', 'steam:11000011d24e38e', '{}'),
(346, 'user_ears', 'steam:11000011d24e38e', '{}'),
(347, 'property', 'steam:11000011d24e38e', '{}'),
(348, 'user_mask', 'steam:11000011d24e38e', '{\"skin\":{\"mask_1\":23,\"mask_2\":0},\"hasMask\":true}'),
(349, 'property', 'steam:110000113e42854', '{}'),
(350, 'user_helmet', 'steam:110000113e42854', '{}'),
(351, 'user_mask', 'steam:110000113e42854', '{}'),
(352, 'user_glasses', 'steam:110000113e42854', '{}'),
(353, 'user_ears', 'steam:110000113e42854', '{}'),
(354, 'user_helmet', 'steam:11000011861fe2d', '{}'),
(355, 'user_ears', 'steam:11000011861fe2d', '{}'),
(356, 'user_mask', 'steam:11000011861fe2d', '{}'),
(357, 'property', 'steam:11000011861fe2d', '{}'),
(358, 'user_glasses', 'steam:11000011861fe2d', '{}'),
(359, 'user_helmet', 'steam:110000108f73203', '{}'),
(360, 'user_mask', 'steam:110000108f73203', '{}'),
(361, 'user_ears', 'steam:110000108f73203', '{}'),
(362, 'user_glasses', 'steam:110000108f73203', '{}'),
(363, 'property', 'steam:110000108f73203', '{}'),
(364, 'society_biker', NULL, '{}'),
(365, 'user_glasses', 'steam:1100001155e5d75', '{}'),
(366, 'property', 'steam:1100001155e5d75', '{}'),
(367, 'user_helmet', 'steam:1100001155e5d75', '{}'),
(368, 'user_ears', 'steam:1100001155e5d75', '{}'),
(369, 'user_mask', 'steam:1100001155e5d75', '{}'),
(370, 'user_ears', 'steam:1100001080602bc', '{}'),
(371, 'property', 'steam:1100001080602bc', '{}'),
(372, 'user_mask', 'steam:1100001080602bc', '{}'),
(373, 'user_helmet', 'steam:1100001080602bc', '{}'),
(374, 'user_glasses', 'steam:1100001080602bc', '{}'),
(375, 'user_helmet', 'steam:11000010e7887ad', '{}'),
(376, 'user_glasses', 'steam:11000010e7887ad', '{}'),
(377, 'property', 'steam:11000010e7887ad', '{}'),
(378, 'user_mask', 'steam:11000010e7887ad', '{}'),
(379, 'user_ears', 'steam:11000010e7887ad', '{}'),
(380, 'user_mask', 'steam:11000013621a142', '{\"skin\":{\"mask_1\":2,\"mask_2\":3},\"hasMask\":true}'),
(381, 'user_helmet', 'steam:11000013621a142', '{}'),
(382, 'property', 'steam:11000013621a142', '{}'),
(383, 'user_glasses', 'steam:11000013621a142', '{}'),
(384, 'user_ears', 'steam:11000013621a142', '{}'),
(385, 'user_glasses', 'steam:11000010f692bdd', '{}'),
(386, 'user_helmet', 'steam:11000010f692bdd', '{}'),
(387, 'property', 'steam:11000010f692bdd', '{}'),
(388, 'user_mask', 'steam:11000010f692bdd', '{}'),
(389, 'user_ears', 'steam:11000010f692bdd', '{}'),
(390, 'user_ears', 'steam:11000013582fc5f', '{}'),
(391, 'user_helmet', 'steam:11000013582fc5f', '{}'),
(392, 'user_glasses', 'steam:11000013582fc5f', '{}'),
(393, 'user_mask', 'steam:11000013582fc5f', '{\"skin\":{\"mask_1\":89,\"mask_2\":3},\"hasMask\":true}'),
(394, 'property', 'steam:11000013582fc5f', '{\"dressing\":[{\"skin\":{\"bags_1\":0,\"skin\":0,\"lipstick_3\":0,\"decals_2\":0,\"makeup_3\":0,\"bags_2\":0,\"ears_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"shoes_2\":2,\"arms\":8,\"hair_color_2\":0,\"sex\":0,\"face\":4,\"pants_2\":0,\"bproof_1\":0,\"hair_1\":9,\"tshirt_2\":0,\"beard_1\":2,\"beard_3\":0,\"hair_2\":0,\"eyebrows_4\":0,\"tshirt_1\":15,\"torso_1\":38,\"ears_1\":-1,\"chain_1\":0,\"shoes_1\":4,\"torso_2\":0,\"age_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"bproof_2\":0,\"decals_1\":0,\"mask_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"mask_1\":0,\"beard_2\":10,\"age_2\":0,\"helmet_1\":-1,\"chain_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"glasses_1\":0,\"eyebrows_2\":0,\"pants_1\":26},\"label\":\"simple\"}]}'),
(395, 'user_helmet', 'steam:110000133ef6d99', '{}'),
(396, 'user_ears', 'steam:110000133ef6d99', '{}'),
(397, 'user_glasses', 'steam:110000133ef6d99', '{}'),
(398, 'user_mask', 'steam:110000133ef6d99', '{}'),
(399, 'property', 'steam:110000133ef6d99', '{}'),
(400, 'property', 'steam:110000114b9921b', '{}'),
(401, 'user_mask', 'steam:110000114b9921b', '{}'),
(402, 'user_helmet', 'steam:110000114b9921b', '{}'),
(403, 'user_ears', 'steam:110000114b9921b', '{}'),
(404, 'user_glasses', 'steam:110000114b9921b', '{}'),
(405, 'user_ears', 'steam:110000118c34052', '{}'),
(406, 'user_glasses', 'steam:110000118c34052', '{}'),
(407, 'property', 'steam:110000118c34052', '{\"dressing\":[{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":111,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":7,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":15,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"helmet_1\":-1,\"skin\":5,\"hair_color_1\":0,\"bags_1\":0,\"makeup_4\":0,\"sex\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"torso_1\":5,\"helmet_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"decals_2\":0,\"shoes_2\":2,\"eyebrows_1\":0,\"makeup_3\":0,\"bags_2\":0,\"glasses_1\":5,\"lipstick_4\":0,\"pants_1\":1,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":3,\"shoes_1\":4,\"hair_1\":0,\"beard_1\":0,\"eyebrows_3\":0,\"makeup_1\":0},\"label\":\"Toretto\"},{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"beard_3\":0,\"face\":7,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":14,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"hair_color_1\":0,\"skin\":5,\"lipstick_1\":0,\"pants_1\":1,\"helmet_1\":-1,\"makeup_2\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"beard_4\":0,\"makeup_3\":0,\"shoes_2\":2,\"eyebrows_1\":0,\"shoes_1\":4,\"torso_1\":6,\"glasses_1\":5,\"bags_1\":0,\"sex\":0,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":11,\"pants_2\":3,\"tshirt_1\":111,\"hair_1\":0,\"beard_1\":0,\"eyebrows_3\":0,\"makeup_4\":0},\"label\":\"Toretto Cuir\"},{\"skin\":{\"mask_2\":0,\"beard_2\":0,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"tshirt_1\":111,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":7,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":12,\"mask_1\":0,\"eyebrows_2\":0,\"ears_1\":-1,\"hair_color_2\":23,\"bags_1\":0,\"skin\":5,\"lipstick_1\":0,\"pants_1\":1,\"helmet_1\":-1,\"makeup_2\":0,\"hair_color_1\":0,\"lipstick_2\":0,\"shoes_1\":4,\"decals_2\":0,\"eyebrows_1\":0,\"beard_4\":0,\"bproof_1\":0,\"shoes_2\":2,\"helmet_2\":0,\"torso_1\":62,\"eyebrows_4\":0,\"glasses_1\":5,\"bags_2\":0,\"sex\":0,\"glasses_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":0,\"pants_2\":3,\"makeup_3\":0,\"hair_1\":6,\"beard_1\":0,\"eyebrows_3\":0,\"decals_1\":0},\"label\":\"Toretto2\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"age_1\":0,\"bags_2\":0,\"chain_2\":0,\"age_2\":0,\"makeup_1\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":7,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":0,\"mask_1\":0,\"eyebrows_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"ears_1\":-1,\"skin\":5,\"hair_color_1\":0,\"pants_1\":4,\"hair_color_2\":0,\"tshirt_1\":15,\"lipstick_1\":0,\"lipstick_2\":0,\"makeup_4\":0,\"helmet_2\":0,\"helmet_1\":-1,\"beard_4\":0,\"makeup_3\":0,\"shoes_2\":0,\"eyebrows_1\":0,\"sex\":0,\"torso_1\":22,\"glasses_1\":7,\"bags_1\":0,\"bproof_1\":0,\"glasses_2\":4,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":1,\"pants_2\":2,\"shoes_1\":28,\"hair_1\":2,\"beard_1\":7,\"eyebrows_3\":0,\"makeup_2\":0},\"label\":\"rp\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":0,\"ears_1\":-1,\"tshirt_1\":15,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":0,\"face\":7,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":17,\"mask_1\":0,\"eyebrows_2\":0,\"decals_2\":0,\"eyebrows_4\":0,\"torso_1\":139,\"skin\":5,\"lipstick_1\":0,\"bags_1\":0,\"helmet_1\":-1,\"shoes_1\":28,\"lipstick_2\":0,\"age_1\":0,\"makeup_1\":0,\"eyebrows_1\":0,\"bags_2\":0,\"beard_4\":0,\"hair_color_1\":0,\"shoes_2\":0,\"helmet_2\":0,\"hair_color_2\":0,\"sex\":0,\"glasses_1\":7,\"pants_1\":4,\"bproof_1\":0,\"glasses_2\":4,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":3,\"pants_2\":2,\"makeup_3\":0,\"hair_1\":2,\"beard_1\":7,\"eyebrows_3\":0,\"makeup_4\":0},\"label\":\"moto\"}],\"weapons\":[]}'),
(408, 'user_helmet', 'steam:110000118c34052', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":4,\"helmet_2\":0}}'),
(409, 'user_mask', 'steam:110000118c34052', '{\"skin\":{\"mask_1\":0,\"mask_2\":0},\"hasMask\":true}'),
(410, 'user_mask', 'steam:11000010c9bdcd9', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":35}}'),
(411, 'user_helmet', 'steam:11000010c9bdcd9', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":53}}'),
(412, 'user_glasses', 'steam:11000010c9bdcd9', '{}'),
(413, 'user_ears', 'steam:11000010c9bdcd9', '{}'),
(414, 'property', 'steam:11000010c9bdcd9', '{\"dressing\":[{\"label\":\"Braquage\",\"skin\":{\"beard_1\":10,\"arms\":20,\"makeup_1\":0,\"hair_color_1\":16,\"face\":0,\"tshirt_2\":3,\"chain_1\":3,\"helmet_1\":-1,\"bproof_1\":0,\"sex\":0,\"skin\":0,\"age_1\":0,\"hair_2\":0,\"tshirt_1\":75,\"ears_1\":-1,\"mask_1\":0,\"helmet_2\":0,\"beard_3\":0,\"eyebrows_2\":0,\"torso_1\":166,\"decals_2\":0,\"hair_1\":19,\"age_2\":0,\"glasses_1\":5,\"glasses_2\":5,\"bproof_2\":0,\"torso_2\":0,\"mask_2\":0,\"lipstick_4\":0,\"chain_2\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"shoes_1\":25,\"hair_color_2\":14,\"bags_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"pants_2\":0,\"beard_2\":10,\"eyebrows_4\":0,\"pants_1\":31,\"beard_4\":0,\"eyebrows_3\":0,\"ears_2\":0,\"shoes_2\":0,\"makeup_3\":0,\"eyebrows_1\":0,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0}},{\"label\":\"costume\",\"skin\":{\"beard_1\":10,\"lipstick_1\":0,\"makeup_1\":0,\"hair_color_1\":16,\"face\":0,\"tshirt_2\":0,\"chain_1\":26,\"helmet_1\":-1,\"decals_2\":0,\"sex\":0,\"skin\":0,\"age_1\":0,\"hair_2\":0,\"tshirt_1\":33,\"ears_1\":-1,\"mask_1\":0,\"pants_2\":0,\"beard_3\":0,\"eyebrows_2\":0,\"torso_1\":27,\"helmet_2\":0,\"hair_1\":19,\"beard_2\":10,\"glasses_1\":5,\"glasses_2\":5,\"bproof_2\":0,\"arms\":20,\"torso_2\":0,\"lipstick_4\":0,\"mask_2\":0,\"chain_2\":2,\"lipstick_2\":0,\"shoes_1\":10,\"hair_color_2\":14,\"bags_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"age_2\":0,\"pants_1\":10,\"eyebrows_4\":0,\"eyebrows_3\":0,\"beard_4\":0,\"bproof_1\":0,\"ears_2\":0,\"shoes_2\":0,\"makeup_3\":0,\"eyebrows_1\":0,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0}}]}'),
(415, 'user_mask', 'steam:1100001353fe56e', '{}'),
(416, 'user_ears', 'steam:1100001353fe56e', '{}'),
(417, 'user_glasses', 'steam:1100001353fe56e', '{}'),
(418, 'property', 'steam:1100001353fe56e', '{}'),
(419, 'user_helmet', 'steam:1100001353fe56e', '{}'),
(420, 'user_helmet', 'steam:1100001173d36f1', '{}'),
(421, 'property', 'steam:1100001173d36f1', '{}'),
(422, 'user_mask', 'steam:1100001173d36f1', '{}'),
(423, 'user_glasses', 'steam:1100001173d36f1', '{}'),
(424, 'user_ears', 'steam:1100001173d36f1', '{}'),
(425, 'user_mask', 'steam:11000010d228cea', '{}'),
(426, 'property', 'steam:11000010d228cea', '{}'),
(427, 'user_helmet', 'steam:11000010d228cea', '{}'),
(428, 'user_glasses', 'steam:11000010d228cea', '{}'),
(429, 'user_ears', 'steam:11000010d228cea', '{}'),
(430, 'user_mask', 'steam:110000111593e00', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":54}}'),
(431, 'user_helmet', 'steam:110000111593e00', '{}'),
(432, 'user_ears', 'steam:110000111593e00', '{}'),
(433, 'user_glasses', 'steam:110000111593e00', '{}'),
(434, 'property', 'steam:110000111593e00', '{\"dressing\":[{\"label\":\"Rouge mgl\",\"skin\":{\"hair_color_2\":0,\"lipstick_4\":0,\"mask_1\":0,\"glasses_1\":11,\"eyebrows_3\":0,\"bags_1\":0,\"eyebrows_1\":2,\"lipstick_3\":5,\"makeup_1\":1,\"bproof_1\":0,\"face\":31,\"decals_2\":0,\"hair_2\":0,\"lipstick_2\":5,\"lipstick_1\":5,\"glasses_2\":3,\"ears_2\":0,\"shoes_1\":2,\"tshirt_1\":77,\"beard_1\":0,\"ears_1\":-1,\"chain_2\":0,\"beard_2\":0,\"pants_2\":0,\"age_2\":0,\"age_1\":0,\"tshirt_2\":1,\"skin\":29,\"shoes_2\":13,\"bags_2\":0,\"makeup_4\":0,\"hair_1\":36,\"eyebrows_4\":0,\"chain_1\":0,\"decals_1\":0,\"eyebrows_2\":10,\"pants_1\":43,\"beard_4\":0,\"torso_2\":0,\"torso_1\":183,\"helmet_1\":-1,\"arms\":19,\"mask_2\":0,\"hair_color_1\":29,\"makeup_3\":0,\"helmet_2\":0,\"makeup_2\":10,\"bproof_2\":0,\"beard_3\":0,\"sex\":1}}]}'),
(435, 'user_glasses', 'steam:11000010e49b073', '{\"skin\":{\"glasses_2\":4,\"glasses_1\":5},\"hasGlasses\":true}'),
(436, 'user_helmet', 'steam:11000010e49b073', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":14,\"helmet_2\":1}}'),
(437, 'user_mask', 'steam:11000010e49b073', '{}'),
(438, 'user_ears', 'steam:11000010e49b073', '{}'),
(439, 'property', 'steam:11000010e49b073', '{\"dressing\":[{\"label\":\"op\",\"skin\":{\"hair_color_2\":0,\"lipstick_4\":0,\"mask_1\":0,\"glasses_1\":5,\"eyebrows_3\":0,\"bags_1\":45,\"eyebrows_1\":0,\"lipstick_3\":0,\"makeup_1\":0,\"bproof_1\":0,\"face\":0,\"decals_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"glasses_2\":4,\"ears_2\":0,\"shoes_1\":71,\"tshirt_1\":5,\"beard_1\":10,\"ears_1\":-1,\"chain_2\":0,\"beard_2\":10,\"pants_2\":1,\"helmet_1\":51,\"age_1\":0,\"age_2\":0,\"skin\":0,\"shoes_2\":1,\"bags_2\":0,\"sex\":0,\"hair_1\":55,\"eyebrows_4\":0,\"chain_1\":0,\"decals_1\":0,\"eyebrows_2\":0,\"pants_1\":98,\"beard_4\":0,\"arms\":17,\"torso_1\":251,\"mask_2\":0,\"tshirt_2\":0,\"makeup_4\":0,\"makeup_3\":0,\"hair_color_1\":29,\"helmet_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"beard_3\":0,\"torso_2\":1}}]}'),
(440, 'user_mask', 'steam:11000010e81d760', '{}'),
(441, 'property', 'steam:11000010e81d760', '{\"dressing\":[{\"label\":\"ski oklm en jean \",\"skin\":{\"makeup_4\":0,\"lipstick_4\":0,\"makeup_3\":0,\"glasses_1\":25,\"helmet_1\":2,\"bags_1\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"makeup_1\":0,\"bproof_1\":0,\"face\":0,\"decals_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"glasses_2\":6,\"arms\":36,\"hair_color_1\":15,\"eyebrows_3\":0,\"beard_1\":10,\"ears_1\":-1,\"chain_2\":0,\"beard_2\":10,\"pants_2\":6,\"mask_1\":0,\"age_1\":0,\"age_2\":0,\"skin\":0,\"shoes_2\":0,\"bags_2\":0,\"hair_color_2\":15,\"hair_1\":2,\"eyebrows_4\":0,\"chain_1\":0,\"decals_1\":0,\"eyebrows_2\":0,\"pants_1\":26,\"beard_4\":0,\"ears_2\":0,\"torso_1\":191,\"beard_3\":0,\"helmet_2\":0,\"mask_2\":0,\"tshirt_2\":3,\"shoes_1\":1,\"sex\":0,\"torso_2\":23,\"bproof_2\":0,\"tshirt_1\":72,\"makeup_2\":0}},{\"label\":\"OP\",\"skin\":{\"hair_color_2\":15,\"lipstick_4\":0,\"mask_1\":0,\"glasses_1\":5,\"eyebrows_3\":0,\"bags_1\":45,\"eyebrows_1\":0,\"makeup_2\":0,\"makeup_1\":0,\"bproof_1\":0,\"face\":0,\"decals_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"glasses_2\":4,\"ears_2\":0,\"hair_color_1\":15,\"beard_3\":0,\"beard_1\":10,\"ears_1\":-1,\"chain_2\":0,\"beard_2\":10,\"pants_2\":7,\"age_2\":0,\"age_1\":0,\"tshirt_2\":3,\"skin\":0,\"shoes_2\":6,\"bags_2\":0,\"helmet_2\":0,\"hair_1\":2,\"eyebrows_4\":0,\"chain_1\":0,\"decals_1\":0,\"eyebrows_2\":0,\"pants_1\":9,\"beard_4\":0,\"arms\":36,\"torso_1\":204,\"mask_2\":0,\"makeup_4\":0,\"shoes_1\":12,\"makeup_3\":0,\"helmet_1\":5,\"sex\":0,\"torso_2\":0,\"bproof_2\":0,\"tshirt_1\":72,\"lipstick_3\":0}},{\"label\":\"op 1\",\"skin\":{\"makeup_4\":0,\"lipstick_4\":0,\"makeup_3\":0,\"glasses_1\":5,\"eyebrows_3\":0,\"bags_1\":45,\"eyebrows_1\":0,\"lipstick_3\":0,\"makeup_1\":0,\"bproof_1\":0,\"face\":0,\"decals_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"glasses_2\":4,\"arms\":36,\"shoes_1\":12,\"hair_color_1\":15,\"beard_1\":10,\"ears_1\":-1,\"chain_2\":0,\"beard_2\":10,\"pants_2\":7,\"mask_1\":0,\"age_1\":0,\"age_2\":0,\"skin\":0,\"shoes_2\":6,\"bags_2\":0,\"helmet_2\":0,\"hair_1\":2,\"eyebrows_4\":0,\"chain_1\":0,\"decals_1\":0,\"eyebrows_2\":0,\"torso_2\":0,\"beard_4\":0,\"beard_3\":0,\"torso_1\":187,\"helmet_1\":50,\"mask_2\":0,\"tshirt_2\":3,\"ears_2\":0,\"hair_color_2\":15,\"sex\":0,\"pants_1\":9,\"bproof_2\":0,\"tshirt_1\":72,\"makeup_2\":0}}]}'),
(442, 'user_helmet', 'steam:11000010e81d760', '{}'),
(443, 'user_glasses', 'steam:11000010e81d760', '{}'),
(444, 'user_ears', 'steam:11000010e81d760', '{}'),
(445, 'user_glasses', 'steam:110000119c0d7ec', '{}'),
(446, 'user_mask', 'steam:110000119c0d7ec', '{}'),
(447, 'user_ears', 'steam:110000119c0d7ec', '{}'),
(448, 'user_helmet', 'steam:110000119c0d7ec', '{}'),
(449, 'property', 'steam:110000119c0d7ec', '{}'),
(450, 'property', 'steam:11000010b490325', '{}'),
(451, 'user_ears', 'steam:11000010b490325', '{}'),
(452, 'user_glasses', 'steam:11000010b490325', '{}'),
(453, 'user_helmet', 'steam:11000010b490325', '{}'),
(454, 'user_mask', 'steam:11000010b490325', '{}'),
(455, 'user_glasses', 'steam:110000109b99f47', '{}'),
(456, 'user_helmet', 'steam:110000109b99f47', '{\"skin\":{\"helmet_1\":18,\"helmet_2\":4},\"hasHelmet\":true}'),
(457, 'user_ears', 'steam:110000109b99f47', '{}'),
(458, 'user_mask', 'steam:110000109b99f47', '{}'),
(459, 'property', 'steam:110000109b99f47', '{\"dressing\":[{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":0,\"ears_2\":2,\"age_1\":0,\"tshirt_1\":9,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"beard_3\":10,\"face\":0,\"chain_1\":0,\"decals_1\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":4,\"eyebrows_4\":0,\"makeup_4\":0,\"skin\":12,\"lipstick_1\":0,\"bags_1\":0,\"hair_color_2\":0,\"glasses_2\":3,\"torso_1\":230,\"lipstick_2\":0,\"hair_color_1\":10,\"makeup_1\":0,\"eyebrows_1\":1,\"beard_4\":0,\"makeup_3\":0,\"shoes_2\":1,\"helmet_2\":0,\"lipstick_4\":0,\"decals_2\":0,\"glasses_1\":3,\"bags_2\":0,\"pants_1\":1,\"shoes_1\":9,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":5,\"sex\":0,\"hair_1\":2,\"beard_1\":10,\"eyebrows_3\":10,\"helmet_1\":-1},\"label\":\"Qot\"},{\"skin\":{\"mask_2\":0,\"beard_2\":10,\"tshirt_2\":4,\"ears_2\":2,\"age_1\":0,\"tshirt_1\":65,\"chain_2\":0,\"age_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"beard_3\":10,\"face\":0,\"chain_1\":0,\"makeup_4\":0,\"hair_2\":0,\"arms\":4,\"mask_1\":0,\"eyebrows_2\":10,\"ears_1\":4,\"eyebrows_4\":0,\"lipstick_1\":0,\"skin\":12,\"hair_color_1\":10,\"pants_1\":1,\"helmet_1\":-1,\"torso_1\":230,\"lipstick_2\":0,\"hair_color_2\":0,\"eyebrows_1\":1,\"sex\":0,\"shoes_2\":1,\"beard_4\":0,\"bags_2\":0,\"makeup_3\":0,\"helmet_2\":0,\"makeup_1\":0,\"bags_1\":0,\"glasses_1\":3,\"decals_2\":0,\"glasses_2\":3,\"shoes_1\":9,\"lipstick_3\":0,\"bproof_2\":0,\"torso_2\":2,\"pants_2\":5,\"bproof_1\":0,\"hair_1\":2,\"beard_1\":10,\"eyebrows_3\":10,\"decals_1\":0},\"label\":\"qot2\"}]}'),
(460, 'user_ears', 'steam:11000011cded001', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(461, 'property', 'steam:11000011cded001', '{\"dressing\":[{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":31,\"sex\":0,\"mask_2\":0,\"shoes_1\":25,\"lipstick_4\":0,\"makeup_4\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"beard_1\":2,\"torso_2\":0,\"beard_4\":0,\"chain_2\":0,\"decals_2\":0,\"tshirt_1\":57,\"helmet_1\":-1,\"lipstick_3\":0,\"bags_1\":0,\"makeup_2\":0,\"arms\":37,\"glasses_1\":5,\"bags_2\":0,\"shoes_2\":0,\"ears_2\":0,\"pants_2\":0,\"chain_1\":0,\"bproof_1\":0,\"hair_1\":21,\"torso_1\":42,\"eyebrows_2\":10,\"tshirt_2\":0,\"lipstick_1\":0,\"face\":0,\"eyebrows_1\":0,\"decals_1\":0,\"beard_2\":10,\"glasses_2\":0,\"eyebrows_4\":0,\"ears_1\":2,\"age_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"skin\":9,\"mask_1\":0,\"hair_color_1\":15,\"beard_3\":0,\"hair_2\":0,\"age_1\":0},\"label\":\"Sortie\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":28,\"sex\":0,\"mask_2\":0,\"shoes_1\":10,\"lipstick_4\":0,\"ears_2\":0,\"lipstick_2\":0,\"chain_1\":10,\"helmet_2\":0,\"beard_1\":2,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"bags_1\":0,\"tshirt_1\":31,\"age_1\":0,\"decals_1\":0,\"pants_2\":0,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":5,\"hair_color_2\":0,\"shoes_2\":0,\"hair_1\":21,\"bproof_1\":0,\"decals_2\":0,\"bags_2\":0,\"torso_1\":31,\"lipstick_1\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"ears_1\":2,\"arms\":38,\"chain_2\":2,\"hair_2\":0,\"beard_2\":10,\"glasses_2\":0,\"eyebrows_4\":0,\"makeup_1\":0,\"makeup_4\":0,\"lipstick_3\":0,\"mask_1\":0,\"skin\":9,\"eyebrows_3\":0,\"hair_color_1\":15,\"beard_3\":0,\"helmet_1\":-1,\"beard_4\":0},\"label\":\"rdv\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":25,\"sex\":0,\"mask_2\":0,\"shoes_1\":1,\"makeup_1\":0,\"ears_2\":0,\"bags_2\":0,\"chain_1\":6,\"helmet_2\":0,\"beard_1\":2,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"arms\":19,\"tshirt_1\":15,\"age_1\":0,\"lipstick_3\":0,\"bags_1\":0,\"makeup_2\":0,\"age_2\":0,\"lipstick_1\":0,\"beard_4\":0,\"shoes_2\":0,\"decals_2\":0,\"pants_2\":0,\"hair_color_2\":0,\"bproof_1\":0,\"hair_1\":21,\"torso_1\":63,\"eyebrows_2\":10,\"tshirt_2\":0,\"helmet_1\":-1,\"hair_2\":0,\"decals_1\":0,\"ears_1\":2,\"beard_2\":10,\"eyebrows_3\":0,\"eyebrows_4\":0,\"glasses_1\":5,\"lipstick_2\":0,\"chain_2\":0,\"lipstick_4\":0,\"skin\":9,\"makeup_4\":0,\"hair_color_1\":15,\"beard_3\":0,\"mask_1\":0,\"glasses_2\":0},\"label\":\"Habituel\"},{\"skin\":{\"bproof_2\":0,\"makeup_3\":0,\"pants_1\":7,\"sex\":0,\"mask_2\":0,\"shoes_1\":1,\"hair_1\":21,\"ears_2\":0,\"bags_2\":0,\"chain_1\":6,\"helmet_2\":0,\"beard_1\":2,\"torso_2\":0,\"beard_4\":0,\"face\":0,\"pants_2\":0,\"tshirt_1\":15,\"helmet_1\":-1,\"decals_1\":0,\"bags_1\":0,\"makeup_2\":0,\"age_2\":0,\"glasses_1\":5,\"arms\":19,\"shoes_2\":0,\"mask_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"decals_2\":0,\"hair_color_2\":0,\"hair_2\":0,\"eyebrows_2\":10,\"tshirt_2\":0,\"lipstick_2\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"ears_1\":2,\"beard_2\":10,\"eyebrows_3\":0,\"torso_1\":81,\"chain_2\":0,\"eyebrows_1\":0,\"makeup_1\":0,\"makeup_4\":0,\"skin\":9,\"lipstick_3\":0,\"hair_color_1\":15,\"beard_3\":0,\"glasses_2\":0,\"age_1\":0},\"label\":\"Planque\"}]}'),
(462, 'user_helmet', 'steam:11000011cded001', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":83}}'),
(463, 'user_mask', 'steam:11000011cded001', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":51}}'),
(464, 'user_glasses', 'steam:11000011cded001', '{}'),
(465, 'user_ears', 'steam:1100001128ff308', '{}'),
(466, 'user_glasses', 'steam:1100001128ff308', '{}'),
(467, 'user_helmet', 'steam:1100001128ff308', '{}'),
(468, 'user_mask', 'steam:1100001128ff308', '{}'),
(469, 'property', 'steam:1100001128ff308', '{}'),
(470, 'user_ears', 'steam:110000118282d31', '{}'),
(471, 'property', 'steam:110000118282d31', '{}'),
(472, 'user_glasses', 'steam:110000118282d31', '{}'),
(473, 'user_mask', 'steam:110000118282d31', '{}'),
(474, 'user_helmet', 'steam:110000118282d31', '{}'),
(475, 'user_glasses', 'steam:11000010c789c31', '{}'),
(476, 'property', 'steam:11000010c789c31', '{}'),
(477, 'user_ears', 'steam:11000010c789c31', '{}'),
(478, 'user_mask', 'steam:11000010c789c31', '{}'),
(479, 'user_helmet', 'steam:11000010c789c31', '{}'),
(480, 'user_helmet', 'steam:1100001173f3092', '{}'),
(481, 'user_glasses', 'steam:1100001173f3092', '{}'),
(482, 'property', 'steam:1100001173f3092', '{}'),
(483, 'user_ears', 'steam:1100001173f3092', '{}'),
(484, 'user_mask', 'steam:1100001173f3092', '{}'),
(485, 'user_helmet', 'steam:11000010b4b70d9', '{}'),
(486, 'user_mask', 'steam:11000010b4b70d9', '{}'),
(487, 'user_glasses', 'steam:11000010b4b70d9', '{}'),
(488, 'user_ears', 'steam:11000010b4b70d9', '{}'),
(489, 'property', 'steam:11000010b4b70d9', '{}'),
(490, 'user_mask', 'steam:11000010077a8c1', '{}'),
(491, 'user_helmet', 'steam:11000010077a8c1', '{}'),
(492, 'property', 'steam:11000010077a8c1', '{}'),
(493, 'user_ears', 'steam:11000010077a8c1', '{}'),
(494, 'user_glasses', 'steam:11000010077a8c1', '{}'),
(495, 'user_ears', 'steam:110000132daf29b', '{}'),
(496, 'user_glasses', 'steam:110000132daf29b', '{}'),
(497, 'user_helmet', 'steam:110000132daf29b', '{}'),
(498, 'user_mask', 'steam:110000132daf29b', '{}'),
(499, 'property', 'steam:110000132daf29b', '{}'),
(500, 'user_mask', 'steam:110000116a28200', '{}'),
(501, 'user_glasses', 'steam:110000116a28200', '{}'),
(502, 'user_helmet', 'steam:110000116a28200', '{}'),
(503, 'property', 'steam:110000116a28200', '{}'),
(504, 'user_ears', 'steam:110000116a28200', '{}'),
(505, 'user_glasses', 'steam:11000010013511a', '{}'),
(506, 'user_ears', 'steam:11000010013511a', '{}'),
(507, 'property', 'steam:11000010013511a', '{}'),
(508, 'user_helmet', 'steam:11000010013511a', '{}'),
(509, 'user_mask', 'steam:11000010013511a', '{}'),
(510, 'user_ears', 'steam:11000010eb00ea7', '{}'),
(511, 'user_helmet', 'steam:11000010eb00ea7', '{}'),
(512, 'user_glasses', 'steam:11000010eb00ea7', '{}'),
(513, 'user_mask', 'steam:11000010eb00ea7', '{}'),
(514, 'property', 'steam:11000010eb00ea7', '{}'),
(515, 'user_ears', 'steam:1100001152f0a24', '{}'),
(516, 'user_mask', 'steam:1100001152f0a24', '{}'),
(517, 'user_glasses', 'steam:1100001152f0a24', '{}'),
(518, 'property', 'steam:1100001152f0a24', '{}'),
(519, 'user_helmet', 'steam:1100001152f0a24', '{}'),
(520, 'user_mask', 'steam:110000117053659', '{}'),
(521, 'user_ears', 'steam:110000117053659', '{}'),
(522, 'user_helmet', 'steam:110000117053659', '{}'),
(523, 'property', 'steam:110000117053659', '{}'),
(524, 'user_glasses', 'steam:110000117053659', '{}'),
(525, 'user_glasses', 'steam:1100001136fb180', '{}'),
(526, 'user_ears', 'steam:1100001136fb180', '{}'),
(527, 'property', 'steam:1100001136fb180', '{}'),
(528, 'user_helmet', 'steam:1100001136fb180', '{}'),
(529, 'user_mask', 'steam:1100001136fb180', '{}'),
(530, 'user_ears', 'steam:11000013634c728', '{}'),
(531, 'user_glasses', 'steam:11000013634c728', '{}'),
(532, 'user_mask', 'steam:11000013634c728', '{}'),
(533, 'user_helmet', 'steam:11000013634c728', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":0,\"helmet_1\":46}}'),
(534, 'property', 'steam:11000013634c728', '{}'),
(535, 'user_mask', 'steam:1100001135b73a1', '{}'),
(536, 'user_glasses', 'steam:1100001135b73a1', '{}'),
(537, 'user_ears', 'steam:1100001135b73a1', '{}'),
(538, 'user_helmet', 'steam:1100001135b73a1', '{}'),
(539, 'property', 'steam:1100001135b73a1', '{}'),
(540, 'user_ears', 'steam:11000010ca2c7e9', '{}'),
(541, 'user_glasses', 'steam:11000010ca2c7e9', '{}'),
(542, 'user_helmet', 'steam:11000010ca2c7e9', '{}'),
(543, 'user_mask', 'steam:11000010ca2c7e9', '{}'),
(544, 'property', 'steam:11000010ca2c7e9', '{}'),
(545, 'user_glasses', 'steam:1100001077856e8', '{}'),
(546, 'user_ears', 'steam:1100001077856e8', '{}'),
(547, 'user_mask', 'steam:1100001077856e8', '{}'),
(548, 'property', 'steam:1100001077856e8', '{}'),
(549, 'user_helmet', 'steam:1100001077856e8', '{}'),
(550, 'user_ears', 'steam:110000131f9e30e', '{}'),
(551, 'user_helmet', 'steam:110000131f9e30e', '{}'),
(552, 'user_glasses', 'steam:110000131f9e30e', '{}'),
(553, 'user_mask', 'steam:110000131f9e30e', '{}'),
(554, 'property', 'steam:110000131f9e30e', '{}'),
(555, 'user_ears', 'steam:110000119dc2827', '{}'),
(556, 'user_mask', 'steam:110000119dc2827', '{}'),
(557, 'user_glasses', 'steam:110000119dc2827', '{}'),
(558, 'property', 'steam:110000119dc2827', '{}'),
(559, 'user_helmet', 'steam:110000119dc2827', '{}'),
(560, 'property', 'steam:1100001061d0cb1', '{\"dressing\":[{\"skin\":{\"mask_1\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"ears_2\":0,\"beard_1\":10,\"arms\":4,\"hair_2\":0,\"pants_1\":10,\"shoes_1\":10,\"bproof_1\":0,\"torso_2\":2,\"pants_2\":0,\"lipstick_1\":0,\"glasses_1\":5,\"age_2\":0,\"helmet_1\":12,\"sex\":0,\"mask_2\":0,\"decals_1\":0,\"makeup_1\":0,\"shoes_2\":0,\"hair_color_1\":2,\"skin\":37,\"glasses_2\":5,\"beard_3\":0,\"ears_1\":17,\"face\":44,\"eyebrows_1\":30,\"bags_1\":0,\"tshirt_1\":10,\"eyebrows_3\":0,\"chain_2\":0,\"makeup_3\":0,\"helmet_2\":0,\"age_1\":0,\"lipstick_4\":0,\"eyebrows_2\":8,\"chain_1\":0,\"beard_4\":0,\"hair_1\":73,\"makeup_2\":0,\"hair_color_2\":12,\"makeup_4\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"tshirt_2\":0,\"bproof_2\":0,\"torso_1\":72,\"eyebrows_4\":0},\"label\":\"MAFIA\"},{\"label\":\"STREETWEAR\",\"skin\":{\"mask_1\":0,\"decals_2\":0,\"bags_2\":0,\"beard_2\":10,\"ears_2\":0,\"beard_1\":10,\"arms\":4,\"hair_2\":0,\"pants_1\":4,\"shoes_1\":31,\"bproof_1\":0,\"torso_2\":21,\"eyebrows_4\":0,\"lipstick_2\":0,\"glasses_1\":5,\"age_2\":0,\"face\":44,\"sex\":0,\"helmet_1\":45,\"decals_1\":0,\"skin\":37,\"shoes_2\":2,\"hair_color_1\":2,\"lipstick_1\":0,\"glasses_2\":5,\"beard_3\":0,\"ears_1\":17,\"makeup_4\":0,\"eyebrows_3\":0,\"bags_1\":0,\"tshirt_1\":8,\"mask_2\":0,\"chain_2\":0,\"makeup_3\":0,\"helmet_2\":1,\"age_1\":0,\"lipstick_4\":0,\"makeup_1\":0,\"chain_1\":0,\"eyebrows_2\":8,\"beard_4\":0,\"hair_1\":73,\"hair_color_2\":12,\"eyebrows_1\":30,\"lipstick_3\":0,\"makeup_2\":0,\"tshirt_2\":14,\"bproof_2\":0,\"torso_1\":191,\"pants_2\":2}},{\"skin\":{\"helmet_2\":5,\"decals_2\":0,\"bags_2\":0,\"helmet_1\":20,\"ears_2\":0,\"beard_1\":10,\"arms\":5,\"hair_2\":0,\"pants_1\":78,\"shoes_1\":31,\"bproof_1\":0,\"mask_1\":0,\"eyebrows_4\":0,\"torso_2\":0,\"glasses_1\":5,\"age_2\":0,\"eyebrows_3\":0,\"sex\":0,\"eyebrows_2\":8,\"decals_1\":0,\"beard_4\":0,\"shoes_2\":1,\"hair_color_1\":2,\"lipstick_1\":0,\"glasses_2\":5,\"eyebrows_1\":30,\"makeup_1\":0,\"face\":44,\"skin\":37,\"bags_1\":0,\"tshirt_1\":8,\"beard_3\":0,\"chain_2\":0,\"makeup_3\":0,\"pants_2\":1,\"mask_2\":0,\"lipstick_4\":0,\"age_1\":0,\"chain_1\":0,\"makeup_4\":0,\"beard_2\":10,\"hair_1\":73,\"hair_color_2\":12,\"ears_1\":17,\"lipstick_3\":0,\"makeup_2\":0,\"tshirt_2\":13,\"bproof_2\":0,\"torso_1\":191,\"lipstick_2\":0},\"label\":\"STREET MILITARY\"}]}'),
(561, 'user_glasses', 'steam:1100001061d0cb1', '{}'),
(562, 'user_mask', 'steam:1100001061d0cb1', '{\"skin\":{\"mask_1\":54,\"mask_2\":0},\"hasMask\":true}'),
(563, 'user_ears', 'steam:1100001061d0cb1', '{}'),
(564, 'user_helmet', 'steam:1100001061d0cb1', '{}'),
(565, 'property', 'steam:11000011852ee0c', '{}'),
(566, 'user_glasses', 'steam:11000011852ee0c', '{}'),
(567, 'user_ears', 'steam:11000011852ee0c', '{}'),
(568, 'user_helmet', 'steam:11000011852ee0c', '{}'),
(569, 'user_mask', 'steam:11000011852ee0c', '{}'),
(570, 'user_helmet', 'steam:11000011d1423db', '{}'),
(571, 'user_mask', 'steam:11000011d1423db', '{}'),
(572, 'property', 'steam:11000011d1423db', '{}'),
(573, 'user_ears', 'steam:11000011d1423db', '{}'),
(574, 'user_glasses', 'steam:11000011d1423db', '{}'),
(575, 'user_ears', 'steam:11000010302b529', '{}'),
(576, 'user_helmet', 'steam:11000010302b529', '{}'),
(577, 'user_glasses', 'steam:11000010302b529', '{}'),
(578, 'property', 'steam:11000010302b529', '{}'),
(579, 'user_mask', 'steam:11000010302b529', '{}'),
(580, 'user_ears', 'steam:110000119a721fd', '{}'),
(581, 'user_glasses', 'steam:110000119a721fd', '{}'),
(582, 'property', 'steam:110000119a721fd', '{}'),
(583, 'user_helmet', 'steam:110000119a721fd', '{}'),
(584, 'user_mask', 'steam:110000119a721fd', '{}'),
(585, 'user_ears', 'steam:110000114a6bf17', '{}'),
(586, 'user_helmet', 'steam:110000114a6bf17', '{}'),
(587, 'user_glasses', 'steam:110000114a6bf17', '{}'),
(588, 'user_mask', 'steam:110000114a6bf17', '{}'),
(589, 'property', 'steam:110000114a6bf17', '{}'),
(590, 'user_ears', 'steam:11000010acfe014', '{}'),
(591, 'user_glasses', 'steam:11000010acfe014', '{}'),
(592, 'user_helmet', 'steam:11000010acfe014', '{}'),
(593, 'user_mask', 'steam:11000010acfe014', '{}'),
(594, 'property', 'steam:11000010acfe014', '{}'),
(595, 'user_helmet', 'steam:11000011cf4c40d', '{}'),
(596, 'user_ears', 'steam:11000011cf4c40d', '{}'),
(597, 'user_glasses', 'steam:11000011cf4c40d', '{}'),
(598, 'user_mask', 'steam:11000011cf4c40d', '{}'),
(599, 'property', 'steam:11000011cf4c40d', '{}'),
(600, 'society_army', NULL, '{}'),
(601, 'user_glasses', 'steam:11000010a01c0bc', '{}'),
(602, 'user_ears', 'steam:11000010a01c0bc', '{}'),
(603, 'property', 'steam:11000010a01c0bc', '{}'),
(604, 'user_helmet', 'steam:11000010a01c0bc', '{}'),
(605, 'user_mask', 'steam:11000010a01c0bc', '{}'),
(606, 'property', 'steam:1100001098c0f10', '{}'),
(607, 'user_helmet', 'steam:1100001098c0f10', '{}'),
(608, 'user_mask', 'steam:1100001098c0f10', '{}'),
(609, 'user_glasses', 'steam:1100001098c0f10', '{}'),
(610, 'user_ears', 'steam:1100001098c0f10', '{}'),
(611, 'property', 'steam:11000013518e15d', '{}'),
(612, 'user_ears', 'steam:11000013518e15d', '{}'),
(613, 'user_glasses', 'steam:11000013518e15d', '{}'),
(614, 'user_mask', 'steam:11000013518e15d', '{}'),
(615, 'user_helmet', 'steam:11000013518e15d', '{}'),
(616, 'user_glasses', 'steam:11000010cba93cb', '{}'),
(617, 'user_helmet', 'steam:11000010cba93cb', '{}'),
(618, 'user_mask', 'steam:11000010cba93cb', '{}'),
(619, 'user_ears', 'steam:11000010cba93cb', '{}'),
(620, 'property', 'steam:11000010cba93cb', '{}'),
(621, 'property', 'steam:1100001048dd98c', '{}'),
(622, 'user_mask', 'steam:1100001048dd98c', '{}'),
(623, 'user_glasses', 'steam:1100001048dd98c', '{}'),
(624, 'user_helmet', 'steam:1100001048dd98c', '{}'),
(625, 'user_ears', 'steam:1100001048dd98c', '{}'),
(626, 'property', 'steam:11000011bd90656', '{}'),
(627, 'user_mask', 'steam:11000011bd90656', '{}'),
(628, 'user_helmet', 'steam:11000011bd90656', '{}'),
(629, 'user_glasses', 'steam:11000011bd90656', '{}'),
(630, 'user_ears', 'steam:11000011bd90656', '{}'),
(631, 'user_glasses', 'steam:110000115a29e25', '{}'),
(632, 'user_ears', 'steam:110000115a29e25', '{}'),
(633, 'user_helmet', 'steam:110000115a29e25', '{}'),
(634, 'user_mask', 'steam:110000115a29e25', '{}'),
(635, 'property', 'steam:110000115a29e25', '{}'),
(636, 'user_glasses', 'steam:110000114a058a8', '{}'),
(637, 'user_helmet', 'steam:110000114a058a8', '{}'),
(638, 'user_mask', 'steam:110000114a058a8', '{}'),
(639, 'user_ears', 'steam:110000114a058a8', '{}'),
(640, 'property', 'steam:110000114a058a8', '{}'),
(641, 'user_glasses', 'steam:1100001167d265e', '{}'),
(642, 'user_ears', 'steam:1100001167d265e', '{}'),
(643, 'user_helmet', 'steam:1100001167d265e', '{}'),
(644, 'user_mask', 'steam:1100001167d265e', '{}'),
(645, 'property', 'steam:1100001167d265e', '{}'),
(646, 'user_glasses', 'steam:1100001197619a3', '{}'),
(647, 'user_ears', 'steam:1100001197619a3', '{}'),
(648, 'user_mask', 'steam:1100001197619a3', '{}'),
(649, 'user_helmet', 'steam:1100001197619a3', '{}'),
(650, 'property', 'steam:1100001197619a3', '{\"dressing\":[{\"label\":1,\"skin\":{\"lipstick_4\":0,\"chain_2\":0,\"pants_2\":0,\"beard_4\":0,\"tshirt_2\":0,\"hair_1\":47,\"eyebrows_3\":1,\"glasses_1\":0,\"ears_2\":0,\"helmet_1\":-1,\"age_1\":0,\"face\":31,\"torso_2\":0,\"shoes_1\":55,\"pants_1\":31,\"makeup_4\":0,\"hair_2\":0,\"mask_1\":0,\"beard_1\":0,\"helmet_2\":0,\"torso_1\":75,\"arms\":0,\"beard_3\":0,\"glasses_2\":0,\"hair_color_2\":29,\"mask_2\":0,\"bags_1\":0,\"chain_1\":7,\"decals_1\":0,\"sex\":0,\"skin\":12,\"bproof_1\":0,\"makeup_3\":0,\"makeup_1\":7,\"hair_color_1\":3,\"lipstick_1\":1,\"eyebrows_1\":2,\"shoes_2\":5,\"lipstick_2\":0,\"age_2\":0,\"bags_2\":0,\"beard_2\":0,\"eyebrows_4\":0,\"decals_2\":0,\"ears_1\":26,\"lipstick_3\":0,\"bproof_2\":0,\"makeup_2\":5,\"tshirt_1\":2,\"eyebrows_2\":10}}]}'),
(651, 'user_mask', 'steam:1100001045fbd8f', '{\"skin\":{\"mask_1\":0,\"mask_2\":0},\"hasMask\":true}'),
(652, 'property', 'steam:1100001045fbd8f', '{}'),
(653, 'user_helmet', 'steam:1100001045fbd8f', '{}'),
(654, 'user_ears', 'steam:1100001045fbd8f', '{}'),
(655, 'user_glasses', 'steam:1100001045fbd8f', '{}'),
(656, 'user_ears', 'steam:11000010a1b83df', '{}'),
(657, 'user_helmet', 'steam:11000010a1b83df', '{}'),
(658, 'user_glasses', 'steam:11000010a1b83df', '{}'),
(659, 'property', 'steam:11000010a1b83df', '{}'),
(660, 'user_mask', 'steam:11000010a1b83df', '{}'),
(661, 'user_glasses', 'steam:11000010b3a30a0', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":2,\"glasses_1\":0}}'),
(662, 'user_mask', 'steam:11000010b3a30a0', '{\"skin\":{\"mask_1\":0,\"mask_2\":2},\"hasMask\":true}'),
(663, 'user_helmet', 'steam:11000010b3a30a0', '{}'),
(664, 'user_ears', 'steam:11000010b3a30a0', '{}'),
(665, 'property', 'steam:11000010b3a30a0', '{}'),
(666, 'user_glasses', 'steam:11000011685b145', '{}'),
(667, 'user_ears', 'steam:11000011685b145', '{}'),
(668, 'property', 'steam:11000011685b145', '{}'),
(669, 'user_mask', 'steam:11000011685b145', '{}'),
(670, 'user_helmet', 'steam:11000011685b145', '{}'),
(671, 'user_helmet', 'steam:1100001197354a7', '{}'),
(672, 'property', 'steam:1100001197354a7', '{}'),
(673, 'user_glasses', 'steam:1100001197354a7', '{}'),
(674, 'user_mask', 'steam:1100001197354a7', '{}'),
(675, 'user_ears', 'steam:1100001197354a7', '{}'),
(676, 'user_helmet', 'steam:110000111df570b', '{}'),
(677, 'user_ears', 'steam:110000111df570b', '{}'),
(678, 'user_glasses', 'steam:110000111df570b', '{}'),
(679, 'user_mask', 'steam:110000111df570b', '{}'),
(680, 'property', 'steam:110000111df570b', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Aloodegi soti', 2000, 0),
(2, 'Oboor az cheraghe ghermez', 2000, 0),
(3, 'Vorood mamnoo', 5000, 0),
(4, 'Dor zadan gheyr e mojaz', 5000, 0),
(5, 'Circulation hors-route', 6000, 0),
(6, 'Adam tavajo be fasele tooli', 5000, 0),
(7, 'Tavaghof mamnoo', 5000, 0),
(8, 'Park e bad', 2500, 0),
(9, 'Adam tavajoh be hagh e taghadom', 5000, 0),
(10, 'Adam tavajoh be haghe taghadome mashin haye vizhe', 7500, 0),
(11, 'Adam tavajoh be tavaghof', 5000, 0),
(12, 'Adam e tavajoh be alayeme ranandegi', 5000, 0),
(13, 'Harakat e khatarnak', 10000, 0),
(14, 'Kharab boodan mashin', 15000, 0),
(15, 'Ranandegi bedoone govahinam', 8000, 0),
(16, 'Zadan o dar raftan', 25000, 0),
(17, 'Sorat e kamtar az 60Km/h', 2000, 0),
(18, 'Soraat mojaz 60Km/h', 5000, 0),
(19, 'Soraat mojaz 80Km/h', 8000, 0),
(20, 'Soraat mojaz 120Km/h', 15000, 0),
(21, 'Ijad e traffic', 5000, 1),
(22, 'Bastan e khiyaboon', 5000, 1),
(23, 'Beham rikhtan e nazm ', 5000, 1),
(24, 'Bi tavajohi be ekhtar e police', 45000, 1),
(25, 'Bi ehterami', 20000, 1),
(26, 'Tohin be mamoor e police', 30000, 1),
(27, 'Tahdid shahrvandan', 20000, 1),
(28, 'Tahdid Police', 25000, 1),
(29, 'Eteraz be ghanoon', 15000, 1),
(30, 'Ijad e fesad', 80000, 1),
(31, 'Estefade az selahe sard dar shahr', 5000, 2),
(32, 'Estefade az selahe garm dar shahr', 15000, 2),
(33, 'Haml e aslahe bedoon e mojavez', 20000, 2),
(34, 'Dashtan e aslahe gheyre mojaz', 80000, 2),
(35, 'Dashtan dar baz kon', 25000, 2),
(36, 'Dozdi khodro', 20000, 2),
(37, 'Foroosh e mavad e mokhader', 40000, 2),
(38, 'Tolid e mavad e mokhader', 30000, 2),
(39, 'Dashtan e mavad e mokhader', 25000, 2),
(40, 'Majrooh kardan shahrvand', 100000, 2),
(41, 'Majrooh kardan e mamoor e ghanoon', 200000, 2),
(42, 'Dozdi', 50000, 2),
(43, 'Dozdi az maghaze', 55000, 2),
(44, 'Dozdi az bank', 70000, 2),
(45, 'Shelik be shahrvandan', 50000, 3),
(46, 'Shelik be samte mamoor e ghanoon', 80000, 3),
(47, 'Eghdam be ghatle shahrvand', 40000, 3),
(48, 'Eghdam be ghatle mamoor e ghanoon', 150000, 3),
(49, 'Koshtan e shahrvand', 200000, 3),
(50, 'Koshtan e mamoor e ghanoon', 300000, 3),
(51, 'Ghatl e gheyre amd', 100000, 3),
(52, 'Kolah bardari kari', 120000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_biker`
--

CREATE TABLE `fine_types_biker` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_biker`
--

INSERT INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Akhazi', 3000, 0),
(2, 'Akhazi', 5000, 0),
(3, 'Akhazi', 10000, 1),
(4, 'Akhazi', 20000, 1),
(5, 'Akhazi', 50000, 2),
(6, 'Akhazi', 150000, 3),
(7, 'Akhazi', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_gang`
--

CREATE TABLE `fine_types_gang` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_gang`
--

INSERT INTO `fine_types_gang` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Akhazi', 3000, 0),
(2, 'Akhazi', 5000, 0),
(3, 'Akhazi', 10000, 1),
(4, 'Akhazi', 20000, 1),
(5, 'Akhazi', 50000, 2),
(6, 'Akhazi', 150000, 3),
(7, 'Akhazi', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafia`
--

CREATE TABLE `fine_types_mafia` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_mafia`
--

INSERT INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Akhazi', 3000, 0),
(2, 'Akhazi', 5000, 0),
(3, 'Akhazi', 10000, 1),
(4, 'Akhazi', 20000, 1),
(5, 'Akhazi', 50000, 2),
(6, 'Akhazi', 150000, 3),
(7, 'Akhazi', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alcool', 'Alkol', 1, 0, 1),
('alcool_cargo', 'Jabe alkol', 1, 0, 1),
('alive_chicken', 'Morgh e zende', 20, 0, 1),
('bandage', 'Chasb e zakhm', 20, 0, 1),
('blowpipe', 'Mash\'al', 10, 0, 1),
('bolcacahuetes', 'Kase badam', 5, 0, 1),
('bolchips', 'Kase chips', 5, 0, 1),
('bolnoixcajou', 'Kase ajil', 5, 0, 1),
('bolpistache', 'Kase peste', 5, 0, 1),
('bread', 'Noon', -1, 0, 1),
('cagoule', 'Neghab', -1, 0, 1),
('carokit', 'Kit e badane', 3, 0, 1),
('carotool', 'Abzar e badane', 4, 0, 1),
('clip', 'clip', -1, 0, 1),
('clothe', 'Lebas', 40, 0, 1),
('coke', 'Kokayin', 50, 0, 1),
('coke_pooch', 'Baste kokayin', 10, 0, 1),
('copper', 'Mes', 56, 0, 1),
('croquettes', 'Koofte', -1, 0, 1),
('cutted_wood', 'Choob e ghat shode', 20, 0, 1),
('diamond', 'Almas', 50, 0, 1),
('drill', 'Dereyl', 1, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('energy', 'Energy za', 5, 0, 1),
('essence', 'Esanse', 24, 0, 1),
('fabric', 'Parche', 80, 0, 1),
('fish', 'Mahi', 100, 0, 1),
('fixkit', 'Kit Tamir', 5, 0, 1),
('fixtool', 'Abzar e tamir', 6, 0, 1),
('flashlight', 'Cheragh ghove', -1, 0, 1),
('gazbottle', 'Ghooti gaz', 11, 0, 1),
('gitanes', 'Sigar', -1, 0, 1),
('gold', 'Tala', 21, 0, 1),
('golem', 'Ghool e geli', 5, 0, 1),
('grand_cru', 'Grand cru(sharab)', -1, 0, 1),
('grapperaisin', 'Daste angoor', 5, 0, 1),
('grip', 'grip', -1, 0, 1),
('ice', 'Yakh', 5, 0, 1),
('icetea', 'Ice Tea', 5, 0, 1),
('iron', 'Ahan', 42, 0, 1),
('jager', 'Jägermeister(alkol)', 5, 0, 1),
('jagerbomb', 'Jägerbomb(alkol)', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère(alkol)', 3, 0, 1),
('jewels', 'Javaher', -1, 0, 1),
('jusfruit', 'Ab mive', 5, 0, 1),
('jus_raisin', 'Ab angoor', -1, 0, 1),
('limonade', 'Limonad', 5, 0, 1),
('malbora', 'Sigar bahman', -1, 0, 1),
('martini', 'Martini blanc(sharab)', 5, 0, 1),
('medikit', 'Komak haye avaliye', 5, 0, 1),
('menthe', 'Barg e nana', 10, 0, 1),
('meth', 'Shishe', 50, 0, 1),
('meth_pooch', 'Shishe baste bandi shode', 10, 0, 1),
('metreshooter', 'Mètre de shooter(nooshidani)', 3, 0, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1),
('mojito', 'Mohito', 5, 0, 1),
('myrte', 'Moord(giyah)', -1, 0, 1),
('myrtealcool', 'Alkol e moord', -1, 0, 1),
('myrte_cargo', 'Baste moord', -1, 0, 1),
('opium', 'Teryak', 50, 0, 1),
('opium_pooch', 'Baste teryak', 10, 0, 1),
('packaged_chicken', 'Morgh e baste bandi shode', 100, 0, 1),
('packaged_plank', 'Baste takhte', 100, 0, 1),
('petrol', 'Naft', 24, 0, 1),
('petrol_raffin', 'Naft e palayesh shode', 24, 0, 1),
('raisin', 'Angoor', -1, 0, 1),
('redbull', 'RedBull', -1, 0, 1),
('redbull_cargo', 'Baste redbull', -1, 0, 1),
('rhum', 'Rhum(nooshidani)', 5, 0, 1),
('rhumcoca', 'Rhum-coca(nooshidani)', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits(nooshidani)', 5, 0, 1),
('saucisson', 'Sosis', 5, 0, 1),
('silencieux', 'Seda khafe kon', -1, 0, 1),
('slaughtered_chicken', 'Morghe koshte shode', 20, 0, 1),
('soda', 'Soda', 5, 0, 1),
('stone', 'Sang', 7, 0, 1),
('tabacblond', 'Tootoon', -1, 0, 1),
('tabacblondsec', 'Tootoon e khoshk shode', -1, 0, 1),
('tabacbrun', 'Tootoon ghahveyi', -1, 0, 1),
('tabacbrunsec', 'Tootoon ghahveyi khoshk shode', -1, 0, 1),
('teqpaf', 'Teq\'paf(nooshidani)', 5, 0, 1),
('tequila', 'Tequila(nooshidani)', 5, 0, 1),
('viande', 'Goosht', 25, 0, 1),
('vine', 'Sharab', -1, 0, 1),
('vodka', 'Vodka', 5, 0, 1),
('vodkaenergy', 'Vodka energy', 5, 0, 1),
('vodkafruit', 'Vodka e mive', 5, 0, 1),
('vodkrb', 'Vodka RedBull', -1, 0, 1),
('washed_stone', 'Sang e shoste shode', 7, 0, 1),
('water', 'Ab', -1, 0, 1),
('weed', 'Weed', 50, 0, 1),
('weed_pooch', 'Baste weed', 10, 0, 1),
('whisky', 'Whisky', 5, 0, 1),
('whiskycoc', 'Whisky CorsicaCola', -1, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wood', 'Choob', 20, 0, 1),
('wool', 'Pashm', 40, 0, 1),
('yusuf', 'Skin talayi aslahe', -1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `isjailed` tinyint(1) DEFAULT NULL,
  `J_Time` datetime NOT NULL,
  `J_Cell` varchar(20) NOT NULL,
  `Jailer` varchar(100) NOT NULL,
  `Jailer_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('aircraftdealer', 'Forooshande havapeyma', 1),
('ambulance', 'Doctor', 1),
('avocat', 'Hoghoogh dan', 1),
('bahama', 'Disco', 1),
('biker', 'Motorsavar', 1),
('boatdealer', 'Forooshande ghayegh', 1),
('cardealer', 'Forooshande mashin', 1),
('fisherman', 'Mahigir', 0),
('fueler', 'Palayesh gare naft', 0),
('lumberjack', 'Choob bor', 0),
('mafia', 'Mafia', 1),
('mecano', 'Mekanik', 1),
('miner', 'Madan kav', 0),
('police', 'Police', 1),
('realestateagent', 'Moshaver e amlak', 1),
('reporter', 'Khabar negar', 1),
('securiter', 'Amniyat meli', 0),
('slaughterer', 'Ghasab', 0),
('tabac', 'Dokhaniyat', 1),
('tailor', 'Khayat', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Biii Kar', 0),
('unicorn', 'Kabare', 1),
('vigne', 'Takestan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Bi kar', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Kar amooz', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', 'Kar amooz', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'Kar amooz', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'Kar amooz', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Kar amooz', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'Kar amooz', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'Kar amooz', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'cardealer', 0, 'recruit', 'Kar amooz', 10, '{}', '{}'),
(10, 'cardealer', 1, 'novice', 'Taze kar', 25, '{}', '{}'),
(11, 'cardealer', 2, 'experienced', 'Ba tajrobe', 40, '{}', '{}'),
(12, 'cardealer', 3, 'boss', 'Rais', 0, '{}', '{}'),
(13, 'ambulance', 0, 'ambulance', 'Ranande', 250, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(14, 'ambulance', 1, 'doctor', 'Doctor', 300, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'ambulance', 2, 'chief_doctor', 'Rais doctora', 400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'ambulance', 3, 'boss', 'Rais', 1200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'mecano', 0, 'recrue', 'Kar amooz', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_1\":65,\"torso_2\":3,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":1,\"pants_1\":38,\"shoes_1\":71,\"bags_1\":0,\"helmet_2\":1,\"pants_2\":3,\"arms\":0,\"bags_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":57,\"tshirt_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"torso_1\":65,\"torso_2\":3,\"ears_2\":0,\"glasses_2\":0,\"shoes_2\":1,\"pants_1\":38,\"shoes_1\":71,\"bags_1\":0,\"helmet_2\":1,\"pants_2\":3,\"arms\":0,\"bags_2\":0,\"helmet_1\":5}'),
(18, 'mecano', 1, 'novice', 'Taze kar', 1000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":66,\"torso_2\":0,\"pants_1\":39,\"pants_2\":0,\"shoes_1\":71,\"shoes_2\":23,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":0,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":66,\"torso_2\":0,\"pants_1\":39,\"pants_2\":0,\"shoes_1\":71,\"shoes_2\":23,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":0,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}'),
(19, 'mecano', 2, 'experimente', 'Ba tajrobe', 1500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":66,\"torso_2\":0,\"pants_1\":39,\"pants_2\":0,\"shoes_1\":71,\"shoes_2\":23,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":0,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":66,\"torso_2\":0,\"pants_1\":39,\"pants_2\":0,\"shoes_1\":71,\"shoes_2\":23,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":0,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}'),
(20, 'mecano', 3, 'chief', 'Rahbar e team', 1800, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":0,\"pants_1\":13,\"pants_2\":0,\"shoes_1\":4,\"shoes_2\":1,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":11,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":0,\"pants_1\":13,\"pants_2\":0,\"shoes_1\":4,\"shoes_2\":1,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":11,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}'),
(21, 'mecano', 4, 'boss', 'Rais', 1000, '{\"tshirt_1\":32,\"tshirt_2\":2,\"torso_1\":31,\"torso_2\":0,\"pants_1\":13,\"pants_2\":0,\"shoes_1\":21,\"shoes_2\":0,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":12,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}', '{\"tshirt_1\":32,\"tshirt_2\":2,\"torso_1\":31,\"torso_2\":0,\"pants_1\":13,\"pants_2\":0,\"shoes_1\":21,\"shoes_2\":0,\"helmet_1\":-1,\"helmet_2\":0,\"arms\":12,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0,\"bags_1\":0,\"bags_2\":0}'),
(22, 'police', 0, 'recruit', 'Sarbaz', 1000, '{}', '{}'),
(23, 'police', 1, 'officer', 'Afsar', 1400, '{}', '{}'),
(24, 'police', 2, 'sergeant', 'Goroohban', 1600, '{}', '{}'),
(25, 'police', 3, 'lieutenant', 'Sotvan', 1800, '{}', '{}'),
(26, 'police', 4, 'boss', 'Rais', 3000, '{}', '{}'),
(27, 'tabac', 0, 'recrue', 'Kar amooz', 1, '{}', '{}'),
(28, 'tabac', 1, 'gerant', 'Modir', 1, '{}', '{}'),
(29, 'tabac', 2, 'boss', 'Rais', 1, '{}', '{}'),
(30, 'taxi', 0, 'recrue', 'Kar amooz', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(31, 'taxi', 1, 'novice', 'Taze kar', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 2, 'experimente', 'Ba tajrobe', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 3, 'uber', 'Snapp', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 4, 'boss', 'Rais', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'unicorn', 0, 'barman', 'Motesadi', 300, '{}', '{}'),
(36, 'unicorn', 1, 'dancer', 'Raghas', 300, '{}', '{}'),
(37, 'unicorn', 2, 'viceboss', 'Hamahang konande', 500, '{}', '{}'),
(38, 'unicorn', 3, 'boss', 'Rais', 600, '{}', '{}'),
(39, 'vigne', 0, 'recrue', 'Kar amooz', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(40, 'vigne', 1, 'novice', 'Taze kar', 1000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(41, 'vigne', 2, 'cdisenior', 'Anbar dar', 2000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(42, 'vigne', 3, 'boss', 'Rais', 3000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(43, 'realestateagent', 0, 'location', 'Mobasher', 200, '{}', '{}'),
(44, 'realestateagent', 1, 'vendeur', 'Forooshande', 250, '{}', '{}'),
(45, 'realestateagent', 2, 'gestion', 'Modir foroosh', 350, '{}', '{}'),
(46, 'realestateagent', 3, 'boss', 'Rais', 500, '{}', '{}'),
(47, 'bahama', 0, 'recrue', 'Kar amooz', 1250, '{}', '{}'),
(48, 'bahama', 1, 'novice', 'Taze kar', 1400, '{}', '{}'),
(49, 'bahama', 2, 'experimente', 'Ba tajrobe', 1650, '{}', '{}'),
(50, 'bahama', 3, 'boss', 'Rais', 2000, '{}', '{}'),
(51, 'avocat', 1, 'chef', 'Vakil', 1100, '{}', '{}'),
(52, 'avocat', 0, 'recrue', 'Kar amooz', 900, '{}', '{}'),
(53, 'avocat', 2, 'boss', 'Rais', 1100, '{}', '{}'),
(54, 'aircraftdealer', 0, 'recruit', 'Kar amooz', 10, '{}', '{}'),
(55, 'aircraftdealer', 1, 'novice', 'Taze kar', 25, '{}', '{}'),
(56, 'aircraftdealer', 2, 'experienced', 'Herfei', 40, '{}', '{}'),
(57, 'aircraftdealer', 3, 'boss', 'Rais', 0, '{}', '{}'),
(58, 'boatdealer', 0, 'recruit', 'Kar amooz', 10, '{}', '{}'),
(59, 'boatdealer', 1, 'novice', 'Taze kar', 25, '{}', '{}'),
(60, 'boatdealer', 2, 'experienced', 'Herfei', 40, '{}', '{}'),
(61, 'boatdealer', 3, 'boss', 'Rais', 0, '{}', '{}'),
(70, 'biker', 0, 'soldato', 'Sarbaz', 50, '{}', '{}'),
(71, 'biker', 1, 'capo', 'Alcapo', 70, '{}', '{}'),
(72, 'biker', 2, 'consigliere', 'Modir', 100, '{}', '{}'),
(73, 'biker', 3, 'boss', 'Rais', 2000, '{}', '{}'),
(74, 'securiter', 0, 'agents', 'Team amniyat', 1700, '{}', '{}'),
(75, 'securiter', 1, 'boss', 'Rais', 3000, '{}', '{}'),
(76, 'mafia', 0, 'soldato', 'sarbaz', 1500, '{}', '{}'),
(77, 'mafia', 1, 'capo', 'Al capo', 1800, '{}', '{}'),
(78, 'mafia', 2, 'consigliere', 'daste rast e rais', 2100, '{}', '{}'),
(79, 'mafia', 3, 'boss', 'Rais e bozorg', 2700, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('aircraft', 'Mojavez parvaz'),
('dmv', 'Mojavez ayin name'),
('drive', 'Mojavez ranandegi'),
('drive_bike', 'Mojavez motor'),
('drive_truck', 'Mojavez kamiyoon'),
('weapon', 'Mojavez aslahe');

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `name` varchar(50) NOT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org`
--

INSERT INTO `org` (`name`, `label`) VALUES
('cartel', 'Cartel'),
('freecity', 'TaLife City'),
('gang', 'Sinaloa'),
('mafia', 'Cosa Nostra');

-- --------------------------------------------------------

--
-- Table structure for table `organisation_moneywash`
--

CREATE TABLE `organisation_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `organisation` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organisation_moneywash`
--

INSERT INTO `organisation_moneywash` (`id`, `identifier`, `organisation`, `amount`) VALUES
(1, 'steam:11000010ede2397', 'mafia', 100000),
(5, 'steam:11000010ede2397', 'mafia', 4561),
(6, 'steam:11000010ede2397', 'mafia', 52500),
(7, 'steam:11000010ede2397', 'mafia', 105000),
(8, 'steam:11000010ede2397', 'mafia', 180000),
(9, 'steam:11000010ede2397', 'mafia', 120000),
(10, 'steam:1100001325b7a9b', 'gang', 340000),
(11, 'steam:1100001325b7a9b', 'gang', 9225),
(12, 'steam:1100001325b7a9b', 'gang', 74060),
(13, 'steam:1100001325b7a9b', 'gang', 5265),
(14, 'steam:1100001179c3bb7', 'mafia', 98000),
(15, 'steam:1100001179c3bb7', 'mafia', 33000),
(16, 'steam:1100001179c3bb7', 'mafia', 38800),
(17, 'steam:1100001179c3bb7', 'mafia', 39200),
(18, 'steam:1100001179c3bb7', 'mafia', 26980),
(21, 'steam:1100001179c3bb7', 'mafia', 109000),
(22, 'steam:1100001179c3bb7', 'mafia', 50400),
(24, 'steam:1100001179c3bb7', 'mafia', 41467),
(25, 'steam:1100001179c3bb7', 'mafia', 42000),
(26, 'steam:1100001179c3bb7', 'mafia', 104620),
(27, 'steam:11000011ad5e46e', 'gang', 6666);

-- --------------------------------------------------------

--
-- Table structure for table `org_gradeorg`
--

CREATE TABLE `org_gradeorg` (
  `id` int(11) NOT NULL,
  `org_name` varchar(255) DEFAULT NULL,
  `gradeorg` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_gradeorg`
--

INSERT INTO `org_gradeorg` (`id`, `org_name`, `gradeorg`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'freecity', 0, 'freecity', 'Azad', 200, '{}', '{}'),
(2, 'mafia', 0, 'soldato', 'Sarbaz', 1500, '{}', '{}'),
(3, 'mafia', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(4, 'mafia', 2, 'consigliere', 'Capo-Chef', 2100, '{}', '{}'),
(5, 'mafia', 3, 'boss', 'Rais', 2700, '{}', '{}'),
(6, 'gang', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(7, 'gang', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(8, 'gang', 2, 'consigliere', 'Capo-Chef', 2100, '{}', '{}'),
(9, 'gang', 3, 'boss', 'Rais', 2700, '{}', '{}'),
(10, 'cartel', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(11, 'cartel', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(12, 'cartel', 2, 'consigliere', 'Chef', 2100, '{}', '{}'),
(13, 'cartel', 3, 'boss', 'Rais', 2700, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `owned_aircrafts`
--

CREATE TABLE `owned_aircrafts` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the aircraft',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_aircrafts`
--

INSERT INTO `owned_aircrafts` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:11000010d6c30cb', 1, 'RGO 302', '{\"modSpeakers\":-1,\"modGrille\":-1,\"modHood\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"pearlescentColor\":46,\"modTurbo\":false,\"modStruts\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"plateIndex\":4,\"modHorns\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"plate\":\"RGO 302 \",\"modAPlate\":-1,\"model\":-644710429,\"modSuspension\":-1,\"modEngine\":-1,\"modWindows\":-1,\"color2\":132,\"wheels\":0,\"modTank\":-1,\"modAerials\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"modFender\":-1,\"modRoof\":-1,\"modExhaust\":-1,\"dirtLevel\":7.3180675506592,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"wheelColor\":156,\"modLivery\":-1,\"modPlateHolder\":-1,\"color1\":43,\"modTrimB\":-1}'),
('steam:11000010d6c30cb', 1, 'FCK 126', '{\"dirtLevel\":3.0000002384186,\"color1\":121,\"windowTint\":-1,\"modTurbo\":false,\"modGrille\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":7,\"health\":1000,\"modSeats\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"modTank\":-1,\"modTrimA\":-1,\"modSpoilers\":-1,\"model\":-975345305,\"modOrnaments\":-1,\"wheels\":0,\"modSideSkirt\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"wheelColor\":111,\"modWindows\":-1,\"modAPlate\":-1,\"modStruts\":-1,\"plate\":\"FCK 126\",\"modRightFender\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modHydrolic\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":25,\"modSteeringWheel\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modHood\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modDial\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false}'),
('steam:11000010d6c30cb', 1, 'JWJ 840', '{\"wheels\":0,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modSuspension\":-1,\"modWindows\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"modLivery\":-1,\"health\":999,\"modGrille\":-1,\"modAirFilter\":-1,\"modRightFender\":-1,\"modVanityPlate\":-1,\"color2\":1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modPlateHolder\":-1,\"plate\":\"JWJ 840 \",\"modSteeringWheel\":-1,\"modDial\":-1,\"modHorns\":-1,\"modSmokeEnabled\":false,\"modSpoilers\":-1,\"modSideSkirt\":-1,\"modRoof\":-1,\"modExhaust\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"modDashboard\":-1,\"modShifterLeavers\":-1,\"model\":-1671539132,\"modStruts\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modHood\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"dirtLevel\":0.18582735955716,\"modFender\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"pearlescentColor\":5,\"modEngineBlock\":-1,\"color1\":3}'),
('steam:1100001325b7a9b', 1, 'IXZ 664', '{\"windowTint\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"dirtLevel\":2.028754234314,\"modGrille\":-1,\"modEngine\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modAerials\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"plate\":\"IXZ 664 \",\"modHorns\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modArmor\":-1,\"color2\":99,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modLivery\":-1,\"modTrimA\":-1,\"pearlescentColor\":111,\"wheels\":0,\"health\":912,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"model\":1077420264,\"modWindows\":-1,\"color1\":111,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modFender\":-1,\"modFrame\":-1,\"modSmokeEnabled\":1,\"wheelColor\":96,\"modTransmission\":-1,\"modDial\":-1}'),
('steam:11000011acec85a', 1, 'VKF 406', '{\"modStruts\":-1,\"wheelColor\":156,\"modBrakes\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"color2\":132,\"modTank\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"plate\":\"VKF 406 \",\"modEngine\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modAerials\":-1,\"model\":-644710429,\"neonColor\":[255,0,255],\"modRoof\":-1,\"color1\":43,\"modDoorSpeaker\":-1,\"dirtLevel\":6.1242065429688,\"modWindows\":-1,\"modHood\":-1,\"modHorns\":-1,\"modRearBumper\":-1,\"modRightFender\":-1,\"health\":939,\"modTrimA\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"plateIndex\":4,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":46,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"modSuspension\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modDial\":-1,\"modXenon\":false,\"modFender\":-1,\"windowTint\":-1,\"modSpeakers\":-1}'),
('steam:11000010d6c30cb', 1, 'COZ 199', '{\"wheels\":0,\"model\":1341619767,\"modGrille\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"pearlescentColor\":28,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modEngine\":-1,\"modEngineBlock\":-1,\"modArmor\":-1,\"plateIndex\":4,\"modFrontWheels\":-1,\"modBackWheels\":-1,\"modFrame\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"wheelColor\":1,\"modTransmission\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"neonColor\":[255,0,255],\"modSmokeEnabled\":1,\"modAPlate\":-1,\"modExhaust\":-1,\"health\":841,\"modSpeakers\":-1,\"modOrnaments\":-1,\"modTurbo\":false,\"windowTint\":-1,\"dirtLevel\":7.1210927963256,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":28,\"modAerials\":-1,\"plate\":\"COZ 199 \",\"modDial\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"color2\":28}'),
('steam:11000010dd9c7d6', 1, 'SSV 438', '{\"wheels\":0,\"model\":1824333165,\"modGrille\":-1,\"modHood\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"plateIndex\":0,\"modArmor\":-1,\"modFrontBumper\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modTank\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"modHydrolic\":-1,\"wheelColor\":121,\"modTransmission\":-1,\"modDial\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"plate\":\"SSV 438 \",\"neonColor\":[255,0,255],\"health\":714,\"modEngineBlock\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"dirtLevel\":4.8746175765992,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":122,\"modAerials\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"pearlescentColor\":25,\"modSpoilers\":-1,\"modTrimA\":-1,\"color2\":64}'),
('steam:1100001325b7a9b', 1, 'GHE 727', '{\"modAerials\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modEngineBlock\":-1,\"modFrontBumper\":-1,\"modOrnaments\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"dirtLevel\":0.17090977728366,\"modTurbo\":false,\"modBrakes\":-1,\"color2\":1,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"color1\":3,\"modArchCover\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modHood\":-1,\"modWindows\":-1,\"plate\":\"GHE 727 \",\"modBackWheels\":-1,\"wheels\":0,\"plateIndex\":4,\"modDashboard\":-1,\"modXenon\":false,\"modFender\":-1,\"modSideSkirt\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"model\":-1671539132,\"pearlescentColor\":5,\"modSuspension\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"modDial\":-1,\"modSmokeEnabled\":1,\"modPlateHolder\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modLivery\":-1,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"health\":999,\"modDoorSpeaker\":-1,\"modArmor\":-1}'),
('steam:1100001325b7a9b', 1, 'KUH 353', '{\"windowTint\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"dirtLevel\":4.007966518402,\"modGrille\":-1,\"modEngine\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modAerials\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"plate\":\"KUH 353 \",\"modHorns\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modArmor\":-1,\"color2\":7,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modLivery\":-1,\"modTrimA\":-1,\"pearlescentColor\":5,\"wheels\":0,\"health\":906,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"model\":-1763555241,\"modWindows\":-1,\"color1\":112,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modTurbo\":false,\"modFender\":-1,\"modFrame\":-1,\"modSmokeEnabled\":1,\"wheelColor\":111,\"modTransmission\":-1,\"modDial\":-1}'),
('steam:11000011acec85a', 1, 'KIM 169', '{\"windowTint\":-1,\"modOrnaments\":-1,\"modBackWheels\":-1,\"dirtLevel\":0.22708351910114,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"plate\":\"KIM 169 \",\"modHorns\":-1,\"plateIndex\":4,\"modPlateHolder\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modArmor\":-1,\"color2\":1,\"modEngineBlock\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngine\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modLivery\":-1,\"modTrimA\":-1,\"pearlescentColor\":5,\"wheels\":0,\"health\":1000,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"model\":-1671539132,\"modWindows\":-1,\"color1\":3,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modFender\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"wheelColor\":156,\"modTransmission\":-1,\"modDial\":-1}');

-- --------------------------------------------------------

--
-- Table structure for table `owned_boats`
--

CREATE TABLE `owned_boats` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the boat',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_boats`
--

INSERT INTO `owned_boats` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:11000010d6c30cb', 1, 'MVA 112', '{\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modArmor\":-1,\"color1\":111,\"modOrnaments\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modAerials\":-1,\"modDial\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modBrakes\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"wheelColor\":156,\"modFender\":-1,\"plate\":\"MVA 112 \",\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modTank\":-1,\"modAirFilter\":-1,\"health\":905,\"modDashboard\":-1,\"plateIndex\":4,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modRightFender\":-1,\"modLivery\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"model\":-311022263,\"windowTint\":-1,\"modVanityPlate\":-1,\"dirtLevel\":0.0,\"modHood\":-1,\"modTrimB\":-1,\"wheels\":0,\"pearlescentColor\":0,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modSpoilers\":-1,\"color2\":132,\"modFrontBumper\":-1,\"modSteeringWheel\":-1}'),
('steam:11000013491dae7', 1, 'AJB 756', '{\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modEngine\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"model\":867467158,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":8,\"modVanityPlate\":-1,\"plateIndex\":4,\"wheels\":0,\"modDial\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modTank\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modOrnaments\":-1,\"color2\":0,\"modTrunk\":-1,\"modTrimB\":-1,\"plate\":\"AJB 756 \",\"modHorns\":-1,\"modFrame\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSmokeEnabled\":1,\"modArmor\":-1,\"dirtLevel\":0.0,\"modHood\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"color1\":0,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1}'),
('steam:11000013491dae7', 1, 'UKK 902', '{\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modEngine\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"model\":276773164,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":8,\"modVanityPlate\":-1,\"plateIndex\":4,\"wheels\":0,\"modDial\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modTank\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modOrnaments\":-1,\"color2\":0,\"modTrunk\":-1,\"modTrimB\":-1,\"plate\":\"UKK 902 \",\"modHorns\":-1,\"modFrame\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"dirtLevel\":0.0,\"modHood\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"color1\":0,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1}'),
('steam:11000013491dae7', 1, 'RGB 459', '{\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modEngine\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"model\":-616331036,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":0,\"modVanityPlate\":-1,\"plateIndex\":4,\"wheels\":0,\"modDial\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modTank\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modOrnaments\":-1,\"color2\":132,\"modTrunk\":-1,\"modTrimB\":-1,\"plate\":\"RGB 459 \",\"modHorns\":-1,\"modFrame\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"dirtLevel\":0.0,\"modHood\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"color1\":111,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1}'),
('steam:11000013491dae7', 1, 'GOE 470', '{\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modEngine\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modAPlate\":-1,\"model\":-1030275036,\"modSideSkirt\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":62,\"modVanityPlate\":-1,\"plateIndex\":4,\"wheels\":0,\"modDial\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modTank\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modOrnaments\":-1,\"color2\":0,\"modTrunk\":-1,\"modTrimB\":-1,\"plate\":\"GOE 470 \",\"modHorns\":-1,\"modFrame\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"dirtLevel\":0.0,\"modHood\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"color1\":13,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1}'),
('steam:110000111b71726', 1, 'XIB 664', '{\"modArchCover\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"modSpeakers\":-1,\"plateIndex\":4,\"modTransmission\":-1,\"modRoof\":-1,\"modGrille\":-1,\"modLivery\":-1,\"modAPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"dirtLevel\":0.0,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modHorns\":-1,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"model\":861409633,\"plate\":\"XIB 664 \",\"modFender\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modStruts\":-1,\"health\":1000,\"modRightFender\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modDashboard\":-1,\"modHood\":-1,\"modTrimB\":-1,\"modXenon\":false,\"wheels\":0,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modTurbo\":false,\"color2\":111,\"color1\":0,\"modBackWheels\":-1,\"modWindows\":-1,\"pearlescentColor\":0}'),
('steam:11000011acec85a', 1, 'IWH 346', '{\"modFrontBumper\":-1,\"modSpoilers\":-1,\"health\":1000,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modSpeakers\":-1,\"modDashboard\":-1,\"wheels\":0,\"modHood\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"model\":-311022263,\"modSeats\":-1,\"wheelColor\":156,\"modAerials\":-1,\"dirtLevel\":0.0,\"modTransmission\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modTrunk\":-1,\"color1\":111,\"modVanityPlate\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"modFender\":-1,\"plate\":\"IWH 346 \",\"modTank\":-1,\"modArmor\":-1,\"color2\":132,\"modWindows\":-1,\"modShifterLeavers\":-1}'),
('steam:11000011acec85a', 1, 'RZV 141', '{\"modFrontBumper\":-1,\"modSpoilers\":-1,\"health\":1000,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modSpeakers\":-1,\"modDashboard\":-1,\"wheels\":0,\"modHood\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"model\":1033245328,\"modSeats\":-1,\"wheelColor\":156,\"modAerials\":-1,\"dirtLevel\":0.0,\"modTransmission\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modTrunk\":-1,\"color1\":88,\"modVanityPlate\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"modFender\":-1,\"plate\":\"RZV 141 \",\"modTank\":-1,\"modArmor\":-1,\"color2\":88,\"modWindows\":-1,\"modShifterLeavers\":-1}'),
('steam:11000011acec85a', 1, 'PTW 434', '{\"modFrontBumper\":-1,\"modSpoilers\":-1,\"health\":1000,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modSpeakers\":-1,\"modDashboard\":-1,\"wheels\":0,\"modHood\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":0,\"model\":1070967343,\"modSeats\":-1,\"wheelColor\":0,\"modAerials\":-1,\"dirtLevel\":0.0,\"modTransmission\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modTrunk\":-1,\"color1\":0,\"modVanityPlate\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":3,\"modFender\":-1,\"plate\":\"PTW 434 \",\"modTank\":-1,\"modArmor\":-1,\"color2\":0,\"modWindows\":-1,\"modShifterLeavers\":-1}'),
('steam:1100001061d0cb1', 1, 'DUB 234', '{\"modSmokeEnabled\":false,\"model\":-1043459709,\"modPlateHolder\":-1,\"modRightFender\":-1,\"wheels\":0,\"modFrontBumper\":-1,\"modLivery\":-1,\"modTank\":-1,\"modRearBumper\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modAPlate\":-1,\"plateIndex\":4,\"health\":1000,\"modAerials\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":111,\"modFrame\":-1,\"modHorns\":-1,\"modFender\":-1,\"modDoorSpeaker\":-1,\"modXenon\":false,\"modExhaust\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"dirtLevel\":0.0,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"wheelColor\":156,\"modArmor\":-1,\"color1\":111,\"color2\":68,\"windowTint\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"plate\":\"DUB 234 \",\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modAirFilter\":-1}'),
('steam:11000011acec85a', 1, 'KZR 893', '{\"modWindows\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSeats\":-1,\"health\":1000,\"modRearBumper\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"modStruts\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrunk\":-1,\"color2\":132,\"modSteeringWheel\":-1,\"modArchCover\":-1,\"pearlescentColor\":0,\"wheelColor\":156,\"modEngineBlock\":-1,\"color1\":111,\"modEngine\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modBrakes\":-1,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"plate\":\"KZR 893 \",\"neonEnabled\":[false,false,false,false],\"plateIndex\":4,\"modRoof\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"dirtLevel\":0.0,\"modTransmission\":-1,\"wheels\":0,\"modSmokeEnabled\":false,\"modHood\":-1,\"modTank\":-1,\"model\":-616331036,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modXenon\":false}'),
('steam:11000011acec85a', 1, 'HQQ 635', '{\"modFrontBumper\":-1,\"modSpoilers\":-1,\"health\":1000,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modSpeakers\":-1,\"modDashboard\":-1,\"wheels\":0,\"modHood\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modEngine\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modXenon\":false,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"model\":861409633,\"modSeats\":-1,\"wheelColor\":156,\"modAerials\":-1,\"dirtLevel\":0.0,\"modTransmission\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modTrunk\":-1,\"color1\":0,\"modVanityPlate\":-1,\"modDial\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"modFender\":-1,\"plate\":\"HQQ 635 \",\"modTank\":-1,\"modArmor\":-1,\"color2\":111,\"modWindows\":-1,\"modShifterLeavers\":-1}'),
('steam:11000011acec85a', 1, 'PQM 174', '{\"modWindows\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSeats\":-1,\"health\":1000,\"modRearBumper\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"modStruts\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrunk\":-1,\"color2\":113,\"modSteeringWheel\":-1,\"modArchCover\":-1,\"pearlescentColor\":0,\"wheelColor\":156,\"modEngineBlock\":-1,\"color1\":121,\"modEngine\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modBrakes\":-1,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"plate\":\"PQM 174 \",\"neonEnabled\":[false,false,false,false],\"plateIndex\":4,\"modRoof\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"dirtLevel\":0.0,\"modTransmission\":-1,\"wheels\":0,\"modSmokeEnabled\":false,\"modHood\":-1,\"modTank\":-1,\"model\":1448677353,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modXenon\":false}'),
('steam:11000010d6c30cb', 1, 'SCT 653', '{\"modXenon\":false,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"model\":1070967343,\"modPlateHolder\":-1,\"modSpoilers\":-1,\"color2\":0,\"wheelColor\":0,\"health\":1000,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modArchCover\":-1,\"wheels\":0,\"modAPlate\":-1,\"modSeats\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modDial\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modBrakes\":-1,\"plateIndex\":0,\"modHorns\":-1,\"modEngine\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"plate\":\"SCT 653\",\"pearlescentColor\":3,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modAerials\":-1,\"modLivery\":-1,\"color1\":0,\"dirtLevel\":0.0,\"modRearBumper\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrimB\":-1}');

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(1, 'Modern3Apartment', 1, 0, 'steam:11000011230bca7'),
(2, 'Seductive3Apartment', 1, 0, 'steam:110000134626eca'),
(3, 'Modern1Apartment', 6500, 1, 'steam:11000011230bca7'),
(4, 'LowEndApartment', 562500, 0, 'steam:11000010d6c30cb'),
(5, 'LowEndApartment', 20000, 0, 'steam:110000111b71726'),
(6, 'LowEndApartment', 18000, 0, 'steam:11000011c7b5be5'),
(7, 'Monochrome3Apartment', 885000, 0, 'steam:110000111b71726'),
(11, 'Seductive3Apartment', 700000, 0, 'steam:11000010bb4b9f1'),
(12, 'IntegrityWay30', 650000, 0, 'steam:110000111b71726'),
(13, 'LowEndApartment', 45000, 0, 'steam:11000010ed15b6b'),
(14, 'Seductive1Apartment', 1, 0, 'steam:11000010d6c30cb'),
(15, 'TinselTowersApt12', 800000, 0, 'steam:11000010cb4181f'),
(17, 'NorthConkerAvenue2045', 50000, 0, 'steam:11000011acec85a'),
(18, 'DellPerroHeightst7', 350000, 0, 'steam:11000010dd9c7d6'),
(31, 'Monochrome3Apartment', 1, 0, 'steam:110000103c6f9cc'),
(21, 'IntegrityWay28', 1, 0, 'steam:110000110c6f75a'),
(22, 'IntegrityWay28', 350000, 0, 'steam:110000119ac453f'),
(47, 'MiltonDrive', 1, 0, 'steam:1100001325b7a9b'),
(48, 'MadWayneThunder', 1, 0, 'steam:1100001325b7a9b'),
(26, 'RichardMajesticApt2', 350000, 0, 'steam:110000119ac453f'),
(45, 'TinselTowersApt12', 1, 0, 'steam:1100001325b7a9b'),
(28, 'HillcrestAvenue2874', 350000, 0, 'steam:110000119ac453f'),
(46, 'RichardMajesticApt2', 1, 0, 'steam:1100001325b7a9b'),
(30, 'MiltonDrive', 20000, 0, 'steam:110000118c34052'),
(32, 'HillcrestAvenue2874', 1, 0, 'steam:110000118c34052'),
(44, 'DellPerroHeightst4', 1, 0, 'steam:1100001325b7a9b'),
(34, 'IntegrityWay28', 350000, 0, 'steam:11000010e49b073'),
(35, 'WhispymoundDrive', 200, 0, 'steam:11000010e81d760'),
(36, 'TinselTowersApt12', 400000, 0, 'steam:11000010ed15b6b'),
(37, 'IntegrityWay28', 1, 0, 'steam:11000011acec85a'),
(38, 'LowEndApartment', 1, 0, 'steam:11000011cded001'),
(43, 'IntegrityWay28', 1, 0, 'steam:1100001325b7a9b'),
(41, 'IntegrityWay28', 350000, 0, 'steam:110000118c34052'),
(42, 'LowEndApartment', 562500, 0, 'steam:11000013613fa78'),
(49, 'RichardMajesticApt2', 100000, 0, 'steam:1100001325b7a9b'),
(50, 'HillcrestAvenue2862', 100000, 0, 'steam:1100001325b7a9b'),
(51, 'MiltonDrive', 100000, 0, 'steam:1100001325b7a9b'),
(52, 'TinselTowersApt12', 100000, 0, 'steam:1100001325b7a9b'),
(53, 'HillcrestAvenue2874', 100000, 0, 'steam:1100001325b7a9b'),
(54, 'Aqua3Apartment', 100000, 0, 'steam:1100001325b7a9b'),
(55, 'IntegrityWay28', 100000, 0, 'steam:1100001325b7a9b'),
(56, 'DellPerroHeightst4', 100000, 0, 'steam:1100001325b7a9b'),
(57, 'NorthConkerAvenue2044', 5000, 1, 'steam:11000010b3a30a0'),
(58, 'NorthConkerAvenue2045', 1000000, 1, 'steam:110000114a058a8');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) COLLATE utf8_persian_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `vehicle` longtext COLLATE utf8_persian_ci,
  `type` varchar(20) COLLATE utf8_persian_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_app_chat`
--

INSERT INTO `phone_app_chat` (`id`, `channel`, `message`, `time`) VALUES
(28, 'cartel', 'Salam be hame', '2018-11-18 17:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '113-0914', '501-1190', 0, '2018-10-22 16:52:22', 0),
(123, '501-1190', '113-0914', 1, '2018-10-22 16:52:22', 0),
(124, '562-3039', '440-5316', 1, '2018-10-23 13:04:07', 0),
(125, '440-5316', '562-3039', 0, '2018-10-23 13:04:07', 0),
(126, '440-5316', '562-3039', 1, '2018-10-23 13:04:23', 1),
(127, '562-3039', '440-5316', 0, '2018-10-23 13:04:23', 1),
(128, '440-5316', '562-3039', 0, '2018-10-23 17:08:31', 0),
(129, '562-3039', '440-5316', 1, '2018-10-23 17:08:31', 0),
(130, '440-5316', '562-3039', 1, '2018-10-23 17:11:06', 1),
(131, '562-3039', '440-5316', 0, '2018-10-23 17:11:06', 1),
(132, '501-1190', '371-8759', 1, '2018-10-24 19:28:45', 1),
(133, '371-8759', '501-1190', 0, '2018-10-24 19:28:45', 1),
(134, '371-8759', '501-1190', 0, '2018-10-24 19:28:56', 1),
(135, '501-1190', '371-8759', 1, '2018-10-24 19:28:56', 1),
(136, '371-8759', '501-1190', 1, '2018-10-24 19:51:21', 0),
(137, '501-1190', '371-8759', 0, '2018-10-24 19:51:21', 0),
(138, '501-1190', '371-8759', 0, '2018-10-24 19:51:31', 1),
(139, '371-8759', '501-1190', 1, '2018-10-24 19:51:31', 1),
(140, '501-1190', '371-8759', 1, '2018-10-24 19:51:41', 1),
(141, '371-8759', '501-1190', 0, '2018-10-24 19:51:41', 1),
(142, '371-8759', '501-1190', 1, '2018-10-24 19:56:24', 1),
(143, '501-1190', '371-8759', 0, '2018-10-24 19:56:24', 1),
(144, '562-3039', '440-5316', 0, '2018-10-25 20:00:00', 1),
(145, '440-5316', '562-3039', 1, '2018-10-25 20:00:00', 1),
(146, '562-3039', '440-5316', 1, '2018-10-25 20:05:51', 1),
(147, '440-5316', '562-3039', 0, '2018-10-25 20:05:51', 1),
(148, '827-5849', '119', 1, '2018-10-27 18:03:27', 0),
(149, '827-5849', '581-0436', 0, '2018-10-27 18:05:00', 1),
(150, '581-0436', '827-5849', 1, '2018-10-27 18:05:00', 1),
(151, '581-0436', '827-5849', 1, '2018-10-27 18:05:20', 0),
(152, '827-5849', '581-0436', 0, '2018-10-27 18:05:20', 0),
(161, '113-0914', '646-1662', 1, '2018-10-28 21:34:48', 1),
(162, '646-1662', '113-0914', 0, '2018-10-28 21:34:48', 1),
(163, '113-0914', '646-1662', 0, '2018-10-28 21:35:13', 1),
(164, '646-1662', '113-0914', 1, '2018-10-28 21:35:13', 1),
(165, '646-1662', '113-0914', 0, '2018-10-28 21:46:06', 1),
(166, '113-0914', '646-1662', 1, '2018-10-28 21:46:06', 1),
(167, '113-0914', '646-1662', 0, '2018-10-28 21:46:23', 1),
(168, '646-1662', '113-0914', 1, '2018-10-28 21:46:23', 1),
(169, '646-1662', '113-0914', 1, '2018-10-28 21:46:40', 1),
(170, '113-0914', '646-1662', 0, '2018-10-28 21:46:40', 1),
(175, '371-8759', '113-0914', 1, '2018-10-29 20:57:37', 1),
(176, '113-0914', '371-8759', 0, '2018-10-29 20:57:37', 1),
(177, '113-0914', '371-8759', 1, '2018-10-29 20:57:49', 1),
(178, '371-8759', '113-0914', 0, '2018-10-29 20:57:49', 1),
(179, '371-8759', '113-0914', 1, '2018-10-29 20:58:11', 1),
(180, '113-0914', '371-8759', 0, '2018-10-29 20:58:11', 1),
(181, '113-0914', '646-1662', 1, '2018-10-29 21:30:50', 1),
(182, '646-1662', '113-0914', 0, '2018-10-29 21:30:50', 1),
(183, '832-3320', '653-0035', 1, '2018-10-29 23:31:51', 0),
(185, '832-3320', '653-0035', 1, '2018-10-29 23:32:29', 0),
(187, '832-3320', '653-0035', 0, '2018-10-29 23:32:46', 1),
(189, '832-3320', '653-0035', 0, '2018-10-29 23:34:10', 1),
(192, '832-3320', '653-0035', 0, '2018-10-29 23:35:17', 1),
(194, '832-3320', '653-0035', 0, '2018-10-29 23:37:12', 1),
(195, '832-3320', '653-0035', 0, '2018-10-30 00:33:34', 0),
(197, '832-3320', '653-0035', 0, '2018-10-30 00:34:03', 0),
(199, '539-8421', '581-0436', 0, '2018-10-30 15:35:51', 1),
(200, '581-0436', '539-8421', 1, '2018-10-30 15:35:51', 1),
(201, '371-8759', '5398421', 1, '2018-10-30 16:06:26', 0),
(202, '216-3692', '852-5810', 1, '2018-10-30 16:47:09', 0),
(203, '852-5810', '216-3692', 0, '2018-10-30 16:47:09', 0),
(204, '216-3692', '859-9967', 1, '2018-10-30 17:10:14', 0),
(205, '859-9967', '216-3692', 0, '2018-10-30 17:10:14', 0),
(206, '852-5810', '18', 1, '2018-10-30 17:36:36', 0),
(207, '867-9776', '581-0436', 1, '2018-10-30 17:41:27', 1),
(208, '581-0436', '867-9776', 0, '2018-10-30 17:41:27', 1),
(209, '581-0436', '867-9776', 0, '2018-10-30 17:56:15', 1),
(210, '867-9776', '581-0436', 1, '2018-10-30 17:56:15', 1),
(211, '113-0914', '614-6017', 1, '2018-10-30 18:20:26', 0),
(212, '614-6017', '113-0914', 0, '2018-10-30 18:20:26', 0),
(213, '216-3692', '852-5810', 1, '2018-10-30 18:46:06', 1),
(214, '852-5810', '216-3692', 0, '2018-10-30 18:46:06', 1),
(215, '852-5810', '216-3692', 0, '2018-10-30 18:48:04', 1),
(216, '216-3692', '852-5810', 1, '2018-10-30 18:48:04', 1),
(217, '371-8759', '5398421', 1, '2018-10-30 20:00:03', 0),
(218, '581-0436', '113-0914', 1, '2018-10-30 20:05:51', 1),
(219, '113-0914', '581-0436', 0, '2018-10-30 20:05:51', 1),
(220, '113-0914', '646-1662', 1, '2018-10-30 21:18:13', 1),
(221, '646-1662', '113-0914', 0, '2018-10-30 21:18:13', 1),
(222, '113-0914', '646-1662', 1, '2018-10-30 21:19:01', 1),
(223, '646-1662', '113-0914', 0, '2018-10-30 21:19:01', 1),
(224, '646-1662', '113-0914', 0, '2018-10-30 21:20:53', 1),
(225, '113-0914', '646-1662', 1, '2018-10-30 21:20:53', 1),
(226, '646-1662', '113-0914', 1, '2018-10-30 21:24:16', 1),
(227, '113-0914', '646-1662', 0, '2018-10-30 21:24:16', 1),
(228, '113-0914', '646-1662', 1, '2018-10-30 21:25:38', 1),
(229, '646-1662', '113-0914', 0, '2018-10-30 21:25:38', 1),
(230, '646-1662', '113-0914', 0, '2018-10-30 21:27:11', 0),
(231, '113-0914', '646-1662', 1, '2018-10-30 21:27:11', 0),
(232, '646-1662', '113-0914', 1, '2018-10-30 21:27:28', 0),
(233, '113-0914', '646-1662', 0, '2018-10-30 21:27:28', 0),
(234, '646-1662', '113-0914', 1, '2018-10-30 21:27:31', 1),
(235, '113-0914', '646-1662', 0, '2018-10-30 21:27:31', 1),
(236, '646-1662', '113-0914', 0, '2018-10-30 22:02:22', 1),
(237, '113-0914', '646-1662', 1, '2018-10-30 22:02:22', 1),
(238, '832-3320', '653-0035', 1, '2018-11-01 04:48:24', 0),
(240, '832-3320', '113-0914', 0, '2018-11-01 13:12:50', 1),
(241, '113-0914', '832-3320', 1, '2018-11-01 13:12:50', 1),
(242, '967-3359', '646-1662', 1, '2018-11-01 15:42:17', 1),
(243, '646-1662', '967-3359', 0, '2018-11-01 15:42:17', 1),
(244, '967-3359', '646-1662', 0, '2018-11-01 15:45:36', 1),
(245, '646-1662', '967-3359', 1, '2018-11-01 15:45:36', 1),
(246, '967-3359', '410-8728', 0, '2018-11-01 15:46:50', 1),
(247, '410-8728', '967-3359', 1, '2018-11-01 15:46:50', 1),
(248, '967-3359', '410-8728', 0, '2018-11-01 16:21:07', 1),
(249, '410-8728', '967-3359', 1, '2018-11-01 16:21:07', 1),
(250, '581-0436', '113-0914', 1, '2018-11-01 17:11:57', 1),
(251, '113-0914', '581-0436', 0, '2018-11-01 17:11:57', 1),
(252, '581-0436', '113-0914', 0, '2018-11-01 17:15:14', 1),
(253, '113-0914', '581-0436', 1, '2018-11-01 17:15:14', 1),
(254, '113-0914', '646-1662', 1, '2018-11-01 17:30:07', 1),
(255, '646-1662', '113-0914', 0, '2018-11-01 17:30:07', 1),
(256, '113-0914', '646-1662', 1, '2018-11-01 17:37:00', 1),
(257, '646-1662', '113-0914', 0, '2018-11-01 17:37:00', 1),
(258, '113-0914', '832-3320', 0, '2018-11-01 21:04:54', 0),
(259, '832-3320', '113-0914', 1, '2018-11-01 21:04:54', 0),
(260, '113-0914', '581-0436', 1, '2018-11-02 16:48:26', 1),
(261, '581-0436', '113-0914', 0, '2018-11-02 16:48:26', 1),
(262, '718-2503', '317-1494', 1, '2018-11-04 19:46:48', 0),
(263, '317-1494', '718-2503', 0, '2018-11-04 19:46:48', 0),
(264, '910-7356', '317-1094', 1, '2018-11-05 19:41:24', 0),
(265, '910-7356', '463-5558', 1, '2018-11-06 17:54:55', 0),
(266, '910-7356', '702-4278', 1, '2018-11-06 18:10:54', 0),
(267, '702-4278', '910-7356', 0, '2018-11-06 18:10:54', 0),
(268, '910-7356', '317-1094', 1, '2018-11-06 18:19:08', 0),
(269, '910-7356', '463-5558', 1, '2018-11-06 19:27:18', 0),
(270, '317-1494', '113-0914', 0, '2018-11-06 20:00:19', 1),
(271, '113-0914', '317-1494', 1, '2018-11-06 20:00:19', 1),
(272, '317-1494', '326-0814', 0, '2018-11-07 16:30:18', 0),
(273, '326-0814', '317-1494', 1, '2018-11-07 16:30:18', 0),
(274, '317-1494', '113-0914', 0, '2018-11-08 20:38:01', 0),
(275, '113-0914', '317-1494', 1, '2018-11-08 20:38:01', 0),
(276, '113-0914', '581-0436', 0, '2018-11-09 21:27:15', 1),
(277, '581-0436', '113-0914', 1, '2018-11-09 21:27:15', 1),
(278, '581-0436', '113-0914', 1, '2018-11-09 21:29:21', 0),
(279, '113-0914', '581-0436', 0, '2018-11-09 21:29:21', 0),
(280, '113-0914', '317-1494', 0, '2018-11-09 22:09:40', 0),
(281, '317-1494', '113-0914', 1, '2018-11-09 22:09:40', 0),
(282, '113-0914', '317-1494', 0, '2018-11-09 22:22:14', 0),
(283, '317-1494', '113-0914', 1, '2018-11-09 22:22:14', 0),
(284, '317-1494', '718-2503', 1, '2018-11-10 11:57:53', 0),
(285, '718-2503', '317-1494', 0, '2018-11-10 11:57:53', 0),
(286, '317-1494', '718-2503', 1, '2018-11-10 11:59:12', 0),
(287, '718-2503', '317-1494', 0, '2018-11-10 11:59:12', 0),
(288, '718-2503', '326-0814', 1, '2018-11-10 22:33:55', 0),
(289, '326-0814', '718-2503', 0, '2018-11-10 22:33:55', 0),
(290, '326-0814', '718-2503', 0, '2018-11-10 22:35:59', 1),
(291, '718-2503', '326-0814', 1, '2018-11-10 22:35:59', 1),
(292, '326-0814', '718-2503', 0, '2018-11-10 22:36:09', 1),
(293, '718-2503', '326-0814', 1, '2018-11-10 22:36:09', 1),
(294, '326-0814', '718-2503', 0, '2018-11-10 22:38:29', 0),
(295, '718-2503', '326-0814', 1, '2018-11-10 22:38:29', 0),
(296, '317-1494', '113-0914', 0, '2018-11-10 23:00:54', 1),
(297, '113-0914', '317-1494', 1, '2018-11-10 23:00:54', 1),
(298, '113-0914', '317-1494', 1, '2018-11-10 23:00:55', 1),
(299, '317-1494', '113-0914', 0, '2018-11-10 23:00:55', 1),
(300, '317-1494', '113-0914', 1, '2018-11-10 23:01:09', 1),
(301, '113-0914', '317-1494', 0, '2018-11-10 23:01:09', 1),
(302, '317-1494', '113-0914', 0, '2018-11-10 23:01:47', 1),
(303, '113-0914', '317-1494', 1, '2018-11-10 23:01:47', 1),
(304, '326-0814', '718-2503', 1, '2018-11-10 23:03:43', 1),
(305, '718-2503', '326-0814', 0, '2018-11-10 23:03:43', 1),
(306, '317-1494', '113-0914', 0, '2018-11-10 23:05:01', 1),
(307, '113-0914', '317-1494', 1, '2018-11-10 23:05:01', 1),
(308, '113-0914', '317-1494', 1, '2018-11-10 23:52:56', 1),
(309, '317-1494', '113-0914', 0, '2018-11-10 23:52:56', 1),
(310, '317-1494', '113-0914', 0, '2018-11-10 23:53:25', 1),
(311, '113-0914', '317-1494', 1, '2018-11-10 23:53:25', 1),
(313, '113-0914', '477-7021', 1, '2018-11-11 17:08:58', 0),
(314, '317-1494', '477-7021', 0, '2018-11-12 17:11:36', 0),
(316, '326-0814', '317-1494', 1, '2018-11-18 17:40:23', 0),
(317, '317-1494', '326-0814', 0, '2018-11-18 17:40:23', 0),
(318, '317-1494', '326-0814', 0, '2018-11-18 17:40:38', 0),
(319, '326-0814', '317-1494', 1, '2018-11-18 17:40:38', 0),
(320, '718-2503', '317-1494', 1, '2018-11-18 18:39:16', 1),
(321, '317-1494', '718-2503', 0, '2018-11-18 18:39:16', 1),
(322, '326-0814', '718-2503', 0, '2018-11-18 19:02:23', 0),
(323, '718-2503', '326-0814', 1, '2018-11-18 19:02:23', 0),
(324, '718-2503', '113-0914', 1, '2018-11-18 19:02:45', 1),
(325, '113-0914', '718-2503', 0, '2018-11-18 19:02:45', 1),
(326, '113-0914', '718-2503', 0, '2018-11-18 19:03:17', 1),
(327, '718-2503', '113-0914', 1, '2018-11-18 19:03:17', 1),
(328, '113-0914', '718-2503', 0, '2018-11-18 19:04:15', 1),
(329, '718-2503', '113-0914', 1, '2018-11-18 19:04:15', 1),
(330, '113-0914', '718-2503', 0, '2018-11-18 19:04:28', 0),
(331, '718-2503', '113-0914', 1, '2018-11-18 19:04:28', 0),
(332, '113-0914', '718-2503', 0, '2018-11-18 19:04:39', 0),
(333, '718-2503', '113-0914', 1, '2018-11-18 19:04:39', 0),
(334, '718-2503', '113-0914', 1, '2018-11-18 19:04:53', 0),
(335, '113-0914', '718-2503', 0, '2018-11-18 19:04:53', 0),
(336, '562-3039', '873-7104', 0, '2019-03-13 17:49:08', 1),
(337, '873-7104', '562-3039', 1, '2019-03-13 17:49:08', 1),
(338, '562-3039', '873-7104', 0, '2019-03-13 17:49:35', 1),
(339, '873-7104', '562-3039', 1, '2019-03-13 17:49:35', 1),
(340, '873-7104', '562-3039', 0, '2019-03-13 17:55:38', 0),
(341, '562-3039', '873-7104', 1, '2019-03-13 17:55:38', 0),
(342, '873-7104', '562-3039', 0, '2019-03-13 22:07:18', 0),
(343, '562-3039', '873-7104', 1, '2019-03-13 22:07:18', 0),
(344, '562-3039', '440-5316', 1, '2019-03-13 22:07:47', 0),
(345, '531-3502', '771-1741', 1, '2019-03-14 23:18:35', 0),
(346, '771-1741', '531-3502', 0, '2019-03-14 23:18:35', 0),
(347, '562-3039', '440-5316', 1, '2019-03-15 05:22:39', 0),
(348, '771-1741', '531-3502', 1, '2019-03-15 05:39:22', 0),
(349, '531-3502', '771-1741', 0, '2019-03-15 05:39:22', 0),
(350, '531-3502', '771-1741', 0, '2019-03-15 05:40:32', 1),
(351, '771-1741', '531-3502', 1, '2019-03-15 05:40:32', 1),
(352, '906-8228', '021-1111', 1, '2019-03-16 11:18:26', 1),
(353, '021-1111', '906-8228', 0, '2019-03-16 11:18:26', 1),
(354, '771-1741', '555-0142', 1, '2019-03-16 13:53:29', 0),
(355, '827-5849', '906-8228', 1, '2019-03-16 14:01:00', 1),
(356, '906-8228', '827-5849', 0, '2019-03-16 14:01:00', 1),
(357, '827-5849', '021-1111', 0, '2019-03-16 17:24:42', 0),
(358, '021-1111', '827-5849', 1, '2019-03-16 17:24:42', 0),
(359, '827-5849', '021-1111', 0, '2019-03-16 17:24:53', 1),
(360, '021-1111', '827-5849', 1, '2019-03-16 17:24:53', 1),
(361, '906-8228', '8275849', 1, '2019-03-20 06:04:36', 0),
(362, '113-0914', '718-2503', 1, '2019-03-21 04:26:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(4613, 'ambulance', '113-0914', 'GPS: 3.6623697280884, -1127.8010253906', '2019-03-21 04:48:57', 0, 0),
(4612, 'ambulance', '113-0914', 'GPS: 3.6623697280884, -1127.8010253906', '2019-03-21 04:48:57', 0, 0),
(4611, 'ambulance', '113-0914', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-21 04:48:57', 0, 0),
(4610, 'ambulance', '113-0914', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-21 04:48:57', 0, 0),
(4609, 'ambulance', '113-0914', 'GPS: 403.77407836914, -1006.7990722656', '2019-03-21 04:31:08', 0, 0),
(4608, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:31:08', 0, 0),
(4607, 'ambulance', '113-0914', 'GPS: 403.77407836914, -1006.7990722656', '2019-03-21 04:31:08', 0, 0),
(4606, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:31:08', 0, 0),
(4605, 'ambulance', '113-0914', 'GPS: 408.34188842773, -931.84344482422', '2019-03-21 04:25:10', 1, 0),
(4604, 'ambulance', '113-0914', 'GPS: 408.34188842773, -931.84344482422', '2019-03-21 04:25:10', 1, 0),
(4603, 'ambulance', '113-0914', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-21 04:25:10', 1, 0),
(4602, 'ambulance', '113-0914', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-21 04:25:10', 1, 0),
(4601, 'ambulance', '113-0914', 'GPS: 407.55130004883, -969.54797363281', '2019-03-21 04:24:54', 1, 0),
(4600, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 04:24:54', 1, 0),
(4599, 'ambulance', '113-0914', 'GPS: 407.55130004883, -969.54797363281', '2019-03-21 04:24:54', 1, 0),
(4598, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 04:24:54', 1, 0),
(4597, 'ambulance', '113-0914', 'GPS: -264.47235107422, -1201.8953857422', '2019-03-21 04:17:13', 1, 0),
(4596, 'ambulance', '113-0914', 'GPS: -264.47235107422, -1201.8953857422', '2019-03-21 04:17:13', 1, 0),
(4595, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:17:13', 1, 0),
(4594, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:17:13', 1, 0),
(4593, 'ambulance', '113-0914', 'GPS: 220.98551940918, -984.03729248047', '2019-03-21 04:08:07', 1, 0),
(4592, 'ambulance', '113-0914', 'GPS: 220.98551940918, -984.03729248047', '2019-03-21 04:08:07', 1, 0),
(4591, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 04:08:07', 1, 0),
(4590, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 04:08:07', 1, 0),
(4589, 'ambulance', '113-0914', 'GPS: 254.05484008789, -1366.2137451172', '2019-03-21 04:01:44', 1, 0),
(4588, 'ambulance', '113-0914', 'GPS: 254.05484008789, -1366.2137451172', '2019-03-21 04:01:44', 1, 0),
(4587, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:01:44', 1, 0),
(4586, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:01:44', 1, 0),
(4585, 'ambulance', '113-0914', 'GPS: 302.21627807617, -1447.0798339844', '2019-03-21 04:01:34', 1, 0),
(4584, 'ambulance', '113-0914', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-21 04:01:34', 1, 0),
(4583, 'ambulance', '113-0914', 'GPS: 302.21627807617, -1447.0798339844', '2019-03-21 04:01:34', 1, 0),
(4582, 'ambulance', '113-0914', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-21 04:01:34', 1, 0),
(4581, 'ambulance', '113-0914', 'GPS: 248.6217956543, -1365.9290771484', '2019-03-21 04:00:37', 1, 0),
(4580, 'ambulance', '113-0914', 'GPS: 248.6217956543, -1365.9290771484', '2019-03-21 04:00:37', 1, 0),
(4579, 'ambulance', '113-0914', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-21 04:00:37', 1, 0),
(4578, 'ambulance', '113-0914', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-21 04:00:37', 1, 0),
(4577, 'ambulance', '113-0914', 'GPS: 253.88470458984, -1366.1833496094', '2019-03-21 04:00:22', 1, 0),
(4576, 'ambulance', '113-0914', 'GPS: 253.88470458984, -1366.1833496094', '2019-03-21 04:00:22', 1, 0),
(4575, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:00:22', 1, 0),
(4574, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 04:00:22', 1, 0),
(4573, 'ambulance', '113-0914', 'GPS: 254.93980407715, -1365.2664794922', '2019-03-21 03:59:17', 1, 0),
(4572, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 03:59:17', 1, 0),
(4571, 'ambulance', '113-0914', 'GPS: 254.93980407715, -1365.2664794922', '2019-03-21 03:59:17', 1, 0),
(4570, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 03:59:17', 1, 0),
(4569, 'ambulance', '113-0914', 'GPS: 255.25425720215, -1374.9132080078', '2019-03-21 03:59:00', 1, 0),
(4568, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 03:59:00', 1, 0),
(4567, 'ambulance', '113-0914', 'GPS: 255.25425720215, -1374.9132080078', '2019-03-21 03:59:00', 1, 0),
(4566, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 03:59:00', 1, 0),
(4565, 'ambulance', '113-0914', 'GPS: 254.65853881836, -1369.4475097656', '2019-03-21 03:57:11', 1, 0),
(4564, 'ambulance', '113-0914', 'GPS: 254.65853881836, -1369.4475097656', '2019-03-21 03:57:11', 1, 0),
(4563, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 03:57:11', 1, 0),
(4562, 'ambulance', '113-0914', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-21 03:57:11', 1, 0),
(4561, 'ambulance', '113-0914', 'GPS: 230.98277282715, -1367.1264648438', '2019-03-21 03:55:57', 1, 0),
(4560, 'ambulance', '113-0914', 'GPS: 230.98277282715, -1367.1264648438', '2019-03-21 03:55:57', 1, 0),
(4559, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 03:55:57', 1, 0),
(4557, '562-3039', '906-8228', 'GPS: -111.4102935791, -223.70288085938', '2019-03-20 23:47:33', 1, 1),
(4558, 'ambulance', '113-0914', 'De #113-0914 : Medical attention required: unconscious citizen!', '2019-03-21 03:55:57', 1, 0),
(4556, '906-8228', '562-3039', 'GPS: -111.4102935791, -223.70288085938', '2019-03-20 23:47:33', 1, 0),
(4555, '531-3502', '562-3039', 'GPS: -2962.013671875, 389.6237487793', '2019-03-20 06:06:44', 1, 1),
(4554, '562-3039', '531-3502', 'GPS: -2962.013671875, 389.6237487793', '2019-03-20 06:06:44', 0, 0),
(4553, '531-3502', '562-3039', 'GPS: -2953.0388183594, 391.9892578125', '2019-03-20 06:05:43', 1, 1),
(4552, '562-3039', '531-3502', 'GPS: -2953.0388183594, 391.9892578125', '2019-03-20 06:05:43', 1, 0),
(4551, '827-5849', '906-8228', 'sdas', '2019-03-20 06:05:25', 1, 1),
(4550, '906-8228', '827-5849', 'sdas', '2019-03-20 06:05:25', 0, 0),
(4549, '906-8228', '562-3039', 'GPS: -411.30087280273, 5843.7958984375', '2019-03-20 04:54:06', 1, 1),
(4548, '562-3039', '906-8228', 'GPS: -411.30087280273, 5843.7958984375', '2019-03-20 04:54:06', 1, 0),
(4547, '906-8228', '562-3039', 'GPS: 2.8106906414032, -333.65463256836', '2019-03-20 04:04:18', 1, 1),
(4546, '562-3039', '906-8228', 'GPS: 2.8106906414032, -333.65463256836', '2019-03-20 04:04:18', 1, 0),
(4545, 'ambulance', '531-3502', 'GPS: 299.88250732422, -1060.1716308594', '2019-03-18 01:48:49', 0, 0),
(4544, 'ambulance', '531-3502', 'GPS: 299.88250732422, -1060.1716308594', '2019-03-18 01:48:49', 0, 0),
(4543, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:48:49', 0, 0),
(4542, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:48:49', 0, 0),
(4541, 'ambulance', '531-3502', 'GPS: 295.42343139648, -1066.8034667969', '2019-03-18 01:47:53', 0, 0),
(4540, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:47:53', 0, 0),
(4539, 'ambulance', '531-3502', 'GPS: 295.42343139648, -1066.8034667969', '2019-03-18 01:47:53', 0, 0),
(4538, 'ambulance', '531-3502', 'GPS: 295.42343139648, -1066.8034667969', '2019-03-18 01:47:53', 0, 0),
(4537, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:47:53', 0, 0),
(4536, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:47:53', 0, 0),
(4535, 'ambulance', '531-3502', 'GPS: 295.42343139648, -1066.8034667969', '2019-03-18 01:47:53', 0, 0),
(4534, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:47:53', 0, 0),
(4533, 'ambulance', '531-3502', 'GPS: 309.24533081055, -1070.9304199219', '2019-03-18 01:47:45', 0, 0),
(4532, 'ambulance', '531-3502', 'GPS: 309.24533081055, -1070.9304199219', '2019-03-18 01:47:45', 0, 0),
(4531, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:47:45', 0, 0),
(4530, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:47:45', 0, 0),
(4529, 'ambulance', '531-3502', 'GPS: 316.1955871582, -1073.8541259766', '2019-03-18 01:46:42', 0, 0),
(4528, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:46:42', 0, 0),
(4527, 'ambulance', '531-3502', 'GPS: 316.1955871582, -1073.8541259766', '2019-03-18 01:46:42', 0, 0),
(4526, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:46:42', 0, 0),
(4525, 'ambulance', '531-3502', 'GPS: 297.49337768555, -1045.4708251953', '2019-03-18 01:46:31', 0, 0),
(4524, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:46:31', 0, 0),
(4523, 'ambulance', '531-3502', 'GPS: 297.49337768555, -1045.4708251953', '2019-03-18 01:46:31', 0, 0),
(4522, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:46:31', 0, 0),
(4521, 'ambulance', '531-3502', 'GPS: 457.7282409668, -998.42181396484', '2019-03-18 01:45:21', 0, 0),
(4520, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:45:21', 0, 0),
(4519, 'ambulance', '531-3502', 'GPS: 457.7282409668, -998.42181396484', '2019-03-18 01:45:21', 0, 0),
(4518, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:45:21', 0, 0),
(4517, 'ambulance', '531-3502', 'GPS: 465.13244628906, -998.32769775391', '2019-03-18 01:45:02', 0, 0),
(4516, 'ambulance', '531-3502', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-18 01:45:01', 0, 0),
(4515, 'ambulance', '531-3502', 'GPS: 465.13244628906, -998.32769775391', '2019-03-18 01:45:01', 0, 0),
(4514, 'ambulance', '531-3502', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-18 01:45:01', 0, 0),
(4513, 'ambulance', '531-3502', 'GPS: 464.31423950195, -994.65277099609', '2019-03-18 01:44:45', 0, 0),
(4512, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:44:45', 0, 0),
(4511, 'ambulance', '531-3502', 'GPS: 464.31423950195, -994.65277099609', '2019-03-18 01:44:45', 0, 0),
(4510, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:44:45', 0, 0),
(4509, 'ambulance', '531-3502', 'GPS: 457.35708618164, -997.8720703125', '2019-03-18 01:44:01', 0, 0),
(4508, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:44:01', 0, 0),
(4507, 'ambulance', '531-3502', 'GPS: 457.35708618164, -997.8720703125', '2019-03-18 01:44:01', 0, 0),
(4506, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:44:01', 0, 0),
(4505, 'ambulance', '531-3502', 'GPS: 457.00387573242, -997.41674804688', '2019-03-18 01:42:52', 0, 0),
(4504, 'ambulance', '531-3502', 'GPS: 457.00387573242, -997.41674804688', '2019-03-18 01:42:52', 0, 0),
(4503, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:42:52', 0, 0),
(4502, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:42:52', 0, 0),
(4501, 'ambulance', '531-3502', 'GPS: 334.13189697266, -1390.1577148438', '2019-03-18 01:39:46', 0, 0),
(4500, 'ambulance', '531-3502', 'GPS: 334.13189697266, -1390.1577148438', '2019-03-18 01:39:46', 0, 0),
(4499, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:39:46', 0, 0),
(4498, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:39:46', 0, 0),
(4497, 'ambulance', '531-3502', 'GPS: 288.38290405273, -1412.4653320313', '2019-03-18 01:38:54', 0, 0),
(4496, 'ambulance', '531-3502', 'GPS: 288.38290405273, -1412.4653320313', '2019-03-18 01:38:54', 0, 0),
(4495, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:38:53', 0, 0),
(4493, 'ambulance', '531-3502', 'GPS: 288.67385864258, -1411.6431884766', '2019-03-18 01:38:47', 0, 0),
(4494, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:38:53', 0, 0),
(4491, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:38:47', 0, 0),
(4492, 'ambulance', '531-3502', 'GPS: 288.67385864258, -1411.6431884766', '2019-03-18 01:38:47', 0, 0),
(4490, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:38:47', 0, 0),
(4489, 'ambulance', '531-3502', 'GPS: 296.02856445313, -1399.0745849609', '2019-03-18 01:36:53', 0, 0),
(4488, 'ambulance', '531-3502', 'GPS: 296.02856445313, -1399.0745849609', '2019-03-18 01:36:53', 0, 0),
(4487, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:36:53', 0, 0),
(4486, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:36:53', 0, 0),
(4485, 'ambulance', '531-3502', 'GPS: 299.41528320313, -1394.1218261719', '2019-03-18 01:36:37', 0, 0),
(4484, 'ambulance', '531-3502', 'GPS: 299.41528320313, -1394.1218261719', '2019-03-18 01:36:37', 0, 0),
(4483, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:36:37', 0, 0),
(4482, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:36:37', 0, 0),
(4481, 'ambulance', '531-3502', 'GPS: 300.74295043945, -1398.3189697266', '2019-03-18 01:36:28', 0, 0),
(4480, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:36:28', 0, 0),
(4479, 'ambulance', '531-3502', 'GPS: 300.74295043945, -1398.3189697266', '2019-03-18 01:36:28', 0, 0),
(4478, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:36:28', 0, 0),
(4477, 'ambulance', '531-3502', 'GPS: 385.55825805664, -857.31396484375', '2019-03-18 01:35:56', 0, 0),
(4476, 'ambulance', '531-3502', 'GPS: 385.55825805664, -857.31396484375', '2019-03-18 01:35:56', 0, 0),
(4475, 'ambulance', '531-3502', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-18 01:35:56', 0, 0),
(4474, 'ambulance', '531-3502', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-18 01:35:56', 0, 0),
(4473, 'ambulance', '531-3502', 'GPS: 406.59332275391, -882.5908203125', '2019-03-18 01:33:48', 0, 0),
(4472, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:33:48', 0, 0),
(4471, 'ambulance', '531-3502', 'GPS: 406.59332275391, -882.5908203125', '2019-03-18 01:33:48', 0, 0),
(4470, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:33:48', 0, 0),
(4469, 'ambulance', '531-3502', 'GPS: -191.66987609863, -1300.3854980469', '2019-03-18 01:31:03', 0, 0),
(4468, 'ambulance', '531-3502', 'GPS: -191.66987609863, -1300.3854980469', '2019-03-18 01:31:03', 0, 0),
(4467, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:31:03', 0, 0),
(4466, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:31:03', 0, 0),
(4465, 'ambulance', '531-3502', 'GPS: -208.17010498047, -1319.4368896484', '2019-03-18 01:28:11', 0, 0),
(4464, 'ambulance', '531-3502', 'GPS: -208.17010498047, -1319.4368896484', '2019-03-18 01:28:11', 0, 0),
(4463, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:28:11', 0, 0),
(4462, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-18 01:28:11', 0, 0),
(4461, 'ambulance', '531-3502', 'GPS: -212.5772857666, -1327.8458251953', '2019-03-18 01:27:56', 0, 0),
(4460, 'ambulance', '531-3502', 'GPS: -212.5772857666, -1327.8458251953', '2019-03-18 01:27:56', 0, 0),
(4459, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:27:56', 0, 0),
(4458, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:27:56', 0, 0),
(4457, 'ambulance', '531-3502', 'GPS: -210.34941101074, -1329.7774658203', '2019-03-18 01:27:54', 0, 0),
(4456, 'ambulance', '531-3502', 'GPS: -210.34941101074, -1329.7774658203', '2019-03-18 01:27:54', 0, 0),
(4455, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:27:54', 0, 0),
(4454, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:27:54', 0, 0),
(4453, 'ambulance', '531-3502', 'GPS: -258.68927001953, -1296.3463134766', '2019-03-18 01:25:05', 0, 0),
(4452, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:25:05', 0, 0),
(4451, 'ambulance', '531-3502', 'GPS: -258.68927001953, -1296.3463134766', '2019-03-18 01:25:05', 0, 0),
(4450, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:25:05', 0, 0),
(4449, 'ambulance', '531-3502', 'GPS: 413.45928955078, -975.93530273438', '2019-03-18 01:09:16', 0, 0),
(4448, 'ambulance', '531-3502', 'GPS: 413.45928955078, -975.93530273438', '2019-03-18 01:09:16', 0, 0),
(4447, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:09:16', 0, 0),
(4446, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:09:16', 0, 0),
(4445, 'ambulance', '531-3502', 'GPS: 316.12762451172, -271.22973632813', '2019-03-18 01:05:47', 0, 0),
(4444, 'ambulance', '531-3502', 'GPS: 316.12762451172, -271.22973632813', '2019-03-18 01:05:47', 0, 0),
(4443, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:47', 0, 0),
(4442, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:47', 0, 0),
(4441, 'ambulance', '531-3502', 'GPS: 316.12734985352, -271.23358154297', '2019-03-18 01:05:47', 0, 0),
(4440, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:47', 0, 0),
(4439, 'ambulance', '531-3502', 'GPS: 316.12734985352, -271.23358154297', '2019-03-18 01:05:47', 0, 0),
(4438, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:47', 0, 0),
(4437, 'ambulance', '531-3502', 'GPS: 314.19555664063, -267.99566650391', '2019-03-18 01:05:35', 0, 0),
(4436, 'ambulance', '531-3502', 'GPS: 314.19555664063, -267.99566650391', '2019-03-18 01:05:35', 0, 0),
(4435, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:35', 0, 0),
(4434, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:35', 0, 0),
(4433, 'ambulance', '531-3502', 'GPS: 261.50448608398, -225.85029602051', '2019-03-18 01:05:03', 0, 0),
(4432, 'ambulance', '531-3502', 'GPS: 261.50448608398, -225.85029602051', '2019-03-18 01:05:03', 0, 0),
(4431, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:03', 0, 0),
(4430, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:05:03', 0, 0),
(4429, 'ambulance', '531-3502', 'GPS: -124.56313323975, -900.93957519531', '2019-03-18 01:00:37', 0, 0),
(4428, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:00:37', 0, 0),
(4427, 'ambulance', '531-3502', 'GPS: -124.56313323975, -900.93957519531', '2019-03-18 01:00:37', 0, 0),
(4426, 'ambulance', '531-3502', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-18 01:00:37', 0, 0),
(4425, 'taxi', '906-8228', 'GPS: -139.63047790527, -898.60546875', '2019-03-18 00:59:26', 1, 0),
(4424, 'taxi', '906-8228', 'De #827-5849 : salam', '2019-03-18 00:59:26', 1, 0),
(4423, 'ambulance', '531-3502', 'GPS: -66.288803100586, -1760.1213378906', '2019-03-17 19:22:42', 0, 0),
(4422, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-17 19:22:42', 0, 0),
(4421, 'ambulance', '531-3502', 'GPS: -66.288803100586, -1760.1213378906', '2019-03-17 19:22:42', 0, 0),
(4420, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-17 19:22:42', 0, 0),
(4419, 'ambulance', '531-3502', 'GPS: 304.51467895508, -1480.2135009766', '2019-03-17 19:16:36', 0, 0),
(4418, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-17 19:16:36', 0, 0),
(4417, 'ambulance', '531-3502', 'GPS: 304.51467895508, -1480.2135009766', '2019-03-17 19:16:36', 0, 0),
(4416, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-17 19:16:36', 0, 0),
(4415, 'ambulance', '531-3502', 'GPS: 1613.1394042969, 2544.1184082031', '2019-03-17 18:59:08', 0, 0),
(4414, 'ambulance', '531-3502', 'GPS: 1613.1394042969, 2544.1184082031', '2019-03-17 18:59:08', 0, 0),
(4413, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-17 18:59:08', 0, 0),
(4412, 'ambulance', '531-3502', 'De #531-3502 : Medical attention required: unconscious citizen!', '2019-03-17 18:59:07', 0, 0),
(4411, 'mecano', '771-1741', 'GPS: -961.21264648438, -205.51640319824', '2019-03-16 21:21:38', 1, 0),
(4409, 'ambulance', '531-3502', 'GPS: -204.94473266602, -1327.6772460938', '2019-03-16 21:15:41', 0, 0),
(4408, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-16 21:15:41', 0, 0),
(4407, 'ambulance', '531-3502', 'GPS: -204.94473266602, -1327.6772460938', '2019-03-16 21:15:41', 0, 0),
(4406, 'ambulance', '531-3502', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-16 21:15:41', 0, 0),
(4405, 'ambulance', '531-3502', 'GPS: 230.81948852539, -1028.4572753906', '2019-03-16 21:12:09', 1, 0),
(4404, 'ambulance', '531-3502', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-16 21:12:09', 1, 0),
(4403, 'ambulance', '531-3502', 'GPS: 230.81948852539, -1028.4572753906', '2019-03-16 21:12:09', 1, 0),
(4402, 'ambulance', '531-3502', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-16 21:12:09', 1, 0),
(4401, 'mecano', '827-5849', 'GPS: -278.59735107422, -1118.8641357422', '2019-03-16 20:49:04', 1, 0),
(4400, 'mecano', '827-5849', 'De #906-8228 : Komak', '2019-03-16 20:49:04', 1, 0),
(4399, 'mecano', '771-1741', 'GPS: -278.59735107422, -1118.8641357422', '2019-03-16 20:49:04', 1, 0),
(4398, 'mecano', '771-1741', 'De #906-8228 : Komak', '2019-03-16 20:49:04', 1, 0),
(4397, 'mecano', '021-1111', 'GPS: 1092.2731933594, -185.35543823242', '2019-03-16 17:45:44', 0, 0),
(4396, 'mecano', '021-1111', 'De #021-1111 : help', '2019-03-16 17:45:44', 0, 0),
(4395, 'mecano', '827-5849', 'GPS: 1092.2731933594, -185.35543823242', '2019-03-16 17:45:44', 1, 0),
(4394, 'mecano', '827-5849', 'De #021-1111 : help', '2019-03-16 17:45:44', 1, 0),
(4393, 'ambulance', '906-8228', 'GPS: 461.30511474609, -993.03082275391', '2019-03-16 12:37:27', 1, 0),
(4392, 'ambulance', '906-8228', 'De #771-1741 : Medical attention required: unconscious citizen!', '2019-03-16 12:37:27', 1, 0),
(4391, 'ambulance', '906-8228', 'GPS: 461.30511474609, -993.03082275391', '2019-03-16 12:37:27', 1, 0),
(4390, 'ambulance', '906-8228', 'De #771-1741 : Medical attention required: unconscious citizen!', '2019-03-16 12:37:27', 1, 0),
(4389, 'ambulance', '906-8228', 'GPS: 411.12548828125, -996.74322509766', '2019-03-16 12:33:20', 1, 0),
(4388, 'ambulance', '906-8228', 'De #771-1741 : Medical attention required: unconscious citizen!', '2019-03-16 12:33:20', 1, 0),
(4387, 'ambulance', '906-8228', 'GPS: 411.12548828125, -996.74322509766', '2019-03-16 12:33:20', 1, 0),
(4386, 'ambulance', '906-8228', 'De #771-1741 : Medical attention required: unconscious citizen!', '2019-03-16 12:33:20', 1, 0),
(4385, 'ambulance', '906-8228', 'GPS: 410.58245849609, -993.48876953125', '2019-03-16 12:32:14', 1, 0),
(4384, 'ambulance', '906-8228', 'De #771-1741 : Medical attention required: unconscious citizen!', '2019-03-16 12:32:14', 1, 0),
(4383, 'ambulance', '906-8228', 'GPS: 410.58245849609, -993.48876953125', '2019-03-16 12:32:14', 1, 0),
(4382, 'ambulance', '906-8228', 'De #771-1741 : Medical attention required: unconscious citizen!', '2019-03-16 12:32:14', 1, 0),
(4381, 'ambulance', '906-8228', 'GPS: -296.86563110352, -1150.6784667969', '2019-03-16 12:28:58', 1, 0),
(4380, 'ambulance', '906-8228', 'GPS: -296.86563110352, -1150.6784667969', '2019-03-16 12:28:58', 1, 0),
(4379, 'ambulance', '906-8228', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-16 12:28:58', 1, 0),
(4378, 'ambulance', '906-8228', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-16 12:28:58', 1, 0),
(4377, 'ambulance', '906-8228', 'GPS: -243.1597442627, -1078.0612792969', '2019-03-16 12:23:11', 1, 0),
(4376, 'ambulance', '906-8228', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-16 12:23:11', 1, 0),
(4375, 'ambulance', '906-8228', 'GPS: -243.1597442627, -1078.0612792969', '2019-03-16 12:23:11', 1, 0),
(4374, 'ambulance', '906-8228', 'De #562-3039 : Medical attention required: unconscious citizen!', '2019-03-16 12:23:11', 1, 0),
(4373, 'ambulance', '906-8228', 'GPS: -210.13479614258, -1330.0242919922', '2019-03-16 12:22:27', 1, 0),
(4372, 'ambulance', '906-8228', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-16 12:22:27', 1, 0),
(4371, 'ambulance', '906-8228', 'GPS: -210.13479614258, -1330.0242919922', '2019-03-16 12:22:27', 1, 0),
(4370, 'ambulance', '906-8228', 'De #906-8228 : Medical attention required: unconscious citizen!', '2019-03-16 12:22:27', 1, 0),
(4369, 'ambulance', '906-8228', 'GPS: -214.37565612793, -1329.2596435547', '2019-03-16 12:17:16', 1, 0),
(4368, 'ambulance', '906-8228', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-16 12:17:16', 1, 0),
(4367, 'ambulance', '906-8228', 'GPS: -214.37565612793, -1329.2596435547', '2019-03-16 12:17:16', 1, 0),
(4366, 'ambulance', '906-8228', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-16 12:17:16', 1, 0),
(4365, 'ambulance', '906-8228', 'GPS: -214.37565612793, -1329.2596435547', '2019-03-16 12:16:59', 1, 0),
(4364, 'ambulance', '906-8228', 'GPS: -214.37565612793, -1329.2596435547', '2019-03-16 12:16:59', 1, 0),
(4363, 'ambulance', '906-8228', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-16 12:16:59', 1, 0),
(4362, 'ambulance', '906-8228', 'De #827-5849 : Medical attention required: unconscious citizen!', '2019-03-16 12:16:59', 1, 0),
(4361, 'mecano', '021-1111', 'GPS: 406.6474609375, -915.4189453125', '2019-03-16 12:10:46', 1, 0),
(4360, 'mecano', '021-1111', 'De #827-5849 : salam', '2019-03-16 12:10:46', 1, 0),
(4359, 'mecano', '021-1111', 'GPS: 2944.0178222656, 4584.2983398438', '2019-03-16 12:10:44', 1, 0),
(4358, 'mecano', '021-1111', 'De #906-8228 : Hi', '2019-03-16 12:10:44', 1, 0),
(4357, 'mecano', '021-1111', 'GPS: -213.81507873535, -1326.5788574219', '2019-03-16 11:22:51', 1, 0),
(4356, 'mecano', '021-1111', 'De #906-8228 : Biya', '2019-03-16 11:22:51', 1, 0),
(4355, 'mecano', '021-1111', 'GPS: 339.1076965332, -1313.0628662109', '2019-03-16 11:14:01', 1, 0),
(4354, 'mecano', '021-1111', 'De #906-8228 : Biya', '2019-03-16 11:14:01', 1, 0),
(4353, 'ambulance', '906-8228', 'GPS: 337.97592163086, -1311.1557617188', '2019-03-16 11:12:40', 1, 0),
(4352, 'ambulance', '906-8228', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-16 11:12:40', 1, 0),
(4351, 'ambulance', '906-8228', 'GPS: 337.97592163086, -1311.1557617188', '2019-03-16 11:12:40', 1, 0),
(4350, 'ambulance', '906-8228', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-16 11:12:40', 1, 0),
(4349, 'ambulance', '906-8228', 'GPS: 345.59436035156, -1311.8892822266', '2019-03-16 10:42:09', 1, 0),
(4348, 'ambulance', '906-8228', 'GPS: 345.59436035156, -1311.8892822266', '2019-03-16 10:42:09', 1, 0),
(4347, 'ambulance', '906-8228', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-16 10:42:09', 1, 0),
(4346, 'ambulance', '906-8228', 'De #021-1111 : Medical attention required: unconscious citizen!', '2019-03-16 10:42:09', 1, 0),
(4345, 'ambulance', '906-8228', 'GPS: -74.27220916748, -1090.58984375', '2019-03-16 10:25:41', 1, 0),
(4344, 'ambulance', '906-8228', 'De #906-8228 : as', '2019-03-16 10:25:40', 1, 0),
(4343, '5313502', '771-1741', 'AAA', '2019-03-14 23:19:40', 1, 1),
(4342, '531-3502', '771-1741', 'Salam', '2019-03-14 23:18:05', 1, 1),
(4341, '771-1741', '531-3502', 'Salam', '2019-03-14 23:18:05', 1, 0),
(4340, '531-3502', '771-1741', 'asdasdas', '2019-03-14 23:17:56', 1, 1),
(4338, 'taxi', '873-7104', 'GPS: -48.730010986328, -1096.9387207031', '2019-03-13 17:52:07', 1, 0),
(4339, '771-1741', '531-3502', 'asdasdas', '2019-03-14 23:17:56', 1, 0),
(4337, 'taxi', '873-7104', 'De #562-3039 : kir', '2019-03-13 17:52:07', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(7, 'steam:110000131d556ee', '646-1662', 'Paco'),
(8, 'steam:11000011230bca7', '696-4507', 'Tayler Anderson'),
(9, 'steam:110000134626eca', '249-9884', 'luca kennan'),
(10, 'steam:11000011a59b3fc', '416-0570', 'Trevis'),
(11, 'steam:11000011a59b3fc', '696-4507', 'Bae :3'),
(12, 'steam:110000117d510a6', '440-5316', 'Erwan bg'),
(13, 'steam:110000134626eca', '753-9558', 'baby'),
(14, 'steam:110000134626eca', '562-3039', 'martin'),
(15, 'steam:110000134626eca', '104-0089', 'joy'),
(16, 'steam:110000111b71726', '113-0914', 'Koba Devinson '),
(17, 'steam:11000013491dae7', '696-4507', 'tayler'),
(18, 'steam:110000111b71726', '371-8759', 'Mike Bradd'),
(138, 'steam:110000118c34052', '172-6834', 'Kane'),
(20, 'steam:110000111b71726', '646-1662', 'Paco Devinson'),
(21, 'steam:11000010719503b', '696-4507', 'Avocat'),
(22, 'steam:110000134626eca', '501-1190', 'arthur'),
(23, 'steam:110000111b71726', '696-4507', 'Tayler Anderson'),
(24, 'steam:110000111b71726', '539-8421', 'Damon Bradd'),
(25, 'steam:110000131d556ee', '113-0914', 'Koba'),
(26, 'steam:110000131d556ee', '501-1190', 'Arthur'),
(137, 'steam:11000011c0b0ace', '262-7972', 'Torretto'),
(29, 'steam:11000013491dae7', '501-1190', 'le collegue'),
(30, 'steam:110000111b71726', '440-5316', 'Erwan Jones '),
(31, 'steam:110000111b71726', '614-6017', 'Aleksei Kislev'),
(32, 'steam:110000131d556ee', '531-3502', 'ferman'),
(33, 'steam:11000011c7b5be5', '249-9884', 'Lucas immo'),
(82, 'steam:11000010f3c770c', '317-1494', 'Ewen / Averiguo'),
(35, 'steam:11000010719503b', '873-7104', 'Theo Grenier'),
(36, 'steam:11000011acec85a', '172-6834', 'Kane Duke'),
(37, 'steam:110000131d556ee', '440-5316', 'Erwan'),
(122, 'steam:110000110c6f75a', '718-1503', 'antonio'),
(57, 'steam:11000010e555ae1', '852-5810', 'Copain'),
(40, 'steam:11000011c7b5be5', '419-3743', 'Mathieu'),
(41, 'steam:110000110c6f75a', '653-0035', 'Sergent Eric Lebrun'),
(42, 'steam:11000011c7b5be5', '832-3320', 'Sam Quebec'),
(43, 'steam:110000111b71726', '827-5849', 'Rayane Daoudi'),
(44, 'steam:110000111b71726', '867-9776', 'Dwayne Lyon'),
(56, 'steam:11000010cb4181f', '113-0914', 'Koba'),
(55, 'steam:11000011555ac07', '653-0035', 'Eric Lebrun'),
(47, 'steam:110000110c6f75a', '832-3320', 'Cadet Sam Wilster'),
(48, 'steam:11000010032f30a', '873-7104', 'Theo Grenier'),
(49, 'steam:11000010cb4181f', '5398421', 'frero'),
(121, 'steam:11000010f3c770c', '326-0814', 'Calvin'),
(51, 'steam:11000011ad5e46e', '646-1662', 'Paco'),
(52, 'steam:11000011ad5e46e', '371-8759', 'Mike'),
(53, 'steam:110000111a58cab', '477-7021', 'Blake Frost (COMMANDANT'),
(54, 'steam:11000011acec85a', '753-2759', 'Lucas Rodriguez'),
(58, 'steam:110000108f366a1', '216-3692', 'Copain'),
(59, 'steam:11000010e555ae1', '859-9967', 'zac'),
(60, 'steam:1100001179c3bb7', '216-3692', 'allain'),
(61, 'steam:11000010bb4b9f1', '581-0436', 'Lyon'),
(62, 'steam:110000108f366a1', '859-9967', 'Zac'),
(63, 'steam:1100001179c3bb7', '852-5810', 'francis'),
(64, 'steam:11000011ad5e46e', '832-3320', 'Sam Wilster'),
(65, 'steam:11000011555ac07', '113-0914', 'Koba'),
(66, 'steam:11000011ad5e46e', '859-9967', 'Zac'),
(67, 'steam:11000011ad5e46e', '408-5733', 'Alex'),
(68, 'steam:1100001179c3bb7', '408-5733', 'delta'),
(69, 'steam:11000011ad5e46e', '477-7021', 'Blake '),
(70, 'steam:11000011acec85a', '113-0914', 'Koba Devinson'),
(71, 'steam:11000013582fc5f', '410-8728', 'Dato'),
(72, 'steam:11000013621a142', '967-3359', 'mark'),
(73, 'steam:11000013621a142', '646-1662', 'paco'),
(74, 'steam:1100001154fdc54', '113-0914', 'Koba Mecano'),
(75, 'steam:1100001179c3bb7', '113-0914', 'koba'),
(76, 'steam:11000011ce402c4', '113-0914', 'Koba'),
(77, 'steam:110000111a58cab', '113-0914', 'Koba Devinson'),
(78, 'steam:11000011ad5e46e', '581-0436', 'Lucious'),
(79, 'steam:110000110c6f75a', '113-0914', 'koba mecano'),
(80, 'steam:11000011ad5e46e', '531-3502', 'Ferman Omerta'),
(81, 'steam:11000010cb4181f', '581-0436', 'Crims'),
(83, 'steam:1100001325b7a9b', '859-9967', 'Zac Efron'),
(84, 'steam:1100001325b7a9b', '262-7972', 'Dominic Torreto'),
(85, 'steam:110000118c34052', '317-1494', 'Areviguo Dimmuratale'),
(86, 'steam:110000119ac453f', '317-1494', 'EWEN PD'),
(96, 'steam:110000111593e00', '317-1094', 'Ewen /Averigo'),
(88, 'steam:1100001325b7a9b', '646-1662', 'Fréro'),
(89, 'steam:110000118c34052', '646-1662', 'Paco Benderas'),
(90, 'steam:1100001179c3bb7', '646-1662', 'paco'),
(91, 'steam:110000119ac453f', '859-9967', 'ZACOUILLE'),
(92, 'steam:110000118c34052', '859-9977', 'Zac Efron'),
(93, 'steam:1100001325b7a9b', '477-7021', 'Blake Frost'),
(94, 'steam:11000011acec85a', '317-1494', 'Averiguo Dimmurtale'),
(95, 'steam:1100001325b7a9b', '581-0436', 'Lucious Lyon'),
(97, 'steam:1100001325b7a9b', '910-7356', 'Malia Hale'),
(98, 'steam:11000011acec85a', '910-7356', 'Malia Hale'),
(99, 'steam:110000111593e00', '317-1494', 'Averigo'),
(100, 'steam:110000111593e00', '477-7021', 'Frost Flic'),
(101, 'steam:110000111593e00', '463-5558', 'Hari le S'),
(102, 'steam:110000111593e00', '702-4278', 'Bastien LPB'),
(103, 'steam:11000010e81d760', '702-4278', 'Friendzoné'),
(104, 'steam:1100001325b7a9b', '702-4278', 'Michel Bastien'),
(105, 'steam:110000118c34052', '653-0035', 'Eric Lebrun'),
(106, 'steam:1100001325b7a9b', '463-5058', 'Hari Clark'),
(107, 'steam:1100001325b7a9b', '113-0914', 'Koba Devinson'),
(108, 'steam:11000011ad5e46e', '317-1494', 'Averiguo'),
(109, 'steam:110000110c6f75a', '317-1494', 'Averigo patron'),
(110, 'steam:1100001325b7a9b', '326-0814', 'Calvin Danson'),
(111, 'steam:110000111593e00', '326-0814', 'Calvin Danson Gang '),
(112, 'steam:11000011d24e38e', '', 'Nouveau Contact'),
(113, 'steam:1100001325b7a9b', '531-3502', 'Ferman Omerta'),
(114, 'steam:11000011acec85a', '531-3502', 'Ferman Omerta'),
(115, 'steam:11000010ed15b6b', '477-7021', 'Danton Employée'),
(116, 'steam:1100001325b7a9b', '172-6834', 'Kane Duke'),
(117, 'steam:11000011cded001', '477-7021', 'Danton Prackt'),
(118, 'steam:1100001325b7a9b', '718-2503', 'Antonio '),
(119, 'steam:110000111b71726', '531-3502', 'Ferman Omerta '),
(123, 'steam:110000110c6f75a', '718-2503', 'ANTONIO'),
(124, 'steam:1100001325b7a9b', '', 'Nouveau Contact'),
(125, 'steam:1100001325b7a9b', '523-5658', 'James'),
(126, 'steam:110000132daf29b', '317-1494', 'Monsieur Dimmurtale'),
(127, 'steam:11000011c0b0ace', '718-2503', 'Averigo'),
(128, 'steam:11000011c0b0ace', '425-5348', 'Nouveau Contact'),
(129, 'steam:11000011acec85a', '944-5579', 'Saïd Lamine'),
(130, 'steam:11000011c0b0ace', '944-5579', 'Petit Lamine'),
(131, 'steam:11000011c0b0ace', '715-5989', 'Gros pif'),
(132, 'steam:11000011c0b0ace', '477-7021', 'Danton'),
(133, 'steam:110000110c6f75a', '822-5198', 'hector'),
(134, 'steam:11000011acec85a', '326-0614', 'Calvin Danson'),
(135, 'steam:110000110c6f75a', '944-5579', 'said lamine'),
(136, 'steam:11000010f3c770c', '113-0914', 'Koba'),
(139, 'steam:11000011cded001', '127-1117', 'Mahonne'),
(140, 'steam:1100001045fbd8f', '771-1741', 'Mammad'),
(141, 'steam:11000010a1b83df', '5313502', 'Parsa'),
(142, 'steam:11000010a1b83df', '911', 'Medic'),
(143, 'steam:11000010a1b83df', '555-0142', 'Nouveau Contact'),
(144, 'steam:11000010b3a30a0', '906-8228', 'vidar'),
(145, 'steam:110000114a058a8', '8275849', 'Amir'),
(146, 'steam:11000010b3a30a0', '531-3502', 'parsa');

-- --------------------------------------------------------

--
-- Table structure for table `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playerstattoos`
--

INSERT INTO `playerstattoos` (`id`, `identifier`, `tattoos`) VALUES
(1, 'steam:110000111b71726', '[{\"collection\":\"mpbeach_overlays\",\"texture\":2},{\"collection\":\"mpbusiness_overlays\",\"texture\":3},{\"collection\":\"mpbusiness_overlays\",\"texture\":10},{\"collection\":\"mpbeach_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":19}]'),
(2, 'steam:11000010f7f9504', '[]'),
(4, 'steam:11000010cb4181f', '[{\"texture\":1,\"collection\":\"mpbeach_overlays\"},{\"texture\":6,\"collection\":\"mpbusiness_overlays\"},{\"texture\":5,\"collection\":\"mpbusiness_overlays\"},{\"texture\":24,\"collection\":\"mphipster_overlays\"},{\"texture\":33,\"collection\":\"mphipster_overlays\"}]'),
(5, 'steam:11000011ad5e46e', '[]'),
(6, 'steam:11000013491dae7', '[{\"collection\":\"mphipster_overlays\",\"texture\":46},{\"collection\":\"mpbeach_overlays\",\"texture\":6},{\"collection\":\"mpbeach_overlays\",\"texture\":6},{\"collection\":\"mpbeach_overlays\",\"texture\":18},{\"collection\":\"mpbeach_overlays\",\"texture\":19}]'),
(7, 'steam:11000010032f30a', '[]'),
(8, 'steam:110000117d510a6', '[]'),
(9, 'steam:11000011b8aadb1', '[{\"collection\":\"mpbeach_overlays\",\"texture\":1},{\"collection\":\"mpbeach_overlays\",\"texture\":26}]'),
(11, 'steam:11000010dd9c7d6', '[{\"texture\":6,\"collection\":\"mpbeach_overlays\"},{\"texture\":3,\"collection\":\"mpbusiness_overlays\"},{\"texture\":21,\"collection\":\"mphipster_overlays\"},{\"texture\":24,\"collection\":\"mphipster_overlays\"},{\"texture\":40,\"collection\":\"mphipster_overlays\"}]'),
(12, 'steam:110000113248a42', '[{\"texture\":1,\"collection\":\"mpbusiness_overlays\"},{\"texture\":4,\"collection\":\"mpbusiness_overlays\"},{\"texture\":8,\"collection\":\"mpbusiness_overlays\"},{\"texture\":35,\"collection\":\"mphipster_overlays\"},{\"texture\":47,\"collection\":\"mphipster_overlays\"}]'),
(13, 'steam:11000010ede2397', '[{\"collection\":\"mphipster_overlays\",\"texture\":13},{\"collection\":\"mphipster_overlays\",\"texture\":47},{\"collection\":\"mphipster_overlays\",\"texture\":46},{\"collection\":\"mphipster_overlays\",\"texture\":47},{\"collection\":\"mpbusiness_overlays\",\"texture\":17}]'),
(14, 'steam:110000119ac453f', '[]'),
(15, 'steam:11000010719503b', '[]'),
(16, 'steam:110000110c6f75a', '[{\"texture\":2,\"collection\":\"mpbeach_overlays\"}]'),
(17, 'steam:11000011555ac07', '[{\"texture\":3,\"collection\":\"mpbusiness_overlays\"},{\"texture\":4,\"collection\":\"mpbusiness_overlays\"},{\"texture\":8,\"collection\":\"mphipster_overlays\"},{\"texture\":1,\"collection\":\"mpbeach_overlays\"}]'),
(18, 'steam:11000011c0b0ace', '[]'),
(19, 'steam:11000010d819702', '[]'),
(20, 'steam:11000010ed15b6b', '[{\"collection\":\"mpbeach_overlays\",\"texture\":2},{\"collection\":\"mpbeach_overlays\",\"texture\":3},{\"collection\":\"mpbeach_overlays\",\"texture\":5},{\"collection\":\"mpbeach_overlays\",\"texture\":15}]'),
(21, 'steam:11000011c7b5be5', '[{\"collection\":\"mpbeach_overlays\",\"texture\":10}]'),
(23, 'steam:110000111bfcd46', '[]'),
(24, 'steam:11000011ce402c4', '[]'),
(25, 'steam:110000103c6f9cc', '[{\"collection\":\"mpbeach_overlays\",\"texture\":6},{\"collection\":\"mpbiker_overlays\",\"texture\":30}]'),
(26, 'steam:11000011230bca7', '[]'),
(27, 'steam:11000011acec85a', '[{\"texture\":29,\"collection\":\"mphipster_overlays\"},{\"texture\":8,\"collection\":\"mpbeach_overlays\"},{\"texture\":28,\"collection\":\"mpbeach_overlays\"},{\"texture\":30,\"collection\":\"mpbeach_overlays\"},{\"texture\":8,\"collection\":\"mpgunrunning_overlays\"}]'),
(28, 'steam:110000132a349ee', '[]'),
(29, 'steam:11000010bb4b9f1', '[{\"collection\":\"mpbusiness_overlays\",\"texture\":3}]'),
(30, 'steam:1100001325b7a9b', '[{\"collection\":\"mpbeach_overlays\",\"texture\":2},{\"collection\":\"mpbeach_overlays\",\"texture\":6},{\"collection\":\"mpbeach_overlays\",\"texture\":30},{\"collection\":\"mphipster_overlays\",\"texture\":39},{\"collection\":\"mphipster_overlays\",\"texture\":45}]'),
(31, 'steam:11000013493c4b7', '[]'),
(32, 'steam:11000010d6c30cb', '[{\"collection\":\"mpbusiness_overlays\",\"texture\":1},{\"collection\":\"mpbusiness_overlays\",\"texture\":8},{\"collection\":\"mpbusiness_overlays\",\"texture\":20},{\"collection\":\"mphipster_overlays\",\"texture\":43},{\"collection\":\"mphipster_overlays\",\"texture\":40}]'),
(33, 'steam:11000013613fa78', '[{\"collection\":\"multiplayer_overlays\",\"texture\":6},{\"collection\":\"multiplayer_overlays\",\"texture\":15},{\"collection\":\"multiplayer_overlays\",\"texture\":33},{\"collection\":\"multiplayer_overlays\",\"texture\":68},{\"collection\":\"mpluxe2_overlays\",\"texture\":13}]'),
(34, 'steam:110000111a58cab', '[]'),
(35, 'steam:110000131d556ee', '[{\"collection\":\"mpbeach_overlays\",\"texture\":10},{\"collection\":\"mpbeach_overlays\",\"texture\":20},{\"collection\":\"mpbusiness_overlays\",\"texture\":6},{\"collection\":\"mpbusiness_overlays\",\"texture\":8},{\"collection\":\"mpbusiness_overlays\",\"texture\":12}]'),
(36, 'steam:11000011760b77b', '[]'),
(37, 'steam:110000110bff738', '[]'),
(38, 'steam:11000010f8be390', '[]'),
(39, 'steam:110000112856892', '[]'),
(40, 'steam:1100001196b3017', '[]'),
(41, 'steam:1100001154fdc54', '[]'),
(42, 'steam:11000011ae2da25', '[]'),
(43, 'steam:11000010e555ae1', '[]'),
(44, 'steam:11000010ccc8c9b', '[]'),
(45, 'steam:11000013260f4bc', '[]'),
(47, 'steam:11000010c4036d7', '[]'),
(48, 'steam:1100001076bae8a', '[]'),
(49, 'steam:110000118496987', '[]'),
(50, 'steam:11000010f4464c0', '[{\"texture\":6,\"collection\":\"mpbeach_overlays\"},{\"texture\":3,\"collection\":\"mpbusiness_overlays\"}]'),
(51, 'steam:110000109729f67', '[{\"texture\":29,\"collection\":\"mphipster_overlays\"},{\"texture\":46,\"collection\":\"mphipster_overlays\"},{\"texture\":25,\"collection\":\"mpbeach_overlays\"},{\"texture\":12,\"collection\":\"mphipster_overlays\"},{\"texture\":44,\"collection\":\"mphipster_overlays\"}]'),
(52, 'steam:110000132b7e237', '[]'),
(53, 'steam:110000108f366a1', '[]'),
(54, 'steam:11000011669fc09', '[]'),
(55, 'steam:11000011172f5d0', '[]'),
(56, 'steam:11000010fb96ddc', '[]'),
(57, 'steam:110000118d3e52c', '[]'),
(58, 'steam:11000010d6914d7', '[]'),
(59, 'steam:110000107122573', '[]'),
(60, 'steam:11000010b4bab32', '[]'),
(61, 'steam:11000011ccff156', '[]'),
(62, 'steam:110000104cf5aeb', '[]'),
(63, 'steam:11000011d24e38e', '[]'),
(64, 'steam:11000011861fe2d', '[]'),
(65, 'steam:110000108f73203', '[]'),
(66, 'steam:1100001155e5d75', '[]'),
(67, 'steam:1100001080602bc', '[]'),
(68, 'steam:11000010e7887ad', '[]'),
(69, 'steam:11000013621a142', '[]'),
(71, 'steam:11000013582fc5f', '[]'),
(72, 'steam:110000133ef6d99', '[]'),
(73, 'steam:110000114b9921b', '[]'),
(74, 'steam:110000118c34052', '[]'),
(75, 'steam:11000010c9bdcd9', '[]'),
(76, 'steam:1100001353fe56e', '[]'),
(77, 'steam:1100001173d36f1', '[]'),
(78, 'steam:11000010d228cea', '[]'),
(79, 'steam:110000111593e00', '[{\"texture\":29,\"collection\":\"mphipster_overlays\"},{\"texture\":1,\"collection\":\"mpbusiness_overlays\"}]'),
(80, 'steam:11000010e49b073', '[]'),
(81, 'steam:11000010e81d760', '[]'),
(82, 'steam:110000119c0d7ec', '[]'),
(83, 'steam:11000010b490325', '[]'),
(84, 'steam:110000109b99f47', '[]'),
(85, 'steam:11000011cded001', '[{\"collection\":\"mphipster_overlays\",\"texture\":40},{\"collection\":\"mphipster_overlays\",\"texture\":40},{\"collection\":\"mpbusiness_overlays\",\"texture\":4},{\"texture\":8,\"collection\":\"mpbusiness_overlays\"}]'),
(86, 'steam:1100001128ff308', '[]'),
(87, 'steam:110000118282d31', '[]'),
(88, 'steam:11000010c789c31', '[]'),
(89, 'steam:1100001173f3092', '[]'),
(90, 'steam:11000010b4b70d9', '[]'),
(91, 'steam:11000010077a8c1', '[]'),
(92, 'steam:110000132daf29b', '[]'),
(93, 'steam:110000116a28200', '[]'),
(94, 'steam:11000010013511a', '[]'),
(95, 'steam:11000010eb00ea7', '[]'),
(96, 'steam:1100001152f0a24', '[]'),
(97, 'steam:110000117053659', '[]'),
(98, 'steam:1100001136fb180', '[]'),
(99, 'steam:11000013634c728', '[]'),
(100, 'steam:1100001135b73a1', '[]'),
(101, 'steam:1100001179c3bb7', '[]'),
(102, 'steam:11000010ca2c7e9', '[]'),
(103, 'steam:1100001077856e8', '[]'),
(104, 'steam:110000131f9e30e', '[]'),
(105, 'steam:110000119dc2827', '[]'),
(106, 'steam:1100001061d0cb1', '[]'),
(107, 'steam:11000011852ee0c', '[]'),
(108, 'steam:11000011d1423db', '[]'),
(109, 'steam:11000010302b529', '[]'),
(110, 'steam:110000119a721fd', '[]'),
(111, 'steam:110000114a6bf17', '[]'),
(112, 'steam:11000010acfe014', '[]'),
(113, 'steam:11000011cf4c40d', '[]'),
(114, 'steam:11000010a01c0bc', '[]'),
(115, 'steam:1100001098c0f10', '[]'),
(116, 'steam:11000013518e15d', '[]'),
(117, 'steam:11000010cba93cb', '[]'),
(118, 'steam:1100001048dd98c', '[]'),
(119, 'steam:11000011bd90656', '[]'),
(120, 'steam:11000010f3c770c', '[]'),
(121, 'steam:110000115a29e25', '[]'),
(122, 'steam:110000114a058a8', '[]'),
(123, 'steam:1100001167d265e', '[]'),
(124, 'steam:1100001197619a3', '[{\"collection\":\"mpbusiness_overlays\",\"texture\":6},{\"texture\":35,\"collection\":\"mphipster_overlays\"}]'),
(125, 'steam:1100001045fbd8f', '[{\"collection\":\"mphipster_overlays\",\"texture\":49},{\"collection\":\"mphipster_overlays\",\"texture\":49},{\"collection\":\"mphipster_overlays\",\"texture\":24}]'),
(126, 'steam:11000010a1b83df', '[]'),
(127, 'steam:11000010b3a30a0', '[{\"texture\":10,\"collection\":\"mpbeach_overlays\"},{\"texture\":4,\"collection\":\"mpbeach_overlays\"},{\"texture\":3,\"collection\":\"mpbeach_overlays\"},{\"texture\":2,\"collection\":\"mpbeach_overlays\"},{\"texture\":1,\"collection\":\"mpbeach_overlays\"},{\"texture\":5,\"collectio'),
(128, 'steam:11000011685b145', '[]'),
(129, 'steam:1100001197354a7', '[]'),
(130, 'steam:110000111df570b', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Table structure for table `rented_aircrafts`
--

CREATE TABLE `rented_aircrafts` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_boats`
--

CREATE TABLE `rented_boats` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rented_vehicles`
--

INSERT INTO `rented_vehicles` (`vehicle`, `plate`, `player_name`, `base_price`, `rent_price`, `owner`) VALUES
('MGT', 'RENTMKCF', 'Nobody', 3000000, 10000, 'steam:11000010b3a30a0');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'LTDgasoline', 'croquettes', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `shops2`
--

CREATE TABLE `shops2` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops2`
--

INSERT INTO `shops2` (`id`, `store`, `item`, `price`) VALUES
(1, 'narekshop', 'yusuf', 18000),
(2, 'narekshop', 'grip', 500),
(3, 'narekshop', 'flashlight', 500),
(4, 'narekshop', 'silencieux', 250),
(5, 'narekshop', 'clip', 250),
(6, 'narekshop', 'drill', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `itemt` varchar(50) DEFAULT NULL,
  `owned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_inventory`
--

INSERT INTO `truck_inventory` (`id`, `item`, `count`, `plate`, `name`, `itemt`, `owned`) VALUES
(1, 'WEAPON_PISTOL50', 10, 'ZBH 502 ', 'Pistolet calibre 50', 'item_weapon', '1'),
(10, 'WEAPON_ASSAULTRIFLE', 1, 'HYE 692 ', 'Fusil d\'assaut', 'item_weapon', '1'),
(47, 'weed', 100, 'JDE 708 ', 'Weed', 'item_standard', '1'),
(136, 'WEAPON_ASSAULTRIFLE_MK2', 216, 'YAA 644 ', 'Assault Rifle Mk II ', 'item_weapon', '1'),
(138, 'weed', 17, 'BFL 454 ', 'Weed', 'item_standard', '1'),
(139, 'WEAPON_PIPEBOMB', 10, 'BFL 454 ', 'Bombe tuyau', 'item_weapon', '1'),
(140, 'WEAPON_MUSKET', 250, 'BFL 454 ', 'Mousquet', 'item_weapon', '1'),
(141, 'WEAPON_STICKYBOMB', 25, 'BFL 454 ', 'Bombe collante', 'item_weapon', '1'),
(142, 'WEAPON_SNIPERRIFLE', 250, 'BFL 454 ', 'Fusil de sniper', 'item_weapon', '1'),
(143, 'WEAPON_SAWNOFFSHOTGUN', 25, 'BFL 454 ', 'Carabine à canon scié', 'item_weapon', '1'),
(144, 'WEAPON_ADVANCEDRIFLE', 250, 'BFL 454 ', 'Fusil avancé', 'item_weapon', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `org` varchar(255) COLLATE utf8mb4_bin DEFAULT 'freecity',
  `org_gradeorg` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin,
  `isDead` tinyint(1) DEFAULT '0',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `org`, `org_gradeorg`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `isDead`, `phone_number`, `last_property`, `animal`, `is_dead`) VALUES
('steam:1100001045fbd8f', 'license:608b506bd937d8dd6803110fcbc06f94e52b9a13', 88422650, 'Parsa✰', '{\"sex\":0,\"lipstick_3\":0,\"hair_1\":21,\"mask_1\":0,\"arms\":0,\"beard_1\":10,\"beard_3\":4,\"bags_2\":0,\"tshirt_1\":3,\"hair_color_1\":3,\"age_2\":0,\"makeup_3\":0,\"hair_2\":0,\"shoes_2\":0,\"bproof_1\":0,\"helmet_1\":-1,\"lipstick_1\":0,\"eyebrows_4\":0,\"decals_2\":0,\"tshirt_2\":0,\"face\":0,\"torso_1\":72,\"ears_1\":20,\"glasses_2\":5,\"lipstick_2\":0,\"chain_1\":0,\"mask_2\":0,\"bags_1\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"ears_2\":0,\"beard_2\":10,\"torso_2\":2,\"lipstick_4\":0,\"makeup_1\":0,\"eyebrows_1\":12,\"glasses_1\":5,\"helmet_2\":0,\"hair_color_2\":0,\"decals_1\":0,\"beard_4\":0,\"makeup_2\":0,\"eyebrows_2\":5,\"chain_2\":0,\"shoes_1\":10,\"age_1\":0,\"skin\":0,\"pants_2\":0,\"pants_1\":10,\"bproof_2\":0}', 'unemployed', 0, 'freecity', 0, '[{\"label\":\"Knife\",\"ammo\":0,\"name\":\"WEAPON_KNIFE\"},{\"label\":\"Nightstick\",\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"label\":\"Hammer\",\"ammo\":0,\"name\":\"WEAPON_HAMMER\"},{\"label\":\"Bat\",\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"label\":\"Golf club\",\"ammo\":0,\"name\":\"WEAPON_GOLFCLUB\"},{\"label\":\"Crow bar\",\"ammo\":0,\"name\":\"WEAPON_CROWBAR\"},{\"label\":\"Pistol\",\"ammo\":250,\"name\":\"WEAPON_PISTOL\"},{\"label\":\"Pistol .50\",\"ammo\":250,\"name\":\"WEAPON_PISTOL50\"},{\"label\":\"Heavy revolver\",\"ammo\":250,\"name\":\"WEAPON_REVOLVER\"},{\"label\":\"Sns pistol\",\"ammo\":250,\"name\":\"WEAPON_SNSPISTOL\"},{\"label\":\"Heavy pistol\",\"ammo\":250,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"label\":\"Vintage pistol\",\"ammo\":250,\"name\":\"WEAPON_VINTAGEPISTOL\"},{\"label\":\"Micro SMG\",\"ammo\":26,\"name\":\"WEAPON_MICROSMG\"},{\"label\":\"Pump shotgun\",\"ammo\":250,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"label\":\"Assault rifle\",\"ammo\":220,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"label\":\"Special carbine\",\"ammo\":220,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"label\":\"Sniper rifle\",\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"label\":\"Grenade\",\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"label\":\"Smoke grenade\",\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"label\":\"Bz gas\",\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"label\":\"Fire extinguisher\",\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"label\":\"Ball\",\"ammo\":1,\"name\":\"WEAPON_BALL\"},{\"label\":\"Firework\",\"ammo\":20,\"name\":\"WEAPON_FIREWORK\"},{\"label\":\"Musket\",\"ammo\":250,\"name\":\"WEAPON_MUSKET\"},{\"label\":\"Taser\",\"ammo\":42,\"name\":\"WEAPON_STUNGUN\"},{\"label\":\"Knuckledusters\",\"ammo\":0,\"name\":\"WEAPON_KNUCKLE\"},{\"label\":\"Hatchet\",\"ammo\":0,\"name\":\"WEAPON_HATCHET\"},{\"label\":\"Machete\",\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"label\":\"Flashlight\",\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"}]', '{\"x\":-1.7,\"z\":27.5,\"y\":-1136.8}', 31400, 0, 'user', 'Parsa', 'Ghyasi', '1994-02-07', 'm', '185', '[{\"name\":\"hunger\",\"percent\":40.91,\"val\":409100},{\"name\":\"thirst\",\"percent\":43.1825,\"val\":431825},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '531-3502', NULL, NULL, 0),
('steam:11000010a1b83df', 'license:e62d81faaf5ea41b8be3677d26585b342f426b4c', 487549, 'MaMadLord', '{\"pants_1\":37,\"hair_color_2\":0,\"beard_4\":0,\"makeup_1\":0,\"helmet_1\":1,\"beard_3\":0,\"bproof_1\":0,\"lipstick_3\":0,\"pants_2\":2,\"chain_2\":2,\"chain_1\":2,\"ears_1\":2,\"lipstick_1\":0,\"makeup_2\":0,\"shoes_2\":0,\"eyebrows_1\":0,\"tshirt_2\":2,\"torso_2\":1,\"glasses_1\":5,\"makeup_3\":0,\"tshirt_1\":45,\"beard_1\":0,\"face\":0,\"bags_1\":0,\"glasses_2\":2,\"eyebrows_4\":0,\"bproof_2\":0,\"hair_2\":0,\"skin\":0,\"helmet_2\":2,\"bags_2\":0,\"hair_1\":0,\"makeup_4\":0,\"torso_1\":52,\"age_1\":0,\"ears_2\":0,\"lipstick_4\":0,\"age_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"decals_2\":3,\"beard_2\":0,\"mask_2\":0,\"arms\":47,\"eyebrows_2\":0,\"sex\":1,\"decals_1\":8,\"shoes_1\":28,\"mask_1\":0,\"hair_color_1\":0}', 'unemployed', 0, 'freecity', 0, '[{\"ammo\":0,\"label\":\"Matraque\",\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":250,\"label\":\"Pistolet de combat\",\"name\":\"WEAPON_COMBATPISTOL\"},{\"ammo\":250,\"label\":\"Smg d\'assaut\",\"name\":\"WEAPON_ASSAULTSMG\"},{\"ammo\":250,\"label\":\"Carabine à canon scié\",\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"ammo\":0,\"label\":\"Fusil de sniper\",\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":250,\"label\":\"Tazer\",\"name\":\"WEAPON_STUNGUN\"}]', '{\"x\":312.7,\"z\":31.9,\"y\":-1377.5}', 45411, 0, 'user', 'AAA', 'BBB', '11.11.1111', 'm', '150', '[{\"name\":\"hunger\",\"val\":498500,\"percent\":49.85},{\"name\":\"thirst\",\"val\":498875,\"percent\":49.8875},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, '771-1741', NULL, NULL, 0),
('steam:11000010b3a30a0', 'license:eda9a39ff948770ed1171c7836a68f0489ded17e', 94266176, 'Nobody', '{\"lipstick_4\":0,\"chain_2\":0,\"lipstick_1\":0,\"skin\":12,\"beard_4\":0,\"pants_1\":1,\"bproof_2\":1,\"makeup_4\":0,\"bags_2\":0,\"beard_3\":63,\"arms\":0,\"lipstick_3\":0,\"tshirt_2\":2,\"eyebrows_1\":4,\"makeup_3\":0,\"eyebrows_4\":9,\"chain_1\":0,\"decals_1\":0,\"pants_2\":13,\"mask_2\":2,\"bags_1\":0,\"hair_1\":68,\"face\":0,\"mask_1\":0,\"beard_1\":12,\"torso_1\":4,\"ears_1\":1,\"shoes_1\":1,\"makeup_2\":0,\"makeup_1\":0,\"tshirt_1\":4,\"helmet_2\":0,\"lipstick_2\":0,\"bproof_1\":3,\"age_2\":0,\"hair_color_2\":0,\"sex\":0,\"torso_2\":2,\"ears_2\":5,\"eyebrows_2\":5,\"glasses_1\":0,\"eyebrows_3\":20,\"hair_color_1\":63,\"age_1\":0,\"hair_2\":0,\"shoes_2\":7,\"helmet_1\":-1,\"decals_2\":0,\"glasses_2\":2,\"beard_2\":10}', 'mecano', 4, 'freecity', 0, '[{\"name\":\"WEAPON_KNIFE\",\"ammo\":0,\"label\":\"Knife\"},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0,\"label\":\"Nightstick\"},{\"name\":\"WEAPON_HAMMER\",\"ammo\":0,\"label\":\"Hammer\"},{\"name\":\"WEAPON_BAT\",\"ammo\":0,\"label\":\"Bat\"},{\"name\":\"WEAPON_GOLFCLUB\",\"ammo\":0,\"label\":\"Golf club\"},{\"name\":\"WEAPON_CROWBAR\",\"ammo\":0,\"label\":\"Crow bar\"},{\"name\":\"WEAPON_PISTOL\",\"ammo\":0,\"label\":\"Pistol\"},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":0,\"label\":\"Pistol .50\"},{\"name\":\"WEAPON_SNSPISTOL\",\"ammo\":0,\"label\":\"Sns pistol\"},{\"name\":\"WEAPON_HEAVYPISTOL\",\"ammo\":0,\"label\":\"Heavy pistol\"},{\"name\":\"WEAPON_VINTAGEPISTOL\",\"ammo\":0,\"label\":\"Vintage pistol\"},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":0,\"label\":\"Micro SMG\"},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":66,\"label\":\"Pump shotgun\"},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":104,\"label\":\"Assault rifle\"},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":104,\"label\":\"Special carbine\"},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":80,\"label\":\"Sniper rifle\"},{\"name\":\"WEAPON_GRENADE\",\"ammo\":14,\"label\":\"Grenade\"},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25,\"label\":\"Smoke grenade\"},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25,\"label\":\"Bz gas\"},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":0,\"label\":\"Fire extinguisher\"},{\"name\":\"WEAPON_BALL\",\"ammo\":1,\"label\":\"Ball\"},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":0,\"label\":\"Firework\"},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84,\"label\":\"Taser\"},{\"name\":\"WEAPON_KNUCKLE\",\"ammo\":0,\"label\":\"Knuckledusters\"},{\"name\":\"WEAPON_HATCHET\",\"ammo\":0,\"label\":\"Hatchet\"},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0,\"label\":\"Machete\"},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0,\"label\":\"Flashlight\"}]', '{\"x\":-80.7,\"z\":25.5,\"y\":-1098.4}', 2052030, 0, 'user', 'Nobody', 'Somebody', '14-7-1374', 'm', '180', '[{\"name\":\"hunger\",\"percent\":41.21,\"val\":412100},{\"name\":\"thirst\",\"percent\":43.4075,\"val\":434075},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '562-3039', NULL, NULL, 1),
('steam:110000111df570b', 'license:6b6457b6bde02a9f5c8e2fb8739b264572d272da', 2000, 'Heavens', '{\"pants_1\":0,\"hair_color_2\":0,\"beard_4\":0,\"makeup_1\":0,\"helmet_1\":-1,\"beard_3\":0,\"bproof_1\":0,\"lipstick_3\":0,\"pants_2\":0,\"chain_2\":0,\"chain_1\":0,\"eyebrows_4\":0,\"lipstick_1\":0,\"makeup_2\":0,\"shoes_2\":0,\"eyebrows_1\":0,\"tshirt_2\":0,\"face\":0,\"glasses_1\":0,\"makeup_3\":0,\"tshirt_1\":0,\"arms\":0,\"torso_2\":0,\"bproof_2\":0,\"lipstick_2\":0,\"age_2\":0,\"glasses_2\":0,\"age_1\":0,\"skin\":0,\"eyebrows_3\":0,\"bags_2\":0,\"beard_2\":0,\"makeup_4\":0,\"hair_2\":0,\"ears_1\":-1,\"ears_2\":0,\"lipstick_4\":0,\"torso_1\":0,\"bags_1\":0,\"mask_1\":0,\"decals_2\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_color_1\":0,\"eyebrows_2\":0,\"sex\":0,\"decals_1\":0,\"shoes_1\":0,\"beard_1\":0,\"mask_2\":0}', 'unemployed', 0, 'freecity', 0, '[]', '{\"z\":21.4,\"x\":-1044.7,\"y\":-2749.1}', 5000, 0, 'user', 'No-------', 'U--------', '28-05-199', 'm', '188', '[{\"name\":\"hunger\",\"percent\":99.02,\"val\":990200},{\"name\":\"thirst\",\"percent\":99.265,\"val\":992650},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '427-1473', NULL, NULL, 0),
('steam:110000114a058a8', 'license:c359a4ebd956cdfd97bdedf6d1b47565d7f1ae31', 84799910, 'Vidat', '{\"makeup_2\":0,\"age_1\":0,\"sex\":0,\"eyebrows_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"age_2\":0,\"ears_2\":0,\"torso_2\":2,\"chain_2\":0,\"glasses_1\":0,\"lipstick_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"arms\":0,\"beard_2\":0,\"helmet_1\":-1,\"decals_2\":0,\"beard_4\":0,\"decals_1\":0,\"makeup_3\":0,\"makeup_1\":0,\"ears_1\":-1,\"shoes_1\":3,\"hair_1\":11,\"bags_1\":0,\"hair_2\":5,\"chain_1\":0,\"lipstick_1\":0,\"bproof_2\":0,\"skin\":0,\"beard_3\":0,\"bproof_1\":0,\"face\":10,\"hair_color_2\":0,\"pants_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"tshirt_2\":2,\"pants_1\":10,\"beard_1\":0,\"tshirt_1\":6,\"lipstick_4\":0,\"hair_color_1\":7,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":7,\"makeup_4\":0,\"eyebrows_3\":0,\"helmet_2\":0}', 'police', 4, 'freecity', 0, '[{\"label\":\"Nightstick\",\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"label\":\"Combat pistol\",\"ammo\":191,\"name\":\"WEAPON_COMBATPISTOL\"},{\"label\":\"AP pistol\",\"ammo\":191,\"name\":\"WEAPON_APPISTOL\"},{\"label\":\"Pistol .50\",\"ammo\":191,\"name\":\"WEAPON_PISTOL50\"},{\"label\":\"Assault SMG\",\"ammo\":26,\"name\":\"WEAPON_ASSAULTSMG\"},{\"label\":\"Compact rifle\",\"ammo\":195,\"name\":\"WEAPON_COMPACTRIFLE\"},{\"label\":\"Fire extinguisher\",\"ammo\":84,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"label\":\"Firework\",\"ammo\":0,\"name\":\"WEAPON_FIREWORK\"},{\"label\":\"Taser\",\"ammo\":250,\"name\":\"WEAPON_STUNGUN\"}]', '{\"x\":198.8,\"z\":29.4,\"y\":-1037.7}', 100123300, 4, 'superadmin', 'Vidat', 'Boz', '24-12-94', 'm', '181', '[{\"name\":\"hunger\",\"percent\":42.17,\"val\":421700},{\"name\":\"thirst\",\"percent\":44.1275,\"val\":441275},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '906-8228', NULL, NULL, 0),
('steam:1100001167d265e', 'license:29b5cf81ce7ab787bc709e147300a0aa04806c62', 665036, 'Farhan', '{\"skin\":0,\"tshirt_2\":0,\"shoes_1\":0,\"hair_color_2\":0,\"hair_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"age_1\":0,\"lipstick_3\":0,\"mask_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"pants_1\":0,\"pants_2\":0,\"beard_3\":0,\"decals_1\":0,\"helmet_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"makeup_3\":0,\"bags_1\":0,\"hair_1\":0,\"bproof_1\":0,\"lipstick_1\":0,\"arms\":0,\"ears_2\":0,\"eyebrows_2\":0,\"chain_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"mask_1\":0,\"torso_1\":0,\"bags_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"makeup_4\":0,\"hair_color_1\":0,\"bproof_2\":0,\"tshirt_1\":0,\"torso_2\":0,\"beard_1\":0,\"decals_2\":0,\"beard_2\":0,\"glasses_1\":0,\"face\":0,\"age_2\":0,\"shoes_2\":0,\"glasses_2\":0,\"beard_4\":0,\"sex\":0}', 'unemployed', 0, 'freecity', 0, '[{\"name\":\"WEAPON_PISTOL\",\"ammo\":250,\"label\":\"Pistol\"},{\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":250,\"label\":\"Combat pistol\"},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":250,\"label\":\"Micro SMG\"},{\"name\":\"WEAPON_SMG\",\"ammo\":250,\"label\":\"SMG\"},{\"name\":\"WEAPON_ASSAULTSMG\",\"ammo\":250,\"label\":\"Assault SMG\"},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":1,\"label\":\"Pump shotgun\"},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":199,\"label\":\"Assault rifle\"},{\"name\":\"WEAPON_ADVANCEDRIFLE\",\"ammo\":199,\"label\":\"Advanced rifle\"},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":199,\"label\":\"Special carbine\"},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":39,\"label\":\"Sniper rifle\"},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42,\"label\":\"Taser\"}]', '{\"x\":2550.0,\"z\":20.8,\"y\":1674.1}', 92109, 0, 'user', 'MR', 'Farhan', '', 'm', '189', '[{\"name\":\"hunger\",\"percent\":18.83,\"val\":188300},{\"name\":\"thirst\",\"percent\":26.6225,\"val\":266225},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 1, '021-1111', NULL, NULL, 0),
('steam:11000011685b145', 'license:4068b4760e59796bb3aba041f5e0202e5fe29e0d', 4061950, 'Yaakuzaa', '{\"skin\":0,\"lipstick_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"hair_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"age_1\":0,\"lipstick_3\":0,\"mask_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"pants_1\":0,\"pants_2\":0,\"beard_3\":0,\"decals_1\":0,\"helmet_2\":0,\"glasses_1\":0,\"helmet_1\":-1,\"makeup_3\":0,\"bags_1\":0,\"bags_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"arms\":0,\"shoes_1\":0,\"makeup_2\":0,\"chain_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"eyebrows_2\":0,\"torso_1\":0,\"age_2\":0,\"chain_2\":0,\"tshirt_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sex\":0,\"torso_2\":0,\"beard_1\":0,\"mask_1\":0,\"beard_2\":0,\"shoes_2\":0,\"face\":0,\"hair_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"beard_4\":0,\"decals_2\":0}', 'ambulance', 2, 'freecity', 0, '[{\"label\":\"Nightstick\",\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"label\":\"Special carbine\",\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"label\":\"Sniper rifle\",\"ammo\":0,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"label\":\"Ball\",\"ammo\":0,\"name\":\"WEAPON_BALL\"},{\"label\":\"Machete\",\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"label\":\"Flashlight\",\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"}]', '{\"x\":-47.6,\"z\":26.7,\"y\":-1097.2}', 11000, 0, 'user', 'SAjjad', 'Dsh', '23/10/50', 'm', '184', '[{\"name\":\"hunger\",\"percent\":32.91,\"val\":329100},{\"name\":\"thirst\",\"percent\":37.1825,\"val\":371825},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '113-0914', NULL, NULL, 0),
('steam:1100001197354a7', 'license:c7ec0925e74a6574b3372ef06027809800613d9b', 2000, 'Abtin-', NULL, 'unemployed', 0, 'freecity', 0, '[]', '{\"x\":-397.0,\"y\":-1827.4,\"z\":20.8}', 5200, 0, 'user', 'Abt1n', 'Kennys', '19/03/2000', 'm', '187', '[{\"percent\":96.14,\"name\":\"hunger\",\"val\":961400},{\"percent\":97.105,\"name\":\"thirst\",\"val\":971050},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 0, '873-7104', NULL, NULL, 0),
('steam:1100001197619a3', 'license:007e99bd2ac120690061f5013c7ac37acc590003', 97704650, 'amirvv13', '{\"lipstick_4\":0,\"glasses_1\":0,\"decals_2\":0,\"beard_2\":0,\"torso_1\":75,\"lipstick_2\":0,\"eyebrows_3\":1,\"bags_1\":0,\"skin\":12,\"hair_1\":47,\"lipstick_3\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"age_2\":0,\"helmet_1\":-1,\"shoes_2\":5,\"eyebrows_1\":2,\"shoes_1\":55,\"bproof_2\":0,\"mask_1\":0,\"pants_2\":0,\"chain_1\":7,\"age_1\":0,\"makeup_1\":7,\"hair_color_1\":3,\"face\":31,\"hair_color_2\":29,\"beard_4\":0,\"makeup_4\":0,\"makeup_3\":0,\"helmet_2\":0,\"pants_1\":31,\"mask_2\":0,\"glasses_2\":0,\"torso_2\":0,\"hair_2\":0,\"bags_2\":0,\"makeup_2\":5,\"ears_2\":0,\"ears_1\":26,\"eyebrows_4\":0,\"lipstick_1\":1,\"sex\":0,\"arms\":0,\"chain_2\":0,\"beard_1\":0,\"tshirt_2\":0,\"decals_1\":0,\"tshirt_1\":2,\"beard_3\":0}', 'police', 3, 'freecity', 0, '[{\"name\":\"WEAPON_KNIFE\",\"ammo\":0,\"label\":\"Knife\"},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0,\"label\":\"Nightstick\"},{\"name\":\"WEAPON_HAMMER\",\"ammo\":0,\"label\":\"Hammer\"},{\"name\":\"WEAPON_BAT\",\"ammo\":0,\"label\":\"Bat\"},{\"name\":\"WEAPON_GOLFCLUB\",\"ammo\":0,\"label\":\"Golf club\"},{\"name\":\"WEAPON_CROWBAR\",\"ammo\":0,\"label\":\"Crow bar\"},{\"name\":\"WEAPON_PISTOL\",\"ammo\":250,\"label\":\"Pistol\"},{\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":250,\"label\":\"Combat pistol\"},{\"name\":\"WEAPON_PISTOL50\",\"ammo\":250,\"label\":\"Pistol .50\"},{\"name\":\"WEAPON_REVOLVER\",\"ammo\":250,\"label\":\"Heavy revolver\"},{\"name\":\"WEAPON_SNSPISTOL\",\"ammo\":250,\"label\":\"Sns pistol\"},{\"name\":\"WEAPON_HEAVYPISTOL\",\"ammo\":250,\"label\":\"Heavy pistol\"},{\"name\":\"WEAPON_VINTAGEPISTOL\",\"ammo\":250,\"label\":\"Vintage pistol\"},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":250,\"label\":\"Micro SMG\"},{\"name\":\"WEAPON_ASSAULTSMG\",\"ammo\":250,\"label\":\"Assault SMG\"},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":250,\"label\":\"Pump shotgun\"},{\"name\":\"WEAPON_SAWNOFFSHOTGUN\",\"ammo\":250,\"label\":\"Sawed off shotgun\"},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":223,\"label\":\"Assault rifle\"},{\"name\":\"WEAPON_CARBINERIFLE\",\"ammo\":223,\"label\":\"Carbine rifle\"},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":223,\"label\":\"Special carbine\"},{\"name\":\"WEAPON_COMPACTRIFLE\",\"ammo\":223,\"label\":\"Compact rifle\"},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":250,\"label\":\"Sniper rifle\"},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25,\"label\":\"Grenade\"},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25,\"label\":\"Smoke grenade\"},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25,\"label\":\"Bz gas\"},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":84,\"label\":\"Fire extinguisher\"},{\"name\":\"WEAPON_BALL\",\"ammo\":1,\"label\":\"Ball\"},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20,\"label\":\"Firework\"},{\"name\":\"WEAPON_MUSKET\",\"ammo\":250,\"label\":\"Musket\"},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250,\"label\":\"Taser\"},{\"name\":\"WEAPON_KNUCKLE\",\"ammo\":0,\"label\":\"Knuckledusters\"},{\"name\":\"WEAPON_HATCHET\",\"ammo\":0,\"label\":\"Hatchet\"},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0,\"label\":\"Machete\"}]', '{\"x\":437.1,\"z\":28.4,\"y\":-1018.3}', 100036000, 0, 'user', 'Amir', 'V13', '09/03/98', 'm', '180', '[{\"name\":\"hunger\",\"percent\":49.0,\"val\":490000},{\"name\":\"thirst\",\"percent\":49.25,\"val\":492500},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 0, '827-5849', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:1100001197619a3', 'black_money', 0),
(2, 'steam:1100001045fbd8f', 'black_money', 25562),
(3, 'steam:110000114a058a8', 'black_money', 3616),
(4, 'steam:11000010a1b83df', 'black_money', 0),
(5, 'steam:1100001167d265e', 'black_money', 0),
(6, 'steam:11000010b3a30a0', 'black_money', 15874),
(7, 'steam:11000011685b145', 'black_money', 0),
(8, 'steam:1100001197354a7', 'black_money', 0),
(9, 'steam:110000111df570b', 'black_money', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:1100001197619a3', 'bandage', 0),
(2, 'steam:1100001197619a3', 'myrte', 0),
(3, 'steam:1100001197619a3', 'metreshooter', 0),
(4, 'steam:1100001197619a3', 'vodka', 0),
(5, 'steam:1100001197619a3', 'jagerbomb', 0),
(6, 'steam:1100001197619a3', 'gold', 0),
(7, 'steam:1100001197619a3', 'myrtealcool', 0),
(8, 'steam:1100001197619a3', 'wood', 0),
(9, 'steam:1100001197619a3', 'gitanes', 0),
(10, 'steam:1100001197619a3', 'limonade', 0),
(11, 'steam:1100001197619a3', 'coke', 0),
(12, 'steam:1100001197619a3', 'bolcacahuetes', 0),
(13, 'steam:1100001197619a3', 'opium_pooch', 0),
(14, 'steam:1100001197619a3', 'yusuf', 11),
(15, 'steam:1100001197619a3', 'malbora', 0),
(16, 'steam:1100001197619a3', 'fixkit', 0),
(17, 'steam:1100001197619a3', 'jus_raisin', 0),
(18, 'steam:1100001197619a3', 'coke_pooch', 0),
(19, 'steam:1100001197619a3', 'fish', 0),
(20, 'steam:1100001197619a3', 'medikit', 0),
(21, 'steam:1100001197619a3', 'jagercerbere', 0),
(22, 'steam:1100001197619a3', 'packaged_chicken', 0),
(23, 'steam:1100001197619a3', 'packaged_plank', 0),
(24, 'steam:1100001197619a3', 'tabacblond', 0),
(25, 'steam:1100001197619a3', 'croquettes', 0),
(26, 'steam:1100001197619a3', 'bolchips', 0),
(27, 'steam:1100001197619a3', 'blowpipe', 0),
(28, 'steam:1100001197619a3', 'petrol', 0),
(29, 'steam:1100001197619a3', 'grand_cru', 0),
(30, 'steam:1100001197619a3', 'whiskycoc', 0),
(31, 'steam:1100001197619a3', 'weed_pooch', 0),
(32, 'steam:1100001197619a3', 'mixapero', 0),
(33, 'steam:1100001197619a3', 'wool', 11),
(34, 'steam:1100001197619a3', 'whiskycoca', 0),
(35, 'steam:1100001197619a3', 'ice', 0),
(36, 'steam:1100001197619a3', 'myrte_cargo', 0),
(37, 'steam:1100001197619a3', 'fixtool', 0),
(38, 'steam:1100001197619a3', 'weed', 0),
(39, 'steam:1100001197619a3', 'water', 7),
(40, 'steam:1100001197619a3', 'opium', 0),
(41, 'steam:1100001197619a3', 'vodkafruit', 0),
(42, 'steam:1100001197619a3', 'washed_stone', 0),
(43, 'steam:1100001197619a3', 'vodkrb', 0),
(44, 'steam:1100001197619a3', 'tabacbrunsec', 0),
(45, 'steam:1100001197619a3', 'petrol_raffin', 0),
(46, 'steam:1100001197619a3', 'vodkaenergy', 0),
(47, 'steam:1100001197619a3', 'clip', 10),
(48, 'steam:1100001197619a3', 'vine', 0),
(49, 'steam:1100001197619a3', 'fabric', 0),
(50, 'steam:1100001197619a3', 'silencieux', 0),
(51, 'steam:1100001197619a3', 'diamond', 0),
(52, 'steam:1100001197619a3', 'stone', 0),
(53, 'steam:1100001197619a3', 'viande', 0),
(54, 'steam:1100001197619a3', 'drpepper', 0),
(55, 'steam:1100001197619a3', 'mojito', 0),
(56, 'steam:1100001197619a3', 'soda', 0),
(57, 'steam:1100001197619a3', 'teqpaf', 0),
(58, 'steam:1100001197619a3', 'cagoule', 0),
(59, 'steam:1100001197619a3', 'tabacbrun', 0),
(60, 'steam:1100001197619a3', 'tabacblondsec', 0),
(61, 'steam:1100001197619a3', 'saucisson', 0),
(62, 'steam:1100001197619a3', 'slaughtered_chicken', 0),
(63, 'steam:1100001197619a3', 'raisin', 0),
(64, 'steam:1100001197619a3', 'tequila', 0),
(65, 'steam:1100001197619a3', 'rhumcoca', 0),
(66, 'steam:1100001197619a3', 'jager', 0),
(67, 'steam:1100001197619a3', 'cutted_wood', 0),
(68, 'steam:1100001197619a3', 'rhum', 0),
(69, 'steam:1100001197619a3', 'bread', 0),
(70, 'steam:1100001197619a3', 'redbull_cargo', 0),
(71, 'steam:1100001197619a3', 'copper', 0),
(72, 'steam:1100001197619a3', 'redbull', 0),
(73, 'steam:1100001197619a3', 'grip', 1),
(74, 'steam:1100001197619a3', 'alcool', 0),
(75, 'steam:1100001197619a3', 'rhumfruit', 0),
(76, 'steam:1100001197619a3', 'menthe', 0),
(77, 'steam:1100001197619a3', 'grapperaisin', 0),
(78, 'steam:1100001197619a3', 'alive_chicken', 0),
(79, 'steam:1100001197619a3', 'carotool', 0),
(80, 'steam:1100001197619a3', 'bolpistache', 0),
(81, 'steam:1100001197619a3', 'meth_pooch', 0),
(82, 'steam:1100001197619a3', 'bolnoixcajou', 0),
(83, 'steam:1100001197619a3', 'gazbottle', 0),
(84, 'steam:1100001197619a3', 'martini', 0),
(85, 'steam:1100001197619a3', 'carokit', 0),
(86, 'steam:1100001197619a3', 'iron', 0),
(87, 'steam:1100001197619a3', 'golem', 0),
(88, 'steam:1100001197619a3', 'whisky', 0),
(89, 'steam:1100001197619a3', 'energy', 0),
(90, 'steam:1100001197619a3', 'flashlight', 2),
(91, 'steam:1100001197619a3', 'meth', 0),
(92, 'steam:1100001197619a3', 'alcool_cargo', 0),
(93, 'steam:1100001197619a3', 'jewels', 0),
(94, 'steam:1100001197619a3', 'essence', 0),
(95, 'steam:1100001197619a3', 'icetea', 0),
(96, 'steam:1100001197619a3', 'jusfruit', 0),
(97, 'steam:1100001197619a3', 'clothe', 0),
(98, 'steam:1100001045fbd8f', 'bandage', 20),
(99, 'steam:1100001045fbd8f', 'jagerbomb', 0),
(100, 'steam:1100001045fbd8f', 'vodka', 0),
(101, 'steam:1100001045fbd8f', 'myrte', 0),
(102, 'steam:1100001045fbd8f', 'metreshooter', 0),
(103, 'steam:1100001045fbd8f', 'wood', 0),
(104, 'steam:1100001045fbd8f', 'myrtealcool', 0),
(105, 'steam:1100001045fbd8f', 'gitanes', 0),
(106, 'steam:1100001045fbd8f', 'gold', 0),
(107, 'steam:1100001045fbd8f', 'limonade', 0),
(108, 'steam:1100001045fbd8f', 'yusuf', 3),
(109, 'steam:1100001045fbd8f', 'bolcacahuetes', 0),
(110, 'steam:1100001045fbd8f', 'malbora', 0),
(111, 'steam:1100001045fbd8f', 'opium_pooch', 0),
(112, 'steam:1100001045fbd8f', 'coke', 0),
(113, 'steam:1100001045fbd8f', 'coke_pooch', 0),
(114, 'steam:1100001045fbd8f', 'fish', 0),
(115, 'steam:1100001045fbd8f', 'medikit', 0),
(116, 'steam:1100001045fbd8f', 'fixkit', 0),
(117, 'steam:1100001045fbd8f', 'jus_raisin', 0),
(118, 'steam:1100001045fbd8f', 'packaged_chicken', 0),
(119, 'steam:1100001045fbd8f', 'tabacblond', 0),
(120, 'steam:1100001045fbd8f', 'petrol', 0),
(121, 'steam:1100001045fbd8f', 'jagercerbere', 0),
(122, 'steam:1100001045fbd8f', 'packaged_plank', 0),
(123, 'steam:1100001045fbd8f', 'croquettes', 0),
(124, 'steam:1100001045fbd8f', 'grand_cru', 0),
(125, 'steam:1100001045fbd8f', 'wool', 0),
(126, 'steam:1100001045fbd8f', 'blowpipe', 0),
(127, 'steam:1100001045fbd8f', 'bolchips', 0),
(128, 'steam:1100001045fbd8f', 'fixtool', 0),
(129, 'steam:1100001045fbd8f', 'weed_pooch', 0),
(130, 'steam:1100001045fbd8f', 'whiskycoc', 0),
(131, 'steam:1100001045fbd8f', 'whiskycoca', 0),
(132, 'steam:1100001045fbd8f', 'mixapero', 0),
(133, 'steam:1100001045fbd8f', 'ice', 0),
(134, 'steam:1100001045fbd8f', 'weed', 0),
(135, 'steam:1100001045fbd8f', 'washed_stone', 7),
(136, 'steam:1100001045fbd8f', 'water', 9),
(137, 'steam:1100001045fbd8f', 'myrte_cargo', 0),
(138, 'steam:1100001045fbd8f', 'vodkrb', 0),
(139, 'steam:1100001045fbd8f', 'petrol_raffin', 0),
(140, 'steam:1100001045fbd8f', 'vodkafruit', 0),
(141, 'steam:1100001045fbd8f', 'tabacbrunsec', 0),
(142, 'steam:1100001045fbd8f', 'opium', 0),
(143, 'steam:1100001045fbd8f', 'clip', 3),
(144, 'steam:1100001045fbd8f', 'vine', 0),
(145, 'steam:1100001045fbd8f', 'fabric', 0),
(146, 'steam:1100001045fbd8f', 'vodkaenergy', 0),
(147, 'steam:1100001045fbd8f', 'silencieux', 3),
(148, 'steam:1100001045fbd8f', 'mojito', 0),
(149, 'steam:1100001045fbd8f', 'viande', 0),
(150, 'steam:1100001045fbd8f', 'drpepper', 0),
(151, 'steam:1100001045fbd8f', 'diamond', 0),
(152, 'steam:1100001045fbd8f', 'stone', 0),
(153, 'steam:1100001045fbd8f', 'teqpaf', 0),
(154, 'steam:1100001045fbd8f', 'soda', 0),
(155, 'steam:1100001045fbd8f', 'tabacblondsec', 0),
(156, 'steam:1100001045fbd8f', 'cagoule', 0),
(157, 'steam:1100001045fbd8f', 'tabacbrun', 0),
(158, 'steam:1100001045fbd8f', 'tequila', 0),
(159, 'steam:1100001045fbd8f', 'raisin', 0),
(160, 'steam:1100001045fbd8f', 'saucisson', 0),
(161, 'steam:1100001045fbd8f', 'slaughtered_chicken', 0),
(162, 'steam:1100001045fbd8f', 'rhumcoca', 0),
(163, 'steam:1100001045fbd8f', 'cutted_wood', 0),
(164, 'steam:1100001045fbd8f', 'redbull_cargo', 0),
(165, 'steam:1100001045fbd8f', 'rhum', 0),
(166, 'steam:1100001045fbd8f', 'bread', 0),
(167, 'steam:1100001045fbd8f', 'jager', 0),
(168, 'steam:1100001045fbd8f', 'copper', 0),
(169, 'steam:1100001045fbd8f', 'grip', 3),
(170, 'steam:1100001045fbd8f', 'alcool', 0),
(171, 'steam:1100001045fbd8f', 'redbull', 0),
(172, 'steam:1100001045fbd8f', 'rhumfruit', 0),
(173, 'steam:1100001045fbd8f', 'bolpistache', 0),
(174, 'steam:1100001045fbd8f', 'grapperaisin', 0),
(175, 'steam:1100001045fbd8f', 'carotool', 0),
(176, 'steam:1100001045fbd8f', 'alive_chicken', 0),
(177, 'steam:1100001045fbd8f', 'menthe', 0),
(178, 'steam:1100001045fbd8f', 'golem', 0),
(179, 'steam:1100001045fbd8f', 'meth_pooch', 0),
(180, 'steam:1100001045fbd8f', 'martini', 0),
(181, 'steam:1100001045fbd8f', 'gazbottle', 0),
(182, 'steam:1100001045fbd8f', 'bolnoixcajou', 0),
(183, 'steam:1100001045fbd8f', 'carokit', 0),
(184, 'steam:1100001045fbd8f', 'energy', 0),
(185, 'steam:1100001045fbd8f', 'iron', 0),
(186, 'steam:1100001045fbd8f', 'whisky', 0),
(187, 'steam:1100001045fbd8f', 'jewels', 0),
(188, 'steam:1100001045fbd8f', 'meth', 0),
(189, 'steam:1100001045fbd8f', 'essence', 0),
(190, 'steam:1100001045fbd8f', 'flashlight', 4),
(191, 'steam:1100001045fbd8f', 'alcool_cargo', 0),
(192, 'steam:1100001045fbd8f', 'clothe', 0),
(193, 'steam:1100001045fbd8f', 'icetea', 0),
(194, 'steam:1100001045fbd8f', 'jusfruit', 0),
(195, 'steam:110000114a058a8', 'myrte', -1),
(196, 'steam:110000114a058a8', 'bandage', 0),
(197, 'steam:110000114a058a8', 'vodka', 0),
(198, 'steam:110000114a058a8', 'jagerbomb', 0),
(199, 'steam:110000114a058a8', 'metreshooter', 0),
(200, 'steam:110000114a058a8', 'gold', 0),
(201, 'steam:110000114a058a8', 'wood', 0),
(202, 'steam:110000114a058a8', 'gitanes', 0),
(203, 'steam:110000114a058a8', 'limonade', 0),
(204, 'steam:110000114a058a8', 'myrtealcool', 0),
(205, 'steam:110000114a058a8', 'yusuf', 1),
(206, 'steam:110000114a058a8', 'bolcacahuetes', 0),
(207, 'steam:110000114a058a8', 'coke', 0),
(208, 'steam:110000114a058a8', 'malbora', 0),
(209, 'steam:110000114a058a8', 'opium_pooch', 0),
(210, 'steam:110000114a058a8', 'fixkit', 0),
(211, 'steam:110000114a058a8', 'medikit', 0),
(212, 'steam:110000114a058a8', 'coke_pooch', 0),
(213, 'steam:110000114a058a8', 'fish', 0),
(214, 'steam:110000114a058a8', 'jus_raisin', 0),
(215, 'steam:110000114a058a8', 'jagercerbere', 0),
(216, 'steam:110000114a058a8', 'petrol', 0),
(217, 'steam:110000114a058a8', 'packaged_chicken', 0),
(218, 'steam:110000114a058a8', 'packaged_plank', 0),
(219, 'steam:110000114a058a8', 'tabacblond', 0),
(220, 'steam:110000114a058a8', 'bolchips', 0),
(221, 'steam:110000114a058a8', 'croquettes', 0),
(222, 'steam:110000114a058a8', 'wool', 0),
(223, 'steam:110000114a058a8', 'grand_cru', 0),
(224, 'steam:110000114a058a8', 'blowpipe', 0),
(225, 'steam:110000114a058a8', 'mixapero', 0),
(226, 'steam:110000114a058a8', 'whiskycoc', 0),
(227, 'steam:110000114a058a8', 'weed_pooch', 0),
(228, 'steam:110000114a058a8', 'fixtool', 0),
(229, 'steam:110000114a058a8', 'whiskycoca', 0),
(230, 'steam:110000114a058a8', 'washed_stone', 0),
(231, 'steam:110000114a058a8', 'ice', 0),
(232, 'steam:110000114a058a8', 'weed', 0),
(233, 'steam:110000114a058a8', 'myrte_cargo', 0),
(234, 'steam:110000114a058a8', 'water', 0),
(235, 'steam:110000114a058a8', 'vodkrb', 0),
(236, 'steam:110000114a058a8', 'opium', 0),
(237, 'steam:110000114a058a8', 'vodkafruit', 0),
(238, 'steam:110000114a058a8', 'petrol_raffin', 0),
(239, 'steam:110000114a058a8', 'tabacbrunsec', 0),
(240, 'steam:110000114a058a8', 'clip', 0),
(241, 'steam:110000114a058a8', 'fabric', 0),
(242, 'steam:110000114a058a8', 'vodkaenergy', 0),
(243, 'steam:110000114a058a8', 'silencieux', 3),
(244, 'steam:110000114a058a8', 'vine', 0),
(245, 'steam:110000114a058a8', 'diamond', 0),
(246, 'steam:110000114a058a8', 'viande', 0),
(247, 'steam:110000114a058a8', 'drpepper', 0),
(248, 'steam:110000114a058a8', 'stone', 0),
(249, 'steam:110000114a058a8', 'mojito', 0),
(250, 'steam:110000114a058a8', 'teqpaf', 0),
(251, 'steam:110000114a058a8', 'tabacblondsec', 0),
(252, 'steam:110000114a058a8', 'soda', 0),
(253, 'steam:110000114a058a8', 'cagoule', 0),
(254, 'steam:110000114a058a8', 'tabacbrun', 0),
(255, 'steam:110000114a058a8', 'rhumcoca', 0),
(256, 'steam:110000114a058a8', 'raisin', 0),
(257, 'steam:110000114a058a8', 'saucisson', 0),
(258, 'steam:110000114a058a8', 'slaughtered_chicken', 0),
(259, 'steam:110000114a058a8', 'tequila', 0),
(260, 'steam:110000114a058a8', 'cutted_wood', 0),
(261, 'steam:110000114a058a8', 'rhum', 0),
(262, 'steam:110000114a058a8', 'bread', 6),
(263, 'steam:110000114a058a8', 'redbull_cargo', 0),
(264, 'steam:110000114a058a8', 'jager', 0),
(265, 'steam:110000114a058a8', 'redbull', -1),
(266, 'steam:110000114a058a8', 'rhumfruit', 0),
(267, 'steam:110000114a058a8', 'alcool', -2),
(268, 'steam:110000114a058a8', 'grip', 1),
(269, 'steam:110000114a058a8', 'copper', 0),
(270, 'steam:110000114a058a8', 'bolpistache', 0),
(271, 'steam:110000114a058a8', 'grapperaisin', 0),
(272, 'steam:110000114a058a8', 'carotool', 0),
(273, 'steam:110000114a058a8', 'alive_chicken', 0),
(274, 'steam:110000114a058a8', 'menthe', 0),
(275, 'steam:110000114a058a8', 'bolnoixcajou', 0),
(276, 'steam:110000114a058a8', 'martini', 0),
(277, 'steam:110000114a058a8', 'gazbottle', 0),
(278, 'steam:110000114a058a8', 'golem', 0),
(279, 'steam:110000114a058a8', 'meth_pooch', 0),
(280, 'steam:110000114a058a8', 'carokit', 0),
(281, 'steam:110000114a058a8', 'jewels', 2),
(282, 'steam:110000114a058a8', 'whisky', 0),
(283, 'steam:110000114a058a8', 'energy', 0),
(284, 'steam:110000114a058a8', 'iron', 0),
(285, 'steam:110000114a058a8', 'meth', 0),
(286, 'steam:110000114a058a8', 'flashlight', 0),
(287, 'steam:110000114a058a8', 'alcool_cargo', 0),
(288, 'steam:110000114a058a8', 'clothe', 0),
(289, 'steam:110000114a058a8', 'essence', 0),
(290, 'steam:110000114a058a8', 'icetea', 0),
(291, 'steam:110000114a058a8', 'jusfruit', 0),
(292, 'steam:11000010a1b83df', 'metreshooter', 0),
(293, 'steam:11000010a1b83df', 'myrte', 0),
(294, 'steam:11000010a1b83df', 'vodka', 0),
(295, 'steam:11000010a1b83df', 'bandage', 0),
(296, 'steam:11000010a1b83df', 'jagerbomb', 0),
(297, 'steam:11000010a1b83df', 'gold', 0),
(298, 'steam:11000010a1b83df', 'limonade', 0),
(299, 'steam:11000010a1b83df', 'wood', 0),
(300, 'steam:11000010a1b83df', 'gitanes', 0),
(301, 'steam:11000010a1b83df', 'myrtealcool', 0),
(302, 'steam:11000010a1b83df', 'yusuf', 2),
(303, 'steam:11000010a1b83df', 'bolcacahuetes', 0),
(304, 'steam:11000010a1b83df', 'coke', 0),
(305, 'steam:11000010a1b83df', 'opium_pooch', 0),
(306, 'steam:11000010a1b83df', 'malbora', 0),
(307, 'steam:11000010a1b83df', 'fixkit', 0),
(308, 'steam:11000010a1b83df', 'medikit', 0),
(309, 'steam:11000010a1b83df', 'coke_pooch', 0),
(310, 'steam:11000010a1b83df', 'fish', 0),
(311, 'steam:11000010a1b83df', 'jus_raisin', 0),
(312, 'steam:11000010a1b83df', 'jagercerbere', 0),
(313, 'steam:11000010a1b83df', 'petrol', 0),
(314, 'steam:11000010a1b83df', 'packaged_chicken', 0),
(315, 'steam:11000010a1b83df', 'packaged_plank', 0),
(316, 'steam:11000010a1b83df', 'tabacblond', 0),
(317, 'steam:11000010a1b83df', 'wool', 0),
(318, 'steam:11000010a1b83df', 'croquettes', 8),
(319, 'steam:11000010a1b83df', 'grand_cru', 0),
(320, 'steam:11000010a1b83df', 'blowpipe', 0),
(321, 'steam:11000010a1b83df', 'bolchips', 0),
(322, 'steam:11000010a1b83df', 'mixapero', 0),
(323, 'steam:11000010a1b83df', 'whiskycoc', 0),
(324, 'steam:11000010a1b83df', 'fixtool', 0),
(325, 'steam:11000010a1b83df', 'whiskycoca', 0),
(326, 'steam:11000010a1b83df', 'weed_pooch', 0),
(327, 'steam:11000010a1b83df', 'washed_stone', 7),
(328, 'steam:11000010a1b83df', 'weed', 0),
(329, 'steam:11000010a1b83df', 'ice', 0),
(330, 'steam:11000010a1b83df', 'myrte_cargo', 0),
(331, 'steam:11000010a1b83df', 'water', 0),
(332, 'steam:11000010a1b83df', 'vodkrb', 0),
(333, 'steam:11000010a1b83df', 'opium', 0),
(334, 'steam:11000010a1b83df', 'petrol_raffin', 0),
(335, 'steam:11000010a1b83df', 'vodkafruit', 0),
(336, 'steam:11000010a1b83df', 'tabacbrunsec', 0),
(337, 'steam:11000010a1b83df', 'vodkaenergy', 0),
(338, 'steam:11000010a1b83df', 'silencieux', 0),
(339, 'steam:11000010a1b83df', 'vine', 0),
(340, 'steam:11000010a1b83df', 'clip', 0),
(341, 'steam:11000010a1b83df', 'fabric', 0),
(342, 'steam:11000010a1b83df', 'drpepper', 0),
(343, 'steam:11000010a1b83df', 'viande', 0),
(344, 'steam:11000010a1b83df', 'mojito', 0),
(345, 'steam:11000010a1b83df', 'stone', 0),
(346, 'steam:11000010a1b83df', 'diamond', 0),
(347, 'steam:11000010a1b83df', 'teqpaf', 0),
(348, 'steam:11000010a1b83df', 'tabacblondsec', 0),
(349, 'steam:11000010a1b83df', 'tabacbrun', 0),
(350, 'steam:11000010a1b83df', 'soda', 0),
(351, 'steam:11000010a1b83df', 'cagoule', 0),
(352, 'steam:11000010a1b83df', 'tequila', 0),
(353, 'steam:11000010a1b83df', 'slaughtered_chicken', 0),
(354, 'steam:11000010a1b83df', 'raisin', 0),
(355, 'steam:11000010a1b83df', 'rhumcoca', 0),
(356, 'steam:11000010a1b83df', 'saucisson', 0),
(357, 'steam:11000010a1b83df', 'cutted_wood', 0),
(358, 'steam:11000010a1b83df', 'jager', 0),
(359, 'steam:11000010a1b83df', 'redbull_cargo', 0),
(360, 'steam:11000010a1b83df', 'rhum', 0),
(361, 'steam:11000010a1b83df', 'bread', 0),
(362, 'steam:11000010a1b83df', 'redbull', 0),
(363, 'steam:11000010a1b83df', 'grip', 0),
(364, 'steam:11000010a1b83df', 'rhumfruit', 0),
(365, 'steam:11000010a1b83df', 'alcool', 0),
(366, 'steam:11000010a1b83df', 'copper', 0),
(367, 'steam:11000010a1b83df', 'menthe', 0),
(368, 'steam:11000010a1b83df', 'alive_chicken', 0),
(369, 'steam:11000010a1b83df', 'grapperaisin', 0),
(370, 'steam:11000010a1b83df', 'carotool', 0),
(371, 'steam:11000010a1b83df', 'bolpistache', 0),
(372, 'steam:11000010a1b83df', 'bolnoixcajou', 0),
(373, 'steam:11000010a1b83df', 'martini', 0),
(374, 'steam:11000010a1b83df', 'gazbottle', 0),
(375, 'steam:11000010a1b83df', 'meth_pooch', 0),
(376, 'steam:11000010a1b83df', 'golem', 0),
(377, 'steam:11000010a1b83df', 'carokit', 0),
(378, 'steam:11000010a1b83df', 'iron', 0),
(379, 'steam:11000010a1b83df', 'jewels', 0),
(380, 'steam:11000010a1b83df', 'whisky', 0),
(381, 'steam:11000010a1b83df', 'energy', 0),
(382, 'steam:11000010a1b83df', 'meth', 0),
(383, 'steam:11000010a1b83df', 'flashlight', 0),
(384, 'steam:11000010a1b83df', 'alcool_cargo', 0),
(385, 'steam:11000010a1b83df', 'essence', 0),
(386, 'steam:11000010a1b83df', 'clothe', 0),
(387, 'steam:11000010a1b83df', 'icetea', 0),
(388, 'steam:11000010a1b83df', 'jusfruit', 0),
(389, 'steam:1100001167d265e', 'ice', 0),
(390, 'steam:1100001167d265e', 'jus_raisin', 0),
(391, 'steam:1100001167d265e', 'cagoule', 0),
(392, 'steam:1100001167d265e', 'coke', 0),
(393, 'steam:1100001167d265e', 'mixapero', 0),
(394, 'steam:1100001167d265e', 'jagercerbere', 0),
(395, 'steam:1100001167d265e', 'essence', 0),
(396, 'steam:1100001167d265e', 'jagerbomb', 0),
(397, 'steam:1100001167d265e', 'redbull_cargo', 0),
(398, 'steam:1100001167d265e', 'jager', 0),
(399, 'steam:1100001167d265e', 'saucisson', 0),
(400, 'steam:1100001167d265e', 'alcool_cargo', 0),
(401, 'steam:1100001167d265e', 'jusfruit', 0),
(402, 'steam:1100001167d265e', 'opium', 0),
(403, 'steam:1100001167d265e', 'bolchips', 0),
(404, 'steam:1100001167d265e', 'cutted_wood', 0),
(405, 'steam:1100001167d265e', 'gazbottle', 4),
(406, 'steam:1100001167d265e', 'fixtool', 0),
(407, 'steam:1100001167d265e', 'grip', 2),
(408, 'steam:1100001167d265e', 'iron', 0),
(409, 'steam:1100001167d265e', 'rhumfruit', 0),
(410, 'steam:1100001167d265e', 'packaged_chicken', 0),
(411, 'steam:1100001167d265e', 'whisky', 0),
(412, 'steam:1100001167d265e', 'meth', 0),
(413, 'steam:1100001167d265e', 'wood', 0),
(414, 'steam:1100001167d265e', 'whiskycoca', 0),
(415, 'steam:1100001167d265e', 'bolnoixcajou', 0),
(416, 'steam:1100001167d265e', 'wool', 0),
(417, 'steam:1100001167d265e', 'yusuf', 8),
(418, 'steam:1100001167d265e', 'martini', 0),
(419, 'steam:1100001167d265e', 'weed', 0),
(420, 'steam:1100001167d265e', 'gold', 0),
(421, 'steam:1100001167d265e', 'whiskycoc', 0),
(422, 'steam:1100001167d265e', 'flashlight', 0),
(423, 'steam:1100001167d265e', 'icetea', 0),
(424, 'steam:1100001167d265e', 'teqpaf', 0),
(425, 'steam:1100001167d265e', 'water', 7),
(426, 'steam:1100001167d265e', 'tabacbrunsec', 0),
(427, 'steam:1100001167d265e', 'bread', 1),
(428, 'steam:1100001167d265e', 'meth_pooch', 0),
(429, 'steam:1100001167d265e', 'fixkit', 0),
(430, 'steam:1100001167d265e', 'vodkaenergy', 0),
(431, 'steam:1100001167d265e', 'tequila', 0),
(432, 'steam:1100001167d265e', 'tabacblondsec', 0),
(433, 'steam:1100001167d265e', 'vodkrb', 0),
(434, 'steam:1100001167d265e', 'viande', 0),
(435, 'steam:1100001167d265e', 'vodka', 0),
(436, 'steam:1100001167d265e', 'myrte_cargo', 0),
(437, 'steam:1100001167d265e', 'vine', 0),
(438, 'steam:1100001167d265e', 'bolcacahuetes', 0),
(439, 'steam:1100001167d265e', 'tabacblond', 0),
(440, 'steam:1100001167d265e', 'tabacbrun', 0),
(441, 'steam:1100001167d265e', 'soda', 0),
(442, 'steam:1100001167d265e', 'stone', 0),
(443, 'steam:1100001167d265e', 'silencieux', 1),
(444, 'steam:1100001167d265e', 'menthe', 0),
(445, 'steam:1100001167d265e', 'fabric', 0),
(446, 'steam:1100001167d265e', 'slaughtered_chicken', 0),
(447, 'steam:1100001167d265e', 'rhumcoca', 0),
(448, 'steam:1100001167d265e', 'clip', 0),
(449, 'steam:1100001167d265e', 'petrol_raffin', 0),
(450, 'steam:1100001167d265e', 'golem', 0),
(451, 'steam:1100001167d265e', 'rhum', 0),
(452, 'steam:1100001167d265e', 'redbull', 0),
(453, 'steam:1100001167d265e', 'diamond', 0),
(454, 'steam:1100001167d265e', 'metreshooter', 0),
(455, 'steam:1100001167d265e', 'fish', 0),
(456, 'steam:1100001167d265e', 'opium_pooch', 0),
(457, 'steam:1100001167d265e', 'blowpipe', 0),
(458, 'steam:1100001167d265e', 'copper', 0),
(459, 'steam:1100001167d265e', 'weed_pooch', 0),
(460, 'steam:1100001167d265e', 'drpepper', 0),
(461, 'steam:1100001167d265e', 'jewels', 0),
(462, 'steam:1100001167d265e', 'grapperaisin', 0),
(463, 'steam:1100001167d265e', 'raisin', 0),
(464, 'steam:1100001167d265e', 'alcool', 0),
(465, 'steam:1100001167d265e', 'packaged_plank', 0),
(466, 'steam:1100001167d265e', 'washed_stone', 0),
(467, 'steam:1100001167d265e', 'petrol', 0),
(468, 'steam:1100001167d265e', 'alive_chicken', 0),
(469, 'steam:1100001167d265e', 'myrte', 0),
(470, 'steam:1100001167d265e', 'vodkafruit', 0),
(471, 'steam:1100001167d265e', 'carotool', 4),
(472, 'steam:1100001167d265e', 'coke_pooch', 0),
(473, 'steam:1100001167d265e', 'myrtealcool', 0),
(474, 'steam:1100001167d265e', 'grand_cru', 0),
(475, 'steam:1100001167d265e', 'bolpistache', 0),
(476, 'steam:1100001167d265e', 'gitanes', 0),
(477, 'steam:1100001167d265e', 'energy', 0),
(478, 'steam:1100001167d265e', 'croquettes', 11),
(479, 'steam:1100001167d265e', 'malbora', 0),
(480, 'steam:1100001167d265e', 'mojito', 0),
(481, 'steam:1100001167d265e', 'medikit', 0),
(482, 'steam:1100001167d265e', 'bandage', 0),
(483, 'steam:1100001167d265e', 'clothe', 0),
(484, 'steam:1100001167d265e', 'limonade', 0),
(485, 'steam:1100001167d265e', 'carokit', 0),
(486, 'steam:11000010b3a30a0', 'coke', 0),
(487, 'steam:11000010b3a30a0', 'ice', 0),
(488, 'steam:11000010b3a30a0', 'jus_raisin', 0),
(489, 'steam:11000010b3a30a0', 'cagoule', 0),
(490, 'steam:11000010b3a30a0', 'mixapero', 0),
(491, 'steam:11000010b3a30a0', 'jagercerbere', 0),
(492, 'steam:11000010b3a30a0', 'jagerbomb', 0),
(493, 'steam:11000010b3a30a0', 'redbull_cargo', 0),
(494, 'steam:11000010b3a30a0', 'essence', 0),
(495, 'steam:11000010b3a30a0', 'jager', 0),
(496, 'steam:11000010b3a30a0', 'saucisson', 0),
(497, 'steam:11000010b3a30a0', 'opium', 0),
(498, 'steam:11000010b3a30a0', 'alcool_cargo', 0),
(499, 'steam:11000010b3a30a0', 'jusfruit', 0),
(500, 'steam:11000010b3a30a0', 'bolchips', 0),
(501, 'steam:11000010b3a30a0', 'grip', 0),
(502, 'steam:11000010b3a30a0', 'gazbottle', 0),
(503, 'steam:11000010b3a30a0', 'cutted_wood', 0),
(504, 'steam:11000010b3a30a0', 'fixtool', 0),
(505, 'steam:11000010b3a30a0', 'iron', 0),
(506, 'steam:11000010b3a30a0', 'rhumfruit', 0),
(507, 'steam:11000010b3a30a0', 'packaged_chicken', 0),
(508, 'steam:11000010b3a30a0', 'whisky', 0),
(509, 'steam:11000010b3a30a0', 'meth', 0),
(510, 'steam:11000010b3a30a0', 'wool', 0),
(511, 'steam:11000010b3a30a0', 'bolnoixcajou', 0),
(512, 'steam:11000010b3a30a0', 'whiskycoca', 0),
(513, 'steam:11000010b3a30a0', 'yusuf', 2),
(514, 'steam:11000010b3a30a0', 'wood', 0),
(515, 'steam:11000010b3a30a0', 'whiskycoc', 0),
(516, 'steam:11000010b3a30a0', 'martini', 0),
(517, 'steam:11000010b3a30a0', 'weed', 0),
(518, 'steam:11000010b3a30a0', 'gold', 0),
(519, 'steam:11000010b3a30a0', 'flashlight', 0),
(520, 'steam:11000010b3a30a0', 'bread', 10),
(521, 'steam:11000010b3a30a0', 'tabacbrunsec', 0),
(522, 'steam:11000010b3a30a0', 'icetea', 0),
(523, 'steam:11000010b3a30a0', 'water', 3),
(524, 'steam:11000010b3a30a0', 'teqpaf', 0),
(525, 'steam:11000010b3a30a0', 'tabacblondsec', 0),
(526, 'steam:11000010b3a30a0', 'tequila', 0),
(527, 'steam:11000010b3a30a0', 'meth_pooch', 0),
(528, 'steam:11000010b3a30a0', 'fixkit', 0),
(529, 'steam:11000010b3a30a0', 'myrte_cargo', 0),
(530, 'steam:11000010b3a30a0', 'vodkaenergy', 0),
(531, 'steam:11000010b3a30a0', 'vodka', 0),
(532, 'steam:11000010b3a30a0', 'vodkrb', 0),
(533, 'steam:11000010b3a30a0', 'viande', 0),
(534, 'steam:11000010b3a30a0', 'tabacbrun', 0),
(535, 'steam:11000010b3a30a0', 'vine', 0),
(536, 'steam:11000010b3a30a0', 'tabacblond', 0),
(537, 'steam:11000010b3a30a0', 'bolcacahuetes', 0),
(538, 'steam:11000010b3a30a0', 'slaughtered_chicken', 0),
(539, 'steam:11000010b3a30a0', 'soda', 0),
(540, 'steam:11000010b3a30a0', 'stone', 7),
(541, 'steam:11000010b3a30a0', 'fabric', 0),
(542, 'steam:11000010b3a30a0', 'menthe', 0),
(543, 'steam:11000010b3a30a0', 'rhumcoca', 0),
(544, 'steam:11000010b3a30a0', 'clip', 1),
(545, 'steam:11000010b3a30a0', 'rhum', 0),
(546, 'steam:11000010b3a30a0', 'silencieux', 1),
(547, 'steam:11000010b3a30a0', 'petrol_raffin', 0),
(548, 'steam:11000010b3a30a0', 'golem', 0),
(549, 'steam:11000010b3a30a0', 'metreshooter', 0),
(550, 'steam:11000010b3a30a0', 'diamond', 0),
(551, 'steam:11000010b3a30a0', 'redbull', 0),
(552, 'steam:11000010b3a30a0', 'copper', 0),
(553, 'steam:11000010b3a30a0', 'grapperaisin', 0),
(554, 'steam:11000010b3a30a0', 'fish', 0),
(555, 'steam:11000010b3a30a0', 'blowpipe', 0),
(556, 'steam:11000010b3a30a0', 'opium_pooch', 0),
(557, 'steam:11000010b3a30a0', 'jewels', 0),
(558, 'steam:11000010b3a30a0', 'weed_pooch', 0),
(559, 'steam:11000010b3a30a0', 'alcool', 0),
(560, 'steam:11000010b3a30a0', 'washed_stone', 0),
(561, 'steam:11000010b3a30a0', 'drpepper', 0),
(562, 'steam:11000010b3a30a0', 'myrte', 0),
(563, 'steam:11000010b3a30a0', 'alive_chicken', 0),
(564, 'steam:11000010b3a30a0', 'raisin', 0),
(565, 'steam:11000010b3a30a0', 'petrol', 0),
(566, 'steam:11000010b3a30a0', 'packaged_plank', 0),
(567, 'steam:11000010b3a30a0', 'grand_cru', 0),
(568, 'steam:11000010b3a30a0', 'carotool', 0),
(569, 'steam:11000010b3a30a0', 'coke_pooch', 0),
(570, 'steam:11000010b3a30a0', 'myrtealcool', 0),
(571, 'steam:11000010b3a30a0', 'vodkafruit', 0),
(572, 'steam:11000010b3a30a0', 'malbora', 0),
(573, 'steam:11000010b3a30a0', 'energy', 0),
(574, 'steam:11000010b3a30a0', 'bolpistache', 0),
(575, 'steam:11000010b3a30a0', 'mojito', 0),
(576, 'steam:11000010b3a30a0', 'gitanes', 0),
(577, 'steam:11000010b3a30a0', 'limonade', 0),
(578, 'steam:11000010b3a30a0', 'medikit', 0),
(579, 'steam:11000010b3a30a0', 'carokit', 0),
(580, 'steam:11000010b3a30a0', 'croquettes', 0),
(581, 'steam:11000010b3a30a0', 'bandage', 0),
(582, 'steam:11000010b3a30a0', 'clothe', 0),
(583, 'steam:11000011685b145', 'coke', 0),
(584, 'steam:11000011685b145', 'cagoule', 0),
(585, 'steam:11000011685b145', 'ice', 0),
(586, 'steam:11000011685b145', 'jus_raisin', 0),
(587, 'steam:11000011685b145', 'mixapero', 0),
(588, 'steam:11000011685b145', 'jagercerbere', 0),
(589, 'steam:11000011685b145', 'essence', 0),
(590, 'steam:11000011685b145', 'jagerbomb', 0),
(591, 'steam:11000011685b145', 'jager', 0),
(592, 'steam:11000011685b145', 'redbull_cargo', 0),
(593, 'steam:11000011685b145', 'saucisson', 0),
(594, 'steam:11000011685b145', 'opium', 0),
(595, 'steam:11000011685b145', 'jusfruit', 0),
(596, 'steam:11000011685b145', 'grip', 1),
(597, 'steam:11000011685b145', 'bolchips', 0),
(598, 'steam:11000011685b145', 'alcool_cargo', 0),
(599, 'steam:11000011685b145', 'gazbottle', 0),
(600, 'steam:11000011685b145', 'fixtool', 0),
(601, 'steam:11000011685b145', 'cutted_wood', 0),
(602, 'steam:11000011685b145', 'packaged_chicken', 0),
(603, 'steam:11000011685b145', 'iron', 0),
(604, 'steam:11000011685b145', 'rhumfruit', 0),
(605, 'steam:11000011685b145', 'meth', 0),
(606, 'steam:11000011685b145', 'whisky', 0),
(607, 'steam:11000011685b145', 'wool', 0),
(608, 'steam:11000011685b145', 'yusuf', 1),
(609, 'steam:11000011685b145', 'martini', 0),
(610, 'steam:11000011685b145', 'bolnoixcajou', 0),
(611, 'steam:11000011685b145', 'wood', 0),
(612, 'steam:11000011685b145', 'whiskycoca', 0),
(613, 'steam:11000011685b145', 'whiskycoc', 0),
(614, 'steam:11000011685b145', 'tabacbrunsec', 0),
(615, 'steam:11000011685b145', 'flashlight', 1),
(616, 'steam:11000011685b145', 'bread', 0),
(617, 'steam:11000011685b145', 'weed', 0),
(618, 'steam:11000011685b145', 'gold', 0),
(619, 'steam:11000011685b145', 'water', 0),
(620, 'steam:11000011685b145', 'tabacblondsec', 0),
(621, 'steam:11000011685b145', 'tequila', 0),
(622, 'steam:11000011685b145', 'teqpaf', 0),
(623, 'steam:11000011685b145', 'icetea', 0),
(624, 'steam:11000011685b145', 'vodka', 0),
(625, 'steam:11000011685b145', 'fixkit', 0),
(626, 'steam:11000011685b145', 'myrte_cargo', 0),
(627, 'steam:11000011685b145', 'vodkaenergy', 0),
(628, 'steam:11000011685b145', 'meth_pooch', 0),
(629, 'steam:11000011685b145', 'viande', 0),
(630, 'steam:11000011685b145', 'tabacblond', 0),
(631, 'steam:11000011685b145', 'vodkrb', 0),
(632, 'steam:11000011685b145', 'tabacbrun', 0),
(633, 'steam:11000011685b145', 'vine', 0),
(634, 'steam:11000011685b145', 'stone', 0),
(635, 'steam:11000011685b145', 'soda', 0),
(636, 'steam:11000011685b145', 'fabric', 0),
(637, 'steam:11000011685b145', 'bolcacahuetes', 0),
(638, 'steam:11000011685b145', 'slaughtered_chicken', 0),
(639, 'steam:11000011685b145', 'menthe', 0),
(640, 'steam:11000011685b145', 'clip', 1),
(641, 'steam:11000011685b145', 'silencieux', 1),
(642, 'steam:11000011685b145', 'rhum', 0),
(643, 'steam:11000011685b145', 'rhumcoca', 0),
(644, 'steam:11000011685b145', 'golem', 0),
(645, 'steam:11000011685b145', 'redbull', 0),
(646, 'steam:11000011685b145', 'petrol_raffin', 0),
(647, 'steam:11000011685b145', 'diamond', 0),
(648, 'steam:11000011685b145', 'metreshooter', 0),
(649, 'steam:11000011685b145', 'opium_pooch', 0),
(650, 'steam:11000011685b145', 'fish', 0),
(651, 'steam:11000011685b145', 'grapperaisin', 0),
(652, 'steam:11000011685b145', 'blowpipe', 0),
(653, 'steam:11000011685b145', 'copper', 0),
(654, 'steam:11000011685b145', 'drpepper', 0),
(655, 'steam:11000011685b145', 'washed_stone', 0),
(656, 'steam:11000011685b145', 'weed_pooch', 0),
(657, 'steam:11000011685b145', 'jewels', 0),
(658, 'steam:11000011685b145', 'alcool', 0),
(659, 'steam:11000011685b145', 'packaged_plank', 0),
(660, 'steam:11000011685b145', 'alive_chicken', 0),
(661, 'steam:11000011685b145', 'raisin', 0),
(662, 'steam:11000011685b145', 'petrol', 0),
(663, 'steam:11000011685b145', 'myrte', 0),
(664, 'steam:11000011685b145', 'coke_pooch', 0),
(665, 'steam:11000011685b145', 'carotool', 0),
(666, 'steam:11000011685b145', 'myrtealcool', 0),
(667, 'steam:11000011685b145', 'vodkafruit', 0),
(668, 'steam:11000011685b145', 'grand_cru', 0),
(669, 'steam:11000011685b145', 'bolpistache', 0),
(670, 'steam:11000011685b145', 'energy', 0),
(671, 'steam:11000011685b145', 'malbora', 0),
(672, 'steam:11000011685b145', 'gitanes', 0),
(673, 'steam:11000011685b145', 'mojito', 0),
(674, 'steam:11000011685b145', 'bandage', 20),
(675, 'steam:11000011685b145', 'limonade', 0),
(676, 'steam:11000011685b145', 'croquettes', 0),
(677, 'steam:11000011685b145', 'medikit', 1),
(678, 'steam:11000011685b145', 'carokit', 0),
(679, 'steam:11000011685b145', 'clothe', 0),
(680, 'steam:1100001197354a7', 'malbora', 0),
(681, 'steam:1100001197354a7', 'bolnoixcajou', 0),
(682, 'steam:1100001197354a7', 'martini', 0),
(683, 'steam:1100001197354a7', 'tabacbrun', 0),
(684, 'steam:1100001197354a7', 'carokit', 0),
(685, 'steam:1100001197354a7', 'petrol_raffin', 0),
(686, 'steam:1100001197354a7', 'cutted_wood', 0),
(687, 'steam:1100001197354a7', 'coke_pooch', 0),
(688, 'steam:1100001197354a7', 'limonade', 0),
(689, 'steam:1100001197354a7', 'tabacbrunsec', 0),
(690, 'steam:1100001197354a7', 'meth', 0),
(691, 'steam:1100001197354a7', 'fixtool', 0),
(692, 'steam:1100001197354a7', 'vodkafruit', 0),
(693, 'steam:1100001197354a7', 'blowpipe', 0),
(694, 'steam:1100001197354a7', 'gold', 0),
(695, 'steam:1100001197354a7', 'gitanes', 0),
(696, 'steam:1100001197354a7', 'jewels', 0),
(697, 'steam:1100001197354a7', 'myrte', 0),
(698, 'steam:1100001197354a7', 'coke', 0),
(699, 'steam:1100001197354a7', 'redbull_cargo', 0),
(700, 'steam:1100001197354a7', 'drpepper', 0),
(701, 'steam:1100001197354a7', 'carotool', 0),
(702, 'steam:1100001197354a7', 'rhumfruit', 0),
(703, 'steam:1100001197354a7', 'wool', 0),
(704, 'steam:1100001197354a7', 'alcool_cargo', 0),
(705, 'steam:1100001197354a7', 'alive_chicken', 0),
(706, 'steam:1100001197354a7', 'cagoule', 0),
(707, 'steam:1100001197354a7', 'petrol', 0),
(708, 'steam:1100001197354a7', 'iron', 0),
(709, 'steam:1100001197354a7', 'gazbottle', 0),
(710, 'steam:1100001197354a7', 'raisin', 0),
(711, 'steam:1100001197354a7', 'alcool', 0),
(712, 'steam:1100001197354a7', 'bread', 0),
(713, 'steam:1100001197354a7', 'wood', 0),
(714, 'steam:1100001197354a7', 'jagercerbere', 0),
(715, 'steam:1100001197354a7', 'soda', 0),
(716, 'steam:1100001197354a7', 'clothe', 0),
(717, 'steam:1100001197354a7', 'rhum', 0),
(718, 'steam:1100001197354a7', 'mojito', 0),
(719, 'steam:1100001197354a7', 'bandage', 0),
(720, 'steam:1100001197354a7', 'bolpistache', 0),
(721, 'steam:1100001197354a7', 'jus_raisin', 0),
(722, 'steam:1100001197354a7', 'tequila', 0),
(723, 'steam:1100001197354a7', 'croquettes', 0),
(724, 'steam:1100001197354a7', 'weed_pooch', 0),
(725, 'steam:1100001197354a7', 'packaged_chicken', 0),
(726, 'steam:1100001197354a7', 'fish', 0),
(727, 'steam:1100001197354a7', 'silencieux', 0),
(728, 'steam:1100001197354a7', 'fabric', 0),
(729, 'steam:1100001197354a7', 'metreshooter', 0),
(730, 'steam:1100001197354a7', 'vodkaenergy', 0),
(731, 'steam:1100001197354a7', 'yusuf', 0),
(732, 'steam:1100001197354a7', 'whiskycoca', 0),
(733, 'steam:1100001197354a7', 'golem', 0),
(734, 'steam:1100001197354a7', 'packaged_plank', 0),
(735, 'steam:1100001197354a7', 'essence', 0),
(736, 'steam:1100001197354a7', 'slaughtered_chicken', 0),
(737, 'steam:1100001197354a7', 'jagerbomb', 0),
(738, 'steam:1100001197354a7', 'jusfruit', 0),
(739, 'steam:1100001197354a7', 'whisky', 0),
(740, 'steam:1100001197354a7', 'weed', 0),
(741, 'steam:1100001197354a7', 'grapperaisin', 0),
(742, 'steam:1100001197354a7', 'whiskycoc', 0),
(743, 'steam:1100001197354a7', 'copper', 0),
(744, 'steam:1100001197354a7', 'meth_pooch', 0),
(745, 'steam:1100001197354a7', 'vodkrb', 0),
(746, 'steam:1100001197354a7', 'bolchips', 0),
(747, 'steam:1100001197354a7', 'rhumcoca', 0),
(748, 'steam:1100001197354a7', 'opium', 0),
(749, 'steam:1100001197354a7', 'viande', 0),
(750, 'steam:1100001197354a7', 'vodka', 0),
(751, 'steam:1100001197354a7', 'grand_cru', 0),
(752, 'steam:1100001197354a7', 'vine', 0),
(753, 'steam:1100001197354a7', 'tabacblondsec', 0),
(754, 'steam:1100001197354a7', 'teqpaf', 0),
(755, 'steam:1100001197354a7', 'saucisson', 0),
(756, 'steam:1100001197354a7', 'tabacblond', 0),
(757, 'steam:1100001197354a7', 'myrte_cargo', 0),
(758, 'steam:1100001197354a7', 'diamond', 0),
(759, 'steam:1100001197354a7', 'stone', 0),
(760, 'steam:1100001197354a7', 'washed_stone', 0),
(761, 'steam:1100001197354a7', 'icetea', 0),
(762, 'steam:1100001197354a7', 'myrtealcool', 0),
(763, 'steam:1100001197354a7', 'bolcacahuetes', 0),
(764, 'steam:1100001197354a7', 'grip', 0),
(765, 'steam:1100001197354a7', 'opium_pooch', 0),
(766, 'steam:1100001197354a7', 'fixkit', 0),
(767, 'steam:1100001197354a7', 'clip', 0),
(768, 'steam:1100001197354a7', 'menthe', 0),
(769, 'steam:1100001197354a7', 'mixapero', 0),
(770, 'steam:1100001197354a7', 'flashlight', 0),
(771, 'steam:1100001197354a7', 'water', 0),
(772, 'steam:1100001197354a7', 'redbull', 0),
(773, 'steam:1100001197354a7', 'jager', 0),
(774, 'steam:1100001197354a7', 'ice', 0),
(775, 'steam:1100001197354a7', 'energy', 0),
(776, 'steam:1100001197354a7', 'medikit', 0),
(777, 'steam:110000111df570b', 'yusuf', 0),
(778, 'steam:110000111df570b', 'packaged_plank', 0),
(779, 'steam:110000111df570b', 'weed_pooch', 0),
(780, 'steam:110000111df570b', 'tabacbrunsec', 0),
(781, 'steam:110000111df570b', 'grand_cru', 0),
(782, 'steam:110000111df570b', 'rhum', 0),
(783, 'steam:110000111df570b', 'fixkit', 0),
(784, 'steam:110000111df570b', 'raisin', 0),
(785, 'steam:110000111df570b', 'myrte', 0),
(786, 'steam:110000111df570b', 'alcool_cargo', 0),
(787, 'steam:110000111df570b', 'cagoule', 0),
(788, 'steam:110000111df570b', 'golem', 0),
(789, 'steam:110000111df570b', 'essence', 0),
(790, 'steam:110000111df570b', 'jus_raisin', 0),
(791, 'steam:110000111df570b', 'gold', 0),
(792, 'steam:110000111df570b', 'iron', 0),
(793, 'steam:110000111df570b', 'tabacblond', 0),
(794, 'steam:110000111df570b', 'fixtool', 0),
(795, 'steam:110000111df570b', 'bread', 0),
(796, 'steam:110000111df570b', 'gazbottle', 0),
(797, 'steam:110000111df570b', 'stone', 0),
(798, 'steam:110000111df570b', 'metreshooter', 0),
(799, 'steam:110000111df570b', 'coke_pooch', 0),
(800, 'steam:110000111df570b', 'diamond', 0),
(801, 'steam:110000111df570b', 'tabacbrun', 0),
(802, 'steam:110000111df570b', 'mojito', 0),
(803, 'steam:110000111df570b', 'slaughtered_chicken', 0),
(804, 'steam:110000111df570b', 'flashlight', 0),
(805, 'steam:110000111df570b', 'jusfruit', 0),
(806, 'steam:110000111df570b', 'whiskycoc', 0),
(807, 'steam:110000111df570b', 'wool', 0),
(808, 'steam:110000111df570b', 'jagercerbere', 0),
(809, 'steam:110000111df570b', 'icetea', 0),
(810, 'steam:110000111df570b', 'carokit', 0),
(811, 'steam:110000111df570b', 'wood', 0),
(812, 'steam:110000111df570b', 'jagerbomb', 0),
(813, 'steam:110000111df570b', 'rhumcoca', 0),
(814, 'steam:110000111df570b', 'coke', 0),
(815, 'steam:110000111df570b', 'whiskycoca', 0),
(816, 'steam:110000111df570b', 'tabacblondsec', 0),
(817, 'steam:110000111df570b', 'vodkafruit', 0),
(818, 'steam:110000111df570b', 'vodkrb', 0),
(819, 'steam:110000111df570b', 'water', 0),
(820, 'steam:110000111df570b', 'vodkaenergy', 0),
(821, 'steam:110000111df570b', 'washed_stone', 0),
(822, 'steam:110000111df570b', 'packaged_chicken', 0),
(823, 'steam:110000111df570b', 'alcool', 0),
(824, 'steam:110000111df570b', 'vodka', 0),
(825, 'steam:110000111df570b', 'vine', 0),
(826, 'steam:110000111df570b', 'petrol', 0),
(827, 'steam:110000111df570b', 'viande', 0),
(828, 'steam:110000111df570b', 'bolnoixcajou', 0),
(829, 'steam:110000111df570b', 'cutted_wood', 0),
(830, 'steam:110000111df570b', 'medikit', 0),
(831, 'steam:110000111df570b', 'alive_chicken', 0),
(832, 'steam:110000111df570b', 'weed', 0),
(833, 'steam:110000111df570b', 'clothe', 0),
(834, 'steam:110000111df570b', 'tequila', 0),
(835, 'steam:110000111df570b', 'teqpaf', 0),
(836, 'steam:110000111df570b', 'martini', 0),
(837, 'steam:110000111df570b', 'clip', 0),
(838, 'steam:110000111df570b', 'bolcacahuetes', 0),
(839, 'steam:110000111df570b', 'energy', 0),
(840, 'steam:110000111df570b', 'rhumfruit', 0),
(841, 'steam:110000111df570b', 'soda', 0),
(842, 'steam:110000111df570b', 'limonade', 0),
(843, 'steam:110000111df570b', 'drpepper', 0),
(844, 'steam:110000111df570b', 'redbull', 0),
(845, 'steam:110000111df570b', 'petrol_raffin', 0),
(846, 'steam:110000111df570b', 'redbull_cargo', 0),
(847, 'steam:110000111df570b', 'fabric', 0),
(848, 'steam:110000111df570b', 'grapperaisin', 0),
(849, 'steam:110000111df570b', 'bandage', 0),
(850, 'steam:110000111df570b', 'meth_pooch', 0),
(851, 'steam:110000111df570b', 'whisky', 0),
(852, 'steam:110000111df570b', 'blowpipe', 0),
(853, 'steam:110000111df570b', 'bolpistache', 0),
(854, 'steam:110000111df570b', 'opium_pooch', 0),
(855, 'steam:110000111df570b', 'opium', 0),
(856, 'steam:110000111df570b', 'grip', 0),
(857, 'steam:110000111df570b', 'carotool', 0),
(858, 'steam:110000111df570b', 'myrte_cargo', 0),
(859, 'steam:110000111df570b', 'ice', 0),
(860, 'steam:110000111df570b', 'meth', 0),
(861, 'steam:110000111df570b', 'myrtealcool', 0),
(862, 'steam:110000111df570b', 'menthe', 0),
(863, 'steam:110000111df570b', 'jager', 0),
(864, 'steam:110000111df570b', 'jewels', 0),
(865, 'steam:110000111df570b', 'copper', 0),
(866, 'steam:110000111df570b', 'bolchips', 0),
(867, 'steam:110000111df570b', 'fish', 0),
(868, 'steam:110000111df570b', 'saucisson', 0),
(869, 'steam:110000111df570b', 'mixapero', 0),
(870, 'steam:110000111df570b', 'croquettes', 0),
(871, 'steam:110000111df570b', 'malbora', 0),
(872, 'steam:110000111df570b', 'gitanes', 0),
(873, 'steam:110000111df570b', 'silencieux', 0),
(874, 'steam:110000114a058a8', 'drill', 1),
(875, 'steam:11000010b3a30a0', 'drill', 1),
(876, 'steam:1100001167d265e', 'drill', 0),
(877, 'steam:11000011685b145', 'drill', 1),
(878, 'steam:1100001197619a3', 'drill', 0),
(879, 'steam:1100001045fbd8f', 'drill', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'dmv', 'steam:11000010a1b83df'),
(2, 'weapon', 'steam:1100001167d265e'),
(5, 'drive', 'steam:11000010a1b83df'),
(6, 'weapon', 'steam:11000010a1b83df'),
(7, 'weapon', 'steam:11000010b3a30a0'),
(9, 'weapon', 'steam:1100001197619a3'),
(10, 'weapon', 'steam:110000114a058a8'),
(11, 'weapon', 'steam:1100001045fbd8f'),
(12, 'weapon', 'steam:11000011685b145');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('BMW m6', 'm6f13', 5000000, 'motomod'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Mustang GT', 'MGT', 3000000, 'motomod'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupes'),
('motomod', 'Mods'),
('motorcycles', 'Motor'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `item` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 5000),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 8000),
(5, 'GunShop', 'WEAPON_MACHETE', 2000),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 3000),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 800),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 1200),
(9, 'GunShop', 'WEAPON_BAT', 1000),
(10, 'BlackWeashop', 'WEAPON_BAT', 1500),
(11, 'GunShop', 'WEAPON_STUNGUN', 500),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 700),
(13, 'GunShop', 'WEAPON_MICROSMG', 14000),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 17000),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 34000),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 45000),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 70000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 90000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(23, 'GunShop', 'WEAPON_FIREWORK', 180000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 210000),
(31, 'GunShop', 'WEAPON_BALL', 500),
(32, 'BlackWeashop', 'WEAPON_BALL', 500),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 20000),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 120000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 700000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 2500000),
(41, 'GunShop', 'WEAPON_FLASHLIGHT', 1000),
(42, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `aircraft_categories`
--
ALTER TABLE `aircraft_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `boat_categories`
--
ALTER TABLE `boat_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_biker`
--
ALTER TABLE `fine_types_biker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_gang`
--
ALTER TABLE `fine_types_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `organisation_moneywash`
--
ALTER TABLE `organisation_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_gradeorg`
--
ALTER TABLE `org_gradeorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_aircrafts`
--
ALTER TABLE `owned_aircrafts`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `owned_boats`
--
ALTER TABLE `owned_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_aircrafts`
--
ALTER TABLE `rented_aircrafts`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `rented_boats`
--
ALTER TABLE `rented_boats`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops2`
--
ALTER TABLE `shops2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`,`plate`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account`
--
ALTER TABLE `addon_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `datastore`
--
ALTER TABLE `datastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `fine_types_biker`
--
ALTER TABLE `fine_types_biker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_gang`
--
ALTER TABLE `fine_types_gang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `organisation_moneywash`
--
ALTER TABLE `organisation_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `org_gradeorg`
--
ALTER TABLE `org_gradeorg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4614;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shops2`
--
ALTER TABLE `shops2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
