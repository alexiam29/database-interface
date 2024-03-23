CREATE DATABASE  IF NOT EXISTS `alexia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alexia`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: alexia
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `colaborari`
--

DROP TABLE IF EXISTS `colaborari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborari` (
  `id_asociere` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_trupa` bigint unsigned DEFAULT NULL,
  `id_membru` bigint unsigned DEFAULT NULL,
  `melodii_impreuna` int unsigned DEFAULT NULL,
  `an_colaborare` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_asociere`),
  KEY `fk_colaborari_1_idx` (`id_trupa`),
  KEY `fk_colaborari_2_idx` (`id_membru`),
  CONSTRAINT `fk_colaborari_1` FOREIGN KEY (`id_trupa`) REFERENCES `trupe` (`id_trupa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_colaborari_2` FOREIGN KEY (`id_membru`) REFERENCES `membrii` (`id_membru`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborari`
--

LOCK TABLES `colaborari` WRITE;
/*!40000 ALTER TABLE `colaborari` DISABLE KEYS */;
INSERT INTO `colaborari` VALUES (25,28,4,7,1968),(26,1,20,4,1985),(27,1,1,1,1995),(28,32,32,7,1990),(29,34,38,2,1987),(30,33,41,3,2000),(31,30,40,3,1995),(32,32,30,3,1990),(33,31,20,8,1990);
/*!40000 ALTER TABLE `colaborari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membrii`
--

DROP TABLE IF EXISTS `membrii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membrii` (
  `id_membru` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prenume` varchar(45) DEFAULT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `data_nasterii` date DEFAULT NULL,
  `functie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_membru`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membrii`
--

LOCK TABLES `membrii` WRITE;
/*!40000 ALTER TABLE `membrii` DISABLE KEYS */;
INSERT INTO `membrii` VALUES (1,'John','Lennon','1940-10-09','chitara, vocal'),(3,'George','Harrison','1943-02-25','chitara, vocal'),(4,'Ringo','Starr','1940-07-07','tobe, voce'),(5,'Mick','Jagger','1943-07-26','vocal, chitara'),(6,'Keith','Richard','1943-12-17','chitara, vocal'),(20,'Freddie','Mercury','1943-07-25','voce'),(28,'Charlie','Watts','1941-06-01','tobe'),(29,'Ronnie','Wood','1947-06-01','chitara, bas, vocal'),(30,'Brian','May','1947-07-19','chitara, vocal'),(31,'Roger','Taylor','1949-07-26','tobe, vocal'),(32,'John','Deacon','1951-08-19','bas, chitara, clape'),(33,'Jon Bon','Jovi','1962-03-02','voce, chitara'),(34,'Richie','Sambora','1959-07-11','chitara, vocal'),(35,'David','Bryan','1962-02-07','clape, vocal'),(36,'Tico','Torres','1953-10-07','tobe, percutie'),(37,'Axl','Rose','1962-02-06','vocal, pian'),(38,'Saul','Hudson','1965-07-23','chitara solo'),(39,'Duff','McKagan','1964-02-05','bas, vocal'),(40,'Izzy','Stardlin','1962-04-08','chitara, vocal'),(41,'Steven','Adler','1965-01-22','tobe,');
/*!40000 ALTER TABLE `membrii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trupe`
--

DROP TABLE IF EXISTS `trupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trupe` (
  `id_trupa` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume_trupa` varchar(45) DEFAULT NULL,
  `an_infiintare` int unsigned DEFAULT NULL,
  `numar_albume` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_trupa`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trupe`
--

LOCK TABLES `trupe` WRITE;
/*!40000 ALTER TABLE `trupe` DISABLE KEYS */;
INSERT INTO `trupe` VALUES (1,'Bon Jovi',1983,14),(28,'The Rolling Stones',1962,30),(29,'The Beatles',1960,12),(30,'Queen',1970,15),(31,'Guns N\'Roses',1985,6),(32,'Radiohead',1985,9),(33,'Backstreet Boys',1993,7),(34,'R.E.M.',1980,10),(35,'ABBA',1972,8),(36,'Bee Gees',1958,20),(37,'Roxette',1986,12),(43,'Queen',1946,3);
/*!40000 ALTER TABLE `trupe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-05  8:56:41
