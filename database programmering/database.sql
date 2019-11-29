-- MySQL dump 10.17  Distrib 10.3.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: compantstucture
-- ------------------------------------------------------
-- Server version	10.3.16-MariaDB

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
-- Table structure for table `dep_employee`
--

DROP TABLE IF EXISTS `dep_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_employee` (
  `dep_emp_ID` int(11) NOT NULL,
  `dep_ID` int(11) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dep_emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_employee`
--

LOCK TABLES `dep_employee` WRITE;
/*!40000 ALTER TABLE `dep_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `dep_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dep_manager`
--

DROP TABLE IF EXISTS `dep_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dep_manager` (
  `Manager_ID` int(11) NOT NULL,
  `dep_ID` int(11) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Manager_ID`),
  KEY `dep_ID` (`dep_ID`),
  CONSTRAINT `dep_manager_ibfk_1` FOREIGN KEY (`dep_ID`) REFERENCES `department` (`dep_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep_manager`
--

LOCK TABLES `dep_manager` WRITE;
/*!40000 ALTER TABLE `dep_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `dep_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dep_ID` int(11) NOT NULL,
  `dep_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dep_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'dep1'),(2,'dep2'),(3,'dep3'),(4,'dep4');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_ID` int(11) NOT NULL,
  `emp_firstname` varchar(255) DEFAULT NULL,
  `emp_lastname` varchar(255) DEFAULT NULL,
  `emp_gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Hannah','Garcia','female','randommail@123.com'),(2,'Emily','Davis','female','efsd@123.com'),(3,'Jessica','Jones','female','dnfid@13423.com'),(4,'Megan','Rodriguez','female','dfjonnjn@23522.com'),(5,'Charlotte','Smith','female','8fibsi@snfa.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `Salary_ID` int(11) NOT NULL,
  `emp_ID` int(11) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Salary_ID`),
  KEY `emp_ID` (`emp_ID`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`emp_ID`) REFERENCES `employee` (`emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,1,'50000'),(2,3,'40000'),(3,2,'20000');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title` (
  `Title_ID` int(11) NOT NULL,
  `emp_ID` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Title_ID`),
  KEY `emp_ID` (`emp_ID`),
  CONSTRAINT `emp_ID` FOREIGN KEY (`emp_ID`) REFERENCES `employee` (`emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES (1,3,'manager'),(2,2,'employee'),(3,1,'manager');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `viewthings`
--

DROP TABLE IF EXISTS `viewthings`;
/*!50001 DROP VIEW IF EXISTS `viewthings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `viewthings` (
  `emp_firstname` tinyint NOT NULL,
  `emp_lastname` tinyint NOT NULL,
  `salary` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `viewthings`
--

/*!50001 DROP TABLE IF EXISTS `viewthings`*/;
/*!50001 DROP VIEW IF EXISTS `viewthings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewthings` AS select `employee`.`emp_firstname` AS `emp_firstname`,`employee`.`emp_lastname` AS `emp_lastname`,`salary`.`salary` AS `salary` from (`employee` join `salary` on(`employee`.`emp_ID` = `salary`.`Salary_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 11:49:44
