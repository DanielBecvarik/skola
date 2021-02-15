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
-- Table structure for table `sklad`
--

DROP TABLE IF EXISTS `sklad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sklad` (
  `id` int(11) DEFAULT NULL,
  `nazev` varchar(20) DEFAULT NULL,
  `pujcovne_v_kc` varchar(9999) DEFAULT NULL,
  `porizovaci_cena` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sklad`
--

LOCK TABLES `sklad` WRITE;
/*!40000 ALTER TABLE `sklad` DISABLE KEYS */;
INSERT INTO `sklad` VALUES (1,'kajak','250.00',1700.00),(2,'kajak','300.00',900.00),(3,'kajak','300.00',1700.00),(4,'kajak','250.00',900.00),(5,'kajak','250.00',1500.00),(6,'kajak','400.00',2400.00),(7,'kajak','400.00',1700.00),(8,'kajak','350.00',1500.00),(9,'padlo','50.00',1500.00),(10,'padlo','50.00',2400.00),(11,'padlo','50.00',2400.00),(12,'padlo','50.00',1700.00),(13,'padlo','50.00',2400.00),(14,'padlo','50.00',150.00),(15,'padlo','50.00',2400.00),(16,'padlo','50.00',1700.00),(17,'padlo','50.00',900.00),(18,'padlo','50.00',900.00),(19,'padlo','50.00',900.00),(20,'vesta','25.00',900.00),(21,'vesta','25.00',150.00),(22,'vesta','25.00',150.00),(23,'vesta','25.00',1500.00),(24,'vesta','25.00',1700.00),(25,'vesta','25.00',1500.00),(26,'vesta','25.00',150.00),(27,'vesta','25.00',1700.00),(28,'vesta','25.00',900.00),(29,'vesta','25.00',2400.00),(30,'vesta','25.00',900.00),(31,'vesta','25.00',2400.00),(32,'vesta','25.00',1700.00),(33,'vesta','25.00',1500.00),(34,'vesta','25.00',1700.00);
/*!40000 ALTER TABLE `sklad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zakaznik`
--

DROP TABLE IF EXISTS `zakaznik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zakaznik` (
  `id` tinyint(4) DEFAULT NULL,
  `jmeno` varchar(20) DEFAULT NULL,
  `prijmeni` varchar(20) DEFAULT NULL,
  `kraj` varchar(20) DEFAULT NULL,
  `ulice` varchar(20) DEFAULT NULL,
  `mesto` varchar(20) DEFAULT NULL,
  `psc` int(11) DEFAULT NULL,
  `id_skladove_polozky` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakaznik`
--

LOCK TABLES `zakaznik` WRITE;
/*!40000 ALTER TABLE `zakaznik` DISABLE KEYS */;
INSERT INTO `zakaznik` VALUES (1,'Pavel','Dolak','U.k','5.kvetna','Teplice',41501,1),(2,'Karel','Nesvadba','U.k','Bezejmena','Usti nad Labem',40001,5),(3,'Zuzana','Jirku','U.k','Jiraskova','Usti nad Labem',40001,14),(4,'Eva','Vesela','U.k','U lazni','Usti nad Labem',40001,2),(5,'Zdenek','Dobrota','U.k','Bilinska','Teplice',41501,30),(6,'Petr','Strakac','U.k','Hlavni','Usti nad Labem',40001,9),(7,'Eva','Nevesela','U.k','Predlice','Usti nad Labem',40001,17),(8,'Jan','Dopita','U.k','Masarykova','Usti nad Labem',40001,4),(9,'Karla','Kratka','U.k','Bulharska','Teplice',41501,21),(10,'Zdenek','Lekly','U.k','Habrova','Teplice',41501,22),(11,'Jana','Stara','U.k','Holeckova','Usti nad Labem',40001,7),(12,'Pepa','Zdepa','U.k','5.kvetna','Bilina',41801,15);
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

-- Dump completed on 2021-02-15 13:06:24
