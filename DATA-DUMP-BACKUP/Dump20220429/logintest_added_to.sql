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
-- Table structure for table `added_to`
--

DROP TABLE IF EXISTS `added_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `added_to` (
  `quantity` int NOT NULL,
  `Product_ID` int NOT NULL,
  `cart_ID` int NOT NULL,
  PRIMARY KEY (`Product_ID`,`cart_ID`),
  KEY `cart_ID` (`cart_ID`),
  CONSTRAINT `added_to_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `added_to_ibfk_2` FOREIGN KEY (`cart_ID`) REFERENCES `cart` (`Cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `added_to`
--

LOCK TABLES `added_to` WRITE;
/*!40000 ALTER TABLE `added_to` DISABLE KEYS */;
INSERT INTO `added_to` VALUES (7,1,1),(10,1,2),(5,1,3),(11,1,4),(3,1,5),(2,1,6),(11,1,7),(3,1,8),(33,1,9),(3,1,11),(11,1,12),(25,1,14),(6,1,15),(100,1,21),(6,1,30),(4,1,31),(4,1,33),(4,1,36),(61,2,1),(15,2,2),(12,2,3),(13,2,4),(2,2,6),(1,2,7),(2,2,10),(6,2,11),(14,2,12),(11,2,14),(5,2,17),(5,2,18),(5,2,19),(5,2,20),(3,2,21),(5,2,22),(6,2,24),(6,2,26),(2,2,27),(12,2,28),(4,2,30),(4,2,34),(100,3,1),(7,3,4),(12,3,5),(3,3,6),(12,3,7),(15,3,10),(7,3,11),(3,3,12),(17,3,13),(19,3,14),(3,3,28),(4,3,31),(12,7,29),(4,18,37),(2,18,55),(2,22,52),(4,23,29),(2,28,54),(14,30,29),(2,30,54),(5,30,65),(5,34,64),(2,36,53),(3,39,55),(5,39,65),(2,42,63),(9,43,40),(2,47,53),(5,47,62),(10,53,29),(5,53,42),(2,53,44),(2,54,52),(14,56,29),(14,58,47),(5,58,57),(10,59,29),(5,64,61),(1,65,41),(11,66,39),(10,70,45),(10,82,61),(5,84,50),(3,85,29),(10,91,29),(2,94,61),(1,103,29),(11,107,29);
/*!40000 ALTER TABLE `added_to` ENABLE KEYS */;
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
