CREATE DATABASE  IF NOT EXISTS `bd_clubdeportivo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_clubdeportivo`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_clubdeportivo
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `cod_uniforme` int NOT NULL,
  `distintos_colores` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_uniforme`),
  CONSTRAINT `fkuniforme2` FOREIGN KEY (`cod_uniforme`) REFERENCES `uniforme` (`cod_uniforme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Negro'),(2,'Blanco'),(3,'Rojo'),(4,'Azul'),(5,'Amarillo');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competicion`
--

DROP TABLE IF EXISTS `competicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competicion` (
  `cod_competicion` int NOT NULL AUTO_INCREMENT,
  `nombre_competicion` varchar(20) NOT NULL,
  `ciudad_competicion` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_competicion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competicion`
--

LOCK TABLES `competicion` WRITE;
/*!40000 ALTER TABLE `competicion` DISABLE KEYS */;
INSERT INTO `competicion` VALUES (1,'CocacolaCUP','Miami'),(2,'GolosoCUMCUP','Barcelona'),(3,'SIUUUCUP','Las Palmas'),(4,'MamapingaCUM','Zaragoza'),(5,'OrchataCampion','Sevilla');
/*!40000 ALTER TABLE `competicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenador`
--

DROP TABLE IF EXISTS `entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrenador` (
  `id_entrenador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  PRIMARY KEY (`id_entrenador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenador`
--

LOCK TABLES `entrenador` WRITE;
/*!40000 ALTER TABLE `entrenador` DISABLE KEYS */;
INSERT INTO `entrenador` VALUES (1,'Mourinho','Perez','2001-01-17','Portugueza','42649687O'),(2,'Vicente','Del Bosque','1980-07-21','Española','42311856P'),(3,'Lionel','Messi','1997-05-14','Argentina ','42678821N'),(4,'Arturo','Huevosduros','1999-11-01','Colombiana','54173380P'),(5,'Paul','Koki','1996-10-03','Pakistani','42335566F');
/*!40000 ALTER TABLE `entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `id_estadio` int NOT NULL AUTO_INCREMENT,
  `localizacion` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `fecha_apertura` date NOT NULL,
  PRIMARY KEY (`id_estadio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'Cuba','CocoStadium','2001-01-01'),(2,'Argentina','Bombonera','1950-03-18'),(3,'Italia','Pizza','1800-03-20'),(4,'Alemania','Stalin','1952-05-27'),(5,'Japon','Kioto','1999-06-06');
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `id_preparador` int NOT NULL,
  `id_entrenador` int NOT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `fkpreparador1` (`id_preparador`),
  KEY `fkentrenador1` (`id_entrenador`),
  CONSTRAINT `fkentrenador1` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenador` (`id_entrenador`),
  CONSTRAINT `fkpreparador1` FOREIGN KEY (`id_preparador`) REFERENCES `preparador_fisico` (`id_preparador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Ismael','Cabrera','2000-10-10','Española','54372890G',1,1),(2,'Gabriel','Garcia','1999-12-01','Española','78908765T',2,2),(3,'Pablo','Perez','1990-05-04','Española','98765436G',3,3),(4,'Josue','Martinez','2001-06-02','Española','09680869P',4,4),(5,'JJ','Hernandez','1998-08-12','Española','6759876J',5,5);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador_competicion`
--

DROP TABLE IF EXISTS `jugador_competicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador_competicion` (
  `id_jugador` int NOT NULL,
  `cod_competicion` int NOT NULL,
  PRIMARY KEY (`id_jugador`,`cod_competicion`),
  KEY `fkcompeticion1` (`cod_competicion`),
  CONSTRAINT `fkcompeticion1` FOREIGN KEY (`cod_competicion`) REFERENCES `competicion` (`cod_competicion`),
  CONSTRAINT `fkjugador2` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador_competicion`
--

LOCK TABLES `jugador_competicion` WRITE;
/*!40000 ALTER TABLE `jugador_competicion` DISABLE KEYS */;
INSERT INTO `jugador_competicion` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `jugador_competicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador_estadio`
--

DROP TABLE IF EXISTS `jugador_estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador_estadio` (
  `id_jugador` int NOT NULL,
  `id_estadio` int NOT NULL,
  PRIMARY KEY (`id_jugador`,`id_estadio`),
  KEY `fkestadio1` (`id_estadio`),
  CONSTRAINT `fkestadio1` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estadio`),
  CONSTRAINT `fkjugador1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador_estadio`
--

LOCK TABLES `jugador_estadio` WRITE;
/*!40000 ALTER TABLE `jugador_estadio` DISABLE KEYS */;
INSERT INTO `jugador_estadio` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `jugador_estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocinadores`
--

DROP TABLE IF EXISTS `patrocinadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrocinadores` (
  `cod_patrocinador` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(20) NOT NULL,
  `cod_uniforme` int NOT NULL,
  PRIMARY KEY (`cod_patrocinador`),
  KEY `fkuniforme1` (`cod_uniforme`),
  CONSTRAINT `fkuniforme1` FOREIGN KEY (`cod_uniforme`) REFERENCES `uniforme` (`cod_uniforme`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocinadores`
--

LOCK TABLES `patrocinadores` WRITE;
/*!40000 ALTER TABLE `patrocinadores` DISABLE KEYS */;
INSERT INTO `patrocinadores` VALUES (1,'Adidas',1),(2,'Nike',2),(3,'Puma',3),(4,'Tropical',4),(5,'MSI',5);
/*!40000 ALTER TABLE `patrocinadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preparador_fisico`
--

DROP TABLE IF EXISTS `preparador_fisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preparador_fisico` (
  `id_preparador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  PRIMARY KEY (`id_preparador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preparador_fisico`
--

LOCK TABLES `preparador_fisico` WRITE;
/*!40000 ALTER TABLE `preparador_fisico` DISABLE KEYS */;
INSERT INTO `preparador_fisico` VALUES (1,'Koki','Koki','1992-02-02','Maroe','45373050H'),(2,'Kuki','Kuki','1889-07-05','Nigeriana','47894372V'),(3,'Koku','Koku','2000-01-23','Chilena','23456789Z'),(4,'federico','ojosclaro','1990-01-30','Española','64789765N'),(5,'Ricardo','nose','1999-12-14','Española','546789012K');
/*!40000 ALTER TABLE `preparador_fisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidente`
--

DROP TABLE IF EXISTS `presidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presidente` (
  `id_presidente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `id_entrenador` int NOT NULL,
  PRIMARY KEY (`id_presidente`),
  KEY `fkentrenador2` (`id_entrenador`),
  CONSTRAINT `fkentrenador2` FOREIGN KEY (`id_entrenador`) REFERENCES `entrenador` (`id_entrenador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidente`
--

LOCK TABLES `presidente` WRITE;
/*!40000 ALTER TABLE `presidente` DISABLE KEYS */;
INSERT INTO `presidente` VALUES (1,'Luis','Lorenzo','1970-12-15','Chilena','81234778N',1),(2,'Azael','Garcia','1980-11-20','Española','94127845K',2),(3,'Yeray','Perez','1990-03-04','Española','09876543Y',3),(4,'Ayaya','Garcia','1999-10-02','Española','67895467H',4),(5,'Juan','Jimenez','1988-12-01','Española','89265478D',5);
/*!40000 ALTER TABLE `presidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniforme`
--

DROP TABLE IF EXISTS `uniforme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uniforme` (
  `cod_uniforme` int NOT NULL AUTO_INCREMENT,
  `diseno` varchar(20) NOT NULL,
  `num_jugador` int NOT NULL,
  `id_jugador` int NOT NULL,
  PRIMARY KEY (`cod_uniforme`),
  KEY `fkjugador3` (`id_jugador`),
  CONSTRAINT `fkjugador3` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniforme`
--

LOCK TABLES `uniforme` WRITE;
/*!40000 ALTER TABLE `uniforme` DISABLE KEYS */;
INSERT INTO `uniforme` VALUES (1,'Clasico',1,1),(2,'Abstracto',2,2),(3,'Mezcla',3,3),(4,'Clasico',4,4),(5,'Abstracto',5,5);
/*!40000 ALTER TABLE `uniforme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_clubdeportivo'
--

--
-- Dumping routines for database 'bd_clubdeportivo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-13 17:03:57
