-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 05:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dict_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `created_on` date DEFAULT curdate(),
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`, `role`) VALUES
(1, 'dictaklan', '$2y$10$TdTMMIDqPAK4rbd6dTEtmugLKoCWmdhMRicuzUqkO.xGLRFTmuKRq', 'DICT', 'AKLAN', 'logo-mini.svg', '2025-02-19', 'admin'),
(2, 'user12', 'pass', 'USER', 'LASTNAME', NULL, '2025-02-19', 'user'),
(5, 'jude', '$2y$10$xzuVk/z7B.8qhzLte1DTtuMt4Q.7HkksQQhcvAH821C13as35IgpW', 'jude', 'jude', NULL, '2025-02-20', 'user'),
(6, 'test', '$2y$10$1e5Ri7N2E9Jgd5NjYlnstu0C3s3BbbxJ2pEzflkkKJ1ttL4J72prS', 'test', 'test', NULL, '2025-02-20', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'dictaklan', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'DICT', 'AKLAN', 'DICT-Logo.png', '2018-04-02'),
(1, 'dictaklan', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'DICT', 'AKLAN', 'DICT-Logo.png', '2018-04-02'),
(1, 'dictaklan', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'DICT', 'AKLAN', 'DICT-Logo.png', '2018-04-02'),
(1, 'dictaklan', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'DICT', 'AKLAN', 'DICT-Logo.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `electric_bill`
--

CREATE TABLE `electric_bill` (
  `id` int(12) NOT NULL,
  `month_2` date NOT NULL,
  `month_1` date NOT NULL,
  `date_2` date NOT NULL,
  `gtc` int(11) NOT NULL,
  `ur` int(255) NOT NULL,
  `dr` int(11) NOT NULL,
  `uc` int(11) NOT NULL,
  `evax` int(11) NOT NULL,
  `other_ca` int(11) NOT NULL,
  `e_photo` varchar(255) NOT NULL,
  `annex` int(11) NOT NULL,
  `total_amount_2` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electric_bill`
--

