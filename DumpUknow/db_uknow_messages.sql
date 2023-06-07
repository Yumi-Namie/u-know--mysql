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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL,
  `message_txt` text,
  `send_date` timestamp NULL DEFAULT NULL,
  `chat_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `chat_id` (`chat_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (4000,'congrats!','2010-12-20 09:30:01',3000,1025),(4001,'congrats!','2011-12-14 10:21:01',3001,1026),(4002,'congrats!','2012-01-19 09:20:01',3002,1027),(4003,'congrats!','2011-12-28 08:12:03',3003,1028),(4004,'congrats!','2012-03-20 18:12:01',3004,1029),(4005,'congrats!','2012-05-15 07:10:01',3005,1030),(4006,'congrats!','2012-06-21 17:12:03',3006,1031),(4007,'congrats!','2012-09-04 15:08:02',3007,1032),(4008,'congrats!','2012-10-04 18:09:02',3008,1033),(4009,'congrats!','2012-09-07 21:25:01',3009,1034),(4010,'congrats!','2012-09-19 12:21:01',3010,1035),(4011,'congrats!','2013-04-11 17:00:05',3011,1036),(4012,'congrats!','2013-04-10 17:00:05',3012,1037),(4013,'congrats!','2013-03-17 19:20:02',3013,1038),(4014,'congrats!','2013-03-20 17:10:01',3014,1039),(4015,'congrats!','2013-03-29 18:11:05',3015,1040),(4016,'congrats!','2013-04-21 08:08:02',3016,1041),(4017,'congrats!','2013-03-30 20:15:04',3017,1042),(4018,'congrats!','2013-04-12 17:25:04',3018,1043),(4019,'congrats!','2013-07-12 21:43:00',3019,1044),(4020,'congrats!','2014-02-22 20:08:06',3020,1045),(4021,'congrats!','2014-01-31 12:21:05',3021,1046),(4022,'congrats!','2014-02-28 21:23:05',3022,1047),(4023,'congrats!','2014-03-02 22:25:02',3023,1048),(4024,'congrats!','2014-04-02 19:20:02',3024,1049),(4025,'congrats!','2014-06-01 21:16:02',3025,1050),(4026,'congrats!','2014-06-20 08:10:01',3026,1025),(4027,'congrats!','2014-11-13 22:07:00',3027,1026),(4028,'congrats!','2014-12-11 22:12:06',3028,1027),(4029,'congrats!','2015-01-10 21:12:02',3029,1028),(4030,'congrats!','2015-01-10 17:03:02',3030,1029),(4031,'congrats!','2015-05-03 15:30:10',3031,1030),(4032,'congrats!','2015-10-15 07:13:00',3032,1031),(4033,'congrats!','2016-01-10 08:00:00',3033,1032),(4034,'congrats!','2016-01-12 22:10:00',3034,1033),(4035,'congrats!','2016-02-18 20:01:00',3035,1034),(4036,'congrats!','2016-11-21 18:21:02',3036,1035),(4037,'congrats!','2016-11-23 14:20:02',3037,1036),(4038,'congrats!','2016-12-20 22:29:01',3038,1037),(4039,'congrats!','2016-12-28 22:19:04',3039,1038),(4040,'congrats!','2016-12-30 22:15:01',3040,1039),(4041,'congrats!','2017-02-16 22:20:01',3041,1040),(4042,'congrats!','2017-09-23 10:15:00',3042,1041),(4043,'congrats!','2018-04-16 19:10:08',3043,1042),(4044,'congrats!','2018-07-30 09:08:02',3044,1043),(4045,'congrats!','2018-08-15 15:01:00',3045,1044),(4046,'congrats!','2018-07-28 20:20:00',3046,1045),(4047,'congrats!','2018-08-08 17:37:00',3047,1046),(4048,'congrats!','2018-08-31 17:34:01',3048,1047),(4049,'congrats!','2018-09-15 20:45:00',3049,1048);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
