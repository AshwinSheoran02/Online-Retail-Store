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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:05
