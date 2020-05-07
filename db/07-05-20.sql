CREATE DATABASE  IF NOT EXISTS `pdf` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pdf`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pdf
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files1`
--

DROP TABLE IF EXISTS `files1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files1` (
  `idfiles` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empcode` varchar(45) NOT NULL DEFAULT '',
  `filename` varchar(45) NOT NULL DEFAULT '',
  `cpfno` varchar(45) NOT NULL DEFAULT '',
  `office` varchar(255) DEFAULT NULL,
  `savedFileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idfiles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files1`
--

LOCK TABLES `files1` WRITE;
/*!40000 ALTER TABLE `files1` DISABLE KEYS */;
/*!40000 ALTER TABLE `files1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_offices`
--

DROP TABLE IF EXISTS `list_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_offices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_offices`
--

LOCK TABLES `list_offices` WRITE;
/*!40000 ALTER TABLE `list_offices` DISABLE KEYS */;
INSERT INTO `list_offices` VALUES (1,'Additional Charge  office order'),(2,'Additional Qualification office order'),(4,'Apprentice Section Change office order'),(5,'Abortion office order'),(6,'Bal Sangopan Special leave office order'),(7,'Boiler Proficiency office order '),(8,'Bureau of Energy Efficiency office order'),(9,'Blind, Handicapped  office order'),(11,'Computer Advance office order'),(12,'CS 28 Appointment office order'),(17,'Change of Caste Category office order'),(18,'Computer Lap-Tap purchase office order'),(19,'Car Loan office order'),(20,'Change in Nomenclature office order '),(22,'Change of Name in Service Book office order'),(23,'Confirmation office order (Eng. Marathi)'),(24,'Corrigendum Ekstar office order'),(25,'Cricket at Chandrapur office order.'),(26,'Conveyance allowance office order'),(27,'Death emp. Gratuity office order'),(28,'Death  emp. Leave Encashment office order'),(29,'Death emp. Corrigendum Gratuity office order'),(30,'Deem date pay fix office order'),(31,'District Game Sankul Chandrapur office order'),(32,'Disciplinary office order '),(33,'Deem date pay fix office order'),(34,'District Game Sankul Chandrapur office order'),(36,'Deputation Relive office order'),(37,'Deputed to Koradi DeFEO  office order'),(38,'EOL office order'),(39,'EOL Grant of payment office order'),(40,'EOL bymistek  Cancel office order'),(43,'Ekster office order '),(44,'Festival Advance office order'),(45,'Flue Gas Duct modification office order'),(46,'GO office order'),(47,'GO Ist, IInd, IIIrd office order'),(48,'GO Revised office order'),(49,'GO Pharmacist Revised office order '),(50,'Higher Grade Qualification office order'),(51,'HBA office order'),(52,'HBA interest office '),(53,'Home Guard Permission office order'),(55,'Handicapped PT office order'),(56,'Handicapped Conveyance office order'),(58,'Increase office order'),(59,'LDC Regular office order'),(60,'Looking Work office order'),(61,'LTC Cancel office order'),(62,'LTC Refund office order'),(63,'LTC office order'),(64,'Leave office order '),(65,'Leave Encashment office order(employee)'),(66,'LAD-PAGE appointed office order'),(68,'Medical Advance 50% office order'),(69,'Maternity Leave office order'),(70,'Major Stores ”B” Staff transfer to GAD office order'),(71,'Marathi Language office order'),(72,'MEDA deputation office order'),(73,'Mobile Bill office order'),(74,'Movable Immovable office order(Flat, Place etc.)'),(75,'Night Shift allowance office order'),(76,'NMR  office order'),(77,'New Scale Change All office order (Pay Revision 2020)'),(78,'Naisargik Appati Relive office order'),(79,'Non Compliance of procurement policy office order'),(80,'Post of Head Clerk promotion refused office order '),(81,'Panel office order (GO)'),(82,'Pay fixation office order'),(83,'Post of Helper convert of post of Art.C  office order'),(84,'Pay Group-IV work allocation office order'),(85,'Probation Period office order'),(94,'Promotion office order'),(95,'PAP Relive office order'),(99,'PAP Appointed officer order'),(100,'Property Return office order'),(101,'Qtr. Allotted permission office order(out of station transfer)'),(102,'Qtr. Permission Death employee office order'),(103,'Refused GO office order'),(104,'Resignation office order'),(105,'Resignation Gratuity office order'),(106,'Refused promotion modified office order'),(107,'Retirement office order'),(108,'Retirement Gratuity office order '),(109,'Retirement Leave Encashment office order(Full and Final)'),(110,'Retirement Corrigendum Gratuity office order'),(111,'Section Change office order'),(112,'Suspension office order'),(113,'Selection Committee office order'),(114,'Strike period in EOL Grant office order'),(115,'Special Disability Leave office order'),(116,'Sesionwise Selection Apprentice office order'),(117,'Sectional inquiry appointed officer order'),(118,'Tracking office order'),(119,'Transfer TA DA office order'),(120,'Transfer Relive office order'),(121,'Termination office order'),(122,'3rd GO in Gratuity DA Revised 453 Ekster withdrawal office order'),(123,'Vipassana Shibir  office order'),(124,'Work allocation office order'),(125,'Winter Assembly Relive office order'),(126,'1992-1993 SSL convert of Tech-III office order'),(127,'add'),(128,'add new');
/*!40000 ALTER TABLE `list_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `dob` varchar(45) NOT NULL DEFAULT '',
  `mob` varchar(45) NOT NULL DEFAULT '',
  `gender` varchar(45) NOT NULL DEFAULT '',
  `jdate` varchar(45) NOT NULL DEFAULT '',
  `edate` varchar(45) NOT NULL DEFAULT '',
  `uname` varchar(45) NOT NULL DEFAULT '',
  `empcode` varchar(45) NOT NULL DEFAULT '',
  `cpfno` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 13:36:47
