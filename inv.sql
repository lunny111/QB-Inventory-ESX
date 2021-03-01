-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for essentialmode1
CREATE DATABASE IF NOT EXISTS `essentialmode1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `essentialmode1`;

-- Dumping structure for table essentialmode1.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.addon_account: ~5 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'Caution', 0),
	('motels_bed_black_money', 'Motel Black Money', 0),
	('motels_black_money', 'Black Money', 0),
	('property_black_money', 'Argent Sale Propriété', 0),
	('society_police', 'PD', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5866 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode1.addon_account_data: ~9 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(5857, 'society_police', 0, NULL),
	(5858, 'motels_black_money', 0, 'steam:1100001342e381c'),
	(5859, 'motels_bed_black_money', 0, 'steam:1100001342e381c'),
	(5860, 'caution', 0, 'steam:1100001342e381c'),
	(5861, 'property_black_money', 0, 'steam:1100001342e381c'),
	(5862, 'property_black_money', 0, 'steam:110000114ee1718'),
	(5863, 'motels_black_money', 0, 'steam:110000114ee1718'),
	(5864, 'motels_bed_black_money', 0, 'steam:110000114ee1718'),
	(5865, 'caution', 0, 'steam:110000114ee1718');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.addon_inventory: ~5 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('housing', 'Housing', 0),
	('motels', 'Motels Inventory', 0),
	('motels_bed', 'Motels Bed Inventory', 0),
	('property', 'Propriété', 0),
	('society_police', 'PD', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB AUTO_INCREMENT=688 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode1.addon_inventory_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.armory
CREATE TABLE IF NOT EXISTS `armory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `weapon` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `armory_job` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table essentialmode1.armory: ~0 rows (approximately)
/*!40000 ALTER TABLE `armory` DISABLE KEYS */;
/*!40000 ALTER TABLE `armory` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode1.billing: ~0 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2990 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode1.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.datastore: ~0 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_police', 'PD', 1);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `owner` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `data` longtext CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`) USING BTREE,
  KEY `index_datastore_data_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.datastore_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(2462, 'society_police', NULL, '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.disc_ammo
CREATE TABLE IF NOT EXISTS `disc_ammo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table essentialmode1.disc_ammo: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_ammo` DISABLE KEYS */;
INSERT INTO `disc_ammo` (`id`, `owner`, `hash`, `count`) VALUES
	(49, 'steam:1100001342e381c', '1593441988', 1);
/*!40000 ALTER TABLE `disc_ammo` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table essentialmode1.fine_types: ~52 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Usage abusif du klaxon', 30, 0),
	(2, 'Franchir une ligne continue', 40, 0),
	(3, 'Circulation à contresens', 250, 0),
	(4, 'Demi-tour non autorisé', 250, 0),
	(5, 'Circulation hors-route', 170, 0),
	(6, 'Non-respect des distances de sécurité', 30, 0),
	(7, 'Arrêt dangereux / interdit', 150, 0),
	(8, 'Stationnement gênant / interdit', 70, 0),
	(9, 'Non respect  de la priorité à droite', 70, 0),
	(10, 'Non-respect à un véhicule prioritaire', 90, 0),
	(11, 'Non-respect d\'un stop', 105, 0),
	(12, 'Non-respect d\'un feu rouge', 130, 0),
	(13, 'Dépassement dangereux', 100, 0),
	(14, 'Véhicule non en état', 100, 0),
	(15, 'Conduite sans permis', 1500, 0),
	(16, 'Délit de fuite', 800, 0),
	(17, 'Excès de vitesse < 5 kmh', 90, 0),
	(18, 'Excès de vitesse 5-15 kmh', 120, 0),
	(19, 'Excès de vitesse 15-30 kmh', 180, 0),
	(20, 'Excès de vitesse > 30 kmh', 300, 0),
	(21, 'Entrave de la circulation', 110, 1),
	(22, 'Dégradation de la voie publique', 90, 1),
	(23, 'Trouble à l\'ordre publique', 90, 1),
	(24, 'Entrave opération de police', 130, 1),
	(25, 'Insulte envers / entre civils', 75, 1),
	(26, 'Outrage à agent de police', 110, 1),
	(27, 'Menace verbale ou intimidation envers civil', 90, 1),
	(28, 'Menace verbale ou intimidation envers policier', 150, 1),
	(29, 'Manifestation illégale', 250, 1),
	(30, 'Tentative de corruption', 1500, 1),
	(31, 'Arme blanche sortie en ville', 120, 2),
	(32, 'Arme léthale sortie en ville', 300, 2),
	(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
	(34, 'Port d\'arme illégal', 700, 2),
	(35, 'Pris en flag lockpick', 300, 2),
	(36, 'Vol de voiture', 1800, 2),
	(37, 'Vente de drogue', 1500, 2),
	(38, 'Fabriquation de drogue', 1500, 2),
	(39, 'Possession de drogue', 650, 2),
	(40, 'Prise d\'ôtage civil', 1500, 2),
	(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
	(42, 'Braquage particulier', 650, 2),
	(43, 'Braquage magasin', 650, 2),
	(44, 'Braquage de banque', 1500, 2),
	(45, 'Tir sur civil', 2000, 3),
	(46, 'Tir sur agent de l\'état', 2500, 3),
	(47, 'Tentative de meurtre sur civil', 3000, 3),
	(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
	(49, 'Meurtre sur civil', 10000, 3),
	(50, 'Meurte sur agent de l\'état', 30000, 3),
	(51, 'Meurtre involontaire', 1800, 3),
	(52, 'Escroquerie à l\'entreprise', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.gloveboxitems
CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.gloveboxitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `gloveboxitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `gloveboxitems` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.gloveboxitemsnew
CREATE TABLE IF NOT EXISTS `gloveboxitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `plate` (`plate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1558 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.gloveboxitemsnew: ~2 rows (approximately)
/*!40000 ALTER TABLE `gloveboxitemsnew` DISABLE KEYS */;
INSERT INTO `gloveboxitemsnew` (`id`, `plate`, `items`) VALUES
	(1556, '09ENW991', '[]'),
	(1557, '02UTZ725', '[]');
