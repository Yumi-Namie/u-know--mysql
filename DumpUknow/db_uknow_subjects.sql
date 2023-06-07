CREATE DATABASE  IF NOT EXISTS `db_uknow` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_uknow`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_uknow
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (50,'subjects_1'),(51,'subjects_2'),(52,'subjects_3'),(53,'subjects_4'),(54,'subjects_5'),(55,'subjects_6'),(56,'subjects_7'),(57,'subjects_8'),(58,'subjects_9'),(59,'subjects_10'),(60,'subjects_11'),(61,'subjects_12'),(62,'subjects_13'),(63,'subjects_14'),(64,'subjects_15'),(65,'subjects_16'),(66,'subjects_17'),(67,'subjects_18'),(68,'subjects_19'),(69,'subjects_20'),(70,'subjects_21'),(71,'subjects_22'),(72,'subjects_23'),(73,'subjects_24'),(74,'subjects_25'),(75,'subjects_26'),(76,'subjects_27'),(77,'subjects_28'),(78,'subjects_29'),(79,'subjects_30'),(80,'subjects_31'),(81,'subjects_32'),(82,'subjects_33'),(83,'subjects_34'),(84,'subjects_35'),(85,'subjects_36'),(86,'subjects_37'),(87,'subjects_38'),(88,'subjects_39'),(89,'subjects_40'),(90,'subjects_41'),(91,'subjects_42'),(92,'subjects_43'),(93,'subjects_44'),(94,'subjects_45'),(95,'subjects_46'),(96,'subjects_47'),(97,'subjects_48'),(98,'subjects_49'),(99,'subjects_50');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06 15:53:02
