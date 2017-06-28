-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: pyscraping
-- ------------------------------------------------------
-- Server version	5.1.50-community

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
-- Table structure for table `ligamatches_0`
--

DROP TABLE IF EXISTS `ligamatches_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligamatches_0` (
  `Matchid` int(4) NOT NULL AUTO_INCREMENT,
  `Team1Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team2Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team1Score` int(4) DEFAULT NULL,
  `Team2Score` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Matchid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligamatches_0`
--

LOCK TABLES `ligamatches_0` WRITE;
/*!40000 ALTER TABLE `ligamatches_0` DISABLE KEYS */;
INSERT INTO `ligamatches_0` VALUES (1,'\'Granada\'','\'Espanyol\'',1,2,'2017-06-28 23:03:14'),(2,'\'Sporting\'','\'R. Betis\'',2,2,'2017-06-28 23:03:14'),(3,'\'Leganés\'','\'Alavés\'',1,1,'2017-06-28 23:03:15'),(4,'\'Deportivo\'','\'Las Palmas\'',3,0,'2017-06-28 23:03:15'),(5,'\'Sevilla\'','\'Osasuna\'',5,0,'2017-06-28 23:03:15'),(6,'\'Atlético\'','\'Athletic\'',3,1,'2017-06-28 23:03:15'),(7,'\'Valencia\'','\'Villarreal\'',1,3,'2017-06-28 23:03:15'),(8,'\'Celta\'','\'R. Sociedad\'',2,2,'2017-06-28 23:03:16'),(9,'\'FC Barcelona\'','\'Eibar\'',4,2,'2017-06-28 23:03:16'),(10,'\'Málaga\'','\'R. Madrid\'',0,2,'2017-06-28 23:03:16');
/*!40000 ALTER TABLE `ligamatches_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligamatches_1`
--

DROP TABLE IF EXISTS `ligamatches_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligamatches_1` (
  `Matchid` int(4) NOT NULL AUTO_INCREMENT,
  `Team1Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team2Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team1Score` int(4) DEFAULT NULL,
  `Team2Score` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Matchid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligamatches_1`
--

LOCK TABLES `ligamatches_1` WRITE;
/*!40000 ALTER TABLE `ligamatches_1` DISABLE KEYS */;
INSERT INTO `ligamatches_1` VALUES (1,'\'Espanyol\'','\'Valencia\'',0,1,'2017-06-28 23:03:18'),(2,'\'Osasuna\'','\'Granada\'',2,1,'2017-06-28 23:03:19'),(3,'\'Alavés\'','\'Celta\'',3,1,'2017-06-28 23:03:19'),(4,'\'Athletic\'','\'Leganés\'',1,1,'2017-06-28 23:03:19'),(5,'\'R. Betis\'','\'Atlético\'',1,1,'2017-06-28 23:03:19'),(6,'\'Eibar\'','\'Sporting\'',0,1,'2017-06-28 23:03:20'),(7,'\'Las Palmas\'','\'FC Barcelona\'',1,4,'2017-06-28 23:03:20'),(8,'\'Villarreal\'','\'Deportivo\'',0,0,'2017-06-28 23:03:20'),(9,'\'R. Madrid\'','\'Sevilla\'',4,1,'2017-06-28 23:03:20'),(10,'\'R. Sociedad\'','\'Málaga\'',2,2,'2017-06-28 23:03:20');
/*!40000 ALTER TABLE `ligamatches_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligamatches_2`
--

DROP TABLE IF EXISTS `ligamatches_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligamatches_2` (
  `Matchid` int(4) NOT NULL AUTO_INCREMENT,
  `Team1Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team2Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team1Score` int(4) DEFAULT NULL,
  `Team2Score` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligamatches_2`
--

LOCK TABLES `ligamatches_2` WRITE;
/*!40000 ALTER TABLE `ligamatches_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligamatches_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligateams`
--

DROP TABLE IF EXISTS `ligateams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligateams` (
  `Teamid` int(4) NOT NULL AUTO_INCREMENT,
  `TeamName` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TeamName_CN` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_place` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Teamid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligateams`
--

LOCK TABLES `ligateams` WRITE;
/*!40000 ALTER TABLE `ligateams` DISABLE KEYS */;
INSERT INTO `ligateams` VALUES (1,'\'Real Madrid\'',NULL,1,'2017-06-28 23:03:14'),(2,'\'FC Barcelona\'',NULL,2,'2017-06-28 23:03:14'),(3,'\'Atlético de Madrid\'',NULL,3,'2017-06-28 23:03:14'),(4,'\'Sevilla FC\'',NULL,4,'2017-06-28 23:03:14'),(5,'\'Villarreal CF\'',NULL,5,'2017-06-28 23:03:14'),(6,'\'Real Sociedad\'',NULL,6,'2017-06-28 23:03:14'),(7,'\'Athletic Club\'',NULL,7,'2017-06-28 23:03:14'),(8,'\'RCD Espanyol\'',NULL,8,'2017-06-28 23:03:14'),(9,'\'D. Alavés\'',NULL,9,'2017-06-28 23:03:14'),(10,'\'SD Eibar\'',NULL,10,'2017-06-28 23:03:14'),(11,'\'Málaga CF\'',NULL,11,'2017-06-28 23:03:14'),(12,'\'Valencia CF\'',NULL,12,'2017-06-28 23:03:14'),(13,'\'RC Celta\'',NULL,13,'2017-06-28 23:03:14'),(14,'\'UD Las Palmas\'',NULL,14,'2017-06-28 23:03:14'),(15,'\'Real Betis\'',NULL,15,'2017-06-28 23:03:14'),(16,'\'RC Deportivo\'',NULL,16,'2017-06-28 23:03:14'),(17,'\'CD Leganés\'',NULL,17,'2017-06-28 23:03:14'),(18,'\'R. Sporting\'',NULL,18,'2017-06-28 23:03:14'),(19,'\'CA Osasuna\'',NULL,19,'2017-06-28 23:03:14'),(20,'\'Granada CF\'',NULL,20,'2017-06-28 23:03:14');
/*!40000 ALTER TABLE `ligateams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriematches_0`
--

DROP TABLE IF EXISTS `seriematches_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriematches_0` (
  `Matchid` int(4) NOT NULL AUTO_INCREMENT,
  `Team1Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team2Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team1Score` int(4) DEFAULT NULL,
  `Team2Score` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Matchid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriematches_0`
--

LOCK TABLES `seriematches_0` WRITE;
/*!40000 ALTER TABLE `seriematches_0` DISABLE KEYS */;
INSERT INTO `seriematches_0` VALUES (1,'\'Atalanta\'','\'Chievoverona\'',1,0,'2017-06-25 06:49:32'),(2,'\'Bologna\'','\'Juventus\'',1,2,'2017-06-25 06:49:32'),(3,'\'Cagliari\'','\'Milan\'',2,1,'2017-06-25 06:49:32'),(4,'\'Roma\'','\'Genoa\'',3,2,'2017-06-25 06:49:32'),(5,'\'Sampdoria\'','\'Napoli\'',2,4,'2017-06-25 06:49:32'),(6,'\'Crotone\'','\'Lazio\'',3,1,'2017-06-25 06:49:32'),(7,'\'Fiorentina\'','\'Pescara\'',2,2,'2017-06-25 06:49:32'),(8,'\'Inter\'','\'Udinese\'',5,2,'2017-06-25 06:49:32'),(9,'\'Palermo\'','\'Empoli\'',2,1,'2017-06-25 06:49:32'),(10,'\'Torino\'','\'Sassuolo\'',5,3,'2017-06-25 06:49:32');
/*!40000 ALTER TABLE `seriematches_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriematches_1`
--

DROP TABLE IF EXISTS `seriematches_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriematches_1` (
  `Matchid` int(4) NOT NULL AUTO_INCREMENT,
  `Team1Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team2Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team1Score` int(4) DEFAULT NULL,
  `Team2Score` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Matchid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriematches_1`
--

LOCK TABLES `seriematches_1` WRITE;
/*!40000 ALTER TABLE `seriematches_1` DISABLE KEYS */;
INSERT INTO `seriematches_1` VALUES (1,'\'Chievoverona\'','\'Roma\'',3,5,'2017-06-25 06:49:40'),(2,'\'Napoli\'','\'Fiorentina\'',4,1,'2017-06-25 06:49:40'),(3,'\'Empoli\'','\'Atalanta\'',0,1,'2017-06-25 06:49:40'),(4,'\'Genoa\'','\'Torino\'',2,1,'2017-06-25 06:49:40'),(5,'\'Juventus\'','\'Crotone\'',3,0,'2017-06-25 06:49:40'),(6,'\'Milan\'','\'Bologna\'',3,0,'2017-06-25 06:49:40'),(7,'\'Sassuolo\'','\'Cagliari\'',6,2,'2017-06-25 06:49:40'),(8,'\'Udinese\'','\'Sampdoria\'',1,1,'2017-06-25 06:49:40'),(9,'\'Lazio\'','\'Inter\'',1,3,'2017-06-25 06:49:40'),(10,'\'Pescara\'','\'Palermo\'',2,0,'2017-06-25 06:49:40');
/*!40000 ALTER TABLE `seriematches_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seriematches_2`
--

DROP TABLE IF EXISTS `seriematches_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriematches_2` (
  `Matchid` int(4) NOT NULL AUTO_INCREMENT,
  `Team1Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team2Name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team1Score` int(4) DEFAULT NULL,
  `Team2Score` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Matchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seriematches_2`
--

LOCK TABLES `seriematches_2` WRITE;
/*!40000 ALTER TABLE `seriematches_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `seriematches_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serieteams`
--

DROP TABLE IF EXISTS `serieteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serieteams` (
  `Teamid` int(4) NOT NULL AUTO_INCREMENT,
  `TeamName` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TeamName_CN` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_place` int(4) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Teamid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serieteams`
--

LOCK TABLES `serieteams` WRITE;
/*!40000 ALTER TABLE `serieteams` DISABLE KEYS */;
INSERT INTO `serieteams` VALUES (1,'\'Juventus\'',NULL,1,'2017-06-25 06:49:23'),(2,'\'Roma\'',NULL,2,'2017-06-25 06:49:23'),(3,'\'Napoli\'',NULL,3,'2017-06-25 06:49:23'),(4,'\'Atalanta\'',NULL,4,'2017-06-25 06:49:23'),(5,'\'Lazio\'',NULL,5,'2017-06-25 06:49:23'),(6,'\'Milan\'',NULL,6,'2017-06-25 06:49:23'),(7,'\'Inter\'',NULL,7,'2017-06-25 06:49:23'),(8,'\'Fiorentina\'',NULL,8,'2017-06-25 06:49:23'),(9,'\'Torino\'',NULL,9,'2017-06-25 06:49:23'),(10,'\'Sampdoria\'',NULL,10,'2017-06-25 06:49:23'),(11,'\'Cagliari\'',NULL,11,'2017-06-25 06:49:23'),(12,'\'Sassuolo\'',NULL,12,'2017-06-25 06:49:23'),(13,'\'Udinese\'',NULL,13,'2017-06-25 06:49:23'),(14,'\'Chievoverona\'',NULL,14,'2017-06-25 06:49:23'),(15,'\'Bologna\'',NULL,15,'2017-06-25 06:49:23'),(16,'\'Genoa\'',NULL,16,'2017-06-25 06:49:23'),(17,'\'Crotone\'',NULL,17,'2017-06-25 06:49:23'),(18,'\'Empoli\'',NULL,18,'2017-06-25 06:49:23'),(19,'\'Palermo\'',NULL,19,'2017-06-25 06:49:23'),(20,'\'Pescara\'',NULL,20,'2017-06-25 06:49:23');
/*!40000 ALTER TABLE `serieteams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-29  7:09:45
