-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: timeclock2
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dayDate` date DEFAULT NULL,
  `signInTime` time DEFAULT NULL,
  `SignOutTime` time DEFAULT NULL,
  `sickDay` date DEFAULT NULL,
  `vacationStart` date DEFAULT NULL,
  `vacationEnd` date DEFAULT NULL,
  `officeManager` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (1,'2016-03-22','09:00:00','17:35:23',NULL,NULL,NULL,NULL,NULL),(2,'2016-03-22','17:39:51','17:51:00',NULL,NULL,NULL,NULL,NULL),(4,'2016-03-22','17:41:55','21:21:50',NULL,NULL,NULL,NULL,NULL),(5,'2016-03-22','17:46:40','17:49:38',NULL,NULL,NULL,NULL,NULL),(6,'2016-03-23','17:35:19','17:35:23',NULL,NULL,NULL,NULL,NULL),(7,'2016-03-23','21:21:46','21:21:50',NULL,NULL,NULL,NULL,NULL),(8,'2018-03-01','07:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(9,'2018-03-01','08:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(10,'2018-03-01','09:00:00',NULL,NULL,NULL,NULL,NULL,NULL),(11,'2018-03-02','01:22:00',NULL,NULL,NULL,NULL,NULL,NULL),(23,'2018-03-05','02:09:00',NULL,NULL,NULL,NULL,'DJ',1),(28,'2018-03-01',NULL,'02:53:00',NULL,NULL,NULL,'Melissa',3),(34,'2018-03-03','10:18:00',NULL,NULL,NULL,NULL,'DJ',2),(35,'2018-03-03',NULL,'22:18:00',NULL,NULL,NULL,'DJ',2),(36,'2018-03-03',NULL,NULL,NULL,'2018-03-10','2018-03-17','DJ',2),(37,NULL,NULL,NULL,'2018-03-06',NULL,NULL,'DJ',2),(38,'2018-02-27','11:14:00',NULL,NULL,NULL,NULL,'',2);
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `startTime` time NOT NULL,
  `endTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('06:00:00','18:00:00');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dayDate` date DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `officeManager` varchar(50) DEFAULT NULL,
  `donationStart` int(10) DEFAULT NULL,
  `is_approved` varchar(50) DEFAULT NULL,
  `transactionID` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donate`
--

LOCK TABLES `donate` WRITE;
/*!40000 ALTER TABLE `donate` DISABLE KEYS */;
INSERT INTO `donate` VALUES (1,'2018-05-05',2,'DJ',3,'Approved',NULL),(2,'2018-05-05',2,'DJ',5,'Approved',NULL),(3,'2018-05-05',2,'DJ',19,'Approved',NULL),(4,'2018-05-05',2,'DJ',4,'Approved',NULL),(5,'2018-05-05',2,'DJ',32,'Approved',NULL),(6,'2018-05-05',2,'DJ',312,'Approved',13123);
/*!40000 ALTER TABLE `donate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punchclock`
--

DROP TABLE IF EXISTS `punchclock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punchclock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dayDate` date DEFAULT NULL,
  `officeManager` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `signInTime` time DEFAULT NULL,
  `SignOutTime` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punchclock`
--

LOCK TABLES `punchclock` WRITE;
/*!40000 ALTER TABLE `punchclock` DISABLE KEYS */;
INSERT INTO `punchclock` VALUES (8,'2018-03-07','',2,'09:14:00',NULL),(9,'2018-03-09','DJ',2,NULL,'11:20:00'),(10,'2018-03-10','DJ',2,'07:48:00',NULL),(11,'2018-03-10','DJ',2,'17:48:00',NULL),(12,'2018-04-04','DJ',2,'07:40:00',NULL),(13,'2018-04-04','DJ',2,NULL,'19:47:00'),(14,'2018-04-04','DJ',2,'08:05:00',NULL);
/*!40000 ALTER TABLE `punchclock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sickdays`
--

DROP TABLE IF EXISTS `sickdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sickdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `officeManager` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `sickDay` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sickdays`
--

LOCK TABLES `sickdays` WRITE;
/*!40000 ALTER TABLE `sickdays` DISABLE KEYS */;
INSERT INTO `sickdays` VALUES (1,'DJ',2,'2018-03-09'),(8,'DJ',2,'2018-03-08'),(9,'DJ',2,'2018-04-03');
/*!40000 ALTER TABLE `sickdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1),(2,'Jose','25f9e794323b453885f5181f1b624d0b',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacation`
--

DROP TABLE IF EXISTS `vacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dayDate` date DEFAULT NULL,
  `vacationStart` date DEFAULT NULL,
  `vacationEnd` date DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `officeManager` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation`
--

LOCK TABLES `vacation` WRITE;
/*!40000 ALTER TABLE `vacation` DISABLE KEYS */;
INSERT INTO `vacation` VALUES (1,'2018-03-03','2018-03-10','2018-03-10',2,'DJ'),(8,'2018-03-03','2018-03-18','2018-03-25',2,'DJ'),(9,'2018-04-04','2018-04-05','2018-04-06',2,'DJ');
/*!40000 ALTER TABLE `vacation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-07 19:54:29
