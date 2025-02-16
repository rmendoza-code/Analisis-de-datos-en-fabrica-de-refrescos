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
-- Temporary view structure for view `v_productionwithdowntime`
--

DROP TABLE IF EXISTS `v_productionwithdowntime`;
/*!50001 DROP VIEW IF EXISTS `v_productionwithdowntime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_productionwithdowntime` AS SELECT 
 1 AS `date`,
 1 AS `id_product`,
 1 AS `flavor`,
 1 AS `batch`,
 1 AS `operator`,
 1 AS `Star_Time`,
 1 AS `End_Time`,
 1 AS `price`,
 1 AS `size`,
 1 AS `min_batch_time`,
 1 AS `total_downtime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_downtimetotal`
--

DROP TABLE IF EXISTS `v_downtimetotal`;
/*!50001 DROP VIEW IF EXISTS `v_downtimetotal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_downtimetotal` AS SELECT 
 1 AS `batch`,
 1 AS `total_downtime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_downtimedetalles`
--

DROP TABLE IF EXISTS `v_downtimedetalles`;
/*!50001 DROP VIEW IF EXISTS `v_downtimedetalles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_downtimedetalles` AS SELECT 
 1 AS `batch`,
 1 AS `factor`,
 1 AS `description`,
 1 AS `downtime_minutes`,
 1 AS `Operator_Error`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_productionwithdowntime`
--

/*!50001 DROP VIEW IF EXISTS `v_productionwithdowntime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_productionwithdowntime` AS select `lp`.`Date` AS `date`,`lp`.`id_Product` AS `id_product`,`p`.`Flavor` AS `flavor`,`lp`.`Batch` AS `batch`,`lp`.`Operator` AS `operator`,`lp`.`Star_Time` AS `Star_Time`,`lp`.`End_Time` AS `End_Time`,`p`.`Price` AS `price`,`p`.`Size` AS `size`,`p`.`Min_batch_time` AS `min_batch_time`,coalesce(`dt`.`total_downtime`,0) AS `total_downtime` from ((`manufacturing_line_productivity` `lp` join `products` `p` on((`lp`.`id_Product` = `p`.`id_Product`))) left join `v_downtimetotal` `dt` on((`lp`.`Batch` = `dt`.`batch`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_downtimetotal`
--

/*!50001 DROP VIEW IF EXISTS `v_downtimetotal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_downtimetotal` AS select `normalizeddowntime`.`batch` AS `batch`,sum(`normalizeddowntime`.`downtime_minutes`) AS `total_downtime` from `normalizeddowntime` group by `normalizeddowntime`.`batch` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_downtimedetalles`
--

/*!50001 DROP VIEW IF EXISTS `v_downtimedetalles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_downtimedetalles` AS select `nd`.`batch` AS `batch`,`nd`.`factor` AS `factor`,`df`.`Description` AS `description`,`nd`.`downtime_minutes` AS `downtime_minutes`,`df`.`Operator_Error` AS `Operator_Error` from (`normalizeddowntime` `nd` join `errorcode` `df` on((`nd`.`factor` = `df`.`id_Factor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-13 23:02:13
