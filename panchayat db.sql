-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema panchayat
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ panchayat;
USE panchayat;

--
-- Table structure for table `panchayat`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayat`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `panchayat`.`complain`
--

DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `Complainton` varchar(50) DEFAULT NULL,
  `complaint` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayat`.`complain`
--

/*!40000 ALTER TABLE `complain` DISABLE KEYS */;
INSERT INTO `complain` (`name`,`email`,`Complainton`,`complaint`,`location`,`status`) VALUES 
 ('jeevesh','amith@gmail.com','Water','Amith@123','kjhg','Road'),
 ('jeevesh','1231231232','Water','Amith@123','nrpura','Road');
/*!40000 ALTER TABLE `complain` ENABLE KEYS */;


--
-- Table structure for table `panchayat`.`panchayatreg`
--

DROP TABLE IF EXISTS `panchayatreg`;
CREATE TABLE `panchayatreg` (
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayat`.`panchayatreg`
--

/*!40000 ALTER TABLE `panchayatreg` DISABLE KEYS */;
INSERT INTO `panchayatreg` (`name`,`phone`,`email`,`password`) VALUES 
 ('prabhakar','9090909090','prabhakar@gmail.com','Prabhakar@23'),
 ('admin','8908908908','admin@gmail.com','Password@123');
/*!40000 ALTER TABLE `panchayatreg` ENABLE KEYS */;


--
-- Table structure for table `panchayat`.`status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `status` varchar(50) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayat`.`status`
--

/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


--
-- Table structure for table `panchayat`.`userreg`
--

DROP TABLE IF EXISTS `userreg`;
CREATE TABLE `userreg` (
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayat`.`userreg`
--

/*!40000 ALTER TABLE `userreg` DISABLE KEYS */;
INSERT INTO `userreg` (`name`,`phone`,`email`,`password`) VALUES 
 ('admin','8908908908','admin@gmail.com','Password@123'),
 ('harsha','8989898989','harsha@gmail.com','Harsha@25'),
 ('amith','1231231232','amith@gmail.com','Amith@123'),
 ('jeevesh','9380632852','jeevesh@gmail.com','Amith@123');
/*!40000 ALTER TABLE `userreg` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