/*!40000 ALTER TABLE `gloveboxitemsnew` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` varchar(4) COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  `closeonuse` int(1) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.items: ~323 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `closeonuse`) VALUES
	('1gr_roka', 'Roka', '1', 0, 1, 0),
	('ArmorBelt', 'Çelik Yelek Kemeri', '1', 0, 1, 0),
	('HeavyArmor', 'Ağır Çelik Yelek', '1', 0, 1, 0),
	('MedArmor', 'Çelik Yelek', '1', 0, 1, 0),
	('SmallArmor', 'Hafif Çelik Yelek', '1', 0, 1, 0),
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', '1', 0, 1, 0),
	('WEAPON_APPISTOL', 'AP Pistol', '1', 0, 1, 0),
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', '1', 0, 1, 0),
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', '1', 0, 1, 0),
	('WEAPON_ASSAULTSMG', 'Assault SMG', '1', 0, 1, 0),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', '0.1', 0, 1, 0),
	('WEAPON_BALL', 'Ball', '2.5', 0, 1, 0),
	('WEAPON_BAT', 'Beyzbol Sopası', '5', 0, 1, 0),
	('WEAPON_BATTLEAXE', 'Balta', '5', 0, 1, 0),
	('WEAPON_BOTTLE', 'Bottle', '1', 0, 1, 0),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', '1', 0, 1, 0),
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', '1', 0, 1, 0),
	('WEAPON_BZGAS', 'BZ Gas', '1', 0, 1, 0),
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', '1', 0, 1, 0),
	('WEAPON_COMBATMG', 'Combat MG', '1', 0, 1, 0),
	('WEAPON_COMBATPDW', 'Combat PDW', '1', 0, 1, 0),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', '1', 0, 1, 0),
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', '1', 0, 1, 0),
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', '1', 0, 1, 0),
	('WEAPON_CROWBAR', 'Crowbar', '1', 0, 1, 0),
	('WEAPON_DAGGER', 'Dagger', '1', 0, 1, 0),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', '1', 0, 1, 0),
	('WEAPON_DIGISCANNER', 'Digiscanner', '1', 0, 1, 0),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', '1', 0, 1, 0),
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', '1', 0, 1, 0),
	('WEAPON_FIREWORK', 'Firework Launcher', '1', 0, 1, 0),
	('WEAPON_FLARE', 'Flare', '1', 0, 1, 0),
	('WEAPON_FLAREGUN', 'Flare Gun', '1', 0, 1, 0),
	('WEAPON_FLASHLIGHT', 'El Feneri', '1.4', 0, 1, 0),
	('WEAPON_GARBAGEBAG', 'Garbage Bag', '1', 0, 1, 0),
	('WEAPON_GOLFCLUB', 'Golf Club', '1', 0, 1, 0),
	('WEAPON_GRENADE', 'Grenade', '1', 0, 1, 0),
	('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', '1', 0, 1, 0),
	('WEAPON_GUSENBERG', 'Gusenberg', '1', 0, 1, 0),
	('WEAPON_HAMMER', 'Hammer', '1', 0, 1, 0),
	('WEAPON_HANDCUFFS', 'Handcuffs', '1', 0, 1, 0),
	('WEAPON_HATCHET', 'Hatchet', '1', 0, 1, 0),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', '1', 0, 1, 0),
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', '1', 0, 1, 0),
	('WEAPON_HEAVYSNIPER', 'Heavy Sniper', '1', 0, 1, 0),
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', '1', 0, 1, 0),
	('WEAPON_KNIFE', 'Bıçak', '1.6', 0, 1, 0),
	('WEAPON_KNUCKLE', 'Knuckle Dusters ', '1', 0, 1, 0),
	('WEAPON_MACHETE', 'Machete', '2.8', 0, 1, 0),
	('WEAPON_MACHINEPISTOL', 'Machine Pistol', '1', 0, 1, 0),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', '1', 0, 1, 0),
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', '1', 0, 1, 0),
	('WEAPON_MG', 'MG', '1', 0, 1, 0),
	('WEAPON_MICROSMG', 'MicroSMG', '4.6', 0, 1, 0),
	('WEAPON_MINIGUN', 'Minigun', '1', 0, 1, 0),
	('WEAPON_MINISMG', 'Mini SMG', '1', 0, 1, 0),
	('WEAPON_MOLOTOV', 'Molotov', '1', 0, 1, 0),
	('WEAPON_MUSKET', 'Musket', '1', 0, 1, 0),
	('WEAPON_NIGHTSTICK', 'Jop', '2.5', 0, 1, 0),
	('WEAPON_PETROLCAN', 'Petrol Can', '1', 0, 1, 0),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', '1', 0, 1, 0),
	('WEAPON_PISTOL', 'U-F Pistol 0.67', '1', 0, 1, 0),
	('WEAPON_PISTOL50', 'Police .50', '1', 0, 1, 0),
	('WEAPON_POOLCUE', 'Pool Cue', '1', 0, 1, 0),
	('WEAPON_PROXMINE', 'Proximity Mine', '1', 0, 1, 0),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', '1', 0, 1, 0),
	('WEAPON_RAILGUN', 'Rail Gun', '1', 0, 1, 0),
	('WEAPON_REVOLVER', 'Revolver', '1', 0, 1, 0),
	('WEAPON_RPG', 'RPG', '1', 0, 1, 0),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', '1', 0, 1, 0),
	('WEAPON_SMG', 'SMG', '8', 0, 1, 0),
	('WEAPON_SMOKEGRENADE', 'Smoke Gernade', '1', 0, 1, 0),
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', '1', 0, 1, 0),
	('WEAPON_SNOWBALL', 'Kar Topu', '1', 0, 1, 0),
	('WEAPON_SNSPISTOL', 'SNS Pistol', '1', 0, 1, 0),
	('WEAPON_SPECIALCARBINE', 'Special Rifle', '1', 0, 1, 0),
	('WEAPON_STICKYBOMB', 'Sticky Bombs', '1', 0, 1, 0),
	('WEAPON_STINGER', 'Stinger', '1', 0, 1, 0),
	('WEAPON_STUNGUN', 'Teaser', '2', 0, 1, 0),
	('WEAPON_SWITCHBLADE', 'Switchblade', '1.5', 0, 1, 0),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', '1', 0, 1, 0),
	('WEAPON_WRENCH', 'Wrench', '1', 0, 1, 0),
	('acabbage', 'Kirli Lahana', '0.8', 0, 1, 0),
	('acetone', 'Aseton', '0.5', 0, 1, 0),
	('advancedlockpick', 'Gelişmiş Maymuncuk', '1', 0, 1, 0),
	('alive_chicken', 'Ölü Tavuk', '2', 0, 1, 0),
	('ambalaj', 'Ambalaj', '1', 0, 1, 0),
	('anakart', 'Anakart', '1', 0, 1, 0),
	('antidepresan', 'Antidepresan', '1', 0, 1, 0),
	('arAmmo', 'Assault Rifle Ammo Box', '2', 0, 1, 0),
	('armour', 'Agir Zirh', '10', 0, 1, 0),
	('armourhalf', 'Hafif Zirh', '4', 0, 1, 0),
	('bag', 'Siyah Askılı Çanta', '0', 0, 1, 0),
	('baggie', 'baggie', '1', 0, 1, 0),
	('bakingsoda', 'bakingsoda', '1', 0, 1, 0),
	('ballasbandana', 'Mor Bandana', '1', 0, 0, 0),
	('bandage', 'Bandaj', '0.8', 0, 1, 0),
	('bariyer', 'Bariyer', '5', 0, 1, 0),
	('batteryacid', 'batteryacid', '1', 0, 1, 0),
	('bcabbage', 'Lahana', '1', 0, 1, 0),
	('beer', 'Bira', '0', 0, 1, 0),
	('bitcoin', 'Bitcoin', '1', 0, 1, 0),
	('bloodsbandana', 'Kırmızı Bandana', '1', 0, 0, 0),
	('blowpipe', 'Chalumeaux', '2', 0, 1, 0),
	('blowtorch', 'Kaynak Makinesi', '1', 0, 1, 0),
	('blue_phone', 'Mavi Telefon', '1', 0, 1, 0),
	('bobbypin', 'Tel Toka', '1', 0, 1, 0),
	('bolcacahuetes', 'Bol de cacahuètes', '1', 0, 1, 0),
	('bolchips', 'Bol de chips', '1', 0, 1, 0),
	('bolnoixcajou', 'Bol de noix de cajou', '1', 0, 1, 0),
	('bolpistache', 'Bol de pistaches', '1', 0, 1, 0),
	('bottle', '50cl Flaska-Tom', '1', 0, 1, 0),
	('bread', 'Ekmek', '0.2', 0, 1, 0),
	('c4_bank', 'C4 Bomb', '1', 0, 1, 0),
	('cajadecamarones', 'Paketlenmiş Karides', '1', 0, 1, 0),
	('cajadecangrejos', 'Paketlenmiş Yengeç', '1', 0, 1, 0),
	('camarones', 'Karides', '1', 0, 1, 0),
	('camera', 'Fotoğraf Makinesi', '1', 0, 1, 0),
	('cangrejos', 'Yengeç', '1', 0, 1, 0),
	('cannabis', 'Kenevir', '3', 0, 1, 0),
	('carokit', 'Arac Tamir Kiti', '2', 0, 1, 0),
	('carotool', 'Arac Tamir Kiti', '2', 0, 1, 0),
	('cash', 'Nakit Para', '0', 0, 1, 0),
	('champagne', 'Şampanya', '0.6', 0, 1, 0),
	('cheesebows', 'Çizburger', '0.2', 0, 1, 0),
	('chips', 'Cips', '0.1', 0, 1, 0),
	('chocolate', 'Çikolata', '0.1', 0, 1, 0),
	('choped_melon', 'Kesilmiş Karpuz', '1.2', 0, 1, 0),
	('choped_sarap', 'İşlenmiş Üzüm', '1.3', 0, 1, 0),
	('cigarette', 'Sigara', '0.1', 0, 1, 0),
	('clothe', 'Kiyafet', '2', 0, 1, 0),
	('cocacola', 'Coca-Cola', '0.3', 0, 1, 0),
	('coffe', 'Kahve', '0', 0, 1, 0),
	('coke10g', 'Cocaine (10G)', '1', 0, 1, 0),
	('coke1g', 'Cocaine (1G)', '1', 0, 1, 0),
	('cokebrick', 'Cocaine Brick (100G)', '1', 0, 1, 0),
	('cokeburn', 'White USB-C', '2', 0, 1, 0),
	('contract', 'Araç Kontratı', '0.1', 0, 1, 0),
	('cookingpot', 'cookingpot', '1', 0, 1, 0),
	('copper', 'Bakir', '2', 0, 1, 0),
	('crack1g', 'crack1g', '1', 0, 1, 0),
	('cripsbandana', 'Mavi Bandana', '1', 0, 0, 0),
	('cuff', 'Kelepçe', '1', 0, 1, 0),
	('cuffkeys', 'Kelepçe Anahtarı', '6', 0, 1, 0),
	('cupcake', 'Cupkek', '0.1', 0, 1, 0),
	('cutted_wood', 'Kesilmis Odun', '3', 0, 1, 0),
	('diamond', 'Elmas', '1', 0, 1, 0),
	('disc_ammo_pistol', 'Tabanca Sarjörü', '3', 0, 1, 0),
	('disc_ammo_pistol_large', 'Pistol Ammo Large', '4', 0, 1, 0),
	('disc_ammo_rifle', 'Rifle Ammo', '5', 0, 1, 0),
	('disc_ammo_rifle_large', 'Rifle Ammo Large', '6', 0, 1, 0),
	('disc_ammo_shotgun', 'Shotgun Shells', '7', 0, 1, 0),
	('disc_ammo_shotgun_large', 'Shotgun Shells Large', '8', 0, 1, 0),
	('disc_ammo_smg', 'SMG Sarjörü', '5', 0, 1, 0),
	('disc_ammo_smg_large', 'SMG Ammo Large', '6', 0, 1, 0),
	('disc_ammo_snp', 'Sniper Ammo', '20', 0, 1, 0),
	('disc_ammo_snp_large', 'Sniper Ammo Large', '25', 0, 1, 0),
	('drpepper', 'Dr. Pepper', '1', 0, 1, 0),
	('drugbags', 'Bags', '1', 0, 1, 0),
	('energy', 'Enerji İçeceği', '0.3', 0, 1, 0),
	('essence', 'Oz', '2', 0, 1, 0),
	('extasy', 'Extasy (1G)', '1', 0, 1, 0),
	('extasy_pooch', 'Paketlenmis Extasy (28G)', '28', 0, 1, 0),
	('fabric', 'Fabric', '2', 0, 1, 0),
	('fanta', 'Fanta', '0.3', 0, 1, 0),
	('fish', 'Tatlı Su Balığı', '3', 0, 1, 0),
	('fishbait', 'Balık Yemi', '0.1', 0, 1, 0),
	('fishingrod', 'Olta', '2.5', 0, 1, 0),
	('fixkit', 'Tamir Kiti', '2.5', 0, 1, 0),
	('fixtool', 'Tamir Kiti', '3', 0, 1, 0),
	('flashlight', 'El Feneri', '1.6', 0, 1, 0),
	('gazbottle', 'Gaz Sisesi', '2', 0, 1, 0),
	('gintonic', 'Cintonik', '0', 0, 1, 0),
	('gold', 'Altin', '2', 0, 1, 0),
	('goldNecklace', 'Altın Kolye', '2', 0, 1, 0),
	('golem', 'Golem', '1', 0, 1, 0),
	('gps', 'GPS', '0.7', 0, 1, 0),
	('grapperaisin', 'Grappe de raisin', '1', 0, 1, 0),
	('green_phone', 'Yeşil Telefon', '1', 0, 1, 0),
	('greenbandana', 'Yeşil Bandana', '1', 0, 0, 0),
	('grip', 'Kabza', '1', 0, 1, 0),
	('gym_membership', 'GYM Giriş Kartı', '0.1', 0, 1, 0),
	('hamburger', 'Hamburger', '0.2', 0, 1, 0),
	('hatchet_lj', 'Balta', '1', 0, 1, 0),
	('hifi', 'BoomBox', '5', 0, 1, 0),
	('honey_a', 'Petek Bal', '0.8', 0, 1, 0),
	('honey_b', 'Kavanoz Bal', '1.2', 0, 1, 0),
	('hqscale', 'High Quality Scale', '1', 0, 1, 0),
	('ice', 'Glaçon', '1', 0, 1, 0),
	('icetea', 'Ice-Tea', '0', 0, 1, 0),
	('ilac', 'Ilac', '1', 0, 1, 0),
	('iron', 'Demir', '2', 0, 1, 0),
	('jager', 'Jägermeister', '1', 0, 1, 0),
	('jagerbomb', 'Jägerbomb', '1', 0, 1, 0),
	('jagercerbere', 'Jäger Cerbère', '1', 0, 1, 0),
	('james_fish', 'Çiğ balık', '3', 0, 1, 0),
	('james_fishingbait', 'Balık Yemi', '0.2', 0, 1, 0),
	('james_fishingrod', 'Olta', '1.5', 0, 1, 0),
	('jewels', 'Mucevher', '3', 0, 1, 0),
	('joint2g', 'Joint (2G)', '50', 0, 1, 0),
	('juice_orage', 'Portakal Suyu', '1.4', 0, 1, 0),
	('jusfruit', 'Jus de fruits', '1', 0, 1, 0),
	('kelepce', 'Kelepçe', '1', 0, 1, 0),
	('kelepceanahtar', 'Kelepçe Anahtarı', '0.1', 0, 1, 0),
	('kesilmistavuk', 'Kesilmiş Tavuk', '2', 0, 1, 0),
	('keycard', 'Hacker Tablet', '2', 0, 1, 0),
	('kirlianakart', 'Kirli Anakart', '1', 0, 1, 0),
	('kocbasi', 'Kapı Maymuncuğu', '1', 0, 1, 0),
	('kutu', 'Kutu', '2', 0, 1, 0),
	('laptop', 'Laptop', '1.6', 0, 1, 0),
	('lighter', 'Çakmak', '0.2', 0, 1, 0),
	('limonade', 'Limonade', '1', 0, 1, 0),
	('lithium', 'Lityum Batarya', '1.5', 0, 1, 0),
	('lockpick', 'Maymuncuk', '1.3', 0, 1, 0),
	('lsd', 'Lsd (1G)', '1', 0, 1, 0),
	('lsd_pooch', 'Paketlenmis Lsd (28G)', '28', 0, 1, 0),
	('marijuana', 'Paketlenmiş Kenevir', '3', 0, 1, 0),
	('martini', 'Martini blanc', '1', 0, 1, 0),
	('mdt', 'Polis Tableti', '0.5', 0, 1, 0),
	('medikit', 'Sağlık Çantası', '3.5', 0, 1, 0),
	('melon', 'Karpuz', '0.8', 0, 1, 0),
	('menthe', 'Feuille de menthe', '1', 0, 1, 0),
	('merhem', 'Merhem', '1', 0, 1, 0),
	('meth', 'Meth', '1', 0, 1, 0),
	('meth10g', 'Meth (10G)', '50', 0, 1, 0),
	('meth1g', 'Meth (1G)', '50', 0, 1, 0),
	('methbrick', 'Meth Brick (100G)', '20', 0, 1, 0),
	('methburn', 'Blue USB-C', '2', 0, 1, 0),
	('methlab', 'Methlab', '2', 0, 1, 0),
	('metreshooter', 'Mètre de shooter', '1', 0, 1, 0),
	('mgAmmo', 'Maching Gun Ammo Box', '2', 0, 1, 0),
	('mixapero', 'Mix Apéritif', '1', 0, 1, 0),
	('mojito', 'Mojito', '1', 0, 1, 0),
	('ogkush', 'ogkush', '1', 0, 1, 0),
	('opium', 'Kokain', '0.8', 0, 1, 0),
	('opiums', 'Paketlenmiş Kokain', '1.6', 0, 1, 0),
	('orage', 'Portakal', '1.2', 0, 1, 0),
	('orangebandana ', 'Turuncu Bandana', '1', 0, 0, 0),
	('pAmmo', 'Tabanca Sarjor', '1', 0, 1, 0),
	('packaged_plank', 'Paketlenmis Odun', '5', 0, 1, 0),
	('paketanakart', 'Paketlenmiş Anakart', '1', 0, 1, 0),
	('paketuzum', 'Paketlenmiş Üzüm', '1', 0, 1, 0),
	('petrol', 'Petrol', '2', 0, 1, 0),
	('petrol_raffin', 'Rafine Petrol', '2', 0, 1, 0),
	('phone', 'Telefon', '1.5', 0, 1, 0),
	('pico', 'Herramienta de mineria', '1', 0, 1, 0),
	('powerade', 'Powerade', '1', 0, 1, 0),
	('pro_wood', 'Tahta', '1', 0, 1, 0),
	('protein_shake', 'Protein Karşımı', '1', 0, 1, 0),
	('ps4', 'Oyun Konsolu', '1', 0, 1, 0),
	('psuedoephedrine', 'psuedoephedrine', '1', 0, 1, 0),
	('pyrex', 'pyrex', '1', 0, 1, 0),
	('radio', 'Telsiz', '1.2', 0, 1, 0),
	('rawcoke', 'rawcoke', '1', 0, 1, 0),
	('rawcrack', 'rawcrack', '1', 0, 1, 0),
	('rawmeth', 'rawmeth', '1', 0, 1, 0),
	('rhum', 'Rhum', '1', 0, 1, 0),
	('rhumcoca', 'Rhum-coca', '1', 0, 1, 0),
	('rhumfruit', 'Rhum-jus de fruits', '1', 0, 1, 0),
	('ring', 'Altin Yuzuk', '1.1', 0, 1, 0),
	('rolex', 'Rolex Saat', '1.3', 0, 1, 0),
	('rolpaper', 'Rolling Paper', '1', 0, 1, 0),
	('rope', 'Ip', '1', 0, 1, 0),
	('samsungS10', 'SamsungS10', '0.9', 0, 1, 0),
	('sandwich', 'Sandwich', '0.5', 0, 1, 0),
	('sarap', 'Üzüm', '0.9', 0, 1, 0),
	('sarjorpistol', 'Tabanca Sarjor', '1', 0, 1, 0),
	('sarjorpompali', 'Pompali Sarjor', '1', 0, 1, 0),
	('sarjortaramali', 'Taramali Sarjor', '1', 0, 1, 0),
	('saucisson', 'Saucisson', '1', 0, 1, 0),
	('seed_weed', 'Esrar Tohumu', '3', 0, 1, 0),
	('sgAmmo', 'Shotgun Ammo Box', '5', 0, 1, 0),
	('shark', 'Shark', '1', 0, 1, 0),
	('shx_fishtaco', 'Fish Taco', '1', 0, 1, 0),
	('shx_mercan', 'Mercan', '1', 0, 1, 0),
	('shx_paketlenmistaco', 'Packaged Taco', '1', 0, 1, 0),
	('shx_pmarul', 'Marul', '1', 0, 1, 0),
	('shx_salca', 'Salca', '1', 0, 1, 0),
	('shx_stone', 'Stone', '1', 0, 1, 0),
	('shx_taco', 'Taco', '1', 0, 1, 0),
	('shx_yosun', 'Yosun', '1', 0, 1, 0),
	('silencieux', 'Susturucu', '0.5', 0, 1, 0),
	('sim', 'Sim', '-1', 0, 1, 0),
	('slaughtered_chicken', 'Paketlenmiş Tavuk', '3', 0, 1, 0),
	('soda', 'Soda', '1', 0, 1, 0),
	('spiketrips', 'Spiketrips', '5', 0, 1, 0),
	('sportlunch', 'Sportlunch', '1', 0, 1, 0),
	('sportmode', 'NoS 3.0', '5', 0, 1, 0),
	('sportmoderemover', 'NoS 3.0 Çıkartıcı', '0.5', 0, 1, 0),
	('sprite', 'Sprite', '0.3', 0, 1, 0),
	('stone', 'Tas', '2', 0, 1, 0),
	('temizlikbezi', 'Araç Temizlik Bezi', '1', 0, 1, 0),
	('teqpaf', 'Teq\'paf', '1', 0, 1, 0),
	('tequila', 'Tekila', '0', 0, 1, 0),
	('thermite', 'Thermite', '1', 0, 1, 0),
	('tuning_laptop', 'Mekanik Tableti', '1', 0, 1, 0),
	('turtle', 'Sea Turtle', '1', 0, 1, 0),
	('turtlebait', 'Turtle Bait', '1', 0, 1, 0),
	('tyre', 'Tekerlek', '1', 0, 1, 0),
	('vagosbandana', 'Sarı Bandana', '1', 0, 0, 0),
	('vodka', 'Vodka', '0', 0, 1, 0),
	('vodkaenergy', 'Vodka-energy', '1', 0, 1, 0),
	('vodkafruit', 'Vodka-jus de fruits', '1', 0, 1, 0),
	('wallet', 'Cüzdan', '0.8', 0, 1, 0),
	('washed_stone', 'Yikanmis Tas', '2', 0, 1, 0),
	('water', 'Su', '0.2', 0, 1, 0),
	('weed', 'Esrar', '3', 0, 1, 0),
	('weed20g', 'Weed (20G)', '100', 0, 1, 0),
	('weed4g', 'Weed (4G)', '200', 0, 1, 0),
	('weed_pooch', 'Paketlenmis Esrar', '6', 0, 1, 0),
	('weedbrick', 'Weed Brick (200G)', '25', 0, 1, 0),
	('weedburn', 'Green USB-C', '2', 0, 1, 0),
	('weedqtroz', 'weedqtroz', '1', 0, 1, 0),
	('weedseed', 'Kenevir Tohumu', '1.5', 0, 1, 0),
	('whisky', 'Viski', '0', 0, 1, 0),
	('whiskycoca', 'Whisky-coca', '1', 0, 1, 0),
	('white_phone', 'Beyaz Telefon', '1', 0, 1, 0),
	('whitebandana', 'Beyaz Bandana', '1', 0, 0, 0),
	('wood', 'Odun', '3.3', 0, 1, 0),
	('wool', 'Yun', '2.6', 0, 1, 0),
	('yikanmisanakart', 'Islak Anakart', '1', 0, 1, 0),
	('yikanmistavuk', 'Yıkanmış Tavuk', '1', 0, 1, 0),
	('yusuf', 'Silah Kostumu', '5', 0, 1, 0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.jobs: ~7 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `name`, `label`, `whitelisted`) VALUES
	(25, 'slaughterer', 'Kasap', 0),
	(26, 'tailor', 'Terzi', 0),
	(27, 'taxi', 'Taxi', 0),
	(29, 'unemployed', 'İşsiz', 0),
	(95, 'offpolice', 'Off-Duty PD', 1),
	(98, 'police', 'PD', 1),
	(99, 'lumberjack', 'Oduncu', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_turkish_ci NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.job_grades: ~35 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'İşsiz', 250, '{}', '{}'),
	(2, 'lumberjack', 0, 'employee', 'Oduncu', 50, '{"bodyb_2":0,"age_1":0,"shoes_2":0,"sun_1":0,"arms":11,"beard_4":0,"shoes_1":12,"blush_1":0,"bracelets_1":-1,"beard_1":0,"moles_2":0,"face":0,"makeup_1":0,"torso_2":0,"eyebrows_3":0,"glasses_2":0,"chain_1":0,"ears_1":-1,"complexion_1":0,"bproof_2":0,"chain_2":0,"arms_2":0,"tshirt_1":46,"lipstick_2":0,"eye_color":0,"decals_1":0,"glasses_1":15,"age_2":0,"hair_2":0,"blemishes_1":0,"watches_1":-1,"ears_2":0,"bracelets_2":0,"hair_color_2":0,"complexion_2":0,"pants_1":9,"torso_1":43,"hair_1":0,"makeup_4":0,"bags_1":0,"eyebrows_1":0,"pants_2":6,"helmet_2":0,"lipstick_3":0,"mask_1":0,"mask_2":0,"eyebrows_2":0,"sex":0,"sun_2":0,"moles_1":0,"eyebrows_4":0,"blush_3":0,"beard_2":0,"blush_2":0,"bags_2":0,"makeup_3":0,"watches_2":0,"decals_2":0,"chest_2":0,"hair_color_1":0,"chest_3":0,"lipstick_1":0,"makeup_2":0,"blemishes_2":0,"tshirt_2":0,"lipstick_4":0,"chest_1":0,"beard_3":0,"skin":0,"helmet_1":0,"bodyb_1":0,"bproof_1":0}', '{}'),
	(4, 'fueler', 0, 'employee', 'Petrolcü', 50, '{"bodyb_2":0,"age_1":0,"shoes_2":3,"sun_2":0,"arms":0,"beard_4":0,"tshirt_2":0,"blush_1":0,"lipstick_4":0,"beard_1":0,"moles_2":0,"face":0,"makeup_1":0,"torso_2":0,"chest_1":0,"glasses_2":0,"chain_1":39,"ears_1":-1,"moles_1":0,"bproof_2":0,"chain_2":2,"arms_2":0,"tshirt_1":59,"chest_3":0,"eye_color":0,"decals_1":0,"glasses_1":0,"age_2":0,"hair_2":0,"blemishes_1":0,"watches_1":-1,"ears_2":0,"bracelets_2":0,"hair_color_2":0,"complexion_2":0,"pants_1":0,"torso_1":94,"hair_1":0,"makeup_4":0,"bags_1":0,"eyebrows_1":0,"pants_2":4,"helmet_2":6,"lipstick_3":0,"mask_1":0,"mask_2":0,"eyebrows_2":0,"sex":0,"blush_2":0,"complexion_1":0,"eyebrows_4":0,"sun_1":0,"bodyb_1":0,"lipstick_2":0,"bags_2":0,"beard_3":0,"eyebrows_3":0,"decals_2":0,"chest_2":0,"hair_color_1":0,"shoes_1":51,"bracelets_1":-1,"makeup_2":0,"blemishes_2":0,"makeup_3":0,"helmet_1":76,"beard_2":0,"blush_3":0,"skin":0,"watches_2":0,"bproof_1":0,"lipstick_1":0}', '{}'),
	(6, 'tailor', 0, 'employee', 'Terzi', 50, '{"tshirt_1":15,"beard_3":0,"arms":4,"sun_2":0,"chest_2":0,"bodyb_1":0,"blush_2":0,"pants_1":60,"ears_1":-1,"beard_1":0,"torso_1":100,"age_1":0,"makeup_3":0,"blemishes_2":0,"bodyb_2":0,"torso_2":0,"bproof_1":0,"decals_2":0,"bracelets_1":-1,"hair_color_1":0,"lipstick_4":0,"eyebrows_4":0,"moles_1":0,"bags_1":0,"bags_2":0,"sun_1":0,"blush_1":0,"skin":0,"beard_4":0,"bracelets_2":0,"blush_3":0,"arms_2":0,"eyebrows_2":0,"watches_1":-1,"glasses_2":0,"shoes_1":15,"age_2":0,"chest_1":0,"glasses_1":0,"chest_3":0,"watches_2":0,"face":0,"mask_2":0,"makeup_2":0,"lipstick_3":0,"eyebrows_1":0,"shoes_2":0,"blemishes_1":0,"moles_2":0,"tshirt_2":4,"pants_2":0,"makeup_1":0,"bproof_2":0,"chain_2":0,"chain_1":0,"helmet_2":0,"eye_color":0,"hair_2":0,"decals_1":0,"complexion_2":0,"eyebrows_3":0,"helmet_1":64,"lipstick_2":0,"mask_1":0,"makeup_4":0,"hair_color_2":0,"complexion_1":0,"beard_2":0,"sex":0,"lipstick_1":0,"hair_1":3,"ears_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(1266, 'police', 0, 'officer1', 'Officer I', 20, '{}', '{}'),
	(1267, 'police', 1, 'officer2', 'Officer II', 40, '{}', '{}'),
	(1268, 'police', 2, 'officer3', 'Officer III', 60, '{}', '{}'),
	(1269, 'police', 3, 'lieutenant', 'Officer III+1', 85, '{}', '{}'),
	(1270, 'police', 4, 'sergeant', 'Sergeant', 100, '{}', '{}'),
	(1271, 'police', 5, 'topsergeant', 'Top Sergeant', 20, '{}', '{}'),
	(1272, 'police', 6, 'lieutenant', 'Lieutenant', 40, '{}', '{}'),
	(1273, 'police', 7, 'firstlieutenant', 'First Lieutenant', 60, '{}', '{}'),
	(1274, 'police', 8, 'captain1', 'Captain I', 85, '{}', '{}'),
	(1275, 'police', 9, 'captain2', 'Captain II', 100, '{}', '{}'),
	(1276, 'police', 10, 'captain3', 'Captain III', 20, '{}', '{}'),
	(1277, 'police', 11, 'commander', 'Commander', 40, '{}', '{}'),
	(1278, 'police', 12, 'deputychief', 'Deputy Chief', 60, '{}', '{}'),
	(1279, 'police', 13, 'assistantchief', 'Assistant Chief', 85, '{}', '{}'),
	(1280, 'police', 14, 'boss', 'Chief of Police', 100, '{}', '{}'),
	(1281, 'offpolice', 0, 'officer1', 'Officer I', 20, '{}', '{}'),
	(1282, 'offpolice', 1, 'officer2', 'Officer II', 40, '{}', '{}'),
	(1283, 'offpolice', 2, 'officer3', 'Officer III', 60, '{}', '{}'),
	(1284, 'offpolice', 3, 'lieutenant', 'Officer III+1', 85, '{}', '{}'),
	(1285, 'offpolice', 4, 'sergeant', 'Sergeant', 100, '{}', '{}'),
	(1286, 'offpolice', 5, 'topsergeant', 'Top Sergeant', 20, '{}', '{}'),
	(1287, 'offpolice', 6, 'lieutenant', 'Lieutenant', 40, '{}', '{}'),
	(1288, 'offpolice', 7, 'firstlieutenant', 'First Lieutenant', 60, '{}', '{}'),
	(1289, 'offpolice', 8, 'captain1', 'Captain I', 85, '{}', '{}'),
	(1290, 'offpolice', 9, 'captain2', 'Captain II', 100, '{}', '{}'),
	(1291, 'offpolice', 10, 'captain3', 'Captain III', 20, '{}', '{}'),
	(1292, 'offpolice', 11, 'commander', 'Commander', 40, '{}', '{}'),
	(1293, 'offpolice', 12, 'deputychief', 'Deputy Chief', 60, '{}', '{}'),
	(1294, 'offpolice', 13, 'assistantchief', 'Assistant Chief', 85, '{}', '{}'),
	(1295, 'offpolice', 14, 'boss', 'Chief of Police', 100, '{}', '{}'),
	(1296, 'taxi', 0, 'taxi', 'taxi', 250, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.licenses: ~9 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('agir', 'Agir Silah Ruhsati'),
	('aircraft', 'Aircraft License'),
	('cabbage_processing', 'Lahana Yıkama Lisansı'),
	('dmv', 'Ehliyet Lisansı'),
	('drive', 'Araba Ehliyeti'),
	('drive_bike', 'Motor Ehliyeti'),
	('drive_truck', 'Kamyon Ehliyeti'),
	('hafif', 'Hafif Silah Ruhsati'),
	('tabanca', 'Tabanca Ruhsati');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.m3_inv_customstashs
CREATE TABLE IF NOT EXISTS `m3_inv_customstashs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stashname` varchar(50) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.m3_inv_customstashs: ~0 rows (approximately)
/*!40000 ALTER TABLE `m3_inv_customstashs` DISABLE KEYS */;
/*!40000 ALTER TABLE `m3_inv_customstashs` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.m3_inv_gloveboxs
CREATE TABLE IF NOT EXISTS `m3_inv_gloveboxs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.m3_inv_gloveboxs: ~0 rows (approximately)
/*!40000 ALTER TABLE `m3_inv_gloveboxs` DISABLE KEYS */;
/*!40000 ALTER TABLE `m3_inv_gloveboxs` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.m3_inv_stashs
CREATE TABLE IF NOT EXISTS `m3_inv_stashs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stashname` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2749 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table essentialmode1.m3_inv_stashs: ~22 rows (approximately)
/*!40000 ALTER TABLE `m3_inv_stashs` DISABLE KEYS */;
INSERT INTO `m3_inv_stashs` (`id`, `stashname`, `owner`, `data`) VALUES
	(2726, 'Vagos', 'police', '[]'),
	(2727, 'Mekanik10 Deposu', 'mechanic10', '[]'),
	(2728, 'Mekanik5 Deposu', 'mechanic5', '[]'),
	(2729, 'Mekanik3 Deposu', 'mechanic3', '[]'),
	(2730, 'Sons of Anarchy', 'soa', '[]'),
	(2731, 'Mekanik7 Deposu', 'mechanic7', '[]'),
	(2732, 'The Lost MC', 'lostmc', '[]'),
	(2733, 'Mekanik2 Deposu', 'mechanic2', '[]'),
	(2734, 'Mekanik4 Deposu', 'mechanic4', '[]'),
	(2735, 'Mekanik6 Deposu', 'mechanic6', '[]'),
	(2736, 'Mekanik1 Deposu', 'mechanic', '[]'),
	(2737, 'Mekanik9 Deposu', 'mechanic9', '[]'),
	(2738, 'Kanıt Deposu', 'police', '[{"type":"item_standard","name":"disc_ammo_pistol","weight":"3","count":1,"label":"Tabanca Sarjörü"}]'),
	(2739, 'Mekanik8 Deposu', 'mechanic8', '[]'),
	(2740, 'Crips', 'crips', '[]'),
	(2741, 'Bloods', 'bloods', '[]'),
	(2742, 'Aztecas', 'aztec', '[]'),
	(2743, 'Ballas', 'ballas', '[]'),
	(2744, 'Grove', 'grove', '[]'),
	(2745, 'LSPD Deposu', 'police', '[]'),
	(2746, 'LSSD Deposu', 'sheriff', '[]'),
	(2747, 'LSPD Kişisel Dolap', 'steam:1100001342e381c', '[]');
