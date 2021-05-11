-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: majitele
-- ------------------------------------------------------
-- Server version	10.5.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `majitele`
--

DROP TABLE IF EXISTS `majitele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `majitele` (
  `jmeno` varchar(20) DEFAULT NULL,
  `prijmeni` varchar(20) DEFAULT NULL,
  `vek` int(11) DEFAULT NULL,
  `telefon` int(11) DEFAULT NULL,
  `ulice` varchar(20) DEFAULT NULL,
  `mesto` varchar(20) DEFAULT NULL,
  `psc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majitele`
--

LOCK TABLES `majitele` WRITE;
/*!40000 ALTER TABLE `majitele` DISABLE KEYS */;
INSERT INTO `majitele` VALUES ('﻿Jan','Knaublauch',69,158,'Fajfrtova','Zavist ',679),('Petr','Studinko',20,155,'Bezejmena','Praha',110),('David ','Prihoda',101,911,'Jizni','Brno',614),('Eddie ','Gornagal',45,777222666,'Pranicka','Bilina',418);
/*!40000 ALTER TABLE `majitele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psi`
--

DROP TABLE IF EXISTS `psi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psi` (
  `jmeno` varchar(20) DEFAULT NULL,
  `vek` int(11) DEFAULT NULL,
  `plemeno` varchar(60) DEFAULT NULL,
  `pohlavi` varchar(20) DEFAULT NULL,
  `majitel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psi`
--

LOCK TABLES `psi` WRITE;
/*!40000 ALTER TABLE `psi` DISABLE KEYS */;
INSERT INTO `psi` VALUES ('﻿Max',2,'Australský honácký pes','fena','Jan Knaublauch'),('Ben',5,'Rotvajler','fena','Jan Knaublauch'),('Betty',7,'Papillon','fena','Jan Knaublauch'),('Bara',12,'Papillon','fena','Petr Studinko'),('Jesi',10,'Zlatý retrívr','fena','Petr Studinko'),('Nela',5,'border kolie','fena','Petr Studinko'),('Sara',4,'Dobrman','fena','David Prihoda'),('Ron',2,'Zlatý retrívr','fena','David Prihoda'),('Charlie',3,'Labrador','fena','David Prihoda'),('Buddy',8,'Zlatý retrívr','fena','David Prihoda'),('Bert',8,'Dobrman','fena','David Prihoda'),('Dan',9,'Labrador','fena','Eddie Gornagal'),('Besi',5,'Zlatý retrívr','fena','Eddie Gornagal'),('Mia',6,'Labrador','pes','Jan Knaublauch'),('Tereza',11,'Zlatý retrívr','pes','Jan Knaublauch'),('Lili',10,'Labrador','pes','Jan Knaublauch'),('Mates',1,'Labrador','pes','Petr Studinko'),('Pegy',2,'Border kolie','pes','Petr Studinko'),('Filip',11,'Border kolie','pes','Petr Studinko'),('Sam',17,'Dobrman','pes','David Prihoda');
/*!40000 ALTER TABLE `psi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-11 20:04:27
