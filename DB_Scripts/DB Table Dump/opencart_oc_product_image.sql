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
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2432 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2345,30,'catalog/demo/canon_eos_5d_2.jpg',0),(2321,47,'catalog/demo/hp_3.jpg',0),(2035,28,'catalog/demo/htc_touch_hd_2.jpg',0),(2351,41,'catalog/demo/imac_3.jpg',0),(1982,40,'catalog/demo/iphone_6.jpg',0),(2001,36,'catalog/demo/ipod_nano_5.jpg',0),(2000,36,'catalog/demo/ipod_nano_4.jpg',0),(2005,34,'catalog/demo/ipod_shuffle_5.jpg',0),(2004,34,'catalog/demo/ipod_shuffle_4.jpg',0),(2422,32,'',0),(2421,32,'',0),(2420,32,'',0),(1971,43,'catalog/demo/macbook_5.jpg',0),(1970,43,'catalog/demo/macbook_4.jpg',0),(1974,44,'catalog/demo/macbook_air_4.jpg',0),(1973,44,'catalog/demo/macbook_air_2.jpg',0),(1977,45,'catalog/demo/macbook_pro_2.jpg',0),(1976,45,'catalog/demo/macbook_pro_3.jpg',0),(1986,31,'catalog/demo/nikon_d300_3.jpg',0),(1985,31,'catalog/demo/nikon_d300_2.jpg',0),(1988,29,'catalog/demo/palm_treo_pro_3.jpg',0),(1995,46,'catalog/demo/sony_vaio_5.jpg',0),(1994,46,'catalog/demo/sony_vaio_4.jpg',0),(1991,48,'catalog/demo/ipod_classic_4.jpg',0),(1990,48,'catalog/demo/ipod_classic_3.jpg',0),(1981,40,'catalog/demo/iphone_2.jpg',0),(1980,40,'catalog/demo/iphone_5.jpg',0),(2344,30,'catalog/demo/canon_eos_5d_3.jpg',0),(2320,47,'catalog/demo/hp_2.jpg',0),(2034,28,'catalog/demo/htc_touch_hd_3.jpg',0),(2350,41,'catalog/demo/imac_2.jpg',0),(1979,40,'catalog/demo/iphone_3.jpg',0),(1978,40,'catalog/demo/iphone_4.jpg',0),(1989,48,'catalog/demo/ipod_classic_2.jpg',0),(1999,36,'catalog/demo/ipod_nano_2.jpg',0),(1998,36,'catalog/demo/ipod_nano_3.jpg',0),(2003,34,'catalog/demo/ipod_shuffle_2.jpg',0),(2002,34,'catalog/demo/ipod_shuffle_3.jpg',0),(2419,32,'',0),(2418,32,'',0),(2417,32,'',0),(1969,43,'catalog/demo/macbook_2.jpg',0),(1968,43,'catalog/demo/macbook_3.jpg',0),(1972,44,'catalog/demo/macbook_air_3.jpg',0),(1975,45,'catalog/demo/macbook_pro_4.jpg',0),(1984,31,'catalog/demo/nikon_d300_4.jpg',0),(1983,31,'catalog/demo/nikon_d300_5.jpg',0),(1987,29,'catalog/demo/palm_treo_pro_2.jpg',0),(1993,46,'catalog/demo/sony_vaio_2.jpg',0),(1992,46,'catalog/demo/sony_vaio_3.jpg',0),(2428,49,'catalog/demo/samsung_tab_2.jpg',0),(2427,49,'catalog/demo/samsung_tab_3.jpg',0),(2426,49,'catalog/demo/samsung_tab_4.jpg',0),(2425,49,'catalog/demo/samsung_tab_5.jpg',0),(2424,49,'catalog/demo/samsung_tab_6.jpg',0),(2423,49,'catalog/demo/samsung_tab_7.jpg',0),(2363,54,'catalog/demo/htc_touch_hd_2.jpg',0),(2362,53,'catalog/demo/hp_2.jpg',0),(2361,53,'catalog/demo/hp_3.jpg',0),(2360,52,'catalog/demo/canon_eos_5d_3.jpg',0),(2359,52,'catalog/demo/canon_eos_5d_2.jpg',0),(2352,50,'catalog/demo/htc_touch_hd_2.jpg',0),(2353,50,'catalog/demo/htc_touch_hd_3.jpg',0),(2364,54,'catalog/demo/htc_touch_hd_3.jpg',0),(2365,55,'catalog/demo/htc_touch_hd_2.jpg',0),(2366,55,'catalog/demo/htc_touch_hd_3.jpg',0),(2367,56,'catalog/demo/imac_3.jpg',0),(2368,56,'catalog/demo/imac_2.jpg',0),(2369,57,'catalog/demo/iphone_6.jpg',0),(2370,57,'catalog/demo/iphone_2.jpg',0),(2371,57,'catalog/demo/iphone_5.jpg',0),(2372,57,'catalog/demo/iphone_3.jpg',0),(2373,57,'catalog/demo/iphone_4.jpg',0),(2374,58,'catalog/demo/ipod_classic_4.jpg',0),(2375,58,'catalog/demo/ipod_classic_3.jpg',0),(2376,58,'catalog/demo/ipod_classic_2.jpg',0),(2377,59,'catalog/demo/ipod_nano_5.jpg',0),(2378,59,'catalog/demo/ipod_nano_4.jpg',0),(2379,59,'catalog/demo/ipod_nano_2.jpg',0),(2380,59,'catalog/demo/ipod_nano_3.jpg',0),(2381,60,'catalog/demo/ipod_shuffle_5.jpg',0),(2382,60,'catalog/demo/ipod_shuffle_4.jpg',0),(2383,60,'catalog/demo/ipod_shuffle_2.jpg',0),(2384,60,'catalog/demo/ipod_shuffle_3.jpg',0),(2385,61,'catalog/demo/ipod_touch_7.jpg',0),(2386,61,'catalog/demo/ipod_touch_6.jpg',0),(2387,61,'catalog/demo/ipod_touch_5.jpg',0),(2388,61,'catalog/demo/ipod_touch_2.jpg',0),(2389,61,'catalog/demo/ipod_touch_3.jpg',0),(2390,61,'catalog/demo/ipod_touch_4.jpg',0),(2391,62,'catalog/demo/macbook_5.jpg',0),(2392,62,'catalog/demo/macbook_4.jpg',0),(2393,62,'catalog/demo/macbook_2.jpg',0),(2394,62,'catalog/demo/macbook_3.jpg',0),(2395,63,'catalog/demo/macbook_air_4.jpg',0),(2396,63,'catalog/demo/macbook_air_2.jpg',0),(2397,63,'catalog/demo/macbook_air_3.jpg',0),(2431,64,'catalog/demo/macbook_pro_4.jpg',0),(2430,64,'catalog/demo/macbook_pro_3.jpg',0),(2429,64,'catalog/demo/macbook_pro_2.jpg',0),(2401,65,'catalog/demo/nikon_d300_3.jpg',0),(2402,65,'catalog/demo/nikon_d300_2.jpg',0),(2403,65,'catalog/demo/nikon_d300_4.jpg',0),(2404,65,'catalog/demo/nikon_d300_5.jpg',0),(2405,66,'catalog/demo/palm_treo_pro_3.jpg',0),(2406,66,'catalog/demo/palm_treo_pro_2.jpg',0),(2407,68,'catalog/demo/samsung_tab_7.jpg',0),(2408,68,'catalog/demo/samsung_tab_6.jpg',0),(2409,68,'catalog/demo/samsung_tab_5.jpg',0),(2410,68,'catalog/demo/samsung_tab_4.jpg',0),(2411,68,'catalog/demo/samsung_tab_3.jpg',0),(2412,68,'catalog/demo/samsung_tab_2.jpg',0),(2413,70,'catalog/demo/sony_vaio_5.jpg',0),(2414,70,'catalog/demo/sony_vaio_4.jpg',0),(2415,70,'catalog/demo/sony_vaio_2.jpg',0),(2416,70,'catalog/demo/sony_vaio_3.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 17:38:20
