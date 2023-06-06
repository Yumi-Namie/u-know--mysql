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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `register_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1001,'name_1','user_name_1','email_1','password_1',1000.00,'2010-04-30 11:10:02'),(1002,'name_2','user_name_2','email_2','password_2',1000.00,'2010-06-30 13:10:02'),(1003,'name_3','user_name_3','email_3','password_3',1000.00,'2010-08-31 15:10:02'),(1004,'name_4','user_name_4','email_4','password_4',1000.00,'2010-10-31 18:10:02'),(1005,'name_5','user_name_5','email_5','password_5',1000.00,'2010-11-30 18:10:02'),(1006,'name_6','user_name_6','email_6','password_6',1000.00,'2011-02-28 22:10:02'),(1007,'name_7','user_name_7','email_7','password_7',1000.00,'2011-04-30 23:10:02'),(1008,'name_8','user_name_8','email_8','password_8',1000.00,'2011-07-01 01:10:02'),(1009,'name_9','user_name_9','email_9','password_9',1000.00,'2011-09-01 03:10:02'),(1010,'name_10','user_name_10','email_10','password_10',1000.00,'2011-11-01 06:10:02'),(1011,'name_11','user_name_11','email_11','password_11',1000.00,'2012-01-01 08:10:02'),(1012,'name_12','user_name_12','email_12','password_12',1000.00,'2012-03-01 10:10:02'),(1013,'name_13','user_name_13','email_13','password_13',1000.00,'2012-05-01 11:10:02'),(1014,'name_14','user_name_14','email_14','password_14',1000.00,'2012-07-01 13:10:02'),(1015,'name_15','user_name_15','email_15','password_15',1000.00,'2012-09-01 15:10:02'),(1016,'name_16','user_name_16','email_16','password_16',1000.00,'2012-11-01 18:10:02'),(1017,'name_17','user_name_17','email_17','password_17',1000.00,'2013-01-01 20:10:02'),(1018,'name_18','user_name_18','email_18','password_18',1000.00,'2013-03-01 22:10:02'),(1019,'name_19','user_name_19','email_19','password_19',1000.00,'2013-05-01 23:10:02'),(1020,'name_20','user_name_20','email_20','password_20',1000.00,'2013-07-02 01:10:02'),(1021,'name_21','user_name_21','email_21','password_21',1000.00,'2013-09-02 03:10:02'),(1022,'name_22','user_name_22','email_22','password_22',1000.00,'2013-11-02 06:10:02'),(1023,'name_23','user_name_23','email_23','password_23',1000.00,'2014-01-02 08:10:02'),(1024,'name_24','user_name_24','email_24','password_24',1000.00,'2014-03-02 10:10:02'),(1025,'name_25','user_name_25','email_25','password_25',1000.00,'2014-05-02 11:10:02'),(1026,'name_26','user_name_26','email_26','password_26',1000.00,'2014-07-02 13:10:02'),(1027,'name_27','user_name_27','email_27','password_27',1000.00,'2014-09-02 15:10:02'),(1028,'name_28','user_name_28','email_28','password_28',1000.00,'2014-11-02 18:10:02'),(1029,'name_29','user_name_29','email_29','password_29',1000.00,'2015-01-02 20:10:02'),(1030,'name_30','user_name_30','email_30','password_30',1000.00,'2015-03-02 22:10:02'),(1031,'name_31','user_name_31','email_31','password_31',1000.00,'2015-05-02 23:10:02'),(1032,'name_32','user_name_32','email_32','password_32',1000.00,'2015-07-03 01:10:02'),(1033,'name_33','user_name_33','email_33','password_33',1000.00,'2015-09-03 03:10:02'),(1034,'name_34','user_name_34','email_34','password_34',1000.00,'2015-11-03 06:10:02'),(1035,'name_35','user_name_35','email_35','password_35',1000.00,'2016-01-03 08:10:02'),(1036,'name_36','user_name_36','email_36','password_36',1000.00,'2016-03-03 10:10:02'),(1037,'name_37','user_name_37','email_37','password_37',1000.00,'2016-05-03 11:10:02'),(1038,'name_38','user_name_38','email_38','password_38',1000.00,'2016-07-03 13:10:02'),(1039,'name_39','user_name_39','email_39','password_39',1000.00,'2016-09-03 15:10:02'),(1040,'name_40','user_name_40','email_40','password_40',1000.00,'2016-11-03 18:10:02'),(1041,'name_41','user_name_41','email_41','password_41',1000.00,'2017-01-03 20:10:02'),(1042,'name_42','user_name_42','email_42','password_42',1000.00,'2017-03-03 22:10:02'),(1043,'name_43','user_name_43','email_43','password_43',1000.00,'2017-05-03 23:10:02'),(1044,'name_44','user_name_44','email_44','password_44',1000.00,'2017-07-04 01:10:02'),(1045,'name_45','user_name_45','email_45','password_45',1000.00,'2017-09-04 03:10:02'),(1046,'name_46','user_name_46','email_46','password_46',1000.00,'2017-11-04 06:10:02'),(1047,'name_47','user_name_47','email_47','password_47',1000.00,'2018-01-04 08:10:02'),(1048,'name_48','user_name_48','email_48','password_48',1000.00,'2018-03-04 10:10:02'),(1049,'name_49','user_name_49','email_49','password_49',1000.00,'2018-05-04 11:10:02'),(1050,'name_50','user_name_50','email_50','password_50',1000.00,'2018-07-04 13:10:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
