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
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (2,217,42,5,42,200,1,2.0000,'+',0,'+',2.00000000,'+'),(1,217,42,5,41,100,0,1.0000,'+',0,'+',1.00000000,'+'),(3,217,42,5,40,300,0,3.0000,'+',0,'+',3.00000000,'+'),(4,217,42,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+'),(7,218,42,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+'),(6,218,42,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+'),(5,218,42,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+'),(12,224,35,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+'),(13,224,35,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+'),(14,224,35,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+'),(16,226,30,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+'),(15,226,30,5,39,2,1,0.0000,'+',0,'+',0.00000000,'+'),(8,223,42,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+'),(9,223,42,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+'),(10,223,42,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+'),(11,223,42,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+'),(17,228,51,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+'),(18,228,51,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+'),(19,228,51,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+'),(20,228,51,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+'),(21,229,51,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+'),(22,229,51,5,40,300,0,3.0000,'+',0,'+',3.00000000,'+'),(23,229,51,5,41,100,0,1.0000,'+',0,'+',1.00000000,'+'),(24,229,51,5,42,200,1,2.0000,'+',0,'+',2.00000000,'+'),(25,231,51,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+'),(26,231,51,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+'),(27,231,51,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+'),(28,236,52,5,39,2,1,0.0000,'+',0,'+',0.00000000,'+'),(29,236,52,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+'),(30,238,67,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+'),(31,238,67,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+'),(32,238,67,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 17:38:18
