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
-- Table structure for table `mytruck`
--

DROP TABLE IF EXISTS `mytruck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mytruck` (
  `id` bigint NOT NULL,
  `brand_camion` varchar(255) NOT NULL,
  `id_truck` varchar(255) NOT NULL,
  `name_carrier` varchar(255) NOT NULL,
  `quantity_water` float NOT NULL,
  `weigh_truck_in` float NOT NULL,
  `weigh_truck_out` float NOT NULL,
  `transaccion_te_id` bigint DEFAULT NULL,
  `mytrucks_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK39jls9xcbfuuwcy0rpqpvv0o` (`transaccion_te_id`),
  KEY `FKtk1kxnubop03wcl5be816mi99` (`mytrucks_id`),
  CONSTRAINT `FK39jls9xcbfuuwcy0rpqpvv0o` FOREIGN KEY (`transaccion_te_id`) REFERENCES `transaccion_te` (`id`),
  CONSTRAINT `FKtk1kxnubop03wcl5be816mi99` FOREIGN KEY (`mytrucks_id`) REFERENCES `tenomdec` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytruck`
--

LOCK TABLES `mytruck` WRITE;
/*!40000 ALTER TABLE `mytruck` DISABLE KEYS */;
INSERT INTO `mytruck` VALUES (5,'scania','ack-323','gabriel sosa',1,1,1,NULL,3),(9,'volvo','abc-323','penicho',1,1,1,NULL,7);
/*!40000 ALTER TABLE `mytruck` ENABLE KEYS */;
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
