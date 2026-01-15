CREATE DATABASE  IF NOT EXISTS `employee_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employee_management`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_management
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_no` varchar(4) DEFAULT NULL,
  `dept_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('d001','Human Resources'),('d002','Information Tech'),('d003','Finance'),('d004','Marketing'),('d005','Operations'),('d006','Sales');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_emp`
--

DROP TABLE IF EXISTS `dept_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_emp` (
  `emp_no` int NOT NULL,
  `dept_no` varchar(4) NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_emp`
--

LOCK TABLES `dept_emp` WRITE;
/*!40000 ALTER TABLE `dept_emp` DISABLE KEYS */;
INSERT INTO `dept_emp` VALUES (1001,'d002'),(1002,'d001'),(1003,'d003'),(1004,'d004'),(1005,'d005'),(1006,'d002'),(1007,'d002'),(1008,'d004'),(1009,'d002'),(1010,'d005'),(1011,'d002'),(1012,'d003'),(1013,'d003'),(1014,'d004'),(1015,'d006'),(1016,'d005'),(1017,'d002'),(1018,'d006'),(1019,'d002'),(1020,'d003'),(1021,'d002'),(1022,'d004'),(1023,'d006'),(1024,'d001'),(1025,'d006'),(1026,'d006'),(1027,'d002'),(1028,'d004'),(1029,'d003'),(1030,'d004'),(1031,'d006'),(1032,'d006'),(1033,'d002'),(1034,'d004'),(1035,'d003'),(1036,'d003'),(1037,'d005'),(1038,'d004'),(1039,'d006'),(1040,'d001'),(1041,'d002'),(1042,'d004'),(1043,'d002'),(1044,'d004'),(1045,'d005'),(1046,'d004'),(1047,'d006'),(1048,'d001'),(1049,'d002'),(1050,'d006');
/*!40000 ALTER TABLE `dept_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_manager`
--

DROP TABLE IF EXISTS `dept_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept_manager` (
  `dept_no` varchar(4) DEFAULT NULL,
  `emp_no` int DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_manager`
--

LOCK TABLES `dept_manager` WRITE;
/*!40000 ALTER TABLE `dept_manager` DISABLE KEYS */;
INSERT INTO `dept_manager` VALUES ('d001',1024,'Hannah','Perez'),('d002',1027,'Peace','Turner'),('d003',1035,'Emmanuel','Young'),('d004',1030,'Robert','Walker'),('d005',1005,'Michael','White'),('d006',1047,'Francis','Roberts');
/*!40000 ALTER TABLE `dept_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_no` int NOT NULL,
  `birth_date` date DEFAULT NULL,
  `first_name` varchar(14) DEFAULT NULL,
  `last_name` varchar(16) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1001,'1990-01-12','John','Doe','M','2018-03-10'),(1002,'1989-05-23','Mary','Smith','F','2019-06-15'),(1003,'1992-07-14','James','Brown','M','2020-01-20'),(1004,'1991-02-18','Linda','Johnson','F','2017-11-05'),(1005,'1992-09-30','Michael','White','M','2016-08-22'),(1006,'1993-04-11','Sarah','Wilson','F','2021-02-14'),(1007,'1987-12-05','David','Miller','M','2015-04-01'),(1008,'1994-06-19','Grace','Taylor','F','2020-09-09'),(1009,'1991-10-08','Daniel','Anderson','M','2019-12-03'),(1010,'1989-03-27','Michael','Taylor','M','2015-04-01'),(1011,'1992-11-16','Bekky','Scott','F','2020-07-21'),(1012,'1990-02-04','Moses','Morris','M','2017-06-30'),(1013,'1988-08-25','John','Thomas','M','2016-10-12'),(1014,'1993-09-13','Joy','Adams','F','2021-01-08'),(1015,'1991-01-29','Samuel','Jackson','M','2019-04-19'),(1016,'2000-07-07','David','Harris','M','2024-09-14'),(1017,'1994-05-03','Sharon','Gonzalez','F','2022-02-01'),(1018,'1990-12-21','Joseph','Martin','M','2018-11-27'),(1019,'1989-06-10','Paul','Thompson','M','2017-03-16'),(1020,'1992-04-02','Lydia','Carter','F','2020-06-25'),(1021,'1988-11-19','Peter','Garcia','M','2016-01-13'),(1022,'1993-03-06','Carlos','Martinez','M','2021-07-18'),(1023,'1991-09-15','Andrew','Robinson','M','2019-10-04'),(1024,'1987-02-28','Hannah','Perez','M','2015-05-09'),(1025,'1994-08-17','James','Clark','M','2022-03-11'),(1026,'1990-10-26','Victor','Rodriguez','M','2018-12-20'),(1027,'1989-01-14','Peace','Turner','F','2017-08-07'),(1028,'1992-06-22','Mark','Lewis','M','2020-04-15'),(1029,'1988-04-09','Kelvin','Lee','M','2016-02-18'),(1030,'1993-11-30','Rose','Campbell','F','2021-09-06'),(1031,'1991-05-12','Robert','Walker','M','2019-01-23'),(1032,'2001-09-03','Brian','Hall','M','2024-07-28'),(1033,'1994-02-20','Mercy','Evans','F','2022-05-02'),(1034,'1995-07-18','Kelvin','Allen','M','2018-06-11'),(1035,'1989-12-01','Emmanuel','Young','M','2017-10-30'),(1036,'1992-03-09','Faith','Collins','F','2020-08-14'),(1037,'1988-05-27','Stephen','King','M','2016-04-06'),(1038,'1993-01-16','Henry','Wright','M','2021-11-19'),(1039,'1991-08-04','Janet','Sanchez','F','2019-02-12'),(1040,'1987-06-21','Luiz','Lopez','M','2015-12-08'),(1041,'1994-04-10','Stephen','Hill','M','2022-01-26'),(1042,'1990-11-20','Rebecca','Rogers','F','2018-09-17'),(1043,'1989-02-13','Patrick','Green','M','2017-05-03'),(1044,'1992-12-07','Ibrahim','Baker','M','2020-10-22'),(1045,'1989-10-16','Nathan','Nelson','M','2016-11-15'),(1046,'1993-07-05','Raymond','Mitchell','M','2021-03-29'),(1047,'1991-03-04','Frncis','Roberts','M','2019-08-13'),(1048,'1999-01-31','Daniel','Phillips','M','2023-02-04'),(1049,'1994-09-02','Simon','Parker','M','2022-06-10'),(1050,'2021-06-14','Edwards','Stewart','M','2025-04-27');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `emp_no` int NOT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1001,250000),(1002,180000),(1003,220000),(1004,200000),(1005,300000),(1006,210000),(1007,230000),(1008,190000),(1009,240000),(1010,170000),(1011,215000),(1012,185000),(1013,225000),(1014,195000),(1015,205000),(1016,260000),(1017,160000),(1018,175000),(1019,245000),(1020,210000),(1021,255000),(1022,190000),(1023,200000),(1024,280000),(1025,150000),(1026,170000),(1027,270000),(1028,185000),(1029,235000),(1030,195000),(1031,220000),(1032,196000),(1033,240000),(1034,205000),(1035,390000),(1036,215000),(1037,230000),(1038,180000),(1039,195000),(1040,210000),(1041,140000),(1042,185000),(1043,225000),(1044,200000),(1045,235000),(1046,190000),(1047,215000),(1048,320000),(1049,245000),(1050,175000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title` (
  `emp_no` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  KEY `fk_title` (`emp_no`),
  CONSTRAINT `fk_title` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1001,'Software Developer'),(1002,'HR Officer'),(1003,'Accountant'),(1004,'Marketing Executive'),(1005,'Operations Manager'),(1006,'Data Analyst'),(1007,'IT Support Engineer'),(1008,'Content Strategist'),(1009,'Business Analyst'),(1010,'Operations Analyst'),(1011,'Software Tester'),(1012,'Payroll Officer'),(1013,'Finance Officer'),(1014,'Digital Marketer'),(1015,'Sales Executive'),(1016,'Operations Supervisor'),(1017,'Junior Developer'),(1018,'Sales Executive'),(1019,'Network Engineer'),(1020,'Financial Analyst'),(1021,'System Administrator'),(1022,'Marketing Officer'),(1023,'Sales Analyst'),(1024,'HR Manager'),(1025,'Sales Executive'),(1026,'Customer Support Rep'),(1027,'IT Project Manager'),(1028,'Social Media Manager'),(1029,'Procurement Officer'),(1030,'Brand Strategist'),(1031,'Account Manager'),(1032,'Sales Executive'),(1033,'Data Engineer'),(1034,'Advertising Executive'),(1035,'Finance Manager'),(1036,'Risk Analyst'),(1037,'Operations Analyst'),(1038,'SEO Specialist'),(1039,'Sales Representative'),(1040,'Recruitment/Training Cordinator'),(1041,'Software Intern'),(1042,'Communication Officer'),(1043,'IT Auditor'),(1044,'Marketing Analyst'),(1045,'Logistics Officer'),(1046,'PR Officer'),(1047,'Sales Supervisor'),(1048,'HR Director'),(1049,'Business Intelligence Analyst'),(1050,'Customer Relations Officer');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-15 14:55:44
