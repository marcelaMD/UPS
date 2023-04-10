CREATE DATABASE  IF NOT EXISTS `parqueadero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `parqueadero`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: parqueadero
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
-- Table structure for table `reservas_anticipadas`
--

DROP TABLE IF EXISTS `reservas_anticipadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_anticipadas` (
  `id_reserva` int NOT NULL,
  `fecha_hora_inicio` datetime NOT NULL,
  `fecha_hora_reserva` datetime NOT NULL,
  `estado_reserva` varchar(30) NOT NULL,
  `id_usuario` int NOT NULL,
  `id_vehiculo` int NOT NULL,
  `id_espacio_estacionamiento` int NOT NULL,
  `fecha_hora_salida` datetime NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `reservas_anticipadas_ibfk_1` (`id_usuario`),
  KEY `reservas_anticipadas_ibfk_2` (`id_vehiculo`),
  KEY `reservas_anticipadas_ibfk_3` (`id_espacio_estacionamiento`),
  CONSTRAINT `reservas_anticipadas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `reservas_anticipadas_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`),
  CONSTRAINT `reservas_anticipadas_ibfk_3` FOREIGN KEY (`id_espacio_estacionamiento`) REFERENCES `espacio_de_estacionamiento` (`id_espacio_estacionamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_anticipadas`
--

LOCK TABLES `reservas_anticipadas` WRITE;
/*!40000 ALTER TABLE `reservas_anticipadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas_anticipadas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 17:41:35
