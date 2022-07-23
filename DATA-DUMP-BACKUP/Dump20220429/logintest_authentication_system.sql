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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  1:03:05
