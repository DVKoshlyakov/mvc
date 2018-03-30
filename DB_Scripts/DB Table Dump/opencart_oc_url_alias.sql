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
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=859 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (824,'product_id=48','ipod-classic'),(836,'category_id=20','desktops'),(834,'category_id=26','pc'),(835,'category_id=27','mac'),(730,'manufacturer_id=8','apple'),(772,'information_id=4','about_us'),(856,'product_id=42','test'),(853,'category_id=34','mp3-players'),(781,'category_id=36','test2'),(774,'category_id=18','laptop-notebook'),(775,'category_id=46','macs'),(776,'category_id=45','windows'),(854,'category_id=25','component'),(852,'category_id=29','mouse'),(779,'category_id=28','monitor'),(780,'category_id=35','test1'),(782,'category_id=30','printer'),(783,'category_id=31','scanner'),(784,'category_id=32','web-camera'),(786,'category_id=17','software'),(787,'category_id=24','smartphone'),(851,'category_id=33','camera'),(790,'category_id=43','test11'),(791,'category_id=44','test12'),(792,'category_id=47','test15'),(793,'category_id=48','test16'),(795,'category_id=50','test18'),(849,'category_id=51','test19'),(797,'category_id=52','test20'),(798,'category_id=58','test25'),(799,'category_id=53','test21'),(800,'category_id=54','test22'),(801,'category_id=55','test23'),(802,'category_id=56','test24'),(803,'category_id=38','test4'),(804,'category_id=37','test5'),(805,'category_id=39','test6'),(806,'category_id=40','test7'),(807,'category_id=41','test8'),(808,'category_id=42','test9'),(809,'product_id=30','canon-eos-5d'),(840,'product_id=47','hp-lp3065'),(811,'product_id=28','htc-touch-hd'),(812,'product_id=43','macbook'),(813,'product_id=44','macbook-air'),(814,'product_id=45','macbook-pro'),(816,'product_id=31','nikon-d300'),(817,'product_id=29','palm-treo-pro'),(818,'product_id=35','product-8'),(858,'product_id=49','samsung-galaxy-tab-10-1'),(820,'product_id=33','samsung-syncmaster-941bw'),(821,'product_id=46','sony-vaio'),(837,'product_id=41','imac'),(823,'product_id=40','iphone'),(825,'product_id=36','ipod-nano'),(826,'product_id=34','ipod-shuffle'),(857,'product_id=32','ipod-touch'),(828,'manufacturer_id=9','canon'),(829,'manufacturer_id=5','htc'),(830,'manufacturer_id=7','hewlett-packard'),(831,'manufacturer_id=6','palm'),(832,'manufacturer_id=10','sony'),(841,'information_id=6','delivery'),(842,'information_id=3','privacy'),(843,'information_id=5','terms');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 17:38:06
