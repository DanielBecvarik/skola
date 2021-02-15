-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pujcovna_lodi
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
-- Current Database: `pujcovna_lodi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pujcovna_lodi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pujcovna_lodi`;

--
-- Table structure for table `sklad`
--

DROP TABLE IF EXISTS `sklad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sklad` (
  `id` int(11) DEFAULT NULL,
  `nazev` varchar(20) DEFAULT NULL,
  `cena_za_den` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sklad`
--

LOCK TABLES `sklad` WRITE;
/*!40000 ALTER TABLE `sklad` DISABLE KEYS */;
INSERT INTO `sklad` VALUES (1,'kajak',250.00),(2,'kajak',300.00),(3,'kajak',300.00),(4,'kajak',250.00),(5,'kajak',250.00),(6,'kajak',400.00),(7,'kajak',400.00),(8,'kajak',350.00),(9,'padlo',50.00),(10,'padlo',50.00),(11,'padlo',50.00),(12,'padlo',50.00),(13,'padlo',50.00),(14,'padlo',50.00),(15,'padlo',50.00),(16,'padlo',50.00),(17,'padlo',50.00),(18,'padlo',50.00),(19,'padlo',50.00),(20,'vesta',25.00),(21,'vesta',25.00),(22,'vesta',25.00),(23,'vesta',25.00),(24,'vesta',25.00),(25,'vesta',25.00),(26,'vesta',25.00),(27,'vesta',25.00),(28,'vesta',25.00),(29,'vesta',25.00),(30,'vesta',25.00),(31,'vesta',25.00),(32,'vesta',25.00),(33,'vesta',25.00),(34,'vesta',25.00);
/*!40000 ALTER TABLE `sklad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zakaznik`
--

DROP TABLE IF EXISTS `zakaznik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zakaznik` (
  `jmeno` varchar(20) DEFAULT NULL,
  `prijmeni` varchar(20) DEFAULT NULL,
  `bydliste` varchar(20) DEFAULT NULL,
  `id_skladove_polozky` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakaznik`
--

LOCK TABLES `zakaznik` WRITE;
/*!40000 ALTER TABLE `zakaznik` DISABLE KEYS */;
INSERT INTO `zakaznik` VALUES ('Pavel','Dolak','Teplice',1),('Karel','Nesvadba','Usti nad Labem',5),('Zuzana','Jirku','Usti nad Labem',14),('Eva','Vesela','Usti nad Labem',2),('Zdenek','Dobrota','Teplice',30),('Petr','Strakac','Usti nad Labem',9),('Eva','Nevesela','Usti nad Labem',17),('Jan','Dopita','Usti nad Labem',4),('Karla','Kratka','Teplice',21),('Zdenek','Lekly','Teplice',22),('Jana','Stara','Usti nad Labem',7),('Pepa','Zdepa',NULL,NULL);
/*!40000 ALTER TABLE `zakaznik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-09 11:58:28
