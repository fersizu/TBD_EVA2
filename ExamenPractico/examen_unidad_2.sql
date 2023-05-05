-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `numero_cuarto` int NOT NULL,
  `inicio_estadia` date NOT NULL,
  `fin_estadia` date DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `paciente_id` (`paciente_id`),
  CONSTRAINT `cuartos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,1,121,'2017-04-10','2017-04-17'),(2,2,190,'2017-04-11','2017-04-13'),(3,3,108,'2017-04-12','2017-04-17'),(4,4,179,'2017-04-13','2017-04-18'),(5,5,158,'2017-04-14','2017-04-17'),(6,6,183,'2017-04-15','2017-04-16'),(7,7,142,'2017-04-16','2017-04-23'),(8,8,108,'2017-04-17','2017-04-24'),(9,9,100,'2017-04-18','2017-04-23'),(10,10,109,'2017-04-19','2017-04-24'),(11,11,116,'2017-04-20','2017-04-23'),(12,12,182,'2017-04-21','2017-04-24'),(13,13,180,'2017-04-22','2017-04-28'),(14,14,188,'2017-04-23','2017-04-25'),(15,15,173,'2017-04-24','2017-05-01'),(16,16,176,'2017-04-25','2017-04-30'),(17,17,122,'2017-04-26','2017-04-27'),(18,18,155,'2017-04-27','2017-05-07'),(19,19,181,'2017-04-28','2017-04-30'),(20,20,178,'2017-04-29','2017-05-05'),(21,21,139,'2017-04-30','2017-05-07'),(22,22,119,'2017-05-01','2017-05-10'),(23,23,193,'2017-05-02','2017-05-09'),(24,24,153,'2017-05-03','2017-05-04'),(25,25,168,'2017-05-04','2017-05-14'),(26,26,115,'2017-05-05','2017-05-12'),(27,27,140,'2017-05-06','2017-05-09'),(28,28,170,'2017-05-07','2017-05-14'),(29,29,153,'2017-05-08','2017-05-10'),(30,30,177,'2017-05-09','2017-05-14'),(31,31,101,'2017-05-10','2017-05-17'),(32,32,118,'2017-05-11','2017-05-21'),(33,33,120,'2017-05-12','2017-05-19'),(34,34,156,'2017-05-13','2017-05-19'),(35,35,174,'2017-05-14','2017-05-15'),(36,36,156,'2017-05-15','2017-05-19'),(37,37,397,'2017-05-16','2017-05-26'),(38,38,314,'2017-05-17','2017-05-18'),(39,39,385,'2017-05-18','2017-05-24'),(40,40,356,'2017-05-19','2017-05-26'),(41,41,317,'2017-05-20','2017-05-28'),(42,42,305,'2017-05-21','2017-05-29'),(43,43,363,'2017-05-22','2017-05-26'),(44,44,346,'2017-05-23','2017-06-02'),(45,45,396,'2017-05-24','2017-05-31'),(46,46,376,'2017-05-25','2017-06-03'),(47,47,353,'2017-05-26','2017-05-27'),(48,48,342,'2017-05-27','2017-06-06'),(49,49,382,'2017-05-28','2017-05-29'),(50,50,346,'2017-05-29','2017-05-30'),(51,51,349,'2017-05-30','2017-06-02'),(52,52,381,'2017-05-31','2017-06-08'),(53,53,383,'2017-06-01','2017-06-11'),(54,54,339,'2017-06-02','2017-06-07'),(55,55,326,'2017-06-03','2017-06-09'),(56,56,391,'2017-06-04','2017-06-12'),(57,57,377,'2017-06-05','2017-06-13'),(58,58,323,'2017-06-06','2017-06-13');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_pac_id` int DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cuentas_pacientes_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`),
  CONSTRAINT `cuentas_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cuentas_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_pac_id`) REFERENCES `formas_pago_pacientes` (`forma_pago_pac_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,1,NULL,'2017-04-20',NULL),(2,2,NULL,'2017-04-17',NULL),(3,3,NULL,'2017-04-20',NULL),(4,4,NULL,'2017-04-22',NULL),(5,5,NULL,'2017-04-21',NULL),(6,6,NULL,'2017-04-18',NULL),(7,7,NULL,'2017-04-24',NULL),(8,8,NULL,'2017-04-27',NULL),(9,9,NULL,'2017-04-28',NULL),(10,10,NULL,'2017-04-27',NULL),(11,11,NULL,'2017-04-28',NULL),(12,12,NULL,'2017-04-28',NULL),(13,13,NULL,'2017-04-29',NULL),(14,14,NULL,'2017-04-26',NULL),(15,15,NULL,'2017-05-05',NULL),(16,16,NULL,'2017-05-02',NULL),(17,17,NULL,'2017-05-01',NULL),(18,18,NULL,'2017-05-12',NULL),(19,19,NULL,'2017-05-03',NULL),(20,20,NULL,'2017-05-09',NULL),(21,21,NULL,'2017-05-08',NULL),(22,22,NULL,'2017-05-14',NULL),(23,23,NULL,'2017-05-12',NULL),(24,24,NULL,'2017-05-05',NULL),(25,25,NULL,'2017-05-19',NULL),(26,26,NULL,'2017-05-14',NULL),(27,27,NULL,'2017-05-12',NULL),(28,28,NULL,'2017-05-15',NULL),(29,29,NULL,'2017-05-13',NULL),(30,30,NULL,'2017-05-18',NULL),(31,31,NULL,'2017-05-20',NULL),(32,32,NULL,'2017-05-26',NULL),(33,33,NULL,'2017-05-22',NULL),(34,34,NULL,'2017-05-21',NULL),(35,35,NULL,'2017-05-16',NULL),(36,36,NULL,'2017-05-20',NULL),(37,37,NULL,'2017-05-27',NULL),(38,38,NULL,'2017-05-21',NULL),(39,39,NULL,'2017-05-26',NULL),(40,40,NULL,'2017-05-31',NULL),(41,41,NULL,'2017-05-31',NULL),(42,42,NULL,'2017-06-01',NULL),(43,43,NULL,'2017-05-27',NULL),(44,44,NULL,'2017-06-07',NULL),(45,45,NULL,'2017-06-04',NULL),(46,46,NULL,'2017-06-07',NULL),(47,47,NULL,'2017-05-31',NULL),(48,48,NULL,'2017-06-07',NULL),(49,49,NULL,'2017-05-31',NULL),(50,50,NULL,'2017-06-03',NULL),(51,51,NULL,'2017-06-03',NULL),(52,52,NULL,'2017-06-10',NULL),(53,53,NULL,'2017-06-14',NULL),(54,54,NULL,'2017-06-09',NULL),(55,55,NULL,'2017-06-14',NULL),(56,56,NULL,'2017-06-17',NULL),(57,57,NULL,'2017-06-16',NULL),(58,58,NULL,'2017-06-15',NULL);
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuantas_pacientes_det_id` int NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `detalle` varchar(50) DEFAULT (_utf8mb4'diagnostico'),
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuantas_pacientes_det_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  CONSTRAINT `cuentas_pacientes_detalles_ibfk_1` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (1,1,'diagnostico',3,151347),(2,2,'diagnostico',3,50299),(3,3,'diagnostico',2,335363),(4,4,'diagnostico',3,336904),(5,5,'diagnostico',1,284730),(6,6,'diagnostico',1,692302),(7,7,'diagnostico',1,191741),(8,8,'diagnostico',1,744675),(9,9,'diagnostico',1,859558),(10,10,'diagnostico',1,507315),(11,11,'diagnostico',2,189576),(12,12,'diagnostico',3,615740),(13,13,'diagnostico',2,251751),(14,14,'diagnostico',3,289314),(15,15,'diagnostico',2,346244),(16,16,'diagnostico',1,321521),(17,17,'diagnostico',3,729192),(18,18,'diagnostico',2,654777),(19,19,'diagnostico',2,141906),(20,20,'diagnostico',1,749107),(21,21,'diagnostico',1,347804),(22,22,'diagnostico',2,824953),(23,23,'diagnostico',3,966042),(24,24,'diagnostico',1,376164),(25,25,'diagnostico',3,376236),(26,26,'diagnostico',1,255123),(27,27,'diagnostico',3,317412),(28,28,'diagnostico',3,766565),(29,29,'diagnostico',3,230187),(30,30,'diagnostico',2,973681),(31,31,'diagnostico',3,556224),(32,32,'diagnostico',1,789826),(33,33,'diagnostico',3,797003),(34,34,'diagnostico',3,896987),(35,35,'diagnostico',1,645401),(36,36,'diagnostico',3,732868),(37,37,'diagnostico',1,707681),(38,38,'diagnostico',3,110331),(39,39,'diagnostico',3,158256),(40,40,'diagnostico',2,81944),(41,41,'diagnostico',2,881690),(42,42,'diagnostico',2,602980),(43,43,'diagnostico',1,268138),(44,44,'diagnostico',3,379874),(45,45,'diagnostico',1,153311),(46,46,'diagnostico',3,863400),(47,47,'diagnostico',2,860995),(48,48,'diagnostico',3,149290),(49,49,'diagnostico',1,267026),(50,50,'diagnostico',1,834540),(51,51,'diagnostico',3,153439),(52,52,'diagnostico',3,236628),(53,53,'diagnostico',3,871864),(54,54,'diagnostico',3,680413),(55,55,'diagnostico',3,343354),(56,56,'diagnostico',3,57805),(57,57,'diagnostico',3,308184),(58,58,'diagnostico',2,453174);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `direccion_id` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL,
  `numero_exterior` int NOT NULL,
  `numero_interior` int DEFAULT NULL,
  `colonia` varchar(50) NOT NULL,
  `codigo_postal` varchar(6) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `otros` varchar(100) NOT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'1 rue Alsace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France','otro'),(3,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA','otro'),(4,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France','otro'),(5,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK','otro'),(6,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France','otro'),(7,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA','otro'),(8,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada','otro'),(9,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica','1900-01-00','otro'),(10,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada','otro'),(11,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France','otro'),(12,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France','otro'),(13,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France','otro'),(14,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA','otro'),(15,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA','otro'),(16,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA','otro'),(17,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland','otro'),(18,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico','otro'),(19,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico','otro'),(20,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela','otro'),(21,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela','otro'),(22,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil','otro'),(23,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany','otro'),(24,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil','otro'),(25,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil','otro'),(26,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium','otro'),(27,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mxico D.F.','No especifica','Mexico','otro'),(28,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark','otro'),(29,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK','otro'),(30,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy','otro'),(31,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany','otro'),(32,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France','otro'),(33,'ul. Filtrowa 6+B7:B928',68,NULL,'No especifica','33192','Seattle','WA','USA','otro'),(34,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy','otro'),(35,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina','otro'),(36,'Jardim das rosas n. 32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal','otro'),(37,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden','otro'),(38,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil','otro'),(39,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria','otro'),(40,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany','otro'),(41,'Magazinweg 7',7,NULL,'No especifica','69129','Frankfurt a.M.','1900-01-00','Germany','otro');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones_empleados` (
  `direccion_empledos_id` int NOT NULL AUTO_INCREMENT,
  `empleados_id` int DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_empledos_id`),
  KEY `empleados_id` (`empleados_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_empleados_ibfk_1` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`empleados_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_empleados_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (1,1,1),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,6,7),(7,7,8),(8,8,9),(9,9,10),(10,10,11),(11,11,12),(12,12,13),(13,13,14),(14,14,15),(15,15,16),(16,16,17),(17,17,18),(18,18,19),(19,19,20),(20,20,21),(21,21,22),(22,22,23),(23,23,24),(24,24,25),(25,25,26),(26,26,27),(27,27,28),(28,28,29),(29,29,30),(30,30,31);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `direccion_id` int DEFAULT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_pacientes_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (1,1,1),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,6,7),(7,7,8),(8,8,9),(9,9,10),(10,10,11),(11,11,12),(12,12,13),(13,13,14),(14,14,15),(15,15,16),(16,16,17),(17,17,18),(18,18,19),(19,19,20),(20,20,21),(21,21,22),(22,22,23),(23,23,24),(24,24,25),(25,25,26),(26,26,27),(27,27,28),(28,28,29),(29,29,30),(30,30,31),(31,31,32),(32,32,33),(33,33,34),(34,34,35),(35,35,36),(36,36,37),(37,37,38),(38,38,39),(39,39,40),(40,40,41);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleados_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `titulo` varchar(70) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empleados_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19',NULL),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15',NULL),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19',NULL),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02',NULL),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06',NULL),(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07',NULL),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14',NULL),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13',NULL),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07',NULL),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26',NULL),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06',NULL),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20',NULL),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21',NULL),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15',NULL),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23',NULL),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28',NULL),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09',NULL),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13',NULL),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18',NULL),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25',NULL),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05',NULL),(22,'Premal','Baek','Baek','Staff','1957-12-03',NULL),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17',NULL),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09',NULL),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23',NULL),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25',NULL),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07',NULL),(28,'Somnath','Foote','Foote','Engineer','1962-11-19',NULL),(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23',NULL),(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int NOT NULL AUTO_INCREMENT,
  `forma_pago` varchar(50) NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'EFECTIVO'),(2,'TARJETA CRÉDITO'),(3,'TARJETA DEBITO'),(4,'SEGURO'),(5,'CHEQUE');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `forma_pago_id` int DEFAULT NULL,
  `detalles` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_id` (`forma_pago_id`),
  CONSTRAINT `formas_pago_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `formas_pago_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pago` (`forma_pago_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(3,3,NULL,NULL),(4,4,NULL,NULL),(5,5,NULL,NULL),(6,6,NULL,NULL),(7,7,NULL,NULL),(8,8,NULL,NULL),(9,9,NULL,NULL),(10,10,NULL,NULL),(11,11,NULL,NULL),(12,12,NULL,NULL),(13,13,NULL,NULL),(14,14,NULL,NULL),(15,15,NULL,NULL),(16,16,NULL,NULL),(17,17,NULL,NULL),(18,18,NULL,NULL),(19,19,NULL,NULL),(20,20,NULL,NULL),(21,21,NULL,NULL),(22,22,NULL,NULL),(23,23,NULL,NULL),(24,24,NULL,NULL),(25,25,NULL,NULL),(26,26,NULL,NULL),(27,27,NULL,NULL),(28,28,NULL,NULL),(29,29,NULL,NULL),(30,30,NULL,NULL),(31,31,NULL,NULL),(32,32,NULL,NULL),(33,33,NULL,NULL),(34,34,NULL,NULL),(35,35,NULL,NULL),(36,36,NULL,NULL),(37,37,NULL,NULL),(38,38,NULL,NULL),(39,39,NULL,NULL),(40,40,NULL,NULL),(41,41,NULL,NULL),(42,42,NULL,NULL),(43,43,NULL,NULL),(44,44,NULL,NULL),(45,45,NULL,NULL),(46,46,NULL,NULL),(47,47,NULL,NULL),(48,48,NULL,NULL),(49,49,NULL,NULL),(50,50,NULL,NULL),(51,51,NULL,NULL),(52,52,NULL,NULL),(53,53,NULL,NULL),(54,54,NULL,NULL),(55,55,NULL,NULL),(56,56,NULL,NULL),(57,57,NULL,NULL),(58,58,NULL,NULL);
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `numero_seguro_social` varchar(50) NOT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `telefono_casa` varchar(16) DEFAULT NULL,
  `telefono_trabajo` varchar(16) DEFAULT NULL,
  `telefono_movil` varchar(16) DEFAULT NULL,
  `otros` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Georgi','Facello','Facello','1960-02-20',93,1.99,'10001','M',NULL,NULL,NULL,NULL),(2,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','F',NULL,NULL,NULL,NULL),(3,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','M',NULL,NULL,NULL,NULL),(4,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','M',NULL,NULL,NULL,NULL),(5,'Kyoichi','Maliniak','Maliniak','1958-10-31',86,1.89,'10005','M',NULL,NULL,NULL,NULL),(6,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','F',NULL,NULL,NULL,NULL),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','F',NULL,NULL,NULL,NULL),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','M',NULL,NULL,NULL,NULL),(9,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','F',NULL,NULL,NULL,NULL),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','F',NULL,NULL,NULL,NULL),(11,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','F',NULL,NULL,NULL,NULL),(12,'Patricio','Bridgland','Bridgland','1960-08-09',63,1.9,'10012','M',NULL,NULL,NULL,NULL),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','M',NULL,NULL,NULL,NULL),(14,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','M',NULL,NULL,NULL,NULL),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','M',NULL,NULL,NULL,NULL),(16,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97,1.71,'10016','M',NULL,NULL,NULL,NULL),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','F',NULL,NULL,NULL,NULL),(18,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','F',NULL,NULL,NULL,NULL),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','M',NULL,NULL,NULL,NULL),(20,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','M',NULL,NULL,NULL,NULL),(21,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','M',NULL,NULL,NULL,NULL),(22,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','M',NULL,NULL,NULL,NULL),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','F',NULL,NULL,NULL,NULL),(24,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','F',NULL,NULL,NULL,NULL),(25,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','M',NULL,NULL,NULL,NULL),(26,'Yongqiao','Berztiss','Berztiss','1960-07-23',75,1.91,'10026','M',NULL,NULL,NULL,NULL),(27,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','F',NULL,NULL,NULL,NULL),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','M',NULL,NULL,NULL,NULL),(29,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','M',NULL,NULL,NULL,NULL),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','M',NULL,NULL,NULL,NULL),(31,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','M',NULL,NULL,NULL,NULL),(32,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','F',NULL,NULL,NULL,NULL),(33,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','M',NULL,NULL,NULL,NULL),(34,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','M',NULL,NULL,NULL,NULL),(35,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','M',NULL,NULL,NULL,NULL),(36,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','M',NULL,NULL,NULL,NULL),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','M',NULL,NULL,NULL,NULL),(38,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','M',NULL,NULL,NULL,NULL),(39,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','M',NULL,NULL,NULL,NULL),(40,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','F',NULL,NULL,NULL,NULL),(41,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','F',NULL,NULL,NULL,NULL),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','F',NULL,NULL,NULL,NULL),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','M',NULL,NULL,NULL,NULL),(44,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','F',NULL,NULL,NULL,NULL),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','M',NULL,NULL,NULL,NULL),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','M',NULL,NULL,NULL,NULL),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','M',NULL,NULL,NULL,NULL),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','M',NULL,NULL,NULL,NULL),(49,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','F',NULL,NULL,NULL,NULL),(50,'Yinghua','Dredge','Dredge','1958-05-21',78,1.54,'10050','M',NULL,NULL,NULL,NULL),(51,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','M',NULL,NULL,NULL,NULL),(52,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','M',NULL,NULL,NULL,NULL),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','F',NULL,NULL,NULL,NULL),(54,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','M',NULL,NULL,NULL,NULL),(55,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','M',NULL,NULL,NULL,NULL),(56,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','F',NULL,NULL,NULL,NULL),(57,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','F',NULL,NULL,NULL,NULL),(58,'Berhard','McFarlin','McFarlin','1954-10-01',99,1.96,'10058','M',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int DEFAULT NULL,
  `cuentas_pacientes_id` int DEFAULT NULL,
  `registro_por_empleado_id` int DEFAULT NULL,
  `fecha_admision` date NOT NULL,
  `condicion_medica` varchar(85) NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`registro_paciente`),
  KEY `paciente_id` (`paciente_id`),
  KEY `registro_por_empleado_id` (`registro_por_empleado_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  CONSTRAINT `registro_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_2` FOREIGN KEY (`registro_por_empleado_id`) REFERENCES `empleados` (`empleados_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_3` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,24,NULL,24,'2017-05-01','Schistosoma guineensis (Schistosomiasis)',NULL),(2,25,NULL,25,'2017-05-02','Schistosoma haematobium (Schistosomiasis)',NULL),(3,26,NULL,26,'2017-05-04','Schistosoma japonicum (Schistosomiasis)',NULL),(4,27,NULL,27,'2017-05-04','Tachycardia (Heart Rhythm Disorders)',NULL),(5,28,NULL,28,'2017-05-06','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(6,30,NULL,30,'2017-05-07','Tailbone Pain (Coccydynia)',NULL),(7,1,NULL,1,'2017-04-08','Abdominal Aortic Aneurysm',NULL),(8,2,NULL,2,'2017-04-09','Abdominal Cramps (Heat Cramps)',NULL),(9,3,NULL,3,'2017-04-10','Abdominal Hernia (Hernia Overview)',NULL),(10,4,NULL,4,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(11,5,NULL,5,'2017-04-12','Bad Breath',NULL),(12,6,NULL,6,'2017-04-14','Bad Cholesterol Test (Cholesterol Test)',NULL),(13,7,NULL,7,'2017-04-15','Baker Cyst',NULL),(14,8,NULL,8,'2017-04-15','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(15,9,NULL,9,'2017-04-16','Fast Heart Beat (Palpitations Overview)',NULL),(16,10,NULL,10,'2017-04-17','Fatigue',NULL),(17,11,NULL,11,'2017-04-18','Fatigue From Cancer (Cancer Fatigue',NULL),(18,12,NULL,12,'2017-04-19','Lambliasis (Giardia Lamblia)',NULL),(19,13,NULL,13,'2017-04-20','Lambliosis (Giardia Lamblia)',NULL),(20,14,NULL,14,'2017-04-22','Landau-Kleffner Syndrome',NULL),(21,15,NULL,15,'2017-04-22','Lap Band Surgery (Gastric Banding)',NULL),(22,16,NULL,16,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(23,17,NULL,17,'2017-04-24','Omega-3 Fatty Acids',NULL),(24,18,NULL,18,'2017-04-25','Onchocerciasis',NULL),(25,19,NULL,19,'2017-04-27','Onychocryptosis (Ingrown Toenail)',NULL),(26,20,NULL,20,'2017-04-28','Scarlatina)',NULL),(27,21,NULL,21,'2017-04-28','Scars',NULL),(28,22,NULL,22,'2017-04-30','Schatzki Ring',NULL);
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 23:38:14
