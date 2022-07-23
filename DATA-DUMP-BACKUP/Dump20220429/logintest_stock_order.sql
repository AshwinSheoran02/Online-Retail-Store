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
-- Table structure for table `stock_order`
--

DROP TABLE IF EXISTS `stock_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_order` (
  `Order_Number` int NOT NULL AUTO_INCREMENT,
  `Product_ID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Date_Of_Stock_Order` date DEFAULT NULL,
  `PhoneNumber` varchar(30) DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  PRIMARY KEY (`Order_Number`),
  KEY `PhoneNumber` (`PhoneNumber`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `stock_order_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `employee` (`PhoneNumber`),
  CONSTRAINT `stock_order_ibfk_2` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_order`
--

LOCK TABLES `stock_order` WRITE;
/*!40000 ALTER TABLE `stock_order` DISABLE KEYS */;
INSERT INTO `stock_order` VALUES (1,2,10,'2022-04-21','911',1),(2,3,10,'2022-04-21','911',2),(3,3,10,'2022-04-21','911',2),(4,3,10,'2022-04-21','911',2),(5,3,10,'2022-04-21','911',2),(6,1,14,'2022-04-21','911',1),(7,1,13,'2022-04-21','911',3),(8,55,20,'2022-04-24','911',3),(9,45,10,'2022-04-24','911',1),(10,45,40,'2022-04-24','911',1),(11,45,40,'2022-04-24','911',2),(12,2,211,'2022-04-24','911',2),(13,2,220,'2022-04-24','911',1),(14,2,220,'2022-04-24','911',2),(15,2,220,'2022-04-24','911',5),(16,2,220,'2022-04-24','911',1),(17,2,220,'2022-04-24','911',1),(18,2,220,'2022-04-24','911',1),(19,2,220,'2022-04-24','911',1),(20,2,220,'2022-04-24','911',2),(21,2,220,'2022-04-24','911',10),(22,2,220,'2022-04-24','911',4),(23,3,270,'2022-04-24','911',1),(24,70,10,'2022-04-24','922',10),(25,14,40,'2022-04-28','911',10);
/*!40000 ALTER TABLE `stock_order` ENABLE KEYS */;
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
