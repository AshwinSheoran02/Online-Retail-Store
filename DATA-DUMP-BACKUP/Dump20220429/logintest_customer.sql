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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:04
