CREATE DATABASE  IF NOT EXISTS `graduation_planner` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `graduation_planner`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: graduation_planner
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requirements` (
  `req_id` int(99) NOT NULL,
  `req_name` varchar(45) DEFAULT NULL,
  `fk_major_id` int(99) DEFAULT NULL,
  `fk_course_id` int(99) DEFAULT NULL,
  PRIMARY KEY (`req_id`),
  KEY `major_id_idx` (`fk_major_id`),
  KEY `course_id_idx` (`fk_course_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`fk_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `major_id` FOREIGN KEY (`fk_major_id`) REFERENCES `majors` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirements`
--

LOCK TABLES `requirements` WRITE;
/*!40000 ALTER TABLE `requirements` DISABLE KEYS */;
INSERT INTO `requirements` VALUES (1,'IT1',1,1),(2,'IT2',1,2),(3,'IT3',1,3),(4,'IT4',1,4),(5,'IT5',1,5),(6,'IT6',1,6),(7,'IT7',1,7),(8,'IT8',1,8),(9,'IT9',1,9),(10,'IT10',1,10),(11,'IT11',1,11),(12,'IT12',1,12),(13,'IT13',1,13),(14,'IT14',1,14),(15,'ENG1',1,15),(16,'COM1',1,16),(17,'MAT1',1,17),(18,'MAT2',1,19),(19,'ECO',1,20),(20,'ACC',1,21),(21,'BUS',1,22),(22,'STA',1,22),(23,'ENG2',1,23),(24,'COM2',1,24),(25,'BUS2',1,25),(26,'IT15',1,26),(27,'SCI',1,27),(28,'SCI',1,28),(29,'GEO',1,28),(30,'SOC',1,29),(31,'SOC',1,30),(32,'PHI',1,30),(33,'ART',1,31),(34,'WOR',1,31),(35,'WOR',1,32),(36,'CY1',2,1),(37,'CY2',2,34),(38,'CY3',2,3),(39,'CY4',2,4),(40,'CY5',2,5),(41,'CY6',2,6),(42,'CY7',2,35),(43,'CY8',2,8),(44,'CY9',2,9),(45,'CY10',2,36),(46,'CY11',2,37),(47,'CY12',2,38),(48,'CY13',2,39),(49,'CY14',2,40),(50,'CY15',2,26),(51,'SCI',2,27),(52,'SCI',2,28),(53,'GEO',2,28),(54,'SOC',2,29),(55,'SOC',2,30),(56,'PHI',2,30),(57,'ART',2,31),(58,'WOR',2,31),(59,'WOR',2,32),(60,'ENG1',2,15),(61,'COM1',2,16),(62,'MAT1',2,17),(63,'MAT2',2,19),(64,'ECO',2,20),(65,'ACC',2,21),(66,'BUS',2,22),(67,'STA',2,22),(68,'ENG2',2,23),(69,'COM2',2,24),(70,'BUS2',2,25);
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 20:39:06
