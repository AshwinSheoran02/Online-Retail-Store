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
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `Receipt_ID` int NOT NULL AUTO_INCREMENT,
  `Payment_date` date DEFAULT NULL,
  `Final_cost` float DEFAULT NULL,
  `PhoneNumber` varchar(40) DEFAULT NULL,
  `Order_ID` int DEFAULT NULL,
  PRIMARY KEY (`Receipt_ID`),
  KEY `PhoneNumber` (`PhoneNumber`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `customer` (`PhoneNumber`),
  CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,'2022-04-17',686,'988',19),(2,'2022-04-17',686,'988',19),(3,'2022-04-17',686,'988',19),(4,'2022-04-17',686,'988',19),(5,'2022-04-17',686,'988',19),(6,'2022-04-17',92.5,'121',20),(7,'2022-04-17',355,'111',21),(8,'2022-04-17',655,'111',22),(9,'2022-04-17',90,'22',23),(10,'2022-04-17',990,'33',24),(11,'2022-04-17',425,'33',25),(12,'2022-04-17',415,'33',26),(13,'2022-04-17',755,'33',27),(14,'2022-04-17',737.5,'8920540939',28),(15,'2022-04-17',400,'33',29),(16,'2022-04-17',90,'987',30),(17,'2022-04-17',425,'987',34),(18,'2022-04-17',125,'987',35),(19,'2022-04-17',125,'1231',38),(20,'2022-04-17',75,'885',39),(21,'2022-04-17',150,'87',40),(22,'2022-04-17',50,'87',41),(23,'2022-04-17',90,'8920540939',42),(24,'2022-04-17',274.4,'44444444',43),(25,'2022-04-17',110,'44444444',44),(26,'2022-04-21',98,'13',47),(27,'2022-04-22',120,'124',49),(28,'2022-04-22',500,'124',50),(29,'2022-04-24',107.8,'411',51),(30,'2022-04-24',1350,'411',52),(31,'2022-04-24',35.1,'411',53),(32,'2022-04-24',215.6,'411',54),(33,'2022-04-24',44,'511',56),(34,'2022-04-24',460.6,'511',57),(35,'2022-04-24',238194,'8920540939',59),(36,'2022-04-25',200,'9868139099',60),(37,'2022-04-25',588,'9868139099',61),(38,'2022-04-25',1960,'9868139099',62),(39,'2022-04-25',862.4,'9868139099',63),(40,'2022-04-25',1048.6,'9868139099',64),(41,'2022-04-27',220,'8920420939',65),(42,'2022-04-27',603.68,'8920540939',66),(43,'2022-04-29',803.6,'8787878787',67),(44,'2022-04-29',450,'8787878787',69),(45,'2022-04-29',2940,'8787878787',70),(46,'2022-04-29',500,'8787878787',71),(47,'2022-04-29',1950,'8787878787',72);
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `receipt_AFTER_INSERT` AFTER INSERT ON `receipt` FOR EACH ROW BEGIN
UPDATE orders
set order_status = 'paid'
where order_id = NEW.order_id; 

UPDATE cart
set cart_status = 'ordered'
where PhoneNumber = NEW.PhoneNumber and ( SELECT MAX(cart_id) ) ;

 insert into cart(PhoneNumber, cart_status) values ( NEW.PhoneNumber , 'current');


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:04
