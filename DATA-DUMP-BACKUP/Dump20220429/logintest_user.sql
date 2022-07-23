CREATE DATABASE  IF NOT EXISTS `logintest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `logintest`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: logintest
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `Login_Type` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`PhoneNumber`),
  KEY `PhoneNumber` (`PhoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Customer','9968317199'),(2,'Customer','9999'),(3,'Customer','1234'),(4,'Customer','1234'),(5,'Customer','123456'),(6,'Customer','45674567'),(7,'Customer','45678'),(8,'Customer','9876'),(9,'Customer','23456'),(10,'Customer','56789'),(11,'Customer','56789'),(12,'Customer','007'),(13,'Customer','009'),(14,'Customer','67894'),(15,'Customer','333'),(16,'Customer','000'),(17,'Customer','001'),(18,'Customer','002'),(19,'Customer','003'),(20,'Customer','004'),(21,'Customer','9898989898'),(22,'employee','911'),(23,'employee','900'),(24,'employee','922'),(25,'employee','933'),(26,'Customer','955'),(27,'Customer','988'),(28,'Customer','121'),(29,'Customer','111'),(30,'Customer','22'),(31,'Customer','33'),(32,'Customer','8920540939'),(33,'Customer','987'),(34,'Customer','0001'),(35,'Customer','1231'),(36,'Customer','885'),(37,'Customer','87'),(38,'Customer','44444444'),(39,'Customer','012'),(40,'Customer','13'),(41,'Customer','124'),(42,'Customer','411'),(43,'Customer','422'),(44,'Customer','511'),(45,'Customer','543'),(46,'Customer','542'),(47,'Customer','9868139099'),(48,'Customer','7683078075'),(49,'Customer','8920420939'),(50,'Customer','1919191919'),(51,'Customer','8787878787');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:05
