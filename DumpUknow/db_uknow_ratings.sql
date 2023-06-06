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
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `comment` text,
  `rating` int DEFAULT NULL,
  `rating_date` timestamp NULL DEFAULT NULL,
  `content_id` int NOT NULL,
  `buyer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `buyer_id` (`buyer_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (400,'Hola Mundo!',2,'2010-12-19 19:30:01',205,1025),(401,'Hola Mundo!',3,'2011-12-04 19:20:01',210,1026),(402,'Hola Mundo!',4,'2012-01-10 21:22:01',210,1027),(403,'Hola Mundo!',5,'2011-12-28 18:11:03',211,1028),(404,'Hola Mundo!',6,'2012-02-20 19:10:01',211,1029),(405,'Hola Mundo!',7,'2012-05-05 08:12:01',212,1030),(406,'Hola Mundo!',8,'2012-06-15 17:15:03',212,1031),(407,'Hola Mundo!',9,'2012-09-04 15:18:02',213,1032),(408,'Hola Mundo!',10,'2012-10-04 18:09:02',213,1033),(409,'Hola Mundo!',2,'2012-09-07 20:32:01',214,1034),(410,'Hola Mundo!',3,'2012-09-17 10:20:01',214,1035),(411,'Hola Mundo!',4,'2013-04-10 10:00:05',215,1036),(412,'Hola Mundo!',5,'2013-04-10 09:10:05',215,1037),(413,'Hola Mundo!',6,'2013-03-17 18:22:02',216,1038),(414,'Hola Mundo!',7,'2013-03-18 17:02:01',216,1039),(415,'Hola Mundo!',8,'2013-03-25 18:16:02',217,1040),(416,'Hola Mundo!',9,'2013-04-20 19:15:02',217,1041),(417,'Hola Mundo!',10,'2013-03-30 10:11:04',218,1042),(418,'Hola Mundo!',2,'2013-04-12 16:21:04',219,1043),(419,'Hola Mundo!',3,'2013-07-12 19:18:00',220,1044),(420,'Hola Mundo!',4,'2014-02-22 17:05:06',221,1045),(421,'Hola Mundo!',5,'2014-01-31 17:18:05',222,1046),(422,'Hola Mundo!',6,'2014-02-28 19:20:05',222,1047),(423,'Hola Mundo!',7,'2014-03-02 20:00:02',222,1048),(424,'Hola Mundo!',8,'2014-04-02 19:15:02',222,1049),(425,'Hola Mundo!',9,'2014-06-01 21:15:02',226,1050),(426,'Hola Mundo!',10,'2014-06-20 08:00:01',227,1025),(427,'Hola Mundo!',2,'2014-11-13 22:10:00',228,1026),(428,'Hola Mundo!',3,'2014-12-11 21:00:06',228,1027),(429,'Hola Mundo!',4,'2015-01-05 18:00:00',228,1028),(430,'Hola Mundo!',5,'2015-01-10 20:10:02',228,1029),(431,'Hola Mundo!',6,'2015-05-01 15:00:10',232,1030),(432,'Hola Mundo!',7,'2015-09-16 20:00:00',233,1031),(433,'Hola Mundo!',8,'2016-01-06 18:12:00',234,1032),(434,'Hola Mundo!',9,'2016-01-10 19:10:00',234,1033),(435,'Hola Mundo!',10,'2016-02-12 14:20:00',234,1034),(436,'Hola Mundo!',2,'2016-11-20 16:32:02',237,1035),(437,'Hola Mundo!',3,'2016-11-21 22:22:02',237,1036),(438,'Hola Mundo!',4,'2016-12-13 22:45:01',239,1037),(439,'Hola Mundo!',5,'2016-12-28 20:45:04',240,1038),(440,'Hola Mundo!',6,'2016-12-30 22:10:01',240,1039),(441,'Hola Mundo!',7,'2017-02-15 22:30:01',240,1040),(442,'Hola Mundo!',8,'2017-09-19 20:15:00',243,1041),(443,'Hola Mundo!',9,'2018-03-06 16:12:08',244,1042),(444,'Hola Mundo!',10,'2018-05-30 16:25:02',245,1043),(445,'Hola Mundo!',2,'2018-06-10 19:16:02',245,1044),(446,'Hola Mundo!',3,'2018-06-18 16:46:02',245,1045),(447,'Hola Mundo!',4,'2018-08-05 21:38:01',248,1046),(448,'Hola Mundo!',5,'2018-08-30 17:39:01',249,1047),(449,'Hola Mundo!',6,'2018-09-05 21:41:02',250,1048);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
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
