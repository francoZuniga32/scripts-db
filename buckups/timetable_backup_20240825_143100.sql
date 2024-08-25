-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: timetable
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB-1:11.3.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20240407211244-create-timetable.js'),('20240416021752-create-user.js'),('20240416104948-usuarioadmin.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Timetables`
--

DROP TABLE IF EXISTS `Timetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Timetables`
--

LOCK TABLES `Timetables` WRITE;
/*!40000 ALTER TABLE `Timetables` DISABLE KEYS */;
INSERT INTO `Timetables` VALUES (1,'Desarrollo Web - Matemática General','MONDAY','14:00:00','16:00:00',NULL,'2024-08-03 22:36:58','2024-08-03 22:36:58'),(2,'Desarrollo Web - Introducción a la Programación','MONDAY','18:00:00','22:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(3,'Desarrollo Web - Introducción a la Programación','TUESDAY','15:00:00','17:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(4,'Desarrollo Web - Matemática General','TUESDAY','18:00:00','22:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(5,'Desarrollo Web - Introducción a la Programación','WEDNESDAY','15:00:00','17:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(6,'Desarrollo Web - Arquitectura y Seguridad de Computadoras','THURSDAY','16:00:00','20:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(7,'Desarrollo Web - Programación Web Dinámica','THURSDAY','15:30:00','18:30:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(8,'Desarrollo Web - Framework e Interoperabilidad','FRIDAY','17:00:00','20:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(9,'Desarrollo Web - Trabajo Final Desarrollo Web','FRIDAY','15:30:00','20:00:00',NULL,'2024-08-03 22:38:09','2024-08-03 22:38:09'),(10,'Administración de Sistemas y Software Libre - Matemática General','MONDAY','14:00:00','16:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(11,'Administración de Sistemas y Software Libre - Matemática General','MONDAY','18:00:00','22:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(12,'Administración de Sistemas y Software Libre - Introducción a la Computación','TUESDAY','16:00:00','20:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(13,'Administración de Sistemas y Software Libre - Introducción a la Computación','WEDNESDAY','16:00:00','20:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(14,'Administración de Sistemas y Software Libre - Taller de Hardware y Software','THURSDAY','15:30:00','18:30:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(15,'Administración de Sistemas y Software Libre - Administración de Sistemas','THURSDAY','15:00:00','19:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(16,'Administración de Sistemas y Software Libre - Administración de Sistemas Avanzada','FRIDAY','16:00:00','20:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32'),(17,'Administración de Sistemas y Software Libre - Administración de Sistemas','FRIDAY','15:00:00','19:00:00',NULL,'2024-08-03 22:39:32','2024-08-03 22:39:32');
/*!40000 ALTER TABLE `Timetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usaurio` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','2024-04-16 10:53:27','2024-04-16 10:53:27');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `idCarrera` int(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `plan` varchar(250) NOT NULL,
  `duracion` int(10) NOT NULL,
  PRIMARY KEY (`idCarrera`),
  KEY `idCarrera` (`idCarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Profesorado en Informática','1185/13',4),(2,'Licenciatura en Ciencias de la Computación','1112/13',5),(3,'Licenciatura en Sistemas de Información','1420/2013',5),(4,'Tecnicatura Universitaria en Desarrollo Web','0885/2012',3),(5,'Tecnicatura Universitaria en Administración de Sistemas y Software Libre','0895/2012 ',3);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correlativa`
--

