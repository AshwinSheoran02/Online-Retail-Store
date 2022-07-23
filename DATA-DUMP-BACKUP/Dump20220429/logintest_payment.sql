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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Payment_Type` varchar(40) DEFAULT NULL,
  `PhoneNumber` varchar(40) DEFAULT NULL,
  `Order_ID` int DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `PhoneNumber` (`PhoneNumber`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `customer` (`PhoneNumber`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Paytm','988',19),(2,'Paytm','988',19),(3,'Paytm','988',19),(4,'Paytm','988',19),(5,'Paytm','988',19),(6,'Paytm','988',19),(7,'Paytm','988',19),(8,'Paytm','988',19),(9,'Paytm','988',19),(10,'Paytm','988',19),(11,'Paytm','988',19),(12,'Paytm','988',19),(13,'Paytm','988',19),(14,'Paytm','988',19),(15,'Paytm','988',19),(16,'Paytm','988',19),(17,'Paytm','988',19),(18,'Paytm','988',19),(19,'Paytm','988',19),(20,'Paytm','988',19),(21,'Netbanking','988',19),(22,'Netbanking','988',19),(23,'Card','988',19),(24,'COD','988',19),(25,'Paytm','988',19),(26,'Card','988',19),(27,'Netbanking','988',19),(28,'COD','988',19),(29,'Card','988',19),(30,'Paytm','121',20),(31,'Paytm','111',21),(32,'Card','111',22),(33,'Netbanking','22',23),(34,'COD','33',24),(35,'Card','33',25),(36,'COD','33',26),(37,'COD','33',27),(38,'COD','8920540939',28),(39,'COD','33',29),(40,'Paytm','987',30),(41,'Paytm','987',34),(42,'COD','987',35),(43,'COD','1231',38),(44,'Netbanking','885',39),(45,'Paytm','87',40),(46,'COD','87',41),(47,'Paytm','8920540939',42),(48,'COD','44444444',43),(49,'Paytm','44444444',44),(50,'COD','13',47),(51,'Paytm','124',49),(52,'Card','124',50),(53,'COD','411',51),(54,'Paytm','411',52),(55,'Card','411',53),(56,'Card','411',54),(57,'Netbanking','511',56),(58,'Netbanking','511',57),(59,'Paytm','8920540939',59),(60,'COD','9868139099',60),(61,'Card','9868139099',61),(62,'Card','9868139099',62),(63,'COD','9868139099',63),(64,'Netbanking','9868139099',64),(65,'COD','8920420939',65),(66,'COD','8920540939',66),(67,'COD','8787878787',67),(68,'Card','8787878787',69),(69,'Netbanking','8787878787',70),(70,'Paytm','8787878787',71),(71,'COD','8787878787',72);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
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
