-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: opencart
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (25,25,0),(28,28,1),(28,25,0),(35,35,2),(35,28,1),(35,25,0),(36,36,2),(36,28,1),(36,25,0),(29,29,2),(29,25,0),(30,30,1),(30,25,0),(31,31,1),(31,25,0),(32,32,1),(32,25,0),(20,20,0),(27,27,1),(27,20,0),(26,26,1),(26,20,0),(24,24,0),(18,18,0),(45,45,1),(45,18,0),(46,46,1),(46,18,0),(17,17,0),(33,33,3),(34,34,1),(37,37,2),(37,34,1),(38,38,2),(38,34,1),(39,39,2),(39,34,1),(40,40,2),(40,34,1),(41,41,2),(41,34,1),(42,42,2),(42,34,1),(43,43,2),(43,34,1),(44,44,2),(44,34,1),(47,47,2),(47,34,1),(48,48,2),(48,34,1),(33,34,1),(29,28,1),(50,50,2),(50,34,1),(51,51,2),(51,34,1),(52,52,2),(52,34,1),(58,58,3),(58,52,2),(58,34,1),(53,53,2),(53,34,1),(54,54,2),(54,34,1),(55,55,2),(55,34,1),(56,56,2),(56,34,1),(33,43,2),(34,20,0),(33,20,0),(50,20,0),(51,20,0),(52,20,0),(58,20,0),(53,20,0),(54,20,0),(55,20,0),(48,20,0),(47,20,0),(37,20,0),(38,20,0),(39,20,0),(40,20,0),(41,20,0),(42,20,0),(43,20,0),(44,20,0),(56,20,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 17:38:22
