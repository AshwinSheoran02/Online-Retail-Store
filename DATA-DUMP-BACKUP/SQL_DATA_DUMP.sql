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

--
-- Table structure for table `authentication_system`
--

DROP TABLE IF EXISTS `authentication_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_system` (
  `PhoneNumber` varchar(50) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PhoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_system`
--

LOCK TABLES `authentication_system` WRITE;
/*!40000 ALTER TABLE `authentication_system` DISABLE KEYS */;
INSERT INTO `authentication_system` VALUES ('000','lmn'),('0001','0001'),('001','001'),('002','002'),('003','003'),('004','004'),('007','$2b$10$jA4jgz9F3kuKn2hjVtmEa.a0ZnX1esBWY/E7uvyahNeNaUvMRNJgq'),('009','$2b$10$4ha0uED.k181/KewbY0m8.yYJUJO6aIbSYwHFn6kuT9wPsgqzCiLW'),('010','010'),('012','012'),('111','111'),('12','12'),('121','121'),('1231','1231'),('1234','$2b$10$1X.HSqKMMm9PoXWUBWUCEeK5Y1QP/yj6AJmfj/PMoEeEyH0mGEE1e'),('123456','$2b$10$DZt.1RpncdDV6g02VwhQ1.LjCPgrjrWmIUIeHT36anvWDpV9mYiYW'),('124','124'),('13','13'),('134','134'),('135','135'),('1919191919','$2y$10$ndkiWIYNn/S3QDXaTqwytucrxGwxgc.hWi7z5pNA5oAJTuGm7kTjq'),('22','22'),('23','23'),('23456','$2b$10$gZj3OSmRTPo45DqDlydGQuc71Lte80vSCnKYbV2YE6hHrtQ3./UNa'),('33','33'),('333','333'),('411','411'),('422','422'),('44444444','44'),('45','45'),('45674567','$2b$10$BQmS3Z./EH/wX32HINnOu.t6lHPHYeeeC1GLgZxOu3fD9iJ24Lh/e'),('45678','$2b$10$T1WPJeC9aWBUNlogF/Z8vuWHZ13JOsleQBMvYRtG6o5dYOKglWk02'),('511','511'),('542','542'),('543','543'),('555','srk'),('56','56'),('56789','$2b$10$.65Tno6Xx3rKVYZhcfIC/uLy4/6ZyVWTxAjvotl2iCXGfMiA6SX/O'),('666','666'),('667','abc'),('67894','$2b$10$5plVuSTUYCa8ulrWNcBSW.AblbQAbbnHjS4.BpFMkldARL6osWHtK'),('7683078075','7683078075'),('8459500631','abc'),('87','87'),('876543','876543'),('8787878787','$2y$10$UXyMirZgcKWmyFMzZ6TSSu03BHlYsM/zg8OJOt6m8zs0a9pgHw1.u'),('885','abc'),('8920420939','8920420939'),('8920540939','mithu'),('900','900'),('911','911'),('922','922'),('933','933'),('955','955'),('98','98'),('9868139099','9868139099'),('987','9987'),('9876','$2b$10$LE/zABLdJqr9.S45vXt7HOw1zcVU4Ex7J/q6AO4NYZvlkIXX5ypUK'),('988','988'),('9898989898','9898989898'),('9968317199','$2b$10$F3FEnkR4hYBTflnFFZD.ZOum6WVzppccn7zVtv.5MPjPEGIdPbJH.'),('9999','$2b$10$JSFMvs44k.FMmNsFiQftJOKSDcJU3248jm7Uf.ddD0SBgij5u2peK');
/*!40000 ALTER TABLE `authentication_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `Batch_ID` varchar(30) NOT NULL,
  `DOM` date NOT NULL,
  `DOE` date DEFAULT NULL,
  PRIMARY KEY (`Batch_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES ('B000001','2022-02-17','2022-03-01'),('B000002','2022-02-18','2022-03-01'),('B000003','2022-04-19','2022-05-01'),('B000004','2022-04-27','2022-05-01'),('B000005','2022-04-20','2022-05-01'),('B000006','2022-04-21','2022-05-01'),('B000007','2022-04-10','2022-06-22'),('B000008','2022-04-15','2022-06-22'),('B000009','2022-04-16','2022-06-22'),('B000010','2022-04-17','2022-06-22'),('B000011','2022-04-17','2022-06-22'),('B000012','2022-04-17','2022-06-22'),('B000013','2022-04-17','2022-07-22'),('B000014','2022-04-17','2022-07-22'),('B000015','2022-04-18','2022-07-22'),('B000016','2022-04-18','2022-07-22'),('B000017','2022-04-18','2022-07-22'),('B000018','2022-04-18','2022-07-22'),('B000019','2022-04-17','2022-09-22'),('B000020','2022-04-17','2022-09-22'),('B000021','2022-04-18','2022-09-22'),('B000022','2022-04-18','2022-05-22'),('B000023','2022-04-18','2022-09-22'),('B000024','2022-04-18','2022-05-22'),('B000025','2022-04-18','2022-09-22'),('B000026','2022-04-18','2022-05-22'),('B000027','2022-04-18','2022-05-22'),('B000028','2022-04-18','2022-09-22'),('B000029','2022-04-17','2022-09-22'),('B000030','2022-04-17','2022-09-22'),('B000031','2022-04-18','2022-09-22'),('B000032','2022-04-18','2022-09-22'),('B000033','2022-04-18','2022-09-22'),('B000034','2022-04-18','2022-09-22'),('B000035','2022-04-17','2022-09-01'),('B000036','2022-04-18','2022-09-01'),('B000037','2022-04-18','2022-09-01'),('B000038','2022-04-18','2022-09-01'),('B000039','2022-04-17','2022-07-22'),('B000040','2022-04-18','2022-07-22'),('B000041','2022-04-18','2022-07-22'),('B000042','2022-04-18','2022-07-22'),('B000043','2022-04-18','2022-07-22'),('B000044','2022-04-17','2022-07-22'),('B000045','2022-04-18','2022-07-22'),('B000046','2022-04-18','2022-07-22'),('B000047','2022-04-18','2022-07-22'),('B000048','2022-04-18','2022-07-22'),('B000049','2022-04-18','2022-05-22'),('B000050','2022-04-17',NULL),('B000051','2022-04-18',NULL),('B000052','2022-04-18',NULL),('B000053','2022-04-18',NULL),('B000054','2022-04-18',NULL),('B000055','2022-04-17',NULL),('B000056','2022-04-18',NULL),('B000057','2022-04-18',NULL),('B000058','2022-04-18',NULL),('B000059','2022-04-18',NULL),('B000060','2022-04-17',NULL),('B000061','2022-04-18',NULL),('B000062','2022-04-18',NULL),('B000063','2022-04-18',NULL),('B000064','2022-04-18',NULL);
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `Code` varchar(100) NOT NULL,
  `Discount` float DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES ('',0),('FLAT100',100),('FLAT50',50),('FREE10',10),('FREE2',2);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `PhoneNumber` varchar(50) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `H_No` varchar(30) NOT NULL,
  `Area` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Pin` varchar(30) NOT NULL,
  PRIMARY KEY (`PhoneNumber`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `user` (`PhoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('000','lmn','kpr','56','juhu','mumbai','5'),('0001','sohanbiri','sheoran','2','Paschim Vihar','Delhi','56'),('001','abc','fgh','45','qwe','rty','679'),('002','aa','aa','aaa','aaa','aaaa','111'),('003','bbb','bb','bb','bb','bb','bb'),('004','aa','aa','aaa','aaa','aaa','aa'),('009','abcd','ghjk','009','ffc','tyio','124'),('012','ash','ash','1','1','1','1'),('111','111','111','111','111','111','111'),('121','b','b','b','b','b','b'),('1231','aa','aa','aa','aa','aa','aa'),('124','124','124','124','124','124','124'),('13','13','13','13','13','13','13'),('1919191919','pass','word','1','1','1','1'),('22','222','22','222','222','222','222'),('33','33','33','33','333','333','33'),('333','kkk','bbb','123','qwe','ert','234'),('411','411','411','411','411','411','411'),('422','123','422','422','422','422','422'),('44444444','shalu','chaudhary','4','Paschim Vihar','New Delhi','56'),('45678','Ashwin','Sheoran','45678','dfv','Delhi','234'),('511','511','511','511','511','511','511'),('542','542','542','542','542','542','542'),('543','543','543','543','543','543','543'),('67894','gaya','aya','67894','Z','K','0'),('7683078075','abc','abc','2','wer','agh','pin'),('87','87','87','87','87','87','87'),('8787878787','rand','int','2','abc','abc','123'),('885','sohanbiri','sheoran','2','paschim vihar','delhi','56'),('8920420939','Ashwin','Sheoran','100','2','delhi','110056'),('8920540939','Arshia','Sheoran','A-2','Paschim Vihar','New Delhi','110056'),('955','aa','aa','aaa','aaa','aaa','aa'),('9868139099','Sanjay','Chaudhary','2','PAschim Vihar','Delhi','110056'),('987','aa','aa','aa','aa','aaa','aa'),('988','aa','aa','aaa','aaa','aaa','aa'),('9898989898','abc','xyz','123','asd','hgf','101');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `PhoneNumber` varchar(50) NOT NULL,
  `Emp_name` varchar(50) DEFAULT NULL,
  `H_No` varchar(50) DEFAULT NULL,
  `Area` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Pin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PhoneNumber`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`PhoneNumber`) REFERENCES `user` (`PhoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('900','Ashwin','IIITD','Ookhla','Delhi','New Delhi','110001'),('911','Harsh','IIITD','Ookhla','Delhi','New Delhi','110001'),('922','Harshit','IIITD','Ookhla','Delhi','New Delhi','110001'),('933','Meghna','IIITD','Ookhla','Delhi','New Delhi','110001');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` int NOT NULL,
  `Price` float NOT NULL,
  `Stock` int NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Batch_ID` varchar(30) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`),
  UNIQUE KEY `idxName` (`Name`),
  KEY `Batch_ID` (`Batch_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Batch_ID`) REFERENCES `batch` (`Batch_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,30,109,'Milk','Dairy','Amul','Amul Tonned 1-Litre','B000001','./assets/products/001.jpg'),(2,25,531,'Milk','Dairy','Amul','Amul fullcream 1-Litre','B000001','./assets/products/002.jpg'),(3,25,470,'Milk','Dairy','Amul','Amul Tonned 2-Litre','B000001','./assets/products/003.webp'),(4,15,60,'Milk','Dairy','Amul','Amul fullcream half-Litre','B000001','./assets/products/004.jpg'),(5,30,60,'Milk','Dairy','Amul','Amul DoubleToned 1-Litre','B000001','./assets/products/005.jpg'),(6,40,60,'Milk','Dairy','Motherdairy','Mother dairy Toned 1-Litre','B000002','./assets/products/006.jpg'),(7,36,48,'Milk','Dairy','Motherdairy','Mother dairy fullcream 1-Litre','B000002','./assets/products/007.jpg'),(8,30,60,'Milk','Dairy','Motherdairy','Mother dairy Toned half-Litre','B000002','./assets/products/008.jpg'),(9,30,60,'Milk','Dairy','Motherdairy','Mother dairy fullcream half-Litre','B000002','./assets/products/009.jpg'),(10,40,60,'Milk','Dairy','Motherdairy','Mother dairy DoubleToned 1-Litre','B000002','./assets/products/010.jpg'),(11,15,60,'Milk','Dairy','Amul','Amul DoubleToned half-Litre','B000003','./assets/products/011.jpg'),(12,20,60,'Milk','Dairy','Motherdairy','Mother dairy DoubleToned half-Litre','B000002','./assets/products/012.jpg'),(13,30,60,'Milk','Dairy','Kwality','Kwality Toned 1-Litre','B000003','./assets/products/013.jpg'),(14,15,100,'Milk','Dairy','Kwality','Kwality DoubleToned half-Litre','B000003','./assets/products/014.jpg'),(15,30,60,'Milk','Dairy','Kwality','Kwality Toned half-Litre','B000003','./assets/products/015.jpg'),(16,70,30,'Paneer','Dairy','Motherdairy','Mother Dairy Paneer - 200 g','B000004','./assets/products/016.jpg'),(17,77,60,'Paneer','Dairy','Amul','Amul Paneer - 200 g','B000005','./assets/products/017.jpg'),(18,250,24,'Butter','Dairy','Amul','Amul Butter - 500 g - 200 g','B000005','./assets/products/018.jpg'),(19,100,150,'Cheese','Dairy','Amul','Amul Cheese Processed - 200 g','B000005','./assets/products/019.jpg'),(20,250,30,'Butter','Dairy','Amul','Amul Butter - 100 g','B000006','./assets/products/020.jpg'),(21,70,200,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal 1-Kg','B000007','./assets/products/021.jpg'),(22,120,198,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal 2-Kg','B000007','./assets/products/022.jpg'),(23,150,196,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal Unpolished 1-Kg','B000008','./assets/products/023.jpg'),(24,250,200,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal Unpolished 2-Kg','B000008','./assets/products/024.jpg'),(25,700,200,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal Chilka 1-Kg','B000009','./assets/products/025.jpg'),(26,120,200,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal Chilka 2-Kg','B000009','./assets/products/026.jpg'),(27,130,200,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal Chilka Unpolished 1-Kg','B000010','./assets/products/027.jpg'),(28,240,198,'Moong Dal','Pulses','Tata','TATA SAMPANN Moong Dal Chilka Unpolished 2-Kg','B000010','./assets/products/028.jpg'),(29,130,200,'Moong Dal','Pulses','Rajdhani','RAJDHANI Moong Dal Chilka 2-Kg','B000011','./assets/products/029.jpg'),(30,200,179,'Moong Dal','Pulses','Rajdhani','RAJDHANI Moong Dal Chilka Unpolished 2-Kg','B000012','./assets/products/030.jpg'),(31,180,150,'Rajma','Pulses','Harvest','Rajma jammu 1-Kg','B000012','./assets/products/031.jpg'),(32,350,150,'Rajma','Pulses','Harvest','Rajma jammu 2-Kg','B000012','./assets/products/032.jpg'),(33,800,150,'Rajma','Pulses','Harvest','Rajma jammu 5-Kg','B000012','./assets/products/033.jpg'),(34,200,145,'Rajma','Pulses','Tata','TATA SAMPANN Rajma jammu 1-Kg','B000013','./assets/products/034.jpg'),(35,380,150,'Rajma','Pulses','Tata','TATA SAMPANN Rajma jammu 2-Kg','B000013','./assets/products/035.jpg'),(36,900,148,'Rajma','Pulses','Tata','TATA SAMPANN Rajma jammu 5-Kg','B000013','./assets/products/036.jpg'),(37,80,150,'Rajma','Pulses','Tata','TATA SAMPANN Red Rajma 1-Kg','B000014','./assets/products/037.jpg'),(38,100,150,'Rajma','Pulses','Harvest','Red Rajma 1-Kg','B000015','./assets/products/038.jpg'),(39,190,142,'Rajma','Pulses','Harvest','Red Rajma 2-Kg','B000015','./assets/products/039.jpg'),(40,420,150,'Rajma','Pulses','Organic Tattva','ORGANIC TATTVA Chitra Rajma 2-Kg','B000016','./assets/products/040.jpg'),(41,60,250,'Wheat','Grains','Fortune','Fortune Chakki Fresh Atta 1-kg','B000018','./assets/products/041.jpg'),(42,1500,248,'Wheat','Grains','Fortune','Fortune Chakki Fresh Atta 2-kg','B000018','./assets/products/042.jpg'),(43,300,241,'Wheat','Grains','Fortune','Fortune Chakki Fresh Atta 5-kg','B000018','./assets/products/043.jpg'),(44,100,250,'Wheat','Grains','Aashirvaad','Aashirvaad Shudh Chakki Atta 2-kg','B000019','./assets/products/044.jpg'),(45,250,300,'Wheat','Grains','Aashirvaad','Aashirvaad Shudh Chakki Atta 5-kg','B000019','./assets/products/045.jpg'),(46,500,250,'Wheat','Grains','Aashirvaad','Aashirvaad Shudh Chakki Atta 10-kg','B000019','./assets/products/046.jpg'),(47,100,243,'Wheat','Grains','Aashirvaad','Aashirvaad Select Premium Sharbati Atta 2-kg','B000020','./assets/products/047.jpg'),(48,250,250,'Wheat','Grains','Aashirvaad','Aashirvaad Select Premium Sharbati Atta 5-kg','B000020','./assets/products/048.jpg'),(49,500,250,'Wheat','Grains','Aashirvaad','Aashirvaad Select Premium Sharbati Atta 10-kg','B000020','./assets/products/049.jpg'),(50,280,250,'Wheat','Grains','Aashirvaad','Aashirvaad Atta with Multigrains-5kg','B000021','./assets/products/050.jpg'),(51,49,100,'Grapes','Fruits','Big Bazaar','Fresh Grapes Sonaka Seedless- 500g','B000023','./assets/products/051.jpg'),(52,79,100,'Grapes','Fruits','Big Bazaar','Fresh Oranges Nagpur- 1 kg','B000024','./assets/products/052.jpg'),(53,44,83,'Grapes','Fruits','Big Bazaar','Bananas Robusto- 1 kg','B000022','./assets/products/053.jpg'),(54,180,98,'Grapes','Fruits','Big Bazaar','Apple Red Delicious - 4 Nos','B000017','./assets/products/054.jpg'),(55,150,120,'Grapes','Fruits','Big Bazaar','Pomegranate - 4 Nos','B000025','./assets/products/055.jpg'),(56,98,86,'Grapes','Fruits','Big Bazaar','Apple Kashmir - 4 Nos','B000017','./assets/products/056.jpg'),(57,100,100,'Grapes','Fruits','Big Bazaar','Apple Kinnaur - 4 Nos','B000017','./assets/products/057.jpg'),(58,44,81,'Grapes','Fruits','Big Bazaar','Ber - 500 g','B000027','./assets/products/058.jpg'),(59,89,90,'Grapes','Fruits','Big Bazaar','Pineapple - 1 Nos','B000028','./assets/products/059.jpg'),(60,180,100,'Grapes','Fruits','Big Bazaar','Grapes Red Globe Indian- 500g','B000023','./assets/products/060.jpg'),(61,25,350,'Carrots','Vegetables','Big Bazaar','Red Local Carrot- 1 kg','B000029','./assets/products/061.jpg'),(62,25,350,'Cauliflower','Vegetables','Big Bazaar','Cauliflower - 1 Nos','B000030','./assets/products/062.jpg'),(63,10,350,'Corriander','Vegetables','Big Bazaar','Corriander- 100 g','B000031','./assets/products/063.jpg'),(64,42,345,'Onion','Vegetables','Big Bazaar','Onion - 1 kg','B000032','./assets/products/064.jpg'),(65,39,349,'Tomato','Vegetables','Big Bazaar','Tomato Hybrid- 1 kg','B000033','./assets/products/065.jpg'),(66,10,339,'Spinach','Vegetables','Big Bazaar','Spinach- 250 g','B000034','./assets/products/066.jpg'),(67,20,350,'Cabbage','Vegetables','Big Bazaar','Cabbage- 1 Nos 400g to 700g','B000029','./assets/products/067.jpg'),(68,16,350,'Potato','Vegetables','Big Bazaar','Potato- 1 kg','B000030','./assets/products/068.jpg'),(69,12,350,'Green Chilli','Vegetables','Big Bazaar','Green Chilli - 100 g','B000031','./assets/products/069.jpg'),(70,47,350,'Capsicum','Vegetables','Big Bazaar','Red Local Carrot- 2 kg','B000032','./assets/products/070.jpg'),(71,200,250,'Rice','Grains','India Gate','India Gate Basmati Rice Classic - 1 kg','B000035','./assets/products/071.jpg'),(72,400,250,'Rice','Grains','India Gate','India Gate Basmati Rice Classic - 2 kg','B000035','./assets/products/072.jpg'),(73,1000,250,'Rice','Grains','India Gate','India Gate Basmati Rice Classic - 5 kg','B000035','./assets/products/073.jpg'),(74,800,250,'Rice','Grains','Fortune','Fortune Rozana Basmati Rice - 1 kg','B000036','./assets/products/074.jpg'),(75,200,250,'Rice','Grains','Fortune','Fortune Rozana Basmati Rice - 2 kg','B000036','./assets/products/075.jpg'),(76,500,250,'Rice','Grains','Fortune','Fortune Rozana Basmati Rice - 5 kg','B000036','./assets/products/076.jpg'),(77,90,250,'Rice','Grains','India Gate','India Gate Basmati Rice Rozana - 1 kg','B000037','./assets/products/077.jpg'),(78,170,250,'Rice','Grains','India Gate','India Gate Basmati Rice Rozana - 2 kg','B000037','./assets/products/078.jpg'),(79,495,250,'Rice','Grains','India Gate','India Gate Basmati Rice Rozana - 5 kg','B000037','./assets/products/079.jpg'),(80,390,250,'Rice','Grains','Daawat','Daawat Basmati Rice Rozana - 5 kg','B000038','./assets/products/080.jpg'),(81,16,250,'Chips','Snacks','Lays','Lays American Style Potato Chips Cream & Onion - 52g','B000039','./assets/products/081.jpg'),(82,45,240,'Chips','Snacks','Lays','Lays Potato Chips Masala Magic -130gm','B000039','./assets/products/082.jpg'),(83,45,250,'Chips','Snacks','Doritos','Doritos Nacho Cheese Flavour, 100 gm','B000040','./assets/products/083.jpg'),(84,40,245,'Chips','Snacks','Bingo','Bingo! Original Style Chilli Sprinkled -100g','B000041','./assets/products/084.jpg'),(85,18,247,'Chips','Snacks','Bingo','Bingo! Mad Angle Very Peri Peri - 66g','B000041','./assets/products/085.jpg'),(86,20,250,'Chips','Snacks','Lays','Lays Maxx Macho Chili Flavour - 130g','B000039','./assets/products/086.jpg'),(87,20,250,'Chips','Snacks','Lays','Lays Maxx Barbeque Flavour - 130g','B000039','./assets/products/087.jpg'),(88,20,250,'Chips','Snacks','Lays','Lays Maxx Sizzling Barbeque - 130g','B000039','./assets/products/088.jpg'),(89,170,250,'Chips','Snacks','Jolo','Jolo Chip Last Chip Challenge - 52g','B000042','./assets/products/089.jpg'),(90,90,250,'Chips','Snacks','Pringals','Pringles Potato Chips Original','B000043','./assets/products/090.jpg'),(91,90,190,'Carbonated-Drinks','Soft-Drinks','Coca-Cola','Coca-Cola Soft Drink - 2.25 L','B000044','./assets/products/091.jpg'),(92,38,200,'Carbonated-Drinks','Soft-Drinks','Coca-Cola','Coca-Cola Zero Soft Drink Can -  300 ml','B000044','./assets/products/092.jpg'),(93,30,200,'Carbonated-Drinks','Soft-Drinks','Coca-Cola','Coca-Cola - 750 ml','B000044','./assets/products/093.jpg'),(94,80,198,'Carbonated-Drinks','Soft-Drinks','Red Bull','Red Bull Energy Drink - 250 m','B000045','./assets/products/094.jpg'),(95,30,200,'Carbonated-Drinks','Soft-Drinks','Fanta','Fanta Orange Flavoured Soft Drink - 300 ml','B000045','./assets/products/095.jpg'),(96,110,200,'Fruit-Drinks','Soft-Drinks','Real','Real Fruit Power Mixed Fruit - 1L','B000046','./assets/products/096.jpg'),(97,10,200,'Fruit-Drinks','Soft-Drinks','Maaza','Maaza Mango Fruit Drink - 150 ml','B000047','./assets/products/097.jpg'),(98,10,200,'Fruit-Drinks','Soft-Drinks','Frooti','Frooti Mango Tetra - 150 ml','B000048','./assets/products/098.jpg'),(99,50,200,'Fruit-Drinks','Soft-Drinks','Tropicana','Tropicana Slice Mango Jiuce - 1.2 L','B000049','./assets/products/099.jpg'),(100,70,200,'Fruit-Drinks','Soft-Drinks','Frooti','Frooti Pet Bottle - 1.2 L','B000048','./assets/products/100.jpg'),(101,84999,11,'Smartphones','Electronics','Apple','Apple iPhone 13 256GB - Starlight','B000050','./assets/products/101.jpg'),(102,69999,14,'Smartphones','Electronics','Apple','Apple iPhone 13 Mini 128GB - Blue','B000051','./assets/products/102.jpg'),(103,139999,13,'Smartphones','Electronics','Apple','Apple iPhone 13 Pro Max 256GB - Sierra Blue','B000052','./assets/products/103.jpg'),(104,59999,12,'Smartphones','Electronics','Apple','Apple iPhone 12 128GB - Blue','B000053','./assets/products/104.jpg'),(105,49999,25,'Smartphones','Electronics','Apple','Apple iPhone 11 64GB - Black','B000054','./assets/products/105.jpg'),(106,41999,50,'Smart-Watches','Electronics','Apple','Apple Watch Series 7 - Blue','B000055','./assets/products/106.jpg'),(107,29900,39,'Smart-Watches','Electronics','Apple','Apple Watch SE - White','B000056','./assets/products/107.jpg'),(108,109999,100,'Smartphones','Electronics','Samsung Galaxy','Samsung Galaxy S22 Ultra 5G - 256GB','B000057','./assets/products/108.jpg'),(109,13499,100,'Smartphones','Electronics','Xiaomi','Redmi Note 11 White - 12GB-64GB','B000058','./assets/products/109.jpg'),(110,69999,100,'Smartphones','Electronics','Iqoo','Iqoo 9 5G Legend - 12GB-256GB','B000059','./assets/products/110.jpg'),(111,1299,300,'Shirts','Clothes','Big Bazaar','Checkered Cotton Full Sleeves Casual Shirt for Men','B000060','./assets/products/111.jpg'),(112,420,300,'Shirts','Clothes','Big Bazaar','Men Cotton Solid Regular Fit Stylish Full Sleeve Shirts','B000061','./assets/products/112.jpg'),(113,699,300,'Shirts','Clothes','Big Bazaar','Men Slim Casual Shirt','B000062','./assets/products/113.jpg'),(114,449,300,'Shirts','Clothes','Big Bazaar','Men Solid Regular Fit Full Sleeve Cotton Casual Shirt','B000063','./assets/products/114.jpg'),(115,437,300,'Shirts','Clothes','Big Bazaar','Men Shirt - Pink','B000064','./assets/products/115.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Supplier_ID` int NOT NULL AUTO_INCREMENT,
  `Supplier_Name` varchar(50) DEFAULT NULL,
  `Office_No` varchar(30) DEFAULT NULL,
  `Building` varchar(30) DEFAULT NULL,
  `Area` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Pin` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Iyappan Co','A56','Embassy Centre','Andheri','Maharashtra','400053'),(2,'Vision Agro Foods','229','Doshi Chambers','Niti Bagh','Delhi','110049'),(3,'EKA International','C70','Tulsi Dham','Ghatkoper','Maharashtra','400606'),(4,'Kamdhenu Foods','335','D-Mall','Uttam Nagar','Delhi','110059'),(5,'Rahul Co','D78','Khidderpore','Howrah','West Bengal','700023'),(6,'Vipro Walls','11','Pachpakhadi','Bandra','Maharashtra','400601'),(7,'Swati Foods Co','17C','Sant Extension','Vadodara','Gujrat','390001'),(8,'Hiren Traders','K34','Girgaon','Juhu','Maharashtra','400004'),(9,'Rathna Foods','C55','Egmore Extensions','Adyar','Tamil Nadu','600008'),(10,'Deluxe Mart','G69','Fragine buildings','Frazer Town','Karnataka','560054'),(11,'GL Foods','D20','Nora Centre','Pahadganj','Delhi','110069'),(12,'Rani Foods','T29','Goregaon Towers','Rajendra Nagar','Delhi','110029'),(13,'HH Energy Pvt. Ltd.','445','Kashmira Centre','Andheri','Maharashtra','400001'),(14,'Rahul Foods','12T','Misha Tower','Kolar','Karnataka','560012'),(15,'Apley Co','T69','Shefali Buildings','Borivali','Maharashtra','400601'),(16,'RaniRaj Foods','224','Pulkit Extension','Chandni Chowk','Delhi','110023'),(17,'Deluxe Drinks','C89','Kismat Tower','Bandra','Maharashtra','400049'),(18,'Forby Foods','14','Dawn Tower','Bhavnagar','Gujrat','390012'),(19,'FL Milks','57','Fors Extension','Uttam_Nagar','Delhi','110059'),(20,'Himalayan Traders','A41','Kailash Tower','Vadodara','Gujrat','390041'),(21,'Himachal Co','V40','Geo Centre','Niti Bagh','Delhi','110031'),(22,'Rashi Foods','112','Madhya Extension','Andheri','Maharashtra','400201'),(23,'GHF Retail','W12','Hari Om Centre','Bandra','Maharashtra','400080'),(24,'Tora Creations','B67','Patiala Enforce','Patalitha','Assam','783430'),(25,'Harry Retails','GT1','Pahadi Buildings','Haldwani','Utrakhand','263139'),(26,'Iyer Cosmetics','H56','Kailash Hub','Hisar','Haryana','125001'),(27,'Kanchenjunga Traders','C90','Vaishali Tower','Darjeeling','West Bengal','390041'),(28,'Suryasen Tradrers','444','Mithila_Building','Ayodhya','Uttar Pradesh','224001'),(29,'Fossil Pvt. Ltd.','57','DLF Promenade Mall 3','Vasant Kunj Malls','Delhi','110070'),(30,'Apple Inc.','19th Floor','Concorde Tower C','Bangalore','Karnataka','560001');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `Supplier_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Date_of_Supply` date DEFAULT NULL,
  `Order_Number` int DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `supplies_ibfk_3_idx` (`Order_Number`),
  CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`),
  CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`),
  CONSTRAINT `supplies_ibfk_3` FOREIGN KEY (`Order_Number`) REFERENCES `stock_order` (`Order_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,1,'2022-04-21',1),(1,3,'2022-04-24',23),(1,45,'2022-04-24',1),(2,2,'2022-04-24',1),(2,3,'2022-04-21',1),(2,45,'2022-04-24',1),(3,1,'2022-04-21',1),(3,55,'2022-04-24',1),(4,2,'2022-04-24',22),(10,14,'2022-04-28',25),(10,70,'2022-04-24',24);
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `vwatp`
--

DROP TABLE IF EXISTS `vwatp`;
/*!50001 DROP VIEW IF EXISTS `vwatp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwatp` AS SELECT 
 1 AS `Product_ID`,
 1 AS `quantity`,
 1 AS `cart_ID`,
 1 AS `Price`,
 1 AS `Stock`,
 1 AS `Type`,
 1 AS `Category`,
 1 AS `Brand`,
 1 AS `Name`,
 1 AS `Batch_ID`,
 1 AS `image`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwpab`
--

DROP TABLE IF EXISTS `vwpab`;
/*!50001 DROP VIEW IF EXISTS `vwpab`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwpab` AS SELECT 
 1 AS `Batch_ID`,
 1 AS `Product_ID`,
 1 AS `Price`,
 1 AS `Stock`,
 1 AS `Type`,
 1 AS `Category`,
 1 AS `Brand`,
 1 AS `Name`,
 1 AS `image`,
 1 AS `DOM`,
 1 AS `DOE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwreceipt`
--

DROP TABLE IF EXISTS `vwreceipt`;
/*!50001 DROP VIEW IF EXISTS `vwreceipt`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwreceipt` AS SELECT 
 1 AS `Code`,
 1 AS `cart_ID`,
 1 AS `Product_ID`,
 1 AS `Price`,
 1 AS `Stock`,
 1 AS `Type`,
 1 AS `Category`,
 1 AS `Brand`,
 1 AS `Name`,
 1 AS `Batch_ID`,
 1 AS `image`,
 1 AS `quantity`,
 1 AS `Order_ID`,
 1 AS `Total_Cost`,
 1 AS `Order_Status`,
 1 AS `Delivery_Date`,
 1 AS `Order_date`,
 1 AS `PhoneNumber`,
 1 AS `Discount`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'logintest'
--

--
-- Dumping routines for database 'logintest'
--
/*!50003 DROP PROCEDURE IF EXISTS `ADDSTK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADDSTK`(iproduct_id int , istck int)
begin
declare p_id int;
declare nstck int;
set p_id = iproduct_id;
set nstck = istck;
update product set stock = stock + nstck  where Product_ID =p_id ;end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECKPROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECKPROD`(i int)
begin
declare j int;
set j = 0;
label: LOOP
    SET j = j +1;
select * from product where product_id = j;
IF j =i THEN
     LEAVE label;
    END IF;
 END LOOP label;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VIEWALLPROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VIEWALLPROD`()
begin
select * from product;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VIEWALLSUPP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VIEWALLSUPP`()
begin
select * from Supplier;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VIEWCART` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VIEWCART`(PhoneNumberc varchar(30))
Begin
select * from CART where PhoneNumber = PhoneNumberc and Cart_status = "current";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VIEWPROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VIEWPROD`(iproduct_id int)
begin
declare p_id int;
set p_id = iproduct_id;
select * from product where product_id = p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VIEWTDYRCPT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VIEWTDYRCPT`()
begin

Select * from Receipt where Payment_date =  CURDATE();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vwatp`
--

/*!50001 DROP VIEW IF EXISTS `vwatp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwatp` AS select `added_to`.`Product_ID` AS `Product_ID`,`added_to`.`quantity` AS `quantity`,`added_to`.`cart_ID` AS `cart_ID`,`product`.`Price` AS `Price`,`product`.`Stock` AS `Stock`,`product`.`Type` AS `Type`,`product`.`Category` AS `Category`,`product`.`Brand` AS `Brand`,`product`.`Name` AS `Name`,`product`.`Batch_ID` AS `Batch_ID`,`product`.`image` AS `image` from (`added_to` join `product` on((`added_to`.`Product_ID` = `product`.`Product_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwpab`
--

/*!50001 DROP VIEW IF EXISTS `vwpab`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwpab` AS select `product`.`Batch_ID` AS `Batch_ID`,`product`.`Product_ID` AS `Product_ID`,`product`.`Price` AS `Price`,`product`.`Stock` AS `Stock`,`product`.`Type` AS `Type`,`product`.`Category` AS `Category`,`product`.`Brand` AS `Brand`,`product`.`Name` AS `Name`,`product`.`image` AS `image`,`batch`.`DOM` AS `DOM`,`batch`.`DOE` AS `DOE` from (`product` join `batch` on((`product`.`Batch_ID` = `batch`.`Batch_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwreceipt`
--

/*!50001 DROP VIEW IF EXISTS `vwreceipt`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwreceipt` AS select `orders`.`Code` AS `Code`,`added_to`.`cart_ID` AS `cart_ID`,`product`.`Product_ID` AS `Product_ID`,`product`.`Price` AS `Price`,`product`.`Stock` AS `Stock`,`product`.`Type` AS `Type`,`product`.`Category` AS `Category`,`product`.`Brand` AS `Brand`,`product`.`Name` AS `Name`,`product`.`Batch_ID` AS `Batch_ID`,`product`.`image` AS `image`,`added_to`.`quantity` AS `quantity`,`orders`.`Order_ID` AS `Order_ID`,`orders`.`Total_Cost` AS `Total_Cost`,`orders`.`Order_Status` AS `Order_Status`,`orders`.`Delivery_Date` AS `Delivery_Date`,`orders`.`Order_date` AS `Order_date`,`orders`.`PhoneNumber` AS `PhoneNumber`,`coupons`.`Discount` AS `Discount` from (((`product` join `added_to` on((`product`.`Product_ID` = `added_to`.`Product_ID`))) join `orders` on((`added_to`.`cart_ID` = `orders`.`Cart_ID`))) join `coupons` on((`orders`.`Code` = `coupons`.`Code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:09:43
