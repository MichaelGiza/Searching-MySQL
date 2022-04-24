-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: milling_cutter
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `parameter`
--

DROP TABLE IF EXISTS `parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameter` (
  `cutter_diameter` int(10) unsigned NOT NULL,
  `milling_teeth` int(10) unsigned NOT NULL,
  `title` char(100) NOT NULL,
  `price` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameter`
--

LOCK TABLES `parameter` WRITE;
/*!40000 ALTER TABLE `parameter` DISABLE KEYS */;
INSERT INTO `parameter` VALUES (10,4,'End mill 10 mm - 4 teeth carbide',99.99),(10,4,'End mill 10 mm - 4 teeth cobalt',99.99),(10,6,'End mill 10 mm - 6 teeth carbide',99.99),(10,6,'End mill 10 mm - 6 teeth cobalt',99.99),(12,4,'End mill 12 mm - 4 teeth carbide',99.99),(12,4,'End mill 12 mm - 4 teeth cobalt',99.99),(12,6,'End mill 12 mm - 6 teeth carbide',99.99),(12,6,'End mill 12 mm - 6 teeth cobalt',99.99),(6,4,'End mill 6 mm - 4 teeth carbide',99.99),(6,4,'End mill 6 mm - 4 teeth cobalt',99.99),(6,6,'End mill 6 mm - 6 teeth carbide',99.99),(6,6,'End mill 6 mm - 6 teeth cobalt',99.99),(8,4,'End mill 8 mm - 4 teeth carbide',99.99),(8,4,'End mill 8 mm - 4 teeth cobalt',99.99),(8,6,'End mill 8 mm - 6 teeth carbide',99.99),(8,6,'End mill 8 mm - 6 teeth cobalt',99.99);
/*!40000 ALTER TABLE `parameter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-23 16:28:38
