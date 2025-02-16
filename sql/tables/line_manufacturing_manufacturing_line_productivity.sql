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
-- Table structure for table `manufacturing_line_productivity`
--

DROP TABLE IF EXISTS `manufacturing_line_productivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturing_line_productivity` (
  `Date` text COLLATE utf8mb4_unicode_ci,
  `id_Product` text COLLATE utf8mb4_unicode_ci,
  `Batch` int DEFAULT NULL,
  `Operator` text COLLATE utf8mb4_unicode_ci,
  `Star_Time` text COLLATE utf8mb4_unicode_ci,
  `End_Time` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturing_line_productivity`
--

LOCK TABLES `manufacturing_line_productivity` WRITE;
/*!40000 ALTER TABLE `manufacturing_line_productivity` DISABLE KEYS */;
INSERT INTO `manufacturing_line_productivity` VALUES ('8/29/2024','LE-600',422115,'Charlie','19:15:00','20:39:00'),('8/29/2024','LE-600',422116,'Charlie','20:39:00','21:39:00'),('8/29/2024','LE-600',422117,'Charlie','21:39:00','22:54:00'),('8/30/2024','CO-600',422125,'Charlie','15:55:00','17:15:00'),('8/30/2024','CO-600',422126,'Charlie','17:15:00','18:59:00'),('8/30/2024','CO-600',422127,'Charlie','18:59:00','20:22:00'),('8/30/2024','CO-600',422128,'Charlie','20:22:00','22:14:00'),('8/30/2024','CO-600',422129,'Charlie','22:14:00','23:29:00'),('9/2/2024','CO-2L',422145,'Charlie','14:50:00','16:50:00'),('9/2/2024','CO-2L',422146,'Charlie','16:50:00','19:30:00'),('9/2/2024','CO-2L',422147,'Charlie','19:30:00','22:55:00'),('8/30/2024','CO-600',422118,'Dee','4:05:00','6:05:00'),('8/30/2024','CO-600',422119,'Dee','6:05:00','7:30:00'),('8/30/2024','CO-600',422120,'Dee','7:30:00','9:22:00'),('8/31/2024','CO-600',422130,'Dee','7:45:00','9:05:00'),('8/31/2024','CO-600',422131,'Dee','9:05:00','10:35:00'),('8/31/2024','CO-600',422132,'Dee','10:35:00','11:35:00'),('8/31/2024','DC-600',422133,'Dee','11:35:00','12:55:00'),('9/2/2024','RB-600',422137,'Dee','1:00:00','2:45:00'),('9/2/2024','RB-600',422138,'Dee','2:45:00','4:05:00'),('9/2/2024','RB-600',422139,'Dee','4:05:00','5:40:00'),('9/2/2024','RB-600',422140,'Dee','5:40:00','7:43:00'),('8/30/2024','CO-600',422121,'Dennis','9:22:00','10:37:00'),('8/30/2024','CO-600',422122,'Dennis','10:37:00','12:02:00'),('8/30/2024','CO-600',422123,'Dennis','12:02:00','14:15:00'),('8/30/2024','CO-600',422124,'Dennis','14:15:00','15:55:00'),('9/2/2024','RB-600',422141,'Dennis','7:43:00','8:50:00'),('9/2/2024','RB-600',422142,'Dennis','8:50:00','10:20:00'),('9/2/2024','RB-600',422143,'Dennis','10:20:00','12:18:00'),('9/2/2024','CO-2L',422144,'Dennis','12:18:00','14:50:00'),('8/29/2024','OR-600',422111,'Mac','11:50:00','14:05:00'),('8/29/2024','LE-600',422112,'Mac','14:05:00','15:45:00'),('8/29/2024','LE-600',422113,'Mac','15:45:00','17:35:00'),('8/29/2024','LE-600',422114,'Mac','17:35:00','19:15:00'),('8/31/2024','DC-600',422134,'Mac','12:55:00','14:45:00'),('8/31/2024','DC-600',422135,'Mac','14:45:00','16:30:00'),('8/31/2024','DC-600',422136,'Mac','16:30:00','17:30:00'),('9/3/2024','CO-2L',422148,'Mac','22:55:00','1:05:00');
/*!40000 ALTER TABLE `manufacturing_line_productivity` ENABLE KEYS */;
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