/*!40000 ALTER TABLE `m3_inv_stashs` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.m3_inv_trunks
CREATE TABLE IF NOT EXISTS `m3_inv_trunks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.m3_inv_trunks: ~0 rows (approximately)
/*!40000 ALTER TABLE `m3_inv_trunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `m3_inv_trunks` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `lasthouse` int(11) DEFAULT 0,
  `tunerdata` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table essentialmode1.owned_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.playerammo
CREATE TABLE IF NOT EXISTS `playerammo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `ammo` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `citizenid` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3639 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.playerammo: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerammo` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerammo` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.playeritems
CREATE TABLE IF NOT EXISTS `playeritems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=255892 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.playeritems: ~0 rows (approximately)
/*!40000 ALTER TABLE `playeritems` DISABLE KEYS */;
/*!40000 ALTER TABLE `playeritems` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_turkish_ci NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.shipments
CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode1.shipments: ~0 rows (approximately)
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.stashitems
CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15024 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.stashitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `stashitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `stashitems` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.stashitemsnew
CREATE TABLE IF NOT EXISTS `stashitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `stash` (`stash`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2122 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.stashitemsnew: ~0 rows (approximately)
/*!40000 ALTER TABLE `stashitemsnew` DISABLE KEYS */;
/*!40000 ALTER TABLE `stashitemsnew` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.trunkitems
CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `info` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.trunkitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `trunkitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunkitems` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.trunkitemsnew
CREATE TABLE IF NOT EXISTS `trunkitemsnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `plate` (`plate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.trunkitemsnew: ~1 rows (approximately)
/*!40000 ALTER TABLE `trunkitemsnew` DISABLE KEYS */;
INSERT INTO `trunkitemsnew` (`id`, `plate`, `items`) VALUES
	(1130, '09ENW991', '[]');
