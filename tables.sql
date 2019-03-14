-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2019 at 03:25 AM
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
(2, 'society_cardealer', 'Concessionnaire', 1),
(3, 'society_ambulance', 'Ambulance', 1),
(4, 'society_mecano', 'Mécano', 1),
(5, 'society_police', 'Police', 1),
(6, 'society_tabac', 'Tabac', 1),
(7, 'society_taxi', 'Taxi', 1),
(8, 'society_unicorn', 'Unicorn', 1),
(9, 'society_vigne', 'Vigneron', 1),
(10, 'property_black_money', 'Argent Sale Propriété', 0),
(11, 'society_realestateagent', 'Agent immobilier', 1),
(12, 'society_bahama', 'Bahama Mas', 1),
(13, 'society_avocat', 'Avocat', 1),
(14, 'society_aircraftdealer', 'Airliner', 1),
(15, 'society_boatdealer', 'Marina', 1),
(16, 'organisation_mafia', 'Mafia', 1),
(17, 'organisation_gang', 'gang', 1),
(18, 'organisation_cartel', 'Cartel', 1),
(19, 'society_biker', 'Biker', 1),
(20, 'society_securiter', 'Securiter', 1);

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
(1, 'society_cardealer', 0, NULL),
(2, 'society_ambulance', 491400, NULL),
(3, 'society_mecano', 5052213, NULL),
(4, 'society_police', 9999962770, NULL),
(5, 'society_tabac', 6438, NULL),
(6, 'society_taxi', 154530, NULL),
(7, 'society_unicorn', 10097000, NULL),
(8, 'society_vigne', 0, NULL),
(9, 'caution', 0, 'steam:11000010d6c30cb'),
(10, 'society_realestateagent', 6506, NULL),
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
(76, 'society_mafia', 0, NULL),
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
(277, 'caution', 125, 'steam:1100001045fbd8f'),
(278, 'property_black_money', 0, 'steam:1100001045fbd8f'),
(279, 'property_black_money', 0, 'steam:11000010a1b83df'),
(280, 'caution', 0, 'steam:11000010a1b83df'),
(281, 'caution', 0, 'steam:11000010b3a30a0'),
(282, 'property_black_money', 0, 'steam:11000010b3a30a0'),
(283, 'property_black_money', 0, 'steam:11000011685b145'),
(284, 'caution', 0, 'steam:11000011685b145');

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
(1, 'society_cardealer', 'Concesionnaire', 1),
(2, 'society_ambulance', 'Ambulance', 1),
(3, 'society_mecano', 'Mécano', 1),
(4, 'society_police', 'Police', 1),
(5, 'society_tabac', 'Tabac', 1),
(6, 'society_taxi', 'Taxi', 1),
(7, 'society_unicorn', 'Unicorn', 1),
(8, 'society_unicorn_fridge', 'Unicorn (frigo)', 1),
(9, 'society_vigne', 'Vigneron', 1),
(10, 'property', 'Propriété', 0),
(11, 'society_bahama', 'Bahama Mas', 1),
(12, 'society_avocat', 'Avocat', 1),
(13, 'society_aircraftdealer', 'Airliner', 1),
(14, 'society_boatdealer', 'Marina', 1),
(15, 'organisation_mafia', 'Mafia', 1),
(16, 'organisation_gang', 'Gang', 1),
(17, 'organisation_cartel', 'Cartel', 1),
(18, 'society_biker', 'Biker', 1),
(19, 'society_securiter', 'Securiter', 1);

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
(19, 'society_police', 'wool', 80, NULL),
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
(48, 'society_mecano', 'fixkit', 14, NULL),
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
(136, 'society_police', 'grip', 1, NULL),
(137, 'society_police', 'tequila', 4, NULL),
(138, 'society_police', 'yusuf', 1, NULL),
(139, 'society_police', 'vodka', 4, NULL),
(140, 'property', 'opium', 0, 'steam:11000011acec85a'),
(141, 'property', 'meth_pooch', 5, 'steam:11000011acec85a'),
(142, 'property', 'fixkit', 2, 'steam:11000011acec85a'),
(143, 'organisation_gang', 'weed_pooch', 10, NULL);

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
('plane', 'Planes'),
('heli', 'Helicopters');

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
(265, 'steam:11000010f3c770c', 'steam:11000011ad5e46e', 'society', 'society_police', 'Amende: Menace verbale ou intimidation envers civil', 20000);

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
('boat', 'Boats');

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
(1, 'comet2', 65000),
(2, 'penumbra', 28000),
(3, 'bmws', 45000),
(4, 'scorcher', 280);

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
(214, 'steam:11000011685b145', 'SAjjad', 'Dsh', '23/10/50', 'm', '184');

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
(1, 'user_ears', 'Ears', 0),
(2, 'user_glasses', 'Glasses', 0),
(3, 'user_helmet', 'Helmet', 0),
(4, 'user_mask', 'Mask', 0),
(5, 'society_ambulance', 'Ambulance', 1),
(6, 'society_police', 'Police', 1),
(7, 'society_tabac', 'Tabac', 1),
(8, 'society_taxi', 'Taxi', 1),
(9, 'society_unicorn', 'Unicorn', 1),
(10, 'society_vigne', 'Vigneron', 1),
(11, 'property', 'Propriété', 0),
(12, 'society_avocat', 'Avocat', 1),
(13, 'organisation_mafia', 'Mafia', 1),
(14, 'organisation_gang', 'Gang', 1),
(15, 'organisation_cartel', 'Cartel', 1),
(16, 'society_biker', 'Biker', 1);

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
(2, 'society_police', NULL, '{\"weapons\":[{\"count\":37,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":33,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":37,\"name\":\"WEAPON_ASSAULTSMG\"},{\"count\":24,\"name\":\"WEAPON_STUNGUN\"},{\"count\":1,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":0,\"name\":\"WEAPON_RPG\"},{\"count\":44,\"name\":\"WEAPON_SAWNOFFSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_BULLPUPSHOTGUN\"},{\"count\":3,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"count\":2,\"name\":\"WEAPON_BAT\"},{\"count\":3,\"name\":\"WEAPON_APPISTOL\"},{\"count\":1,\"name\":\"WEAPON_SMG\"},{\"count\":0,\"name\":\"WEAPON_HEAVYPISTOL\"},{\"count\":0,\"name\":\"WEAPON_REVOLVER\"},{\"count\":0,\"name\":\"WEAPON_KNUCKLE\"},{\"count\":1,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"count\":0,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"count\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"count\":2,\"name\":\"WEAPON_COMPACTRIFLE\"},{\"count\":1,\"name\":\"WEAPON_MG\"},{\"count\":1,\"name\":\"WEAPON_STICKYBOMB\"},{\"count\":1,\"name\":\"WEAPON_VINTAGEPISTOL\"},{\"count\":0,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"count\":0,\"name\":\"WEAPON_KNIFE\"},{\"count\":0,\"name\":\"WEAPON_PIPEBOMB\"},{\"count\":1,\"name\":\"WEAPON_MOLOTOV\"},{\"count\":1,\"name\":\"WEAPON_HAMMER\"},{\"count\":1,\"name\":\"WEAPON_GOLFCLUB\"},{\"count\":1,\"name\":\"WEAPON_CROWBAR\"},{\"count\":0,\"name\":\"WEAPON_PISTOL50\"},{\"count\":0,\"name\":\"WEAPON_SNSPISTOL\"},{\"count\":0,\"name\":\"WEAPON_MUSKET\"},{\"count\":0,\"name\":\"WEAPON_HATCHET\"},{\"count\":0,\"name\":\"WEAPON_MACHETE\"},{\"count\":1,\"name\":\"WEAPON_ADVANCEDRIFLE\"},{\"count\":1,\"name\":\"WEAPON_COMBATMG\"},{\"name\":\"WEAPON_COMBATMG_MK2\",\"count\":1},{\"count\":1,\"name\":\"WEAPON_SMG_MK2\"},{\"count\":1,\"name\":\"WEAPON_COMBATPDW\"},{\"name\":\"WEAPON_SWITCHBLADE\",\"count\":1}]}'),
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
(650, 'property', 'steam:1100001197619a3', '{}'),
(651, 'user_mask', 'steam:1100001045fbd8f', '{}'),
(652, 'property', 'steam:1100001045fbd8f', '{}'),
(653, 'user_helmet', 'steam:1100001045fbd8f', '{}'),
(654, 'user_ears', 'steam:1100001045fbd8f', '{}'),
(655, 'user_glasses', 'steam:1100001045fbd8f', '{}'),
(656, 'user_ears', 'steam:11000010a1b83df', '{}'),
(657, 'user_helmet', 'steam:11000010a1b83df', '{}'),
(658, 'user_glasses', 'steam:11000010a1b83df', '{}'),
(659, 'property', 'steam:11000010a1b83df', '{}'),
(660, 'user_mask', 'steam:11000010a1b83df', '{}'),
(661, 'user_glasses', 'steam:11000010b3a30a0', '{}'),
(662, 'user_mask', 'steam:11000010b3a30a0', '{}'),
(663, 'user_helmet', 'steam:11000010b3a30a0', '{}'),
(664, 'user_ears', 'steam:11000010b3a30a0', '{}'),
(665, 'property', 'steam:11000010b3a30a0', '{}'),
(666, 'user_glasses', 'steam:11000011685b145', '{}'),
(667, 'user_ears', 'steam:11000011685b145', '{}'),
(668, 'property', 'steam:11000011685b145', '{}'),
(669, 'user_mask', 'steam:11000011685b145', '{}'),
(670, 'user_helmet', 'steam:11000011685b145', '{}');

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
(1, 'Usage abusif du klaxon', 2000, 0),
(2, 'Franchir une ligne continue', 2000, 0),
(3, 'Circulation à contresens', 5000, 0),
(4, 'Demi-tour non autorisé', 5000, 0),
(5, 'Circulation hors-route', 6000, 0),
(6, 'Non-respect des distances de sécurité', 5000, 0),
(7, 'Arrêt dangereux / interdit', 5000, 0),
(8, 'Stationnement gênant / interdit', 2500, 0),
(9, 'Non respect  de la priorité à droite', 5000, 0),
(10, 'Non-respect à un véhicule prioritaire', 7500, 0),
(11, 'Non-respect d\'un stop', 5000, 0),
(12, 'Non-respect d\'un feu rouge', 5000, 0),
(13, 'Dépassement dangereux', 10000, 0),
(14, 'Véhicule non en état', 15000, 0),
(15, 'Conduite sans permis', 8000, 0),
(16, 'Délit de fuite', 25000, 0),
(17, 'Excès de vitesse < 5 kmh', 2000, 0),
(18, 'Excès de vitesse 5-15 kmh', 5000, 0),
(19, 'Excès de vitesse 15-30 kmh', 8000, 0),
(20, 'Excès de vitesse > 30 kmh', 15000, 0),
(21, 'Entrave de la circulation', 5000, 1),
(22, 'Dégradation de la voie publique', 5000, 1),
(23, 'Trouble à l\'ordre publique', 5000, 1),
(24, 'Entrave opération de police', 45000, 1),
(25, 'Insulte envers / entre civils', 20000, 1),
(26, 'Outrage à agent de police', 30000, 1),
(27, 'Menace verbale ou intimidation envers civil', 20000, 1),
(28, 'Menace verbale ou intimidation envers policier', 25000, 1),
(29, 'Manifestation illégale', 15000, 1),
(30, 'Tentative de corruption', 80000, 1),
(31, 'Arme blanche sortie en ville', 5000, 2),
(32, 'Arme léthale sortie en ville', 15000, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 20000, 2),
(34, 'Port d\'arme illégal', 80000, 2),
(35, 'Pris en flag lockpick', 25000, 2),
(36, 'Vol de voiture', 20000, 2),
(37, 'Vente de drogue', 40000, 2),
(38, 'Fabriquation de drogue', 30000, 2),
(39, 'Possession de drogue', 25000, 2),
(40, 'Prise d\'ôtage civil', 100000, 2),
(41, 'Prise d\'ôtage agent de l\'état', 200000, 2),
(42, 'Braquage particulier', 50000, 2),
(43, 'Braquage magasin', 55000, 2),
(44, 'Braquage de banque', 70000, 2),
(45, 'Tir sur civil', 50000, 3),
(46, 'Tir sur agent de l\'état', 80000, 3),
(47, 'Tentative de meurtre sur civil', 40000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 150000, 3),
(49, 'Meurtre sur civil', 200000, 3),
(50, 'Meurte sur agent de l\'état', 300000, 3),
(51, 'Meurtre involontaire', 100000, 3),
(52, 'Escroquerie à l\'entreprise', 120000, 2);

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
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

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
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

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
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

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
('alcool', 'alcool', -1, 0, 1),
('alcool_cargo', 'Cargaison d\'alcool', -1, 0, 1),
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bread', 'Pain', -1, 0, 1),
('cagoule', 'Cagoule', -1, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('clip', 'Chargeur', -1, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('coke', 'Coke', 50, 0, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('croquettes', 'Croquettes', -1, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('diamond', 'Diamant', 50, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('flashlight', 'Lampe', -1, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('gitanes', 'Gitanes', -1, 0, 1),
('gold', 'Or', 21, 0, 1),
('golem', 'Golem', 5, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('ice', 'Glaçon', 5, 0, 1),
('icetea', 'Ice Tea', 5, 0, 1),
('iron', 'Fer', 42, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('jewels', 'Jewels', -1, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('malbora', 'Malbora', -1, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('meth', 'Meth', 50, 0, 1),
('meth_pooch', 'Pochon de meth', 10, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('myrte', 'myrte', -1, 0, 1),
('myrtealcool', 'alcool de myrte', -1, 0, 1),
('myrte_cargo', 'Cargaison de Myrte', -1, 0, 1),
('opium', 'Opium', 50, 0, 1),
('opium_pooch', 'Pochon de opium', 10, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('redbull', 'RedBull', -1, 0, 1),
('redbull_cargo', 'Cargaison de RedBull', -1, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('soda', 'Soda', 5, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('tabacblond', 'Tabac Blond', -1, 0, 1),
('tabacblondsec', 'Tabac Blond Séché', -1, 0, 1),
('tabacbrun', 'Tabac Brun', -1, 0, 1),
('tabacbrunsec', 'Tabac Brun Séché', -1, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 5, 0, 1),
('viande', 'Viande', 25, 0, 1),
('vine', 'Vin', -1, 0, 1),
('vodka', 'Vodka', 5, 0, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('vodkrb', 'Vodka RedBull', -1, 0, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1),
('water', 'Eau', -1, 0, 1),
('weed', 'Weed', 50, 0, 1),
('weed_pooch', 'Pochon de weed', 10, 0, 1),
('whisky', 'Whisky', 5, 0, 1),
('whiskycoc', 'Whisky CorsicaCola', -1, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1),
('yusuf', 'Skin de luxe', -1, 0, 1);

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
('bahama', 'Bahama', 1),
('biker', 'Docharkhe savar', 1),
('boatdealer', 'Forooshande ghayegh', 1),
('cardealer', 'Forooshande mashin', 1),
('fisherman', 'Mahigir', 0),
('fueler', 'Palayesh gare naft', 0),
('lumberjack', 'Choob bor', 0),
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
('unicorn', 'Asb e takshakh?', 1),
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
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(10, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(11, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(12, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(13, 'ambulance', 0, 'ambulance', 'Ambulancier', 250, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(14, 'ambulance', 1, 'doctor', 'Medecin', 300, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(15, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(16, 'ambulance', 3, 'boss', 'Chirurgien', 1200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(17, 'mecano', 0, 'recrue', 'Recrue', 500, '{}', '{}'),
(18, 'mecano', 1, 'novice', 'Novice', 1000, '{}', '{}'),
(19, 'mecano', 2, 'experimente', 'Experimente', 1500, '{}', '{}'),
(20, 'mecano', 3, 'chief', 'Chef d\'équipe', 1800, '{}', '{}'),
(21, 'mecano', 4, 'boss', 'Patron', 2200, '{}', '{}'),
(22, 'police', 0, 'recruit', 'Recrue', 1000, '{}', '{}'),
(23, 'police', 1, 'officer', 'Officier', 1400, '{}', '{}'),
(24, 'police', 2, 'sergeant', 'Sergent', 1600, '{}', '{}'),
(25, 'police', 3, 'lieutenant', 'Lieutenant', 1800, '{}', '{}'),
(26, 'police', 4, 'boss', 'Commandant', 3000, '{}', '{}'),
(27, 'tabac', 0, 'recrue', 'Tabagiste', 1, '{}', '{}'),
(28, 'tabac', 1, 'gerant', 'Gérant', 1, '{}', '{}'),
(29, 'tabac', 2, 'boss', 'Patron', 1, '{}', '{}'),
(30, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(31, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(32, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(36, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(37, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(38, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(39, 'vigne', 0, 'recrue', 'Intérimaire', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(40, 'vigne', 1, 'novice', 'Vigneron', 1000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(41, 'vigne', 2, 'cdisenior', 'Chef de chai', 2000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(42, 'vigne', 3, 'boss', 'Patron', 3000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(43, 'realestateagent', 0, 'location', 'Location', 200, '{}', '{}'),
(44, 'realestateagent', 1, 'vendeur', 'Vendeur', 250, '{}', '{}'),
(45, 'realestateagent', 2, 'gestion', 'Gestion', 350, '{}', '{}'),
(46, 'realestateagent', 3, 'boss', 'Patron', 500, '{}', '{}'),
(47, 'bahama', 0, 'recrue', 'Recrue', 1250, '{}', '{}'),
(48, 'bahama', 1, 'novice', 'Novice', 1400, '{}', '{}'),
(49, 'bahama', 2, 'experimente', 'Experimente', 1650, '{}', '{}'),
(50, 'bahama', 3, 'boss', 'Patron', 2000, '{}', '{}'),
(51, 'avocat', 1, 'chef', 'Associé', 1100, '{}', '{}'),
(52, 'avocat', 0, 'recrue', 'Employé', 900, '{}', '{}'),
(53, 'avocat', 2, 'boss', 'Directeur Cabinet', 1100, '{}', '{}'),
(54, 'aircraftdealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(55, 'aircraftdealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(56, 'aircraftdealer', 2, 'experienced', 'Expert', 40, '{}', '{}'),
(57, 'aircraftdealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
(58, 'boatdealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(59, 'boatdealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(60, 'boatdealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(61, 'boatdealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(70, 'biker', 0, 'soldato', 'Ptite-Frappe', 50, '{}', '{}'),
(71, 'biker', 1, 'capo', 'capo', 70, '{}', '{}'),
(72, 'biker', 2, 'consigliere', 'Chef-Capo', 100, '{}', '{}'),
(73, 'biker', 3, 'boss', 'Parrain', 2000, '{}', '{}'),
(74, 'securiter', 0, 'agents', 'Securiter SHIELD', 1700, '{}', '{}'),
(75, 'securiter', 1, 'boss', 'Patron', 3000, '{}', '{}');

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
('aircraft', 'Aircraft License'),
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

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
(1, 'freecity', 0, 'freecity', 'Citoyen', 200, '{}', '{}'),
(2, 'mafia', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(3, 'mafia', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(4, 'mafia', 2, 'consigliere', 'Capo-Chef', 2100, '{}', '{}'),
(5, 'mafia', 3, 'boss', 'Parrain', 2700, '{}', '{}'),
(6, 'gang', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(7, 'gang', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(8, 'gang', 2, 'consigliere', 'Capo-Chef', 2100, '{}', '{}'),
(9, 'gang', 3, 'boss', 'Patron', 2700, '{}', '{}'),
(10, 'cartel', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(11, 'cartel', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(12, 'cartel', 2, 'consigliere', 'Chef', 2100, '{}', '{}'),
(13, 'cartel', 3, 'boss', 'Patron', 2700, '{}', '{}');

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
(56, 'DellPerroHeightst4', 100000, 0, 'steam:1100001325b7a9b');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(30) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'State of the car',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:11000010302b529', 1, 'ACP 563', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":942,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1878062887,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":3,\"modEngine\":-1,\"wheelColor\":7,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.445686429739,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":0,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"ACP 563 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":0,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":2}'),
('steam:11000011acec85a', 1, 'ACZ 998', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":741090084,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"health\":480,\"color2\":49,\"wheels\":6,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.20263761281968,\"modEngineBlock\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"color1\":50,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modTrimA\":-1,\"plate\":\"ACZ 998 \",\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":92}'),
('steam:11000013613fa78', 1, 'AFY 973', '{\"modPlateHolder\":-1,\"modExhaust\":-1,\"wheels\":0,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"plate\":\"AFY 973 \",\"modVanityPlate\":-1,\"model\":1553034064,\"modOrnaments\":-1,\"modStruts\":-1,\"modSpoilers\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSpeakers\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDashboard\":-1,\"modBrakes\":-1,\"modHood\":-1,\"dirtLevel\":6.6382904052734,\"health\":1000,\"modDial\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modRearBumper\":-1,\"modSmokeEnabled\":1,\"modTrimA\":-1,\"modLivery\":-1,\"color1\":44,\"modTank\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"color2\":15,\"modFrame\":-1,\"windowTint\":-1,\"plateIndex\":0,\"modFrontBumper\":-1,\"modAerials\":-1,\"modTurbo\":false,\"modDoorSpeaker\":-1,\"modFender\":-1,\"wheelColor\":156,\"modWindows\":-1,\"modBackWheels\":-1,\"pearlescentColor\":134,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1}'),
('steam:1100001061d0cb1', 1, 'AGA 965', '{\"plateIndex\":2,\"color1\":29,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"color2\":29,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modTrimB\":-1,\"model\":-1215316954,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"wheels\":0,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"health\":915,\"pearlescentColor\":35,\"modSpeakers\":-1,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"AGA 965 \",\"modLivery\":-1,\"modStruts\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"dirtLevel\":9.4230089187622,\"modExhaust\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":0,\"modHood\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:11000013491dae7', 1, 'AGU 102', '{\"modArchCover\":-1,\"modAPlate\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modGrille\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modSuspension\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"pearlescentColor\":5,\"dirtLevel\":0.83384120464324,\"modWindows\":-1,\"color2\":147,\"modPlateHolder\":-1,\"plate\":\"AGU 102 \",\"modRearBumper\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"model\":-1071380347,\"modTurbo\":false,\"modTrunk\":-1,\"color1\":89,\"health\":992,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"modFender\":-1,\"modHorns\":-1,\"wheels\":4,\"modHydrolic\":-1,\"modBrakes\":-1,\"modEngine\":1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":5,\"modAirFilter\":-1,\"wheelColor\":147,\"windowTint\":-1,\"modLivery\":1,\"modFrame\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modAerials\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modHood\":-1,\"modXenon\":1}'),
('steam:11000013613fa78', 1, 'AIB 917', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":2,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modHood\":0,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":2,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":40,\"model\":-1848994066,\"neonColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modSpoilers\":4,\"color2\":106,\"wheels\":0,\"modEngine\":3,\"wheelColor\":0,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":7.5697021484375,\"modFender\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modXenon\":1,\"color1\":21,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modDashboard\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"plate\":\"AIB 917 \",\"modSideSkirt\":2,\"modDial\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":2,\"modHydrolic\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":1,\"modFrame\":-1,\"windowTint\":1,\"modBackWheels\":-1,\"pearlescentColor\":134}'),
('steam:1100001325b7a9b', 1, 'AJB 470', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modFrontWheels\":0,\"modFrame\":-1,\"modRightFender\":-1,\"modTrunk\":-1,\"modHood\":-1,\"modTurbo\":false,\"modWindows\":-1,\"modHydrolic\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":4,\"modEngineBlock\":-1,\"modXenon\":1,\"pearlescentColor\":111,\"modDashboard\":-1,\"color1\":0,\"modSteeringWheel\":-1,\"dirtLevel\":1.2720011472702,\"modFrontBumper\":-1,\"modSuspension\":3,\"modBrakes\":2,\"plate\":\"AJB 470 \",\"health\":998,\"modTrimA\":-1,\"modGrille\":-1,\"wheels\":4,\"modBackWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modEngine\":3,\"color2\":111,\"windowTint\":1,\"modStruts\":-1,\"modTrimB\":-1,\"model\":-2064372143,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modRoof\":-1,\"neonColor\":[255,255,255],\"modRearBumper\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"wheelColor\":111,\"modSideSkirt\":-1}'),
('steam:11000011acec85a', 1, 'ALH 159', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"ALH 159 \",\"modDoorSpeaker\":-1,\"health\":998,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"model\":-2098947590,\"modStruts\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"modSpoilers\":-1,\"modSeats\":-1,\"wheelColor\":111,\"modTrimA\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"neonColor\":[255,255,255],\"modTrunk\":-1,\"modSuspension\":3,\"neonEnabled\":[1,1,1,1],\"plateIndex\":0,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"color2\":111,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"windowTint\":1,\"modAirFilter\":-1,\"pearlescentColor\":27,\"modTransmission\":-1,\"dirtLevel\":8.8016748428344,\"modWindows\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"wheels\":7,\"modGrille\":-1,\"color1\":111,\"modTurbo\":false,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modFrontWheels\":17,\"modArchCover\":-1}'),
('steam:110000111b71726', 1, 'APS 018', '{\"modSeats\":-1,\"modEngine\":3,\"wheelColor\":156,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modFender\":-1,\"modFrontWheels\":25,\"neonEnabled\":[false,false,false,false],\"modArmor\":4,\"modFrame\":-1,\"modRoof\":-1,\"plateIndex\":1,\"modLivery\":-1,\"modAirFilter\":-1,\"modXenon\":1,\"color1\":15,\"modBackWheels\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"model\":758895617,\"modHood\":-1,\"modSuspension\":-1,\"modArchCover\":-1,\"color2\":132,\"modWindows\":-1,\"modBrakes\":2,\"modAerials\":-1,\"modDial\":-1,\"modHorns\":-1,\"modSpeakers\":-1,\"modSideSkirt\":0,\"modTurbo\":false,\"wheels\":2,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"dirtLevel\":6.08482503891,\"modVanityPlate\":-1,\"windowTint\":1,\"modFrontBumper\":-1,\"modTrimA\":-1,\"health\":970,\"pearlescentColor\":18,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"modPlateHolder\":-1,\"modTransmission\":2,\"plate\":\"APS 018 \",\"modRightFender\":-1,\"modExhaust\":-1,\"modStruts\":-1}'),
('steam:11000013613fa78', 1, 'APV 177', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1474015055,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"color2\":32,\"wheels\":6,\"modEngine\":-1,\"wheelColor\":192,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":3.3746674060822,\"modFender\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modXenon\":1,\"color1\":3,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":980,\"modDashboard\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"plate\":\"APV 177 \",\"modSideSkirt\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"pearlescentColor\":0}'),
('steam:11000011acec85a', 1, 'AVS 436', '{\"windowTint\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"modLivery\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modRightFender\":-1,\"modTank\":-1,\"modTrimA\":-1,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modAirFilter\":-1,\"color2\":38,\"modArmor\":-1,\"modDial\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"wheelColor\":156,\"modBrakes\":-1,\"modArchCover\":-1,\"modAPlate\":-1,\"dirtLevel\":10.00001335144,\"modTrunk\":-1,\"pearlescentColor\":5,\"modPlateHolder\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"wheels\":6,\"modHorns\":-1,\"modRearBumper\":-1,\"plate\":\"AVS 436\",\"modTrimB\":-1,\"modFrame\":-1,\"modOrnaments\":-1,\"health\":1000,\"modHood\":-1,\"plateIndex\":0,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"color1\":1,\"model\":86520421,\"modSeats\":-1,\"modEngineBlock\":-1,\"modEngine\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modGrille\":-1}'),
('steam:11000011acec85a', 1, 'AXD 383', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-570033273,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"health\":1000,\"color2\":120,\"wheels\":6,\"modEngine\":-1,\"wheelColor\":53,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":6.090868473053,\"modEngineBlock\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"color1\":49,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modTrimA\":-1,\"plate\":\"AXD 383 \",\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":55}'),
('steam:11000010d6c30cb', 1, 'AYA 595', '{\"modXenon\":false,\"modAPlate\":-1,\"wheelColor\":156,\"modPlateHolder\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"color2\":112,\"modTrimA\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modHood\":-1,\"modDial\":-1,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"model\":-1639924411,\"modTurbo\":false,\"modOrnaments\":-1,\"health\":837,\"modTank\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"dirtLevel\":7.3062229156494,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"color1\":112,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"plateIndex\":4,\"pearlescentColor\":134,\"windowTint\":-1,\"modAerials\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"wheels\":6,\"modSteeringWheel\":-1,\"modFender\":-1,\"modLivery\":-1,\"modArmor\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"plate\":\"AYA 595 \",\"modFrontWheels\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1}'),
('steam:1100001325b7a9b', 1, 'AZC 558', '{\"modArchCover\":0,\"modStruts\":-1,\"modFrontBumper\":10,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":2,\"modSideSkirt\":3,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":2,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":-295689028,\"neonColor\":[255,0,255],\"modEngineBlock\":1,\"modAerials\":0,\"modDial\":-1,\"color2\":27,\"wheels\":0,\"modEngine\":1,\"wheelColor\":158,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":11.95228767395,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"color1\":27,\"modTransmission\":-1,\"modRoof\":0,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"windowTint\":1,\"modHood\":8,\"modSteeringWheel\":-1,\"modFender\":2,\"modHorns\":-1,\"modSpoilers\":2,\"health\":992,\"plate\":\"AZC 558 \",\"modFrame\":4,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":2,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":7,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":111}'),
('steam:110000104cf5aeb', 1, 'BBS 178', '{\"modShifterLeavers\":-1,\"modAerials\":-1,\"modXenon\":false,\"health\":1000,\"dirtLevel\":6.1269435882568,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"wheels\":0,\"neonColor\":[255,0,255],\"wheelColor\":156,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"pearlescentColor\":5,\"modFrame\":-1,\"color1\":2,\"modSeats\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modTurbo\":false,\"modArmor\":-1,\"plate\":\"BBS 178 \",\"modSmokeEnabled\":false,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":-1122289213,\"color2\":2,\"modHydrolic\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modLivery\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"plateIndex\":0,\"modOrnaments\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modTank\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"modTrunk\":-1}'),
('steam:11000010cb4181f', 1, 'BCF 482', '{\"wheels\":7,\"modHydrolic\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":4,\"tyreSmokeColor\":[41,36,33],\"plate\":\"BCF 482 \",\"modOrnaments\":-1,\"neonColor\":[41,36,33],\"modTransmission\":2,\"modAirFilter\":-1,\"modExhaust\":-1,\"color2\":0,\"modAPlate\":-1,\"modSideSkirt\":-1,\"wheelColor\":147,\"modDashboard\":-1,\"modSpoilers\":1,\"modGrille\":-1,\"pearlescentColor\":149,\"modFrontBumper\":0,\"modWindows\":-1,\"modHood\":-1,\"modSuspension\":3,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimB\":-1,\"neonEnabled\":[1,1,1,1],\"modTurbo\":false,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":1000,\"modSteeringWheel\":-1,\"color1\":151,\"dirtLevel\":1.0197150707244,\"modTank\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"windowTint\":1,\"modHorns\":10,\"modRearBumper\":2,\"modPlateHolder\":-1,\"modAerials\":-1,\"modFender\":-1,\"modXenon\":1,\"modBrakes\":2,\"modStruts\":-1,\"plateIndex\":1,\"modEngineBlock\":-1,\"modFrame\":-1,\"modEngine\":3,\"modRoof\":-1,\"model\":-1752116803,\"modVanityPlate\":-1,\"modFrontWheels\":15,\"modTrunk\":-1}'),
('steam:1100001325b7a9b', 1, 'BEU 948', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"BEU 948 \",\"modDoorSpeaker\":-1,\"modTank\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":4,\"modDial\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"health\":209,\"modAPlate\":-1,\"wheelColor\":156,\"modTrimA\":-1,\"model\":117401876,\"modBackWheels\":-1,\"neonColor\":[0,0,255],\"modTrunk\":-1,\"modSuspension\":3,\"neonEnabled\":[1,1,1,1],\"plateIndex\":2,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"color2\":2,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"windowTint\":1,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"modWindows\":-1,\"dirtLevel\":1.1705570220948,\"modSpoilers\":-1,\"modHorns\":11,\"modOrnaments\":-1,\"modTransmission\":2,\"modGrille\":-1,\"color1\":12,\"modTurbo\":false,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"modFrontWheels\":-1,\"wheels\":2}'),
('steam:110000110c6f75a', 1, 'BFL 454', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"modArmor\":4,\"modAirFilter\":-1,\"modHood\":-1,\"modTurbo\":false,\"modWindows\":-1,\"modHydrolic\":-1,\"modRearBumper\":0,\"modSeats\":-1,\"modFrame\":2,\"modEngineBlock\":-1,\"modRightFender\":0,\"pearlescentColor\":0,\"modDashboard\":-1,\"color1\":5,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":0,\"modTrunk\":-1,\"modBrakes\":2,\"plate\":\"BFL 454 \",\"health\":999,\"modTrimA\":-1,\"modGrille\":0,\"wheels\":2,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":3,\"color2\":0,\"windowTint\":-1,\"modStruts\":-1,\"modXenon\":1,\"model\":-602287871,\"modArchCover\":0,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":0,\"modAerials\":-1,\"dirtLevel\":0.35981139540672,\"wheelColor\":156,\"modTrimB\":-1,\"modSpoilers\":1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":3,\"modLivery\":-1,\"modSideSkirt\":0}'),
('steam:1100001325b7a9b', 1, 'BJW 605', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"BJW 605 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":1,\"modArmor\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":0,\"modDashboard\":-1,\"modArchCover\":-1,\"dirtLevel\":7.7354922294616,\"health\":990,\"color2\":25,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"color1\":142,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"wheelColor\":88,\"modHydrolic\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"model\":223258115,\"modHood\":-1,\"pearlescentColor\":81,\"modDial\":-1,\"modBackWheels\":3,\"modBrakes\":-1,\"modFender\":-1,\"modSpeakers\":-1}'),
('steam:11000010e555ae1', 1, 'BKW 016', '{\"modSpoilers\":-1,\"modExhaust\":-1,\"modEngine\":-1,\"modHood\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modLivery\":-1,\"color1\":2,\"model\":-1089039904,\"modSteeringWheel\":-1,\"modWindows\":-1,\"color2\":111,\"modTrunk\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":4,\"modArchCover\":-1,\"modHorns\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"neonColor\":[255,0,255],\"wheels\":7,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"modTank\":-1,\"modArmor\":-1,\"modTransmission\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modXenon\":false,\"plateIndex\":0,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modStruts\":-1,\"modTurbo\":false,\"plate\":\"BKW 016 \",\"health\":555,\"modRearBumper\":-1,\"dirtLevel\":15.0,\"modSuspension\":-1,\"modSeats\":-1}'),
('steam:1100001325b7a9b', 1, 'BWQ 070', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[0,0,128],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":111,\"modRightFender\":-1,\"neonColor\":[0,0,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"BWQ 070 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":83,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":947,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":6,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":10,\"modEngine\":3,\"color2\":122,\"windowTint\":-1,\"modFrame\":-1,\"modArmor\":4,\"model\":-159126838,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":5.5934891700744,\"wheelColor\":27,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000013613fa78', 1, 'CDB 888', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modXenon\":1,\"modHorns\":-1,\"model\":-188978926,\"neonColor\":[255,0,0],\"modAPlate\":-1,\"health\":693,\"modAerials\":-1,\"color2\":112,\"wheels\":6,\"modEngine\":3,\"wheelColor\":70,\"modArmor\":0,\"modSmokeEnabled\":1,\"dirtLevel\":1.8492232561112,\"modSpoilers\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"color1\":134,\"modTransmission\":2,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpeakers\":-1,\"modWindows\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"windowTint\":-1,\"modDial\":-1,\"modHood\":-1,\"plate\":\"CDB 888 \",\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":2,\"modBackWheels\":-1,\"modSeats\":-1,\"plateIndex\":2,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":43}'),
('steam:11000010cb4181f', 1, 'CDF 495', '{\"modTrimA\":-1,\"pearlescentColor\":15,\"modTrunk\":-1,\"modDashboard\":-1,\"color1\":12,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":3,\"modTransmission\":2,\"plateIndex\":1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"model\":934775262,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modHydrolic\":-1,\"modFender\":-1,\"wheels\":7,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modWindows\":-1,\"modExhaust\":-1,\"plate\":\"CDF 495 \",\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"dirtLevel\":2.2179169654846,\"modPlateHolder\":-1,\"modBrakes\":2,\"modAirFilter\":-1,\"modSmokeEnabled\":1,\"modEngine\":3,\"modFrontBumper\":-1,\"color2\":107,\"modHorns\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modAerials\":-1,\"modSpeakers\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"modXenon\":1,\"modTank\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"modStruts\":-1}'),
('steam:11000011acec85a', 1, 'CLA 815', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"CLA 815 \",\"modDoorSpeaker\":-1,\"health\":999,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"model\":1753414259,\"modStruts\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"wheelColor\":156,\"modTrimA\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"plateIndex\":0,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"color2\":11,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"pearlescentColor\":111,\"modTransmission\":-1,\"dirtLevel\":3.433453798294,\"modWindows\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"wheels\":6,\"modGrille\":-1,\"color1\":5,\"modTurbo\":false,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1}'),
('steam:11000011cded001', 1, 'CLG 160', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-1372848492,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"color2\":4,\"wheels\":0,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":6.7282972335816,\"modSpoilers\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"color1\":4,\"modTransmission\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"modBrakes\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"modHood\":-1,\"modGrille\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"plate\":\"CLG 160 \",\"modFrame\":-1,\"modTank\":-1,\"modFender\":-1,\"health\":994,\"modSeats\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"modRoof\":-1,\"pearlescentColor\":111}'),
('steam:110000109b99f47', 1, 'CLV 335', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"pearlescentColor\":112,\"modBackWheels\":-1,\"color1\":79,\"modSuspension\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"modArmor\":-1,\"wheels\":6,\"plate\":\"CLV 335 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":1,\"color2\":112,\"windowTint\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"model\":-188978926,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"health\":556,\"dirtLevel\":14.37078666687,\"modAerials\":-1,\"wheelColor\":70,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000010bb4b9f1', 1, 'CQB 747', '{\"plate\":\"CQB 747 \",\"modGrille\":-1,\"modVanityPlate\":-1,\"dirtLevel\":6.1373844146728,\"modTrimA\":-1,\"color2\":89,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":941800958,\"color1\":89,\"modAPlate\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modTank\":-1,\"pearlescentColor\":89,\"modSeats\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modFrontWheels\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modRoof\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modWindows\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"health\":1000,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"wheels\":2,\"modFrontBumper\":-1,\"modAerials\":-1}'),
('steam:110000119ac453f', 1, 'CTH 403', '{\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modTransmission\":2,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"wheels\":7,\"modTrimA\":-1,\"modAirFilter\":-1,\"modSuspension\":3,\"color1\":12,\"modOrnaments\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modWindows\":-1,\"health\":962,\"windowTint\":1,\"modArmor\":4,\"modTank\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modBrakes\":2,\"dirtLevel\":1.3747988939286,\"modFrontWheels\":-1,\"modGrille\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"color2\":3,\"modVanityPlate\":-1,\"wheelColor\":156,\"modPlateHolder\":-1,\"model\":1813965170,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"plateIndex\":0,\"plate\":\"CTH 403 \",\"modDial\":-1,\"modFrame\":-1,\"modRearBumper\":-1,\"modEngine\":3,\"modRightFender\":-1,\"pearlescentColor\":23,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modDashboard\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modSpeakers\":-1}'),
('steam:11000013491dae7', 1, 'DGW 792', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modXenon\":false,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modHood\":-1,\"modGrille\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":0,\"modDashboard\":-1,\"color1\":0,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"health\":0,\"modTrimA\":-1,\"modSuspension\":-1,\"wheels\":6,\"plate\":\"DGW 792 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":1,\"color2\":0,\"windowTint\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"model\":333512375,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":9.4695835113526,\"modAirFilter\":-1,\"wheelColor\":0,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000011acec85a', 1, 'DIX 929', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-255678177,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"health\":940,\"color2\":0,\"wheels\":6,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":11.720561027526,\"modEngineBlock\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"color1\":0,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modTrimA\":-1,\"plate\":\"DIX 929 \",\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":18}'),
('steam:11000011c0b0ace', 1, 'DJO 611', '{\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"wheelColor\":32,\"modHood\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modXenon\":false,\"modGrille\":-1,\"modBackWheels\":-1,\"color1\":32,\"modAerials\":-1,\"pearlescentColor\":0,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"plate\":\"DJO 611 \",\"health\":914,\"modTrimA\":-1,\"modFrame\":-1,\"wheels\":7,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":240,\"windowTint\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"model\":-750481609,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":4.2989926338196,\"modTrimB\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000010dd9c7d6', 1, 'DNP 445', '{\"modShifterLeavers\":-1,\"modAerials\":-1,\"modXenon\":1,\"health\":991,\"dirtLevel\":13.067447662354,\"modBrakes\":2,\"neonEnabled\":[1,1,1,1],\"windowTint\":1,\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modSideSkirt\":-1,\"wheels\":0,\"neonColor\":[255,255,255],\"wheelColor\":132,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"pearlescentColor\":132,\"modTransmission\":2,\"color1\":132,\"modSeats\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"plateIndex\":1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modTurbo\":false,\"modArmor\":4,\"plate\":\"DNP 445 \",\"modTrimA\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":-1029368191,\"color2\":134,\"modHydrolic\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modSuspension\":3,\"modGrille\":-1,\"modLivery\":-1,\"modEngine\":3,\"modHood\":-1,\"modOrnaments\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modTank\":-1,\"modFrame\":-1,\"modSmokeEnabled\":1,\"modArchCover\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:11000010bb4b9f1', 1, 'DON 204', '{\"plate\":\"DON 204 \",\"modGrille\":-1,\"modVanityPlate\":-1,\"dirtLevel\":7.4215235710144,\"modTrimA\":-1,\"color2\":5,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":-777172681,\"color1\":32,\"modAPlate\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modTank\":-1,\"pearlescentColor\":36,\"modSeats\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modSmokeEnabled\":1,\"plateIndex\":0,\"modFrontWheels\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modRoof\":-1,\"modTurbo\":false,\"wheelColor\":111,\"modWindows\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"health\":958,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"wheels\":0,\"modFrontBumper\":-1,\"modAerials\":-1}'),
('steam:11000013634c728', 1, 'DQM 791', '{\"modSideSkirt\":-1,\"modXenon\":false,\"modLivery\":-1,\"modRearBumper\":-1,\"modSmokeEnabled\":false,\"modTurbo\":false,\"modDial\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modEngine\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"wheelColor\":27,\"modVanityPlate\":-1,\"modHorns\":-1,\"modTransmission\":-1,\"plate\":\"DQM 791\",\"modFrontBumper\":-1,\"wheels\":6,\"health\":1000,\"modSeats\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"pearlescentColor\":111,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"dirtLevel\":5.000015258789,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"color2\":1,\"tyreSmokeColor\":[255,255,255],\"color1\":6,\"modAerials\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modHood\":-1,\"windowTint\":-1,\"modGrille\":-1,\"model\":-1670998136,\"modFender\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"plateIndex\":0}'),
('steam:11000013613fa78', 1, 'DVY 125', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modXenon\":1,\"modHorns\":-1,\"model\":-1549019518,\"neonColor\":[153,0,153],\"modAPlate\":-1,\"health\":1000,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"modGrille\":-1,\"modSpoilers\":-1,\"color2\":145,\"modEngineBlock\":-1,\"modBrakes\":-1,\"color1\":15,\"modTransmission\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modFender\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modHood\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"plate\":\"DVY 125 \",\"modFrame\":-1,\"modTank\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"plateIndex\":2,\"modRearBumper\":-1,\"dirtLevel\":0.44328665733338,\"modHydrolic\":-1,\"modRoof\":-1,\"pearlescentColor\":145}'),
('steam:11000011acec85a', 1, 'EGP 290', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":1458362510,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"health\":971,\"modAerials\":-1,\"color2\":0,\"wheels\":5,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":false,\"dirtLevel\":3.3761553764344,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"color1\":64,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"windowTint\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modBrakes\":-1,\"plate\":\"EGP 290 \",\"modFrame\":-1,\"modTank\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":0}'),
('steam:11000010d6c30cb', 1, 'EGY 607', '{\"modPlateHolder\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modTrimA\":-1,\"modWindows\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"plate\":\"EGY 607\",\"modArmor\":-1,\"modSeats\":-1,\"model\":-566387422,\"dirtLevel\":3.0000030994416,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"modSmokeEnabled\":false,\"modTrunk\":-1,\"plateIndex\":0,\"color1\":34,\"modFrontWheels\":-1,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modVanityPlate\":-1,\"modTurbo\":false,\"wheels\":0,\"modRightFender\":-1,\"modFender\":-1,\"color2\":34,\"modSuspension\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modOrnaments\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modBrakes\":-1,\"modEngine\":-1,\"modFrame\":-1,\"modSpoilers\":-1,\"modHydrolic\":-1,\"wheelColor\":109,\"modDial\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"health\":1000,\"modDoorSpeaker\":-1,\"modStruts\":-1,\"pearlescentColor\":36,\"modTrimB\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255]}'),
('steam:11000010d6c30cb', 1, 'EME 833', '{\"color2\":15,\"modVanityPlate\":-1,\"pearlescentColor\":134,\"modStruts\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modXenon\":1,\"modEngine\":3,\"modArmor\":-1,\"modTransmission\":2,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"color1\":15,\"modHorns\":41,\"wheels\":1,\"modExhaust\":-1,\"model\":1871995513,\"modTank\":-1,\"modWindows\":-1,\"neonEnabled\":[1,1,1,1],\"modSideSkirt\":6,\"modSpoilers\":7,\"plateIndex\":1,\"modFrontBumper\":8,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"modDashboard\":-1,\"modLivery\":1,\"modSpeakers\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modPlateHolder\":-1,\"windowTint\":1,\"modGrille\":1,\"modSuspension\":3,\"modHydrolic\":-1,\"modHood\":4,\"health\":1000,\"modRearBumper\":0,\"modBrakes\":2,\"modAPlate\":-1,\"modRoof\":-1,\"dirtLevel\":0.086196199059486,\"neonColor\":[0,150,255],\"modAerials\":-1,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"plate\":\"EME 833 \",\"modDoorSpeaker\":-1,\"wheelColor\":12,\"modFrame\":1,\"modRightFender\":-1,\"modAirFilter\":-1,\"modTrimB\":-1,\"modEngineBlock\":-1,\"modDial\":-1}'),
('steam:11000011acec85a', 1, 'EOA 510', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":0,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":723973206,\"neonColor\":[255,255,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modRoof\":-1,\"color2\":12,\"wheels\":2,\"modEngine\":3,\"wheelColor\":12,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":4.829011440277,\"health\":976,\"modTrimA\":-1,\"modFrontWheels\":10,\"modWindows\":-1,\"color1\":12,\"modTransmission\":2,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modBrakes\":2,\"windowTint\":1,\"modSpoilers\":0,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modHood\":4,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"EOA 510 \",\"modFrame\":0,\"modTank\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modBackWheels\":-1,\"plateIndex\":1,\"modRearBumper\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":12}'),
('steam:110000113248a42', 1, 'EPA 803', '{\"modXenon\":false,\"modAPlate\":-1,\"wheelColor\":156,\"modSeats\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimA\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modHood\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"color2\":107,\"modDial\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"modArmor\":-1,\"health\":724,\"modTank\":-1,\"modVanityPlate\":-1,\"model\":934775262,\"color1\":15,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modTransmission\":0,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modEngine\":3,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"plateIndex\":0,\"pearlescentColor\":15,\"windowTint\":-1,\"modAerials\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"dirtLevel\":10.93570613861,\"modSteeringWheel\":-1,\"modFender\":-1,\"modLivery\":-1,\"wheels\":7,\"modTrimB\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"modFrontWheels\":-1,\"plate\":\"EPA 803 \",\"modOrnaments\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1}'),
('steam:110000111593e00', 1, 'ETG 925', '{\"plate\":\"ETG 925 \",\"modTrimA\":-1,\"modTransmission\":-1,\"modXenon\":false,\"model\":333512375,\"wheels\":6,\"wheelColor\":0,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modEngine\":1,\"modTurbo\":false,\"modStruts\":-1,\"modSideSkirt\":-1,\"health\":451,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modGrille\":-1,\"modArmor\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"color1\":0,\"modSeats\":-1,\"modBrakes\":-1,\"modSuspension\":-1,\"plateIndex\":4,\"modTank\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"pearlescentColor\":0,\"modLivery\":-1,\"modFender\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"color2\":0,\"modOrnaments\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"modDashboard\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":14.048811912536}');
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:110000109b99f47', 1, 'EZE 346', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"pearlescentColor\":2,\"modBackWheels\":-1,\"color1\":0,\"modSuspension\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"modArmor\":-1,\"wheels\":3,\"plate\":\"EZE 346 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":0,\"windowTint\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"model\":1878062887,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"health\":962,\"dirtLevel\":1.7089861631394,\"modAerials\":-1,\"wheelColor\":7,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:1100001325b7a9b', 1, 'FBI 645', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":-1961627517,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modDial\":-1,\"color2\":12,\"wheels\":0,\"modEngine\":3,\"wheelColor\":156,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":0.12885892391204,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"color1\":12,\"modTransmission\":2,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"windowTint\":1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"health\":1000,\"plate\":\"FBI 645 \",\"modFrame\":-1,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":2,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":111}'),
('steam:1100001179c3bb7', 1, 'FBM 120', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"FBM 120 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modSteeringWheel\":-1,\"wheels\":0,\"modArmor\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modFrontWheels\":-1,\"model\":-1549019518,\"plateIndex\":0,\"modDoorSpeaker\":-1,\"pearlescentColor\":12,\"dirtLevel\":13.81674861908,\"health\":517,\"color2\":16,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":15,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"modGrille\":-1,\"modSeats\":-1,\"modDial\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"wheelColor\":156,\"modSpeakers\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modHydrolic\":-1}'),
('steam:11000011555ac07', 1, 'FEY 816', '{\"wheels\":1,\"modHydrolic\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"modSideSkirt\":-1,\"plate\":\"FEY 816 \",\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"color2\":0,\"modRightFender\":-1,\"modTrimB\":-1,\"modTank\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":926,\"modHorns\":-1,\"color1\":125,\"dirtLevel\":13.714908599854,\"modBrakes\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modStruts\":-1,\"plateIndex\":0,\"modRoof\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"wheelColor\":0,\"model\":972671128,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:1100001061d0cb1', 1, 'FIF 854', '{\"plateIndex\":0,\"model\":2046572318,\"pearlescentColor\":134,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"color1\":8,\"modPlateHolder\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"color2\":8,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modLivery\":-1,\"health\":998,\"wheels\":0,\"modAirFilter\":-1,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"FIF 854 \",\"modHood\":-1,\"modFender\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modRightFender\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modStruts\":-1,\"modSideSkirt\":-1,\"dirtLevel\":9.8689374923706,\"modGrille\":-1,\"modHydrolic\":-1}'),
('steam:11000013613fa78', 1, 'FLL 782', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":2,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":1165853178,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modBrakes\":2,\"modAerials\":-1,\"color2\":3,\"wheels\":7,\"modEngine\":3,\"wheelColor\":5,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":11.309580802918,\"modXenon\":1,\"modEngineBlock\":-1,\"modFender\":-1,\"modFrontWheels\":-1,\"color1\":15,\"modTransmission\":2,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modHydrolic\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modSteeringWheel\":-1,\"health\":711,\"plate\":\"FLL 782 \",\"modDial\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modTank\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modHorns\":8,\"windowTint\":1,\"modSeats\":-1,\"pearlescentColor\":135}'),
('steam:11000010d6c30cb', 1, 'FXB 176', '{\"modXenon\":false,\"modAPlate\":-1,\"wheelColor\":156,\"modPlateHolder\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"color2\":29,\"modTrimA\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modHood\":-1,\"modDial\":-1,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"model\":-1549019518,\"modTurbo\":false,\"modOrnaments\":-1,\"health\":999,\"modTank\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"dirtLevel\":0.19824354350566,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"color1\":43,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"plateIndex\":1,\"pearlescentColor\":37,\"windowTint\":-1,\"modAerials\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"wheels\":0,\"modSteeringWheel\":-1,\"modFender\":-1,\"modLivery\":-1,\"modArmor\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"plate\":\"FXB 176 \",\"modFrontWheels\":-1,\"modSmokeEnabled\":false,\"modStruts\":-1}'),
('steam:110000113248a42', 1, 'FYA 331', '{\"neonColor\":[255,0,255],\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"wheelColor\":156,\"color2\":0,\"modTrunk\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":6,\"plateIndex\":4,\"dirtLevel\":0.79299002885818,\"model\":-497997000,\"modFrontWheels\":-1,\"modXenon\":false,\"modOrnaments\":-1,\"windowTint\":1,\"modSmokeEnabled\":1,\"modLivery\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"plate\":\"FYA 331 \",\"modHood\":-1,\"modSideSkirt\":-1,\"modTransmission\":2,\"wheels\":0,\"modTurbo\":false,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modSpoilers\":-1,\"health\":893,\"modHydrolic\":-1,\"modArmor\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modRoof\":-1,\"color1\":131,\"modAerials\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modEngine\":3,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"modSuspension\":-1,\"modDial\":-1,\"modAirFilter\":-1}'),
('steam:11000010719503b', 1, 'GBB 584', '{\"neonColor\":[255,0,255],\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"wheelColor\":112,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modSeats\":-1,\"pearlescentColor\":5,\"plateIndex\":0,\"dirtLevel\":3.9471731185914,\"modRightFender\":-1,\"modFender\":-1,\"modXenon\":false,\"modOrnaments\":-1,\"windowTint\":-1,\"modSmokeEnabled\":1,\"modBackWheels\":-1,\"modTrimB\":-1,\"modDashboard\":-1,\"modRearBumper\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"plate\":\"GBB 584 \",\"modHood\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"wheels\":5,\"modTurbo\":false,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modSpoilers\":-1,\"health\":981,\"modHydrolic\":-1,\"modArmor\":-1,\"color2\":4,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modHorns\":-1,\"modRoof\":-1,\"color1\":0,\"modAirFilter\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modLivery\":-1,\"modAerials\":-1,\"model\":1549126457,\"modFrontWheels\":-1}'),
('steam:11000011cded001', 1, 'GCH 740', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1813965170,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"color2\":73,\"wheels\":7,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":6.1765513420104,\"modSpoilers\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"color1\":73,\"modTransmission\":-1,\"modAPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"modBrakes\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"modHood\":-1,\"modGrille\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"plate\":\"GCH 740 \",\"modFrame\":-1,\"modTank\":-1,\"modFender\":-1,\"health\":1000,\"modSeats\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"modRoof\":-1,\"pearlescentColor\":74}'),
('steam:110000117053659', 1, 'GCO 914', '{\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"modTrimA\":-1,\"wheelColor\":176,\"model\":2047166283,\"modSpoilers\":-1,\"modArchCover\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"health\":1000,\"modSteeringWheel\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modSmokeEnabled\":false,\"modHood\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"modAerials\":-1,\"modRoof\":-1,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"plate\":\"GCO 914\",\"modEngine\":-1,\"plateIndex\":4,\"color1\":32,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modRearBumper\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modPlateHolder\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":14.000008583068,\"wheels\":6,\"modBackWheels\":-1,\"color2\":32,\"modHorns\":-1,\"modSpeakers\":-1,\"neonColor\":[255,0,255],\"modDial\":-1,\"pearlescentColor\":0,\"modSuspension\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"windowTint\":-1,\"modFender\":-1,\"modEngineBlock\":-1}'),
('steam:11000010f3c770c', 1, 'GEN 861', '{\"modBrakes\":-1,\"modXenon\":false,\"modTrimA\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modDial\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"plate\":\"GEN 861\",\"modHorns\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"wheelColor\":0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modLivery\":-1,\"wheels\":0,\"health\":1000,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"dirtLevel\":4.0000081062316,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"model\":-1215316954,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":35,\"modOrnaments\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modAerials\":-1,\"color2\":29,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modHood\":-1,\"windowTint\":-1,\"plateIndex\":0,\"modSpeakers\":-1,\"modFender\":-1,\"color1\":29,\"modArchCover\":-1,\"modArmor\":-1,\"modWindows\":-1}'),
('steam:11000010ed15b6b', 1, 'GHD 955', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[41,36,33],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"GHD 955 \",\"modDoorSpeaker\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":4,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modTransmission\":2,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"health\":1000,\"modAPlate\":-1,\"wheelColor\":12,\"modTrimA\":-1,\"windowTint\":1,\"modBackWheels\":-1,\"model\":934775262,\"neonColor\":[255,0,255],\"modSuspension\":3,\"modTrunk\":-1,\"plateIndex\":1,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":44,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"modOrnaments\":-1,\"modAirFilter\":-1,\"pearlescentColor\":2,\"modSpeakers\":-1,\"dirtLevel\":1.2066226005554,\"modArchCover\":-1,\"modHorns\":-1,\"modWindows\":-1,\"wheels\":7,\"modGrille\":-1,\"color1\":147,\"modSteeringWheel\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"modSeats\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1}'),
('steam:11000013613fa78', 1, 'GJQ 127', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":900,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":40,\"model\":934775262,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modSeats\":-1,\"modAerials\":-1,\"color2\":107,\"wheels\":7,\"modEngine\":3,\"wheelColor\":156,\"modArmor\":0,\"modSmokeEnabled\":1,\"dirtLevel\":7.8586902618408,\"modSuspension\":3,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"color1\":131,\"modTransmission\":2,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"windowTint\":1,\"modSteeringWheel\":-1,\"plate\":\"GJQ 127 \",\"modArchCover\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"modTank\":-1,\"modFender\":-1,\"modBrakes\":2,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modXenon\":1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":80}'),
('steam:11000010dd9c7d6', 1, 'GOW 412', '{\"modTrimA\":-1,\"pearlescentColor\":6,\"modTrunk\":-1,\"modTrimB\":-1,\"color1\":132,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":0,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":3,\"modTransmission\":2,\"plateIndex\":1,\"modFender\":-1,\"modVanityPlate\":-1,\"model\":-1752116803,\"modAPlate\":-1,\"neonColor\":[255,255,255],\"modRoof\":-1,\"modArchCover\":-1,\"modRearBumper\":0,\"modFrontWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modSpoilers\":1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":742,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modTurbo\":false,\"modSideSkirt\":0,\"modDoorSpeaker\":-1,\"wheelColor\":0,\"modWindows\":-1,\"wheels\":0,\"plate\":\"GOW 412 \",\"modBackWheels\":-1,\"modOrnaments\":-1,\"dirtLevel\":3.8288702964782,\"modSmokeEnabled\":1,\"modBrakes\":2,\"modAirFilter\":-1,\"color2\":0,\"modEngine\":3,\"modFrontBumper\":0,\"modEngineBlock\":-1,\"modHorns\":3,\"modHydrolic\":-1,\"modSeats\":-1,\"modXenon\":1,\"modSpeakers\":-1,\"tyreSmokeColor\":[0,245,255],\"modExhaust\":-1,\"modRightFender\":-1,\"modTank\":-1,\"modFrame\":-1,\"modAerials\":-1,\"modStruts\":-1}'),
('steam:11000011c0b0ace', 1, 'GPO 491', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"wheelColor\":156,\"modHood\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modXenon\":false,\"modGrille\":-1,\"modBackWheels\":-1,\"color1\":15,\"modAerials\":-1,\"pearlescentColor\":15,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"plate\":\"GPO 491 \",\"health\":981,\"modTrimA\":-1,\"modFrame\":-1,\"wheels\":7,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":107,\"windowTint\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"model\":934775262,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":6.2699103355408,\"modTrimB\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000010d6c30cb', 1, 'GPR 296', '{\"modFrame\":-1,\"modEngine\":-1,\"modRearBumper\":-1,\"windowTint\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"health\":977,\"pearlescentColor\":111,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"dirtLevel\":4.195601940155,\"modTrimB\":-1,\"modDial\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modPlateHolder\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":111,\"plate\":\"GPR 296 \",\"modSeats\":-1,\"modTrunk\":-1,\"model\":-845961253,\"modSmokeEnabled\":1,\"modTurbo\":false,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modOrnaments\":-1,\"color2\":111,\"modTrimA\":-1,\"modBackWheels\":-1,\"wheelColor\":156,\"wheels\":3,\"modXenon\":false,\"modSpoilers\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"plateIndex\":0,\"modDoorSpeaker\":-1,\"modAerials\":-1}'),
('steam:11000010302b529', 1, 'GSG 381', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":999,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1553034064,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.3544103205204,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":8,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"GSG 381 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":8,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":134}'),
('steam:11000011acec85a', 1, 'GTJ 706', '{\"modArchCover\":0,\"modStruts\":11,\"modFrontBumper\":8,\"modTrimB\":1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":1,\"modSideSkirt\":3,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":4,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":2,\"modHorns\":-1,\"model\":-295689028,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":1,\"health\":978,\"color2\":34,\"wheels\":0,\"modEngine\":1,\"wheelColor\":158,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":5.8455376625062,\"modEngineBlock\":1,\"modXenon\":1,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"color1\":120,\"modTransmission\":-1,\"modWindows\":1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":2,\"modShifterLeavers\":-1,\"modHood\":8,\"windowTint\":1,\"modFender\":5,\"modSteeringWheel\":9,\"modGrille\":-1,\"modDashboard\":3,\"modDial\":2,\"modTrimA\":0,\"plate\":\"GTJ 706 \",\"modRoof\":3,\"modTank\":-1,\"modBrakes\":2,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":0,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modFrame\":4,\"pearlescentColor\":70}'),
('steam:11000010d819702', 1, 'GXY 220', '{\"wheels\":1,\"modBrakes\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modExhaust\":-1,\"color2\":0,\"modDashboard\":-1,\"modSideSkirt\":-1,\"plate\":\"GXY 220 \",\"modTurbo\":false,\"modSpoilers\":-1,\"modGrille\":-1,\"pearlescentColor\":5,\"modFrontBumper\":-1,\"modWindows\":-1,\"modHood\":-1,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modShifterLeavers\":-1,\"modTank\":-1,\"modTrimB\":-1,\"color1\":26,\"modAPlate\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":996,\"wheelColor\":156,\"modHorns\":-1,\"dirtLevel\":6.137755393982,\"modRoof\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modAerials\":-1,\"modFender\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modTransmission\":-1,\"plateIndex\":3,\"modEngineBlock\":-1,\"modStruts\":-1,\"modDial\":-1,\"modRightFender\":-1,\"model\":1162065741,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:11000013491dae7', 1, 'HFD 347', '{\"modSmokeEnabled\":1,\"modExhaust\":0,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modRearBumper\":1,\"modXenon\":false,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modHood\":1,\"modGrille\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":42,\"modDashboard\":-1,\"color1\":38,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modFrontBumper\":2,\"modTrunk\":-1,\"modBrakes\":2,\"modBackWheels\":-1,\"health\":0,\"modTrimA\":-1,\"modSuspension\":-1,\"wheels\":7,\"plate\":\"HFD 347 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":3,\"color2\":4,\"windowTint\":1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"model\":-142942670,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":6.1571063995362,\"modAirFilter\":-1,\"wheelColor\":156,\"modSpoilers\":3,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":0}'),
('steam:11000011b8aadb1', 1, 'HLP 763', '{\"tyreSmokeColor\":[255,255,255],\"color2\":0,\"wheels\":6,\"modFrontWheels\":-1,\"modDial\":-1,\"model\":333512375,\"modHood\":-1,\"modFrame\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"modAerials\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"dirtLevel\":12.81643295288,\"modRoof\":-1,\"windowTint\":-1,\"modTank\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"health\":945,\"modSuspension\":-1,\"modEngine\":1,\"modVanityPlate\":-1,\"modLivery\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modWindows\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"wheelColor\":0,\"plateIndex\":4,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"plate\":\"HLP 763 \",\"modTrimB\":-1,\"modFender\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"color1\":0,\"modTransmission\":-1}'),
('steam:110000118c34052', 1, 'HNV 284', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"neonColor\":[50,255,155],\"modRightFender\":-1,\"modArmor\":4,\"modHood\":-1,\"dirtLevel\":5.42635679245,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"HNV 284 \",\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"pearlescentColor\":156,\"modDashboard\":-1,\"color1\":111,\"modLivery\":-1,\"modFrontWheels\":32,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":990,\"modTrimA\":-1,\"modGrille\":-1,\"wheels\":7,\"modBackWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modEngine\":3,\"color2\":111,\"windowTint\":1,\"modSuspension\":2,\"modStruts\":-1,\"model\":1165853178,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"wheelColor\":5,\"modSideSkirt\":-1}'),
('steam:1100001061d0cb1', 1, 'HNW 744', '{\"plateIndex\":0,\"color1\":8,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"color2\":8,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modTrimB\":-1,\"model\":1553034064,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"wheels\":0,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"health\":1000,\"pearlescentColor\":134,\"modSpeakers\":-1,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"HNW 744 \",\"modLivery\":-1,\"modStruts\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"dirtLevel\":4.6143307685852,\"modExhaust\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modHood\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:1100001325b7a9b', 1, 'HQM 582', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[0,0,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":5,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"HQM 582 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":83,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":920,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":6,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":37,\"modEngine\":3,\"color2\":132,\"windowTint\":2,\"modFrame\":-1,\"modArmor\":4,\"model\":86520421,\"modArchCover\":-1,\"modFrontWheels\":9,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":7.212637424469,\"wheelColor\":107,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000011acec85a', 1, 'HVM 332', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-188978926,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"health\":909,\"color2\":112,\"wheels\":6,\"modEngine\":1,\"wheelColor\":70,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":14.407216072082,\"modEngineBlock\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"color1\":112,\"modTransmission\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modTrimA\":-1,\"plate\":\"HVM 332 \",\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":1,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":112}'),
('steam:11000010e81d760', 1, 'HZN 982', '{\"plate\":\"HZN 982 \",\"modTrimA\":-1,\"modTransmission\":-1,\"modXenon\":false,\"model\":-188978926,\"wheels\":6,\"wheelColor\":70,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modStruts\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modArmor\":-1,\"modWindows\":-1,\"modGrille\":-1,\"color1\":112,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modSuspension\":-1,\"plateIndex\":1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"pearlescentColor\":112,\"modLivery\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"modAPlate\":-1,\"modDial\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"health\":968,\"modSpoilers\":-1,\"color2\":112,\"modTrimB\":-1,\"modTrunk\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modSeats\":-1,\"modVanityPlate\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":13.204672813416}'),
('steam:1100001061d0cb1', 1, 'HZV 000', '{\"modBackWheels\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"dirtLevel\":3.000007390976,\"modFender\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modEngine\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"color1\":29,\"modHood\":-1,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modSeats\":-1,\"model\":1131912276,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"wheelColor\":156,\"color2\":0,\"neonEnabled\":[false,false,false,false],\"modDial\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":38,\"modBrakes\":-1,\"modWindows\":-1,\"modGrille\":-1,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"health\":1000,\"modSmokeEnabled\":false,\"modTank\":-1,\"plateIndex\":4,\"plate\":\"HZV 000\",\"modOrnaments\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"wheels\":6,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modSteeringWheel\":-1,\"modXenon\":false}'),
('steam:11000013493c4b7', 1, 'IIE 797', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modTurbo\":false,\"modDashboard\":-1,\"modArmor\":-1,\"modXenon\":false,\"modHood\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"IIE 797 \",\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":120,\"modBackWheels\":3,\"color1\":142,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"health\":19,\"modTrimA\":-1,\"modSuspension\":-1,\"wheels\":1,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":25,\"windowTint\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"model\":-1361687965,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":10.007187843322,\"modAPlate\":-1,\"wheelColor\":88,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:110000131d556ee', 1, 'IKU 131', '{\"model\":1813965170,\"modRoof\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modHorns\":-1,\"modDial\":-1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"color1\":13,\"modLivery\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"plateIndex\":0,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modSmokeEnabled\":1,\"modArchCover\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modEngine\":1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"wheelColor\":156,\"modExhaust\":-1,\"modTransmission\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"color2\":2,\"modFrontBumper\":-1,\"modBrakes\":-1,\"modRightFender\":-1,\"health\":1000,\"plate\":\"IKU 131 \",\"modSuspension\":-1,\"windowTint\":1,\"modSeats\":-1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"modXenon\":false,\"modArmor\":-1,\"modTrimA\":-1,\"modTurbo\":false,\"modSpoilers\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modFender\":-1,\"dirtLevel\":7.3320503234864,\"modTrimB\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":136}'),
('steam:11000010f3c770c', 1, 'ILR 090', '{\"modBrakes\":-1,\"modXenon\":false,\"modTrimA\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modDial\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"plate\":\"ILR 090\",\"modHorns\":-1,\"modGrille\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modLivery\":-1,\"wheels\":6,\"health\":1000,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"dirtLevel\":14.000014305114,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"model\":-1523428744,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":38,\"modOrnaments\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modAerials\":-1,\"color2\":5,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modHood\":-1,\"windowTint\":-1,\"plateIndex\":0,\"modSpeakers\":-1,\"modFender\":-1,\"color1\":33,\"modArchCover\":-1,\"modArmor\":-1,\"modWindows\":-1}'),
('steam:11000010c9bdcd9', 1, 'INI 463', '{\"modTrimA\":-1,\"pearlescentColor\":156,\"modTrunk\":-1,\"modTrimB\":-1,\"color1\":111,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":0,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":3,\"modTransmission\":2,\"plateIndex\":0,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"model\":-1485523546,\"modAPlate\":-1,\"modPlateHolder\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"modRearBumper\":0,\"modFrontWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modGrille\":-1,\"modRoof\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modSideSkirt\":1,\"modBackWheels\":-1,\"wheels\":0,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modWindows\":-1,\"color2\":0,\"plate\":\"INI 463 \",\"modSmokeEnabled\":1,\"modEngineBlock\":-1,\"dirtLevel\":0.2746234536171,\"modHydrolic\":-1,\"modBrakes\":2,\"modAirFilter\":-1,\"neonColor\":[41,36,33],\"modEngine\":3,\"modFrontBumper\":2,\"modFender\":-1,\"modHorns\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modTurbo\":false,\"modSpeakers\":-1,\"tyreSmokeColor\":[41,36,33],\"modExhaust\":1,\"modXenon\":1,\"modTank\":-1,\"modFrame\":-1,\"modSpoilers\":2,\"modStruts\":-1}'),
('steam:110000118c34052', 1, 'INK 720', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modArmor\":-1,\"modHood\":-1,\"dirtLevel\":1.0731282234192,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"INK 720 \",\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"pearlescentColor\":0,\"modDashboard\":-1,\"color1\":192,\"modLivery\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"health\":1000,\"modTrimA\":-1,\"modGrille\":-1,\"wheels\":6,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":224,\"windowTint\":1,\"modSuspension\":-1,\"modStruts\":-1,\"model\":1474015055,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"wheelColor\":16,\"modSideSkirt\":-1}'),
('steam:11000010cb4181f', 1, 'IVI 975', '{\"modTrimA\":-1,\"pearlescentColor\":13,\"modTrunk\":-1,\"modDashboard\":-1,\"color1\":128,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":4,\"modTransmission\":2,\"plateIndex\":1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"model\":-2107990196,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":6,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":961,\"modHydrolic\":-1,\"modFender\":-1,\"wheels\":1,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":128,\"modWindows\":-1,\"modExhaust\":0,\"plate\":\"IVI 975 \",\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"dirtLevel\":3.4581608772278,\"modPlateHolder\":-1,\"modBrakes\":2,\"modAirFilter\":-1,\"modSmokeEnabled\":1,\"modEngine\":3,\"modFrontBumper\":-1,\"color2\":120,\"modHorns\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modAerials\":-1,\"modSpeakers\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"modXenon\":1,\"modTank\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"modStruts\":-1}'),
('steam:11000011acec85a', 1, 'JCX 084', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":633712403,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"windowTint\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modEngine\":-1,\"wheelColor\":158,\"modArmor\":-1,\"modSmokeEnabled\":false,\"dirtLevel\":8.1723432540894,\"modEngineBlock\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"color1\":64,\"modTransmission\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"plate\":\"JCX 084 \",\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modFrame\":-1,\"modTank\":-1,\"health\":999,\"modBackWheels\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"color2\":64,\"modHydrolic\":-1,\"modRoof\":-1,\"pearlescentColor\":70}'),
('steam:11000011acec85a', 1, 'JDE 708', '{\"plateIndex\":3,\"model\":-1237253773,\"pearlescentColor\":111,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"color2\":6,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modEngineBlock\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modHood\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"color1\":6,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modRearBumper\":-1,\"health\":961,\"modAirFilter\":-1,\"modLivery\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"plate\":\"JDE 708 \",\"wheels\":4,\"modRightFender\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"dirtLevel\":13.96228313446,\"modTrimB\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modEngine\":-1,\"modHorns\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:11000011c7b5be5', 1, 'JDI 803', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"JDI 803 \",\"modDoorSpeaker\":-1,\"health\":0,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modTransmission\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"plateIndex\":4,\"modAPlate\":-1,\"wheelColor\":0,\"modTrimA\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modSeats\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"color2\":70,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"windowTint\":-1,\"neonColor\":[255,0,255],\"pearlescentColor\":74,\"modLivery\":-1,\"dirtLevel\":2.7513513565064,\"modWindows\":-1,\"modHorns\":-1,\"modFrame\":-1,\"wheels\":0,\"modGrille\":-1,\"color1\":70,\"modTank\":-1,\"model\":-662904049,\"modTrimB\":-1,\"modSpeakers\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1}'),
('steam:11000011c0b0ace', 1, 'JDR 202', '{\"modTrunk\":-1,\"modSpeakers\":-1,\"windowTint\":-1,\"dirtLevel\":3.0000002384186,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modSeats\":-1,\"wheels\":4,\"modHood\":-1,\"modRightFender\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"wheelColor\":156,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"color2\":0,\"modSpoilers\":-1,\"modArmor\":-1,\"pearlescentColor\":55,\"modWindows\":-1,\"plate\":\"JDR 202\",\"modEngine\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modFrame\":-1,\"health\":1000,\"model\":-440768424,\"plateIndex\":0,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"color1\":49,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modStruts\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modDial\":-1,\"modExhaust\":-1,\"modXenon\":false,\"modFender\":-1,\"modSideSkirt\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"modLivery\":-1,\"modEngineBlock\":-1,\"modFrontBumper\":-1,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false]}'),
('steam:110000111b71726', 1, 'JEF 915', '{\"wheels\":6,\"modBrakes\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"modSideSkirt\":-1,\"wheelColor\":64,\"color2\":32,\"modSpoilers\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"modTank\":-1,\"modWindows\":-1,\"modHood\":-1,\"modAerials\":-1,\"modFrontBumper\":-1,\"modStruts\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"plate\":\"JEF 915 \",\"modEngine\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":862,\"modRoof\":-1,\"color1\":32,\"dirtLevel\":5.8705892562866,\"neonEnabled\":[false,false,false,false],\"modDial\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modXenon\":false,\"modAirFilter\":-1,\"modArchCover\":-1,\"plateIndex\":4,\"modEngineBlock\":-1,\"modHorns\":-1,\"modFrame\":-1,\"modTransmission\":-1,\"model\":2047166283,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:110000111b71726', 1, 'JND 889', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modRearBumper\":-1,\"model\":-1639924411,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"JND 889 \",\"modDoorSpeaker\":-1,\"health\":308,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"plateIndex\":4,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"wheelColor\":156,\"modTrimA\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"color2\":112,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"pearlescentColor\":134,\"modSpeakers\":-1,\"dirtLevel\":10.859155654908,\"modWindows\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"wheels\":6,\"modGrille\":-1,\"color1\":112,\"neonColor\":[255,0,255],\"modHood\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1}'),
('steam:1100001179c3bb7', 1, 'JOD 531', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"JOD 531 \",\"modSpoilers\":0,\"modWindows\":-1,\"modFrontWheels\":42,\"modHorns\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":1,\"modSteeringWheel\":-1,\"wheels\":0,\"modArmor\":4,\"color1\":22,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modExhaust\":0,\"modDoorSpeaker\":-1,\"plateIndex\":0,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":15.0,\"health\":0,\"color2\":33,\"modPlateHolder\":-1,\"model\":-566387422,\"modEngine\":3,\"modStruts\":-1,\"modSuspension\":3,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":120,\"modRearBumper\":-1,\"modTransmission\":2,\"modSmokeEnabled\":1,\"modTurbo\":false,\"modDashboard\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modHydrolic\":-1,\"modGrille\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"modBrakes\":2,\"pearlescentColor\":112,\"modHood\":0}');
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:11000010302b529', 1, 'JOF 556', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":1000,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-346924611,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":3,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.11329090595246,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":2,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"JOF 556 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":2,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":7}'),
('steam:11000011230bca7', 1, 'JYR 348', '{\"modXenon\":false,\"plate\":\"JYR 348 \",\"modEngine\":-1,\"pearlescentColor\":12,\"modArchCover\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"plateIndex\":4,\"modArmor\":-1,\"modFender\":-1,\"color2\":70,\"modTrimB\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modSuspension\":-1,\"modAerials\":-1,\"modExhaust\":-1,\"modLivery\":-1,\"color1\":0,\"modShifterLeavers\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modDial\":-1,\"modEngineBlock\":-1,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modAPlate\":-1,\"modFrame\":-1,\"dirtLevel\":12.048502922058,\"modFrontWheels\":-1,\"wheelColor\":0,\"modHood\":-1,\"modBackWheels\":-1,\"health\":991,\"modDashboard\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"wheels\":0,\"modAirFilter\":-1,\"model\":-662904049,\"modSideSkirt\":-1,\"modSmokeEnabled\":1,\"modWindows\":-1,\"modSteeringWheel\":-1,\"windowTint\":4}'),
('steam:110000111b71726', 1, 'JYT 350', '{\"tyreSmokeColor\":[255,255,255],\"color2\":0,\"wheels\":6,\"modFrontWheels\":-1,\"modDial\":-1,\"model\":333512375,\"modHood\":-1,\"wheelColor\":0,\"pearlescentColor\":0,\"modAPlate\":-1,\"modAerials\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"dirtLevel\":0.070757307112216,\"modRoof\":-1,\"windowTint\":-1,\"modTank\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"health\":955,\"modSuspension\":3,\"modBackWheels\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modSmokeEnabled\":1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"modGrille\":-1,\"modArmor\":4,\"modDoorSpeaker\":-1,\"modEngine\":3,\"plateIndex\":4,\"modWindows\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modLivery\":-1,\"plate\":\"JYT 350 \",\"modTrimB\":-1,\"modFender\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modBrakes\":2,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"color1\":0,\"modTransmission\":2}'),
('steam:1100001325b7a9b', 1, 'KPE 252', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":7,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":-295689028,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modDial\":-1,\"color2\":64,\"wheels\":0,\"modEngine\":1,\"wheelColor\":158,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":1.5443049669266,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"color1\":83,\"modTransmission\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"windowTint\":1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modHorns\":-1,\"modSpoilers\":2,\"health\":994,\"plate\":\"KPE 252 \",\"modFrame\":-1,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":2,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":70}'),
('steam:110000117d510a6', 1, 'KRJ 775', '{\"modSideSkirt\":-1,\"dirtLevel\":9.9496030807496,\"modHorns\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modTank\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"plateIndex\":0,\"modDashboard\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"wheels\":0,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modHood\":-1,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modSmokeEnabled\":1,\"color2\":0,\"pearlescentColor\":156,\"modExhaust\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modTrimA\":-1,\"health\":876,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"plate\":\"KRJ 775 \",\"modWindows\":-1,\"wheelColor\":156,\"model\":-1485523546,\"modPlateHolder\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"color1\":0,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modRoof\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modAerials\":-1,\"modEngine\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"modArmor\":-1}'),
('steam:11000011c0b0ace', 1, 'KSP 039', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"modArmor\":-1,\"pearlescentColor\":5,\"modHood\":-1,\"modTurbo\":false,\"modWindows\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"modSeats\":-1,\"modXenon\":1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"modBackWheels\":-1,\"color1\":59,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modAPlate\":-1,\"health\":986,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":4,\"plate\":\"KSP 039 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":3,\"color2\":0,\"windowTint\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"model\":101905590,\"modArchCover\":-1,\"modFrontWheels\":1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":0.2770828306675,\"modOrnaments\":-1,\"wheelColor\":3,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:110000111b71726', 1, 'LDZ 943', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"LDZ 943 \",\"modDoorSpeaker\":-1,\"model\":2046572318,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modOrnaments\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"health\":516,\"modSeats\":-1,\"wheelColor\":156,\"modTrimA\":-1,\"windowTint\":1,\"modFrame\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":3,\"neonColor\":[255,0,255],\"plateIndex\":0,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"color2\":8,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":1,\"modBackWheels\":-1,\"modTank\":-1,\"pearlescentColor\":134,\"modWindows\":-1,\"dirtLevel\":6.1548676490784,\"modSpoilers\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"modTransmission\":2,\"modGrille\":-1,\"color1\":12,\"modArchCover\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"wheels\":0,\"modFrontWheels\":-1,\"modFrontBumper\":-1}'),
('steam:110000118c34052', 1, 'LFD 659', '{\"modSmokeEnabled\":1,\"modExhaust\":0,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modTrimB\":-1,\"neonColor\":[50,255,155],\"modRightFender\":-1,\"modArmor\":4,\"modHood\":-1,\"dirtLevel\":12.571594238282,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"LFD 659 \",\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"pearlescentColor\":4,\"modDashboard\":-1,\"color1\":111,\"modLivery\":-1,\"modFrontWheels\":14,\"modFrontBumper\":0,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":992,\"modTrimA\":-1,\"modGrille\":-1,\"wheels\":0,\"modBackWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modEngine\":3,\"color2\":111,\"windowTint\":1,\"modSuspension\":3,\"modStruts\":-1,\"model\":886934177,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":0,\"modAerials\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"wheelColor\":0,\"modSideSkirt\":0}'),
('steam:110000119ac453f', 1, 'LFN 676', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modArmor\":-1,\"modLivery\":-1,\"modHood\":-1,\"modGrille\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":156,\"modDashboard\":-1,\"color1\":2,\"modAerials\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"health\":827,\"modTrimA\":-1,\"modFrame\":-1,\"wheels\":7,\"plate\":\"LFN 676 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":3,\"windowTint\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"model\":1165853178,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"dirtLevel\":5.9368166923522,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"wheelColor\":5,\"modSideSkirt\":-1}'),
('steam:11000011c0b0ace', 1, 'LNW 367', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":3,\"modVanityPlate\":-1,\"modRearBumper\":2,\"pearlescentColor\":35,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":1,\"modSuspension\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":12,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"health\":0,\"modTrimA\":-1,\"modBackWheels\":-1,\"wheels\":0,\"plate\":\"LNW 367 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":1,\"color2\":29,\"windowTint\":1,\"wheelColor\":0,\"modStruts\":-1,\"model\":-1215316954,\"modArchCover\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":15.0,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000011555ac07', 1, 'LUM 921', '{\"wheels\":1,\"modHydrolic\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"modSideSkirt\":-1,\"plate\":\"LUM 921 \",\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modGrille\":-1,\"pearlescentColor\":120,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"color2\":25,\"modRightFender\":-1,\"modTrimB\":-1,\"modTank\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":999,\"modHorns\":-1,\"color1\":142,\"dirtLevel\":7.1168456077576,\"modBrakes\":-1,\"modFrame\":-1,\"modBackWheels\":3,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modStruts\":-1,\"plateIndex\":0,\"modRoof\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"wheelColor\":88,\"model\":-1361687965,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:1100001167d265e', 1, 'LVD 897', '{\"modRoof\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modSmokeEnabled\":false,\"modHorns\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"pearlescentColor\":5,\"modTrimA\":-1,\"dirtLevel\":12.157391548157,\"modGrille\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modTransmission\":-1,\"modHydrolic\":-1,\"modEngine\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modBrakes\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"windowTint\":-1,\"modXenon\":false,\"modExhaust\":-1,\"modAerials\":-1,\"modAirFilter\":-1,\"color1\":5,\"modStruts\":-1,\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"health\":972,\"wheels\":7,\"modRightFender\":-1,\"plate\":\"LVD 897 \",\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modAPlate\":-1,\"wheelColor\":6,\"modDial\":-1,\"modFrame\":-1,\"model\":2067820283,\"modWindows\":-1,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"modFender\":-1,\"modLivery\":-1,\"modEngineBlock\":-1,\"modTurbo\":false,\"modSteeringWheel\":-1,\"color2\":0,\"neonColor\":[255,0,255]}'),
('steam:110000119ac453f', 1, 'LWH 151', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"LWH 151 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":0,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":1,\"modSteeringWheel\":-1,\"wheels\":4,\"modArmor\":4,\"modTrimB\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modTransmission\":2,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"modSeats\":-1,\"pearlescentColor\":0,\"dirtLevel\":1.53542137146,\"health\":999,\"color2\":111,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modEngine\":3,\"neonEnabled\":[1,1,1,1],\"modSuspension\":3,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"modRearBumper\":-1,\"color1\":12,\"modSmokeEnabled\":1,\"wheelColor\":153,\"modExhaust\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modLivery\":-1,\"model\":-2064372143,\"modGrille\":-1,\"modSpeakers\":-1,\"neonColor\":[0,150,255],\"modBackWheels\":-1,\"modBrakes\":2,\"modDashboard\":-1,\"modHood\":-1}'),
('steam:1100001061d0cb1', 1, 'LWI 115', '{\"plateIndex\":0,\"model\":1165853178,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modAerials\":-1,\"color2\":3,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modRearBumper\":-1,\"pearlescentColor\":156,\"modDial\":-1,\"modEngineBlock\":-1,\"modTrimB\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"health\":1000,\"modAirFilter\":-1,\"color1\":2,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"LWI 115 \",\"modLivery\":-1,\"modFender\":-1,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"wheels\":7,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":5,\"modRightFender\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"dirtLevel\":3.1593661308288,\"modSideSkirt\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:11000011172f5d0', 1, 'MHM 740', '{\"tyreSmokeColor\":[255,255,255],\"color2\":105,\"wheels\":6,\"modFrontWheels\":-1,\"modDial\":-1,\"model\":1856720760,\"modHood\":-1,\"wheelColor\":0,\"pearlescentColor\":225,\"modOrnaments\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":1,\"modTrimA\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"dirtLevel\":9.7255821228028,\"modRoof\":-1,\"windowTint\":1,\"modTank\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"health\":1000,\"modSuspension\":-1,\"modFrame\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modArchCover\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modTurbo\":1,\"modHydrolic\":-1,\"modGrille\":-1,\"modArmor\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"plateIndex\":3,\"modWindows\":-1,\"modDashboard\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"plate\":\"MHM 740 \",\"modTrimB\":-1,\"modFender\":-1,\"modEngine\":-1,\"modXenon\":1,\"modSideSkirt\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"color1\":65,\"modTransmission\":-1}'),
('steam:1100001325b7a9b', 1, 'MOX 843', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":134,\"modRightFender\":-1,\"neonColor\":[255,255,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"MOX 843 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":70,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":952,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":0,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modEngine\":3,\"color2\":8,\"windowTint\":1,\"modFrame\":-1,\"modArmor\":4,\"model\":2046572318,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":0.24344812333584,\"wheelColor\":156,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":0,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000011555ac07', 1, 'MQL 979', '{\"wheels\":1,\"modHydrolic\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"modSideSkirt\":-1,\"plate\":\"MQL 979 \",\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"modGrille\":-1,\"pearlescentColor\":134,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"color2\":12,\"modRightFender\":-1,\"modTrimB\":-1,\"modTank\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":997,\"modHorns\":-1,\"color1\":12,\"dirtLevel\":5.2533354759216,\"modBrakes\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modStruts\":-1,\"plateIndex\":4,\"modRoof\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"wheelColor\":156,\"model\":723973206,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:1100001325b7a9b', 1, 'MVB 827', '{\"plateIndex\":4,\"modTrimB\":-1,\"color1\":32,\"modEngineBlock\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modTransmission\":-1,\"plate\":\"MVB 827 \",\"neonColor\":[255,0,255],\"health\":961,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modRightFender\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modWindows\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modGrille\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modExhaust\":-1,\"modTank\":-1,\"modFrontBumper\":-1,\"modOrnaments\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"modAerials\":-1,\"modEngine\":-1,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modTrunk\":-1,\"dirtLevel\":0.15760891139508,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modXenon\":false,\"modTrimA\":-1,\"modFrame\":-1,\"modArmor\":-1,\"modHood\":-1,\"wheelColor\":224,\"modFender\":-1,\"wheels\":6,\"modSpeakers\":-1,\"modTurbo\":false,\"model\":2047166283,\"modDial\":-1,\"color2\":32,\"modHydrolic\":-1,\"pearlescentColor\":0}'),
('steam:1100001179c3bb7', 1, 'MYC 324', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":0,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"MYC 324 \",\"modDoorSpeaker\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":1,\"modArmor\":4,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modStruts\":-1,\"model\":-1790546981,\"modEngineBlock\":3,\"modSmokeEnabled\":1,\"modBrakes\":2,\"health\":949,\"modSeats\":-1,\"wheelColor\":119,\"modTrimA\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"neonEnabled\":[1,1,1,1],\"plateIndex\":0,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":2,\"color2\":112,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"windowTint\":1,\"modOrnaments\":-1,\"pearlescentColor\":112,\"neonColor\":[255,255,255],\"dirtLevel\":2.006973028183,\"modWindows\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modTransmission\":2,\"modGrille\":-1,\"color1\":145,\"modTurbo\":false,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"wheels\":1}'),
('steam:1100001325b7a9b', 1, 'NBI 998', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":156,\"modRightFender\":-1,\"neonColor\":[153,0,153],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"NBI 998 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":132,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":995,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":7,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":10,\"modEngine\":3,\"color2\":70,\"windowTint\":1,\"modFrame\":-1,\"modArmor\":4,\"model\":1165853178,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":0.52657741308212,\"wheelColor\":5,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":2,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:1100001152f0a24', 1, 'NDP 562', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"NDP 562 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"wheelColor\":144,\"modArchCover\":-1,\"dirtLevel\":11.363889694214,\"health\":866,\"color2\":32,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"modRearBumper\":-1,\"color1\":32,\"modSmokeEnabled\":false,\"modTurbo\":false,\"wheels\":6,\"modSeats\":-1,\"modDial\":-1,\"modLivery\":-1,\"model\":2047166283,\"modGrille\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modHood\":-1}'),
('steam:11000011acec85a', 1, 'NEQ 445', '{\"modSmokeEnabled\":1,\"modExhaust\":0,\"modFender\":-1,\"tyreSmokeColor\":[41,36,33],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"pearlescentColor\":7,\"windowTint\":1,\"modArmor\":4,\"modBackWheels\":-1,\"modHood\":-1,\"modFrame\":0,\"modWindows\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"wheelColor\":156,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":12,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":0,\"modTrunk\":-1,\"modBrakes\":2,\"plate\":\"NEQ 445 \",\"health\":985,\"modTrimA\":-1,\"modAirFilter\":-1,\"wheels\":7,\"modSuspension\":3,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modEngine\":3,\"color2\":12,\"modTurbo\":false,\"neonColor\":[255,255,255],\"modAerials\":-1,\"model\":-1372848492,\"modArchCover\":-1,\"modFrontWheels\":18,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"dirtLevel\":10.311126708984,\"modXenon\":1,\"modTrimB\":-1,\"modSpoilers\":1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modLivery\":-1,\"modSideSkirt\":4}'),
('steam:1100001353fe56e', 1, 'NFF 367', '{\"windowTint\":-1,\"modSideSkirt\":-1,\"plateIndex\":0,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modHood\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modXenon\":false,\"modPlateHolder\":-1,\"dirtLevel\":11.00001335144,\"modSeats\":-1,\"modArchCover\":-1,\"health\":1000,\"modFrontWheels\":-1,\"pearlescentColor\":5,\"modAirFilter\":-1,\"wheels\":6,\"neonColor\":[255,0,255],\"modTank\":-1,\"modDial\":-1,\"color1\":1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modTrimB\":-1,\"color2\":38,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modOrnaments\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"modSpeakers\":-1,\"plate\":\"NFF 367\",\"modAPlate\":-1,\"modArmor\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"model\":86520421,\"modTrunk\":-1,\"modRoof\":-1,\"wheelColor\":156,\"modGrille\":-1,\"modRearBumper\":-1}'),
('steam:11000010302b529', 1, 'NFY 492', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":1000,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":934775262,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":7,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.10580245405436,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":15,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"NFY 492 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":107,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":15}'),
('steam:11000010d6c30cb', 1, 'NHF 426', '{\"modTransmission\":2,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modTrimA\":-1,\"health\":997,\"model\":15219735,\"color1\":51,\"modWindows\":-1,\"modTurbo\":false,\"modPlateHolder\":-1,\"modExhaust\":0,\"modLivery\":4,\"modDashboard\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modAPlate\":-1,\"pearlescentColor\":67,\"modEngine\":3,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":4,\"modHorns\":41,\"modSuspension\":3,\"modBackWheels\":-1,\"modHood\":-1,\"modAerials\":-1,\"dirtLevel\":0.3124993443489,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modAirFilter\":-1,\"modFender\":-1,\"modTank\":-1,\"modFrame\":-1,\"windowTint\":1,\"modSmokeEnabled\":1,\"modEngineBlock\":-1,\"neonEnabled\":[1,1,1,1],\"neonColor\":[0,255,0],\"modArchCover\":-1,\"modFrontWheels\":23,\"modTrunk\":-1,\"modShifterLeavers\":-1,\"modDial\":-1,\"plate\":\"NHF 426 \",\"modGrille\":-1,\"modArmor\":4,\"plateIndex\":1,\"modRoof\":-1,\"modBrakes\":2,\"modStruts\":-1,\"color2\":120,\"wheels\":2,\"modHydrolic\":-1,\"wheelColor\":118,\"modSpeakers\":-1}'),
('steam:11000010302b529', 1, 'NKJ 470', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":999,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1813965170,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":7,\"modEngine\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.10617101937532,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":2,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"NKJ 470 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":2,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":7}'),
('steam:11000010cb4181f', 1, 'NOF 238', '{\"wheels\":6,\"modHydrolic\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modArmor\":4,\"tyreSmokeColor\":[255,255,255],\"plate\":\"NOF 238 \",\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTransmission\":2,\"modAirFilter\":-1,\"modExhaust\":-1,\"color2\":0,\"modAPlate\":-1,\"modSideSkirt\":-1,\"wheelColor\":0,\"modDashboard\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"pearlescentColor\":0,\"modFrontBumper\":-1,\"modWindows\":-1,\"modHood\":-1,\"modSuspension\":3,\"modArchCover\":-1,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modTrimA\":-1,\"modSpeakers\":-1,\"health\":985,\"modSteeringWheel\":-1,\"color1\":0,\"dirtLevel\":1.2045602798462,\"modTank\":-1,\"modDial\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modHorns\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modAerials\":-1,\"modFender\":-1,\"modXenon\":false,\"modBrakes\":2,\"modStruts\":-1,\"plateIndex\":4,\"modEngineBlock\":-1,\"modFrame\":-1,\"modEngine\":3,\"modRoof\":-1,\"model\":333512375,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1}'),
('steam:110000119ac453f', 1, 'NPU 717', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modArmor\":-1,\"modLivery\":-1,\"modHood\":-1,\"modGrille\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"neonColor\":[0,0,255],\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":0,\"modDashboard\":-1,\"color1\":32,\"modAerials\":-1,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"health\":0,\"modTrimA\":-1,\"modFrame\":-1,\"wheels\":6,\"plate\":\"NPU 717 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":32,\"windowTint\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"model\":2047166283,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"dirtLevel\":12.71593284607,\"modAPlate\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"wheelColor\":32,\"modSideSkirt\":-1}'),
('steam:11000010d6c30cb', 1, 'NQQ 266', '{\"plateIndex\":4,\"color1\":32,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modAerials\":-1,\"color2\":240,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modSteeringWheel\":-1,\"model\":-750481609,\"modDial\":-1,\"modEngineBlock\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"wheelColor\":32,\"modPlateHolder\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":988,\"modFender\":-1,\"modAirFilter\":-1,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"NQQ 266 \",\"modLivery\":-1,\"pearlescentColor\":0,\"wheels\":7,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"dirtLevel\":6.1398983001708,\"modFrontWheels\":-1,\"windowTint\":-1,\"modHood\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:11000010d6c30cb', 1, 'NTV 074', '{\"modAerials\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"dirtLevel\":9.1544275283814,\"modTrimA\":-1,\"color2\":0,\"modStruts\":-1,\"modArchCover\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"color1\":4,\"health\":998,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modTank\":-1,\"modSeats\":-1,\"modDial\":-1,\"wheelColor\":156,\"modFrontBumper\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"model\":330661258,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modSmokeEnabled\":1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"pearlescentColor\":111,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"wheels\":0,\"plate\":\"NTV 074 \",\"modSideSkirt\":-1}'),
('steam:11000010302b529', 1, 'NYP 030', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":981,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1165853178,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":7,\"modEngine\":-1,\"wheelColor\":5,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.10644865781068,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":2,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"NYP 030 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":3,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":156}'),
('steam:1100001061d0cb1', 1, 'OBJ 229', '{\"plateIndex\":0,\"color1\":2,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"color2\":2,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modStruts\":-1,\"modBrakes\":-1,\"modSpeakers\":-1,\"model\":1813965170,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modDashboard\":-1,\"modArchCover\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modDial\":-1,\"health\":982,\"modEngineBlock\":-1,\"modFender\":-1,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"OBJ 229 \",\"pearlescentColor\":7,\"modTrimB\":-1,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"wheels\":7,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modRearBumper\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modTrunk\":-1,\"modSideSkirt\":-1,\"dirtLevel\":6.6640338897706,\"modGrille\":-1,\"modHydrolic\":-1}'),
('steam:110000119ac453f', 1, 'OBK 110', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"OBK 110 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"wheelColor\":156,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"plateIndex\":0,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":9.4425573349,\"health\":1000,\"color2\":12,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modTurbo\":false,\"modSuspension\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modRearBumper\":-1,\"color1\":12,\"modSmokeEnabled\":1,\"wheels\":7,\"model\":-193462702,\"modHydrolic\":-1,\"modFender\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"pearlescentColor\":0,\"modHood\":-1}'),
('steam:11000010dd9c7d6', 1, 'OFC 472', '{\"modDashboard\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modAerials\":-1,\"wheels\":6,\"modEngine\":-1,\"modFrame\":-1,\"pearlescentColor\":0,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"modTransmission\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"model\":333512375,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"wheelColor\":0,\"modTank\":-1,\"modHorns\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"windowTint\":-1,\"modPlateHolder\":-1,\"dirtLevel\":6.3212761878968,\"neonEnabled\":[false,false,false,false],\"modDial\":-1,\"modRearBumper\":-1,\"modTrimA\":-1,\"modAirFilter\":-1,\"plate\":\"OFC 472 \",\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modTrunk\":-1,\"modArmor\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"health\":0,\"modExhaust\":-1,\"color1\":0,\"modShifterLeavers\":-1,\"modStruts\":-1,\"color2\":0,\"modArchCover\":-1}'),
('steam:110000119ac453f', 1, 'OHN 938', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"OHN 938 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":6,\"modArmor\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"modTrimB\":-1,\"model\":333512375,\"dirtLevel\":11.052305221558,\"health\":85,\"color2\":0,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"modDial\":-1,\"modHydrolic\":-1,\"pearlescentColor\":0,\"modLivery\":-1,\"modDashboard\":-1,\"wheelColor\":0,\"modSpeakers\":-1,\"color1\":0,\"modBackWheels\":-1,\"modBrakes\":-1,\"modArchCover\":-1,\"modHood\":-1}'),
('steam:11000010d6c30cb', 1, 'OJB 149', '{\"modAerials\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"dirtLevel\":0.22951813042164,\"modTrimA\":-1,\"color2\":0,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"plate\":\"OJB 149 \",\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modFender\":-1,\"modArmor\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":-1590337689,\"color1\":3,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"pearlescentColor\":18,\"modShifterLeavers\":-1,\"modSeats\":-1,\"modDial\":-1,\"windowTint\":-1,\"plateIndex\":0,\"modHorns\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modSmokeEnabled\":1,\"modFrontWheels\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modRearBumper\":-1,\"modLivery\":-1,\"modExhaust\":-1,\"health\":1000,\"modSpeakers\":-1,\"wheels\":4}'),
('steam:110000116a28200', 1, 'PDG 106', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"PDG 106 \",\"modDoorSpeaker\":-1,\"health\":703,\"modSeats\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"plateIndex\":4,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modBrakes\":-1,\"modArchCover\":-1,\"modAPlate\":-1,\"wheelColor\":80,\"modTrimA\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modTank\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"pearlescentColor\":0,\"modVanityPlate\":-1,\"dirtLevel\":9.0479536056518,\"modWindows\":-1,\"modHorns\":-1,\"modFrame\":-1,\"wheels\":6,\"modGrille\":-1,\"color1\":32,\"model\":2047166283,\"color2\":32,\"modTrimB\":-1,\"modSpeakers\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1}'),
('steam:11000010ede2397', 1, 'PEG 450', '{\"modStruts\":-1,\"modHorns\":-1,\"modEngine\":3,\"modArchCover\":-1,\"modTrimA\":-1,\"modBrakes\":2,\"modArmor\":4,\"modRightFender\":-1,\"plate\":\"PEG 450 \",\"modWindows\":-1,\"modAirFilter\":-1,\"modExhaust\":2,\"modHydrolic\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":134,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modFender\":-1,\"plateIndex\":3,\"neonEnabled\":[1,1,1,1],\"modTrimB\":-1,\"windowTint\":1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"health\":986,\"modRearBumper\":-1,\"dirtLevel\":11.68270111084,\"modLivery\":-1,\"wheels\":1,\"color1\":119,\"modSpoilers\":0,\"modTurbo\":false,\"modAerials\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpeakers\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modDashboard\":-1,\"neonColor\":[50,255,155],\"modSuspension\":2,\"modTank\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modFrontBumper\":0,\"modTransmission\":2,\"modHood\":0,\"model\":784565758,\"modDial\":-1,\"modPlateHolder\":-1,\"modXenon\":1,\"color2\":119,\"modRoof\":-1,\"modFrontWheels\":-1,\"modFrame\":0,\"wheelColor\":156}'),
('steam:11000011ad5e46e', 1, 'PIO 377', '{\"modSmokeEnabled\":false,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":8.3819007873536,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"wheelColor\":156,\"modWindows\":-1,\"modHydrolic\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":5,\"modDashboard\":-1,\"color1\":1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"plate\":\"PIO 377 \",\"health\":1000,\"modTrimA\":-1,\"modGrille\":-1,\"wheels\":6,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":38,\"windowTint\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"model\":390201602,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modRearBumper\":-1,\"modAerials\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:1100001325b7a9b', 1, 'PSV 219', '{\"modSeats\":-1,\"modEngine\":3,\"wheelColor\":156,\"modShifterLeavers\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modArmor\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modLivery\":-1,\"modSpeakers\":-1,\"modXenon\":false,\"color1\":15,\"modTank\":-1,\"modTrimA\":-1,\"color2\":0,\"modBackWheels\":-1,\"modRightFender\":-1,\"model\":-255678177,\"modHood\":-1,\"modSuspension\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modExhaust\":-1,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modHorns\":-1,\"modBrakes\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"dirtLevel\":1.2422267198562,\"modVanityPlate\":-1,\"windowTint\":-1,\"modFrontBumper\":-1,\"wheels\":6,\"health\":973,\"pearlescentColor\":18,\"neonColor\":[255,0,255],\"modSmokeEnabled\":1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"plate\":\"PSV 219 \",\"modTrunk\":-1,\"modSpoilers\":-1,\"modStruts\":-1}'),
('steam:1100001325b7a9b', 1, 'PUI 480', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[0,150,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":73,\"modRightFender\":-1,\"neonColor\":[0,255,0],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"PUI 480 \",\"modSeats\":-1,\"modSteeringWheel\":0,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":141,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":555,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":7,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":10,\"modEngine\":3,\"color2\":111,\"windowTint\":1,\"modFrame\":-1,\"modArmor\":4,\"model\":-204311418,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":0.25674757361412,\"wheelColor\":0,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":0,\"modLivery\":-1,\"modSideSkirt\":-1}');
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:11000010cb4181f', 1, 'QDR 944', '{\"modAerials\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modRoof\":0,\"modTrimA\":-1,\"color2\":40,\"modStruts\":-1,\"modArchCover\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modArmor\":4,\"modSpoilers\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modShifterLeavers\":-1,\"windowTint\":1,\"tyreSmokeColor\":[255,255,255],\"model\":-1829802492,\"color1\":149,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modTank\":-1,\"pearlescentColor\":29,\"modHorns\":10,\"modSeats\":-1,\"modDial\":-1,\"plate\":\"QDR 944 \",\"modHood\":-1,\"dirtLevel\":5.0955038070678,\"modPlateHolder\":-1,\"modFrontBumper\":4,\"plateIndex\":1,\"modFrontWheels\":15,\"modXenon\":1,\"modAPlate\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":3,\"modWindows\":-1,\"modTurbo\":false,\"wheelColor\":15,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"health\":929,\"modTrimB\":-1,\"modEngine\":3,\"modTransmission\":2,\"modSmokeEnabled\":1,\"modRearBumper\":0,\"modFender\":-1,\"modExhaust\":2,\"wheels\":7,\"modDashboard\":-1,\"neonColor\":[0,0,128]}'),
('steam:11000013613fa78', 1, 'QPX 924', '{\"modTrunk\":-1,\"modSpeakers\":-1,\"wheels\":6,\"dirtLevel\":6.0000138282776,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modHood\":-1,\"color1\":112,\"modAPlate\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"color2\":112,\"modSpoilers\":-1,\"modRightFender\":-1,\"modSeats\":-1,\"modWindows\":-1,\"plate\":\"QPX 924\",\"modEngine\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modTank\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modStruts\":-1,\"model\":-1639924411,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"modXenon\":false,\"wheelColor\":156,\"modDial\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"pearlescentColor\":134,\"modEngineBlock\":-1,\"health\":1000}'),
('steam:1100001173d36f1', 1, 'QWP 925', '{\"windowTint\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":111,\"modDoorSpeaker\":-1,\"color1\":4,\"modSuspension\":-1,\"modExhaust\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"modXenon\":false,\"dirtLevel\":7.0000033378602,\"color2\":4,\"modSeats\":-1,\"modWindows\":-1,\"health\":1000,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modRoof\":-1,\"wheels\":5,\"neonColor\":[255,0,255],\"modTank\":-1,\"modDial\":-1,\"modAerials\":-1,\"modFrontBumper\":-1,\"modStruts\":-1,\"plateIndex\":0,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modTrimB\":-1,\"modFrame\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"plate\":\"QWP 925\",\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"model\":-1809822327,\"wheelColor\":156,\"modGrille\":-1,\"modRearBumper\":-1}'),
('steam:11000011acec85a', 1, 'QWX 681', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":1878062887,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modRoof\":-1,\"color2\":0,\"wheels\":3,\"modEngine\":1,\"wheelColor\":7,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":6.907919883728,\"health\":997,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"color1\":0,\"modTransmission\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modHood\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"QWX 681 \",\"modFrame\":-1,\"modTank\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":2}'),
('steam:1100001167d265e', 1, 'QZM 244', '{\"modAirFilter\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modGrille\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"dirtLevel\":12.273861885071,\"modXenon\":false,\"health\":990,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modArchCover\":-1,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"wheelColor\":156,\"modFrame\":-1,\"modTank\":-1,\"modBrakes\":-1,\"pearlescentColor\":111,\"modSmokeEnabled\":false,\"modSpeakers\":-1,\"modRoof\":-1,\"plateIndex\":1,\"modStruts\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modEngine\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"modTurbo\":false,\"modHorns\":-1,\"modTransmission\":-1,\"modTrimA\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"model\":-14495224,\"modArmor\":-1,\"color2\":0,\"plate\":\"QZM 244 \",\"wheels\":2,\"modTrunk\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modEngineBlock\":-1,\"color1\":6,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modLivery\":-1,\"modRightFender\":-1}'),
('steam:1100001061d0cb1', 1, 'RBP 523', '{\"plateIndex\":3,\"color1\":112,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"color2\":112,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modAerials\":-1,\"modEngineBlock\":-1,\"modDial\":-1,\"modTrimB\":-1,\"model\":-188978926,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"wheels\":6,\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modBrakes\":-1,\"modFrontBumper\":-1,\"health\":1000,\"pearlescentColor\":112,\"modSpeakers\":-1,\"modArmor\":-1,\"modEngine\":-1,\"plate\":\"RBP 523 \",\"modLivery\":-1,\"modStruts\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"dirtLevel\":9.1347045898438,\"modExhaust\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":70,\"modHood\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:11000010302b529', 1, 'RFP 835', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":1000,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-1029368191,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modEngine\":-1,\"wheelColor\":0,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.12593537569046,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":134,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"RFP 835 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":134,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":0}'),
('steam:110000110c6f75a', 1, 'RND 984', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":0,\"modVanityPlate\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modHood\":-1,\"modAPlate\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":0,\"modDashboard\":-1,\"color1\":12,\"modRearBumper\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modSuspension\":-1,\"health\":755,\"modTrimA\":-1,\"modXenon\":false,\"wheels\":5,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":0,\"windowTint\":-1,\"plate\":\"RND 984 \",\"modTurbo\":false,\"model\":1458362510,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":12.373116493226,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:110000111b71726', 1, 'RPD 256', '{\"modRightFender\":2,\"modTurbo\":false,\"modExhaust\":0,\"modRearBumper\":1,\"model\":-440768424,\"tyreSmokeColor\":[255,0,0],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"RPD 256 \",\"modDoorSpeaker\":-1,\"health\":810,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":5,\"modHydrolic\":-1,\"modArmor\":4,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":1,\"modArchCover\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"modTransmission\":2,\"modSeats\":-1,\"wheelColor\":156,\"modTrimA\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modFrame\":0,\"color2\":40,\"modPlateHolder\":-1,\"modSideSkirt\":0,\"modEngine\":3,\"windowTint\":-1,\"modAPlate\":-1,\"pearlescentColor\":27,\"modSpeakers\":-1,\"dirtLevel\":10.819602012634,\"modWindows\":-1,\"modHorns\":-1,\"modSpoilers\":1,\"wheels\":4,\"modGrille\":0,\"color1\":12,\"neonColor\":[255,0,255],\"modHood\":-1,\"modTrimB\":-1,\"modOrnaments\":-1,\"modFrontWheels\":15,\"modFrontBumper\":5}'),
('steam:1100001167d265e', 0, 'RQP 359', '{\"modDashboard\":-1,\"wheels\":0,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modSideSkirt\":-1,\"modWindows\":-1,\"modBackWheels\":-1,\"model\":-566387422,\"modTurbo\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modTrimA\":-1,\"color1\":33,\"modEngineBlock\":-1,\"modTrunk\":-1,\"dirtLevel\":5.0000700950623,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"plate\":\"RQP 359\",\"modExhaust\":-1,\"modSmokeEnabled\":false,\"color2\":33,\"modHydrolic\":-1,\"health\":1000,\"modSpeakers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modTank\":-1,\"modEngine\":-1,\"pearlescentColor\":27,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modDial\":-1,\"modLivery\":-1,\"windowTint\":-1,\"modFender\":-1,\"modHood\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"wheelColor\":106,\"modPlateHolder\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false]}'),
('steam:11000013613fa78', 1, 'RTF 539', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"RTF 539 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":45,\"modTrimA\":-1,\"modDial\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":3,\"neonEnabled\":[1,1,1,1],\"model\":1813965170,\"dirtLevel\":0.29472568631172,\"health\":1000,\"color2\":3,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modEngine\":1,\"color1\":15,\"modSuspension\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modSeats\":-1,\"wheels\":7,\"modHydrolic\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"wheelColor\":156,\"neonColor\":[153,0,153],\"modSpeakers\":-1,\"pearlescentColor\":135,\"modBackWheels\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modHood\":-1}'),
('steam:11000011c0b0ace', 1, 'SCS 209', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"wheelColor\":16,\"modHood\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modXenon\":false,\"modGrille\":-1,\"modBackWheels\":-1,\"color1\":192,\"modAerials\":-1,\"pearlescentColor\":0,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"plate\":\"SCS 209 \",\"health\":439,\"modTrimA\":-1,\"modFrame\":-1,\"wheels\":6,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":224,\"windowTint\":-1,\"modArmor\":-1,\"modSteeringWheel\":-1,\"model\":1474015055,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":9.8584051132202,\"modTrimB\":-1,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000010302b529', 1, 'SGC 057', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":1000,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-1215316954,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modTrimA\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modEngine\":-1,\"wheelColor\":0,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":1.1630178689956,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"color1\":29,\"modTransmission\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"SGC 057 \",\"modFrame\":-1,\"modTank\":-1,\"color2\":29,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"pearlescentColor\":35}'),
('steam:110000119ac453f', 1, 'SGP 797', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"SGP 797 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"wheelColor\":156,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":false,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modArmor\":4,\"modTransmission\":2,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"plateIndex\":2,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"dirtLevel\":0.27422419190406,\"health\":886,\"color2\":70,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modEngine\":3,\"modTurbo\":false,\"modSuspension\":3,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modRearBumper\":-1,\"color1\":70,\"modSmokeEnabled\":1,\"wheels\":2,\"model\":117401876,\"modHydrolic\":-1,\"modFender\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modBrakes\":2,\"pearlescentColor\":0,\"modHood\":-1}'),
('steam:11000013634c728', 1, 'SOU 484', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":40,\"model\":934775262,\"neonColor\":[255,0,0],\"modAPlate\":-1,\"modAerials\":-1,\"modTrimB\":-1,\"color2\":107,\"wheels\":7,\"modEngine\":3,\"wheelColor\":156,\"modArmor\":0,\"modSmokeEnabled\":1,\"modGrille\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"color1\":28,\"modTransmission\":2,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modBrakes\":2,\"modHood\":-1,\"modDial\":-1,\"dirtLevel\":4.1905808448792,\"plate\":\"SOU 484 \",\"modRoof\":-1,\"modTank\":-1,\"health\":156,\"modDashboard\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modXenon\":1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":132}'),
('steam:11000011ad5e46e', 1, 'SOX 831', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"SOX 831 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modFrontWheels\":20,\"modHorns\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modArmor\":4,\"modGrille\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"plateIndex\":4,\"neonEnabled\":[1,1,1,1],\"modArchCover\":-1,\"dirtLevel\":0.11134449392558,\"health\":999,\"color2\":111,\"modPlateHolder\":-1,\"neonColor\":[255,255,255],\"modEngine\":3,\"modEngineBlock\":-1,\"modSuspension\":3,\"modDial\":-1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":2,\"modRearBumper\":-1,\"color1\":111,\"modSmokeEnabled\":1,\"modTurbo\":false,\"wheels\":3,\"modSeats\":-1,\"modHydrolic\":-1,\"modLivery\":-1,\"wheelColor\":156,\"model\":-1961627517,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modBrakes\":2,\"pearlescentColor\":111,\"modHood\":-1}'),
('steam:110000132daf29b', 1, 'SPR 318', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"SPR 318 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"wheelColor\":111,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modRoof\":-1,\"windowTint\":-1,\"model\":-893578776,\"modSteeringWheel\":-1,\"wheels\":6,\"modArmor\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":0,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"dirtLevel\":8.589108467102,\"health\":937,\"color2\":18,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":6,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modTurbo\":false,\"modHydrolic\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"modFender\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"pearlescentColor\":111,\"modBackWheels\":-1,\"modBrakes\":-1,\"modAirFilter\":-1,\"modHood\":-1}'),
('steam:11000010bb4b9f1', 1, 'SRG 377', '{\"plate\":\"SRG 377 \",\"modGrille\":-1,\"modVanityPlate\":-1,\"dirtLevel\":0.27513015270234,\"modTrimA\":-1,\"color2\":0,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":736902334,\"color1\":33,\"modAPlate\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modTank\":-1,\"pearlescentColor\":38,\"modSeats\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modSmokeEnabled\":1,\"plateIndex\":0,\"modFrontWheels\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modRoof\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modWindows\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"health\":997,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"wheels\":0,\"modFrontBumper\":-1,\"modAerials\":-1}'),
('steam:11000011acec85a', 1, 'SUA 252', '{\"modTrimA\":-1,\"pearlescentColor\":81,\"modTrunk\":-1,\"modTrimB\":-1,\"color1\":38,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":1,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":0,\"modTransmission\":2,\"plateIndex\":1,\"modFender\":-1,\"modVanityPlate\":-1,\"model\":-2095439403,\"modAPlate\":-1,\"modPlateHolder\":-1,\"dirtLevel\":2.8319702148438,\"modSpoilers\":1,\"modAerials\":-1,\"modFrontWheels\":6,\"neonEnabled\":[1,1,1,1],\"tyreSmokeColor\":[41,36,33],\"modGrille\":0,\"modShifterLeavers\":-1,\"health\":981,\"modSideSkirt\":0,\"modWindows\":-1,\"wheels\":2,\"modBrakes\":2,\"modDoorSpeaker\":-1,\"wheelColor\":12,\"modBackWheels\":-1,\"modRoof\":-1,\"plate\":\"SUA 252 \",\"modRightFender\":-1,\"modOrnaments\":-1,\"modExhaust\":0,\"color2\":2,\"modSmokeEnabled\":1,\"modAirFilter\":-1,\"modEngineBlock\":-1,\"modEngine\":3,\"modFrontBumper\":1,\"modHydrolic\":-1,\"modHorns\":1,\"neonColor\":[255,165,0],\"modDashboard\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modTurbo\":false,\"modArchCover\":-1,\"modXenon\":false,\"modTank\":-1,\"modFrame\":-1,\"modRearBumper\":-1,\"modStruts\":-1}'),
('steam:11000011ad5e46e', 1, 'SVC 455', '{\"modSeats\":-1,\"modEngine\":3,\"wheelColor\":156,\"modShifterLeavers\":-1,\"modRoof\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"wheels\":7,\"plateIndex\":4,\"modEngineBlock\":-1,\"modArmor\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modXenon\":1,\"color1\":111,\"modSpeakers\":-1,\"modTank\":-1,\"color2\":111,\"modBackWheels\":-1,\"modSpoilers\":-1,\"model\":934775262,\"modHood\":-1,\"modSuspension\":3,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"health\":988,\"windowTint\":1,\"modDial\":-1,\"modHorns\":-1,\"neonColor\":[255,255,255],\"modSideSkirt\":-1,\"modTurbo\":false,\"modRightFender\":-1,\"modAirFilter\":-1,\"modAPlate\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"dirtLevel\":0.78926879167556,\"modVanityPlate\":-1,\"modBrakes\":2,\"modFrontBumper\":-1,\"modWindows\":-1,\"modTrunk\":-1,\"pearlescentColor\":15,\"modFrame\":-1,\"modSmokeEnabled\":1,\"modAerials\":-1,\"modTransmission\":2,\"plate\":\"SVC 455 \",\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modStruts\":-1}'),
('steam:11000010c789c31', 1, 'TDR 050', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"TDR 050 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modDial\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"wheels\":7,\"modArmor\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modDoorSpeaker\":-1,\"plateIndex\":0,\"modTrimB\":-1,\"color1\":3,\"dirtLevel\":8.2296571731568,\"health\":976,\"color2\":3,\"modPlateHolder\":-1,\"modStruts\":-1,\"modEngine\":1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modHydrolic\":-1,\"modGrille\":-1,\"modSeats\":-1,\"wheelColor\":156,\"modLivery\":-1,\"model\":234062309,\"modFender\":-1,\"modSpeakers\":-1,\"pearlescentColor\":5,\"modBackWheels\":-1,\"modBrakes\":-1,\"modHood\":-1,\"modAirFilter\":-1}'),
('steam:110000111a58cab', 1, 'TLX 460', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"TLX 460 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"wheelColor\":156,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":0,\"modArmor\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"plateIndex\":2,\"modFender\":-1,\"neonColor\":[255,0,255],\"dirtLevel\":0.034328412264586,\"health\":930,\"color2\":31,\"modPlateHolder\":-1,\"model\":-910466076,\"modEngine\":1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"color1\":21,\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modLivery\":-1,\"modDial\":-1,\"pearlescentColor\":55,\"modSpeakers\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modHood\":-1}'),
('steam:11000010e555ae1', 1, 'TSH 168', '{\"health\":1000,\"modSeats\":-1,\"pearlescentColor\":0,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"model\":333512375,\"modDial\":-1,\"modBrakes\":-1,\"modArmor\":-1,\"modWindows\":-1,\"modStruts\":-1,\"modLivery\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"dirtLevel\":11.000032424926,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"plate\":\"TSH 168\",\"windowTint\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"wheels\":6,\"modAerials\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modFender\":-1,\"wheelColor\":0,\"color2\":0,\"modOrnaments\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modTrunk\":-1,\"modTransmission\":-1,\"color1\":0,\"modTank\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modFrame\":-1}'),
('steam:11000011b8aadb1', 1, 'TTG 812', '{\"tyreSmokeColor\":[255,255,255],\"color2\":145,\"wheels\":1,\"modFrontWheels\":-1,\"modDial\":-1,\"model\":-1790546981,\"modHood\":-1,\"modFrame\":-1,\"pearlescentColor\":131,\"modArmor\":-1,\"modAerials\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"dirtLevel\":0.26628342270852,\"modRoof\":-1,\"windowTint\":1,\"modTank\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"health\":1000,\"modSuspension\":-1,\"modEngine\":1,\"modVanityPlate\":-1,\"modLivery\":-1,\"modTrunk\":1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"modArchCover\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modWindows\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"wheelColor\":145,\"plateIndex\":1,\"modOrnaments\":-1,\"modAPlate\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modHydrolic\":-1,\"plate\":\"TTG 812 \",\"modTrimB\":-1,\"modFender\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"color1\":145,\"modTransmission\":-1}'),
('steam:11000011ad5e46e', 1, 'TWM 328', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":1,\"modSideSkirt\":1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":1000,\"modTrunk\":-1,\"modXenon\":1,\"modDashboard\":-1,\"model\":-1485523546,\"neonColor\":[255,255,255],\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"color2\":111,\"wheels\":7,\"modEngine\":3,\"wheelColor\":156,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":0.17759077250958,\"modHood\":0,\"modEngineBlock\":-1,\"modFrontWheels\":17,\"modWindows\":-1,\"color1\":111,\"modTransmission\":2,\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modArchCover\":-1,\"modFender\":-1,\"windowTint\":1,\"plate\":\"TWM 328 \",\"modSteeringWheel\":-1,\"modDial\":-1,\"modGrille\":-1,\"modSpoilers\":0,\"modHorns\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modTank\":-1,\"modBrakes\":2,\"modRoof\":-1,\"modSeats\":-1,\"plateIndex\":3,\"modRearBumper\":0,\"modSuspension\":3,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":111}'),
('steam:11000010ede2397', 1, 'TWP 345', '{\"windowTint\":1,\"modRightFender\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"model\":934775262,\"modLivery\":-1,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"plate\":\"TWP 345 \",\"modFrontWheels\":38,\"modPlateHolder\":-1,\"wheels\":7,\"modFrame\":-1,\"modArmor\":4,\"modAerials\":-1,\"neonColor\":[0,0,255],\"modSpoilers\":-1,\"wheelColor\":21,\"modAirFilter\":-1,\"dirtLevel\":2.1849036216736,\"modRearBumper\":-1,\"plateIndex\":1,\"modFender\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":1,\"color2\":107,\"modBackWheels\":-1,\"modRoof\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":3,\"modDashboard\":-1,\"modTrunk\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modHorns\":-1,\"modBrakes\":2,\"modTransmission\":2,\"color1\":12,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"health\":996,\"modEngine\":3,\"modWindows\":-1,\"modTurbo\":false,\"pearlescentColor\":15,\"modGrille\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"modXenon\":1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modSideSkirt\":-1}'),
('steam:110000113248a42', 1, 'UBH 269', '{\"modArchCover\":-1,\"modAPlate\":-1,\"plateIndex\":0,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modGrille\":-1,\"modTransmission\":-1,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modTank\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"dirtLevel\":5.6047296524048,\"modWindows\":-1,\"color2\":0,\"modPlateHolder\":-1,\"modAerials\":-1,\"modRearBumper\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"modDial\":-1,\"model\":1458362510,\"pearlescentColor\":0,\"modHorns\":-1,\"plate\":\"UBH 269 \",\"modSideSkirt\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modSeats\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":5,\"modHydrolic\":-1,\"modBrakes\":-1,\"modEngine\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"wheelColor\":156,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modRoof\":-1,\"modArmor\":-1,\"modLivery\":-1,\"modFrame\":-1,\"health\":983,\"windowTint\":-1,\"color1\":64,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"modXenon\":false}'),
('steam:110000111b71726', 1, 'UHS 438', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":0,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"UHS 438 \",\"modDoorSpeaker\":-1,\"wheels\":0,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":4,\"modDial\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"health\":972,\"modAPlate\":-1,\"wheelColor\":0,\"modTrimA\":-1,\"modFrontBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modSuspension\":4,\"modTrunk\":-1,\"plateIndex\":0,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"color2\":120,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"windowTint\":1,\"modArchCover\":-1,\"pearlescentColor\":13,\"modOrnaments\":-1,\"dirtLevel\":2.641128540039,\"modSpoilers\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modTransmission\":2,\"modGrille\":-1,\"color1\":12,\"modFrame\":-1,\"model\":-2107990196,\"modTrimB\":-1,\"modTank\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1}'),
('steam:110000111b71726', 1, 'UJS 085', '{\"modAerials\":-1,\"model\":1131912276,\"modVanityPlate\":-1,\"dirtLevel\":7.7920227050782,\"modTrimA\":-1,\"color2\":0,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modArmor\":-1,\"plate\":\"UJS 085 \",\"modFender\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":4,\"color1\":7,\"modBrakes\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modSmokeEnabled\":1,\"pearlescentColor\":111,\"modSeats\":-1,\"modDial\":-1,\"modHood\":-1,\"modGrille\":-1,\"modTank\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"modAPlate\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modShifterLeavers\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modRoof\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"wheels\":6,\"modFrame\":-1,\"health\":1000}'),
('steam:11000011acec85a', 1, 'UOJ 181', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":86520421,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"windowTint\":-1,\"modVanityPlate\":-1,\"wheels\":6,\"modEngine\":1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":6.438639163971,\"modEngineBlock\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"color1\":1,\"modTransmission\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"plate\":\"UOJ 181 \",\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modFrame\":-1,\"modTank\":-1,\"health\":660,\"modBackWheels\":-1,\"modSeats\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"color2\":38,\"modHydrolic\":-1,\"modRoof\":-1,\"pearlescentColor\":5}'),
('steam:11000010d6c30cb', 1, 'UQM 561', '{\"modDoorSpeaker\":-1,\"dirtLevel\":9.3852109909058,\"wheels\":0,\"plate\":\"UQM 561 \",\"modArmor\":4,\"modBackWheels\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"model\":2046572318,\"pearlescentColor\":35,\"modTrunk\":-1,\"modGrille\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"modSeats\":-1,\"modShifterLeavers\":-1,\"modRoof\":-1,\"modTank\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modSmokeEnabled\":1,\"color2\":43,\"modPlateHolder\":-1,\"modEngine\":3,\"modOrnaments\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTransmission\":2,\"modFrontBumper\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"plateIndex\":1,\"modRightFender\":-1,\"modVanityPlate\":-1,\"health\":1000,\"modDashboard\":-1,\"wheelColor\":156,\"modSpeakers\":-1,\"modXenon\":1,\"modAerials\":-1,\"color1\":43,\"modSpoilers\":-1,\"windowTint\":1,\"modBrakes\":2,\"modTurbo\":false,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255]}'),
('steam:11000011c0b0ace', 1, 'USM 374', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"health\":791,\"modTrunk\":-1,\"modXenon\":false,\"modDashboard\":-1,\"model\":1813965170,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"modVanityPlate\":-1,\"color2\":2,\"wheels\":7,\"modEngine\":1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.01424385048449,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modFrontWheels\":-1,\"color1\":2,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modBackWheels\":-1,\"modHood\":-1,\"windowTint\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"plate\":\"USM 374 \",\"modFender\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modRoof\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":7}'),
('steam:11000010bb4b9f1', 1, 'UWB 543', '{\"plate\":\"UWB 543 \",\"modGrille\":-1,\"modVanityPlate\":-1,\"dirtLevel\":6.3155388832092,\"modTrimA\":-1,\"color2\":132,\"modStruts\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modDashboard\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":11251904,\"color1\":132,\"modAPlate\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modTank\":-1,\"pearlescentColor\":132,\"modSeats\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"modFrontWheels\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modRoof\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modWindows\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"health\":992,\"modTrimB\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"wheels\":6,\"modFrontBumper\":-1,\"modAerials\":-1}'),
('steam:11000013613fa78', 1, 'UWY 055', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modXenon\":1,\"modHorns\":44,\"model\":-1834414294,\"neonColor\":[255,165,0],\"modAPlate\":-1,\"health\":930,\"modAerials\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modEngine\":3,\"wheelColor\":252,\"modArmor\":4,\"modSmokeEnabled\":1,\"modGrille\":-1,\"modSpoilers\":-1,\"color2\":0,\"modEngineBlock\":-1,\"modBrakes\":2,\"color1\":15,\"modTransmission\":2,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modFender\":-1,\"modShifterLeavers\":-1,\"windowTint\":1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modHood\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"plate\":\"UWY 055 \",\"modFrame\":-1,\"modTank\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"dirtLevel\":1.5620385408402,\"modHydrolic\":-1,\"modRoof\":-1,\"pearlescentColor\":156}'),
('steam:11000010dd9c7d6', 1, 'UXA 250', '{\"modShifterLeavers\":-1,\"modAerials\":-1,\"modXenon\":1,\"health\":995,\"dirtLevel\":9.091462135315,\"modBrakes\":2,\"neonEnabled\":[1,1,1,1],\"windowTint\":1,\"modFrontBumper\":1,\"modBackWheels\":-1,\"modSideSkirt\":-1,\"wheels\":1,\"neonColor\":[255,0,0],\"wheelColor\":88,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modSpoilers\":0,\"pearlescentColor\":81,\"modTransmission\":2,\"color1\":132,\"modSeats\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modTurbo\":false,\"modArmor\":4,\"plate\":\"UXA 250 \",\"modTrimA\":9,\"modHorns\":45,\"tyreSmokeColor\":[255,0,0],\"model\":223258115,\"color2\":132,\"modHydrolic\":1,\"modTrimB\":-1,\"modPlateHolder\":12,\"modSuspension\":3,\"modGrille\":-1,\"modLivery\":6,\"modEngine\":3,\"modHood\":3,\"modOrnaments\":31,\"modSpeakers\":-1,\"modFender\":-1,\"modRightFender\":-1,\"modSteeringWheel\":14,\"modEngineBlock\":0,\"modWindows\":-1,\"modTank\":-1,\"modFrame\":0,\"modSmokeEnabled\":1,\"modArchCover\":-1,\"modRoof\":-1,\"modAirFilter\":1,\"modExhaust\":1,\"modStruts\":-1,\"modFrontWheels\":-1,\"modTrunk\":2}'),
('steam:11000010bb4b9f1', 1, 'UYM 483', '{\"tyreSmokeColor\":[255,255,255],\"color2\":0,\"modEngine\":1,\"modFrontWheels\":-1,\"modDial\":-1,\"model\":-1485523546,\"modHood\":-1,\"wheelColor\":156,\"pearlescentColor\":156,\"modAPlate\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"dirtLevel\":7.774296760559,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modTank\":-1,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"health\":972,\"modWindows\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modArchCover\":-1,\"wheels\":0,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modTurbo\":false,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modStruts\":-1,\"windowTint\":-1,\"modLivery\":-1,\"plateIndex\":0,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modBrakes\":-1,\"plate\":\"UYM 483 \",\"modTrimB\":-1,\"modFender\":-1,\"modTrimA\":-1,\"modXenon\":false,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"color1\":0,\"modTransmission\":-1}'),
('society:police', 1, 'VCG 707', '{\"modBackWheels\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"dirtLevel\":7.0000071525574,\"modFender\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":false,\"modTurbo\":false,\"color1\":92,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modShifterLeavers\":-1,\"modHorns\":-1,\"color2\":111,\"modSeats\":-1,\"model\":-186537451,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modTank\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"wheelColor\":156,\"health\":1000,\"modTrimB\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modWindows\":-1,\"modRearBumper\":-1,\"pearlescentColor\":3,\"modHood\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"plateIndex\":0,\"plate\":\"VCG 707\",\"modOrnaments\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"wheels\":6,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modSpoilers\":-1,\"modXenon\":false}'),
('steam:1100001061d0cb1', 1, 'VFG 232', '{\"plateIndex\":3,\"color1\":2,\"pearlescentColor\":7,\"modOrnaments\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"color2\":2,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modStruts\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modSmokeEnabled\":1,\"modSpoilers\":-1,\"model\":-346924611,\"health\":1000,\"modFender\":-1,\"modAirFilter\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"plate\":\"VFG 232 \",\"modRearBumper\":-1,\"modLivery\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"wheels\":3,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modExhaust\":-1,\"modBackWheels\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"wheelColor\":156,\"modTrunk\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":7.2789068222046,\"modSideSkirt\":-1,\"modHood\":-1,\"modGrille\":-1,\"modHydrolic\":-1}'),
('steam:11000011acec85a', 1, 'VHS 280', '{\"modArchCover\":0,\"modStruts\":-1,\"modFrontBumper\":4,\"modTrimB\":0,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":3,\"modSideSkirt\":1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":7,\"modLivery\":7,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":1,\"modHorns\":0,\"model\":-295689028,\"neonColor\":[255,0,255],\"modEngineBlock\":2,\"modAerials\":0,\"modRoof\":0,\"color2\":111,\"wheels\":2,\"modEngine\":1,\"wheelColor\":135,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.20709925889968,\"health\":693,\"modTrimA\":0,\"modFrontWheels\":11,\"modWindows\":-1,\"color1\":111,\"modTransmission\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,0,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modBrakes\":2,\"windowTint\":1,\"modSpoilers\":0,\"modSteeringWheel\":14,\"modDashboard\":3,\"modHood\":8,\"modDial\":2,\"modGrille\":-1,\"plate\":\"VHS 280 \",\"modFrame\":4,\"modTank\":-1,\"modXenon\":1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"plateIndex\":1,\"modRearBumper\":3,\"modSeats\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":70}'),
('steam:11000011ad5e46e', 1, 'VJJ 443', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"VJJ 443 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"wheelColor\":0,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":0,\"modArmor\":-1,\"model\":-662904049,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"modFrontWheels\":-1,\"modGrille\":-1,\"dirtLevel\":4.3904194831848,\"health\":998,\"color2\":111,\"modPlateHolder\":-1,\"modExhaust\":-1,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"color1\":111,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modDashboard\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modLivery\":-1,\"modDial\":-1,\"modFender\":-1,\"modHood\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"pearlescentColor\":74,\"modSeats\":-1}'),
('steam:110000117d510a6', 1, 'VMX 237', '{\"modSideSkirt\":-1,\"dirtLevel\":6.2661952972412,\"modHorns\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modTank\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"modOrnaments\":-1,\"modXenon\":false,\"wheels\":6,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modHood\":-1,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modSmokeEnabled\":1,\"color2\":0,\"pearlescentColor\":0,\"modExhaust\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modLivery\":-1,\"modTrimA\":-1,\"health\":270,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"plate\":\"VMX 237 \",\"modWindows\":-1,\"wheelColor\":0,\"model\":333512375,\"modPlateHolder\":-1,\"modFender\":-1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"color1\":0,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modRoof\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modAerials\":-1,\"modEngine\":-1,\"modAirFilter\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"modArmor\":-1}');
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`) VALUES
('steam:1100001325b7a9b', 1, 'VSK 892', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[0,0,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":4,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"VSK 892 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":83,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":730,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":6,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modHorns\":10,\"modEngine\":3,\"color2\":132,\"windowTint\":2,\"modFrame\":-1,\"modArmor\":4,\"model\":-1606187161,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":5.8925552368164,\"wheelColor\":132,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000013613fa78', 1, 'VTJ 939', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":38,\"model\":1813965170,\"neonColor\":[255,255,0],\"modAPlate\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"color2\":4,\"wheels\":7,\"modEngine\":3,\"wheelColor\":156,\"modArmor\":4,\"modSmokeEnabled\":1,\"dirtLevel\":7.8686599731446,\"modFender\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modXenon\":1,\"color1\":15,\"modTransmission\":2,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,0],\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":1000,\"modDashboard\":-1,\"modArchCover\":-1,\"modSteeringWheel\":-1,\"plate\":\"VTJ 939 \",\"modSideSkirt\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":2,\"modHydrolic\":-1,\"modSeats\":-1,\"plateIndex\":3,\"modRearBumper\":-1,\"modFrame\":-1,\"windowTint\":1,\"modBackWheels\":-1,\"pearlescentColor\":89}'),
('steam:11000010cb4181f', 1, 'VTM 822', '{\"modTrimA\":-1,\"pearlescentColor\":158,\"modTrunk\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[0,0,128],\"modDial\":-1,\"modArmor\":-1,\"windowTint\":1,\"modSuspension\":4,\"modTransmission\":2,\"plateIndex\":1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"model\":-204311418,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":967,\"modSmokeEnabled\":1,\"modAerials\":-1,\"wheels\":7,\"modSideSkirt\":0,\"modDoorSpeaker\":-1,\"wheelColor\":0,\"modWindows\":-1,\"modPlateHolder\":-1,\"plate\":\"VTM 822 \",\"modHydrolic\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"modBrakes\":2,\"modAirFilter\":-1,\"color2\":73,\"modEngine\":3,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modFender\":0,\"modXenon\":1,\"modTurbo\":false,\"color1\":23,\"modSpoilers\":0,\"dirtLevel\":4.3804035186768,\"modRightFender\":-1,\"modTank\":-1,\"modFrame\":-1,\"modHood\":-1,\"modStruts\":-1}'),
('steam:11000011c7b5be5', 1, 'VTU 342', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,0],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"VTU 342 \",\"modDoorSpeaker\":-1,\"health\":979,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":4,\"modDial\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modTransmission\":2,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"plateIndex\":1,\"modAPlate\":-1,\"wheelColor\":39,\"modTrimA\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":3,\"modSeats\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"color2\":39,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":3,\"windowTint\":1,\"neonColor\":[255,0,0],\"pearlescentColor\":2,\"modLivery\":-1,\"dirtLevel\":1.5367068052292,\"modWindows\":-1,\"modHorns\":0,\"modFrame\":-1,\"wheels\":0,\"modGrille\":-1,\"color1\":39,\"modTank\":-1,\"model\":683047626,\"modTrimB\":-1,\"modSpeakers\":-1,\"modFrontWheels\":5,\"modFrontBumper\":-1}'),
('steam:11000010dd9c7d6', 1, 'VTZ 072', '{\"modTrimA\":-1,\"pearlescentColor\":132,\"modTrunk\":-1,\"modTrimB\":-1,\"color1\":132,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":3,\"modTransmission\":2,\"plateIndex\":1,\"modFender\":-1,\"modVanityPlate\":-1,\"model\":1813965170,\"modAPlate\":-1,\"neonColor\":[255,255,255],\"modRoof\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modSpoilers\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":958,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":156,\"modWindows\":-1,\"wheels\":7,\"plate\":\"VTZ 072 \",\"modBackWheels\":-1,\"modOrnaments\":-1,\"dirtLevel\":0.60124969482422,\"modSmokeEnabled\":1,\"modBrakes\":2,\"modAirFilter\":-1,\"color2\":132,\"modEngine\":3,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modHorns\":42,\"modHydrolic\":-1,\"modSeats\":-1,\"modXenon\":1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modRightFender\":-1,\"modTank\":-1,\"modFrame\":-1,\"modAerials\":-1,\"modStruts\":-1}'),
('steam:1100001325b7a9b', 1, 'VVK 985', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"VVK 985 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":6,\"modArmor\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"modArchCover\":-1,\"dirtLevel\":0.76293361186982,\"health\":855,\"color2\":0,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"color1\":0,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"wheelColor\":0,\"modHydrolic\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"model\":333512375,\"modHood\":-1,\"pearlescentColor\":0,\"modDial\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modSpeakers\":-1}'),
('steam:1100001128ff308', 1, 'VWK 849', '{\"windowTint\":-1,\"modStruts\":-1,\"modFrontWheels\":-1,\"modFender\":-1,\"modLivery\":-1,\"dirtLevel\":6.0000138282776,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modRightFender\":-1,\"pearlescentColor\":38,\"modTank\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"wheels\":6,\"modSmokeEnabled\":false,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modDial\":-1,\"modFrontBumper\":-1,\"modHydrolic\":-1,\"wheelColor\":156,\"modBrakes\":-1,\"modArchCover\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"color1\":33,\"modSpeakers\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modHorns\":-1,\"modRearBumper\":-1,\"plate\":\"VWK 849\",\"modTrimB\":-1,\"modVanityPlate\":-1,\"model\":-1523428744,\"health\":1000,\"modHood\":-1,\"modTransmission\":-1,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"plateIndex\":0,\"color2\":5,\"modSeats\":-1,\"modEngineBlock\":-1,\"modOrnaments\":-1,\"modSuspension\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modTrimA\":-1,\"modArmor\":-1}'),
('steam:110000131d556ee', 1, 'VZP 104', '{\"color2\":0,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"modStruts\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modXenon\":false,\"modEngine\":3,\"modArmor\":4,\"modTransmission\":2,\"modTrunk\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"model\":333512375,\"modTank\":-1,\"modSideSkirt\":-1,\"color1\":0,\"modAPlate\":-1,\"modSpoilers\":-1,\"plateIndex\":4,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modSteeringWheel\":-1,\"modSmokeEnabled\":1,\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"plate\":\"VZP 104 \",\"modFrontWheels\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"windowTint\":-1,\"modGrille\":-1,\"modSuspension\":3,\"modHydrolic\":-1,\"modDashboard\":-1,\"health\":434,\"modHood\":-1,\"modBrakes\":2,\"modFrontBumper\":-1,\"modRoof\":-1,\"dirtLevel\":6.8214192390442,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modBackWheels\":-1,\"modWindows\":-1,\"modTurbo\":false,\"modHorns\":-1,\"wheelColor\":0,\"modFrame\":-1,\"wheels\":6,\"modAirFilter\":-1,\"modTrimB\":-1,\"modEngineBlock\":-1,\"modDial\":-1}'),
('steam:11000011c0b0ace', 1, 'WLW 186', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-1639924411,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modVanityPlate\":-1,\"wheels\":6,\"modEngine\":1,\"wheelColor\":156,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.5482040643692,\"modTrimB\":-1,\"modArchCover\":-1,\"modDial\":-1,\"modWindows\":-1,\"color1\":112,\"modTransmission\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modXenon\":false,\"modRoof\":-1,\"modFender\":-1,\"modGrille\":-1,\"modSteeringWheel\":-1,\"color2\":112,\"windowTint\":-1,\"modSpoilers\":-1,\"modBrakes\":-1,\"plate\":\"WLW 186 \",\"modFrame\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"health\":56,\"modSeats\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"modDashboard\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":134}'),
('steam:1100001325b7a9b', 1, 'WPY 305', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":15,\"modRightFender\":-1,\"neonColor\":[255,255,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"WPY 305 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":12,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":984,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":0,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":-1,\"modEngine\":3,\"color2\":12,\"windowTint\":1,\"modFrame\":-1,\"modArmor\":-1,\"model\":934775262,\"modArchCover\":-1,\"modFrontWheels\":15,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":0.4974670112133,\"wheelColor\":111,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":3,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:110000111593e00', 1, 'WQC 532', '{\"plate\":\"WQC 532 \",\"modTrimA\":-1,\"modTransmission\":-1,\"modXenon\":false,\"model\":934775262,\"modTrimB\":-1,\"wheelColor\":156,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"modEngine\":1,\"modTurbo\":false,\"modStruts\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modArmor\":-1,\"modWindows\":-1,\"modGrille\":-1,\"color1\":15,\"plateIndex\":0,\"modRoof\":-1,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"wheels\":7,\"modPlateHolder\":-1,\"pearlescentColor\":15,\"modLivery\":-1,\"modFender\":-1,\"modSmokeEnabled\":1,\"modAPlate\":-1,\"health\":640,\"modHood\":-1,\"modShifterLeavers\":-1,\"modFrame\":-1,\"modSpoilers\":-1,\"color2\":107,\"modBrakes\":-1,\"modTrunk\":-1,\"modOrnaments\":-1,\"modDashboard\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":15.0}'),
('steam:110000111b71726', 1, 'WRC 789', '{\"modSeats\":-1,\"modEngine\":3,\"wheelColor\":128,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modFender\":-1,\"modFrontWheels\":6,\"neonEnabled\":[false,false,false,false],\"modArmor\":4,\"modFrame\":0,\"modRoof\":1,\"plateIndex\":2,\"modLivery\":-1,\"modAirFilter\":-1,\"modXenon\":1,\"color1\":128,\"modBackWheels\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modSpoilers\":0,\"model\":-349601129,\"modHood\":-1,\"modSuspension\":-1,\"modArchCover\":-1,\"color2\":12,\"modWindows\":-1,\"modBrakes\":2,\"modAerials\":-1,\"modDial\":-1,\"modHorns\":-1,\"modSpeakers\":-1,\"modSideSkirt\":0,\"modTurbo\":false,\"wheels\":1,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"dirtLevel\":0.59740698337554,\"modVanityPlate\":-1,\"windowTint\":-1,\"modFrontBumper\":-1,\"modTrimA\":-1,\"health\":999,\"pearlescentColor\":111,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"modPlateHolder\":-1,\"modTransmission\":2,\"plate\":\"WRC 789 \",\"modRightFender\":-1,\"modExhaust\":2,\"modStruts\":-1}'),
('steam:1100001325b7a9b', 1, 'WSA 786', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"pearlescentColor\":134,\"modRightFender\":-1,\"neonColor\":[0,0,255],\"modHood\":-1,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"plate\":\"WSA 786 \",\"modSeats\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modXenon\":1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":111,\"modRearBumper\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modTurbo\":false,\"health\":978,\"modTrimA\":-1,\"modStruts\":-1,\"wheels\":0,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modHorns\":10,\"modEngine\":3,\"color2\":132,\"windowTint\":2,\"modFrame\":-1,\"modArmor\":4,\"model\":2046572318,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAerials\":-1,\"dirtLevel\":0.45480379462242,\"wheelColor\":156,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:1100001325b7a9b', 1, 'WUC 525', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"WUC 525 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":7,\"modArmor\":4,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":3,\"modDashboard\":-1,\"modArchCover\":-1,\"dirtLevel\":4.873342037201,\"health\":493,\"color2\":2,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":3,\"neonColor\":[255,0,255],\"modSuspension\":3,\"color1\":12,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":2,\"modSmokeEnabled\":1,\"modTurbo\":false,\"wheelColor\":156,\"modHydrolic\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"model\":1813965170,\"modHood\":-1,\"pearlescentColor\":7,\"modDial\":-1,\"modBackWheels\":-1,\"modBrakes\":2,\"modFender\":-1,\"modSpeakers\":-1}'),
('society:police', 1, 'WVQ 037', '{\"modFender\":-1,\"color2\":2,\"modTank\":-1,\"modRoof\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"model\":-377465520,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modAirFilter\":-1,\"plate\":\"WVQ 037\",\"wheels\":0,\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modVanityPlate\":-1,\"modFrame\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"plateIndex\":0,\"modDashboard\":-1,\"modHorns\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modDial\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modSuspension\":-1,\"health\":1000,\"modBrakes\":-1,\"modEngine\":-1,\"wheelColor\":156,\"color1\":2,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"pearlescentColor\":3,\"modHood\":-1,\"modAerials\":-1,\"dirtLevel\":5.0000286102294,\"modBackWheels\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"modEngineBlock\":-1}'),
('steam:110000119ac453f', 1, 'XDW 010', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"XDW 010 \",\"modSpoilers\":0,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHorns\":45,\"modTrimA\":-1,\"wheelColor\":88,\"modFrame\":0,\"modTrunk\":4,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":1,\"modXenon\":1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modArmor\":4,\"modTransmission\":2,\"modRightFender\":-1,\"modFrontBumper\":2,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":2,\"plateIndex\":2,\"modDial\":-1,\"neonEnabled\":[1,1,1,1],\"dirtLevel\":4.9098310470582,\"health\":932,\"color2\":25,\"modPlateHolder\":6,\"neonColor\":[0,0,255],\"modEngine\":3,\"modTurbo\":false,\"modSuspension\":0,\"modEngineBlock\":3,\"tyreSmokeColor\":[0,0,255],\"modGrille\":-1,\"modRearBumper\":-1,\"color1\":70,\"modSmokeEnabled\":1,\"wheels\":1,\"model\":223258115,\"modHydrolic\":-1,\"modFender\":-1,\"modLivery\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modBackWheels\":-1,\"modBrakes\":2,\"pearlescentColor\":132,\"modHood\":3}'),
('steam:1100001325b7a9b', 1, 'XFH 251', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"XFH 251 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":6,\"modArmor\":-1,\"modFrontWheels\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":4,\"modDashboard\":-1,\"modArchCover\":-1,\"dirtLevel\":0.07132226973772,\"health\":1000,\"color2\":224,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"color1\":192,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"wheelColor\":224,\"modHydrolic\":-1,\"modTrimB\":-1,\"modLivery\":-1,\"model\":1474015055,\"modHood\":-1,\"pearlescentColor\":0,\"modDial\":-1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modFender\":-1,\"modSpeakers\":-1}'),
('steam:11000011c0b0ace', 1, 'XSF 128', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":3,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"pearlescentColor\":70,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modSuspension\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":73,\"modFrontWheels\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"health\":998,\"modTrimA\":-1,\"modBackWheels\":-1,\"wheels\":0,\"plate\":\"XSF 128 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":5,\"windowTint\":-1,\"wheelColor\":122,\"modStruts\":-1,\"model\":-910466076,\"modArchCover\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"dirtLevel\":6.3351292610168,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:11000011acec85a', 1, 'XTK 443', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-1215316954,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"health\":838,\"color2\":111,\"wheels\":0,\"modEngine\":1,\"wheelColor\":0,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":9.6312685012818,\"modEngineBlock\":-1,\"modXenon\":false,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"color1\":12,\"modTransmission\":2,\"modWindows\":-1,\"tyreSmokeColor\":[153,0,153],\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"windowTint\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modTrimA\":-1,\"plate\":\"XTK 443 \",\"modRoof\":-1,\"modTank\":-1,\"modBrakes\":2,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"pearlescentColor\":81}'),
('steam:11000011acec85a', 1, 'XTX 755', '{\"modTrimA\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modHood\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":333512375,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modAerials\":-1,\"windowTint\":-1,\"modVanityPlate\":-1,\"wheels\":6,\"modEngine\":1,\"wheelColor\":0,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":13.869178771972,\"modEngineBlock\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"color1\":0,\"modTransmission\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"plate\":\"XTX 755 \",\"modArchCover\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modFrame\":-1,\"modTank\":-1,\"health\":584,\"modBackWheels\":-1,\"modSeats\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"color2\":0,\"modHydrolic\":-1,\"modRoof\":-1,\"pearlescentColor\":0}'),
('steam:110000108f366a1', 1, 'XXE 593', '{\"modFrame\":-1,\"modTrimB\":-1,\"modRearBumper\":-1,\"windowTint\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"health\":1000,\"pearlescentColor\":88,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"modRoof\":-1,\"color2\":88,\"modLivery\":-1,\"modDial\":-1,\"modAerials\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":88,\"modHood\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"model\":1672195559,\"modSmokeEnabled\":false,\"modTurbo\":false,\"modStruts\":-1,\"plate\":\"XXE 593 \",\"modTrunk\":-1,\"modGrille\":-1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modOrnaments\":-1,\"modTrimA\":-1,\"dirtLevel\":6.1651263237,\"modBackWheels\":-1,\"wheelColor\":156,\"wheels\":6,\"modXenon\":false,\"modSpoilers\":-1,\"modSuspension\":-1,\"modVanityPlate\":-1,\"modSteeringWheel\":-1,\"plateIndex\":3,\"modDoorSpeaker\":-1,\"modEngine\":-1}'),
('society:ambulance', 1, 'XYE 419', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"model\":2047166283,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"XYE 419 \",\"modDoorSpeaker\":-1,\"health\":1000,\"modSeats\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modBrakes\":-1,\"plateIndex\":4,\"modAPlate\":-1,\"wheelColor\":128,\"modTrimA\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"color2\":32,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"pearlescentColor\":0,\"neonColor\":[255,0,255],\"dirtLevel\":10.13579750061,\"modFrontBumper\":-1,\"modHorns\":-1,\"modTurbo\":false,\"wheels\":6,\"modGrille\":-1,\"color1\":32,\"modSpoilers\":-1,\"modSpeakers\":-1,\"modHood\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"modLivery\":-1}'),
('steam:11000011acec85a', 1, 'YAA 644', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"model\":-121446169,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modRoof\":-1,\"color2\":0,\"wheels\":3,\"modEngine\":-1,\"wheelColor\":112,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":11.660574913024,\"health\":1000,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"color1\":1,\"modTransmission\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modHood\":-1,\"modDial\":-1,\"modGrille\":-1,\"plate\":\"YAA 644 \",\"modFrame\":-1,\"modTank\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modBackWheels\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modSeats\":-1,\"modHydrolic\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":18}'),
('steam:11000010dd9c7d6', 1, 'YBX 040', '{\"modTrimA\":-1,\"pearlescentColor\":132,\"modTrunk\":-1,\"modTrimB\":-1,\"color1\":132,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modHood\":-1,\"modDial\":-1,\"modArmor\":4,\"windowTint\":1,\"modSuspension\":2,\"modTransmission\":2,\"plateIndex\":0,\"modFender\":-1,\"modVanityPlate\":-1,\"model\":1165853178,\"modAPlate\":-1,\"neonColor\":[255,255,255],\"modRoof\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[1,1,1,1],\"modSpoilers\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"health\":968,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modTurbo\":false,\"modSideSkirt\":-1,\"modDoorSpeaker\":-1,\"wheelColor\":5,\"modWindows\":-1,\"wheels\":7,\"plate\":\"YBX 040 \",\"modBackWheels\":-1,\"modOrnaments\":-1,\"dirtLevel\":9.1553478240966,\"modSmokeEnabled\":1,\"modBrakes\":2,\"modAirFilter\":-1,\"color2\":3,\"modEngine\":3,\"modFrontBumper\":-1,\"modEngineBlock\":-1,\"modHorns\":39,\"modHydrolic\":-1,\"modSeats\":-1,\"modXenon\":1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modRightFender\":-1,\"modTank\":-1,\"modFrame\":-1,\"modAerials\":-1,\"modStruts\":-1}'),
('steam:1100001325b7a9b', 1, 'YCO 367', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":0,\"modTrimB\":-1,\"modRightFender\":0,\"modPlateHolder\":-1,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"modSideSkirt\":3,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":-1432034260,\"neonColor\":[0,255,0],\"modEngineBlock\":-1,\"modAerials\":-1,\"modDial\":-1,\"color2\":142,\"wheels\":0,\"modEngine\":3,\"wheelColor\":111,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":0.087131075561046,\"modTrimA\":-1,\"modFrontWheels\":2,\"modSpeakers\":-1,\"modWindows\":-1,\"color1\":142,\"modTransmission\":2,\"modRoof\":0,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modXenon\":1,\"windowTint\":1,\"modHood\":4,\"modSteeringWheel\":-1,\"modFender\":-1,\"modHorns\":-1,\"modSpoilers\":0,\"health\":993,\"plate\":\"YCO 367 \",\"modFrame\":0,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":2,\"modSeats\":-1,\"plateIndex\":1,\"modRearBumper\":1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":88}'),
('steam:1100001167d265e', 0, 'YDD 087', '{\"modDashboard\":-1,\"wheels\":7,\"modSpoilers\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"modDoorSpeaker\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modSideSkirt\":-1,\"modWindows\":-1,\"modBackWheels\":-1,\"model\":2123327359,\"modTurbo\":false,\"modStruts\":-1,\"modTransmission\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modTrimA\":-1,\"color1\":5,\"modEngineBlock\":-1,\"modTrunk\":-1,\"dirtLevel\":7.0000400543213,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modRightFender\":-1,\"plate\":\"YDD 087\",\"modExhaust\":-1,\"modSmokeEnabled\":false,\"color2\":9,\"modHydrolic\":-1,\"health\":1000,\"modSpeakers\":-1,\"plateIndex\":0,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modAerials\":-1,\"modTank\":-1,\"modEngine\":-1,\"pearlescentColor\":5,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modGrille\":-1,\"modDial\":-1,\"modLivery\":-1,\"windowTint\":-1,\"modFender\":-1,\"modHood\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"wheelColor\":0,\"modPlateHolder\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false]}'),
('steam:1100001179c3bb7', 1, 'YEI 395', '{\"modArmor\":4,\"modExhaust\":-1,\"modAirFilter\":-1,\"wheels\":7,\"modSideSkirt\":-1,\"color2\":145,\"modBrakes\":2,\"color1\":145,\"modFrontWheels\":2,\"modRightFender\":-1,\"modHood\":-1,\"modDial\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"modWindows\":-1,\"modTrimB\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"dirtLevel\":12.57441329956,\"modArchCover\":-1,\"plate\":\"YEI 395 \",\"model\":-685276541,\"modTransmission\":2,\"neonEnabled\":[false,false,false,false],\"health\":886,\"neonColor\":[255,0,255],\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modStruts\":-1,\"modXenon\":1,\"modVanityPlate\":-1,\"windowTint\":1,\"modHorns\":-1,\"modShifterLeavers\":-1,\"modEngine\":3,\"modFrame\":-1,\"modSpeakers\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modTrimA\":-1,\"modTurbo\":false,\"modPlateHolder\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"wheelColor\":0,\"modSmokeEnabled\":1,\"modSeats\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"plateIndex\":0,\"modSuspension\":3,\"modTank\":-1,\"pearlescentColor\":111,\"modSteeringWheel\":-1}'),
('steam:110000110c6f75a', 1, 'YLI 710', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"plateIndex\":4,\"modVanityPlate\":-1,\"modTurbo\":false,\"pearlescentColor\":0,\"modArmor\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modRightFender\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"color1\":32,\"wheelColor\":160,\"modAirFilter\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modStruts\":-1,\"health\":0,\"modTrimA\":-1,\"modBackWheels\":-1,\"wheels\":6,\"plate\":\"YLI 710 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":-1,\"color2\":32,\"windowTint\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"model\":2047166283,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modDial\":-1,\"modRoof\":-1,\"modFrame\":-1,\"dirtLevel\":3.99605178833,\"modSuspension\":-1,\"modTrimB\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:110000119ac453f', 1, 'YLM 919', '{\"modAPlate\":-1,\"dirtLevel\":9.6234788894654,\"color2\":8,\"plate\":\"YLM 919 \",\"modArmor\":4,\"modBackWheels\":-1,\"modHood\":-1,\"color1\":132,\"modBrakes\":2,\"model\":2046572318,\"modWindows\":-1,\"modArchCover\":-1,\"modGrille\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"wheels\":7,\"modTrimA\":-1,\"modFender\":-1,\"modTurbo\":false,\"modStruts\":-1,\"modSideSkirt\":-1,\"modTransmission\":2,\"modRoof\":-1,\"modHydrolic\":-1,\"modLivery\":-1,\"modSuspension\":3,\"modSeats\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"modEngine\":3,\"modXenon\":false,\"modExhaust\":-1,\"modFrame\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"modRightFender\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modHorns\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":134,\"modAerials\":-1,\"health\":329,\"modShifterLeavers\":-1,\"windowTint\":1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":1,\"modFrontWheels\":10,\"modEngineBlock\":-1,\"wheelColor\":132,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"neonColor\":[255,0,255]}'),
('steam:11000011acec85a', 1, 'YMV 240', '{\"modHydrolic\":-1,\"modTank\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"plate\":\"YMV 240\",\"modLivery\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"dirtLevel\":5.0000076293946,\"modRoof\":-1,\"modSpeakers\":-1,\"plateIndex\":4,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"modWindows\":-1,\"model\":1131912276,\"modAerials\":-1,\"modBrakes\":-1,\"wheelColor\":156,\"modEngine\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"pearlescentColor\":38,\"modAPlate\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"modSuspension\":-1,\"color2\":0,\"modFender\":-1,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modHood\":-1,\"modTurbo\":false,\"tyreSmokeColor\":[255,255,255],\"modDashboard\":-1,\"color1\":29,\"modArchCover\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modGrille\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"modFrontWheels\":-1,\"health\":1000,\"modFrontBumper\":-1,\"modXenon\":false,\"wheels\":6,\"modPlateHolder\":-1,\"modFrame\":-1,\"modDoorSpeaker\":-1}'),
('steam:11000011c0b0ace', 1, 'YNG 641', '{\"modBackWheels\":-1,\"modHydrolic\":-1,\"modAerials\":-1,\"dirtLevel\":4.0000076293946,\"modFender\":-1,\"modStruts\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modAPlate\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":false,\"modTurbo\":false,\"color1\":92,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modShifterLeavers\":-1,\"modHorns\":-1,\"color2\":111,\"modSeats\":-1,\"model\":-186537451,\"modDoorSpeaker\":-1,\"modDial\":-1,\"modTank\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"wheelColor\":156,\"health\":1000,\"modTrimB\":-1,\"modFrontWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modWindows\":-1,\"modRearBumper\":-1,\"pearlescentColor\":3,\"modHood\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"plateIndex\":0,\"plate\":\"YNG 641\",\"modOrnaments\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"wheels\":6,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"modSpoilers\":-1,\"modXenon\":false}'),
('steam:11000010d6c30cb', 1, 'ZBH 502', '{\"modSmokeEnabled\":1,\"modExhaust\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,0,0],\"modPlateHolder\":-1,\"plateIndex\":1,\"modVanityPlate\":-1,\"modRearBumper\":-1,\"modStruts\":-1,\"modArmor\":4,\"modAerials\":-1,\"modHood\":-1,\"modTurbo\":false,\"modWindows\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"pearlescentColor\":70,\"modBackWheels\":-1,\"color1\":43,\"modFrontWheels\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modTrunk\":-1,\"modBrakes\":2,\"modDashboard\":-1,\"health\":878,\"modTrimA\":-1,\"modGrille\":-1,\"wheels\":0,\"plate\":\"ZBH 502 \",\"neonEnabled\":[false,false,false,false],\"modHorns\":-1,\"modEngine\":3,\"color2\":43,\"windowTint\":1,\"modXenon\":false,\"modSteeringWheel\":-1,\"model\":-910466076,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"modDial\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"dirtLevel\":2.2685372829438,\"wheelColor\":12,\"modSuspension\":3,\"modSpoilers\":-1,\"modTransmission\":2,\"modTank\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modSideSkirt\":-1}'),
('steam:110000111593e00', 1, 'ZEE 091', '{\"plate\":\"ZEE 091 \",\"modTrimA\":-1,\"modTransmission\":-1,\"modXenon\":false,\"model\":1165853178,\"wheels\":7,\"wheelColor\":5,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"windowTint\":-1,\"modEngine\":1,\"modTurbo\":false,\"modStruts\":-1,\"modSideSkirt\":-1,\"health\":530,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modGrille\":-1,\"modArmor\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"color1\":12,\"modSeats\":-1,\"modBrakes\":-1,\"modSuspension\":-1,\"plateIndex\":0,\"modTank\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"pearlescentColor\":81,\"modLivery\":-1,\"modFender\":-1,\"modAerials\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"color2\":12,\"modOrnaments\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":1,\"modDashboard\":-1,\"modArchCover\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontBumper\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":1.999007821083}'),
('steam:110000116a28200', 1, 'ZFT 524', '{\"modRightFender\":-1,\"modFrame\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modXenon\":false,\"plate\":\"ZFT 524 \",\"modDoorSpeaker\":-1,\"health\":767,\"modVanityPlate\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":-1,\"modDial\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"modRearBumper\":-1,\"modAPlate\":-1,\"wheelColor\":0,\"modTrimA\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modTank\":-1,\"plateIndex\":4,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"color2\":0,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngine\":1,\"windowTint\":-1,\"model\":333512375,\"pearlescentColor\":0,\"modWindows\":-1,\"dirtLevel\":8.338677406311,\"modSeats\":-1,\"modHorns\":-1,\"modFrontBumper\":-1,\"wheels\":6,\"modGrille\":-1,\"color1\":158,\"modTurbo\":false,\"modStruts\":-1,\"modSpeakers\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"modLivery\":-1}'),
('steam:1100001325b7a9b', 1, 'ZFX 161', '{\"modBrakes\":-1,\"modXenon\":false,\"modLivery\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modStruts\":-1,\"modTrunk\":-1,\"modDial\":-1,\"plate\":\"ZFX 161\",\"plateIndex\":4,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":0,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modSmokeEnabled\":false,\"wheels\":0,\"health\":1000,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"pearlescentColor\":6,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modSeats\":-1,\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modSpeakers\":-1,\"modHorns\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modAerials\":-1,\"color2\":0,\"modWindows\":-1,\"modTrimA\":-1,\"dirtLevel\":7.0000057220458,\"modTrimB\":-1,\"model\":-1752116803,\"modHood\":-1,\"windowTint\":-1,\"modGrille\":-1,\"modArmor\":-1,\"modFender\":-1,\"color1\":64,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1}'),
('steam:1100001325b7a9b', 1, 'ZGR 580', '{\"modArchCover\":-1,\"modStruts\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":-750481609,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modAerials\":-1,\"modDial\":-1,\"color2\":111,\"wheels\":7,\"modEngine\":-1,\"wheelColor\":224,\"modArmor\":-1,\"modSmokeEnabled\":1,\"dirtLevel\":3.5619468688964,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modWindows\":-1,\"color1\":32,\"modTransmission\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modShifterLeavers\":-1,\"modXenon\":false,\"windowTint\":-1,\"modHood\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"health\":764,\"plate\":\"ZGR 580 \",\"modFrame\":-1,\"modTank\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSeats\":-1,\"plateIndex\":4,\"modRearBumper\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modBackWheels\":-1,\"pearlescentColor\":0}'),
('steam:11000010ed15b6b', 1, 'ZKI 974', '{\"modStruts\":-1,\"modHorns\":-1,\"modEngine\":3,\"modArchCover\":-1,\"modTrimA\":-1,\"modBrakes\":2,\"modArmor\":-1,\"modDial\":-1,\"color2\":0,\"plateIndex\":4,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"modHydrolic\":-1,\"modOrnaments\":-1,\"pearlescentColor\":6,\"modSideSkirt\":-1,\"modTank\":-1,\"modSteeringWheel\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modFender\":-1,\"model\":-497997000,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"health\":953,\"windowTint\":1,\"modLivery\":-1,\"modSuspension\":-1,\"color1\":12,\"modSpoilers\":-1,\"modTurbo\":false,\"modAerials\":-1,\"tyreSmokeColor\":[41,36,33],\"modSpeakers\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"plate\":\"ZKI 974 \",\"modRearBumper\":-1,\"modSeats\":-1,\"wheels\":0,\"modFrame\":-1,\"modTrunk\":-1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modTransmission\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modPlateHolder\":-1,\"dirtLevel\":1.0469819307328,\"modTrimB\":-1,\"modRoof\":-1,\"modFrontWheels\":-1,\"modXenon\":false,\"wheelColor\":156}'),
('steam:1100001325b7a9b', 1, 'ZNO 773', '{\"modRightFender\":-1,\"modTurbo\":false,\"modExhaust\":1,\"modRearBumper\":-1,\"modTank\":-1,\"tyreSmokeColor\":[41,36,33],\"modAerials\":-1,\"modXenon\":1,\"plate\":\"ZNO 773 \",\"modDoorSpeaker\":-1,\"model\":-1372848492,\"modSeats\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modArmor\":4,\"modDial\":-1,\"modArchCover\":-1,\"modRoof\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modBrakes\":2,\"health\":938,\"modAPlate\":-1,\"wheelColor\":12,\"modTrimA\":-1,\"modFrame\":0,\"modBackWheels\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modSuspension\":3,\"modTrunk\":-1,\"plateIndex\":1,\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":12,\"modPlateHolder\":-1,\"modSideSkirt\":2,\"modEngine\":3,\"windowTint\":1,\"modAirFilter\":-1,\"pearlescentColor\":111,\"modLivery\":-1,\"dirtLevel\":3.4706122875214,\"modSpoilers\":3,\"modHorns\":-1,\"modWindows\":-1,\"wheels\":3,\"modGrille\":-1,\"color1\":12,\"modTransmission\":2,\"modHood\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modFrontWheels\":1,\"modFrontBumper\":2}'),
('steam:110000119ac453f', 1, 'ZQG 377', '{\"modOrnaments\":-1,\"modAPlate\":-1,\"plate\":\"ZQG 377 \",\"modSpoilers\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modXenon\":false,\"modSteeringWheel\":-1,\"wheels\":6,\"modArmor\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"plateIndex\":0,\"modTrimB\":-1,\"model\":86520421,\"dirtLevel\":1.1415424346924,\"health\":577,\"color2\":38,\"modPlateHolder\":-1,\"neonEnabled\":[false,false,false,false],\"modEngine\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modTurbo\":false,\"modDial\":-1,\"modHydrolic\":-1,\"pearlescentColor\":5,\"modLivery\":-1,\"modDashboard\":-1,\"wheelColor\":156,\"modSpeakers\":-1,\"color1\":1,\"modBackWheels\":-1,\"modBrakes\":-1,\"modArchCover\":-1,\"modHood\":-1}'),
('steam:11000013613fa78', 1, 'ZSO 716', '{\"plateIndex\":0,\"color1\":15,\"modBackWheels\":-1,\"modTrunk\":-1,\"modXenon\":1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"modTrimA\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,0,0],\"modAPlate\":-1,\"modAerials\":-1,\"modLivery\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"model\":-1848994066,\"modSpoilers\":4,\"neonColor\":[255,0,0],\"modTurbo\":false,\"modFrame\":-1,\"modPlateHolder\":-1,\"color2\":28,\"modDashboard\":-1,\"modGrille\":-1,\"modSuspension\":2,\"modSmokeEnabled\":1,\"modAirFilter\":-1,\"modRearBumper\":1,\"health\":1000,\"pearlescentColor\":28,\"modTrimB\":-1,\"modArmor\":4,\"modEngine\":3,\"plate\":\"ZSO 716 \",\"modFender\":-1,\"modHood\":0,\"modDoorSpeaker\":-1,\"neonEnabled\":[1,1,1,1],\"modSeats\":-1,\"wheels\":0,\"modTransmission\":-1,\"modFrontBumper\":2,\"modExhaust\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"windowTint\":1,\"wheelColor\":28,\"modArchCover\":-1,\"modWindows\":-1,\"modRoof\":-1,\"modRightFender\":-1,\"modHorns\":40,\"modBrakes\":2,\"dirtLevel\":0.66432166099548,\"modSideSkirt\":2,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1}'),
('steam:11000013491dae7', 1, 'ZWJ 983', '{\"modSideSkirt\":-1,\"dirtLevel\":8.427264213562,\"modHorns\":-1,\"modGrille\":-1,\"plate\":\"ZWJ 983 \",\"modTank\":-1,\"modSpoilers\":-1,\"modAPlate\":-1,\"plateIndex\":3,\"modDashboard\":-1,\"modOrnaments\":-1,\"pearlescentColor\":111,\"wheels\":0,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"modHood\":-1,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modStruts\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"color2\":4,\"modSmokeEnabled\":1,\"modBrakes\":-1,\"windowTint\":-1,\"modHydrolic\":-1,\"modSpeakers\":-1,\"modSuspension\":-1,\"neonColor\":[255,0,255],\"modFender\":-1,\"modPlateHolder\":-1,\"health\":976,\"modTrunk\":-1,\"modLivery\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"model\":-1372848492,\"modXenon\":false,\"modSteeringWheel\":-1,\"color1\":4,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modRightFender\":-1,\"modDial\":-1,\"modTurbo\":false,\"modAerials\":-1,\"modEngine\":1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"modArmor\":-1}');

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
(28, 'cartel', 'bonjour tout le monde', '2018-11-18 17:00:57');

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
(346, '771-1741', '531-3502', 0, '2019-03-14 23:18:35', 0);

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
(141, 'steam:11000010a1b83df', '5313502', 'Parsa');

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
(124, 'steam:1100001197619a3', '[]'),
(125, 'steam:1100001045fbd8f', '[]'),
(126, 'steam:11000010a1b83df', '[]'),
(127, 'steam:11000010b3a30a0', '[]'),
(128, 'steam:11000011685b145', '[]');

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
(5, 'narekshop', 'clip', 250);

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
(144, 'WEAPON_ADVANCEDRIFLE', 250, 'BFL 454 ', 'Fusil avancé', 'item_weapon', '1'),
(145, 'croquettes', 0, '87HSO948', 'Croquettes', 'item_standard', '0'),
(146, 'croquettes', 1, '88BDI801', 'Croquettes', 'item_standard', '0'),
(147, 'stone', 21, '09JLL035', 'Pierre', 'item_standard', '0'),
(158, 'croquettes', 1, '41TCA448', 'Croquettes', 'item_standard', '0'),
(159, 'fish', 273, 'WORK552 ', 'Poisson', 'item_standard', '0'),
(193, 'stone', 0, '01LYG188', 'Pierre', 'item_standard', '0'),
(195, 'washed_stone', 7, '01LYG188', 'Pierre Lavée', 'item_standard', '0');

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
  `isDead` bit(1) DEFAULT b'0',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `org`, `org_gradeorg`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `isDead`, `phone_number`, `last_property`, `animal`) VALUES
('steam:1100001045fbd8f', 'license:608b506bd937d8dd6803110fcbc06f94e52b9a13', 9007, 'Parsa✰', '{\"makeup_2\":0,\"age_1\":0,\"sex\":0,\"eyebrows_1\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"age_2\":0,\"ears_2\":0,\"torso_2\":0,\"chain_2\":0,\"glasses_1\":0,\"lipstick_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"beard_2\":0,\"helmet_1\":-1,\"bproof_2\":0,\"beard_4\":0,\"decals_1\":0,\"decals_2\":0,\"chain_1\":0,\"ears_1\":-1,\"shoes_1\":7,\"arms\":0,\"bags_1\":0,\"hair_2\":0,\"shoes_2\":0,\"torso_1\":0,\"beard_1\":0,\"mask_1\":58,\"hair_1\":57,\"bproof_1\":0,\"face\":0,\"lipstick_4\":0,\"pants_2\":0,\"eyebrows_4\":0,\"beard_3\":0,\"tshirt_2\":0,\"pants_1\":5,\"lipstick_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"hair_color_1\":1,\"skin\":0,\"bags_2\":0,\"hair_color_2\":0,\"makeup_4\":0,\"makeup_1\":0,\"helmet_2\":0}', 'miner', 0, 'freecity', 0, '[]', '{\"y\":1834.1177978516,\"z\":101.14407348633,\"x\":2343.0893554688}', 0, 0, 'user', 'Parsa', 'Ghyasi', '1994-02-07', 'm', '185', '[{\"name\":\"hunger\",\"percent\":27.9,\"val\":279000},{\"name\":\"thirst\",\"percent\":43.425,\"val\":434250},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', b'1', '531-3502', NULL, NULL),
('steam:11000010a1b83df', 'license:e62d81faaf5ea41b8be3677d26585b342f426b4c', 1208, 'MaMadLord', '{\"makeup_2\":0,\"age_1\":0,\"sex\":1,\"eyebrows_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"age_2\":0,\"ears_2\":0,\"torso_2\":0,\"chain_2\":0,\"glasses_1\":0,\"lipstick_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"arms\":0,\"beard_2\":0,\"helmet_1\":-1,\"bproof_2\":0,\"beard_4\":0,\"decals_1\":0,\"torso_1\":0,\"beard_3\":0,\"ears_1\":-1,\"shoes_1\":0,\"mask_1\":0,\"bags_1\":0,\"hair_2\":0,\"decals_2\":0,\"hair_1\":0,\"lipstick_1\":0,\"eyebrows_3\":0,\"skin\":0,\"bproof_1\":0,\"face\":0,\"hair_color_2\":0,\"pants_2\":0,\"eyebrows_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"pants_1\":0,\"makeup_3\":0,\"tshirt_1\":0,\"lipstick_4\":0,\"hair_color_1\":0,\"chain_1\":0,\"bags_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"beard_1\":0,\"helmet_2\":0}', 'miner', 0, 'freecity', 0, '[]', '{\"y\":-1393.2796630859,\"z\":30.474060058594,\"x\":239.28242492676}', 7600, 0, 'user', 'AAA', 'BBB', '11.11.1111', 'm', '150', '[{\"name\":\"hunger\",\"percent\":38.2,\"val\":382000},{\"name\":\"thirst\",\"percent\":41.15,\"val\":411500},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', b'0', '771-1741', NULL, NULL),
('steam:11000010b3a30a0', 'license:eda9a39ff948770ed1171c7836a68f0489ded17e', 1666, 'Nobody', '{\"skin\":12,\"lipstick_2\":0,\"shoes_1\":1,\"hair_color_2\":0,\"hair_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"age_1\":0,\"lipstick_3\":0,\"mask_2\":2,\"eyebrows_3\":1,\"eyebrows_4\":1,\"pants_1\":1,\"pants_2\":0,\"beard_3\":0,\"decals_1\":0,\"helmet_2\":0,\"eyebrows_2\":1,\"helmet_1\":-1,\"makeup_3\":0,\"mask_1\":68,\"hair_color_1\":26,\"bproof_1\":3,\"lipstick_1\":0,\"arms\":0,\"age_2\":0,\"sex\":0,\"chain_1\":0,\"ears_2\":0,\"eyebrows_1\":1,\"tshirt_1\":4,\"torso_1\":4,\"bags_2\":0,\"chain_2\":0,\"torso_2\":3,\"makeup_4\":0,\"tshirt_2\":0,\"bproof_2\":1,\"makeup_2\":0,\"decals_2\":0,\"beard_1\":0,\"beard_2\":0,\"hair_1\":33,\"glasses_1\":5,\"face\":0,\"lipstick_4\":0,\"bags_1\":0,\"glasses_2\":2,\"beard_4\":0,\"shoes_2\":7}', 'miner', 0, 'freecity', 0, '[]', '{\"y\":6409.5463867188,\"z\":31.745195388794,\"x\":1688.4400634766}', 6000, 0, 'user', 'Nobody', 'Somebody', '14-7-1374', 'm', '180', '[{\"name\":\"hunger\",\"percent\":78.35,\"val\":783500},{\"name\":\"thirst\",\"percent\":26.2625,\"val\":262625},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', b'0', '562-3039', NULL, NULL),
('steam:110000114a058a8', 'license:c359a4ebd956cdfd97bdedf6d1b47565d7f1ae31', 1750, 'Vidat', '{\"makeup_2\":0,\"age_1\":0,\"sex\":0,\"eyebrows_1\":0,\"eyebrows_2\":0,\"mask_2\":0,\"age_2\":0,\"ears_2\":0,\"torso_2\":2,\"chain_2\":0,\"glasses_1\":0,\"lipstick_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"arms\":0,\"beard_2\":0,\"helmet_1\":-1,\"decals_2\":0,\"beard_4\":0,\"decals_1\":0,\"makeup_3\":0,\"makeup_1\":0,\"ears_1\":-1,\"shoes_1\":3,\"hair_1\":11,\"bags_1\":0,\"hair_2\":5,\"chain_1\":0,\"lipstick_1\":0,\"bproof_2\":0,\"skin\":0,\"beard_3\":0,\"bproof_1\":0,\"face\":10,\"hair_color_2\":0,\"pants_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"tshirt_2\":2,\"pants_1\":10,\"beard_1\":0,\"tshirt_1\":6,\"lipstick_4\":0,\"hair_color_1\":7,\"shoes_2\":0,\"bags_2\":0,\"torso_1\":7,\"makeup_4\":0,\"eyebrows_3\":0,\"helmet_2\":0}', 'taxi', 0, 'freecity', 0, '[]', '{\"y\":-561.97229003906,\"z\":38.51407623291,\"x\":-76.285911560059}', 5224, 4, 'superadmin', 'Vidat', 'Boz', '24-12-94', 'm', '181', '[{\"val\":460500,\"name\":\"hunger\",\"percent\":46.05},{\"val\":595375,\"name\":\"thirst\",\"percent\":59.5375},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', b'0', '906-8228', NULL, NULL),
('steam:1100001167d265e', 'license:29b5cf81ce7ab787bc709e147300a0aa04806c62', 19860500, 'Shepesh', '{\"skin\":0,\"tshirt_2\":0,\"shoes_1\":0,\"hair_color_2\":0,\"hair_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"age_1\":0,\"lipstick_3\":0,\"mask_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"pants_1\":0,\"pants_2\":0,\"beard_3\":0,\"decals_1\":0,\"helmet_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"makeup_3\":0,\"bags_1\":0,\"hair_1\":0,\"bproof_1\":0,\"lipstick_1\":0,\"arms\":0,\"ears_2\":0,\"eyebrows_2\":0,\"chain_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"mask_1\":0,\"torso_1\":0,\"bags_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"makeup_4\":0,\"hair_color_1\":0,\"bproof_2\":0,\"tshirt_1\":0,\"torso_2\":0,\"beard_1\":0,\"decals_2\":0,\"beard_2\":0,\"glasses_1\":0,\"face\":0,\"age_2\":0,\"shoes_2\":0,\"glasses_2\":0,\"beard_4\":0,\"sex\":0}', 'fisherman', 0, 'freecity', 0, '[]', '{\"y\":-790.96276855469,\"z\":30.63879776001,\"x\":229.97816467285}', 9120000, 0, 'user', 'MR', 'Farhan', '', 'm', '189', '[{\"name\":\"hunger\",\"percent\":38.91,\"val\":389100},{\"name\":\"thirst\",\"percent\":41.6825,\"val\":416825},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', b'0', '021-1111', NULL, NULL),
('steam:11000011685b145', 'license:4068b4760e59796bb3aba041f5e0202e5fe29e0d', 2000, 'Yaakuzaa', '{\"skin\":0,\"lipstick_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"hair_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"age_1\":0,\"lipstick_3\":0,\"mask_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"pants_1\":0,\"pants_2\":0,\"beard_3\":0,\"decals_1\":0,\"helmet_2\":0,\"glasses_1\":0,\"helmet_1\":-1,\"makeup_3\":0,\"bags_1\":0,\"bags_2\":0,\"bproof_1\":0,\"lipstick_1\":0,\"arms\":0,\"shoes_1\":0,\"makeup_2\":0,\"chain_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"eyebrows_2\":0,\"torso_1\":0,\"age_2\":0,\"chain_2\":0,\"tshirt_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sex\":0,\"torso_2\":0,\"beard_1\":0,\"mask_1\":0,\"beard_2\":0,\"shoes_2\":0,\"face\":0,\"hair_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"beard_4\":0,\"decals_2\":0}', 'unemployed', 0, 'freecity', 0, '[]', '{\"z\":14.727857589722,\"y\":-2145.7734375,\"x\":314.95916748047}', 5000, 0, 'user', 'SAjjad', 'Dsh', '23/10/50', 'm', '184', '[{\"percent\":95.76,\"name\":\"hunger\",\"val\":957600},{\"percent\":96.82,\"name\":\"thirst\",\"val\":968200},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', b'0', '113-0914', NULL, NULL),
('steam:1100001197619a3', 'license:007e99bd2ac120690061f5013c7ac37acc590003', 1600, 'amirvv13', '{\"makeup_2\":0,\"age_1\":0,\"sex\":0,\"hair_color_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"age_2\":0,\"ears_2\":0,\"torso_2\":0,\"chain_2\":0,\"lipstick_1\":0,\"lipstick_2\":0,\"glasses_2\":0,\"lipstick_3\":0,\"makeup_1\":0,\"beard_2\":0,\"helmet_1\":-1,\"bproof_2\":0,\"beard_4\":0,\"beard_3\":0,\"decals_1\":0,\"beard_1\":0,\"ears_1\":-1,\"shoes_1\":0,\"hair_1\":31,\"bags_1\":0,\"hair_2\":0,\"arms\":0,\"decals_2\":0,\"makeup_3\":0,\"shoes_2\":0,\"lipstick_4\":0,\"bproof_1\":0,\"face\":31,\"glasses_1\":0,\"pants_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"tshirt_2\":0,\"pants_1\":0,\"eyebrows_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"hair_color_1\":0,\"skin\":12,\"bags_2\":0,\"chain_1\":0,\"makeup_4\":0,\"torso_1\":0,\"helmet_2\":0}', 'miner', 0, 'freecity', 0, '[]', '{\"y\":1835.1960449219,\"z\":101.8578414917,\"x\":2336.8977050781}', 4800, 0, 'user', 'Amir', 'V13', '09/03/98', 'm', '180', '[{\"name\":\"hunger\",\"percent\":42.62,\"val\":426200},{\"name\":\"thirst\",\"percent\":44.465,\"val\":444650},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', b'1', '827-5849', NULL, NULL);

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
(2, 'steam:1100001045fbd8f', 'black_money', 0),
(3, 'steam:110000114a058a8', 'black_money', 0),
(4, 'steam:11000010a1b83df', 'black_money', 0),
(5, 'steam:1100001167d265e', 'black_money', 0),
(6, 'steam:11000010b3a30a0', 'black_money', 0),
(7, 'steam:11000011685b145', 'black_money', 0);

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
(14, 'steam:1100001197619a3', 'yusuf', 0),
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
(33, 'steam:1100001197619a3', 'wool', 0),
(34, 'steam:1100001197619a3', 'whiskycoca', 0),
(35, 'steam:1100001197619a3', 'ice', 0),
(36, 'steam:1100001197619a3', 'myrte_cargo', 0),
(37, 'steam:1100001197619a3', 'fixtool', 0),
(38, 'steam:1100001197619a3', 'weed', 0),
(39, 'steam:1100001197619a3', 'water', 10),
(40, 'steam:1100001197619a3', 'opium', 0),
(41, 'steam:1100001197619a3', 'vodkafruit', 0),
(42, 'steam:1100001197619a3', 'washed_stone', 0),
(43, 'steam:1100001197619a3', 'vodkrb', 0),
(44, 'steam:1100001197619a3', 'tabacbrunsec', 0),
(45, 'steam:1100001197619a3', 'petrol_raffin', 0),
(46, 'steam:1100001197619a3', 'vodkaenergy', 0),
(47, 'steam:1100001197619a3', 'clip', 0),
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
(73, 'steam:1100001197619a3', 'grip', 0),
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
(90, 'steam:1100001197619a3', 'flashlight', 0),
(91, 'steam:1100001197619a3', 'meth', 0),
(92, 'steam:1100001197619a3', 'alcool_cargo', 0),
(93, 'steam:1100001197619a3', 'jewels', 0),
(94, 'steam:1100001197619a3', 'essence', 0),
(95, 'steam:1100001197619a3', 'icetea', 0),
(96, 'steam:1100001197619a3', 'jusfruit', 0),
(97, 'steam:1100001197619a3', 'clothe', 0),
(98, 'steam:1100001045fbd8f', 'bandage', 0),
(99, 'steam:1100001045fbd8f', 'jagerbomb', 0),
(100, 'steam:1100001045fbd8f', 'vodka', 0),
(101, 'steam:1100001045fbd8f', 'myrte', 0),
(102, 'steam:1100001045fbd8f', 'metreshooter', 0),
(103, 'steam:1100001045fbd8f', 'wood', 0),
(104, 'steam:1100001045fbd8f', 'myrtealcool', 0),
(105, 'steam:1100001045fbd8f', 'gitanes', 0),
(106, 'steam:1100001045fbd8f', 'gold', 0),
(107, 'steam:1100001045fbd8f', 'limonade', 0),
(108, 'steam:1100001045fbd8f', 'yusuf', 0),
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
(136, 'steam:1100001045fbd8f', 'water', 8),
(137, 'steam:1100001045fbd8f', 'myrte_cargo', 0),
(138, 'steam:1100001045fbd8f', 'vodkrb', 0),
(139, 'steam:1100001045fbd8f', 'petrol_raffin', 0),
(140, 'steam:1100001045fbd8f', 'vodkafruit', 0),
(141, 'steam:1100001045fbd8f', 'tabacbrunsec', 0),
(142, 'steam:1100001045fbd8f', 'opium', 0),
(143, 'steam:1100001045fbd8f', 'clip', 0),
(144, 'steam:1100001045fbd8f', 'vine', 0),
(145, 'steam:1100001045fbd8f', 'fabric', 0),
(146, 'steam:1100001045fbd8f', 'vodkaenergy', 0),
(147, 'steam:1100001045fbd8f', 'silencieux', 0),
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
(166, 'steam:1100001045fbd8f', 'bread', 8),
(167, 'steam:1100001045fbd8f', 'jager', 0),
(168, 'steam:1100001045fbd8f', 'copper', 0),
(169, 'steam:1100001045fbd8f', 'grip', 0),
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
(190, 'steam:1100001045fbd8f', 'flashlight', 0),
(191, 'steam:1100001045fbd8f', 'alcool_cargo', 0),
(192, 'steam:1100001045fbd8f', 'clothe', 0),
(193, 'steam:1100001045fbd8f', 'icetea', 0),
(194, 'steam:1100001045fbd8f', 'jusfruit', 0),
(195, 'steam:110000114a058a8', 'myrte', 0),
(196, 'steam:110000114a058a8', 'bandage', 0),
(197, 'steam:110000114a058a8', 'vodka', 0),
(198, 'steam:110000114a058a8', 'jagerbomb', 0),
(199, 'steam:110000114a058a8', 'metreshooter', 0),
(200, 'steam:110000114a058a8', 'gold', 0),
(201, 'steam:110000114a058a8', 'wood', 0),
(202, 'steam:110000114a058a8', 'gitanes', 0),
(203, 'steam:110000114a058a8', 'limonade', 0),
(204, 'steam:110000114a058a8', 'myrtealcool', 0),
(205, 'steam:110000114a058a8', 'yusuf', 0),
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
(243, 'steam:110000114a058a8', 'silencieux', 0),
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
(262, 'steam:110000114a058a8', 'bread', 0),
(263, 'steam:110000114a058a8', 'redbull_cargo', 0),
(264, 'steam:110000114a058a8', 'jager', 0),
(265, 'steam:110000114a058a8', 'redbull', 0),
(266, 'steam:110000114a058a8', 'rhumfruit', 0),
(267, 'steam:110000114a058a8', 'alcool', 0),
(268, 'steam:110000114a058a8', 'grip', 0),
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
(281, 'steam:110000114a058a8', 'jewels', 0),
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
(302, 'steam:11000010a1b83df', 'yusuf', 0),
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
(405, 'steam:1100001167d265e', 'gazbottle', 0),
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
(417, 'steam:1100001167d265e', 'yusuf', 7),
(418, 'steam:1100001167d265e', 'martini', 0),
(419, 'steam:1100001167d265e', 'weed', 0),
(420, 'steam:1100001167d265e', 'gold', 0),
(421, 'steam:1100001167d265e', 'whiskycoc', 0),
(422, 'steam:1100001167d265e', 'flashlight', 1),
(423, 'steam:1100001167d265e', 'icetea', 0),
(424, 'steam:1100001167d265e', 'teqpaf', 0),
(425, 'steam:1100001167d265e', 'water', 0),
(426, 'steam:1100001167d265e', 'tabacbrunsec', 0),
(427, 'steam:1100001167d265e', 'bread', 0),
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
(448, 'steam:1100001167d265e', 'clip', 1),
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
(471, 'steam:1100001167d265e', 'carotool', 0),
(472, 'steam:1100001167d265e', 'coke_pooch', 0),
(473, 'steam:1100001167d265e', 'myrtealcool', 0),
(474, 'steam:1100001167d265e', 'grand_cru', 0),
(475, 'steam:1100001167d265e', 'bolpistache', 0),
(476, 'steam:1100001167d265e', 'gitanes', 0),
(477, 'steam:1100001167d265e', 'energy', 0),
(478, 'steam:1100001167d265e', 'croquettes', 10),
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
(513, 'steam:11000010b3a30a0', 'yusuf', 0),
(514, 'steam:11000010b3a30a0', 'wood', 0),
(515, 'steam:11000010b3a30a0', 'whiskycoc', 0),
(516, 'steam:11000010b3a30a0', 'martini', 0),
(517, 'steam:11000010b3a30a0', 'weed', 0),
(518, 'steam:11000010b3a30a0', 'gold', 0),
(519, 'steam:11000010b3a30a0', 'flashlight', 0),
(520, 'steam:11000010b3a30a0', 'bread', 7),
(521, 'steam:11000010b3a30a0', 'tabacbrunsec', 0),
(522, 'steam:11000010b3a30a0', 'icetea', 0),
(523, 'steam:11000010b3a30a0', 'water', 0),
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
(544, 'steam:11000010b3a30a0', 'clip', 0),
(545, 'steam:11000010b3a30a0', 'rhum', 0),
(546, 'steam:11000010b3a30a0', 'silencieux', 0),
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
(596, 'steam:11000011685b145', 'grip', 0),
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
(608, 'steam:11000011685b145', 'yusuf', 0),
(609, 'steam:11000011685b145', 'martini', 0),
(610, 'steam:11000011685b145', 'bolnoixcajou', 0),
(611, 'steam:11000011685b145', 'wood', 0),
(612, 'steam:11000011685b145', 'whiskycoca', 0),
(613, 'steam:11000011685b145', 'whiskycoc', 0),
(614, 'steam:11000011685b145', 'tabacbrunsec', 0),
(615, 'steam:11000011685b145', 'flashlight', 0),
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
(640, 'steam:11000011685b145', 'clip', 0),
(641, 'steam:11000011685b145', 'silencieux', 0),
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
(674, 'steam:11000011685b145', 'bandage', 0),
(675, 'steam:11000011685b145', 'limonade', 0),
(676, 'steam:11000011685b145', 'croquettes', 0),
(677, 'steam:11000011685b145', 'medikit', 0),
(678, 'steam:11000011685b145', 'carokit', 0),
(679, 'steam:11000011685b145', 'clothe', 0);

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
(2, 'weapon', 'steam:1100001167d265e');

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
('16CHALLENGER', '16CHALLENGER', 275000, 'import'),
('450crf', '450crf', 42000, 'motomod'),
('750li', '750li', 800000, 'import'),
('911TURBOS', '911TURBOS', 1400000, 'import'),
('A45', 'a45', 160000, 'import'),
('Adder', 'adder', 900000, 'super'),
('aeroxr', 'aeroxr', 26000, 'motomod'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('ap2', 'ap2', 240000, 'import'),
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
('BMM', 'BMM', 420000, 'import'),
('M3E92', 'bmwm3e92', 400000, 'import'),
('bmws', 'bmws', 45000, 'motomod'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('BRZ', 'brz', 242000, 'import'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('C63', 'c63', 375000, 'import'),
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
('E63', 'e63amg', 375000, 'import'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('EVO10', 'EVO10', 170000, 'import'),
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
('GTR17', 'gtr', 462000, 'import'),
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
('kx450f', 'kx450f', 19200, 'motomod'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('LP770', 'lp770', 4350000, 'import'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('MGT', 'MGT', 340000, 'import'),
('MI8', 'MI8', 460000, 'import'),
('Minivan', 'minivan', 13000, 'vans'),
('Golf 3', 'mk3', 120000, 'import'),
('BRABUS', 'MLBRABUS', 230000, 'import'),
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
('Yamaha R1', 'r1', 45000, 'motomod'),
('r6', 'r6', 35000, 'motomod'),
('R8', 'r8prior', 450000, 'import'),
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
('BMW M4', 'rmodm4gts', 420000, 'import'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('rs3', 'rs3', 185000, 'import'),
('rs7', 'rs7', 310000, 'import'),
('RT70 (collection)', 'RT70', 2400000, 'import'),
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
('coupes', 'Coupés'),
('import', 'Voiture Moddés'),
('motomod', 'Moto Moddés'),
('motorcycles', 'Motos'),
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
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(7, 'BlackWeashop', 'WEAPON_COMBATPISTOL', 25000),
(8, 'BlackWeashop', 'WEAPON_STUNGUN', 5000),
(9, 'BlackWeashop', 'WEAPON_SAWNOFFSHOTGUN', 60000),
(10, 'BlackWeashop', 'WEAPON_MICROSMG', 70000),
(11, 'BlackWeashop', 'WEAPON_HEAVYSHOTGUN', 120000),
(12, 'BlackWeashop', 'WEAPON_COMPACTRIFLE', 110000),
(13, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 250000),
(14, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 190000),
(15, 'BlackWeashop', 'WEAPON_SMG', 60000),
(16, 'BlackWeashop', 'WEAPON_MG', 60000),
(17, 'BlackWeashop', 'WEAPON_COMBATPDW', 65000),
(18, 'BlackWeashop', 'WEAPON_MARKSMANRIFLE', 70000),
(19, 'BlackWeashop', 'WEAPON_GUSENBERG', 100000),
(24, 'GunShop', 'WEAPON_BAT', 1500),
(25, 'GunShop', 'WEAPON_KNUCKLE', 1500),
(26, 'GunShop', 'WEAPON_GOLFCLUB', 3700),
(28, 'GunShop', 'WEAPON_VINTAGEPISTOL', 10000),
(30, 'GunShop', 'WEAPON_PISTOL50', 25000),
(31, 'GunShop', 'WEAPON_REVOLVER', 18000),
(173, 'GunShop', 'WEAPON_FLASHLIGHT', 1000),
(176, 'GunShop', 'WEAPON_HATCHET', 3500),
(180, 'GunShop', 'WEAPON_CROWBAR', 1500),
(181, 'GunShop', 'WEAPON_HAMMER', 1500),
(182, 'GunShop', 'WEAPON_KNIFE', 1000),
(196, 'GunShop', 'WEAPON_MACHETE', 1500),
(202, 'GunShop', 'WEAPON_SNSPISTOL', 30000),
(205, 'GunShop', 'WEAPON_HEAVYPISTOL', 35000),
(207, 'GunShop', 'WEAPON_MUSKET', 50000),
(216, 'GunShop', 'WEAPON_PISTOL', 6500);

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
  ADD PRIMARY KEY (`name`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `aircraftdealer_aircrafts`
--
ALTER TABLE `aircraftdealer_aircrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `boatdealer_boats`
--
ALTER TABLE `boatdealer_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `datastore`
--
ALTER TABLE `datastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4344;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `playerstattoos`
--
ALTER TABLE `playerstattoos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=680;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
