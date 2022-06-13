-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.34-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for Internshipdata
CREATE DATABASE IF NOT EXISTS `Internshipdata` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Internshipdata`;

-- Dumping structure for table Internshipdata.battingaverage
CREATE TABLE IF NOT EXISTS `battingaverage` (
  `player` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `average` int(11) NOT NULL,
  PRIMARY KEY (`player`),
  UNIQUE KEY `player` (`player`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table Internshipdata.matches
CREATE TABLE IF NOT EXISTS `matches` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `matchdate` varchar(255) NOT NULL,
  `player_of_match` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `neutral_venue` varchar(255) NOT NULL,
  `hometeam` varchar(255) NOT NULL,
  `awayteam` varchar(255) NOT NULL,
  `toss_winner` varchar(255) NOT NULL,
  `toss_decision` varchar(255) NOT NULL,
  `winner` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `result_margin` varchar(255) NOT NULL,
  `eliminator` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `umpire1` varchar(255) DEFAULT NULL,
  `umpire2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table Internshipdata.matchespercity
CREATE TABLE IF NOT EXISTS `matchespercity` (
  `city` varchar(255) NOT NULL,
  `numberOfMatches` int(11) NOT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table Internshipdata.numberoftosseswon
CREATE TABLE IF NOT EXISTS `numberoftosseswon` (
  `team` varchar(255) NOT NULL,
  `tossesWon` int(11) NOT NULL,
  PRIMARY KEY (`team`),
  UNIQUE KEY `team` (`team`,`tossesWon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table Internshipdata.numberofwins
CREATE TABLE IF NOT EXISTS `numberofwins` (
  `team` varchar(255) NOT NULL,
  `wins` int(11) NOT NULL,
  PRIMARY KEY (`team`),
  UNIQUE KEY `team` (`team`,`wins`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table Internshipdata.wicketaverage
CREATE TABLE IF NOT EXISTS `wicketaverage` (
  `player` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `average` int(11) NOT NULL,
  PRIMARY KEY (`player`),
  UNIQUE KEY `player` (`player`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