/*!40000 ALTER TABLE `trunkitemsnew` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `is_dead` tinyint(1) DEFAULT 0,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_motel` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `house` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `busLevel` int(4) DEFAULT 0,
  `phone` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilepicture` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `background` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `iban` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `crypto` varchar(255) COLLATE utf8mb4_bin DEFAULT '''{"bitcoin": 0, "ethereum": 0, "bitcoin-cash": 0, "bitcoin-sv": 0, "litecoin": 0, "binance-coin": 0, "monero": 0, "dash": 0, "zcash": 0, "maker": 0}''',
  `inventory` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode1.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`, `status`, `last_motel`, `tattoos`, `lastdigits`, `jail`, `house`, `bought_furniture`, `busLevel`, `phone`, `profilepicture`, `background`, `iban`, `last_property`, `phone_number`, `crypto`, `inventory`) VALUES
	(1270, 'steam:1100001342e381c', 'license:d6b94cf21d1e6ef8aa5d713d4016027f14c408b9', 500, 'Baris', '{"chain_2":0,"makeup_4":0,"sun_2":0,"bracelets_2":0,"chest_3":0,"beard_3":0,"bproof_2":0,"blush_1":0,"helmet_2":0,"beard_1":0,"blemishes_1":0,"pants_2":0,"beard_4":0,"hair_2":0,"decals_2":0,"pants_1":0,"hair_1":0,"ears_1":-1,"bodyb_2":0,"age_2":0,"eyebrows_4":0,"shoes_1":0,"helmet_1":-1,"complexion_2":0,"tshirt_1":0,"lipstick_1":0,"blush_3":0,"torso_1":0,"chain_1":0,"watches_2":0,"makeup_3":0,"glasses_1":0,"mask_1":0,"sex":0,"eyebrows_2":0,"glasses_2":0,"blush_2":0,"ears_2":0,"tshirt_2":0,"lipstick_4":0,"complexion_1":0,"mask_2":0,"torso_2":0,"eyebrows_3":0,"watches_1":-1,"arms_2":0,"bags_2":0,"chest_1":0,"arms":0,"chest_2":0,"lipstick_2":0,"moles_1":0,"decals_1":0,"beard_2":0,"makeup_2":0,"face":0,"hair_color_2":0,"eye_color":0,"bags_1":0,"bodyb_1":0,"moles_2":0,"shoes_2":0,"lipstick_3":0,"hair_color_1":0,"bracelets_1":-1,"makeup_1":0,"eyebrows_1":0,"skin":0,"sun_1":0,"bproof_1":0,"age_1":0,"blemishes_2":0}', 'unemployed', 0, '[{"name":"WEAPON_PISTOL","label":"Bernetti-9","components":["clip_default"],"ammo":11}]', '{"x":22.1,"z":29.8,"y":-1107.1}', 50000, 0, 'superadmin', 'Deneme', 'Deneme', '10/10/2000', 'm', '180', 0, '[{"percent":96.92,"val":969200,"name":"hunger"},{"percent":97.69,"val":976900,"name":"thirst"}]', NULL, NULL, NULL, 0, '{"owns":false,"furniture":[],"houseId":0}', '{}', 0, NULL, NULL, NULL, NULL, NULL, NULL, '\'{"bitcoin": 0, "ethereum": 0, "bitcoin-cash": 0, "bitcoin-sv": 0, "litecoin": 0, "binance-coin": 0, "monero": 0, "dash": 0, "zcash": 0, "maker": 0}\'', '[{"name":"bread","amount":1,"slot":1,"type":"item","info":[]},{"name":"weapon_pistol","amount":1,"slot":2,"type":"weapon","info":{"ammo":11,"serie":"59QSQ3bi302EuCr","quality":99.69999999999999}},{"name":"pistol_ammo","amount":1,"slot":3,"type":"item","info":[]}]');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.user_accounts: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
	(480, 'steam:110000114ee1718', 'black_money', 0),
	(481, 'steam:1100001342e381c', 'black_money', 0);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.user_lastcharacter
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table essentialmode1.user_lastcharacter: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11000022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode1.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table essentialmode1.vehicles: ~225 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 890000, 'super'),
	('Akuma', 'AKUMA', 40000, 'motorcycles'),
	('Alpha', 'alpha', 85000, 'sports'),
	('Asea', 'asea', 20500, 'sedans'),
	('Asterope', 'asterope', 23500, 'sedans'),
	('Audi 8', 'audis8om', 150000, 'mods'),
	('Autarch', 'autarch', 895000, 'super'),
	('Avarus', 'avarus', 40000, 'motorcycles'),
	('Bagger', 'bagger', 25000, 'motorcycles'),
	('Baller', 'baller2', 120000, 'suvs'),
	('Baller Sport', 'baller3', 170000, 'suvs'),
	('Banshe', 'Banshee', 140000, 'sports'),
	('Banshee 900R', 'banshee2', 615000, 'super'),
	('Bati 801', 'bati', 65000, 'motorcycles'),
	('Bati 801RR', 'bati2', 70000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 150000, 'sports'),
	('BF400', 'bf400', 50000, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 30000, 'offroad'),
	('Bison', 'bison', 48000, 'vans'),
	('Blade', 'blade', 20000, 'muscle'),
	('Blazer', 'blazer', 25500, 'offroad'),
	('Blazer Sport', 'blazer4', 26500, 'offroad'),
	('Blista', 'blista', 9000, 'compacts'),
	('BMW M5', 'bmci', 999999999, 'bagisci'),
	('BMX (velo)', 'bmx', 150, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 47000, 'vans'),
	('Bodhi', 'bodhi2', 35500, 'offroad'),
	('Brawler', 'brawler', 85000, 'offroad'),
	('Brioso R/A', 'brioso', 12500, 'compacts'),
	('Toyota Supra Sports', 'btsupra94', 999999999, 'bagisci'),
	('B-Type 3', 'btype3', 27000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 36000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 48500, 'muscle'),
	('Buffalo', 'buffalo', 48650, 'sports'),
	('Buffalo S', 'buffalo2', 80000, 'sports'),
	('Bullet', 'bullet', 340000, 'super'),
	('Burrito', 'burrito3', 22000, 'vans'),
	('Mercedes C63', 'c63', 999999999, 'bagisci'),
	('Ranger Offroad', 'CARACARA2', 150000, 'dlc'),
	('Carbonizzare', 'carbonizzare', 175000, 'sports'),
	('Carbon RS', 'carbonrs', 70000, 'motorcycles'),
	('Casco', 'casco', 61000, 'sportsclassics'),
	('Cheetah', 'cheetah', 760000, 'super'),
	('Chimera', 'chimera', 65000, 'motorcycles'),
	('Chino', 'chino', 20000, 'muscle'),
	('Chino Luxe', 'chino2', 49000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 30000, 'motorcycles'),
	('Cog 55', 'cog55', 68000, 'sedans'),
	('Cognoscenti', 'cognoscenti', 95000, 'sedans'),
	('Comet', 'comet2', 150000, 'sports'),
	('Comet 5', 'comet5', 450000, 'sports'),
	('Contender', 'contender', 340000, 'offroad'),
	('Coquette Classic', 'coquette2', 63000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 50000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 300, 'motorcycles'),
	('Cyclone', 'cyclone', 590000, 'super'),
	('Daemon', 'daemon', 69500, 'motorcycles'),
	('Daemon High', 'daemon2', 120000, 'motorcycles'),
	('Defiler', 'defiler', 45000, 'motorcycles'),
	('Deviant', 'deviant', 99999, 'muscle'),
	('Dominator', 'dominator', 69000, 'muscle'),
	('Dominator Sports', 'dominator3', 125000, 'muscle'),
	('Double T', 'double', 100000, 'motorcycles'),
	('Drafter', 'drafter', 650000, 'dlc'),
	('Dubsta', 'dubsta', 100000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 140000, 'suvs'),
	('Dubsta 6x6', 'dubsta3', 250000, 'offroad'),
	('Dukes', 'dukes', 55000, 'muscle'),
	('Dune Buggy', 'dune', 25500, 'offroad'),
	('Mercedes E63', 'e63amg', 800000, 'mods'),
	('Elegy Retro Custom', 'elegy', 178000, 'super'),
	('Elegy', 'elegy2', 170000, 'sports'),
	('Ellie', 'ellie', 90000, 'muscle'),
	('Emerus', 'EMERUS', 850000, 'dlc'),
	('Emperor', 'emperor', 12000, 'sedans'),
	('Emperor 2', 'emperor2', 9200, 'sedans'),
	('Enduro', 'enduro', 48000, 'motorcycles'),
	('Entity 2', 'entity2', 950000, 'dlc'),
	('Entity XF', 'entityxf', 607000, 'super'),
	('Exemplar', 'exemplar', 50000, 'coupes'),
	('F620', 'f620', 68500, 'coupes'),
	('Faction', 'faction', 30000, 'muscle'),
	('Faction Rider', 'faction2', 65000, 'muscle'),
	('Faggio', 'faggio', 1000, 'motorcycles'),
	('Vespa', 'faggio2', 1300, 'motorcycles'),
	('Felon', 'felon', 55000, 'coupes'),
	('Felon GT', 'felon2', 65000, 'coupes'),
	('Feltzer', 'feltzer2', 135000, 'sports'),
	('Stirling GT', 'feltzer3', 79050, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 150, 'motorcycles'),
	('Flash GT', 'flashgt', 185000, 'sports'),
	('FMJ', 'fmj', 750000, 'super'),
	('Fugitive', 'fugitive', 38500, 'sedans'),
	('Nissan 350z', 'furoregt', 860000, 'mods'),
	('Mercedes G65', 'g65amg', 999999999, 'bagisci'),
	('Gargoyle', 'gargoyle', 75000, 'motorcycles'),
	('Gauntlet', 'gauntlet', 55000, 'muscle'),
	('Gauntlet Trio', 'GAUNTLET3', 180000, 'dlc'),
	('Gauntlet Squad', 'GAUNTLET4', 280000, 'dlc'),
	('Gang Burrito', 'gburrito', 35000, 'vans'),
	('Glendale', 'glendale', 16500, 'sedans'),
	('Grabger', 'granger', 150000, 'suvs'),
	('Gresley', 'gresley', 75000, 'suvs'),
	('GT 500', 'gt500', 75000, 'sportsclassics'),
	('Nissan GTR', 'gtr', 999999999, 'bagisci'),
	('Guardian', 'guardian', 200000, 'offroad'),
	('Hakuchou', 'hakuchou', 73500, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 140000, 'motorcycles'),
	('Hellion', 'HELLION', 300000, 'dlc'),
	('Hermes', 'hermes', 60000, 'muscle'),
	('Hexer', 'hexer', 17500, 'motorcycles'),
	('Huntley S', 'huntley', 90000, 'suvs'),
	('Impaler', 'impaler', 22000, 'muscle'),
	('Infernus', 'infernus', 229000, 'super'),
	('İnfernus 2', 'infernus2', 425000, 'sportsclassics'),
	('Innovation', 'innovation', 63000, 'motorcycles'),
	('Intruder', 'intruder', 17500, 'sedans'),
	('Issi', 'issi2', 20000, 'compacts'),
	('Issi Classic', 'issi3', 15000, 'compacts'),
	('Itali GTO', 'italigto', 480000, 'sports'),
	('Jackal', 'jackal', 38700, 'coupes'),
	('Jester', 'jester', 480000, 'sports'),
	('Jester Classic', 'jester3', 145000, 'sportsclassics'),
	('Journey', 'journey', 6500, 'vans'),
	('Jugular', 'jugular', 825000, 'dlc'),
	('Kamacho', 'kamacho', 150500, 'offroad'),
	('Khamelion', 'khamelion', 250000, 'sports'),
	('Krıeger', 'KRIEGER', 800000, 'dlc'),
	('Lamborghini LP700', 'lp700r', 999999999, 'bagisci'),
	('Lynx', 'lynx', 165000, 'sports'),
	('BMW M5', 'm5e60', 600000, 'mods'),
	('Manana', 'manana', 29500, 'sportsclassics'),
	('Manchez', 'manchez', 40000, 'motorcycles'),
	('Massacro', 'massacro', 178000, 'sports'),
	('Monroe', 'monroe', 85000, 'sportsclassics'),
	('Moonbeam', 'moonbeam', 24000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 38000, 'vans'),
	('Neo', 'NEO', 1000000, 'dlc'),
	('Neon', 'neon', 450000, 'sports'),
	('Nero', 'nero', 1000000, 'super'),
	('Nightblade', 'nightblade', 73900, 'motorcycles'),
	('Nightshade', 'nightshade', 55000, 'muscle'),
	('Kawasaki H2R', 'ninjah2', 999999999, 'bagisci'),
	('Oracle XS', 'oracle2', 37500, 'coupes'),
	('Panto', 'panto', 15000, 'compacts'),
	('Paragon', 'paragon', 375000, 'dlc'),
	('Volkswagen Passat', 'passat', 475000, 'mods'),
	('Penumbra', 'penumbra', 145000, 'sports'),
	('Peyote', 'peyote', 45000, 'sportsclassics'),
	('Pfister', 'pfister811', 655000, 'super'),
	('Phoenix', 'phoenix', 65000, 'muscle'),
	('Picador', 'picador', 20000, 'muscle'),
	('Pigalle', 'pigalle', 31310, 'sportsclassics'),
	('Premier', 'premier', 21500, 'sedans'),
	('Primo Custom', 'primo2', 68000, 'sedans'),
	('X80 Proto', 'prototipo', 1000000, 'super'),
	('Audi R8 Sports', 'r8v10abt', 999999999, 'bagisci'),
	('raiden', 'raiden', 380000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 220000, 'sports'),
	('Rapid GT3', 'rapidgt3', 65000, 'sportsclassics'),
	('Reaper', 'reaper', 775000, 'super'),
	('Rebel', 'rebel2', 65500, 'offroad'),
	('Regina', 'regina', 16500, 'sedans'),
	('Rhapsody', 'rhapsody', 17000, 'compacts'),
	('riata', 'riata', 120000, 'offroad'),
	('Ruiner', 'ruiner', 60000, 'muscle'),
	('Rumpo', 'rumpo', 31311, 'vans'),
	('Rumpo Trail', 'rumpo3', 41000, 'vans'),
	('Mercedes S500', 's65amg', 999999999, 'bagisci'),
	('Sabre Turbo', 'sabregt', 55000, 'muscle'),
	('Sabre GT', 'sabregt2', 70000, 'muscle'),
	('Sanchez', 'sanchez', 40000, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 45000, 'motorcycles'),
	('Sanctus', 'sanctus', 120000, 'motorcycles'),
	('Sandking', 'sandking', 180000, 'offroad'),
	('SC 1', 'sc1', 850000, 'super'),
	('Schlagen Gt', 'schlagen', 485000, 'sports'),
	('Scorcher (velo)', 'scorcher', 450, 'motorcycles'),
	('Sentinel', 'sentinel', 45000, 'coupes'),
	('Sentinel XS', 'sentinel2', 60000, 'coupes'),
	('Sentinel3', 'sentinel3', 220000, 'sports'),
	('Seven 70', 'seven70', 390000, 'sports'),
	('ETR1', 'sheava', 485000, 'super'),
	('Nissan Skyline', 'skyline', 1100000, 'mods'),
	('Slam Van', 'slamvan3', 35000, 'muscle'),
	('Stalion', 'stalion', 32000, 'muscle'),
	('Stanier', 'stanier', 16800, 'sedans'),
	('Stinger', 'stinger', 53000, 'sportsclassics'),
	('Sultan', 'sultan', 125000, 'sports'),
	('Sultan RS', 'sultanrs', 225000, 'super'),
	('Super Diamond', 'superd', 80000, 'sedans'),
	('Toyota Supra ', 'supra2', 500000, 'mods'),
	('Surano', 'surano', 225000, 'sports'),
	('Swinger', 'swinger', 51500, 'sportsclassics'),
	('T20', 't20', 950000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 48500, 'muscle'),
	('Thrax', 'thrax', 1250000, 'dlc'),
	('Tornado 2', 'tornado2', 20000, 'sportsclassics'),
	('Toros', 'toros', 460000, 'suvs'),
	('Tri bike (velo)', 'tribike3', 600, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 70500, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 150000, 'offroad'),
	('Tulip', 'tulip', 35000, 'muscle'),
	('Tyrus', 'tyrus', 850000, 'super'),
	('Vacca', 'vacca', 641000, 'super'),
	('Vader', 'vader', 50000, 'motorcycles'),
	('Vamos', 'vamos', 45000, 'muscle'),
	('Vigero', 'vigero', 26000, 'muscle'),
	('Virgo', 'virgo', 23000, 'muscle'),
	('Visione', 'visione', 740000, 'super'),
	('Voodoo', 'voodoo', 25000, 'muscle'),
	('Windsor', 'windsor', 120000, 'coupes'),
	('Windsor Drop', 'windsor2', 185000, 'coupes'),
	('Youga', 'youga', 20000, 'vans'),
	('Youga Luxuary', 'youga2', 29000, 'vans'),
	('Z190', 'z190', 69500, 'sportsclassics'),
	('BMW Z4', 'z419', 890000, 'mods'),
	('Zentorno', 'zentorno', 1000000, 'super'),
	('Zion', 'zion', 45000, 'coupes'),
	('Zion Cabrio', 'zion2', 75000, 'coupes'),
	('Zombie', 'zombiea', 63500, 'motorcycles'),
	('Zorrusso', 'zorrusso', 1000000, 'dlc'),
	('Z-Type', 'ztype', 500000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.vehicles_for_sale
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode1.vehicles_for_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.vehicle_categories: ~14 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('bagisci', 'Bağış'),
	('compacts', 'Compacts '),
	('coupes', 'Coupés'),
	('dlc', 'DLC'),
	('mods', 'MOD'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table essentialmode1.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table essentialmode1.whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(60) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- Dumping data for table essentialmode1.whitelist: ~0 rows (approximately)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