INSERT INTO `electric_bill` (`id`, `month_2`, `month_1`, `date_2`, `gtc`, `ur`, `dr`, `uc`, `evax`, `other_ca`, `e_photo`, `annex`, `total_amount_2`) VALUES
(18, '2024-01-15', '2024-02-14', '2024-01-14', 9559, 1000, 700, 600, 872, 4000, 'altavas.png', 1, 15732),
(19, '2023-12-19', '2024-01-19', '2023-01-20', 8202, 730, 633, 230, 777, 236, 'CW_lensChips_tk_A_002.png', 0, 10078),
(20, '2023-01-20', '2023-02-21', '2023-02-21', 3729, 350, 344, 244, 343, 114, 'billing-notice.png', 0, 4774),
(21, '2023-02-21', '2023-03-20', '2023-03-20', 1, 110, 182, 108, 120, 36, 'dhpC6B-D.jpg', 0, 447),
(22, '2023-03-20', '2023-04-20', '2023-04-20', 1, 110, 162, 25, 115, 36, '', 0, 339),
(23, '2023-04-20', '2023-05-20', '2023-05-20', 1, 110, 162, 1, 112, 36, '', 0, 311),
(24, '2023-05-20', '2023-06-20', '2023-06-20', 1, 110, 162, 29, 111, 33, '', 0, 336),
(25, '2023-06-20', '2023-07-20', '2023-07-20', 1, 110, 162, 29, 97, 35, '', 0, 325),
(26, '2023-07-20', '2023-08-20', '2023-08-20', 3428, 450, 342, 100, 217, 9, '', 0, 4096),
(27, '2023-08-20', '2023-09-20', '2023-09-20', 833, 110, 84, 24, 52, 2, '2603941101b9483bb0a005bf30bf0c0c.jpg', 0, 995),
(28, '2023-09-20', '2023-10-18', '2023-10-18', 4, 510, 387, 126, 249, 10, '', 0, 777),
(29, '2023-10-18', '2023-11-18', '2023-11-18', 12, 1250, 1, 365, 1, 395, '', 0, 774),
(30, '2023-11-18', '2023-12-18', '2023-12-18', 11, 1270, 1, 371, 1, 404, '', 0, 788),
(31, '2023-12-18', '2024-01-18', '2024-01-18', 8, 890, 755, 250, 745, 261, '', 0, 2019),
(32, '2024-01-18', '2024-02-18', '2024-02-18', 10, 1010, 846, 332, 872, 296, '', 0, 2356),
(33, '2024-02-18', '2024-03-18', '2024-03-18', 11, 1310, 1, 430, 974, 382, '', 0, 1798),
(34, '2024-03-18', '2024-04-18', '2024-04-18', 12, 1190, 983, 363, 1, 349, '', 0, 1707),
(35, '2024-06-03', '2024-07-03', '2024-07-03', 12320, 1190, 983, 363, 1035, 349, '', 0, 15049),
(36, '2024-04-18', '2024-05-18', '2024-05-20', 16543, 1430, 1165, 436, 1524, 419, '', 0, 20087),
(37, '2024-05-18', '2024-06-18', '2024-06-20', 16356, 1570, 1271, 553, 1539, 460, '', 0, 20180),
(38, '2024-06-18', '2024-07-18', '2024-07-18', 14174, 1390, 1135, 489, 1283, 405, '', 0, 17486),
(39, '2024-07-18', '2024-08-18', '2024-08-20', 14991, 1270, 1043, 392, 1345, 370, '', 0, 17800),
(40, '2024-08-18', '2024-09-18', '2024-09-20', 11402, 1090, 907, 337, 1070, 318, '', 0, 1574),
(41, '2024-09-18', '2024-10-18', '2024-10-18', 13, 1390, 1055, 429, 1286, 406, 'CW_lensChips_tk_A_002.png', 0, 850),
(42, '2024-10-18', '2024-11-18', '2024-11-18', 11, 1050, 876, 324, 1050, 306, '', 0, 1519),
(43, '2024-11-18', '2024-12-18', '2024-12-18', 9476, 950, 800, 293, 890, 277, '', 0, 2270),
(44, '2025-01-07', '2025-02-07', '2025-01-07', 213, 234, 5, 3242, 324, 3242, 'billing-notice.png', 3242, 10268);

-- --------------------------------------------------------

--
-- Table structure for table `free_wifi`
--

CREATE TABLE `free_wifi` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `municipality_id` int(11) NOT NULL,
  `access_point` int(11) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `free_wifi`
--

