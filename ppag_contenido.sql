-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ppag
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `contenido`
--

DROP TABLE IF EXISTS `contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `valor` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido`
--

LOCK TABLES `contenido` WRITE;
/*!40000 ALTER TABLE `contenido` DISABLE KEYS */;
INSERT INTO `contenido` VALUES (1,'C_t1','texto','¿Quiénes Somos?'),(2,'C_p1','texto','Contribuimos a mejorar la calidad de tu educación integral mediante la ejecución de programas y actividades psico-afectivas; la detección, evaluación y atención de dificultades de aprendizaje y el acompañamiento a todo el personal del Colegio.'),(3,'C_p2','texto','¿Qué hacemos en psicopedagógico?'),(4,'C_t2','texto','¿Qué hacemos en psicopedagógico?'),(5,'C_p3','texto','A veces se tiene la idea de que uno acude \"al psicopedagógico\" cuando te mandan llamar o tienes algún problema emocional grave. La realidad es muy distinta, aquí te dejamos algunas de las opciones que podemos ofrecerte para tu crecimiento personal.'),(6,'C_i1','imagen','/images/1749580464031.png'),(7,'C_t3','texto','Acompañamiento Emocional'),(8,'C_p4','texto','Escuchamos y aconsejamos a todos aquellos que se acercan a nosotros ya sea por dudas en su toma de decisiones, conflictos internos y hasta alegrías por sus logros. La idea es verte crecer.'),(9,'C_i2','imagen','/images/2.png'),(10,'C_t4','texto','Acompañamiento Académico'),(11,'C_p5','texto','Si consideras que tus calificaciones pueden mejorar o\n                    quieres saber cómo aprender más rápido las cosas acércate\n                    a nosotros.'),(12,'C_i3','imagen','/images/3.png'),(13,'C_t5','texto','Orientación Vocacional'),(14,'C_p6','texto','Actualmente el mundo profesional ofrece una inmensa variedad de carreras. Nosotras aplicamos pruebas y por medio de entrevistas y ejercicios podemos ayudarte a elegir.'),(15,'C_i4','imagen','/images/4.png'),(16,'C_t6','texto','Exámenes de Admisión'),(17,'C_p7','texto','Como parte de nuestra función administrativa aplicamos batería de pruebas para valorar el nivel de conocimientos de cada aspirante y ver si cumple con los requisitos para ser alumno del Colegio.'),(18,'C_i5','imagen','/images/5.png'),(19,'C_t7','texto','Observaciones de Clase'),(20,'C_p8','texto','Durante el ciclo académico, observamos clases de sus profesores y en base a una rúbrica hacemos sugerencias al docente para que tengas una educación de calidad.'),(21,'C_i6','imagen','/images/6.png'),(22,'C_t8','texto','Escuela para Padres'),(23,'C_p9','texto','Organizamos un plan de conferencias en el año para que los padres de familia tengan recursos y puedan educar a sus hijos de manera cariñosa.'),(24,'C_t9','texto','Integrantes del Equipo Preparatoria'),(25,'C_t10','texto','Mtra. Alejandra Ibañez'),(26,'C_t11','texto','Coordinadora del Departamento Psicopedagógico'),(27,'C_p10','texto','• Maestría en psicopedagogía por la Universidad de la Rioja.\n• Licenciada en psicología por la UNIVA.\n• Diplomado en terapia breve basada en soluciones.\n• Experiencia en área laboral, clínica y educativa.\n• Facilitadora en pláticas y talleres de desarrollo humano.'),(28,'C_t12','texto','Lic. Karla Ortega'),(29,'C_t13','texto','Sección Preparatoria'),(30,'C_p11','texto','• Licenciada en pedagogía por la Universidad del Valle de México.\n• Diplomado en competencias para docentes de educación media superior y superior.\n• Diplomado en la creación de educación positiva y de vanguardia.\n• Certificación en la aplicación de la metodología básica de investigación en el ámbito educativo.'),(31,'C_t14','texto','Psicopedagógico\nCAG'),(32,'C_t15','texto','Concurso de Becas'),(33,'C_t16','texto','¿Cómo Conseguir una Beca?');
/*!40000 ALTER TABLE `contenido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-10 13:23:41
