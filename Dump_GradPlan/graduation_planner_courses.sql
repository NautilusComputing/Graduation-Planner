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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `courses` (
  `course_id` int(99) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'IT 168','Introduction to Object Oriented Programming.'),(2,'IT 178','Java Focused Programming.'),(3,'IT 191','Professionalism in IT'),(4,'IT 254','Hardware and Software Concepts'),(5,'IT 261','Systems Development'),(6,'IT 262','Project Management'),(7,'IT 272','COBOL as a Second Language'),(8,'IT 276','Introduction to Networking'),(9,'IT 214','Ethics in IT'),(10,'IT 372','Advanced COBOL'),(11,'IT 378','Database'),(12,'IT 353','Web Development'),(13,'IT 363','Systems Development II'),(14,'IT 250','Assurance and Security'),(15,'ENG 101','Genres and Themes'),(16,'COM 110','Public Speaking'),(17,'MAT 120','Finite Mathematics'),(19,'MAT 160','Elementary Discreet Math'),(20,'ECO 105','Principles of Economics'),(21,'ACC 131','Accounting and Finance'),(22,'MQM 100','Statistical Reasoning'),(23,'ENG 249','Professional Writing'),(24,'COM 223','Small Group Processing'),(25,'MQM 220','Business Management'),(26,'IT 398','Internship in Information Technology'),(27,'CHE 102','Chemistry and Society'),(28,'GEO 102','Principles of Geology'),(29,'GEO 142','Human Geography'),(30,'PHI 104','Ideals of Democracy'),(31,'ART 155','Survey of Art I'),(32,'HIS 104','History of East Asia'),(34,'IT 170','Python'),(35,'IT 225','Computer Organization'),(36,'IT 351','Cryptography'),(37,'IT 357','Tools and Techniques in Defensive Security'),(38,'IT 359','Penetration Testing'),(39,'IT 377','Practical Telecommuting and Networking'),(40,'IT 360','Security Incident And Event Management and Forensics');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22 20:39:05