INSERT INTO `free_wifi` (`id`, `project_id`, `address`, `municipality_id`, `access_point`, `status`) VALUES
(1, 1, 'Balabag Elementary School', 12, 0, 'active'),
(2, 1, 'Balabag National High School', 12, 0, 'active'),
(3, 1, 'Bolabog: BeachFront 36', 12, 0, 'active'),
(4, 1, 'Bolabog: BeachFront 37', 12, 0, 'active'),
(5, 1, 'Bolabog: BeachFront 38', 12, 0, 'active'),
(6, 1, 'Bolabog: BeachFront 79', 12, 0, 'active'),
(7, 1, 'Boracay Island Municipal Disaster Risk Reduction Office', 12, 0, 'active'),
(8, 1, 'Station 1: BeachFront 10', 12, 0, 'active'),
(9, 1, 'Station 1: BeachFront 12', 12, 0, 'active'),
(10, 1, 'Station 1: BeachFront 13', 12, 0, 'active'),
(11, 1, 'Station 1: BeachFront 3', 12, 0, 'active'),
(12, 1, 'Station 1: BeachFront 5', 12, 0, 'active'),
(13, 1, 'Station 1: BeachFront 74', 12, 0, 'active'),
(14, 1, 'Station 1: BeachFront 75', 12, 0, 'active'),
(15, 1, 'Station 1: BeachFront 8', 12, 0, 'active'),
(16, 1, 'Station 1: BeachFront 9', 12, 0, 'active'),
(17, 1, 'Station 2: BeachFront 15 ', 12, 0, 'active'),
(18, 1, 'Station 2: BeachFront 20', 12, 0, 'active'),
(19, 1, 'Station 2: BeachFront 24', 12, 0, 'active'),
(20, 1, 'Station 3: BeachFront 26', 12, 0, 'active'),
(21, 1, 'Station 3: BeachFront 27', 12, 0, 'active'),
(22, 1, 'Station 3: BeachFront 28', 12, 0, 'active'),
(23, 1, 'Station 3: BeachFront 29', 12, 0, 'active'),
(24, 1, 'Station 3: BeachFront 31', 12, 0, 'active'),
(25, 1, 'Station 3: BeachFront 33', 12, 0, 'active'),
(26, 1, 'Station 3: BeachFront 34', 12, 0, 'active'),
(27, 1, 'Station 3: BeachFront 35', 12, 0, 'active'),
(28, 1, 'Bureau of Immigration', 12, 0, 'active'),
(29, 1, 'Cagban Jetty Port - AP 1', 12, 0, 'active'),
(30, 1, 'Cagban Jetty Port - AP 10', 12, 0, 'active'),
(31, 1, 'Cagban Jetty Port - AP 11', 12, 0, 'active'),
(32, 1, 'Cagban Jetty Port - AP 12', 12, 0, 'active'),
(33, 1, 'Cagban Jetty Port - AP 2', 12, 0, 'active'),
(34, 1, 'Cagban Jetty Port - AP 3', 12, 0, 'active'),
(35, 1, 'Cagban Jetty Port - AP 4', 12, 0, 'active'),
(36, 1, 'Cagban Jetty Port - AP 5', 12, 0, 'active'),
(37, 1, 'Cagban Jetty Port - AP 6', 12, 0, 'active'),
(38, 1, 'Cagban Jetty Port - AP 7', 12, 0, 'active'),
(39, 1, 'Cagban Jetty Port - AP 8', 12, 0, 'active'),
(40, 1, 'Cagban Jetty Port - AP 9', 12, 0, 'active'),
(41, 1, 'PNP Boracay Police Station', 12, 0, 'active'),
(42, 1, 'Tulubhan / Capitan Martin ', 12, 0, 'active'),
(43, 1, 'Yapak Barangay Plaza', 12, 0, 'active'),
(44, 1, 'Yapak Elementary School', 12, 0, 'active'),
(45, 1, 'Balabag Barangay Plaza', 12, 0, 'active'),
(46, 1, 'Bureau of Fire Protection', 12, 0, 'active'),
(47, 1, 'Manoc-Manoc Barangay Hall', 12, 0, 'active'),
(48, 1, 'Manoc-Manoc Covered Court', 12, 0, 'active'),
(49, 1, 'Manoc-Manoc Elementary School', 12, 0, 'active'),
(50, 1, 'BIATF (BOSS) / DENR', 12, 0, 'active'),
(51, 1, 'Boracay One Stop Shop', 12, 0, 'active'),
(52, 1, 'Lamberto Tirol National High School', 12, 0, 'active'),
(53, 1, 'Malay Action Center Mayor Office', 12, 0, 'active'),
(54, 1, 'Malay Rural Health Unit - ANNEX', 12, 0, 'active'),
(55, 1, 'Manoc-Manoc National High School', 12, 0, 'active'),
(56, 1, 'Tambisaan Port', 12, 0, 'active'),
(64, 2, 'Altavas District Hospital', 1, 3, 'active'),
(65, 2, 'Ibajay District  Hospital', 6, 3, 'active'),
(66, 2, 'Provincial Capitol of Aklan', 7, 3, 'active'),
(67, 2, 'Dr. Rafael S. Tumbokon Memorial Hospital', 7, 3, 'active'),
(68, 2, 'Libacao Municipal Infirmary ', 9, 3, 'active'),
(69, 2, 'Libacao College of Science and Technology', 9, 3, 'active'),
(70, 2, 'Don. Leovigildo N. Diapo Sr. Municipal Hospital', 10, 3, 'active'),
(71, 2, 'Dr. Ramon B. Legaspi Sr. Memorial Hospital', 11, 3, 'active'),
(72, 2, 'Ciriaco S. Tirol Hospital ', 12, 3, 'active'),
(73, 2, 'Malay Municipal Hospital', 12, 3, 'active'),
(79, 4, 'Habana Barangay Hall', 5, 1, 'active'),
(80, 4, 'Aliputos Barangay Health Station', 16, 1, 'active'),
(81, 4, 'Panayakan Barangay Hall', 17, 1, 'active'),
(82, 5, 'Aklan State University Banga Campus', 3, 3, 'active'),
(83, 5, 'Aklan State University Ibajay Campus', 6, 3, 'active'),
(84, 5, 'Aklan State University Kalibo Campus', 7, 3, 'active'),
(85, 5, 'Aklan State University Makato Campus', 11, 3, 'active'),
(86, 5, 'Aklan State University New Washington Campus', 15, 3, 'active'),
(89, 6, 'Magsaysay Park', 7, 1, 'active'),
(90, 6, 'Pastrana Park', 7, 1, 'active'),
(92, 7, 'Catmon Integrated School', 1, 1, 'active'),
(93, 7, 'Lumaynay  Barangay Hall', 1, 1, 'active'),
(94, 7, 'Cabangila Elementary School', 1, 3, 'active'),
(95, 7, 'Aranas Barangay Hall', 2, 2, 'active'),
(96, 7, 'Bugasongan Barangay Hall', 8, 3, 'active'),
(97, 7, 'Mina Barangay Hall', 8, 3, 'active'),
(98, 7, 'Poblacion Barangay Hall', 8, 3, 'active'),
(99, 7, 'Sta. Cruz Barangay Hall', 8, 3, 'active'),
(100, 7, 'Santa Cruz Bigaa Barangay Hall', 8, 3, 'active'),
(101, 7, 'Santa Cruz Bigaa ES', 8, 3, 'active'),
(102, 7, 'Bugasongan ES', 8, 3, 'active'),
(103, 7, 'Lezo IS', 8, 3, 'active'),
(104, 7, 'Catabana Barangay Hall ', 10, 1, 'active'),
(105, 7, 'Alibagon Barangay Hall', 11, 3, 'active'),
(106, 7, 'Kinalangay Viejo Integrated School', 13, 1, 'active'),
(107, 7, 'San Dimas Barangay Hall', 13, 1, 'active'),
(108, 7, 'San Dimas Elementary School', 13, 1, 'active'),
(109, 7, 'Buenafortuna Barangay Hall', 14, 1, 'active'),
(110, 7, 'Buenafortuna Elementary School', 14, 1, 'active'),
(111, 7, 'Gibon Elementary School', 14, 1, 'active'),
(112, 7, 'Habana Elementary School', 14, 1, 'active'),
(113, 7, 'Libertad Elementary School', 14, 1, 'active'),
(114, 7, 'Poblacion Barangay Hall', 14, 1, 'active'),
(115, 7, 'Rizal Elementary School', 14, 1, 'active'),
(116, 7, 'Solido Barangay Hall', 14, 1, 'active'),
(117, 7, 'Solido Elementary School', 14, 1, 'active'),
(118, 7, 'Toledo Elementary School', 14, 1, 'active'),
(119, 7, 'Toledo National High School', 14, 1, 'active'),
(120, 7, 'Unidos Elementary School', 14, 1, 'active'),
(121, 7, 'Unidos National High School', 14, 1, 'active'),
(122, 7, 'Lawa-an Barangay Hall', 15, 1, 'active'),
(123, 8, 'Ibajay MDRRMO', 6, 1, 'active'),
(124, 8, 'Aklan PDRRMO', 7, 1, 'active'),
(125, 8, 'New Washington MDRMMO', 15, 1, 'active'),
(126, 9, 'Bolabog Beach', 12, 5, 'active'),
(127, 9, 'Boracay White Beach', 12, 5, 'active'),
(128, 9, 'Caticlan Jetty Port', 12, 5, 'active'),
(129, 9, 'Cagban Jetty Port', 12, 5, 'active'),
(130, 9, 'Nabaoy River', 12, 5, 'active'),
(131, 9, 'Tabon Port', 12, 5, 'active'),
(133, 7, 'Catabana Barangay Hall', 10, 1, 'active'),
(134, 2, 'Don Leviogildo N. DIapo Sr. Municioal Hospital', 10, 3, 'active'),
(136, 7, 'Alibagon Barangay Hall', 11, 3, 'active'),
(137, 2, 'Dr. Ramon B. Legaspi Sr. Memorial Hospital', 11, 3, 'active'),
(138, 5, 'Aklan State University - Makato Campus', 11, 3, 'active'),
(139, 7, 'Kinalangay Viejo Integrated School', 13, 1, 'active'),
(140, 7, 'San Dimas Barangay Hall', 13, 1, 'active'),
(141, 7, 'San Dimas Elementary School', 13, 1, 'active'),
(142, 7, 'Buenafortuna Barangay Hall', 14, 1, 'active'),
(143, 7, 'Buenafortuna Elementary School', 14, 1, 'active'),
(144, 7, 'Gibon ELementary School', 14, 1, 'active'),
(145, 7, 'Habana Elementary School', 14, 1, 'active'),
(146, 7, 'Libertad Elementary School', 14, 1, 'active'),
(147, 7, 'Poblacion Barangay Hall', 14, 1, 'active'),
(148, 7, 'Rizal Elementary School', 14, 1, 'active'),
(149, 7, 'Solido Barangay Hall ', 14, 1, 'active'),
(150, 7, 'Solido Elementary School', 14, 1, 'active'),
(151, 7, 'Toledo Elementary School', 14, 1, 'active'),
(152, 7, 'Toledo National High School', 14, 1, 'active'),
(153, 7, 'Unidos Elementary School', 14, 1, 'active'),
(154, 7, 'Unidos National High School', 14, 1, 'active'),
(160, 8, 'New Washington MDRRMO', 15, 1, 'active'),
(161, 7, 'Lawa-an Barangay Hall', 15, 1, 'active'),
(162, 5, 'Aklan State University - New Washington Campus', 15, 1, 'active'),
(165, 4, 'Aliputos Barangay Health Station', 16, 1, 'active'),
(170, 4, 'Panayakan Barangay Hall', 17, 1, 'active'),
(178, 2, 'testing edit', 3, 23, 'inactive'),
(183, 5, 'test', 3, 2, 'inactive'),
(184, 9, 'Malayyy', 12, 9, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `free_wifi_projects`
--

CREATE TABLE `free_wifi_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `free_wifi_projects`
--

INSERT INTO `free_wifi_projects` (`id`, `name`) VALUES
(1, 'IPTB'),
(2, 'MIS Aklan'),
(3, 'Municipal'),
(4, 'PIALEOS'),
(5, 'PICS-PP'),
(6, 'Region Initiated'),
(7, 'UISGIDA'),
(8, 'VSAT UNDP CoRe'),
(9, 'WITS');

-- --------------------------------------------------------

--
-- Table structure for table `municipalities`
--

CREATE TABLE `municipalities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipalities`
--

INSERT INTO `municipalities` (`id`, `name`) VALUES
(1, 'Altavas'),
(2, 'Balete'),
(3, 'Banga'),
(4, 'Batan'),
(5, 'Buruanga'),
(6, 'Ibajay'),
(7, 'Kalibo'),
(8, 'Lezo'),
(9, 'Libacao'),
(10, 'Madalag'),
(11, 'Makato'),
(12, 'Malay'),
(13, 'Malinao'),
(14, 'Nabas'),
(15, 'New Washington'),
(16, 'Numancia'),
(17, 'Tangalan');

-- --------------------------------------------------------

--
-- Table structure for table `pnpki`
--

CREATE TABLE `pnpki` (
  `id` int(11) NOT NULL,
  `application_type` enum('individual','organization') NOT NULL,
  `agency` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `municipality_id` int(11) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pnpki`
--

INSERT INTO `pnpki` (`id`, `application_type`, `agency`, `address`, `municipality_id`, `status`) VALUES
(1, 'individual', 'Hey', '1', 9, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tech4ed`
--

CREATE TABLE `tech4ed` (
  `id` int(11) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `center_loc` varchar(255) NOT NULL,
  `municipality_id` int(11) NOT NULL,
  `district_no` int(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech4ed`
--

INSERT INTO `tech4ed` (`id`, `center_name`, `center_loc`, `municipality_id`, `district_no`, `status`) VALUES
(1, 'Tech4Ed Main Center', 'DICT VI - Aklan Provincial Field Office', 7, 1, 'active'),
(2, 'Tech4Ed Banga Center', 'Banga Elementary School', 3, 1, 'active'),
(3, 'Test', 'Test', 3, 1, 'active'),
(4, 'Center', 'Loc', 14, 2, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`) VALUES
(1, 'user12', 'pass', 'USER', '', '20240305085516_IMG_5735.JPG'),
(2, 'user2', 'pass', 'USER', '2', '147142.png');

-- --------------------------------------------------------

--
-- Table structure for table `water_bill`
--

CREATE TABLE `water_bill` (
  `id` int(11) NOT NULL,
  `month_wb` date NOT NULL,
  `date_receive` date NOT NULL,
  `w_photo` varchar(255) NOT NULL,
  `total_amount_wb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `water_bill`
--

INSERT INTO `water_bill` (`id`, `month_wb`, `date_receive`, `w_photo`, `total_amount_wb`) VALUES
(15, '2024-02-01', '2024-03-12', '475956323_615198687892460_4387610642306317888_n.png', 9000),
(16, '2024-05-01', '2024-06-30', '475956323_615198687892460_4387610642306317888_n.png', 5000),
(17, '2024-03-01', '2024-03-12', 'back1.png', 5000),
(18, '2024-08-01', '2024-08-21', 'billing-notice.png', 80000),
(20, '2025-01-01', '2025-02-12', 'back1.png', 1000),
(21, '2025-02-01', '2025-02-18', 'billing-notice.png', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `wifi_bill`
--

CREATE TABLE `wifi_bill` (
  `id` int(12) NOT NULL,
  `month_1` date NOT NULL,
  `date_1` date NOT NULL,
  `wifi_photo` varchar(255) NOT NULL,
  `total_amount_1` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wifi_bill`
--

INSERT INTO `wifi_bill` (`id`, `month_1`, `date_1`, `wifi_photo`, `total_amount_1`) VALUES
(1, '2024-05-01', '2024-05-14', 'image-removebg-preview-16.png', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `electric_bill`
--
ALTER TABLE `electric_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_wifi`
--
ALTER TABLE `free_wifi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_municipality_id` (`municipality_id`),
  ADD KEY `fk_project_id` (`project_id`);

--
-- Indexes for table `free_wifi_projects`
--
ALTER TABLE `free_wifi_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `pnpki`
--
ALTER TABLE `pnpki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipality_id` (`municipality_id`);

--
-- Indexes for table `tech4ed`
--
ALTER TABLE `tech4ed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tech4ed_municipality` (`municipality_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_bill`
--
ALTER TABLE `water_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wifi_bill`
--
ALTER TABLE `wifi_bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `electric_bill`
--
ALTER TABLE `electric_bill`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `free_wifi`
--
ALTER TABLE `free_wifi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `free_wifi_projects`
--
ALTER TABLE `free_wifi_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pnpki`
--
ALTER TABLE `pnpki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tech4ed`
--
ALTER TABLE `tech4ed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `water_bill`
--
ALTER TABLE `water_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wifi_bill`
--
ALTER TABLE `wifi_bill`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `free_wifi`
--
ALTER TABLE `free_wifi`
  ADD CONSTRAINT `fk_municipality_id` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_project_id` FOREIGN KEY (`project_id`) REFERENCES `free_wifi_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pnpki`
--
ALTER TABLE `pnpki`
  ADD CONSTRAINT `pnpki_ibfk_1` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`);

--
-- Constraints for table `tech4ed`
--
ALTER TABLE `tech4ed`
  ADD CONSTRAINT `fk_tech4ed_municipality` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