DROP TABLE IF EXISTS `correlativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correlativa` (
  `necesaria` int(11) NOT NULL,
  `disponible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correlativa`
--

LOCK TABLES `correlativa` WRITE;
/*!40000 ALTER TABLE `correlativa` DISABLE KEYS */;
INSERT INTO `correlativa` VALUES (1,5),(1,6),(2,6),(3,5),(4,7),(4,8),(4,9),(4,12),(5,8),(5,10),(5,11),(5,12),(6,9),(7,14),(8,14),(9,10),(9,12),(10,15),(11,0),(12,13),(13,0),(14,0),(15,0),(0,1),(0,2),(0,3),(0,4),(0,16),(0,17),(0,18),(0,19),(16,20),(16,21),(16,22),(17,20),(17,23),(18,23),(16,24),(19,28),(19,30),(18,28),(20,25),(20,26),(20,27),(20,29),(22,26),(22,27),(24,29),(25,30),(25,33),(25,36),(27,31),(27,32),(27,36),(28,34),(29,35),(26,37),(26,38),(26,39),(30,37),(32,37),(33,38),(33,39),(34,39),(31,40),(35,40),(26,41),(30,41),(26,42),(31,42),(34,42),(37,43),(39,44),(30,45),(38,45);
/*!40000 ALTER TABLE `correlativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imparte`
--

DROP TABLE IF EXISTS `imparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imparte` (
  `idCarrera` int(250) NOT NULL,
  `idMateria` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imparte`
--

LOCK TABLES `imparte` WRITE;
/*!40000 ALTER TABLE `imparte` DISABLE KEYS */;
INSERT INTO `imparte` VALUES (5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,37),(2,38),(2,39),(2,40),(2,41),(2,42),(2,43),(2,44),(2,45),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(3,31),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,40),(3,41),(3,42),(3,43),(3,44),(3,45),(2,51),(2,52),(2,53),(2,54),(3,51),(3,52),(3,53),(3,54),(4,89),(4,90),(4,91),(4,92),(4,93),(4,94),(4,95),(4,96),(4,97),(4,98),(4,99),(4,100),(4,101),(2,55),(2,56),(2,57),(2,58),(2,59),(2,60),(2,61),(2,62),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(3,71),(3,72),(3,73),(3,74),(3,75),(3,76),(3,77),(3,78),(3,79),(3,80),(3,81),(3,82),(3,83),(3,84),(3,85),(3,86),(3,87),(3,88),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,16),(1,17),(1,18),(1,19),(1,20),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,30),(1,31),(1,32),(1,33),(1,34),(1,37),(1,39),(1,43),(1,61),(1,115);
/*!40000 ALTER TABLE `imparte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `idMateria` int(250) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `ano` int(11) NOT NULL,
  `cuatrimestre` int(2) NOT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Introduccion a la Computacion',1,1),(2,'Matematica General',1,1),(3,'Ingles Tecnico',1,1),(4,'Introduccion a la Programacion',1,2),(5,'Introduccion a la Administracion de Sistemas',1,2),(6,'Redes de Datos',1,2),(7,'Software Libre',2,1),(8,'Taller de Hardware y Software',2,1),(9,'Administracion de Sistemas',2,1),(10,'Administracion de Servicios',2,2),(11,'Sistemas de Informacion',2,2),(12,'Automatizacion y Scrpting',2,2),(13,'Administracion de Sistemas Avanzada',3,1),(14,'Aplicaciones Libres',3,1),(15,'Electiva',3,1),(16,'Elementos de Algebra',1,1),(17,'Resolucion de Problemas y Algoritmos',1,1),(18,'Modelos y Sistemas de Informacion',1,1),(19,'Introduccion a la Computacion',1,1),(20,'Desarrollo de Algoritmos',1,2),(21,'Elementos de Algebra Lineal',1,2),(22,'Elementos de Teoria de la Computacion',1,2),(23,'Modelado de Datos',1,2),(24,'Cálculo Diferencial e Integral',2,1),(25,'Programacion Orientada a Objetos',2,1),(26,'Estructuras de Datos',2,1),(27,'Teoria de la Computacion I',2,1),(28,'Inglés Técnico I',2,1),(29,'Métodos Computacionales para el Cálculo',2,2),(30,'Programacion Concurrente',2,2),(31,'Teoria de la Computacion II',2,2),(32,'Arquitecturas y Organizacion de Computadoras I',2,2),(33,'Ingenieria de Requerimientos',2,2),(34,'Inglés Técnico II',2,2),(35,'Probabilidad y Estadistica',3,1),(36,'Principios de Lenguajes de Programacion',3,1),(37,'Sistemas Operativos I',3,1),(38,'Diseño de Bases de Datos',3,1),(39,'Arquitecturas de Software',3,1),(40,'Análisis de Algoritmos',3,2),(41,'Laboratorio de Programacion',3,2),(42,'Lógica para Ciencias de la Computacion',3,2),(43,'Redes de Computadoras I',3,2),(44,'Gestion de Proyectos de Desarrollo Software',3,2),(45,'Gestion de Bases de Datos',3,2),(51,'Sistemas Paralelos',4,1),(52,'Inteligencia Artificial LicCien ',4,2),(53,'Sistemas Inteligentes',5,1),(54,'Laboratorio de Programacion Distribuida',5,1),(55,'Lenguajes Declarativos',4,1),(56,'Complejidad Computacional',4,1),(57,'Especificacion de Software',4,1),(58,'Diseño de Algoritmos',4,2),(59,'Conceptos Avanzados de Lenguajes de Programacion',4,2),(60,'Especificación con Métodos Formales',4,2),(61,'Aspectos Profesionales y Sociales',4,2),(62,'Agentes Inteligentes para la Web',5,1),(63,'Diseño de Compiladores e Interpretes',5,1),(64,'Electiva I',5,1),(65,'Trabajo de Tesis',5,1),(66,'Laboratorio de Compiladores e Intérpretes',5,2),(67,'Laboratorio de Inteligencia Artificial',5,2),(68,'Tecnicas para Minería de Datos',5,2),(69,'Electiva II Según Electiva',5,2),(70,'Trabajo de Tesis',5,2),(71,'Planificacion y Control de Proyectos',4,1),(72,'Sistemas de Informacion I',4,1),(73,'Modelado de Procesos de Negocios',4,1),(74,'Especificacion de Requerimientos',4,1),(75,'Especificacion de Diseño de Software',4,2),(76,'Deposito y Mineria de Datos',4,2),(77,'Sistema de Informacion II',4,2),(78,'Laboratorio de Bases de Datos',4,2),(79,'Auditoria de Sistemas de Informacion',5,1),(80,'Verificacion y Validacion de Software',5,1),(81,'Electiva I',5,1),(82,'Trabajo Tesis I LicSis',5,1),(83,'Sistemas de Informacion para la Web',5,2),(84,'Aspectos Profecionales y Sociales',5,2),(85,'Reingenieria de Software y Procesos',5,2),(86,'Construccion y Validacion de Software',5,2),(87,'Electiva II',5,2),(88,'Trabajo Tesis II LicSis',5,2),(89,'Matematica General',1,1),(90,'Introduccion a la Programacion',1,1),(91,'Ingles Tecnico',1,1),(92,'Programacion Estatica y Laboratorio Web',1,2),(93,'Introduccion a la Programacion Orientada a Objetos',1,2),(94,'Conceptos de Bases de Datos',1,2),(95,'Programacion Web Dinamica',2,1),(96,'Arquitectura y Seguridad de Computadoras',2,1),(97,'Diseno Grafico',2,1),(98,'Programacion Web Avanzada',2,2),(99,'Analisis, Diseño y Documentacion de Sistemas',2,2),(100,'Framework e Interoperabilidad',3,1),(101,'Trabajo Final Tecnicatura en Desarrollo Web',3,1),(102,'Pedagogía',1,1),(103,'Psicología I',1,2),(104,'Didáctica General',2,2),(105,'Métodos Computacionales para el Cálculo',3,2),(106,'Tecnologías de la Información y Comunicación en la Educación',3,1),(107,'Psicología II',3,1),(108,'Laboratorio de Tecnologías de la Información y Comunicación en la Educación',3,2),(109,'Probabilidad y Estadística',4,1),(110,'Laboratorio de Sistemas Informáticos para Educación',4,1),(111,'Didáctica Específica',4,1),(112,'Política Educacional Argentina',4,1),(113,'Tópicos Avanzados en Ciencias de la Computación',4,2),(114,'Residencia',4,2),(115,'Diseño de Sistemas Informáticos para\r\nEducación',3,2);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-25 14:31:00
