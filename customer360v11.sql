-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3307
-- Généré le : lun. 15 mai 2023 à 15:34
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
(799554386, 'male', 'New Hayla Bezzef Prepaid_4G (NewHAYLABEZZEF)', '4G', 'ALGER', 'Smartphone', 20, 3, 9, 'High Value', '', '4G', 'Mostly Bundles', 0, 0, 'High Risk', 0, '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0);

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
  `dateActivation` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `consumptions`
--

INSERT INTO `consumptions` (`id`, `subscriptionId`, `packageId`, `remainingSMS`, `remainingData`, `remainingOffnet`, `remainingOnnet`, `dateActivation`) VALUES
(11, 1, 7, 99999, 25, 2000, 44640, '2023-04-28 15:51:04'),
(12, 1, 8, 99999, 10, 1500, 44640, '2023-04-28 15:52:37'),
(13, 1, 6, 99999, 60, 7000, 44640, '2023-04-28 17:54:46'),
(14, 1, 1, 99999, 0.5, 150, 44640, '2023-04-28 18:11:22'),
(15, 17, 7, 99999, 25, 2000, 44640, '2023-05-15 14:08:11'),
(16, 3, 7, 99999, 25, 2000, 44640, '2023-04-12 14:09:13'),
(17, 3, 7, 99999, 25, 2000, 44640, '2023-03-12 14:09:13'),
(18, 3, 7, 99999, 25, 2000, 44640, '2023-01-12 14:09:13'),
(19, 16, 7, 99999, 25, 2000, 44640, '2023-05-15 14:15:35'),
(20, 3, 8, 99999, 10, 1500, 44640, '2023-05-15 14:28:07');

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
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(5, 14),
(5, 15);

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
  `voiceOnnet` float NOT NULL DEFAULT 0,
  `voiceOffnet` float DEFAULT NULL,
  `SMS` int(11) NOT NULL DEFAULT 0,
  `data` float DEFAULT NULL,
  `subcriptionTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `packages`
--

INSERT INTO `packages` (`id`, `packageCode`, `commercialName`, `packageType`, `price`, `voiceOnnet`, `voiceOffnet`, `SMS`, `data`, `subcriptionTypeID`) VALUES
(1, 'NEWHAYLA100BEZZ', 'HAYLA BEZZEF 100', 'BUNDLE', 100, 44640, 150, 99999, 0.5, 3),
(4, 'NEWHAYLA150BEZZ', 'HAYLA BEZZEF 150', 'BUNDLE', 150, 44640, 300, 99999, 2, 3),
(5, 'NEWHAYLA500BEZZ', 'HAYLA BEZZEF 500', 'BUNDLE', 500, 44640, 750, 99999, 3, 3),
(6, 'NEWHAYLA2000BEZZ', 'HAYLA BEZZEF 2000', 'BUNDLE', 2000, 44640, 7000, 99999, 60, 3),
(7, 'NEWHAYLA1500BEZZ', 'HAYLA BEZZEF 1500', 'BUNDLE', 1500, 44640, 2000, 99999, 25, 3),
(8, 'NEWHAYLA1200BEZZ', 'HAYLA BEZZEF 1200', 'BUNDLE', 1200, 44640, 1500, 99999, 10, 3),
(9, 'NEWHAYLA1200MAX', 'HAYLA MAXI 1200', 'BUNDLE', 1200, 44640, 1500, 99999, 10, 4),
(10, 'NEWHAYLA2000MAX', 'HAYLA MAXI 2000', 'BUNDLE', 2000, 44640, 4000, 99999, 60, 4),
(11, 'NEWHAYLA100MAX', 'HAYLA MAXI 100', 'BUNDLE', 100, 44640, 150, 99999, 1, 4),
(12, 'NEWHAYLA1500MAX', 'HAYLA MAXI 1500', 'BUNDLE', 1500, 44640, 2000, 99999, 25, 4),
(13, 'NEWHAYLA500MAX', 'HAYLA MAXI 500', 'BUNDLE', 500, 44640, 750, 99999, 7, 4),
(14, 'low100Value', 'Djezzy ZID 100', 'BUNDLE', 100, 44640, 150, 99999, 1, 5),
(15, 'low1000Value', 'Djezzy ZID 1000', 'BUNDLE', 1000, 44640, 1300, 99999, 10, 5);

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
  `userId` int(11) NOT NULL,
  `MSISDN` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `dateSale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 3, 2, 799554386, 10000),
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
(16, 3, 16, 779797539, 3500),
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
(6, 'youthoffer', 'Offre Jeune', 1),
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
  `managerId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `registration`, `email`, `password`, `groupId`, `managerId`) VALUES
(1, 'Mohamed Rachid', 'Mouci', 1964, 'rachidgames2.rg@gmail.com', '$2y$10$g4CSy236Tn71ZOV0IGZypeO1gCB5e1XahAKAgsM7Gai7QzyY/W/2G', 1, NULL),
(2, 'test', 'testets', 568, 'test@gmail.com', '$2y$10$ig.eT9yaB/F5ZMVM4UWp4eNWJ/G9veN1m3J.dY1/b39SxJ5vDYe8O', 1, NULL),
(3, 'area', 'jhaeufhuaie', 4579, 'yes@gmail.com', '$2y$10$QaRC7xJRCcgGLTmDY3Kuhe0.rf6o1QfpwzMiL0/aSY0jeYaPRF5c2', 1, NULL),
(5, 'Test', 'test again', 111, 'api@gmail.com', '$2y$10$mYOocjD.U8UPvxnDrG0ojey0xCrBTOYBhxybswBqbj7sd1l8uigvO', 1, NULL);

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
  ADD KEY `userId` (`userId`),
  ADD KEY `MSISDN` (`MSISDN`),
  ADD KEY `packageId` (`packageId`);

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
  ADD KEY `managerId` (`managerId`),
  ADD KEY `groupId` (`groupId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consumptions`
--
ALTER TABLE `consumptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `reclamations`
--
ALTER TABLE `reclamations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`packageId`) REFERENCES `packages` (`id`);

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
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`managerId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
