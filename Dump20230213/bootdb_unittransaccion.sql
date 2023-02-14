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
-- Table structure for table `unittransaccion`
--

DROP TABLE IF EXISTS `unittransaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unittransaccion` (
  `id` bigint NOT NULL,
  `ack_campo` bit(1) NOT NULL,
  `id_tenomdec` bigint NOT NULL,
  `id_userfactory` bigint NOT NULL,
  `id_userfarmer` bigint NOT NULL,
  `idtransaccion` bigint NOT NULL,
  `reject_campo` bit(1) NOT NULL,
  `transacciuuid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittransaccion`
--

LOCK TABLES `unittransaccion` WRITE;
/*!40000 ALTER TABLE `unittransaccion` DISABLE KEYS */;
INSERT INTO `unittransaccion` VALUES (13,_binary '\0',3,5,5,12,_binary '\0','ceb4b0b8-0354-4d01-9c57-828843161e27'),(15,_binary '\0',7,5,5,12,_binary '\0','ceb4b0b8-0354-4d01-9c57-828843161e27'),(16,_binary '\0',7,5,5,14,_binary '\0','bbb50a2e-1bd1-4ecb-892c-7b65587936f4'),(18,_binary '\0',3,2,2,17,_binary '\0','06f2c9f5-0ee5-44b9-9677-24b3f0106d77'),(20,_binary '\0',7,2,2,17,_binary '\0','06f2c9f5-0ee5-44b9-9677-24b3f0106d77'),(21,_binary '\0',7,2,2,19,_binary '\0','81ea04b6-9e39-4b84-b15f-4be3455bd904');
/*!40000 ALTER TABLE `unittransaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-13 21:02:22
