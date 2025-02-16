-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: line_manufacturing
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `downtime_factor`
--

DROP TABLE IF EXISTS `downtime_factor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `downtime_factor` (
  `Batch` int DEFAULT NULL,
  `DF1` text COLLATE utf8mb4_unicode_ci,
  `DF2` text COLLATE utf8mb4_unicode_ci,
  `DF3` text COLLATE utf8mb4_unicode_ci,
  `DF4` text COLLATE utf8mb4_unicode_ci,
  `DF5` text COLLATE utf8mb4_unicode_ci,
  `DF6` text COLLATE utf8mb4_unicode_ci,
  `DF7` text COLLATE utf8mb4_unicode_ci,
  `DF8` text COLLATE utf8mb4_unicode_ci,
  `DF9` text COLLATE utf8mb4_unicode_ci,
  `DF10` text COLLATE utf8mb4_unicode_ci,
  `DF11` text COLLATE utf8mb4_unicode_ci,
  `DF12` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downtime_factor`
--

LOCK TABLES `downtime_factor` WRITE;
/*!40000 ALTER TABLE `downtime_factor` DISABLE KEYS */;
INSERT INTO `downtime_factor` VALUES (422111,'','60','','','','','15','','','','',''),(422112,'','20','','','','','','20','','','',''),(422113,'','50','','','','','','','','','',''),(422114,'','','','25','','15','','','','','',''),(422115,'','','','','','','','','','24','',''),(422116,'','','','','','','','','','','',''),(422117,'','10','','','','5','','','','','',''),(422118,'','','','','','14','16','','','','10','20'),(422119,'','','','25','','','','','','','',''),(422120,'','','','20','15','','','','17','','',''),(422121,'','','','','','','15','','','','',''),(422122,'','','','','','','25','','','','',''),(422123,'','','','43','','','30','','','','',''),(422124,'','','','','20','20','','','','','',''),(422125,'','','','','','','','','','','10','10'),(422126,'','','','','','','','44','','','',''),(422127,'','','','','','23','','','','','',''),(422128,'','','','','22','','30','','','','',''),(422129,'','','','','','','','','','','','15'),(422130,'','20','','','','','','','','','',''),(422131,'','','','20','','','','','','10','',''),(422132,'','','','','','','','','','','',''),(422133,'','','','','','','20','','','','',''),(422134,'','','','','','','30','20','','','',''),(422135,'','','','30','','','','','','','','15'),(422136,'','','','','','','','','','','',''),(422137,'','','','','','','','30','','15','',''),(422138,'','','20','','','','','','','','',''),(422139,'','','','20','','15','','','','','',''),(422140,'','','','','','50','','','','','13',''),(422141,'','','','','','','','','','','','7'),(422142,'','','','','','30','','','','','',''),(422143,'','','','','','40','18','','','','',''),(422144,'','','','','','30','','24','','','',''),(422145,'','','22','','','','','','','','',''),(422146,'','','','','','30','25','','','','','7'),(422147,'','','','17','','60','30','','','','',''),(422148,'','','','25','','','','7','','','','');
/*!40000 ALTER TABLE `downtime_factor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-13 23:02:13
