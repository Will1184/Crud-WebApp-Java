-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: formulario
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
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'administrador'),(2,'invitado');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `primerNombre` varchar(50) NOT NULL,
  `segundoNombre` varchar(50) NOT NULL,
  `primerApellido` varchar(50) NOT NULL,
  `segundoApellido` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `correoElectronico` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (12,'Saul','Elias','GoodMan','Arias','19','Example@gmail.com','00000000','Portero'),(13,'Carlso','Salcedo','Arnulfo','Salazar','23','example@gmail.com','123455665','Volante'),(17,'Carmen','William','Lopez','Hernandez','22','example@gmail.com','23232323','Carrilero'),(18,'Isabel','Antonia','Gonzales','Navarro','22','example@gmail.com','23232323','Segundo Delantero'),(19,'Carmen','William','Fernandez','Perez','22','example@gmail.com','23232323','Volante'),(20,'Maria','Antonia','Monge','Perez','22','example@gmail.com','23232323','Pivote'),(21,'Pedro','Antonia','Lopez','Navarro','22','example@gmail.com','23232323','carrilero'),(22,'Josefa','Javier','Jimenez','Navarro','22','example@gmail.com','23232323','lateral'),(23,'Pedro','David','Garcia','Perez','22','example@gmail.com','23232323','volante'),(24,'Isabel','William','Monge','Navarro','22','example@gmail.com','23232323','lateral'),(25,'Isabel','William','Jimenez','Alfaro','22','example@gmail.com','23232323','volante'),(26,'Pedro','Angeles','Fernandez','Hernandez','22','example@gmail.com','23232323','portero'),(27,'Juan','Pilar','Gomez','Hernandez','22','example@gmail.com','23232323','carrilero'),(28,'Maria','Angeles','Lopez','Molina','22','example@gmail.com','23232323','mediapunta'),(29,'Maria','Javier','Moreno','Romero','22','example@gmail.com','23232323','segundoDelantero'),(30,'Pedro','Antonia','Fernandez','Rubio','22','example@gmail.com','23232323','Central'),(31,'Jose','Antonia','Gomez','Saez','22','example@gmail.com','23232323','lateral'),(32,'Robin','Carlos','Moreno','Perez','22','example@gmail.com','23232323','mediapunta'),(33,'Josefa','Antonia','Lopez','Muñoz','22','example@gmail.com','23232323','lateral'),(34,'Maria','Jose','Lopez','Navarro','22','example@gmail.com','23232323','interior'),(35,'Francisco','Antonia','Lopez','Perez','22','example@gmail.com','23232323','extremo'),(36,'Pedro','Carlos','Gonzales','Romero','22','example@gmail.com','23232323','lateral'),(37,'Isabel','Jose','Fernandez','Molina','22','example@gmail.com','23232323','interior'),(38,'Maria','Javier','Monge','Alfaro','22','example@gmail.com','23232323','carrilero'),(39,'Isabel','Jose','Gomez','Lozano','22','example@gmail.com','23232323','lateral'),(40,'Francisco','Carlos','Moreno','Molina','22','example@gmail.com','23232323','extremo'),(41,'Isabel','David','Sanches','Hernandez','22','example@gmail.com','23232323','lateral'),(42,'Maria','Antonia','Jimenez','Perez','22','example@gmail.com','23232323','volante'),(43,'Francisco','William','Gonzales','Romero','22','example@gmail.com','23232323','carrilero'),(44,'Josefa','David','Gomez','Romero','22','example@gmail.com','23232323','libero'),(45,'Angel','Antonia','Garcia','Perez','22','example@gmail.com','23232323','carrilero'),(46,'Robin','Antonia','Lopez','Saez','22','example@gmail.com','23232323','extremo'),(47,'Carmen','Javier','Monge','Lozano','22','example@gmail.com','23232323','carrilero'),(53,'asa','Aka','Akasak','Fujimoto','19','brandonwilliammg@gmail.com','21283y12','Extremo');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `pasword` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_cargo` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Brandon','78945','brandonwilliammg@gmail.com',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'formulario'
--

--
-- Dumping routines for database 'formulario'
--
/*!50003 DROP PROCEDURE IF EXISTS `buscarRegistro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarRegistro`(in letras varchar(50))
BEGIN
SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas  
WHERE personas.id LIKE concat ('%',letras,'%') OR personas.primerNombre LIKE concat ('%',letras,'%') OR personas.segundoNombre LIKE concat ('%',letras,'%') OR personas.primerApellido LIKE concat ('%',letras,'%') OR personas.segundoApellido LIKE concat ('%',letras,'%')OR personas.posicion LIKE concat ('%',letras,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filtroRegistros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filtroRegistros`(in filtro int)
BEGIN
CASE
 WHEN filtro=1 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.primerNombre ASC, personas.segundoNombre ASC; 
  WHEN filtro=2 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.primerNombre DESC, personas.segundoNombre DESC;
  WHEN filtro=3 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.primerApellido ASC,personas.segundoApellido ASC;
  WHEN filtro=4 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.primerApellido DESC,personas.segundoApellido DESC;
  WHEN filtro=5 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.edad ASC,personas.edad ASC;
  WHEN filtro=6 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.edad DESC,personas.edad DESC;
  WHEN filtro=7 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.id ASC,personas.id ASC;
  WHEN filtro=8 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.id DESC,personas.id DESC;
  WHEN filtro=9 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.posicion ASC,personas.posicion ASC;
  WHEN filtro=10 THEN 
 SELECT personas.id, personas.primerNombre, personas.segundoNombre, personas.primerApellido, personas.segundoApellido, personas.edad, personas.correoElectronico, personas.telefono, personas.posicion FROM personas ORDER BY personas.posicion DESC,personas.posicion DESC; 
 END CASE; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `numDatos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `numDatos`()
BEGIN
select count(*) from personas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `numRegistros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `numRegistros`()
BEGIN
select count(id)from personas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31 20:50:20
