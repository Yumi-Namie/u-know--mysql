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
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `current_price` decimal(10,2) DEFAULT NULL,
  `difficult_level` varchar(45) NOT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `publish_status` tinyint DEFAULT NULL,
  `subject_id` int NOT NULL,
  `creator_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `creator_id` (`creator_id`),
  CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (201,'title_1','description_1',10.50,'hard','2010-07-02 08:12:00',0,50,1002),(202,'title_2','description_2',10.51,'medium','2010-07-03 10:15:05',1,51,1002),(203,'title_3','description_3',10.52,'easy','2010-12-01 11:15:05',0,52,1005),(204,'title_4','description_4',10.53,'hard','2010-12-05 08:22:03',1,53,1005),(205,'title_5','description_5',10.54,'medium','2010-12-10 06:34:08',0,54,1005),(206,'title_6','description_6',10.55,'easy','2011-07-01 08:12:01',1,55,1008),(207,'title_7','description_7',10.56,'hard','2011-07-05 16:10:03',0,56,1008),(208,'title_8','description_8',10.57,'medium','2011-11-01 11:15:09',1,57,1010),(209,'title_9','description_9',10.58,'easy','2011-11-10 10:25:01',0,58,1010),(210,'title_10','description_10',10.59,'hard','2011-12-03 20:05:03',1,59,1010),(211,'title_11','description_11',10.60,'medium','2011-12-05 22:00:03',0,60,1010),(212,'title_12','description_12',10.61,'easy','2012-05-01 16:13:01',1,50,1013),(213,'title_13','description_13',10.62,'hard','2012-09-03 09:11:02',0,51,1015),(214,'title_14','description_14',10.63,'medium','2012-09-04 19:17:02',1,52,1015),(215,'title_15','description_15',10.64,'easy','2013-03-02 09:01:02',0,53,1018),(216,'title_16','description_16',10.65,'hard','2013-03-10 07:00:02',1,54,1018),(217,'title_17','description_17',10.66,'medium','2013-03-20 17:10:02',0,55,1018),(218,'title_18','description_18',10.67,'easy','2013-03-28 14:11:04',1,56,1018),(219,'title_19','description_19',10.68,'hard','2013-04-10 04:05:04',0,57,1018),(220,'title_20','description_20',10.69,'medium','2013-07-02 06:08:01',1,58,1020),(221,'title_21','description_21',10.70,'easy','2014-01-02 18:05:06',0,59,1023),(222,'title_22','description_22',10.71,'hard','2014-01-29 07:15:05',1,60,1023),(223,'title_23','description_23',10.72,'medium','2014-04-15 19:00:00',0,50,1023),(224,'title_24','description_24',10.73,'easy','2014-05-03 08:00:02',1,51,1025),(225,'title_25','description_25',10.74,'hard','2014-06-01 11:02:00',0,52,1025),(226,'title_26','description_26',10.75,'medium','2014-06-10 21:20:09',1,53,1025),(227,'title_27','description_27',10.76,'easy','2014-11-02 22:15:05',0,54,1028),(228,'title_28','description_28',10.77,'hard','2014-11-12 19:10:02',1,55,1028),(229,'title_29','description_29',10.78,'medium','2015-03-10 19:11:00',0,56,1030),(230,'title_30','description_30',10.79,'easy','2015-03-14 23:00:02',1,57,1030),(231,'title_31','description_31',10.80,'hard','2015-04-25 08:00:10',0,58,1030),(232,'title_32','description_32',10.81,'medium','2015-04-28 15:30:10',1,59,1030),(233,'title_33','description_33',10.82,'easy','2015-09-09 08:13:00',0,60,1033),(234,'title_34','description_34',10.83,'hard','2016-01-05 18:12:00',1,50,1035),(235,'title_35','description_35',10.84,'medium','2016-01-15 19:08:00',0,51,1035),(236,'title_36','description_36',10.85,'easy','2016-07-03 18:09:02',1,52,1038),(237,'title_37','description_37',10.86,'hard','2016-11-03 19:22:02',0,53,1040),(238,'title_38','description_38',10.87,'medium','2016-11-15 21:26:01',1,54,1040),(239,'title_39','description_39',10.88,'easy','2016-12-12 01:26:01',0,55,1040),(240,'title_40','description_40',10.89,'hard','2016-12-25 20:15:04',1,56,1040),(241,'title_41','description_41',10.90,'medium','2017-04-01 11:11:02',0,57,1042),(242,'title_42','description_42',10.91,'easy','2017-09-04 10:08:00',1,58,1045),(243,'title_43','description_43',10.92,'hard','2017-09-14 20:10:00',0,59,1045),(244,'title_44','description_44',10.93,'medium','2018-03-04 20:15:08',1,60,1048),(245,'title_45','description_45',10.94,'easy','2018-05-04 19:03:02',0,61,1048),(246,'title_46','description_46',10.95,'hard','2018-07-04 19:09:02',1,62,1050),(247,'title_47','description_47',10.96,'medium','2018-08-04 09:10:02',0,63,1050),(248,'title_48','description_48',10.97,'easy','2018-08-05 16:19:02',1,64,1050),(249,'title_49','description_49',10.98,'hard','2018-08-28 17:19:00',0,65,1050),(250,'title_50','description_50',12.00,'medium','2018-08-31 21:00:00',1,66,1050);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
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
