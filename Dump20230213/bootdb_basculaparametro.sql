-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: bootdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `basculaparametro`
--

DROP TABLE IF EXISTS `basculaparametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basculaparametro` (
  `id` bigint NOT NULL,
  `ack_carrier` varchar(255) NOT NULL,
  `brand_camion` varchar(255) NOT NULL,
  `id_user` bigint NOT NULL,
  `id_truck` varchar(255) NOT NULL,
  `name_carrier` varchar(255) NOT NULL,
  `quantity_water` float NOT NULL,
  `transaccion_truck` binary(255) NOT NULL,
  `weigh_truck_in` float NOT NULL,
  `weigh_truck_out` float NOT NULL,
  `ofertas_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_itep2n5sed9920d35fkryqkfl` (`transaccion_truck`),
  KEY `FK5l29luf3jfr1h4pbbja4ch006` (`ofertas_id`),
  CONSTRAINT `FK5l29luf3jfr1h4pbbja4ch006` FOREIGN KEY (`ofertas_id`) REFERENCES `ofertas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basculaparametro`
--

LOCK TABLES `basculaparametro` WRITE;
/*!40000 ALTER TABLE `basculaparametro` DISABLE KEYS */;
/*!40000 ALTER TABLE `basculaparametro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-13 21:02:23
