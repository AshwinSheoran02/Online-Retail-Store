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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Total_Cost` float DEFAULT NULL,
  `Order_Status` varchar(40) DEFAULT NULL,
  `Delivery_Date` date DEFAULT NULL,
  `Order_date` date DEFAULT NULL,
  `Cart_ID` int DEFAULT NULL,
  `PhoneNumber` varchar(50) DEFAULT NULL,
  `Code` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Cart_ID` (`Cart_ID`),
  KEY `PhoneNumber` (`PhoneNumber`),
  KEY `Code` (`Code`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Cart_ID`) REFERENCES `cart` (`Cart_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`PhoneNumber`) REFERENCES `customer` (`PhoneNumber`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Code`) REFERENCES `coupons` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE10'),(2,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE10'),(3,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE10'),(4,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE10'),(5,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE10'),(6,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(7,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(8,655,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(9,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(10,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(11,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(12,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(13,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(14,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(15,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(17,655,'ordered','2022-04-19','2022-04-17',4,'955',''),(18,641.9,'ordered','2022-04-19','2022-04-17',4,'955','FREE2'),(19,686,'ordered','2022-04-19','2022-04-17',5,'988','FREE2'),(20,92.5,'ordered','2022-04-19','2022-04-17',6,'121','FLAT50'),(21,355,'paid','2022-04-19','2022-04-17',7,'111',''),(22,655,'paid','2022-04-19','2022-04-17',7,'111',''),(23,90,'paid','2022-04-19','2022-04-17',8,'22',''),(24,990,'paid','2022-04-19','2022-04-17',9,'33',''),(25,425,'paid','2022-04-19','2022-04-17',10,'33',''),(26,415,'paid','2022-04-19','2022-04-17',11,'33',''),(27,755,'paid','2022-04-19','2022-04-17',12,'33',''),(28,737.5,'paid','2022-04-19','2022-04-17',14,'8920540939','FLAT50'),(29,400,'paid','2022-04-19','2022-04-17',13,'33',''),(30,90,'paid','2022-04-19','2022-04-17',17,'987','FREE10'),(34,425,'paid','2022-04-19','2022-04-17',18,'987',''),(35,125,'paid','2022-04-19','2022-04-17',18,'987',''),(36,62.5,'ordered','2022-04-19','2022-04-17',20,'987','FLAT50'),(38,125,'paid','2022-04-19','2022-04-17',22,'1231',''),(39,75,'paid','2022-04-19','2022-04-17',24,'885','FLAT50'),(40,150,'paid','2022-04-19','2022-04-17',26,'87',''),(41,50,'paid','2022-04-19','2022-04-17',27,'87',''),(42,90,'paid','2022-04-19','2022-04-17',15,'8920540939','FLAT50'),(43,274.4,'paid','2022-04-19','2022-04-17',30,'44444444','FREE2'),(44,110,'paid','2022-04-19','2022-04-17',31,'44444444','FLAT50'),(47,98,'paid','2022-04-23','2022-04-21',34,'13','FREE2'),(49,120,'paid','2022-04-23','2022-04-21',36,'124',''),(50,500,'paid','2022-04-23','2022-04-21',37,'124','FLAT50'),(51,107.8,'paid','2022-04-26','2022-04-24',39,'411','FREE2'),(52,1350,'paid','2022-04-26','2022-04-24',40,'411','FLAT50'),(53,35.1,'paid','2022-04-26','2022-04-24',41,'411','FREE10'),(54,215.6,'paid','2022-04-26','2022-04-24',42,'411','FREE2'),(56,44,'paid','2022-04-26','2022-04-24',44,'511','FLAT50'),(57,460.6,'paid','2022-04-26','2022-04-24',45,'511','FREE2'),(59,238194,'paid','2022-04-26','2022-04-24',29,'8920540939','FLAT50'),(60,200,'paid','2022-04-27','2022-04-25',50,'9868139099',''),(61,588,'paid','2022-04-27','2022-04-25',52,'9868139099','FREE2'),(62,1960,'paid','2022-04-27','2022-04-25',53,'9868139099','FREE2'),(63,862.4,'paid','2022-04-27','2022-04-25',54,'9868139099','FREE2'),(64,1048.6,'paid','2022-04-27','2022-04-25',55,'9868139099','FREE2'),(65,220,'paid','2022-04-29','2022-04-27',57,'8920420939',''),(66,603.68,'paid','2022-04-29','2022-04-27',47,'8920540939','FREE2'),(67,803.6,'paid','2022-04-30','2022-04-28',61,'8787878787','FREE2'),(69,450,'paid','2022-04-30','2022-04-28',62,'8787878787','FREE10'),(70,2940,'paid','2022-04-30','2022-04-28',63,'8787878787','FREE2'),(71,500,'paid','2022-04-30','2022-04-28',64,'8787878787','FLAT50'),(72,1950,'paid','2022-04-30','2022-04-28',65,'8787878787','');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:06
