-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: quizm8db
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `pregunta` varchar(255) DEFAULT NULL COMMENT 'content',
  `respuesta1` varchar(255) DEFAULT NULL COMMENT 'content',
  `respuesta2` varchar(255) DEFAULT NULL COMMENT 'content',
  `respuesta3` varchar(255) DEFAULT NULL COMMENT 'content',
  `respuesta4` varchar(255) DEFAULT NULL COMMENT 'content',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='newTable';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'¿Que juego de la serie Souls salió primero?','Demon\'s Souls','Dark Souls','Bloodborne','Sekiro'),(2,'¿Quién es el protagonista en Metal Gear Solid 3?','The Boss','Solid Snake','Revolver Ocelot','Big Boss'),(3,'¿Quién dice que no tienes doncella en Elden Ring?','Ranni la Bruja','Varré','Godrick','Solaire'),(4,'¿Quién es protagonista en la saga Metroid?','Samus Aran','Ridley','Metroid','Mother Brain'),(5,'¿En la saga Warcraft, quién se acaba convirtiendo en el Rey Lich?','Kael\'Thas','Kel\'Thuzad','Arthas Menethil','Illidan Stormrage'),(6,'¿De quién es hijo Alucard en Castlevania Symphony of the Night?','Belen Esteban','Socrates','La muerte','Dracula'),(7,'¿Cual de estos juegos no es de orígen ruso?','World of Tanks','Halo','Star Conflict','War Thunder'),(8,'¿Cual es el principal villano del juego Persona 2?','Adolf Hitler','Oda Nobunaga','Demiurgo','YHVH'),(9,'¿En la saga Super Mario Brothers, qué poder te permite volar?','Mapache','Sombrero Alado','Capa dorada','Todas son correctas'),(10,'¿En que Final Fantasy te enfrentas a Golbez?','FFV','FFII','FFXIII','FFIV');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 15:32:47
