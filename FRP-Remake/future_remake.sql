/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `future_remake` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `future_remake`;

CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `addon_account`;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'caution', 0),
	('property_black_money', 'Argent Sale Propriété', 0),
	('society_advocaat', 'Advocaat', 1),
	('society_advocatuur', 'Advocatuur', 1),
	('society_ambulance', 'EMS', 1),
	('society_anwb', 'Wegenwacht', 1),
	('society_bloodbrothers', 'Bloodbrothers', 1),
	('society_cali', 'Carli Cartel', 1),
	('society_cardealer', 'Future Cardealer', 1),
	('society_carli cartel', 'Carli Cartel', 1),
	('society_carli_cartel', 'Carli Cartel', 1),
	('society_cartel', 'Jalisco Cartel', 1),
	('society_crips', 'Crips', 1),
	('society_dienst speciale interventies', 'dienst speciale interventies', 1),
	('society_dsi', 'Dienst speciale interventies', 1),
	('society_dtmc', 'DTCM', 1),
	('society_fisherman', 'PÃªcheur', 1),
	('society_fueler', 'Raffineur', 1),
	('society_gang_crips', 'Crips', 1),
	('society_Karmellos', 'Karmellos', 1),
	('society_kmar', 'kmar', 1),
	('society_les', 'Les Révoltés ', 1),
	('society_lumberjack', 'BÃ»cheron', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_miner', 'Mineur', 1),
	('society_nar', 'Narcos Cartel', 1),
	('society_offambulance', 'Veiligheidsregio', 1),
	('society_offanwb', 'Wegenwacht', 1),
	('society_offkmar', 'Uitdienst Marechaussee', 1),
	('society_offpolice', 'Politie', 1),
	('society_offpolitie', 'Politie', 1),
	('society_plaza La Fiesta', 'Plaza La Fiesta', 1),
	('society_police', 'Police', 1),
	('society_politie', 'Politie', 1),
	('society_poolcleaner', 'Zwembadschoonmaker', 1),
	('society_postnl', 'PostNL', 1),
	('society_recherche', 'Recherche', 1),
	('society_reporter', 'Journaliste', 1),
	('society_slaughterer', 'Abatteur', 1),
	('society_tabac', 'Tabac', 1),
	('society_tailor', 'Couturier', 1),
	('society_taxi', 'Taxi', 1),
	('society_test', 'test', 1),
	('society_triad', '14K Triad', 1),
	('society_unemployed2', 'Citizen', 1),
	('society_vuilnisman', 'Vuilnisman', 1),
	('society_werkloos', 'Werkloos', 1),
	('society_white ', 'White lotus ', 1);

CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `addon_account_data`;

CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `addon_inventory`;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0),
	('society_advocaat', 'Advocaat', 1),
	('society_advocatuur', 'Advocatuur', 1),
	('society_ambulance', 'EMS', 1),
	('society_anwb', 'Wegenwacht', 1),
	('society_bloodbrothers', 'Bloodbrothers', 1),
	('society_cali', 'Carli Cartel', 1),
	('society_cardealer', 'Future Cardealer', 1),
	('society_carli cartel', 'Carli Cartel', 1),
	('society_carli_cartel', 'Carli Cartel', 1),
	('society_cartel', 'Jalisco Cartel', 1),
	('society_crips', 'Crips', 1),
	('society_dienst speciale interventies', 'dienst speciale interventies', 1),
	('society_dsi', 'Dienst speciale interventies', 1),
	('society_dtmc', 'DTCM', 1),
	('society_fisherman', 'PÃªcheur', 1),
	('society_fueler', 'Raffineur', 1),
	('society_gang_crips', 'Crips', 1),
	('society_Karmellos', 'Karmellos', 1),
	('society_kmar', 'Marechaussee', 1),
	('society_les', 'Les Révoltés ', 1),
	('society_lumberjack', 'BÃ»cheron', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_miner', 'Mineur', 1),
	('society_nar', 'Narcos Cartel', 1),
	('society_offambulance', 'Veiligheidsregio', 1),
	('society_offanwb', 'Wegenwacht', 1),
	('society_offkmar', 'Uitdienst Marechaussee', 1),
	('society_offpolice', 'Politie', 1),
	('society_offpolitie', 'Politie', 1),
	('society_plaza La Fiesta', 'Plaza La Fiesta', 1),
	('society_police', 'Police', 1),
	('society_politie', 'Politie', 1),
	('society_poolcleaner', 'Zwembadschoonmaker', 1),
	('society_postnl', 'PostNL', 1),
	('society_recherche', 'Recherche', 1),
	('society_reporter', 'Journaliste', 1),
	('society_slaughterer', 'Abatteur', 1),
	('society_tabac', 'Tabac', 1),
	('society_tailor', 'Couturier', 1),
	('society_taxi', 'Taxi', 1),
	('society_test', 'test', 1),
	('society_triad', '14K Triad', 1),
	('society_unemployed2', 'Citizen', 1),
	('society_vuilnisman', 'Vuilnisman', 1),
	('society_werkloos', 'Werkloos', 1),
	('society_white ', 'White lotus ', 1);

CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `addon_inventory_items`;

CREATE TABLE IF NOT EXISTS `alemapk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `datum` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `alemapk`;

CREATE TABLE IF NOT EXISTS `alemwok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `alemwok`;

CREATE TABLE IF NOT EXISTS `anticheat_bans` (
  `identifier` varchar(50) NOT NULL,
  `tokens` longtext NOT NULL,
  `reden` longtext NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `anticheat_bans`;

CREATE TABLE IF NOT EXISTS `appartments` (
  `owner` varchar(50) NOT NULL,
  `appartment` varchar(50) NOT NULL,
  `rent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `appartments`;

CREATE TABLE IF NOT EXISTS `banned_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `banned_by` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `banned_players`;

CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `billing`;

CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `cardealer_vehicles`;

CREATE TABLE IF NOT EXISTS `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `communityservice`;

CREATE TABLE IF NOT EXISTS `daily_free` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `next_collect` int(15) NOT NULL,
  `times_collected` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `daily_free`;

CREATE TABLE IF NOT EXISTS `darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` text NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `darkchat_messages`;

CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `datastore`;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Propriété', 0),
	('society_advocaat', 'Advocaat', 1),
	('society_advocatuur', 'Advocatuur', 1),
	('society_ambulance', 'EMS', 1),
	('society_anwb', 'Wegenwacht', 1),
	('society_bloodbrothers', 'Bloodbrothers', 1),
	('society_cali', 'Carli Cartel', 1),
	('society_cardealer', 'Concessionnaire', 1),
	('society_carli cartel', 'Carli Cartel', 1),
	('society_carli_cartel', 'Carli Cartel', 1),
	('society_cartel', 'Jalisco Cartel', 1),
	('society_crips', 'Crips', 1),
	('society_dienst speciale interventies', 'dienst speciale interventies', 1),
	('society_dsi', 'Dienst speciale interventies', 1),
	('society_dtmc', 'DTCM', 1),
	('society_fisherman', 'PÃªcheur', 1),
	('society_fueler', 'Raffineur', 1),
	('society_gang_crips', 'Crips', 1),
	('society_Karmellos', 'Karmellos', 1),
	('society_kmar', 'Marechaussee', 1),
	('society_les', 'Les Révoltés ', 1),
	('society_lumberjack', 'BÃ»cheron', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_miner', 'Mineur', 1),
	('society_nar', 'Narcos Cartel', 1),
	('society_offambulance', 'Veiligheidsregio', 1),
	('society_offanwb', 'Wegenwacht', 1),
	('society_offkmar', 'Uitdienst Marechaussee', 1),
	('society_offpolice', 'Politie', 1),
	('society_offpolitie', 'Politie', 1),
	('society_plaza La Fiesta', 'Plaza La Fiesta', 1),
	('society_police', 'Police', 1),
	('society_politie', 'Politie', 1),
	('society_poolcleaner', 'Zwembadschoonmaker', 1),
	('society_postnl', 'PostNL', 1),
	('society_recherche', 'Recherche', 1),
	('society_reporter', 'Journaliste', 1),
	('society_slaughterer', 'Abatteur', 1),
	('society_tabac', 'Tabac', 1),
	('society_tailor', 'Couturier', 1),
	('society_taxi', 'Taxi', 1),
	('society_test', 'test', 1),
	('society_triad', '14K Triad', 1),
	('society_unemployed2', 'Citizen', 1),
	('society_vuilnisman', 'Vuilnisman', 1),
	('society_werkloos', 'Werkloos', 1),
	('society_white ', 'White lotus ', 1);

CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `datastore_data`;

CREATE TABLE IF NOT EXISTS `druiven_daily` (
  `identifier` varchar(255) NOT NULL,
  `laatst_geclaimed` int(11) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `druiven_daily`;

CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `fine_types`;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0),
	(2, 'Illegally Crossing a continuous Line', 40, 0),
	(3, 'Driving on the wrong side of the road', 250, 0),
	(4, 'Illegal U-Turn', 250, 0),
	(5, 'Illegally Driving Off-road', 170, 0),
	(6, 'Refusing a Lawful Command', 30, 0),
	(7, 'Illegally Stopping a Vehicle', 150, 0),
	(8, 'Illegal Parking', 70, 0),
	(9, 'Failing to Yield to the right', 70, 0),
	(10, 'Failure to comply with Vehicle Information', 90, 0),
	(11, 'Failing to stop at a Stop Sign ', 105, 0),
	(12, 'Failing to stop at a Red Light', 130, 0),
	(13, 'Illegal Passing', 100, 0),
	(14, 'Driving an illegal Vehicle', 100, 0),
	(15, 'Driving without a License', 1500, 0),
	(16, 'Hit and Run', 800, 0),
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
	(21, 'Impeding traffic flow', 110, 1),
	(22, 'Public Intoxication', 90, 1),
	(23, 'Disorderly conduct', 90, 1),
	(24, 'Obstruction of Justice', 130, 1),
	(25, 'Insults towards Civilans', 75, 1),
	(26, 'Disrespecting of an LEO', 110, 1),
	(27, 'Verbal Threat towards a Civilan', 90, 1),
	(28, 'Verbal Threat towards an LEO', 150, 1),
	(29, 'Providing False Information', 250, 1),
	(30, 'Attempt of Corruption', 1500, 1),
	(31, 'Brandishing a weapon in city Limits', 120, 2),
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
	(33, 'No Firearms License', 600, 2),
	(34, 'Possession of an Illegal Weapon', 700, 2),
	(35, 'Possession of Burglary Tools', 300, 2),
	(36, 'Grand Theft Auto', 1800, 2),
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
	(38, 'Frabrication of an Illegal Substance', 1500, 2),
	(39, 'Possession of an Illegal Substance ', 650, 2),
	(40, 'Kidnapping of a Civilan', 1500, 2),
	(41, 'Kidnapping of an LEO', 2000, 2),
	(42, 'Robbery', 650, 2),
	(43, 'Armed Robbery of a Store', 650, 2),
	(44, 'Armed Robbery of a Bank', 1500, 2),
	(45, 'Assault on a Civilian', 2000, 3),
	(46, 'Assault of an LEO', 2500, 3),
	(47, 'Attempt of Murder of a Civilian', 3000, 3),
	(48, 'Attempt of Murder of an LEO', 5000, 3),
	(49, 'Murder of a Civilian', 10000, 3),
	(50, 'Murder of an LEO', 30000, 3),
	(51, 'Involuntary manslaughter', 1800, 3),
	(52, 'Fraud', 2000, 2),
	(53, 'Onnodig claxoneren', 90, 0),
	(54, 'Rijden over een doorgetrokken streep', 240, 0),
	(55, 'Tegen het verkeer in rijden', 140, 0),
	(56, 'Negeren keerverbod (u-turn)', 140, 0),
	(57, 'Niet opvolgen aanwijzing van bevoegd ambtenaar', 110, 0),
	(58, 'Fout parkeren', 95, 0),
	(59, 'Verkeerd voorsorteren', 240, 0),
	(60, 'Rijden met een WOK status ', 300, 0),
	(61, 'Door rood rijden', 240, 0),
	(62, 'Rijden zonder rijbewijs', 340, 0),
	(63, 'Snelheid overtreding < 10km', 112, 0),
	(64, 'Snelheid overtreding 10 - 20km', 202, 0),
	(65, 'Snelheid overtreding 20 - 50km', 670, 0),
	(66, 'Snelheid overtreding > 50km', 1000, 0),
	(67, 'Openbare dronkenschap', 415, 1),
	(68, 'Wanordelijk gedrag', 500, 1),
	(69, 'Hulpdiensten hinderen', 700, 1),
	(70, 'Belediging ambtenaar in functie', 200, 1),
	(71, 'Bedreiging', 980, 1),
	(72, 'Illegaal wapen bezit', 2300, 2),
	(73, 'Illegaal drugs bezit', 400, 2),
	(74, 'Drugshandel', 3000, 3);

CREATE TABLE IF NOT EXISTS `garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `vehicle` longtext NOT NULL,
  `owner` varchar(50) NOT NULL,
  `garageId` varchar(50) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `garage`;

CREATE TABLE IF NOT EXISTS `gasstations` (
  `gas_station_id` int(11) NOT NULL AUTO_INCREMENT,
  `useridentifier` varchar(50) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `stationPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`gas_station_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `gasstations`;
INSERT INTO `gasstations` (`gas_station_id`, `useridentifier`, `coords`, `name`, `type`, `stationPrice`) VALUES
	(1, '0', 'vector3(49.4187, 2778.793, 58.043)', 'Benzinestation', 'Small', 234895),
	(2, '0', 'vector3(263.894, 2606.463, 44.983)', 'Benzinestation', 'Small', 256123),
	(3, '0', 'vector3(1039.958, 2671.134, 39.550)', 'Benzinestation', 'Medium', 309424),
	(4, '0', 'vector3(1207.260, 2660.175, 37.899)', 'Benzinestation', 'Medium', 321969),
	(5, '0', 'vector3(2539.685, 2594.192, 37.944)', 'Benzinestation', 'Small', 204204),
	(6, '0', 'vector3(2679.858, 3263.946, 55.240)', 'Benzinestation', 'Big', 762582),
	(7, '0', 'vector3(2005.055, 3773.887, 32.403)', 'Benzinestation', 'Medium', 398475),
	(8, '0', 'vector3(1687.156, 4929.392, 42.078)', 'Benzinestation', 'Medium', 300000),
	(9, '0', 'vector3(1701.314, 6416.028, 32.763)', 'Benzinestation', 'Big', 759762),
	(10, '0', 'vector3(179.857, 6602.839, 31.868)', 'Benzinestation', 'Luxury', 855000),
	(11, '0', 'vector3(-94.4619, 6419.594, 31.489)', 'Benzinestation', 'Medium', 305321),
	(12, '0', 'vector3(-2554.996, 2334.40, 33.078)', 'Benzinestation', 'Big', 454628),
	(13, '0', 'vector3(-1800.375, 803.661, 138.651)', 'Benzinestation', 'Big', 598895),
	(14, '0', 'vector3(-1437.622, -276.747, 46.207)', 'Benzinestation', 'Big', 596000),
	(15, '0', 'vector3(-2096.243, -320.286, 13.168)', 'Benzinestation', 'Luxury', 856390),
	(16, 'steam:11000014e16b8ca', 'vector3(-724.619, -935.1631, 19.213)', 'Benzinestation', 'Luxury', 932005),
	(17, '0', 'vector3(-526.019, -1211.003, 18.184)', 'Benzinestation', 'Big', 778695),
	(18, '0', 'vector3(-70.2148, -1761.792, 29.534)', 'Benzinestation', 'Luxury', 950987),
	(19, '0', 'vector3(265.648, -1261.309, 29.292)', 'Benzinestation', 'Luxury', 1205669),
	(20, '0', 'vector3(819.653, -1028.846, 26.403)', 'Benzinestation', 'Big', 799439),
	(21, '0', 'vector3(1208.951, -1402.567, 35.224)', 'Benzinestation', 'Medium', 309525),
	(22, '0', 'vector3(1181.381, -330.847, 69.316)', 'Benzinestation', 'Luxury', 975329),
	(23, '0', 'vector3(620.843, 269.100, 103.089)', 'Benzinestation', 'Luxury', 900000),
	(24, 'steam:11000013d77fdd6', 'vector3(2581.321, 362.039, 108.468)', 'Benzinestation', 'Luxury', 855527),
	(25, '0', 'vector3(174.44355773926, -1562.2967529297, 28.573417663574)', 'Benzinestation', 'Small', 295814),
	(26, '0', 'vector3(1362.1949462891, 3594.32421875, 34.22034072876)', 'Benzinestation', 'Medium', 385875),
	(27, '0', 'vector3(-319.69689941406, -1471.4920654297, 30.548606872559)', 'Benzinestation', 'Big', 711061),
	(28, 'false', 'vec3(1785.66, 3330.49, 41.38)', 'Benzinestation', 'NonBuyable', 1000),
	(29, 'false', 'vec3(-796.66931152344, -1502.1166992188, 2.8484375476837)', 'Benzinestation', 'NonBuyable', 1000),
	(30, 'false', 'vec3(4489.6, -4509.5, 4.18)', 'Benzinestation', 'NonBuyable', 1000);

CREATE TABLE IF NOT EXISTS `gksphone_insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` longtext NOT NULL,
  `surname` longtext NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` longtext NOT NULL,
  `avatar_url` longtext DEFAULT NULL,
  `takip` longtext DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

DELETE FROM `gksphone_insto_accounts`;

CREATE TABLE IF NOT EXISTS `gksphone_insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext DEFAULT NULL,
  `message` longtext NOT NULL,
  `image` longtext NOT NULL,
  `filters` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_insto_instas_gksphone_insto_accounts` (`authorId`),
  CONSTRAINT `FK_gksphone_insto_instas_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `gksphone_insto_instas`;

CREATE TABLE IF NOT EXISTS `gksphone_twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` longtext DEFAULT NULL,
  `profilavatar` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

DELETE FROM `gksphone_twitter_accounts`;

CREATE TABLE IF NOT EXISTS `gksphone_yellow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) DEFAULT NULL,
  `firstname` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `message` longtext NOT NULL,
  `image` longtext DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `gksphone_yellow`;

CREATE TABLE IF NOT EXISTS `housing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text DEFAULT '{}',
  `owner` varchar(128) DEFAULT '""',
  `keys` text DEFAULT '{}',
  `storage` text DEFAULT '{}',
  `extra_data` text DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `housing_data`;

CREATE TABLE IF NOT EXISTS `hrp_drugslab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '0',
  `drugs_type` varchar(50) NOT NULL DEFAULT '',
  `drugs_name` varchar(255) NOT NULL DEFAULT '',
  `drugs_coords` longtext DEFAULT NULL,
  `upgrades` int(11) DEFAULT 0,
  `secondusers` longtext DEFAULT NULL,
  `itemlimits` int(11) DEFAULT 0,
  `coordsforblip` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `hrp_drugslab`;

CREATE TABLE IF NOT EXISTS `hrp_drugslab_loodsen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drugs_coords` varchar(50) NOT NULL DEFAULT '0',
  `drugs_type` longtext NOT NULL,
  `buyed` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `hrp_drugslab_loodsen`;

CREATE TABLE IF NOT EXISTS `hrp_drugs_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '0',
  `drugs_name` varchar(50) DEFAULT NULL,
  `drugs_coords` varchar(50) NOT NULL DEFAULT '',
  `drugs_soort` varchar(50) NOT NULL DEFAULT '',
  `item` varchar(50) NOT NULL DEFAULT '',
  `itemlimits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `hrp_drugs_items`;

CREATE TABLE IF NOT EXISTS `hrp_drugs_verwerkteitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT '0',
  `drugs_name` varchar(50) DEFAULT NULL,
  `drugs_coords` varchar(50) NOT NULL DEFAULT '',
  `item` varchar(50) NOT NULL DEFAULT '',
  `itemcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `hrp_drugs_verwerkteitems`;

CREATE TABLE IF NOT EXISTS `hrp_loodsenopslag_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `drugsloods_coords` varchar(50) NOT NULL,
  `drugsloods_type` varchar(50) NOT NULL,
  `wapen` varchar(50) NOT NULL,
  `ammo` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `components` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `hrp_loodsenopslag_weapons`;

CREATE TABLE IF NOT EXISTS `instagram_followers` (
  `username` varchar(50) NOT NULL,
  `followed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `instagram_followers`;

CREATE TABLE IF NOT EXISTS `instagram_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL DEFAULT 'Los Santos',
  `filter` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `instagram_posts`;

CREATE TABLE IF NOT EXISTS `instagram_stories` (
  `owner` varchar(50) NOT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

DELETE FROM `instagram_stories`;

CREATE TABLE IF NOT EXISTS `insta_stories` (
  `username` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `insta_stories`;

CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `items`;
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('aed', 'Lifepack / AED', 1, 0, 1),
	('ak47top', 'AK-47 Top', 10, 0, 1),
	('ammomg', 'MG Ammobox', 1, 0, 1),
	('ammomgpolitie', 'MG Ammobox (Politie)', 1, 0, 1),
	('ammopistol', '.45 ACP Munitie (Pistool)', 1, 0, 1),
	('ammopistolfmj', '.45 ACP Munitie (FMJ)(Pistool)', 1, 0, 1),
	('ammopistolhollow', '.45 ACP Munitie (Hollowpoint)(Pistool)', 1, 0, 1),
	('ammopistolpolitie', '9x19mm Munitie (Pistool) (Politie)', 1, 0, 1),
	('ammorifle', '5.45x39mm Munitie (AK)', 1, 0, 1),
	('ammoriflefmj', '5.45x39mm Munitie (FMJ)(AK)', 1, 0, 1),
	('ammoriflepolitie', '5.56x45mm Munitie (M4) (Politie)', 1, 0, 1),
	('ammoshotgun', '12-gauge Munitie', 1, 0, 1),
	('ammoshotgunpolitie', '12-gauge Munitie (Politie)', 1, 0, 1),
	('ammosmg', '9x18mm Munitie (SMG)', 1, 0, 1),
	('ammosmgpolitie', '9x18mm Munitie (SMG) (Politie)', 1, 0, 1),
	('ammosniper', '.50mm Munitie (Sniper)', 1, 0, 1),
	('ammosniperpolitie', '7.62mm Munitie (Sniper) (Politie)', 1, 0, 1),
	('amnesiatop', 'Amnesia Top', 10, 0, 1),
	('baking_soda', 'Baking Soda', 1, 0, 1),
	('bandage', 'Bandage', 2, 0, 1),
	('black_phone', 'Black Phone', 10, 0, 1),
	('blue_phone', 'Blue Phone', 10, 0, 1),
	('brandzalf', 'Brandzalf', 1, 0, 1),
	('burncream', 'Burn Cream', 1, 0, 1),
	('candyhazetop', 'Candy Haze Top', 10, 0, 1),
	('classic_phone', 'Classic Phone', 10, 0, 1),
	('coke', 'coke', 3, 0, 1),
	('coke_access', 'Access card', 1, 0, 1),
	('coke_box', 'Box with Coke', 1, 0, 1),
	('coke_figure', 'Action Figure', 1, 0, 1),
	('coke_figurebroken', 'Pieces of Action Figure', 1, 0, 1),
	('coke_figureempty', 'Action Figure', 1, 0, 1),
	('coke_leaf', 'Coca Leaf', 1, 0, 1),
	('coke_pure', 'Pure Coke', 1, 0, 1),
	('coke_raw', 'Raw Coke', 1, 0, 1),
	('coolpack', 'Coolpack', 1, 0, 1),
	('crack', 'Crack', 1, 0, 1),
	('crack_pipe', 'Crack Pipe', 1, 0, 1),
	('defib', 'Defibrillator', 1, 0, 1),
	('ecstasy1', 'Ecstasy', 1, 0, 1),
	('ecstasy2', 'Ecstasy', 1, 0, 1),
	('ecstasy3', 'Ecstasy', 1, 0, 1),
	('ecstasy4', 'Ecstasy', 1, 0, 1),
	('ecstasy5', 'Ecstasy', 1, 0, 1),
	('g13top', 'G13 Top', 10, 0, 1),
	('glue', 'Glue', 1, 0, 1),
	('gold_phone', 'Gold Phone', 10, 0, 1),
	('greenlight_phone', 'Green Light Phone', 10, 0, 1),
	('green_phone', 'Green Phone', 10, 0, 1),
	('hammer', 'Hammer', 1, 0, 1),
	('hechten', 'Hechtkit', 1, 0, 1),
	('heroin', 'Heroin', 1, 0, 1),
	('heroin_syringe', 'Heroin Syringe', 1, 0, 1),
	('icepack', 'Ice Pack', 1, 0, 1),
	('jewels', 'Jewels', 1, 0, 1),
	('lsd1', 'LSD', 1, 0, 1),
	('lsd2', 'LSD', 1, 0, 1),
	('lsd3', 'LSD', 1, 0, 1),
	('lsd4', 'LSD', 1, 0, 1),
	('lsd5', 'LSD', 1, 0, 1),
	('magicmushroom', 'Mushroom', 1, 0, 1),
	('marijuana', 'Marijuana', 2, 0, 1),
	('medbag', 'Medical Bag', 1, 0, 1),
	('medikit', 'Medkit', 1, 0, 1),
	('medkit', 'Medische Kit', 1, 0, 1),
	('medtas', 'Medische Tas', 1, 0, 1),
	('meth_access', 'Access card', 1, 0, 1),
	('meth_amoniak', 'Ammonia', 1, 0, 1),
	('meth_bag', 'Meth bag', 1, 0, 1),
	('meth_emptysacid', 'Empty Canister', 1, 0, 1),
	('meth_glass', 'Tray with meth', 1, 0, 1),
	('meth_pipe', 'Meth Pipe', 1, 0, 1),
	('meth_sacid', 'Sodium Benzoate Canister', 1, 0, 1),
	('meth_sharp', 'Tray with smashed meth', 1, 0, 1),
	('meth_syringe', 'Meth Syringe', 1, 0, 1),
	('phone_hack', 'Phone Hack', 10, 0, 1),
	('phone_module', 'Phone Module', 10, 0, 1),
	('pincet', 'Pincet', 1, 0, 1),
	('pink_phone', 'Pink Phone', 10, 0, 1),
	('plastic_bag', 'Plastic bag', 1, 0, 1),
	('plushberrytop', 'Plushberry Top', 10, 0, 1),
	('poppyplant', 'Poppy Plant', 1, 0, 1),
	('powerbank', 'Power Bank', 10, 0, 1),
	('red_phone', 'Red Phone', 10, 0, 1),
	('scale', 'Scale', 1, 0, 1),
	('scissors', 'Scissors', 1, 0, 1),
	('sedative', 'Sedative', 1, 0, 1),
	('silverhazetop', 'Silver Haze Top', 10, 0, 1),
	('suturekit', 'Suture Kit', 1, 0, 1),
	('syringe', 'Syringe', 1, 0, 1),
	('trowel', 'Trowel', 1, 0, 1),
	('tweezers', 'Tweezers', 1, 0, 1),
	('verdoving', 'Verdovend middel', 1, 0, 1),
	('weed_access', 'Access card', 1, 0, 1),
	('weed_blunt', 'Blunt', 1, 0, 1),
	('weed_bud', 'Weed Bud', 1, 0, 1),
	('weed_budclean', 'Weed Bud', 1, 0, 1),
	('weed_joint', 'Joint', 1, 0, 1),
	('weed_package', 'Weed Bag', 1, 0, 1),
	('weed_papers', 'Weed papers', 1, 0, 1),
	('weed_wrap', 'Blunt wraps', 1, 0, 1),
	('wet_black_phone', 'Wet Black Phone', 10, 0, 1),
	('wet_blue_phone', 'Wet Blue Phone', 10, 0, 1),
	('wet_classic_phone', 'Wet Classic Phone', 10, 0, 1),
	('wet_gold_phone', 'Wet Gold Phone', 10, 0, 1),
	('wet_greenlight_phone', 'Wet Green Light Phone', 10, 0, 1),
	('wet_green_phone', 'Wet Green Phone', 10, 0, 1),
	('wet_phone', 'Wet Phone', 10, 0, 1),
	('wet_pink_phone', 'Wet Pink Phone', 10, 0, 1),
	('wet_red_phone', 'Wet Red Phone', 10, 0, 1),
	('wet_white_phone', 'Wet White Phone', 10, 0, 1),
	('white_phone', 'White Phone', 10, 0, 1),
	('xanaxpack', 'Pack of Xanax', 1, 0, 1),
	('xanaxpill', 'Xanax pill', 1, 0, 1),
	('xanaxplate', 'Plate of Xanax', 1, 0, 1);

CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `enable_billing` int(1) DEFAULT 0,
  `can_rob` int(1) DEFAULT 0,
  `can_handcuff` int(1) DEFAULT 0,
  `can_lockpick_cars` int(1) DEFAULT 0,
  `can_wash_vehicles` int(1) DEFAULT 0,
  `can_repair_vehicles` int(1) DEFAULT 0,
  `can_impound_vehicles` int(1) DEFAULT 0,
  `can_check_identity` int(1) DEFAULT 0,
  `can_check_vehicle_owner` int(1) DEFAULT 0,
  `SecondaryJob` tinyint(1) NOT NULL DEFAULT 0,
  `can_check_driving_license` int(1) DEFAULT 0,
  `can_check_weapon_license` int(1) DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `jobs`;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `enable_billing`, `can_rob`, `can_handcuff`, `can_lockpick_cars`, `can_wash_vehicles`, `can_repair_vehicles`, `can_impound_vehicles`, `can_check_identity`, `can_check_vehicle_owner`, `SecondaryJob`, `can_check_driving_license`, `can_check_weapon_license`) VALUES
	('advocaat', 'Advocaat', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('advocatuur', 'Advocatuur', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('ambulance', 'Ambulance', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('anwb', 'Wegenwacht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('bloodbrothers', 'Bloodbrothers', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('cali', 'Carli Cartel', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('cardealer', 'Concessionnaire', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('cartel', 'Jalisco Cartel', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('crips', 'Crips', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('dsi', 'Dienst Speciale Interventies', 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
	('dtmc', 'DTMC', 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0),
	('fisherman', 'Visser', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('fueler', 'Tanker', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('gang_jalisco', 'Jalisco Cartel', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('js_vluchten', 'Jachtseizoen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('js_zoeken', 'Jachtseizoen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('kmar', 'Marechaussee', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('les', 'Les Révoltés ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('lumberjack', 'Houthakker', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('luxury', 'Luxury', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('miner', 'Mijner', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('nar', 'Narcos Cartel', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('offambulance', 'Uitdienst Ambulance', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('offanwb', 'Uitdienst ANWB', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('offkmar', 'Uitdienst Marechaussee', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('offpolitie', 'Politie', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('offvliegschool', 'Vliegschool uit dienst', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('peaky', 'Peaky Blinders', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('pitstop', 'Pitstop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('plaza La Fiesta', 'Plaza La Fiesta', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('politie', 'Politie', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('poolcleaner', 'Zwembadschoonmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('postnl', 'PostNL', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('recherche', 'Recherche', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('reporter', 'Journaliste', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('slaughterer', 'Slachter', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('tabac', 'Tabac', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('tailor', 'Couturier', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('taxi', 'Taxi', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('technician', 'Elektricien', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('triad', '14K Triad', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('unemployed2', 'Werkloos', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('vliegschool', 'Vliegschool', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('vuilnisman', 'Vuilnisman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('wapendealer', 'Wapendealer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('werkloos', 'Werkloos', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE IF NOT EXISTS `jobs_armories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weapon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ammo` int(10) unsigned NOT NULL,
  `tint` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `identifier` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`,`marker_id`,`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `jobs_armories`;

CREATE TABLE IF NOT EXISTS `jobs_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coords` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `min_grade` smallint(6) NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blip_id` int(11) DEFAULT NULL,
  `blip_color` int(11) DEFAULT 0,
  `blip_scale` float DEFAULT 1,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marker_type` int(11) DEFAULT 1,
  `marker_scale_x` float DEFAULT 1.5,
  `marker_scale_y` float DEFAULT 1.5,
  `marker_scale_z` float DEFAULT 0.5,
  `marker_color_red` int(3) DEFAULT 150,
  `marker_color_green` int(3) DEFAULT 150,
  `marker_color_blue` int(3) DEFAULT 0,
  `marker_color_alpha` int(3) DEFAULT 50,
  `ped` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ped_heading` float DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `jobs_data`;

CREATE TABLE IF NOT EXISTS `jobs_garages` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marker_id` int(11) NOT NULL,
  `vehicle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `vehicle_props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`) USING BTREE,
  KEY `identifier` (`identifier`,`marker_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `jobs_garages`;

CREATE TABLE IF NOT EXISTS `jobs_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker_id` int(11) NOT NULL,
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `marker_id` (`marker_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `jobs_shops`;

CREATE TABLE IF NOT EXISTS `jobs_wardrobes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) NOT NULL,
  `label` varchar(50) NOT NULL,
  `outfit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `jobs_wardrobes`;

CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `job_grades`;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'werkloos', 1, 'werkloos', 'Werkloos', 200, '{}', '{}'),
	(2, 'politie', 1, 'aspirant', 'Aspirant', 765, '{}', '{}'),
	(3, 'politie', 2, 'surveillant', 'Surveillant', 900, '{}', '{}'),
	(4, 'politie', 3, 'agent', 'Agent', 1000, '{}', '{}'),
	(5, 'politie', 4, 'hagent', 'Hoofd Agent', 1135, '{}', '{}'),
	(6, 'politie', 5, 'brigadier', 'Brigadier', 1260, '{}', '{}'),
	(7, 'politie', 6, 'inspecteur', 'Inspecteur', 1385, '{}', '{}'),
	(8, 'politie', 7, 'hinspecteur', 'Hoofd Inspecteur', 1500, '{}', '{}'),
	(9, 'politie', 8, 'commissaris', 'Commissaris', 1750, '{}', '{}'),
	(10, 'politie', 9, 'hcommissaris', 'H. Commissaris', 1865, '{}', '{}'),
	(11, 'politie', 10, 'eerste_hoofdcommissaris', 'E.H. Commissaris', 2000, '{}', '{}'),
	(12, 'politie', 10, 'E.H Commissaris', 'E.H. Commissaris', 2000, '{}', '{}'),
	(13, 'offpolitie', 1, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(14, 'offpolitie', 2, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(15, 'offpolitie', 3, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(17, 'ambulance', 1, 'opio', 'In opleiding', 1100, '{}', '{}'),
	(18, 'ambulance', 2, 'chauffeur', 'Chauffeur', 1255, '{}', '{}'),
	(19, 'ambulance', 3, 'verpleegkundige', 'Verpleegkundige', 1335, '{}', '{}'),
	(20, 'ambulance', 4, 'specialist', 'Specialist', 1485, '{}', '{}'),
	(21, 'ambulance', 5, 'geneeskundige', 'Geneeskundige', 1565, '{}', '{}'),
	(22, 'ambulance', 6, 'assistenthg', 'Assistent Hoofd Geneeskundige', 1695, '{}', '{}'),
	(23, 'ambulance', 7, 'hoofdgeneesk', 'Hoofd Geneeskundige', 1800, '{}', '{}'),
	(24, 'offambulance', 1, 'opio', 'In opleiding', 550, '{}', '{}'),
	(25, 'offambulance', 2, 'chauffeur', 'Chauffeur', 665, '{}', '{}'),
	(26, 'offambulance', 3, 'verpleegkundige', 'Verpleegkundige', 730, '{}', '{}'),
	(27, 'offambulance', 4, 'specialist', 'Specialist', 845, '{}', '{}'),
	(28, 'offambulance', 5, 'geneeskundige', 'Geneeskundige', 935, '{}', '{}'),
	(29, 'offambulance', 6, 'assistenthg', 'Assistent Hoofd Geneeskundige', 1015, '{}', '{}'),
	(30, 'offambulance', 7, 'hoofdgeneesk', 'Hoofd Geneeskundige', 1100, '{}', '{}'),
	(31, 'anwb', 1, 'leerling', 'Leerling autotechnicus', 865, '{}', '{}'),
	(32, 'anwb', 2, 'derdetechnicus', '3e Autotechnicus', 900, '{}', '{}'),
	(33, 'anwb', 3, 'tweedetechnicus', '2e Autotechnicus', 975, '{}', '{}'),
	(34, 'anwb', 4, 'eerstetechnicus', '1e Autotechnicus', 1065, '{}', '{}'),
	(35, 'anwb', 5, 'teamleider', 'Teamleider', 1085, '{}', '{}'),
	(36, 'anwb', 6, 'manager', 'Manager', 1125, '{}', '{}'),
	(37, 'offanwb', 1, 'leerling', 'Leerling autotechnicus', 0, '{}', '{}'),
	(38, 'offanwb', 2, 'derdetechnicus', '3e Autotechnicus', 0, '{}', '{}'),
	(39, 'offanwb', 3, 'tweedetechnicus', '2e Autotechnicus', 0, '{}', '{}'),
	(40, 'offanwb', 4, 'eerstetechnicus', '1e Autotechnicus', 0, '{}', '{}'),
	(41, 'offanwb', 5, 'teamleider', 'Teamleider', 0, '{}', '{}'),
	(42, 'offanwb', 6, 'manager', 'Manager', 0, '{}', '{}'),
	(46, 'advocatuur', 1, 'advocaat', 'Advocaat', 0, '{}', '{}'),
	(47, 'advocatuur', 2, 'Eigenaar', 'Eigenaar', 0, '{}', '{}'),
	(48, 'vuilnisman', 1, 'medewerker', 'Medewerker', 750, '{}', '{}'),
	(49, 'postnl', 1, 'medewerker', 'Medewerker', 750, '{}', '{}'),
	(50, 'poolcleaner', 1, 'medewerker', 'Medewerker', 750, '{}', '{}'),
	(51, 'crips', 1, 'boss', 'Boss', 10, '{}', '{}'),
	(217, 'unemployed2', 0, 'unemployed2', 'Unemployed', 20, '{}', '{}'),
	(248, 'unemployed2', 0, 'unemployed2', 'unemployed2', 20, '{}', '{}'),
	(249, 'offpolitie', 4, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(251, 'offpolitie', 5, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(252, 'offpolitie', 6, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(254, 'offpolitie', 7, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(255, 'offpolitie', 8, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(257, 'offpolitie', 9, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(258, 'offpolitie', 10, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(260, 'offpolitie', 10, 'Uitdienst', 'Uitdienst', 0, '{}', '{}'),
	(266, 'tabac', 0, 'recrut', 'Employer', 20, '{}', '{}'),
	(267, 'tabac', 1, 'farm', 'Farmeur', 40, '{}', '{}'),
	(268, 'tabac', 2, 'transformer', 'Transformeur', 60, '{}', '{}'),
	(269, 'tabac', 3, 'boss', 'Patron', 85, '{}', '{}'),
	(275, 'dsi', 1, ' Tryout', 'Tryout', 0, '', ''),
	(279, 'dsi', 3, 'Commandant', 'Commandant', 0, '', ''),
	(280, 'dsi', 2, 'Operator', 'Operator', 0, '', ''),
	(282, 'kmar', 0, 'klasse4', '4de klasse', 1500, '{}', '{}'),
	(283, 'kmar', 1, 'klasse3', '3de klasse', 20812, '{}', '{}'),
	(284, 'kmar', 2, 'klasse2', '2de klasse', 1500, '{}', '{}'),
	(285, 'kmar', 3, 'klasse1', '1ste klasse', 1500, '{}', '{}'),
	(286, 'kmar', 4, 'wachtmeester', 'Wachtmeester', 1500, '{}', '{}'),
	(287, 'kmar', 5, 'opperwachtmeester', 'Opperwachtmeester', 1500, '{}', '{}'),
	(288, 'kmar', 6, 'onderofficier', 'Onderofficier', 1500, '{}', '{}'),
	(289, 'kmar', 7, 'eersteluitenant', 'Eerste luitenant', 800, '{}', '{}'),
	(290, 'kmar', 8, 'kolonel', 'Kolonel', 1500, '{}', '{}'),
	(291, 'kmar', 9, 'generaalmajoor', 'Generaal Majoor', 1900, '{}', '{}'),
	(292, 'kmar', 10, 'boss', 'Luitenant Generaal', 4000, '{}', '{}'),
	(293, 'kmar', 11, 'bsb', 'BSB', 2333, '{}', '{}'),
	(294, 'kmar', 0, 'klasse4', '4de klasse', 20, '{}', '{}'),
	(295, 'kmar', 1, 'klasse3', '3de klasse', 20, '{}', '{}'),
	(296, 'kmar', 2, 'klasse2', '2de klasse', 40, '{}', '{}'),
	(297, 'kmar', 3, 'klasse1', '1ste klasse', 60, '{}', '{}'),
	(298, 'kmar', 4, 'wachtmeester', 'Wachtmeester', 20, '{}', '{}'),
	(299, 'kmar', 5, 'opperwachtmeester', 'Opperwachtmeester', 20, '{}', '{}'),
	(300, 'kmar', 6, 'onderofficier', 'Onderofficier', 20, '{}', '{}'),
	(301, 'kmar', 7, 'eersteluitenant', 'Eerste luitenant', 800, '{}', '{}'),
	(302, 'kmar', 8, 'kolonel', 'Kolonel', 850, '{}', '{}'),
	(303, 'kmar', 9, 'generaalmajoor', 'Generaal Majoor', 950, '{}', '{}'),
	(304, 'kmar', 10, 'boss', 'Luitenant Generaal', 1000, '{}', '{}'),
	(305, 'kmar', 11, 'bsb', 'BSB', 1200, '{}', '{}'),
	(306, 'kmar', 0, 'klasse4', '4de klasse', 20, '{}', '{}'),
	(307, 'kmar', 1, 'klasse3', '3de klasse', 20, '{}', '{}'),
	(308, 'kmar', 2, 'klasse2', '2de klasse', 40, '{}', '{}'),
	(309, 'kmar', 3, 'klasse1', '1ste klasse', 60, '{}', '{}'),
	(310, 'kmar', 4, 'wachtmeester', 'Wachtmeester', 20, '{}', '{}'),
	(311, 'kmar', 5, 'opperwachtmeester', 'Opperwachtmeester', 20, '{}', '{}'),
	(312, 'kmar', 6, 'onderofficier', 'Onderofficier', 20, '{}', '{}'),
	(313, 'kmar', 7, 'eersteluitenant', 'Eerste luitenant', 800, '{}', '{}'),
	(314, 'kmar', 8, 'kolonel', 'Kolonel', 850, '{}', '{}'),
	(315, 'kmar', 9, 'generaalmajoor', 'Generaal Majoor', 950, '{}', '{}'),
	(316, 'kmar', 10, 'boss', 'Luitenant Generaal', 1000, '{}', '{}'),
	(317, 'kmar', 11, 'bsb', 'BSB', 1200, '{}', '{}'),
	(322, 'unemployed2', 0, 'unemployed2', 'Unemployed', 20, '{}', '{}'),
	(323, 'unemployed2', 0, 'rsa', 'Secondaire', 0, '{}', '{}'),
	(324, 'unemployed2', 0, 'rsa', 'Secondaire', 0, '{}', '{}'),
	(325, 'lumberjack', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(326, 'fisherman', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(327, 'fueler', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(328, 'reporter', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(329, 'tailor', 0, 'employee', 'IntÃ©rimaire', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(330, 'miner', 0, 'employee', 'IntÃ©rimaire', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(331, 'slaughterer', 0, 'employee', 'IntÃ©rimaire', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(332, 'lumberjack', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(333, 'fisherman', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(334, 'fueler', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(335, 'reporter', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
	(336, 'tailor', 0, 'employee', 'IntÃ©rimaire', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(337, 'miner', 0, 'employee', 'IntÃ©rimaire', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(338, 'slaughterer', 0, 'employee', 'IntÃ©rimaire', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(339, 'unemployed2', 0, 'rsa', 'Secondaire', 0, '{}', '{}'),
	(340, 'unemployed2', 0, 'rsa', 'Secondaire', 0, '{}', '{}'),
	(341, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
	(342, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(343, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
	(344, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
	(345, 'recherche', 1, 'rechercheur', 'Rechercheur', 0, '', ''),
	(346, 'recherche', 2, 'hrechercheur', 'Hoofd-Rechercheur', 0, '', ''),
	(382, 'plaza La Fiesta', 0, 'Beveiliging', 'Beveiliging', 0, '', ''),
	(383, 'plaza La Fiesta', 1, 'DeeJay', 'DeeJay', 0, '', ''),
	(384, 'plaza La Fiesta', 2, 'Hoofd DeeJay', 'Hoofd DeeJay', 0, '', ''),
	(385, 'plaza La Fiesta', 3, 'Co-Founder', 'Co-Founder', 0, '', ''),
	(386, 'plaza La Fiesta', 4, 'Founder', 'Founder', 0, '', ''),
	(387, 'crips', 0, '𝓖𝓸𝓸𝓷', '𝓖𝓸𝓸𝓷', 0, '', ''),
	(388, 'crips', 1, '𝓖𝓪𝓷𝓼𝓽𝓮𝓻', '𝓖𝓪𝓷𝓼𝓽𝓮𝓻', 0, '', ''),
	(389, 'crips', 2, '𝓞𝓻𝓲𝓰𝓲𝓷𝓪𝓵 𝓖𝓪𝓷𝓼𝓽𝓮𝓻', '𝓞𝓻𝓲𝓰𝓲𝓷𝓪𝓵 𝓖𝓪𝓷𝓼𝓽𝓮𝓻', 0, '', ''),
	(390, 'crips', 3, '𝓱𝓲𝓽𝓽𝓮𝓻', '𝓱𝓲𝓽𝓽𝓮𝓻', 0, '', ''),
	(391, 'crips', 4, '𝓗𝓮𝓪𝓭 𝓱𝓲𝓽𝓽𝓮𝓻', '𝓗𝓮𝓪𝓭 𝓱𝓲𝓽𝓽𝓮𝓻', 0, '', ''),
	(392, 'crips', 5, '𝓒𝓪𝓹𝓽𝓪𝓲𝓷', '𝓒𝓪𝓹𝓽𝓪𝓲𝓷', 0, '', ''),
	(393, 'crips', 6, '𝓢𝓮𝓬𝓻𝓮𝓽𝓪𝓻𝔂', '𝓢𝓮𝓬𝓻𝓮𝓽𝓪𝓻𝔂', 0, '', ''),
	(394, 'crips', 6, '𝓤𝓷𝓭𝓮𝓻 𝓫𝓸𝓼𝓼', '𝓤𝓷𝓭𝓮𝓻 𝓫𝓸𝓼𝓼', 0, '', ''),
	(395, 'crips', 7, '𝓑𝓸𝓼𝓼', '𝓑𝓸𝓼𝓼', 0, '', ''),
	(396, 'offkmar', 0, 'klasse4', 'uitdienst', 0, '{}', '{}'),
	(397, 'offkmar', 1, 'klasse3', 'uitdienst', 0, '{}', '{}'),
	(398, 'offkmar', 2, 'klasse2', 'uitdienst', 0, '{}', '{}'),
	(399, 'offkmar', 3, 'klasse1', 'uitdienst', 0, '{}', '{}'),
	(400, 'offkmar', 4, 'wachtmeester', 'uitdienst', 0, '{}', '{}'),
	(401, 'offkmar', 5, 'opperwachtmeester', 'uitdienst', 0, '{}', '{}'),
	(402, 'offkmar', 6, 'onderofficier', 'uitdienst', 0, '{}', '{}'),
	(403, 'offkmar', 7, 'eersteluitenant', 'uitdienst', 0, '{}', '{}'),
	(404, 'offkmar', 8, 'kolonel', 'uitdienst', 0, '{}', '{}'),
	(405, 'offkmar', 9, 'generaalmajoor', 'uitdienst ', 0, '{}', '{}'),
	(406, 'offkmar', 10, 'boss', 'uitdienstl', 0, '{}', '{}'),
	(407, 'offkmar', 11, 'bsb', 'uitdienst', 0, '{}', '{}'),
	(408, 'dtmc', 1, 'loopjongen', 'loopjongen', 1, '{}', '{}'),
	(409, 'dtmc', 2, 'Shooter', 'Shooter', 2, '{}', '{}'),
	(410, 'dtmc', 3, 'Hitman', 'Hitman', 3, '{}', '{}'),
	(415, 'dtmc', 4, 'Biker', 'Biker', 4, '{}', '{}'),
	(416, 'dtmc', 5, 'Head- Biker', 'Head- Biker', 5, '{}', '{}'),
	(417, 'dtmc', 6, 'Underboss', 'Underboss', 6, '{}', '{}'),
	(418, 'dtmc', 7, 'Boss', 'Boss', 6, '{}', '{}'),
	(419, 'les', 1, 'Nettoyeur', 'Nettoyeur', 1, '', ''),
	(420, 'les', 2, 'Garcon', 'Garcon', 1, '', ''),
	(421, 'les', 3, 'Capo', 'Capo', 1, '', ''),
	(422, 'les', 4, 'Employe', 'Employe', 1, '', ''),
	(423, 'les', 5, 'Conselieure', 'Conselieure', 1, '', ''),
	(424, 'les', 6, 'Commadant', 'Commadant', 1, '', ''),
	(425, 'les', 7, 'Fondateur', 'Fondateur', 1, '', ''),
	(426, 'dtmc', 1, 'loopjongen', 'loopjongen', 1, '{}', '{}'),
	(427, 'dtmc', 2, 'shooter', 'Shooter', 1, '{}', '{}'),
	(428, 'bloodbrothers', 0, '𝓟𝓻𝓸𝓼𝓹𝓮𝓬𝓽', '𝓟𝓻𝓸𝓼𝓹𝓮𝓬𝓽', 1, '{}', '{}'),
	(429, 'bloodbrothers', 1, '𝓜𝓮𝓶𝓫𝓮𝓻', '𝓜𝓮𝓶𝓫𝓮𝓻', 1, '{}', '{}'),
	(430, 'bloodbrothers', 2, '𝓕𝓾𝓵𝓵 𝓜𝓮𝓶𝓫𝓮𝓻', '𝓕𝓾𝓵𝓵 𝓜𝓮𝓶𝓫𝓮𝓻', 1, '{}', '{}'),
	(431, 'bloodbrothers', 3, '𝓣𝓪𝓲𝓵 𝓖𝓾𝓷𝓷𝓮𝓻', '𝓣𝓪𝓲𝓵 𝓖𝓾𝓷𝓷𝓮𝓻', 1, '{}', '{}'),
	(432, 'bloodbrothers', 4, '𝓢𝓖𝓣 𝓐𝓽 𝓐𝓻𝓶𝓼', '𝓢𝓖𝓣 𝓐𝓽 𝓐𝓻𝓶𝓼', 1, '{}', '{}'),
	(433, 'bloodbrothers', 5, '𝓡𝓸𝓪𝓭 𝓒𝓪𝓹𝓽𝓪𝓲𝓷', '𝓡𝓸𝓪𝓭 𝓒𝓪𝓹𝓽𝓪𝓲𝓷', 1, '{}', '{}'),
	(434, 'bloodbrothers', 6, '𝓣𝓻𝓮𝓪𝓼𝓾𝓻𝓮𝓻', '𝓣𝓻𝓮𝓪𝓼𝓾𝓻𝓮𝓻', 1, '{}', '{}'),
	(435, 'bloodbrothers', 7, '𝓢𝓮𝓬𝓻𝓮𝓽𝓪𝓻𝔂', '𝓢𝓮𝓬𝓻𝓮𝓽𝓪𝓻𝔂', 1, '{}', '{}'),
	(436, 'bloodbrothers', 8, '𝓥𝓲𝓬𝓮 𝓟𝓻𝓮𝓼𝓲𝓭𝓮𝓷𝓽', '𝓥𝓲𝓬𝓮 𝓟𝓻𝓮𝓼𝓲𝓭𝓮𝓷𝓽', 1, '{}', '{}'),
	(437, 'bloodbrothers', 9, '𝓟𝓻𝓮𝓼𝓲𝓭𝓮𝓷𝓽', '𝓟𝓻𝓮𝓼𝓲𝓭𝓮𝓷𝓽', 1, '{}', '{}'),
	(438, 'cali', 0, 'Recadero ', 'Recadero ', 1, '{}', '{}'),
	(439, 'cali', 1, 'Miembro ', 'Miembro ', 1, '{}', '{}'),
	(440, 'cali', 2, 'Tirador ', 'Tirador ', 1, '{}', '{}'),
	(441, 'cali', 3, 'Sicario ', 'Sicario ', 1, '{}', '{}'),
	(442, 'cali', 4, 'Subjefe ', 'Subjefe ', 1, '{}', '{}'),
	(443, 'cali', 5, 'Jefe ', 'Jefe ', 1, '{}', '{}'),
	(444, 'triad', 1, 'Rice Picker', 'Rice Picker', 1, '', ''),
	(446, 'triad', 3, '  Red Pole', ' Red Pole', 1, '', ''),
	(447, 'triad', 4, 'Master', 'Master', 1, '', ''),
	(448, 'triad', 5, 'Guard', 'Guard', 1, '', ''),
	(449, 'triad', 6, 'Vanguard', 'Vanguard', 1, '', ''),
	(450, 'triad', 7, 'Deputy Mountain', 'Deputy Mountain', 1, '', ''),
	(451, 'triad', 8, 'Dragon Tail', 'Dragon Tail', 1, '', ''),
	(452, 'triad', 9, ' Guandad Master', ' Guandad Master', 1, '', ''),
	(453, 'triad', 10, 'Dragon head', 'Dragon head', 1, '', ''),
	(454, 'triad', 11, 'Moutain Master', 'Moutain Master', 1, '', ''),
	(455, 'advocaat', 0, 'Stagair', 'Stagair', 500, '{}', '{}'),
	(456, 'advocaat', 1, 'Junior Partner', 'Junior Partner', 600, '{}', '{}'),
	(457, 'advocaat', 3, 'Senior Partner', 'Senior Partner', 800, '{}', '{}'),
	(458, 'nar', 1, 'Seguace', 'Seguace', 0, '{}', '{}'),
	(459, 'nar', 2, 'Elemento', 'Elemento', 0, '{}', '{}'),
	(460, 'nar', 3, 'Tiera', 'Tiera', 0, '{}', '{}'),
	(461, 'nar', 4, 'Familiaridad', 'Familiaridad', 0, '{}', '{}'),
	(462, 'nar', 5, 'Ayudante', 'Ayudante', 0, '{}', '{}'),
	(463, 'nar', 6, 'Ayudante', 'Ayudante', 0, '{}', '{}'),
	(464, 'nar', 7, 'Jefe ', 'Jefe ', 0, '{}', '{}'),
	(467, 'cartel', 1, 'member', 'member', 0, '', ''),
	(468, 'cartel', 2, 'shooter', 'shooter', 0, '', ''),
	(469, 'cartel', 3, 'hitman', 'hitman', 0, '', ''),
	(470, 'cartel', 4, 'underboss', 'underboss', 0, '', ''),
	(471, 'cartel', 5, 'Boss', 'Boss', 0, '', ''),
	(472, 'js_zoeken', 1, 'Team Annas', 'Team Annas', 0, '', ''),
	(473, 'js_vluchten', 1, 'Boef', 'Boef', 0, '', ''),
	(474, 'taxi', 0, 'recrue', 'Werknemer', 12, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(475, 'taxi', 1, 'novice', 'Chauffeur', 24, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(476, 'taxi', 2, 'experimente', 'Ervaren Chauffeur', 36, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(477, 'taxi', 3, 'uber', 'Uber', 48, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(478, 'taxi', 4, 'boss', 'Baas', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(479, 'gang_jalisco', 1, 'Recluta', 'Recluta', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(480, 'gang_jalisco', 2, 'Asociado', 'Asociado', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(481, 'gang_jalisco', 3, 'Sicario', 'Sicario', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(482, 'gang_jalisco', 4, 'Conpanèro', 'Conpanèro', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(483, 'gang_jalisco', 5, 'Teniente', 'Teniente', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(484, 'gang_jalisco', 6, 'Consigliere', 'Consigliere', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(485, 'gang_jalisco', 7, 'Subjefe', 'Subjefe', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(486, 'gang_jalisco', 8, 'Jefe', 'Jefe', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(487, 'gang_jalisco', 8, 'Jefe', 'Jefe', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(488, 'luxury', 1, 'Medewerker', 'Medewerker', 0, '', ''),
	(489, 'luxury', 2, 'Verkoper', 'Verkoper', 0, '', ''),
	(490, 'luxury', 3, 'Manger', 'Manger', 0, '', ''),
	(491, 'luxury', 4, 'Baas', 'Baas', 0, '', ''),
	(492, 'peaky', 1, 'lookout', 'lookout', 0, '', ''),
	(493, 'peaky', 2, 'Member', 'Member', 0, '', ''),
	(494, 'peaky', 3, 'Soldier', 'Soldier', 0, '', ''),
	(495, 'peaky', 4, 'Street Soldier', 'Street Soldier', 0, '', ''),
	(496, 'peaky', 5, 'Corner Boss', 'Corner Boss', 0, '', ''),
	(497, 'peaky', 6, 'Shelby', 'Shelby', 0, '', ''),
	(498, 'wapendealer', 1, 'Dealer', 'Dealer', 0, '', ''),
	(499, 'wapendealer', 2, 'Head Dealer', 'Head Dealer', 0, '', ''),
	(500, 'pitstop', 1, 'Medewerker', 'Medewerker', 500, '', ''),
	(501, 'pitstop', 2, 'Ingenieur ', 'Ingenieur ', 750, '', ''),
	(502, 'pitstop', 3, 'Hoofd Ingenieur ', 'Hoofd Ingenieur ', 859, '', ''),
	(503, 'pitstop', 4, 'Baas', 'Baas', 1000, '', ''),
	(504, 'technician', 1, 'Werknemer', 'Werknemer', 0, '', ''),
	(505, 'vliegschool', 1, 'In op leiding', 'In op leiding', 0, '', ''),
	(506, 'vliegschool', 2, 'Manger', 'Manger', 0, '', ''),
	(507, 'vliegschool', 3, 'Baas', 'Baas', 0, '', ''),
	(508, 'offvliegschool', 1, 'uit dienst', 'uit dienst', 0, '', ''),
	(509, 'offvliegschool', 2, 'uit dienst', 'uit dienst', 0, '', ''),
	(510, 'offvliegschool', 3, 'uit dienst', 'uit dienst', 0, '', '');

CREATE TABLE IF NOT EXISTS `kfines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` text NOT NULL,
  `copIdentifier` text NOT NULL,
  `copName` text NOT NULL,
  `copRank` text NOT NULL,
  `copBadge` text NOT NULL,
  `citizenIdentifier` text DEFAULT NULL,
  `citizenName` text NOT NULL,
  `citizenSex` int(11) NOT NULL DEFAULT -1,
  `citizenDOB` text NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payUntil` timestamp NOT NULL DEFAULT current_timestamp(),
  `signature` text NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `afterTime` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `kfines`;

CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `licenses`;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Code de la route'),
	('drive', 'Permis de conduire'),
	('drive_bike', 'Permis moto'),
	('drive_truck', 'Permis camion'),
	('rijbewijsA', 'RijbewijsA'),
	('rijbewijsB', 'RijbewijsB'),
	('rijbewijsC', 'RijbewijsC'),
	('theorie', 'Theorie'),
	('weapon', 'Weapon License'),
	('weed_processing', 'Weed Processing License');

CREATE TABLE IF NOT EXISTS `loodsenopslag_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `drugsloods_coords` varchar(50) NOT NULL,
  `drugsloods_type` varchar(50) NOT NULL,
  `wapen` varchar(50) NOT NULL,
  `ammo` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `components` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `loodsenopslag_weapons`;

CREATE TABLE IF NOT EXISTS `lptr_advocaat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aanklager` varchar(50) NOT NULL DEFAULT '0',
  `verweerder` varchar(50) NOT NULL DEFAULT '0',
  `aanmaakdatum` varchar(30) NOT NULL DEFAULT '0',
  `aanklagerLabel` varchar(30) NOT NULL DEFAULT '',
  `verweerderLabel` varchar(30) NOT NULL DEFAULT '',
  `bedrag` int(11) NOT NULL DEFAULT 0,
  `beschrijving` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `lptr_advocaat`;

CREATE TABLE IF NOT EXISTS `nc_playtimeshop` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `coin` int(11) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `nc_playtimeshop`;

CREATE TABLE IF NOT EXISTS `nc_playtimeshop_codes` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `nc_playtimeshop_codes`;

CREATE TABLE IF NOT EXISTS `okokvehicleshop_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(255) NOT NULL,
  `shop_type` varchar(255) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `reward` varchar(255) NOT NULL,
  `in_progress` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `okokvehicleshop_orders`;

CREATE TABLE IF NOT EXISTS `okokvehicleshop_saleshistory` (
  `shop_id` varchar(255) NOT NULL,
  `vehicle_name` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `buyer_name` varchar(255) NOT NULL,
  `buyer_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `okokvehicleshop_saleshistory`;

CREATE TABLE IF NOT EXISTS `okokvehicleshop_shops` (
  `shop_name` varchar(255) NOT NULL,
  `shop_id` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `money` varchar(255) NOT NULL,
  `employees` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `okokvehicleshop_shops`;

CREATE TABLE IF NOT EXISTS `okokvehicleshop_vehicles` (
  `vehicle_name` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `stock` longtext DEFAULT NULL,
  `unlisted` longtext DEFAULT NULL,
  `min_price` varchar(255) NOT NULL,
  `max_price` varchar(255) NOT NULL,
  `owner_buy_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `okokvehicleshop_vehicles`;

CREATE TABLE IF NOT EXISTS `outfits` (
  `owner` varchar(50) DEFAULT NULL,
  `outfitName` varchar(50) DEFAULT NULL,
  `outfitModel` varchar(50) DEFAULT NULL,
  `outfitProps` varchar(1000) DEFAULT NULL,
  `outfitComponents` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `outfits`;

CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `owned_properties`;

CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(60) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `name` varchar(40) DEFAULT 'Unknown',
  `carseller` int(11) DEFAULT 0,
  `garage` varchar(200) DEFAULT 'OUT',
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `owned_vehicles`;

CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `ox_doorlock`;
INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
	(1, 'anwb poort 1', '{"coords":{"x":-356.13922119140627,"y":-134.79522705078126,"z":38.01285171508789},"heading":70,"model":1542392972,"maxDistance":7,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(2, 'anwb poort 2', '{"coords":{"x":-349.79766845703127,"y":-117.29452514648438,"z":38.02347564697265},"heading":70,"model":1542392972,"maxDistance":7,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(3, 'anwb poort 3', '{"coords":{"x":-364.9697265625,"y":-102.12882995605469,"z":38.00654983520508},"heading":340,"model":260701421,"maxDistance":7,"doorRate":1,"groups":{"mechanic":0},"state":1,"doors":false}'),
	(4, 'anwb poort 4', '{"coords":{"x":-371.952880859375,"y":-99.58718872070313,"z":38.01235580444336},"heading":340,"model":260701421,"maxDistance":7,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(5, 'anwb poort 5', '{"state":1,"doors":false,"doorRate":1,"maxDistance":7,"heading":30,"coords":{"x":-360.2171936035156,"y":-154.93594360351563,"z":37.72630310058594},"model":260701421,"groups":{"anwb":0}}'),
	(6, 'anwb deur naar garage', '{"coords":{"x":-341.21783447265627,"y":-167.51284790039063,"z":38.01138687133789},"heading":120,"model":1157738230,"maxDistance":2,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(7, 'anwb wc', '{"coords":{"x":-334.6644592285156,"y":-165.7044219970703,"z":43.61780166625976},"heading":275,"model":1249909928,"maxDistance":2,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(8, 'anwb kleedkamer', '{"coords":{"x":-335.0397033691406,"y":-161.6947784423828,"z":43.59593963623047},"heading":95,"model":1142444161,"maxDistance":2,"groups":{"anwb":0},"state":1,"doors":false}'),
	(9, 'anwb dubble door inklok', '{"coords":{"x":-334.7458190917969,"y":-155.53330993652345,"z":43.59803009033203},"heading":120,"model":1157738230,"maxDistance":2,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":[{"heading":83,"coords":{"x":-334.8790283203125,"y":-156.7007598876953,"z":43.59878540039062},"model":1142444161},{"heading":264,"coords":{"x":-334.61260986328127,"y":-154.36585998535157,"z":43.59727096557617},"model":1142444161}]}'),
	(10, 'anwb tune 1', '{"coords":{"x":-318.48175048828127,"y":-96.91741943359375,"z":39.30286026000976},"heading":340,"model":1544229216,"maxDistance":2,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(11, 'anwb tune 2', '{"coords":{"x":-325.7189025878906,"y":-94.28330993652344,"z":39.30286026000976},"heading":340,"model":1544229216,"maxDistance":2,"doorRate":1,"groups":{"anwb":0},"state":1,"doors":false}'),
	(12, 'dtmc', '{"doors":false,"model":1286535678,"maxDistance":2,"auto":true,"groups":{"dtmc":1},"coords":{"x":108.43636322021485,"y":328.9593505859375,"z":111.15765380859375},"state":1,"heading":30}'),
	(13, 'dtmc', '{"doors":false,"model":-915091986,"maxDistance":2,"auto":true,"groups":{"dtmc":1},"coords":{"x":143.4416046142578,"y":319.18792724609377,"z":112.77354431152344},"state":1,"heading":294}'),
	(14, 'dtmc', '{"doors":false,"model":-375963223,"maxDistance":2,"groups":{"dtmc":1},"coords":{"x":140.1602020263672,"y":323.7115478515625,"z":112.42402648925781},"state":1,"heading":295}'),
	(15, 'dtmc', '{"doors":false,"model":-1011692606,"maxDistance":2,"groups":{"dtmc":1},"coords":{"x":139.4986572265625,"y":327.9505615234375,"z":112.03166198730469},"state":1,"heading":24}'),
	(16, 'dtmc', '{"doors":false,"model":-35610440,"maxDistance":2,"groups":{"dtmc":1},"coords":{"x":146.1431427001953,"y":332.9954528808594,"z":112.04428100585938},"state":1,"heading":293}'),
	(17, 'dtmc', '{"doors":false,"model":-1953149158,"maxDistance":2,"groups":{"dtmc":1},"coords":{"x":134.10894775390626,"y":323.82830810546877,"z":116.80216217041016},"state":1,"heading":23}'),
	(18, 'dtmc', '{"doors":false,"model":-816468097,"maxDistance":2,"groups":{"dtmc":1},"coords":{"x":131.8583526611328,"y":327.0881042480469,"z":116.83001708984375},"state":1,"heading":294}'),
	(19, 'dtmc', '{"doors":false,"model":-2109436944,"maxDistance":2,"groups":{"dtmc":1},"coords":{"x":140.1495819091797,"y":335.4984130859375,"z":116.81642150878906},"state":1,"heading":113}'),
	(20, '14k', '{"maxDistance":7.5,"coords":{"x":935.92431640625,"y":-1489.56201171875,"z":31.16136932373047},"autolock":3,"doors":false,"model":-2076929163,"groups":{"triad":0},"state":1,"heading":0}'),
	(21, '14k 2', '{"maxDistance":5,"coords":{"x":939.6447143554688,"y":-1489.5516357421876,"z":30.24199867248535},"autolock":3,"doors":false,"model":1052098579,"groups":{"triad":0},"state":1,"heading":0}'),
	(22, '14k 3', '{"maxDistance":7.5,"coords":{"x":943.3648071289063,"y":-1489.5618896484376,"z":31.17250633239746},"autolock":3,"doors":false,"model":-2076929163,"groups":{"triad":0},"state":1,"heading":0}'),
	(512, '14k', '{"maxDistance":7,"coords":{"x":961.3887939453125,"y":-1502.5074462890626,"z":31.67140960693359},"autolock":5,"doors":[{"model":-875157772,"coords":{"x":961.3519287109375,"y":-1508.3470458984376,"z":31.7174072265625},"heading":272},{"model":-875157772,"coords":{"x":961.4255981445313,"y":-1496.6678466796876,"z":31.62541198730468},"heading":88}],"model":-2076929163,"groups":{"triad":1},"state":1,"heading":0}'),
	(513, 'Politie 1', '{"doors":[{"model":-1215222675,"heading":250,"coords":{"x":638.0730590820313,"y":3.31987953186035,"z":82.93529510498047}},{"model":-1215222675,"heading":70,"coords":{"x":637.1831665039063,"y":0.87622928619384,"z":82.93529510498047}}],"coords":{"x":637.6281127929688,"y":2.09805440902709,"z":82.93529510498047},"groups":{"politie":0},"maxDistance":5,"state":1}'),
	(514, 'politie 2', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-1821777087,"coords":{"x":625.8237915039063,"y":5.77804946899414,"z":82.78107452392578},"heading":251},{"model":-1821777087,"coords":{"x":626.7147827148438,"y":8.22311973571777,"z":82.78107452392578},"heading":69}],"maxDistance":5,"coords":{"x":626.269287109375,"y":7.00058460235595,"z":82.78107452392578}}'),
	(515, 'politie 3', '{"autolock":3,"state":1,"doors":[{"model":-1821777087,"coords":{"x":620.2207641601563,"y":11.03137969970703,"z":82.78107452392578},"heading":251},{"model":-1821777087,"coords":{"x":621.1121826171875,"y":13.47549057006836,"z":82.78107452392578},"heading":69}],"maxDistance":5,"coords":{"x":620.66650390625,"y":12.25343513488769,"z":82.78107452392578}}'),
	(516, 'politie 4', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":617.4796142578125,"y":6.9726505279541,"z":82.77623748779297},"heading":251},{"model":-543497392,"coords":{"x":618.3540649414063,"y":9.42309951782226,"z":82.77623748779297},"heading":70}],"maxDistance":5,"coords":{"x":617.9168701171875,"y":8.19787502288818,"z":82.77623748779297}}'),
	(517, 'politie 5', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-1821777087,"coords":{"x":614.024658203125,"y":0.42815971374511,"z":82.78107452392578},"heading":69},{"model":-1821777087,"coords":{"x":613.1336059570313,"y":-2.01542854309082,"z":82.78107452392578},"heading":251}],"maxDistance":5,"coords":{"x":613.5791015625,"y":-0.79363441467285,"z":82.78107452392578}}'),
	(518, 'politie 6', '{"heading":340,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":612.1859130859375,"y":-12.96651458740234,"z":82.77717590332031}}'),
	(519, 'politie 7', '{"heading":70,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":610.674560546875,"y":-8.654390335083,"z":82.7806167602539}}'),
	(520, 'politie 8', '{"heading":70,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":607.298828125,"y":-7.42662334442138,"z":82.7806167602539}}'),
	(521, 'politie 9', '{"heading":161,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":618.9651489257813,"y":-15.40212726593017,"z":82.7806167602539}}'),
	(522, 'politie 10', '{"heading":250,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":613.6009521484375,"y":-24.1793098449707,"z":82.7806167602539}}'),
	(523, 'politie 11', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":606.4959106445313,"y":-18.54084014892578,"z":82.7806167602539},"heading":340},{"model":-543497392,"coords":{"x":604.0478515625,"y":-17.66665649414062,"z":82.7806167602539},"heading":160}],"maxDistance":5,"coords":{"x":605.2718505859375,"y":-18.1037483215332,"z":82.7806167602539}}'),
	(524, 'politie 12', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-1821777087,"coords":{"x":603.1787109375,"y":1.19625949859619,"z":82.77350616455078},"heading":340},{"model":-1821777087,"coords":{"x":600.7293701171875,"y":2.07747936248779,"z":82.77350616455078},"heading":161}],"maxDistance":5,"coords":{"x":601.9540405273438,"y":1.63686943054199,"z":82.77350616455078}}'),
	(525, 'politie 13', '{"heading":161,"autolock":3,"model":270965283,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":605.2670288085938,"y":4.72697067260742,"z":82.77605438232422}}'),
	(526, 'politie 14', '{"heading":32,"autolock":3,"model":-190780785,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":537.3226928710938,"y":-31.53043937683105,"z":71.64984893798828}}'),
	(527, 'politie 15', '{"heading":32,"autolock":3,"model":-190780785,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":532.9979248046875,"y":-34.18380737304687,"z":71.64984893798828}}'),
	(528, 'politie 16', '{"heading":161,"autolock":3,"model":270965283,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":605.2670288085938,"y":4.72697639465332,"z":70.77588653564453}}'),
	(529, 'politie 17', '{"heading":161,"autolock":3,"model":270965283,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":605.2670288085938,"y":4.72697067260742,"z":76.77445220947266}}'),
	(530, 'politie 18', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":609.4048461914063,"y":-0.523850440979,"z":76.78482818603516},"heading":261},{"model":-543497392,"coords":{"x":609.84814453125,"y":2.03903007507324,"z":76.78482818603516},"heading":80}],"maxDistance":5,"coords":{"x":609.62646484375,"y":0.75758981704711,"z":76.78482818603516}}'),
	(531, 'politie 19', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":619.2594604492188,"y":-3.60041713714599,"z":76.78482818603516},"heading":80},{"model":-543497392,"coords":{"x":618.8170166015625,"y":-6.16302728652954,"z":76.78482818603516},"heading":261}],"maxDistance":5,"coords":{"x":619.0382080078125,"y":-4.88172245025634,"z":76.78482818603516}}'),
	(532, 'politie 20', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":620.6619262695313,"y":4.36507987976074,"z":76.78482818603516},"heading":80},{"model":-543497392,"coords":{"x":620.2205810546875,"y":1.80099964141845,"z":76.78482818603516},"heading":261}],"maxDistance":5,"coords":{"x":620.4412841796875,"y":3.08303976058959,"z":76.78482818603516}}'),
	(533, 'politie 21', '{"heading":170,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":611.828857421875,"y":-1.27850246429443,"z":76.78482818603516}}'),
	(534, 'politie 22', '{"heading":170,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":612.3889770507813,"y":1.90395927429199,"z":76.78482818603516}}'),
	(535, 'politie 23', '{"heading":260,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":2,"coords":{"x":611.3433837890625,"y":-11.54502964019775,"z":76.77566528320313}}'),
	(536, 'politie 24', '{"heading":134,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":2,"coords":{"x":604.71728515625,"y":-12.28013324737548,"z":76.77649688720703}}'),
	(537, 'politie 25', '{"heading":170,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":605.6029052734375,"y":-0.61280059814453,"z":76.78482818603516}}'),
	(538, 'politie 26', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":0,"doors":false,"maxDistance":5,"coords":{"x":593.8323364257813,"y":-33.13919067382812,"z":76.77619171142578}}'),
	(539, 'politie 27', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":590.2770385742188,"y":-32.51164245605469,"z":76.77619171142578}}'),
	(540, 'politie 28', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":590.9506225585938,"y":-28.69675064086914,"z":76.77619171142578}}'),
	(541, 'politie 29', '{"heading":80,"autolock":3,"model":-543497392,"state":1,"doors":false,"maxDistance":5,"coords":{"x":594.5057373046875,"y":-29.3229808807373,"z":76.77619171142578}}'),
	(542, 'politie 30', '{"heading":260,"autolock":3,"model":-1426024720,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":591.6865234375,"y":-24.88591003417968,"z":75.6149673461914}}'),
	(543, 'politie 31', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":596.0296630859375,"y":-20.67792129516601,"z":76.77619171142578}}'),
	(544, 'politie 32', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":592.4775390625,"y":-20.04830741882324,"z":76.77619171142578}}'),
	(545, 'politie 33', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":596.704345703125,"y":-16.86174964904785,"z":76.77619171142578}}'),
	(546, 'politie 34', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":593.1510620117188,"y":-16.23332023620605,"z":76.77619171142578}}'),
	(547, 'politie 35', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":597.6161499023438,"y":-11.7540693283081,"z":76.77619171142578}}'),
	(548, 'politie 36', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":594.052978515625,"y":-11.12476539611816,"z":76.77619171142578}}'),
	(549, 'politie 37', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":594.7432250976563,"y":-7.21495342254638,"z":76.77619171142578}}'),
	(550, 'politie 38', '{"heading":80,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":598.3140869140625,"y":-7.84423446655273,"z":76.77619171142578}}'),
	(551, 'politie 39', '{"heading":81,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":599.1975708007813,"y":-2.71842718124389,"z":76.77619171142578}}'),
	(552, 'politie 40', '{"heading":81,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":595.6463012695313,"y":-2.09537124633789,"z":76.77619171142578}}'),
	(553, 'politie 41', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":599.26806640625,"y":0.48760986328125,"z":76.78482818603516},"heading":350},{"model":-543497392,"coords":{"x":596.7066040039063,"y":0.93109989166259,"z":76.78482818603516},"heading":170}],"maxDistance":5,"coords":{"x":597.9873046875,"y":0.70935487747192,"z":76.78482818603516}}'),
	(554, 'politie 42', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-543497392,"coords":{"x":594.8325805664063,"y":5.89159965515136,"z":76.78482818603516},"heading":80},{"model":-543497392,"coords":{"x":594.391357421875,"y":3.33368968963623,"z":76.78482818603516},"heading":260}],"maxDistance":5,"coords":{"x":594.6119384765625,"y":4.61264467239379,"z":76.78482818603516}}'),
	(555, 'politie 43', '{"heading":350,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":591.9441528320313,"y":3.29794979095459,"z":76.77678680419922}}'),
	(556, 'politie 44', '{"heading":350,"autolock":3,"model":-543497392,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":591.763671875,"y":6.87901878356933,"z":76.78482818603516}}'),
	(557, 'politie 45', '{"heading":260,"autolock":3,"model":-1426024720,"groups":{"politie":0},"state":1,"doors":false,"maxDistance":5,"coords":{"x":586.5122680664063,"y":-23.97032165527343,"z":75.61627197265625}}'),
	(559, 'politie 46', '{"autolock":3,"groups":{"politie":0},"state":1,"doors":[{"model":-1320876379,"coords":{"x":577.3446655273438,"y":-23.98152160644531,"z":76.77881622314453},"heading":260},{"model":-1320876379,"coords":{"x":577.7955932617188,"y":-21.41920089721679,"z":76.77881622314453},"heading":80}],"maxDistance":5,"coords":{"x":577.5701293945313,"y":-22.70036125183105,"z":76.77881622314453}}'),
	(560, 'politie 47', '{"groups":{"politie":0},"coords":{"x":580.7245483398438,"y":-18.65413665771484,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(561, 'politie 48', '{"groups":{"politie":0},"coords":{"x":584.57275390625,"y":-19.34675025939941,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(562, 'politie 49', '{"groups":{"politie":0},"coords":{"x":585.1672973632813,"y":-15.94396591186523,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(563, 'politie 50', '{"groups":{"politie":0},"coords":{"x":581.3250122070313,"y":-15.25277423858642,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(564, 'politie 51', '{"groups":{"politie":0},"coords":{"x":585.7652587890625,"y":-12.55356979370117,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(565, 'politie 52', '{"groups":{"politie":0},"coords":{"x":581.9215698242188,"y":-11.86269760131836,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(566, 'politie 53', '{"groups":{"politie":0},"coords":{"x":586.3670654296875,"y":-9.13888931274414,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(567, 'politie 54', '{"groups":{"politie":0},"coords":{"x":582.5226440429688,"y":-8.44673252105712,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(568, 'politie 55', '{"groups":{"politie":0},"coords":{"x":583.1253662109375,"y":-5.04473638534545,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(569, 'politie 56', '{"groups":{"politie":0},"coords":{"x":586.9677124023438,"y":-5.73668432235717,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":260,"model":-1426024720,"doors":false}'),
	(570, 'politie 57', '{"groups":{"politie":0},"coords":{"x":585.023193359375,"y":-3.99524450302124,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":1,"heading":350,"model":-1426024720,"doors":false}'),
	(571, 'politie 58', '{"groups":{"politie":0},"coords":{"x":585.6283569335938,"y":-0.57913017272949,"z":75.61627197265625},"autolock":3,"maxDistance":5,"state":0,"heading":350,"model":-1426024720,"doors":false}'),
	(572, 'politie 59', '{"groups":{"politie":0},"coords":{"x":581.3401489257813,"y":3.67338943481445,"z":76.77678680419922},"autolock":3,"maxDistance":5,"state":1,"heading":350,"model":-543497392,"doors":false}'),
	(573, 'politie 60', '{"groups":{"politie":0},"coords":{"x":582.4873046875,"y":10.20013999938964,"z":76.78593444824219},"autolock":3,"maxDistance":5,"state":1,"heading":350,"model":-543497392,"doors":false}'),
	(574, 'politie 61', '{"groups":{"politie":0},"coords":{"x":571.5028076171875,"y":5.21617984771728,"z":76.78482818603516},"autolock":3,"maxDistance":5,"state":1,"heading":350,"model":-543497392,"doors":false}'),
	(575, 'politie 62', '{"groups":{"politie":0},"coords":{"x":568.84716796875,"y":8.3628454208374,"z":76.78482818603516},"autolock":3,"maxDistance":5,"state":1,"doors":[{"model":-543497392,"coords":{"x":569.0712280273438,"y":9.64442062377929,"z":76.78482818603516},"heading":80},{"model":-543497392,"coords":{"x":568.6231689453125,"y":7.0812702178955,"z":76.78482818603516},"heading":260}]}'),
	(576, 'politie 63', '{"groups":{"politie":0},"coords":{"x":562.6400756835938,"y":6.78584480285644,"z":76.78482818603516},"autolock":3,"maxDistance":5,"state":1,"doors":[{"model":-543497392,"coords":{"x":563.9225463867188,"y":6.56382942199707,"z":76.78482818603516},"heading":350},{"model":-543497392,"coords":{"x":561.3576049804688,"y":7.00786018371582,"z":76.78482818603516},"heading":170}]}'),
	(577, 'politie 64', '{"groups":{"politie":0},"coords":{"x":556.277099609375,"y":5.33382987976074,"z":76.78084564208985},"autolock":3,"maxDistance":5,"state":1,"heading":350,"model":-543497392,"doors":false}'),
	(579, 'politie 65', '{"groups":{"politie":0},"coords":{"x":558.64794921875,"y":10.1854543685913,"z":76.78482818603516},"autolock":3,"maxDistance":5,"state":1,"doors":[{"model":-543497392,"coords":{"x":558.8649291992188,"y":11.46891975402832,"z":76.78482818603516},"heading":80},{"model":-543497392,"coords":{"x":558.4309692382813,"y":8.90198898315429,"z":76.78482818603516},"heading":260}]}'),
	(580, 'politie 66', '{"groups":{"politie":0},"coords":{"x":600.872802734375,"y":-24.44216537475586,"z":87.62322235107422},"autolock":3,"maxDistance":5,"state":1,"doors":[{"model":-543497392,"coords":{"x":599.6497192382813,"y":-24.00234985351562,"z":87.62322235107422},"heading":160},{"model":-543497392,"coords":{"x":602.0958251953125,"y":-24.88198089599609,"z":87.62322235107422},"heading":340}]}'),
	(581, 'politie 67', '{"coords":{"x":590.4313354492188,"y":-21.48670959472656,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"heading":26,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(582, 'politie 68', '{"coords":{"x":577.6671142578125,"y":-24.19847106933593,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(583, 'politie 69', '{"coords":{"x":571.8050537109375,"y":-26.13543510437011,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"state":1,"maxDistance":5,"doors":[{"heading":250,"model":-1821777087,"coords":{"x":571.3577270507813,"y":-27.35660934448242,"z":87.63567352294922}},{"heading":70,"model":-1821777087,"coords":{"x":572.2523803710938,"y":-24.91426086425781,"z":87.63567352294922}}]}'),
	(584, 'politie 70', '{"coords":{"x":569.9658813476563,"y":-21.37042999267578,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(585, 'politie 71', '{"coords":{"x":568.3790283203125,"y":-28.91753005981445,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(586, 'politie 72', '{"coords":{"x":563.285888671875,"y":-18.93557167053222,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(587, 'politie 73', '{"coords":{"x":556.6805419921875,"y":-16.56130218505859,"z":87.63567352294922},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(588, 'politie 74', '{"coords":{"x":548.69384765625,"y":-26.38627052307129,"z":87.63285827636719},"autolock":3,"groups":{"politie":0},"heading":69,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(589, 'politie 75', '{"coords":{"x":621.3323364257813,"y":-1.97964668273925,"z":90.65708923339844},"autolock":3,"groups":{"politie":0},"heading":215,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(590, 'politie 76', '{"coords":{"x":630.0711059570313,"y":-0.91057586669921,"z":90.65357971191406},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(591, 'politie 77', '{"coords":{"x":632.7127685546875,"y":-6.16374635696411,"z":90.65315246582031},"autolock":3,"groups":{"politie":0},"heading":294,"model":-1821777087,"state":1,"maxDistance":5,"lockSound":"door-bolt-4","doors":false}'),
	(592, 'politie 78', '{"coords":{"x":632.010498046875,"y":-8.89313793182373,"z":90.65265655517578},"autolock":3,"groups":{"politie":0},"heading":71,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(593, 'politie 79', '{"coords":{"x":625.862548828125,"y":-15.07876968383789,"z":90.6558837890625},"autolock":3,"groups":{"politie":0},"heading":340,"model":-1821777087,"state":1,"maxDistance":5,"doors":false}'),
	(599, 'witwas', '{"doors":false,"coords":{"x":5002.29150390625,"y":-5746.73974609375,"z":14.9413251876831},"maxDistance":2,"model":-1360938964,"heading":328,"state":1}'),
	(600, 'Ambulance 1', '{"maxDistance":5,"coords":{"x":-444.2193908691406,"y":-320.15704345703127,"z":35.06685638427734},"autolock":3,"doors":[{"model":665455406,"coords":{"x":-443.0124206542969,"y":-319.66937255859377,"z":35.06685638427734},"heading":202},{"model":665455406,"coords":{"x":-445.4263610839844,"y":-320.6446838378906,"z":35.06685638427734},"heading":22}],"groups":{"ambulance":0},"state":1}'),
	(601, 'Ambulance 2', '{"maxDistance":5,"coords":{"x":-440.6439208984375,"y":-321.7954406738281,"z":35.06683349609375},"autolock":3,"doors":false,"model":493136920,"groups":{"ambulance":0},"state":1,"heading":293}'),
	(602, 'Peaky Cartel 1', '{"coords":{"x":-112.5514144897461,"y":986.0916748046875,"z":236.35047912597657},"autolock":3,"state":1,"doors":[{"heading":20,"coords":{"x":-112.30475616455078,"y":985.4119262695313,"z":236.35047912597657},"model":-2146494197},{"heading":200,"coords":{"x":-112.7980728149414,"y":986.771484375,"z":236.35047912597657},"model":-2146494197}],"groups":{"peaky":0},"maxDistance":5}'),
	(604, 'Peaky Cartel 2', '{"coords":{"x":-111.172119140625,"y":999.1842041015625,"z":235.87783813476563},"autolock":3,"state":1,"doors":[{"heading":110,"coords":{"x":-110.15312957763672,"y":999.5685424804688,"z":235.87783813476563},"model":-435821409},{"heading":290,"coords":{"x":-112.19111633300781,"y":998.7998046875,"z":235.87783813476563},"model":-435821409}],"groups":{"peaky":0},"maxDistance":5}'),
	(605, 'Peaky Cartel 3', '{"coords":{"x":-102.65352630615235,"y":1011.2650756835938,"z":235.87783813476563},"autolock":3,"state":1,"doors":[{"heading":200,"coords":{"x":-103.03706359863281,"y":1012.2847900390625,"z":235.87783813476563},"model":-435821409},{"heading":20,"coords":{"x":-102.26998901367188,"y":1010.245361328125,"z":235.87783813476563},"model":-435821409}],"groups":{"peaky":0},"maxDistance":5}'),
	(606, 'Peaky Cartel 4', '{"coords":{"x":-70.80845642089844,"y":1008.7902221679688,"z":234.5198516845703},"autolock":3,"state":1,"doors":[{"heading":50,"coords":{"x":-69.96350860595703,"y":1008.09814453125,"z":234.5198516845703},"model":-435821409},{"heading":230,"coords":{"x":-71.65341186523438,"y":1009.4822998046875,"z":234.5198516845703},"model":-435821409}],"groups":{"peaky":0},"maxDistance":5}'),
	(607, 'Peaky Cartel 5', '{"coords":{"x":-62.239501953125,"y":998.4657592773438,"z":234.99281311035157},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":50,"coords":{"x":-61.68701553344726,"y":998.0018920898438,"z":234.99281311035157},"model":-2146494197},{"heading":230,"coords":{"x":-62.79198837280273,"y":998.9296264648438,"z":234.99281311035157},"model":-2146494197}],"heading":37,"groups":{"cartel":0},"maxDistance":5}'),
	(608, 'Peaky Cartel 6', '{"coords":{"x":-59.39175415039062,"y":989.533203125,"z":235.34979248046876},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":20,"coords":{"x":-59.00681686401367,"y":988.5122680664063,"z":235.34979248046876},"model":-435821409},{"heading":200,"coords":{"x":-59.77668762207031,"y":990.5541381835938,"z":235.34979248046876},"model":-435821409}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(609, 'Peaky Cartel 7', '{"coords":{"x":-57.39200592041015,"y":984.0308837890625,"z":235.34979248046876},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":20,"coords":{"x":-57.00850677490234,"y":983.0105590820313,"z":235.34979248046876},"model":-435821409},{"heading":200,"coords":{"x":-57.77550506591797,"y":985.0511474609375,"z":235.34979248046876},"model":-435821409}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(610, 'Peaky Cartel 8', '{"coords":{"x":-58.26438903808594,"y":980.093017578125,"z":233.45501708984376},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":290,"coords":{"x":-58.94352722167969,"y":979.8441162109375,"z":233.45501708984376},"model":-2146494197},{"heading":110,"coords":{"x":-57.58524703979492,"y":980.3418579101563,"z":233.45501708984376},"model":-2146494197}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(611, 'Peaky Cartel 9', '{"coords":{"x":-67.51631927490235,"y":987.62451171875,"z":234.523193359375},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":230,"coords":{"x":-68.35662841796875,"y":988.3165893554688,"z":234.523193359375},"model":-435821409},{"heading":50,"coords":{"x":-66.67601013183594,"y":986.9324340820313,"z":234.523193359375},"model":-435821409}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(612, 'Peaky Cartel 10', '{"coords":{"x":-97.76435852050781,"y":989.242431640625,"z":235.8943328857422},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":290,"coords":{"x":-98.78286743164063,"y":988.8587036132813,"z":235.8943328857422},"model":-435821409},{"heading":110,"coords":{"x":-96.74585723876953,"y":989.6260986328125,"z":235.8943328857422},"model":-435821409}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(613, 'Peaky Cartel 11', '{"coords":{"x":-104.76025390625,"y":976.7347412109375,"z":235.8943328857422},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":290,"coords":{"x":-105.7796401977539,"y":976.3494262695313,"z":235.8943328857422},"model":-435821409},{"heading":110,"coords":{"x":-103.74085998535156,"y":977.1199951171875,"z":235.8943328857422},"model":-435821409}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(614, 'Peaky Cartel voordeur', '{"coords":{"x":-135.29379272460938,"y":972.6045532226563,"z":236.11431884765626},"autolock":3,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":336,"coords":{"x":-137.79905700683595,"y":973.7088623046875,"z":236.11431884765626},"model":546378757},{"heading":336,"coords":{"x":-132.78854370117188,"y":971.500244140625,"z":236.11431884765626},"model":-1249591818}],"heading":37,"groups":{"peaky":0},"maxDistance":5}'),
	(615, 'athena', '{"maxDistance":2,"heading":0,"state":1,"model":1308911070,"doors":false,"passcode":"854","coords":{"x":768.9199829101563,"y":3411.594970703125,"z":63.54000091552734}}'),
	(616, 'athena', '{"maxDistance":2,"heading":0,"state":1,"model":-403433025,"doors":false,"passcode":"854","coords":{"x":766.2000122070313,"y":3411.60009765625,"z":63.54000091552734}}'),
	(617, 'athena', '{"maxDistance":2,"auto":true,"heading":100,"state":1,"model":-1747119540,"doors":false,"passcode":"854","coords":{"x":761.5999755859375,"y":3374.39990234375,"z":63.5}}'),
	(618, 'athena', '{"maxDistance":2,"heading":280,"state":1,"model":-1565579268,"doors":false,"passcode":"854","coords":{"x":767.9500122070313,"y":3375.47998046875,"z":63.5}}'),
	(619, 'athena', '{"maxDistance":2,"autolock":100,"heading":0,"state":1,"model":2052512905,"doors":false,"passcode":"854","coords":{"x":814.780029296875,"y":3425.52001953125,"z":58.18000030517578}}'),
	(620, 'athena', '{"maxDistance":2,"heading":288,"state":1,"model":509504073,"doors":false,"passcode":"854","coords":{"x":746.8599853515625,"y":3415.8798828125,"z":62.77000045776367}}'),
	(621, 'athena', '{"maxDistance":2,"auto":true,"lockpick":true,"hideUi":true,"state":1,"doors":[{"model":509504073,"coords":{"x":748.2849731445313,"y":3419.159912109375,"z":62.77000045776367},"heading":180},{"model":777010715,"coords":{"x":774.0,"y":3430.0,"z":56.87847518920898},"heading":0}],"passcode":"854","coords":{"x":761.1424560546875,"y":3424.580078125,"z":59.82423782348633},"holdOpen":true}'),
	(630, 'Narcos', '{"groups":{"nar":0},"heading":220,"coords":{"x":1384.3175048828126,"y":-2080.8486328125,"z":52.76570510864258},"state":1,"doors":false,"model":1466379709,"maxDistance":2}'),
	(631, 'nar 2', '{"groups":{"nar":0},"heading":130,"coords":{"x":1377.8194580078126,"y":-2086.9111328125,"z":52.70068359375},"state":0,"doors":false,"model":776184575,"maxDistance":2}'),
	(632, 'nar3', '{"groups":{"nar":0},"heading":40,"coords":{"x":1381.8736572265626,"y":-2089.0458984375,"z":52.70068359375},"state":1,"doors":false,"model":776184575,"maxDistance":2}'),
	(633, 'nar4', '{"groups":{"nar":0},"heading":220,"coords":{"x":1370.0738525390626,"y":-2095.760986328125,"z":48.30720138549805},"state":1,"doors":false,"model":776184575,"maxDistance":2}'),
	(634, 'nar4', '{"groups":{"nar":0},"heading":220,"coords":{"x":1378.887451171875,"y":-2088.377197265625,"z":48.30720138549805},"state":1,"doors":false,"model":776184575,"maxDistance":2}'),
	(635, 'nar5', '{"groups":{"nar":0},"heading":40,"coords":{"x":1377.6435546875,"y":-2089.371826171875,"z":48.30720138549805},"state":1,"doors":false,"model":776184575,"maxDistance":2}'),
	(636, 'nar6', '{"groups":{"nar":0},"heading":220,"coords":{"x":1369.9046630859376,"y":-2109.6728515625,"z":47.29983520507812},"state":1,"doors":false,"model":776184575,"maxDistance":2}'),
	(637, 'nar8', '{"groups":{"nar":0},"heading":220,"coords":{"x":1351.6904296875,"y":-2093.748779296875,"z":52.83717346191406},"state":1,"auto":true,"doors":false,"model":844544730,"maxDistance":2}'),
	(638, 'nar9', '{"groups":{"nar":0},"heading":220,"coords":{"x":1357.19287109375,"y":-2089.131591796875,"z":52.83717346191406},"state":1,"auto":true,"doors":false,"model":844544730,"maxDistance":2}'),
	(639, 'Nar3', '{"autolock":5,"groups":{"nar":0},"auto":true,"doors":false,"heading":221,"coords":{"x":1372.808837890625,"y":-2050.468505859375,"z":51.04935836791992},"maxDistance":9,"state":1,"model":1286535678}'),
	(640, 'Nor123', '{"groups":{"nar":0},"doors":false,"heading":290,"coords":{"x":1435.6348876953126,"y":-2057.7763671875,"z":55.53355407714844},"maxDistance":2,"state":0,"model":-1218968680}'),
	(641, 'politie Hb ingang 1', '{"autolock":4,"maxDistance":2,"state":1,"doors":[{"coords":{"x":434.7764587402344,"y":-981.0739135742188,"z":29.72327995300293},"model":-325087983,"heading":270},{"coords":{"x":434.7764587402344,"y":-982.8983764648438,"z":29.72327995300293},"model":-325087983,"heading":90}],"groups":{"politie":1},"coords":{"x":434.7764587402344,"y":-981.9861450195313,"z":29.72327995300293}}'),
	(642, 'politie Hb ingang 2', '{"autolock":4,"maxDistance":2,"state":1,"doors":[{"coords":{"x":438.1119079589844,"y":-982.8983764648438,"z":29.72327995300293},"model":-325087983,"heading":90},{"coords":{"x":438.1119079589844,"y":-981.0739135742188,"z":29.72327995300293},"model":-325087983,"heading":270}],"groups":{"politie":1},"coords":{"x":438.1119079589844,"y":-981.9861450195313,"z":29.72327995300293}}'),
	(643, 'politie poortje links', '{"autolock":4,"maxDistance":2,"state":1,"doors":[{"coords":{"x":445.7213439941406,"y":-985.84375,"z":29.9277114868164},"model":-1030625683,"heading":270},{"coords":{"x":445.7213439941406,"y":-986.7801513671875,"z":29.9277114868164},"model":-1030625683,"heading":90}],"groups":{"politie":1},"coords":{"x":445.7213439941406,"y":-986.3119506835938,"z":29.9277114868164}}'),
	(644, 'politie poortje rechts', '{"autolock":4,"maxDistance":2,"state":1,"doors":[{"coords":{"x":445.7213439941406,"y":-993.7693481445313,"z":29.9277114868164},"model":-1030625683,"heading":270},{"coords":{"x":445.7213439941406,"y":-994.7057495117188,"z":29.9277114868164},"model":-1030625683,"heading":90}],"groups":{"politie":1},"coords":{"x":445.7213439941406,"y":-994.237548828125,"z":29.9277114868164}}'),
	(645, 'wapenkamer', '{"autolock":4,"model":-1286682002,"maxDistance":2,"state":1,"doors":false,"groups":{"politie":1},"heading":270,"coords":{"x":444.48004150390627,"y":-983.4420166015625,"z":34.45088195800781}}'),
	(646, 'korpsleiding kantoor', '{"autolock":4,"maxDistance":2,"state":1,"doors":[{"coords":{"x":457.58233642578127,"y":-989.9021606445313,"z":30.87458801269531},"model":-981963071,"heading":180},{"coords":{"x":454.9900817871094,"y":-989.9022216796875,"z":30.87458801269531},"model":-981963071,"heading":0}],"groups":{"politie":9},"coords":{"x":456.28619384765627,"y":-989.9022216796875,"z":30.87458801269531}}'),
	(648, 'Politie Achter kant', '{"state":1,"coords":{"x":478.70294189453127,"y":-1016.5386962890625,"z":26.87515640258789},"doors":[{"coords":{"x":476.40826416015627,"y":-1016.5386962890625,"z":26.87515640258789},"heading":0,"model":-1085517610},{"coords":{"x":480.9976501464844,"y":-1016.5386962890625,"z":26.87515640258789},"heading":0,"model":-1085517610}],"groups":{"politie":1},"maxDistance":5,"auto":true}'),
	(649, 'JaliscoVoordeur', '{"coords":{"x":390.7205505371094,"y":0.92276692390441,"z":92.41473388671875},"autolock":4.5,"model":-1140189596,"state":1,"auto":true,"doors":[{"heading":60,"coords":{"x":391.3175964355469,"y":1.96662330627441,"z":92.41473388671875},"model":607720026},{"heading":240,"coords":{"x":390.1235046386719,"y":-0.12108945846557,"z":92.41473388671875},"model":607720026}],"heading":37,"groups":{"gang_jalisco":1},"maxDistance":3}'),
	(650, 'jaliscogarage', '{"groups":{"gang_jalisco":0},"model":-1140189596,"state":1,"doors":false,"maxDistance":8,"coords":{"x":354.3641052246094,"y":18.63134384155273,"z":85.55156707763672},"auto":true,"heading":37,"autolock":4.5}'),
	(651, 'jaliscobossroom', '{"groups":{"gang_jalisco":8},"model":-1140189596,"state":1,"doors":[{"model":389903619,"heading":240,"coords":{"x":424.1964111328125,"y":9.80043220520019,"z":92.09451293945313}},{"model":389903619,"heading":60,"coords":{"x":425.49078369140627,"y":12.04975891113281,"z":92.09587860107422}}],"maxDistance":3,"coords":{"x":424.8435974121094,"y":10.9250955581665,"z":92.09519958496094},"auto":true,"heading":37,"autolock":4.5}'),
	(652, 'luxury Deur', '{"state":1,"maxDistance":2,"groups":{"luxury ":1},"doors":[{"model":-1038027614,"heading":103,"coords":{"x":110.10292053222656,"y":-149.657958984375,"z":55.24718475341797}},{"model":-1038027614,"heading":284,"coords":{"x":110.57609558105469,"y":-151.58938598632813,"z":55.24718475341797}}],"coords":{"x":110.33950805664063,"y":-150.62367248535157,"z":55.24718475341797}}'),
	(653, 'cel', '{"maxDistance":2,"state":1,"coords":{"x":436.1624450683594,"y":-994.2794799804688,"z":27.70837211608886},"heading":270,"doors":false,"model":558690128,"groups":{"politie":0}}'),
	(654, 'Verhhoor kamer', '{"maxDistance":2,"state":1,"coords":{"x":438.6832580566406,"y":-990.387939453125,"z":27.63850784301757},"heading":180,"doors":false,"model":-981963071,"groups":{"politie":1}}'),
	(660, 'Cripsgarage', '{"maxDistance":8,"heading":49,"groups":{"crips":1},"state":1,"doors":false,"autolock":4.5,"holdOpen":true,"coords":{"x":-1558.910888671875,"y":-398.7169189453125,"z":42.29832077026367},"model":1641308239}'),
	(661, 'cripsdeur1', '{"maxDistance":2,"groups":{"crips":1},"state":1,"doors":[{"model":827574885,"heading":230,"coords":{"x":-1565.580322265625,"y":-406.9183654785156,"z":42.60904693603515}},{"model":-725970636,"heading":230,"coords":{"x":-1564.006103515625,"y":-405.0420837402344,"z":42.60903930664062}}],"holdOpen":true,"coords":{"x":-1564.793212890625,"y":-405.980224609375,"z":42.60904312133789}}');

CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `ox_inventory`;

CREATE TABLE IF NOT EXISTS `phone_accounts` (
  `app` varchar(50) NOT NULL,
  `id` varchar(80) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `interested` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_accounts`;

CREATE TABLE IF NOT EXISTS `phone_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'default',
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_ads`;

CREATE TABLE IF NOT EXISTS `phone_alertjobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) NOT NULL,
  `alerts` longtext DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `job` (`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_alertjobs`;

CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `phone_app_chat`;

CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `phone_calls`;

CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` varchar(50) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT NULL,
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_masked` tinyint(1) DEFAULT 0,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_code` (`room_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `phone_chatrooms`;

CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(50) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `phone_chatroom_messages`;

CREATE TABLE IF NOT EXISTS `phone_chats` (
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_chats`;

CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Unknown',
  `photo` varchar(512) DEFAULT '',
  `tag` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_contacts`;

CREATE TABLE IF NOT EXISTS `phone_darkgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitecode` varchar(50) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `photo` varchar(512) NOT NULL DEFAULT '',
  `maxmembers` int(11) DEFAULT 0,
  `members` mediumtext NOT NULL,
  `bannedmembers` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_darkgroups`;

CREATE TABLE IF NOT EXISTS `phone_darkmessages` (
  `from` varchar(255) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `attachments` mediumtext NOT NULL DEFAULT '[]',
  `time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_darkmessages`;

CREATE TABLE IF NOT EXISTS `phone_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `photo` varchar(512) NOT NULL DEFAULT '',
  `members` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_groups`;

CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `phone_invoices`;

CREATE TABLE IF NOT EXISTS `phone_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(128) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `starred` tinyint(1) NOT NULL DEFAULT 0,
  `mail` longtext DEFAULT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `muted` tinyint(1) NOT NULL DEFAULT 0,
  `lastOpened` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_mail`;

CREATE TABLE IF NOT EXISTS `phone_mailaccounts` (
  `address` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `photo` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_mailaccounts`;

CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `phone_messages`;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `phone_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `phone_news`;

CREATE TABLE IF NOT EXISTS `phone_notifies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_head` varchar(50) NOT NULL DEFAULT '',
  `app_name` text NOT NULL,
  `msg_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_notifies`;

CREATE TABLE IF NOT EXISTS `phone_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_transactions`;

CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `authorimg` varchar(255) DEFAULT NULL,
  `authorrank` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) DEFAULT NULL,
  `likers` longtext NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_tweets`;

CREATE TABLE IF NOT EXISTS `phone_twitteraccounts` (
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `rank` varchar(50) NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `phone_twitteraccounts`;

CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `phone_users_contacts`;
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
	(7, 'steam:11000011c832e5a', NULL, 'kelly'),
	(8, 'steam:11000011c832e5a', '0625219353', 'kelly juist '),
	(9, 'license:fde6605d43e81d4dc21de20d4d29e92246a1e5c3', '0688928253', 'ilian ');
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  `display` varchar(50) DEFAULT NULL,
  `note` text NOT NULL,
  `pp` text NOT NULL,
  `isBlocked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `player_contacts`;

CREATE TABLE IF NOT EXISTS `player_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `resim` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `player_gallery`;

CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `player_mails`;

CREATE TABLE IF NOT EXISTS `player_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `baslik` text NOT NULL,
  `aciklama` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `player_notes`;

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `properties`;

CREATE TABLE IF NOT EXISTS `refunds` (
  `discordid` varchar(255) NOT NULL,
  `item` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aantal` int(11) NOT NULL,
  PRIMARY KEY (`discordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `refunds`;

CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `rented_vehicles`;

CREATE TABLE IF NOT EXISTS `renzu_jobs` (
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `accounts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `garage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `renzu_jobs`;
INSERT INTO `renzu_jobs` (`name`, `accounts`, `inventory`, `garage`) VALUES
	('ambulance', '{"money":0,"black_money":0}', '[]', '[]'),
	('burgershot', '{"money":0,"black_money":0}', '[]', '[]'),
	('coffeebean', '{"money":0,"black_money":0}', '[]', '[]'),
	('mechanic', '{"money":0,"black_money":0}', '[]', '[]'),
	('police', '{"money":0,"black_money":0}', '[]', '[]');

CREATE TABLE IF NOT EXISTS `saveclothes` (
  `identifier` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `wardrobe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `saveclothes`;

CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `society_moneywash`;

CREATE TABLE IF NOT EXISTS `stadus_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `stamina` varchar(255) NOT NULL,
  `strength` varchar(255) NOT NULL,
  `driving` varchar(255) DEFAULT NULL,
  `shooting` varchar(255) DEFAULT NULL,
  `fishing` varchar(255) DEFAULT NULL,
  `drugs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `stadus_skills`;

CREATE TABLE IF NOT EXISTS `tiktok_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `bio` text NOT NULL DEFAULT '',
  `birthday` varchar(50) NOT NULL DEFAULT '0',
  `videos` text NOT NULL DEFAULT '{}',
  `followers` text NOT NULL,
  `following` text NOT NULL,
  `liked` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `tiktok_users`;

CREATE TABLE IF NOT EXISTS `tiktok_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `created` varchar(50) NOT NULL DEFAULT '00:00:00',
  `data` text DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `tiktok_videos`;

CREATE TABLE IF NOT EXISTS `tinder_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL,
  `targetGender` varchar(50) NOT NULL DEFAULT '0',
  `hobbies` varchar(50) NOT NULL DEFAULT '0',
  `age` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `tinder_accounts`;

CREATE TABLE IF NOT EXISTS `tinder_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(1024) NOT NULL,
  `likeds` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `tinder_likes`;

CREATE TABLE IF NOT EXISTS `tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` longtext NOT NULL,
  `messages` longtext DEFAULT '{}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `tinder_messages`;

CREATE TABLE IF NOT EXISTS `twitter_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `twitter_account`;

CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

DELETE FROM `twitter_accounts`;

CREATE TABLE IF NOT EXISTS `twitter_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created` varchar(50) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `twitter_hashtags`;

CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

DELETE FROM `twitter_likes`;

CREATE TABLE IF NOT EXISTS `twitter_mentions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tweet` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mentioned` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `twitter_mentions`;

CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) DEFAULT NULL,
  `message` varchar(256) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `twitter_tweets`;

CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(60) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'werkloos',
  `job_grade` int(11) DEFAULT 1,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roepnummer` varchar(50) DEFAULT 'Onbekend',
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  `theorie` varchar(50) NOT NULL DEFAULT 'false',
  `rijbewijsA` varchar(50) NOT NULL DEFAULT 'false',
  `rijbewijsB` varchar(50) NOT NULL DEFAULT 'false',
  `rijbewijsC` varchar(50) NOT NULL DEFAULT 'false',
  `zorgverzekering` varchar(50) NOT NULL DEFAULT 'false',
  `job2` varchar(32) NOT NULL DEFAULT 'unemployed2',
  `job2_grade` varchar(32) NOT NULL DEFAULT '0',
  `playtime` int(11) DEFAULT NULL,
  `lastpos` varchar(255) DEFAULT '{-887.48388671875, -2311.68872070313,  -3.50776553153992, 142.503463745117}',
  `last_property` varchar(255) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `name` varchar(32) DEFAULT NULL,
  `apps` text DEFAULT NULL,
  `widget` text DEFAULT NULL,
  `bt` text DEFAULT NULL,
  `charinfo` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `cryptocurrency` longtext DEFAULT NULL,
  `cryptocurrencytransfers` text DEFAULT NULL,
  `phonePos` text DEFAULT NULL,
  `spotify` text DEFAULT NULL,
  `ringtone` text DEFAULT NULL,
  `first_screen_showed` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  `twitteraccount` varchar(50) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `calls` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `photos` longtext DEFAULT NULL,
  `darkchatuser` mediumtext DEFAULT NULL,
  `mailaccount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `users`;

CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `user_contacts`;

CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `user_licenses`;
INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
	(6, 'theorie', '2d610f6c7c4c6e677070cd32fbba92045bbdb95c');

CREATE TABLE IF NOT EXISTS `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `user_parkings`;

CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` varchar(60) NOT NULL,
  `topSpeed` varchar(60) NOT NULL,
  `krachtBron` varchar(60) NOT NULL,
  `land` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `vehicles`;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `stock`, `topSpeed`, `krachtBron`, `land`) VALUES
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dedgi', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dedgi', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Naudi', '96', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dedgi', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dedgi', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Naudi', '96', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dedgi', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dedgi', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Naudi', '96', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dedgi', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dedgi', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Naudi', '96', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dedgi', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dedgi', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Naudi', '96', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Naudi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KAM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kowosaka', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Hondo', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Fred', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Fred', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Fred', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Fred', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Fred', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentlie', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Metsubatshu', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'Bempie', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'Bempie', '99', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'Bempie', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Tayuti', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Beta Romio', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Beta Romio', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renoot', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renoot', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Renge River', '99', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Renge River', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissi', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissi', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissi', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissi', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissi', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Laxsus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dedgi', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dedgi', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dedgi', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dedgi', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dedgi', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dedgi', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mono', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Folkswaggie', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Folkswaggie', '84', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Parscho', '98', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Parscho', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Parscho', '99', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jiep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Naudi', '96', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Naudi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Merry', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Merry', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Merry', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Merry', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Merry', '96', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'LamberJamber', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'LamberJamber', '100', '', 'Benzine', 'Italië'),
	('Audi A6 2020', 'a6', 142000, 'Audi', '98', '', 'Benzine', 'Duitsland'),
	('Audi RS5 2021', 'rs52021', 255000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('2010 KTM EXC 530 Supermoto', 'exc530sm', 12000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('2012 KTM EXC-F 250 Enduro', 'excf250', 26000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('KTM Super Duke R 1290', 'ksd', 68000, 'KTM', '100', '', 'Benzine', 'Oostenrijk'),
	('Toyota Supra', 'a80', 90000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Sprinter Trueno GT Apex', 'ae86', 24000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Toyota Camry', 'cam8tun', 48000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Kawasaki KX450F', 'kx450f', 28000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10', 'zx10', 102800, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Kawasaki ZX10R', 'zx10r', 130000, 'Kawasaki', '100', '', 'Benzine', 'Japan'),
	('Honda Civic LX 4DR', 'civic96', 15000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Africat Twin', 'africat', 70000, 'Honda', '100', '', 'Benzine', 'Japan'),
	('Kamacho', 'kamacho', 160000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford Mustang GT', 'mgt', 292700, 'Ford', '99', '276', 'Benzine', 'Verenigde Staten'),
	('Rebel Raid', 'rebelr', 170000, 'Other', '100', '', 'Benzine', 'Los Santos'),
	('Ford F150 1978', 'f15078', 55000, 'Ford', '100', '146', 'Benzine', 'Verenigde Staten'),
	('Ford Bronco', 'wildtrak', 162000, 'Ford', '100', '206', 'Benzine', 'Verenigde Staten'),
	('Ford Raptor', 'raptor2017', 130000, 'Ford', '100', '182', 'Benzine', 'Verenigde Staten'),
	('Ford Escort', 'rmodescort', 76000, 'Ford', '100', '', 'Benzine', 'Verenigde Staten'),
	('Bentley Continental GT', 'contss18', 324000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Lancer EVO', 'cp9a', 73000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('Bentley Continental GT Supersports', 'rmodbentleygt', 341000, 'Bentley', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mitsubishi Eclipse GS 1995', 'bmeclipse95', 81000, 'Mitsubishi', '100', '', 'Benzine', 'Japan'),
	('BMW M5 E34', 'rmodm5e34', 64000, 'BMW', '98', '217', 'Benzine', 'Duitsland'),
	('BMW M5 Touring', 'bmwm5touring', 214000, 'BMW', '100', '264', 'Benzine', 'Duitsland'),
	('BMW M4 Liberty Walk', 'rmodm4gts', 214000, 'BMW', '100', '241', 'Benzine', 'Duitsland'),
	('Toyota GT-86', 'toy86', 101000, 'Toyota', '100', '', 'Benzine', 'Japan'),
	('Alfa Romeo Giulia GTAm 2021', 'gtam21', 240000, 'Alfa', '99', '', 'Benzine', 'Italië'),
	('Alfa Romeo 4c Spider', '4c', 64000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Alfa Romeo Stelvio', 'stelvio', 141000, 'Alfa', '100', '', 'Benzine', 'Italië'),
	('Lamborghini Urus', 'urus1016', 200000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Renault Clio', 'cliors', 28000, 'Renault', '100', '155', 'Benzine', 'Frankrijk'),
	('Renault Sport RS', 'sportrs', 70000, 'Renault', '100', '270', 'Benzine', 'Frankrijk'),
	('Range Rover Vogue Mansory', 'mansrr', 253000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Vogue Startech', 'rrst', 251000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Range Rover Sport SVR', 'rsvr16', 201000, 'Range', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Nissan GTR', 'r35', 270000, 'Nissan', '100', '269', 'Benzine', 'Japan'),
	('Nissan Skyline GTR R34', 'skyline', 93000, 'Nissan', '100', '254', 'Benzine', 'Japan'),
	('Nissan 180sx Rocket Bunny', '180sxrb', 73000, 'Nissan', '100', '218', 'Benzine', 'Japan'),
	('Nissan GTI-R', 'nisgtir', 25000, 'Nissan', '100', '153', 'Benzine', 'Japan'),
	('Nissan Silvia', 'silvia3', 40000, 'Nissan', '100', '183', 'Benzine', 'Japan'),
	('Lexus LX470', 'lx470', 60000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Lexus LFA', 'rmodlfa', 423000, 'Lexus', '100', '', 'Benzine', 'Japan'),
	('Dodge Charger 2016', '16charger', 231000, 'Dodge', '100', '258', 'Benzine', 'Verenigde Staten'),
	('Dodge Challenger 2016', '16challenger', 247000, 'Dodge', '100', '276', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger 1970', 'rmodcharger69', 50000, 'Dodge', '100', '241', 'Benzine', 'Verenigde Staten'),
	('Dodge Charger Hellcat Widebody', 'chr20', 260000, 'Dodge', '100', '266', 'Benzine', 'Verenigde Staten'),
	('Dodge RAM', 'ram2500lifted', 130000, 'Dodge', '100', '', 'Benzine', 'Verenigde Staten'),
	('Dodge Viper TA ACR', 'texviper', 254000, 'Dodge', '100', '267', 'Benzine', 'Verenigde Staten'),
	('Mini Cooper John Works', 'cooperworks', 20000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Mini Cooper Works GP', 'mcjcw20', 55000, 'Mini', '100', '', 'Benzine', 'Groot-Brittanië'),
	('Volkswagen Kever', 'beetle74', 10000, 'Volkswagen', '100', '110', 'Benzine', 'Duitsland'),
	('Volkswagen Golf 75R', 'rmodmk7', 40000, 'Volkswagen', '87', '204', 'Benzine', 'Duitsland'),
	('Porsche Cayenne', 'cayenneturbo', 80000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche 911 Turbo S', 'pts21', 290000, 'Porsche', '99', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Turbo', 'panamera17turbo', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche Panamera Techart', 'techart17', 360600, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Porsche GT3 RS', 'pgt322', 358200, 'Porsche', '100', '', 'Benzine', 'Duitsland'),
	('Maibatsu Mule', 'nmule', 300000, 'Maibatsu', '100', '', 'Benzine', 'Los Santos'),
	('Jeep Gladiator', 'gladiator', 110000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Wrangler', 'jp12', 70000, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Jeep Demonhawk', 'rmodjeep', 162300, 'Jeep', '100', '', 'Benzine', 'Verenigde Staten'),
	('Audi A3', '2015a3', 52400, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Audi RS6 2020', 'rmodrs6', 425000, 'Audi', '99', '', 'Benzine', 'Duitsland'),
	('Audi R8 2020', 'r8spyder20', 275000, 'Audi', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 6x6', 'dubsta3', 530000, 'Mercedes', '99', '', 'Benzine', 'Duitsland'),
	('Mercedes E63 2014', 'e632014', 338000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes G65 AMG', 'g65amg', 425000, 'Mercedes', '98', '', 'Benzine', 'Duitsland'),
	('Mercedes GLE 53 Coupe', 'gle53', 235000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes C63 Coupe AMG', 'rmodc63amg', 240000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus 800 E63s', 'rmode63s', 389000, 'Mercedes', '97', '', 'Benzine', 'Duitsland'),
	('Mercedes GT63 AMG', 'rmodgt63', 379600, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Mercedes S63 AMG', 's63amg', 383000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Brabus G800', 'w463a1', 610000, 'Mercedes', '100', '', 'Benzine', 'Duitsland'),
	('Lamborghini Huracan Evo', 'hevo', 230000, 'Lamborghini', '99', '', 'Benzine', 'Italië'),
	('Lamborghini Huracan Performanté', 'performante', 360000, 'Lamborghini', '100', '', 'Benzine', 'Italië');

CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `vehicles_for_sale`;

CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `vehicle_categories`;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('audi', 'Audi'),
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');

CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `vehicle_sold`;

CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `weashops`;
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 300),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
	(5, 'GunShop', 'WEAPON_MACHETE', 90),
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
	(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
	(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
	(9, 'GunShop', 'WEAPON_BAT', 100),
	(10, 'BlackWeashop', 'WEAPON_BAT', 100),
	(11, 'GunShop', 'WEAPON_STUNGUN', 50),
	(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
	(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
	(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
	(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
	(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
	(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
	(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
	(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
	(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
	(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
	(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
	(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
	(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
	(25, 'GunShop', 'WEAPON_GRENADE', 500),
	(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
	(27, 'GunShop', 'WEAPON_BZGAS', 200),
	(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
	(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
	(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
	(31, 'GunShop', 'WEAPON_BALL', 50),
	(32, 'BlackWeashop', 'WEAPON_BALL', 50),
	(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
	(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
	(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
	(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
	(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
	(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
	(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
	(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

CREATE TABLE IF NOT EXISTS `whatsapp_accounts` (
  `id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `whatsapp_accounts`;

CREATE TABLE IF NOT EXISTS `whatsapp_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `whatsapp_chats`;

CREATE TABLE IF NOT EXISTS `whatsapp_chats_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_chat` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `readed` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `whatsapp_chats_messages`;

CREATE TABLE IF NOT EXISTS `whatsapp_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `whatsapp_groups`;

CREATE TABLE IF NOT EXISTS `whatsapp_groups_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `read` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `whatsapp_groups_messages`;

CREATE TABLE IF NOT EXISTS `whatsapp_groups_users` (
  `number_group` varchar(50) NOT NULL,
  `admin` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `whatsapp_groups_users`;

CREATE TABLE IF NOT EXISTS `whatsapp_stories` (
  `phone` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DELETE FROM `whatsapp_stories`;

CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(60) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DELETE FROM `whitelist`;

CREATE TABLE IF NOT EXISTS `yellowpages_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

DELETE FROM `yellowpages_posts`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
