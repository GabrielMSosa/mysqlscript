USE `bootdb`;
-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: blo1bhe3djhltozlc8be-mysql.services.clever-cloud.com    Database: blo1bhe3djhltozlc8be
-- ------------------------------------------------------
-- Server version	8.0.15-5

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'f41d366d-91e5-11e9-8525-cecd028ee826:1-125512459';

--
-- Table structure for table `basculaparametro`
--

DROP TABLE IF EXISTS `basculaparametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basculaparametro` (
  `id` bigint(20) NOT NULL,
  `ack_carrier` varchar(255) NOT NULL,
  `brand_camion` varchar(255) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_truck` varchar(255) NOT NULL,
  `name_carrier` varchar(255) NOT NULL,
  `quantity_water` float NOT NULL,
  `transaccion_truck` binary(255) NOT NULL,
  `weigh_truck_in` float NOT NULL,
  `weigh_truck_out` float NOT NULL,
  `ofertas_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_itep2n5sed9920d35fkryqkfl` (`transaccion_truck`),
  KEY `FK5l29luf3jfr1h4pbbja4ch006` (`ofertas_id`),
  CONSTRAINT `FK5l29luf3jfr1h4pbbja4ch006` FOREIGN KEY (`ofertas_id`) REFERENCES `ofertas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basculaparametro`
--

LOCK TABLES `basculaparametro` WRITE;
/*!40000 ALTER TABLE `basculaparametro` DISABLE KEYS */;
/*!40000 ALTER TABLE `basculaparametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `children` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `router_link` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `children_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgdwm9uddno2ledkpvpjuo0n8w` (`children_id`),
  CONSTRAINT `FKgdwm9uddno2ledkpvpjuo0n8w` FOREIGN KEY (`children_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `children`
--

LOCK TABLES `children` WRITE;
/*!40000 ALTER TABLE `children` DISABLE KEYS */;
/*!40000 ALTER TABLE `children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datauser_campo`
--

DROP TABLE IF EXISTS `datauser_campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datauser_campo` (
  `id` bigint(20) NOT NULL,
  `fecha_creacion` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datauser_campo`
--

LOCK TABLES `datauser_campo` WRITE;
/*!40000 ALTER TABLE `datauser_campo` DISABLE KEYS */;
INSERT INTO `datauser_campo` VALUES (46,'13-01-2023','3755273161','Campo de pedrosky pedrosky');
/*!40000 ALTER TABLE `datauser_campo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datouser_factory`
--

DROP TABLE IF EXISTS `datouser_factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datouser_factory` (
  `id` bigint(20) NOT NULL,
  `fecha_creacion` varchar(200) NOT NULL,
  `name_company` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datouser_factory`
--

LOCK TABLES `datouser_factory` WRITE;
/*!40000 ALTER TABLE `datouser_factory` DISABLE KEYS */;
INSERT INTO `datouser_factory` VALUES (47,'27-01-2023','MiSecadero S.A.','3755273161'),(52,'17-02-2023','gabriel11return S.A.','3755273161');
/*!40000 ALTER TABLE `datouser_factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (95),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchiduserkvs`
--

DROP TABLE IF EXISTS `matchiduserkvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matchiduserkvs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pkdata` bigint(20) NOT NULL,
  `pkuser` bigint(20) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchiduserkvs`
--

LOCK TABLES `matchiduserkvs` WRITE;
/*!40000 ALTER TABLE `matchiduserkvs` DISABLE KEYS */;
INSERT INTO `matchiduserkvs` VALUES (1,46,1,'Propietario de Campo'),(2,47,2,'Propietario de Secadero'),(3,52,3,'Propietario de Secadero');
/*!40000 ALTER TABLE `matchiduserkvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `router_link` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'people','/secadero','Comprar TÃ©'),(2,'supervised_user_circle','/sellte','Vender Te'),(3,'inventory_2','/formfarm','Declarar'),(4,'local_shipping','/mispendientes','Para enviar'),(5,'receipt','/mispedidos','Mis pedidos'),(6,'calculate','/calculate','Sales'),(7,'analytics','/reports','Report'),(8,'no_crash','/addtruck','Mis transportes');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytruck`
--

DROP TABLE IF EXISTS `mytruck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mytruck` (
  `id` bigint(20) NOT NULL,
  `brand_camion` varchar(255) NOT NULL,
  `id_truck` varchar(255) NOT NULL,
  `name_carrier` varchar(255) NOT NULL,
  `quantity_water` float NOT NULL,
  `weigh_truck_in` float NOT NULL,
  `weigh_truck_out` float NOT NULL,
  `transaccion_te_id` bigint(20) DEFAULT NULL,
  `mytrucks_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK39jls9xcbfuuwcy0rpqpvv0o` (`transaccion_te_id`),
  KEY `FKtk1kxnubop03wcl5be816mi99` (`mytrucks_id`),
  CONSTRAINT `FK39jls9xcbfuuwcy0rpqpvv0o` FOREIGN KEY (`transaccion_te_id`) REFERENCES `transaccion_te` (`id`),
  CONSTRAINT `FKtk1kxnubop03wcl5be816mi99` FOREIGN KEY (`mytrucks_id`) REFERENCES `tenomdec` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytruck`
--

LOCK TABLES `mytruck` WRITE;
/*!40000 ALTER TABLE `mytruck` DISABLE KEYS */;
/*!40000 ALTER TABLE `mytruck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertas` (
  `id` bigint(20) NOT NULL,
  `data_receiving_first` datetime NOT NULL,
  `data_receiving_last` datetime NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nombre_campo` varchar(255) NOT NULL,
  `te_verde_certificado` float NOT NULL,
  `te_verde_no_certificado` float NOT NULL,
  `te_verde_palo` float NOT NULL,
  `datouser_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9e1h5s3erwyp75cb5dlgp7asn` (`datouser_id`),
  CONSTRAINT `FK9e1h5s3erwyp75cb5dlgp7asn` FOREIGN KEY (`datouser_id`) REFERENCES `datouser_factory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_MODERATOR'),(3,'ROLE_ADMIN'),(4,'ROLE_FACTORY'),(5,'ROLE_PROPIETARIOS');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenomdec`
--

DROP TABLE IF EXISTS `tenomdec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenomdec` (
  `id` bigint(20) NOT NULL,
  `cant_te_certificado_nominal` float NOT NULL,
  `cant_te_palo_nominal` float NOT NULL,
  `cant_te_sin_certificado_nominal` float NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nombrecampo` varchar(200) NOT NULL,
  `datausercampo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKidc8mry7oc0cpmtyypi7wg8es` (`datausercampo_id`),
  CONSTRAINT `FKidc8mry7oc0cpmtyypi7wg8es` FOREIGN KEY (`datausercampo_id`) REFERENCES `datauser_campo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenomdec`
--

LOCK TABLES `tenomdec` WRITE;
/*!40000 ALTER TABLE `tenomdec` DISABLE KEYS */;
INSERT INTO `tenomdec` VALUES (48,70000,200000,170000,1,'Campo de pedrosky pedrosky',46);
/*!40000 ALTER TABLE `tenomdec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion_te`
--

DROP TABLE IF EXISTS `transaccion_te`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaccion_te` (
  `id` bigint(20) NOT NULL,
  `cant_te_certi_nominal_now` float NOT NULL,
  `cant_te_no_certi_nominal_now` float NOT NULL,
  `data_delivery_first` varchar(200) NOT NULL,
  `data_delivery_last` varchar(200) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `transacc_id` binary(255) NOT NULL,
  `transaccion_te_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tcr2qx9airutanw130ft77ewg` (`transacc_id`),
  KEY `FKp5ty7x4u5saah141sut5v7my8` (`transaccion_te_id`),
  CONSTRAINT `FKp5ty7x4u5saah141sut5v7my8` FOREIGN KEY (`transaccion_te_id`) REFERENCES `tenomdec` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion_te`
--

LOCK TABLES `transaccion_te` WRITE;
/*!40000 ALTER TABLE `transaccion_te` DISABLE KEYS */;
INSERT INTO `transaccion_te` VALUES (50,0,30000,'26-01-2023','28-02-2023',2,_binary '\"\ZU¯iO©$\È\ßzµ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL),(53,30000,0,'17-01-2023','27-01-2023',3,_binary '(sú\ÜM³kÛ:\Â/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL);
/*!40000 ALTER TABLE `transaccion_te` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_trans_transacc_te`
--

DROP TABLE IF EXISTS `unit_trans_transacc_te`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_trans_transacc_te` (
  `id` bigint(20) NOT NULL,
  `transate_id` bigint(20) DEFAULT NULL,
  `unittrans_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgj38ivj55msbumaiywxdmsn6q` (`transate_id`),
  KEY `FK6vdcni7ybk1tm2wbqg5t6eqif` (`unittrans_id`),
  CONSTRAINT `FK6vdcni7ybk1tm2wbqg5t6eqif` FOREIGN KEY (`unittrans_id`) REFERENCES `unittransaccion` (`id`),
  CONSTRAINT `FKgj38ivj55msbumaiywxdmsn6q` FOREIGN KEY (`transate_id`) REFERENCES `transaccion_te` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_trans_transacc_te`
--

LOCK TABLES `unit_trans_transacc_te` WRITE;
/*!40000 ALTER TABLE `unit_trans_transacc_te` DISABLE KEYS */;
INSERT INTO `unit_trans_transacc_te` VALUES (58,50,59),(60,53,61);
/*!40000 ALTER TABLE `unit_trans_transacc_te` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittransaccion`
--

DROP TABLE IF EXISTS `unittransaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unittransaccion` (
  `id` bigint(20) NOT NULL,
  `ack_campo` bit(1) NOT NULL,
  `id_tenomdec` bigint(20) NOT NULL,
  `id_userfactory` bigint(20) NOT NULL,
  `id_userfarmer` bigint(20) NOT NULL,
  `idtransaccion` bigint(20) NOT NULL,
  `reject_campo` bit(1) NOT NULL,
  `transacciuuid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittransaccion`
--

LOCK TABLES `unittransaccion` WRITE;
/*!40000 ALTER TABLE `unittransaccion` DISABLE KEYS */;
INSERT INTO `unittransaccion` VALUES (51,_binary '\0',48,2,2,50,_binary '\0','221a0855-af69-4fa9-8a24-c8df057a80b5'),(54,_binary '\0',48,3,3,53,_binary '\0','2873fa8e-9bdc-4db3-806b-db873ac22f9e'),(59,_binary '',48,2,1,50,_binary '\0','221a0855-af69-4fa9-8a24-c8df057a80b5'),(61,_binary '',48,3,1,53,_binary '\0','2873fa8e-9bdc-4db3-806b-db873ac22f9e');
/*!40000 ALTER TABLE `unittransaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,4),(3,4),(1,5);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pedrosky@gmail.com','$2a$10$16RVlzNdJ72vQuZanAixLeRzXlT0QkVU4Vs5Ebi3Iqxijvcn7jDEu','pedrosky','0000-00-00 00:00:00'),(2,'sosa2008@gmail.com','$2a$10$OrnwjDRorkPcvuyaYBjJX.K5WS4DRnexdbYks67ZEl1lBRyUmNV1.','sosa2008','0000-00-00 00:00:00'),(3,'sosagabriel11@gmail.com','$2a$10$74MzeV88tU308w2DQgf9Ke04S16kd/7KtUIlEGBmwmT.AskFSgexG','gabriel11return','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-07  2:11:25
