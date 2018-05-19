-- MySQL dump 10.13  Distrib 8.0.11, for Linux (x86_64)
--
-- Host: localhost    Database: academico
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estudiante` (
  `idPersona` int(11) NOT NULL,
  `codigo` varchar(15) NOT NULL,
  PRIMARY KEY (`idPersona`,`codigo`),
  CONSTRAINT `FKPersona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'142350'),(2,'142304'),(3,'142258'),(4,'142212'),(5,'142166'),(6,'142120'),(7,'142074'),(8,'141982');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) NOT NULL,
  `paterno` varchar(30) NOT NULL,
  `materno` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'12345678','Perez','Castillo','Juan Carlos','1985-06-23','',''),(2,'12345679','Paredes','Quispe','José Carlos','1990-01-08','',''),(3,'12345670','Mamani','Quispe','Juana María','1998-05-12','',''),(4,'42564835','Mamani','Quispe','Ruth Josefa','1993-11-18','',''),(5,'41657898','Jahuira','Paredes','Esmeralda','1992-12-30','',''),(6,'85326564','Zavala','Quispe','Juan Pedro','1993-10-29','',''),(7,'82326564','Mamani','Paredes','María Elena','1999-10-29','',''),(8,'84326164','Paredes','Quispe','Eleuterio','1997-10-21','','');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17 23:29:18
