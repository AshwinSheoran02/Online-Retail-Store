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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_id` int NOT NULL AUTO_INCREMENT,
  `PhoneNumber` varchar(50) NOT NULL,
  `cart_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cart_id`),
  KEY `PhoneNumber` (`PhoneNumber`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `customer` (`PhoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'003','current'),(2,'004','current'),(3,'9898989898','current'),(4,'955','current'),(5,'988','current'),(6,'121','current'),(7,'111','current'),(8,'22','ordered'),(9,'33','ordered'),(10,'33','ordered'),(11,'33','ordered'),(12,'33','ordered'),(13,'33','ordered'),(14,'8920540939','ordered'),(15,'8920540939','ordered'),(16,'33','current'),(17,'987','ordered'),(18,'987','ordered'),(19,'0001','current'),(20,'987','ordered'),(21,'987','current'),(22,'1231','ordered'),(23,'1231','current'),(24,'885','ordered'),(25,'885','current'),(26,'87','ordered'),(27,'87','ordered'),(28,'87','current'),(29,'8920540939','ordered'),(30,'44444444','ordered'),(31,'44444444','ordered'),(32,'44444444','current'),(33,'012','current'),(34,'13','ordered'),(35,'13','current'),(36,'124','ordered'),(37,'124','ordered'),(38,'124','current'),(39,'411','ordered'),(40,'411','ordered'),(41,'411','ordered'),(42,'411','ordered'),(43,'411','current'),(44,'511','ordered'),(45,'511','ordered'),(46,'511','current'),(47,'8920540939','ordered'),(48,'543','current'),(49,'542','current'),(50,'9868139099','ordered'),(51,'7683078075','current'),(52,'9868139099','ordered'),(53,'9868139099','ordered'),(54,'9868139099','ordered'),(55,'9868139099','ordered'),(56,'9868139099','current'),(57,'8920420939','ordered'),(58,'8920420939','current'),(59,'8920540939','current'),(60,'1919191919','current'),(61,'8787878787','ordered'),(62,'8787878787','ordered'),(63,'8787878787','ordered'),(64,'8787878787','ordered'),(65,'8787878787','ordered'),(66,'8787878787','current');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:04
