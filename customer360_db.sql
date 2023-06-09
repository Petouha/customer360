-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3307
-- Généré le : jeu. 15 juin 2023 à 00:33
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `customer360_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `behaviours`
--

CREATE TABLE `behaviours` (
  `MSISDN` int(9) NOT NULL,
  `sex` set('male','female') NOT NULL,
  `globalProfile` varchar(100) NOT NULL,
  `lineType` set('4G','3G','2G') NOT NULL,
  `wilaya` enum('ADRAR','CHELEF','LAGHOUAT','OUM EL BOUAGUI','BATNA','BEDJAYA','BISKRA','BECHAR','BLIDA','BOUIRA','TAMANRASSET','TEBESSA','TLEMCEN','TIARET','TIZI OUZOU','ALGER','DJELFA','JIJEL','SETIF','SAIDA','SKIKDA','SIDI BEL ABBES','ANNABA','GUELMA','CONSTANTINE','MEDEA','MOSTAGHANEM','MSILA','MASCARA','OUARGLA','ORAN','EL BAYADH','ILLIZI','BORDJ BOU ARRERIDJ','BOUMERDES','EL TAREF','TINDOUF','TISSEMSILT','EL OUED','KHENCHELA','SOUK AHRAS','TIPAZA','MILA','AIN DEFLA','NAAMA','AIN TEMOUCHENT','GHARDAIA','GHELIZAN','TIMIMOUNE','BORDJ BADJI MOKHTAR','OULED DJELLAL','BENI ABBES','IN SALAH','IN GUEZZAM','TOUGGOURT','DJANET','EL MGHAIR','EL MENIAA') NOT NULL,
  `deviceType` set('Phablet','Smartphone','Tablet') NOT NULL,
  `ageYears` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `months` int(11) NOT NULL,
  `valueSegment` varchar(100) DEFAULT NULL,
  `valueSegmentIcon` varchar(100) DEFAULT NULL,
  `valueSegmentInterval` varchar(100) DEFAULT '',
  `behaviorSegments` varchar(100) DEFAULT NULL,
  `behaviorSegmentDescription` int(11) DEFAULT NULL,
  `behaviorSegmentIcon` int(11) DEFAULT NULL,
  `churnRisk` set('Low Risk','Medium Risk','High Risk') NOT NULL,
  `churnRiskIcon` int(11) DEFAULT NULL,
  `ticketCreationDate` varchar(100) DEFAULT 'No Complaint',
  `ticketClosedDate` varchar(100) NOT NULL DEFAULT 'No Complaint',
  `ticketStatus` varchar(100) NOT NULL DEFAULT 'No Complaint',
  `ticketName` int(11) DEFAULT NULL,
  `nomCommercialOffre1Hyb` varchar(100) DEFAULT NULL,
  `nomCommercialOffre1Post` varchar(100) DEFAULT NULL,
  `nomCommercialOffre2Hyb` varchar(100) DEFAULT NULL,
  `nomCommercialOffre2Post` varchar(100) DEFAULT NULL,
  `subscriptionTypeCodeOffre1Hyb` int(11) DEFAULT NULL,
  `subscriptionTypeCodeOffre1Post` int(11) DEFAULT NULL,
  `subscriptionTypeCodeOffre2Hyb` int(11) DEFAULT NULL,
  `subscriptionTypeCodeOffre2Post` int(11) DEFAULT NULL,
  `recurrentPackageCodeOffre1Hyb` int(11) DEFAULT NULL,
  `recurrentPackageCodeOffre1Post` int(11) DEFAULT NULL,
  `recurrentPackageCodeOffre2Hyb` int(11) DEFAULT NULL,
  `recurrentPackageCodeOffre2Post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `behaviours`
--

