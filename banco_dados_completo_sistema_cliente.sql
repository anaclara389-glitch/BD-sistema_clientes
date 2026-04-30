CREATE DATABASE  IF NOT EXISTS "SISTEMA_CLIENTES" /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `SISTEMA_CLIENTES`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: mysql-1c959a5e-estudante-af5b.h.aivencloud.com    Database: SISTEMA_CLIENTES
-- ------------------------------------------------------
-- Server version	8.0.45

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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '513e8229-3e7c-11f1-bb3e-d273ac50cb07:1-83,
582db60a-43f4-11f1-8342-b6dd073b6bc1:1-91';

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `email_cliente` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email_cliente` (`email_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (1,'Joao matosso','joao@gmeil.com'),(2,'Jorge matosso','jorge@gmail.com');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ITEM_VENDA`
--

DROP TABLE IF EXISTS `ITEM_VENDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEM_VENDA` (
  `id_venda` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade_item` int NOT NULL,
  `preco_unitario` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_venda`,`id_produto`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `ITEM_VENDA_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `VENDA` (`id_venda`),
  CONSTRAINT `ITEM_VENDA_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `PRODUTO` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEM_VENDA`
--

LOCK TABLES `ITEM_VENDA` WRITE;
/*!40000 ALTER TABLE `ITEM_VENDA` DISABLE KEYS */;
INSERT INTO `ITEM_VENDA` VALUES (1,2,23,56.00),(2,3,44,16.75);
/*!40000 ALTER TABLE `ITEM_VENDA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUTO`
--

DROP TABLE IF EXISTS `PRODUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUTO` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) NOT NULL,
  `preco_produto` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUTO`
--

LOCK TABLES `PRODUTO` WRITE;
/*!40000 ALTER TABLE `PRODUTO` DISABLE KEYS */;
INSERT INTO `PRODUTO` VALUES (1,'Batom',56.00),(2,'Pao',16.75);
/*!40000 ALTER TABLE `PRODUTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDA`
--

DROP TABLE IF EXISTS `VENDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDA` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `data_venda` date NOT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `VENDA_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `CLIENTE` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDA`
--

LOCK TABLES `VENDA` WRITE;
/*!40000 ALTER TABLE `VENDA` DISABLE KEYS */;
INSERT INTO `VENDA` VALUES (1,'2025-01-01',1),(2,'2024-05-05',2);
/*!40000 ALTER TABLE `VENDA` ENABLE KEYS */;
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

-- Dump completed on 2026-04-29 21:33:00
