-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: primelife_healthcare
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `diagnoses`
--

DROP TABLE IF EXISTS `diagnoses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnoses` (
  `DiagnosisID` int NOT NULL,
  `PatientID` int DEFAULT NULL,
  `Disease` varchar(100) DEFAULT NULL,
  `DiagnosisDate` date DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  PRIMARY KEY (`DiagnosisID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `diagnoses_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  CONSTRAINT `diagnoses_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnoses`
--

LOCK TABLES `diagnoses` WRITE;
/*!40000 ALTER TABLE `diagnoses` DISABLE KEYS */;
INSERT INTO `diagnoses` VALUES (401,10001,'Hypertension','2026-05-21',1),(402,10002,'Diabetes','2025-04-11',2),(403,10003,'Tuberculosis','2026-05-21',3),(404,10004,'Malaria','2026-04-24',4),(406,10006,'COVID-19','2025-05-15',6),(407,10007,'Hypertension','2026-02-25',7),(408,10008,'Malaria','2026-03-26',8),(409,10009,'Heart Failure','2025-08-16',9),(410,10010,'Asthma','2026-07-05',10),(411,10011,'Asthma','2026-07-11',10),(412,10012,'Hypertension','2026-02-12',7),(413,10013,'Heart Failure','2025-08-19',9),(414,10014,'Tuberculosis','2026-04-20',5);
/*!40000 ALTER TABLE `diagnoses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `DoctorID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Specialty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Jame','Etim','Cardiology'),(2,'Grace','Olu','Endocrinologist'),(3,'Micheal','Okon','Pulmomogist'),(4,'David','Obinna','General Physician'),(5,'Grace','Fred','Pulmomogist'),(6,'Francis','Okoro','Infectious Disease Speacial'),(7,'Joel','Sammy','Cardiology'),(8,'Kenny','Kelechi','General Physician'),(9,'Augusta','Chinemerem','Cardiology'),(10,'Fleix','Benny','Lung Specialist');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (10001,'Jenny','Obi',34,'Female','Warri'),(10002,'Joan','Akpan',45,'Female','Port Harcourt'),(10003,'Sarah','Musa',30,'Female','Lagos'),(10004,'Daniel','Chika',33,'Male','Minna'),(10005,'Johnson','Andrew',37,'Male','Port Harcourt'),(10006,'Henry','Nwanekpe',45,'Male','Owerri'),(10007,'Helen','Paul',60,'Female','Port Harcourt'),(10008,'Jessica','Adele',29,'Female','Port Harcourt'),(10009,'Ben','Ese',50,'Male','Owerri'),(10010,'James','Hosea',45,'Male','Umuahia'),(10011,'James','Danny',45,'Male','Umuahia'),(10012,'Kenny','Leo',45,'Male','Oyo'),(10013,'Jessy','Logan',29,'Female','Port Harcourt'),(10014,'Sara','Mully',28,'Female','Lagos');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-24  8:31:46
