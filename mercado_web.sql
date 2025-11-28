CREATE DATABASE  IF NOT EXISTS `mercado_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mercado_web`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mercado_web
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_Cliente` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Andrea','Gimenez','andrea.gimenez@email.com','555-1001'),(2,'Roberto','Perez','roberto.perez@email.com','555-1002'),(3,'Sofia','Martinez','sofia.martinez@email.com','555-1003'),(4,'Javier','Lopez','javier.lopez@email.com','555-1004'),(5,'Elena','Rodriguez','elena.rodriguez@email.com','555-1005'),(6,'Mario','Sanchez','mario.sanchez@email.com','555-1006'),(7,'Lucia','Fernandez','lucia.fernandez@email.com','555-1007'),(8,'David','Gomez','david.gomez@email.com','555-1008'),(9,'Pilar','Diaz','pilar.diaz@email.com','555-1009'),(10,'Carlos','Ruiz','carlos.ruiz@email.com','555-1010');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepedido`
--

DROP TABLE IF EXISTS `detallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallepedido` (
  `ID_Pedido` int NOT NULL,
  `ID_Producto` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_Pedido`,`ID_Producto`),
  KEY `ID_Producto` (`ID_Producto`),
  CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedidos` (`ID_Pedido`),
  CONSTRAINT `detallepedido_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepedido`
--

LOCK TABLES `detallepedido` WRITE;
/*!40000 ALTER TABLE `detallepedido` DISABLE KEYS */;
INSERT INTO `detallepedido` VALUES (1001,101,1,75.00),(1001,103,2,25.00),(1001,104,1,45.00),(1002,105,1,90.00),(1002,106,1,65.00),(1003,102,1,150.00),(1003,107,1,55.00),(1004,108,5,15.00),(1004,109,1,20.00),(1005,101,1,75.00),(1005,102,1,150.00),(1006,104,2,45.00),(1006,105,1,90.00),(1007,101,1,75.00),(1007,106,1,65.00),(1008,104,1,45.00),(1008,109,3,20.00),(1009,106,1,65.00),(1009,107,1,55.00),(1010,107,1,55.00),(1010,110,1,400.00),(1011,103,1,25.00),(1011,108,1,15.00),(1011,109,1,20.00),(1012,101,1,75.00),(1012,109,1,20.00),(1013,103,1,25.00),(1013,105,2,90.00),(1014,105,1,90.00),(1014,108,10,15.00),(1015,101,1,75.00),(1015,102,1,150.00),(1016,102,1,150.00),(1016,104,1,45.00),(1017,104,1,45.00),(1017,106,1,65.00),(1018,106,1,65.00),(1018,107,2,55.00),(1019,103,5,25.00),(1019,107,1,55.00),(1020,103,1,25.00),(1020,110,1,400.00),(1021,101,2,75.00),(1021,108,1,15.00),(1022,105,1,90.00),(1022,109,1,20.00),(1023,102,1,150.00),(1023,105,1,90.00),(1024,101,1,75.00),(1024,108,3,15.00),(1025,102,1,150.00),(1025,104,1,45.00),(1026,104,1,45.00),(1026,106,2,65.00),(1027,106,1,65.00),(1027,107,1,55.00),(1028,103,1,25.00),(1028,107,1,55.00),(1029,108,1,15.00),(1029,110,1,400.00),(1030,101,1,75.00),(1030,109,1,20.00),(1031,103,1,25.00),(1031,105,1,90.00),(1031,108,2,15.00),(1032,102,1,150.00),(1032,105,1,90.00),(1033,101,1,75.00),(1033,104,1,45.00),(1034,102,1,150.00),(1034,106,1,65.00),(1035,104,1,45.00),(1035,107,3,55.00),(1036,103,1,25.00),(1036,106,1,65.00),(1037,107,1,55.00),(1037,110,1,400.00),(1038,101,1,75.00),(1038,108,1,15.00),(1038,109,2,20.00),(1039,105,1,90.00),(1039,109,1,20.00),(1040,102,1,150.00),(1040,103,1,25.00),(1041,105,1,90.00),(1041,108,4,15.00),(1042,101,1,75.00),(1042,104,1,45.00),(1043,102,1,150.00),(1043,106,1,65.00),(1044,104,1,45.00),(1044,107,1,55.00),(1045,103,1,25.00),(1045,106,1,65.00),(1046,107,1,55.00),(1047,108,1,15.00),(1048,109,1,20.00),(1049,103,1,25.00),(1050,105,1,90.00);
/*!40000 ALTER TABLE `detallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `ID_Pedido` int NOT NULL,
  `ID_Cliente` int NOT NULL,
  `Fecha_Pedido` date NOT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`),
  KEY `ID_Cliente` (`ID_Cliente`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1001,1,'2025-10-01',0.00),(1002,1,'2025-10-05',0.00),(1003,1,'2025-10-10',0.00),(1004,1,'2025-10-15',0.00),(1005,1,'2025-10-20',0.00),(1006,2,'2025-10-02',0.00),(1007,2,'2025-10-08',0.00),(1008,2,'2025-10-14',0.00),(1009,2,'2025-10-22',0.00),(1010,2,'2025-10-28',0.00),(1011,3,'2025-10-03',0.00),(1012,3,'2025-10-11',0.00),(1013,3,'2025-10-19',0.00),(1014,3,'2025-10-27',0.00),(1015,3,'2025-11-01',0.00),(1016,4,'2025-10-04',0.00),(1017,4,'2025-10-13',0.00),(1018,4,'2025-10-21',0.00),(1019,4,'2025-10-29',0.00),(1020,4,'2025-11-03',0.00),(1021,5,'2025-10-06',0.00),(1022,5,'2025-10-16',0.00),(1023,5,'2025-10-25',0.00),(1024,5,'2025-11-04',0.00),(1025,5,'2025-11-10',0.00),(1026,6,'2025-10-07',0.00),(1027,6,'2025-10-17',0.00),(1028,6,'2025-10-26',0.00),(1029,6,'2025-11-05',0.00),(1030,6,'2025-11-11',0.00),(1031,7,'2025-10-09',0.00),(1032,7,'2025-10-18',0.00),(1033,7,'2025-10-30',0.00),(1034,7,'2025-11-06',0.00),(1035,7,'2025-11-12',0.00),(1036,8,'2025-10-12',0.00),(1037,8,'2025-10-23',0.00),(1038,8,'2025-10-31',0.00),(1039,8,'2025-11-07',0.00),(1040,8,'2025-11-13',0.00),(1041,9,'2025-10-14',0.00),(1042,9,'2025-10-24',0.00),(1043,9,'2025-11-02',0.00),(1044,9,'2025-11-08',0.00),(1045,9,'2025-11-14',0.00),(1046,10,'2025-10-15',0.00),(1047,10,'2025-10-25',0.00),(1048,10,'2025-11-03',0.00),(1049,10,'2025-11-09',0.00),(1050,10,'2025-11-15',0.00);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `ID_Producto` int NOT NULL,
  `Nombre_Producto` varchar(100) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Stock` int DEFAULT '0',
  PRIMARY KEY (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (101,'Teclado Mecánico',75.00,50),(102,'Monitor LED 24\"',150.00,30),(103,'Mouse Inalámbrico',25.00,100),(104,'Webcam HD',45.00,60),(105,'Disco Duro SSD 1TB',90.00,40),(106,'Router Wi-Fi 6',65.00,75),(107,'Audífonos Gaming',55.00,80),(108,'Cable HDMI 2m',15.00,200),(109,'Hub USB 3.0',20.00,150),(110,'Tarjeta Gráfica RTX 3060',400.00,20);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-27 23:59:36
