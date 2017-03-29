CREATE DATABASE  IF NOT EXISTS `student_data` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `student_data`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: student_data
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academy_year`
--

DROP TABLE IF EXISTS `academy_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy_year` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy_year`
--

LOCK TABLES `academy_year` WRITE;
/*!40000 ALTER TABLE `academy_year` DISABLE KEYS */;
INSERT INTO `academy_year` VALUES (1,'大一','大一','大学一年级'),(2,'大二','大二','大学二年级'),(3,'大三','大三','大学三年级'),(4,'大四','大四','大学四年级'),(5,'大五','大五','大学五年级'),(6,'研一','研一','研究生一年级'),(7,'研二','研二','研究生二年级');
/*!40000 ALTER TABLE `academy_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `expired_datetime` datetime NOT NULL,
  `apartment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_accommodation_apartment1_idx` (`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (1,'2014-09-01 00:00:00','2018-07-31 00:00:00',1,1),(2,'2014-09-01 00:00:00','2018-07-31 00:00:00',2,2),(3,'2015-09-01 00:00:00','2019-07-31 00:00:00',37,3),(4,'2015-09-01 00:00:00','2019-07-31 00:00:00',38,4);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartment` (
  `id` int(11) NOT NULL,
  `building` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `bed` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,1,1,1001,1),(2,1,1,1001,2),(3,1,1,1001,3),(4,1,1,1001,4),(5,1,1,1002,1),(6,1,1,1002,2),(7,1,1,1002,3),(8,1,1,1002,4),(9,1,1,1003,1),(10,1,1,1003,2),(11,1,1,1003,3),(12,1,1,1003,4),(13,1,1,1004,1),(14,1,1,1004,2),(15,1,1,1004,3),(16,1,1,1004,4),(17,1,1,1005,1),(18,1,1,1005,2),(19,1,1,1005,3),(20,1,1,1005,4),(21,1,1,1006,1),(22,1,1,1006,2),(23,1,1,1006,3),(24,1,1,1006,4),(25,1,1,1007,1),(26,1,1,1007,2),(27,1,1,1007,3),(28,1,1,1007,4),(29,1,1,1008,1),(30,1,1,1008,2),(31,1,1,1008,3),(32,1,1,1008,4),(33,1,1,1009,1),(34,1,1,1009,2),(35,1,1,1009,3),(36,1,1,1009,4),(37,1,2,2001,1),(38,1,2,2001,2),(39,1,2,2001,3),(40,1,2,2001,4),(41,1,2,2002,1),(42,1,2,2002,2),(43,1,2,2002,3),(44,1,2,2002,4),(45,1,2,2003,1),(46,1,2,2003,2),(47,1,2,2003,3),(48,1,2,2003,4),(49,1,2,2004,1),(50,1,2,2004,2),(51,1,2,2004,3),(52,1,2,2004,4),(53,1,2,2005,1),(54,1,2,2005,2),(55,1,2,2005,3),(56,1,2,2005,4),(57,1,2,2006,1),(58,1,2,2006,2),(59,1,2,2006,3),(60,1,2,2006,4),(61,1,2,2007,1),(62,1,2,2007,2),(63,1,2,2007,3),(64,1,2,2007,4),(65,1,2,2008,1),(66,1,2,2008,2),(67,1,2,2008,3),(68,1,2,2008,4),(69,1,2,2009,1),(70,1,2,2009,2),(71,1,2,2009,3),(72,1,2,2009,4),(73,1,3,3001,1),(74,1,3,3001,2),(75,1,3,3001,3),(76,1,3,3001,4),(77,1,3,3002,1),(78,1,3,3002,2),(79,1,3,3002,3),(80,1,3,3002,4),(81,1,3,3003,1),(82,1,3,3003,2),(83,1,3,3003,3),(84,1,3,3003,4),(85,1,3,3004,1),(86,1,3,3004,2),(87,1,3,3004,3),(88,1,3,3004,4),(89,1,3,3005,1),(90,1,3,3005,2),(91,1,3,3005,3),(92,1,3,3005,4),(93,1,3,3006,1),(94,1,3,3006,2),(95,1,3,3006,3),(96,1,3,3006,4),(97,1,3,3007,1),(98,1,3,3007,2),(99,1,3,3007,3),(100,1,3,3007,4),(101,1,3,3008,1),(102,1,3,3008,2),(103,1,3,3008,3),(104,1,3,3008,4),(105,1,3,3009,1),(106,1,3,3009,2),(107,1,3,3009,3),(108,1,3,3009,4);
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'计算机学院','计算机学院','教大家如何使用计算机技术的学院'),(2,'人文学院','人文学院','教大家如何做个有文化的人的学院');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_impl`
--

DROP TABLE IF EXISTS `course_impl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_impl` (
  `id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `remains` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `course_template_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_course_impl_course_template1_idx` (`course_template_id`),
  KEY `fk_course_impl_lecturer1_idx` (`lecturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_impl`
--

LOCK TABLES `course_impl` WRITE;
/*!40000 ALTER TABLE `course_impl` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_impl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_template`
--

DROP TABLE IF EXISTS `course_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_template` (
  `id` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  `academy_year_id` int(11) NOT NULL,
  `course_template_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_course_template_course1_idx` (`course_id`),
  KEY `fk_course_template_major1_idx` (`major_id`),
  KEY `fk_course_template_academy_year1_idx` (`academy_year_id`),
  KEY `fk_course_template_course_template_type1_idx` (`course_template_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_template`
--

LOCK TABLES `course_template` WRITE;
/*!40000 ALTER TABLE `course_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_template_type`
--

DROP TABLE IF EXISTS `course_template_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_template_type` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_template_type`
--

LOCK TABLES `course_template_type` WRITE;
/*!40000 ALTER TABLE `course_template_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_template_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `course_impl_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enrollment_course_impl1_idx` (`course_impl_id`),
  KEY `fk_enrollment_student1_idx` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `enrollment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_evaluation_enrollment1_idx` (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecturer` (
  `id` int(11) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `college_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  KEY `fk_lecturer_college1_idx` (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `college_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `fk_major_college1_idx` (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'软件工程','软件工程','培养热爱写软件的程序员',1),(2,'硬件工程','硬件工程','培养热爱画电路板的工程师',1),(3,'对外汉语','对外汉语','对外汉语',2);
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeration`
--

DROP TABLE IF EXISTS `registeration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registeration` (
  `id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `student_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  `academy_year_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_registeration_student1_idx` (`student_id`),
  KEY `fk_registeration_major1_idx` (`major_id`),
  KEY `fk_registeration_academy_year1_idx` (`academy_year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeration`
--

LOCK TABLES `registeration` WRITE;
/*!40000 ALTER TABLE `registeration` DISABLE KEYS */;
INSERT INTO `registeration` VALUES (1,'2014-09-01 00:00:00',1,1,1),(2,'2014-09-01 00:00:00',2,1,1),(3,'2014-09-01 00:00:00',2,2,1),(4,'2015-09-01 00:00:00',3,2,1),(5,'2015-09-01 00:00:00',4,3,1),(6,'2015-09-01 00:00:00',4,1,1),(7,'2015-09-01 00:00:00',1,1,2),(8,'2015-09-01 00:00:00',2,1,2),(9,'2015-09-01 00:00:00',2,2,2);
/*!40000 ALTER TABLE `registeration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `current_value` int(11) NOT NULL DEFAULT '10000',
  `increment` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES (1,'sys',10010,1),(3,'sid',10005,1);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `student_status_id` int(11) NOT NULL,
  `height` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid_UNIQUE` (`sid`),
  KEY `fk_student_student_status_idx` (`student_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10012 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,201400001,'一','张','男','13588888888','yi_zhang@qingke.me','1990-01-01 00:00:00',1,190.00),(2,201400002,'二','张','男','13788647362','er_zhang@qingke.me','1991-03-02 00:00:00',1,180.00),(3,201500003,'三','张','女','18726373625','san_zhang@qingke.me','1990-02-01 00:00:00',1,165.00),(4,201500004,'tan','tom','女','13677263764','yishan_niu@qingke.com','1992-01-02 00:00:00',1,157.00),(5,201500005,'二娃','沈','女','13766476653','erwang_shen@qingke.com','1991-01-01 00:00:00',1,167.20),(2015,20160212,'tom','cat','男',NULL,'56@qq.com','2015-10-10 00:00:00',1,NULL),(2016,20160213,'tom','cat','男',NULL,'56@qq.com','2015-10-10 00:00:00',1,NULL),(10006,20160001,'课','轻','男','13988884756','ke_qing@qingke.me','1991-01-03 00:00:00',1,12.00),(10007,10001,'四','五','男','13666666666','wu_si@qingke.me','1991-04-23 00:00:00',1,NULL),(10008,10003,'课2','轻','男','13577365251','ke2_qing@qingke.me','1993-01-02 00:00:00',1,NULL),(10009,10004,'课2','轻','男','13577365251','ke2_qing@qingke.me','1993-01-02 00:00:00',1,NULL),(10010,10005,'课3','轻','男','13599998888','ke3_qing@qingke.me','1993-02-16 00:00:00',1,NULL),(10011,10006,'h','j','j','','123','1993-01-02 00:00:00',1,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_status`
--

DROP TABLE IF EXISTS `student_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_status` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_status`
--

LOCK TABLES `student_status` WRITE;
/*!40000 ALTER TABLE `student_status` DISABLE KEYS */;
INSERT INTO `student_status` VALUES (1,'在读','在读','在读'),(2,'毕业','毕业','毕业'),(3,'休学','休学','休学'),(4,'肄业','肄业','肄业'),(5,'退学','退学','退学');
/*!40000 ALTER TABLE `student_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-29 14:15:43