INSERT INTO `behaviours` (`MSISDN`, `sex`, `globalProfile`, `lineType`, `wilaya`, `deviceType`, `ageYears`, `years`, `months`, `valueSegment`, `valueSegmentIcon`, `valueSegmentInterval`, `behaviorSegments`, `behaviorSegmentDescription`, `behaviorSegmentIcon`, `churnRisk`, `churnRiskIcon`, `ticketCreationDate`, `ticketClosedDate`, `ticketStatus`, `ticketName`, `nomCommercialOffre1Hyb`, `nomCommercialOffre1Post`, `nomCommercialOffre2Hyb`, `nomCommercialOffre2Post`, `subscriptionTypeCodeOffre1Hyb`, `subscriptionTypeCodeOffre1Post`, `subscriptionTypeCodeOffre2Hyb`, `subscriptionTypeCodeOffre2Post`, `recurrentPackageCodeOffre1Hyb`, `recurrentPackageCodeOffre1Post`, `recurrentPackageCodeOffre2Hyb`, `recurrentPackageCodeOffre2Post`) VALUES
(773133654, 'male', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', 'ALGER', '', 44, 0, 0, '', '', '4G', 'New Customer', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(774125230, 'female', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', '', 'Smartphone', 26, 0, 0, 'NEW', '', '4G', 'New Customer', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(778811898, 'male', 'New Hayla Maxi Prepaid_4G (NewHAYLAMAXI)', '4G', 'GUELMA', '', 37, 0, 5, 'High Value', '', '4G', 'Mostly Data Offnet (Competitors Sociable Savvy)', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(778981247, 'male', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', '', 'Phablet', 20, 0, 2, 'NEW', '', '4G', 'New Customer', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(779797539, 'female', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', 'BATNA', 'Smartphone', 24, 0, 1, 'NEW', '', '4G', 'New Customer', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(790959980, 'male', 'New Hayla Maxi Prepaid_4G (NewHAYLAMAXI)', '4G', 'SIDI BEL ABBES', 'Smartphone', 53, 10, 0, NULL, NULL, '4G', NULL, NULL, NULL, 'Medium Risk', NULL, 'No Complaint', 'No Complaint', 'No Complaint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791117861, 'male', 'New Hayla Maxi Prepaid_4G (NewHAYLAMAXI)', '4G', '', '', 27, 0, 0, '', '', '4G', 'New Customer', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(793706779, 'female', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', 'DJELFA', '', 64, 0, 0, '', '', '4G', 'New Customer', 0, 0, 'Low Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(793831117, 'female', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', 'ALGER', 'Smartphone', 20, 1, 11, NULL, NULL, '4G', NULL, NULL, NULL, 'High Risk', NULL, 'No Complaint', 'No Complaint', 'No Complaint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798997585, 'male', 'Hayla Maxi Prepaid_4G (MAXIHAYLAPREPAID)', '4G', 'ANNABA', 'Phablet', 21, 2, 10, 'Very Low Value', '', '4G', 'Mostly Data Offnet (Competitors Sociable Savvy)', 0, 0, 'High Risk', 0, 'No Complaint', 'No Complaint', 'No Complaint', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(799554386, 'male', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', 'ALGER', 'Smartphone', 20, 3, 9, 'High Value', '', '4G', 'Mostly Bundles', 0, 0, 'Low Risk', 0, '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `consumptions`
--

CREATE TABLE `consumptions` (
  `id` int(11) NOT NULL,
  `subscriptionId` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `remainingSMS` int(11) NOT NULL,
  `remainingData` float NOT NULL,
  `remainingOffnet` float NOT NULL,
  `remainingOnnet` float NOT NULL,
  `dateActivation` datetime NOT NULL DEFAULT current_timestamp(),
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `consumptions`
--

INSERT INTO `consumptions` (`id`, `subscriptionId`, `packageId`, `remainingSMS`, `remainingData`, `remainingOffnet`, `remainingOnnet`, `dateActivation`, `isActive`) VALUES
(15, 17, 7, 99999, 25, 2000, 44640, '2023-05-15 14:08:11', 0),
(16, 3, 7, 99999, 25, 2000, 44640, '2023-04-12 14:09:13', 0),
(17, 3, 7, 99999, 25, 2000, 44640, '2023-03-12 14:09:13', 0),
(18, 3, 7, 99999, 25, 2000, 44640, '2023-01-12 14:09:13', 0),
(19, 16, 7, 99999, 25, 2000, 44640, '2023-05-15 14:15:35', 0),
(20, 3, 8, 99999, 10, 1500, 44640, '2023-05-15 14:28:07', 1),
(40, 16, 6, 99999, 60, 7000, 44640, '2023-06-07 11:22:57', 1),
(44, 2, 10, 99999, 60, 4000, 44640, '2023-06-09 20:47:14', 1),
(45, 2, 13, 99999, 7, 750, 44640, '2023-06-09 20:47:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `eligble_packages`
--

CREATE TABLE `eligble_packages` (
  `subscriptionTypeId` int(11) NOT NULL,
  `packageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `eligble_packages`
--

INSERT INTO `eligble_packages` (`subscriptionTypeId`, `packageId`) VALUES
(3, 1),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(5, 14),
(5, 15),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33);

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groupe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groups`
--

INSERT INTO `groups` (`id`, `groupe`) VALUES
(1, 'ACS'),
(2, 'Marketing');

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `packageCode` varchar(100) NOT NULL,
  `commercialName` varchar(255) NOT NULL,
  `packageType` enum('BUNDLE','DATA','J4Y') NOT NULL,
  `price` float NOT NULL,
  `duration` int(11) NOT NULL,
  `voiceOnnet` float DEFAULT 0,
  `voiceOffnet` float DEFAULT NULL,
  `SMS` int(11) DEFAULT 0,
  `data` float DEFAULT NULL,
  `subcriptionTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `packages`
--

INSERT INTO `packages` (`id`, `packageCode`, `commercialName`, `packageType`, `price`, `duration`, `voiceOnnet`, `voiceOffnet`, `SMS`, `data`, `subcriptionTypeID`) VALUES
(1, 'NEWHAYLA100BEZZ', 'HAYLA BEZZEF 100', 'BUNDLE', 100, 1, 44640, 150, 99999, 0.5, 3),
(4, 'NEWHAYLA150BEZZ', 'HAYLA BEZZEF 150', 'BUNDLE', 150, 1, 44640, 300, 99999, 2, 3),
(5, 'NEWHAYLA500BEZZ', 'HAYLA BEZZEF 500', 'BUNDLE', 500, 15, 44640, 750, 99999, 3, 3),
(6, 'NEWHAYLA2000BEZZ', 'HAYLA BEZZEF 2000', 'BUNDLE', 2000, 30, 44640, 7000, 99999, 60, 3),
(7, 'NEWHAYLA1500BEZZ', 'HAYLA BEZZEF 1500', 'BUNDLE', 1500, 30, 44640, 2000, 99999, 25, 3),
(8, 'NEWHAYLA1200BEZZ', 'HAYLA BEZZEF 1200', 'BUNDLE', 1200, 30, 44640, 1500, 99999, 10, 3),
(9, 'NEWHAYLA1200MAX', 'HAYLA MAXI 1200', 'BUNDLE', 1200, 30, 44640, 1500, 99999, 10, 4),
(10, 'NEWHAYLA2000MAX', 'HAYLA MAXI 2000', 'BUNDLE', 2000, 30, 44640, 4000, 99999, 60, 4),
(11, 'NEWHAYLA100MAX', 'HAYLA MAXI 100', 'BUNDLE', 100, 1, 44640, 150, 99999, 1, 4),
(12, 'NEWHAYLA1500MAX', 'HAYLA MAXI 1500', 'BUNDLE', 1500, 30, 44640, 2000, 99999, 25, 4),
(13, 'NEWHAYLA500MAX', 'HAYLA MAXI 500', 'BUNDLE', 500, 15, 44640, 750, 99999, 7, 4),
(14, 'low100Value', 'Djezzy ZID 100', 'BUNDLE', 100, 1, 44640, 150, 99999, 1, 5),
(15, 'low1000Value', 'Djezzy ZID 1000', 'BUNDLE', 1000, 30, 44640, 1300, 99999, 10, 5),
(16, 'HAYLABEZZAFDATA500', 'HAYLA BEZZAF DATA 500', 'DATA', 500, 30, NULL, NULL, NULL, 6, 3),
(17, 'HAYLABEZZAFDATA1000', 'HAYLA BEZZAF DATA 1000', 'DATA', 1000, 30, NULL, NULL, NULL, 15, 3),
(18, 'HAYLABEZZAFDATA1500', 'HAYLA BEZZAF DATA 1500', 'DATA', 1500, 30, NULL, NULL, NULL, 30, 3),
(19, 'HAYLABEZZAFDATA2000', 'HAYLA BEZZAF DATA 2000', 'DATA', 2000, 30, NULL, NULL, NULL, 60, 3),
(20, 'HAYLAMAXIDATA1500', 'HAYLA MAXI DATA 1500', 'DATA', 1500, 30, NULL, NULL, NULL, 30, 4),
(21, 'HAYLAMAXIDATA2000', 'HAYLA MAXI DATA 2000', 'DATA', 2000, 30, NULL, NULL, NULL, 60, 4),
(22, 'HAYLAMAXIDATA500', 'HAYLA MAXI DATA 500', 'DATA', 500, 30, NULL, NULL, NULL, 6, 4),
(23, 'HAYLAMAXIDATA1000', 'HAYLA MAXI DATA 1000', 'DATA', 1000, 30, NULL, NULL, NULL, 15, 4),
(24, 'ZIDDATA500', 'DJEZZY ZID DATA 500', 'DATA', 500, 6, NULL, NULL, NULL, 30, 5),
(25, 'ZIDDATA1000', 'DJEZZY ZID DATA 1000', 'DATA', 1000, 30, NULL, NULL, NULL, 15, 5),
(26, 'DJEZZYZID50', 'DJEZZY ZID 50', 'BUNDLE', 50, 1, 44640, 50, 99999, 0.5, 5),
(27, 'DJEZZYZID200', 'DJEZZY ZID 200', 'BUNDLE', 200, 7, 44640, 200, 99999, 2, 5),
(28, 'DJEZZYZID400', 'DJEZZY ZID 400', 'BUNDLE', 400, 15, 44640, 500, 99999, 4, 5),
(29, 'DJEZZYZID800', 'DJEZZY ZID 800', 'BUNDLE', 800, 30, 44640, 1000, 99999, 8, 5),
(30, 'IZZY300', 'IZZY 300', 'BUNDLE', 300, 15, 44640, 0, 99999, 3, 6),
(31, 'IZZY1200', 'IZZY 1200', 'BUNDLE', 1200, 30, 44640, 1000, 99999, 10, 6),
(32, 'IZZY500', 'IZZY 500', 'BUNDLE', 500, 30, 44640, 0, 99999, 5, 6),
(33, 'IZZY50', 'IZZY 50', 'BUNDLE', 50, 1, 44640, 0, 99999, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `reclamations`
--

CREATE TABLE `reclamations` (
  `id` int(11) NOT NULL,
  `reclamationText` text NOT NULL,
  `dateReclamation` datetime NOT NULL,
  `idSubscription` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reclamations`
--

INSERT INTO `reclamations` (`id`, `reclamationText`, `dateReclamation`, `idSubscription`) VALUES
(1, 'CONNNEXION TA3I T9ILA BEZAF', '2023-04-10 20:01:29', 1),
(2, 'test 2', '2023-04-10 20:05:50', 1),
(3, 'test 3', '2023-04-10 20:05:50', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `idSale` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `MSISDN` int(11) NOT NULL,
  `operationId` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `dateSale` timestamp NOT NULL DEFAULT current_timestamp(),
  `saleType` enum('Migration','Activation') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`idSale`, `userId`, `MSISDN`, `operationId`, `price`, `dateSale`, `saleType`) VALUES
(4, 1, 799554386, 5, 500, '2023-06-03 16:32:31', 'Migration'),
(5, 1, 799554386, 5, 500, '2023-06-03 16:32:41', 'Migration'),
(6, 1, 799554386, 5, 500, '2023-06-03 16:32:55', 'Migration'),
(7, 1, 799554386, 5, 500, '2023-06-03 16:33:20', 'Migration'),
(10, 1, 799554386, 5, 500, '2023-06-03 16:33:58', 'Migration'),
(11, 1, 799554386, 5, 500, '2023-06-03 16:34:07', 'Migration'),
(12, 1, 799554386, 5, 500, '2023-06-03 16:34:12', 'Migration'),
(13, 1, 799554386, 5, 500, '2023-06-03 16:34:21', 'Migration'),
(14, 1, 799554386, 5, 500, '2023-06-03 16:34:24', 'Migration'),
(15, 1, 799554386, 5, 500, '2023-06-03 16:34:55', 'Migration'),
(16, 1, 799554386, 5, 500, '2023-06-03 16:35:02', 'Migration'),
(18, 1, 799554386, 5, 500, '2023-06-03 16:35:19', 'Migration'),
(19, 1, 799554386, 5, 0, '2023-06-03 16:59:00', 'Activation'),
(31, 1, 750867811, 12, 1500, '2023-06-04 22:36:26', 'Activation'),
(32, 1, 799554386, 5, 500, '2023-06-05 17:52:27', 'Activation'),
(33, 1, 799554386, 1, 100, '2023-06-05 17:58:40', 'Activation'),
(34, 1, 799554386, 6, 2000, '2023-06-05 23:23:47', 'Activation'),
(35, 1, 799554386, 7, 1500, '2023-06-05 23:23:58', 'Activation'),
(36, 1, 799554386, 5, 500, '2023-06-05 23:24:13', 'Activation'),
(37, 1, 799554386, 5, 500, '2023-06-05 23:25:24', 'Activation'),
(38, 1, 799554386, 5, 500, '2023-06-05 23:28:15', 'Activation'),
(39, 1, 779797539, 6, 2000, '2023-06-07 10:22:58', 'Activation'),
(40, 1, 790959980, 6, 2000, '2023-06-09 17:41:13', 'Activation'),
(41, 1, 790959980, 5, 500, '2023-06-09 17:41:20', 'Activation'),
(45, 1, 778811898, NULL, 0, '2023-06-09 19:31:29', 'Migration'),
(46, 1, 790959980, NULL, 0, '2023-06-09 19:37:51', 'Migration'),
(47, 1, 790959980, 10, 2000, '2023-06-09 19:47:14', 'Activation'),
(48, 1, 790959980, 13, 500, '2023-06-09 19:47:25', 'Activation'),
(49, 1, 790959980, 13, 500, '2023-06-09 19:48:15', 'Activation'),
(50, 1, 799554386, NULL, 0, '2023-06-10 10:43:37', 'Migration'),
(51, 1, 799554386, 11, 100, '2023-06-10 10:44:10', 'Activation'),
(52, 1, 799554386, NULL, 0, '2023-06-10 10:56:51', 'Migration'),
(53, 1, 799554386, 5, 500, '2023-06-10 10:56:57', 'Activation'),
(54, 1, 799554386, 4, 150, '2023-06-10 16:41:58', 'Activation'),
(55, 1, 799554386, 1, 100, '2023-06-10 16:43:32', 'Activation'),
(56, 1, 799554386, NULL, 0, '2023-06-10 16:43:54', 'Migration'),
(57, 1, 799554386, 10, 2000, '2023-06-10 16:44:10', 'Activation'),
(58, 1, 799554386, 11, 100, '2023-06-10 16:44:55', 'Activation'),
(59, 1, 799554386, NULL, 0, '2023-06-14 22:30:21', 'Migration'),
(60, 1, 799554386, NULL, 0, '2023-06-14 22:31:06', 'Migration'),
(61, 1, 799554386, NULL, 0, '2023-06-14 22:32:27', 'Migration');

-- --------------------------------------------------------

--
-- Structure de la table `segments`
--

CREATE TABLE `segments` (
  `id` int(11) NOT NULL,
  `segmentType` enum('B2C','B2B') NOT NULL,
  `paymentType` enum('PREPAID','HYBRID','POSTPAID') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `segments`
--

INSERT INTO `segments` (`id`, `segmentType`, `paymentType`) VALUES
(1, 'B2C', 'PREPAID'),
(2, 'B2C', 'HYBRID'),
(3, 'B2C', 'POSTPAID'),
(4, 'B2B', 'PREPAID'),
(5, 'B2B', 'HYBRID'),
(6, 'B2B', 'POSTPAID');

-- --------------------------------------------------------

--
-- Structure de la table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `wilaya` enum('ADRAR','CHELEF','LAGHOUAT','OUM EL BOUAGUI','BATNA','BEDJAYA','BISKRA','BECHAR','BLIDA','BOUIRA','TAMANRASSET','TEBESSA','TLEMCEN','TIARET','TIZI OUZOU','ALGER','DJELFA','JIJEL','SETIF','SAIDA','SKIKDA','SIDI BEL ABBES','ANNABA','GUELMA','CONSTANTINE','MEDEA','MOSTAGHANEM','MSILA','MASCARA','OUARGLA','ORAN','EL BAYADH','ILLIZI','BORDJ BOU ARRERIDJ','BOUMERDES','EL TAREF','TINDOUF','TISSEMSILT','EL OUED','KHENCHELA','SOUK AHRAS','TIPAZA','MILA','AIN DEFLA','NAAMA','AIN TEMOUCHENT','GHARDAIA','GHELIZAN','TIMIMOUNE','BORDJ BADJI MOKHTAR','OULED DJELLAL','BENI ABBES','IN SALAH','IN GUEZZAM','TOUGGOURT','DJANET','EL MGHAIR','EL MENIAA') NOT NULL,
  `contractDate` date NOT NULL DEFAULT current_timestamp(),
  `dateBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subscribers`
--

INSERT INTO `subscribers` (`id`, `firstName`, `lastName`, `address`, `wilaya`, `contractDate`, `dateBirth`) VALUES
(1, 'Mohamed Rayan', 'Djadri', 'Batiment bab ta3o violet w le code c\'est 1234', 'ALGER', '2020-02-26', '2002-08-08'),
(2, 'Mohamed Rachid', 'Mouci', '15 bis rue Arezki Hamani, Alger centre', 'ALGER', '2019-07-19', '2003-03-18'),
(3, 'Mustapha', 'Lakrib', 'Cité 220 logements, Bloc C, Sidi Djilali', 'SIDI BEL ABBES', '2013-04-30', '1969-06-09'),
(4, 'Farah', 'Amir', '14 rue Smail, Sidi Moussa', 'ALGER', '2021-07-09', '2002-12-21'),
(5, 'Hayder Mortadha', 'Belgueloul', '45 rue Chabin, Kouba', 'ALGER', '2019-09-13', '2003-04-30'),
(6, 'Farah', 'Boudoua', 'Rue de l\'Hopital Kouba', 'ALGER', '2022-03-10', '2002-10-22'),
(7, 'Nassiba', 'Bouzar', '1 rue Blaise Pascal, Alger Centre', 'ALGER', '2018-01-09', '1976-11-11'),
(8, 'Dounia Ihsene', 'Guadji', 'Cité AADL, Heraouah', 'ALGER', '2018-12-09', '2002-12-09'),
(9, 'Mohamed Amine', 'Hazi', '144 Cité des Fleurs, Ain Naadja', 'ALGER', '2019-05-10', '2003-07-23'),
(10, 'Mohamed Zakaria', 'Arabi', 'Bab Ezzouar devant l\'auto école', 'ALGER', '2019-11-07', '2003-02-15'),
(11, 'Malak', 'Mouci', '1 Rue Blaise Pascal, Alger centre', 'ALGER', '2019-07-18', '2006-08-29'),
(12, 'Samy', 'Boulouza', '', 'GUELMA', '2022-10-05', '1986-03-21'),
(13, 'Adam Rafik', 'Khouchane', '1 Rue Daguerre, Alger Centre', 'ALGER', '2023-03-28', '1978-08-09'),
(14, 'Mina', 'Marah', '', 'MEDEA', '2023-03-28', '1996-12-06'),
(15, 'Rafik', 'Yassaa', 'Cité 120 logements, Ouled Fayet', 'ALGER', '2023-01-02', '2003-11-18'),
(16, 'Yasmine Maissa', 'Bourbon', '', 'BATNA', '2023-02-01', '1999-02-28'),
(17, 'Redha', 'Boussaha', '', 'ALGER', '2023-03-28', '1995-06-06'),
(18, 'Kenza', 'Slimani', '', 'DJELFA', '2023-03-28', '1958-07-09'),
(19, 'Amine', 'Khouchane', '', 'ANNABA', '2020-01-05', '2002-01-09');

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `subscriptionTypeId` int(11) NOT NULL,
  `subscriberId` int(11) NOT NULL,
  `MSISDN` int(11) NOT NULL,
  `balance` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscriptionTypeId`, `subscriberId`, `MSISDN`, `balance`) VALUES
(1, 5, 2, 799554386, 17250),
(2, 4, 3, 790959980, 0),
(3, 3, 4, 793831117, 1360),
(4, 3, 6, 742297006, 0),
(5, 4, 10, 770348596, 0),
(6, 3, 8, 759906803, 0),
(7, 3, 5, 750867811, 0),
(8, 3, 9, 761023824, 0),
(9, 7, 1, 760717438, 0),
(10, 3, 7, 795503613, 0),
(11, 4, 11, 799402345, 0),
(12, 4, 12, 778811898, 0),
(13, 3, 13, 773133654, 0),
(14, 3, 14, 774125230, 0),
(15, 3, 15, 778981247, 0),
(16, 3, 16, 779797539, 1500),
(17, 3, 17, 791117861, 100),
(18, 3, 18, 793706779, 0),
(19, 4, 19, 798997585, 0);

-- --------------------------------------------------------

--
-- Structure de la table `subscriptiontypes`
--

CREATE TABLE `subscriptiontypes` (
  `id` int(11) NOT NULL,
  `subscriptionType` varchar(100) NOT NULL,
  `commercialName` varchar(255) NOT NULL,
  `segmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subscriptiontypes`
--

INSERT INTO `subscriptiontypes` (`id`, `subscriptionType`, `commercialName`, `segmentID`) VALUES
(2, 'hayla', 'Hayla', 1),
(3, 'haylabezzef', 'Hayla Bezzef', 1),
(4, 'haylamaxi', 'Hayla Maxi', 1),
(5, 'djezzyzid', 'Djezzy Zid', 1),
(6, 'youthoffer', 'IZZY', 1),
(7, 'b2cconforthyb', 'Djezzy Confort Control', 2),
(8, 'b2cconfortpost', 'Djezzy Confort Postpaye', 3),
(9, 'b2bconforthyb', 'Djezzy Confort Control B2B', 5),
(10, 'b2bconfortpost', 'Djezzy Confort Postpaye B2B', 6),
(11, 'haarbahyb', 'Harba Hybrid', 2),
(12, 'haarbapost', 'Harba Postpaye', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `registration` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupId` int(10) NOT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL,
  `previousLogin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `registration`, `email`, `password`, `groupId`, `lastLogin`, `previousLogin`) VALUES
(1, 'Mohamed Rachid', 'Mouci', 1964, 'rachidgames2.rg@gmail.com', '$2y$10$g4CSy236Tn71ZOV0IGZypeO1gCB5e1XahAKAgsM7Gai7QzyY/W/2G', 1, '2023-06-14 22:03:43', '2023-06-12 19:15:35'),
(2, 'test', 'testets', 568, 'test@gmail.com', '$2y$10$ig.eT9yaB/F5ZMVM4UWp4eNWJ/G9veN1m3J.dY1/b39SxJ5vDYe8O', 1, NULL, NULL),
(3, 'area', 'jhaeufhuaie', 4579, 'yes@gmail.com', '$2y$10$QaRC7xJRCcgGLTmDY3Kuhe0.rf6o1QfpwzMiL0/aSY0jeYaPRF5c2', 1, NULL, NULL),
(5, 'Test', 'test again', 111, 'api@gmail.com', '$2y$10$mYOocjD.U8UPvxnDrG0ojey0xCrBTOYBhxybswBqbj7sd1l8uigvO', 1, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `behaviours`
--
ALTER TABLE `behaviours`
  ADD PRIMARY KEY (`MSISDN`);

--
-- Index pour la table `consumptions`
--
ALTER TABLE `consumptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packageId` (`packageId`),
  ADD KEY `subscriptionId` (`subscriptionId`);

--
-- Index pour la table `eligble_packages`
--
ALTER TABLE `eligble_packages`
  ADD PRIMARY KEY (`subscriptionTypeId`,`packageId`),
  ADD KEY `packageId` (`packageId`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcriptionTypeID` (`subcriptionTypeID`);

--
-- Index pour la table `reclamations`
--
ALTER TABLE `reclamations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSubscription` (`idSubscription`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`idSale`),
  ADD KEY `userId` (`userId`),
  ADD KEY `MSISDN` (`MSISDN`),
  ADD KEY `packageId` (`operationId`);

--
-- Index pour la table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `MSISDN` (`MSISDN`),
  ADD KEY `subscriberId` (`subscriberId`),
  ADD KEY `subscriptionTypeId` (`subscriptionTypeId`);

--
-- Index pour la table `subscriptiontypes`
--
ALTER TABLE `subscriptiontypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segmentID` (`segmentID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `groupId` (`groupId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consumptions`
--
ALTER TABLE `consumptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `reclamations`
--
ALTER TABLE `reclamations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `idSale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `subscriptiontypes`
--
ALTER TABLE `subscriptiontypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `consumptions`
--
ALTER TABLE `consumptions`
  ADD CONSTRAINT `consumptions_ibfk_1` FOREIGN KEY (`packageId`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `consumptions_ibfk_2` FOREIGN KEY (`subscriptionId`) REFERENCES `subscriptions` (`id`);

--
-- Contraintes pour la table `eligble_packages`
--
ALTER TABLE `eligble_packages`
  ADD CONSTRAINT `eligble_packages_ibfk_1` FOREIGN KEY (`packageId`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `eligble_packages_ibfk_2` FOREIGN KEY (`subscriptionTypeId`) REFERENCES `subscriptiontypes` (`id`);

--
-- Contraintes pour la table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`subcriptionTypeID`) REFERENCES `subscriptiontypes` (`id`);

--
-- Contraintes pour la table `reclamations`
--
ALTER TABLE `reclamations`
  ADD CONSTRAINT `reclamations_ibfk_1` FOREIGN KEY (`idSubscription`) REFERENCES `subscriptions` (`id`);

--
-- Contraintes pour la table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`MSISDN`) REFERENCES `subscriptions` (`MSISDN`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`operationId`) REFERENCES `packages` (`id`);

--
-- Contraintes pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`subscriberId`) REFERENCES `subscribers` (`id`),
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`subscriptionTypeId`) REFERENCES `subscriptiontypes` (`id`);

--
-- Contraintes pour la table `subscriptiontypes`
--
ALTER TABLE `subscriptiontypes`
  ADD CONSTRAINT `subscriptiontypes_ibfk_1` FOREIGN KEY (`segmentID`) REFERENCES `segments` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
