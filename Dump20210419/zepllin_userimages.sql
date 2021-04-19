-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: zepllin
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `userimages`
--

DROP TABLE IF EXISTS `userimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userimages` (
  `ImageId` int NOT NULL AUTO_INCREMENT,
  `UserNormalId` int NOT NULL,
  `ImageApprove` int NOT NULL,
  `ImageEdıtor` int NOT NULL,
  `ImageCategoryFk` int DEFAULT NULL,
  `UserName` varchar(70) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `ImageNewNumber` varchar(12) NOT NULL,
  `ImageTitle` varchar(160) NOT NULL,
  `ImageWithoutSeoTitle` varchar(160) NOT NULL,
  `ImageSrc` varchar(300) NOT NULL,
  `ImageExifFNumber` varchar(10) NOT NULL,
  `ImageExifFocalLength` varchar(15) NOT NULL,
  `ImageExifLensModel` varchar(30) NOT NULL,
  `ImageExifMeteringMode` varchar(50) NOT NULL,
  `ImageExifModel` varchar(30) NOT NULL,
  `ImageExifShutterSpeedValue` varchar(30) NOT NULL,
  `ImageExifExposureMode` varchar(30) NOT NULL,
  `ImageExifExposureProgram` varchar(20) NOT NULL,
  `ImageExifExposureTime` varchar(20) NOT NULL,
  `ImageExifMake` varchar(30) NOT NULL,
  `ImageExifIso` varchar(10) NOT NULL,
  PRIMARY KEY (`ImageId`),
  KEY `category_fk` (`ImageCategoryFk`),
  FULLTEXT KEY `ImageWithoutSeoTitle` (`ImageWithoutSeoTitle`),
  CONSTRAINT `category_fk` FOREIGN KEY (`ImageCategoryFk`) REFERENCES `category` (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userimages`
--

LOCK TABLES `userimages` WRITE;
/*!40000 ALTER TABLE `userimages` DISABLE KEYS */;
/*!40000 ALTER TABLE `userimages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 19:32:41
