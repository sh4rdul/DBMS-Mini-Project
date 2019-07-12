CREATE DATABASE  IF NOT EXISTS `wildlife` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wildlife`;
-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: wildlife
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `adminlog`
--

DROP TABLE IF EXISTS `adminlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(6) DEFAULT NULL,
  `animal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `animal_id` (`animal_id`),
  CONSTRAINT `adminlog_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `adminlog_ibfk_2` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlog`
--

LOCK TABLES `adminlog` WRITE;
/*!40000 ALTER TABLE `adminlog` DISABLE KEYS */;
INSERT INTO `adminlog` VALUES (3,1,'2018-10-07 17:43:04','Insert',10),(4,1,'2018-10-07 17:43:24','Insert',11),(5,1,'2018-10-07 17:44:46','Insert',12),(6,1,'2018-10-07 17:44:58','Update',2),(7,1,'2018-10-07 18:16:03','Insert',13),(8,1,'2018-10-07 18:16:43','Insert',14),(9,1,'2018-10-07 18:17:54','Insert',15),(10,1,'2018-10-07 18:18:57','Insert',16),(11,1,'2018-10-07 18:19:12','Update',10),(12,1,'2018-10-07 18:19:54','Insert',17),(13,1,'2018-10-07 18:20:30','Insert',18),(14,1,'2018-10-07 18:21:49','Insert',19),(15,1,'2018-10-07 18:27:11','Insert',20),(16,1,'2018-10-07 18:27:20','Insert',21),(17,1,'2018-10-07 18:27:51','Insert',22),(18,1,'2018-10-07 18:28:12','Insert',23),(19,1,'2018-10-07 18:28:55','Insert',24),(20,1,'2018-10-07 18:30:20','Insert',25),(21,1,'2018-10-07 18:31:16','Insert',26),(22,1,'2018-10-07 18:38:37','Insert',27),(23,1,'2018-10-07 18:39:08','Insert',28),(24,1,'2018-10-07 18:39:24','Insert',29),(25,1,'2018-10-07 18:39:35','Insert',30),(26,1,'2018-10-07 18:39:44','Insert',31),(27,1,'2018-10-07 18:40:15','Insert',32),(28,1,'2018-10-07 18:40:30','Insert',33),(29,1,'2018-10-07 18:40:47','Insert',34),(30,1,'2018-10-07 18:41:41','Insert',35),(31,1,'2018-10-07 18:41:57','Update',5),(32,1,'2018-10-07 18:42:24','Insert',36),(33,1,'2018-10-07 18:43:06','Insert',37),(34,1,'2018-10-07 18:43:35','Insert',38),(35,1,'2018-10-07 18:45:09','Insert',39),(36,1,'2018-10-07 18:45:43','Insert',40),(37,1,'2018-10-07 18:45:51','Insert',41),(38,1,'2018-10-07 18:45:55','Insert',42),(39,1,'2018-10-07 18:46:08','Insert',43),(40,1,'2018-10-07 18:46:33','Insert',44),(41,1,'2018-10-07 18:47:00','Insert',45),(42,1,'2018-10-07 18:47:43','Insert',46),(43,1,'2018-10-07 18:48:05','Insert',47),(44,1,'2018-10-07 18:48:36','Insert',48),(45,1,'2018-10-07 18:50:30','Insert',49),(46,1,'2018-10-07 18:50:56','Insert',50),(47,1,'2018-10-07 18:51:09','Insert',51),(48,1001,'2018-10-07 19:15:52','Update',1),(49,1,'2018-10-08 05:21:58','Insert',52),(50,1,'2018-10-08 05:22:33','Update',25),(51,1,'2018-10-09 07:03:05','Update',11),(52,1,'2018-10-09 07:12:39','Update',11),(53,1,'2018-10-09 07:24:14','Update',13),(54,1,'2018-10-09 07:27:45','Update',11),(55,1,'2018-10-09 07:28:15','Update',48),(56,1,'2018-10-09 07:36:27','Update',44),(57,1,'2018-10-09 08:05:43','Update',23),(58,1,'2018-10-09 08:06:58','Update',43),(62,1,'2018-10-10 13:14:55','Insert',54),(63,1,'2018-10-10 13:15:35','Update',3),(64,1,'2018-10-10 13:15:47','Update',54),(65,1,'2018-10-10 13:16:15','Update',54),(67,1,'2018-10-10 13:17:21','Insert',55),(68,1,'2018-10-10 13:17:41','Insert',56),(69,1,'2018-10-10 13:17:48','Insert',57),(70,1,'2018-10-10 13:17:55','Insert',58),(71,1,'2018-10-10 13:18:07','Insert',59),(72,1,'2018-10-10 13:18:46','Insert',60),(75,1,'2018-10-10 15:18:11','Update',30),(77,1,'2018-10-10 15:32:52','Update',29),(78,2001,'2018-10-11 14:01:34','Update',26),(79,2002,'2018-10-11 18:58:06','Update',17),(80,2001,'2018-10-11 19:26:26','Update',48),(81,2001,'2018-10-11 19:26:33','Update',48),(82,2002,'2018-10-11 19:29:25','Update',48),(83,2002,'2018-10-11 19:30:24','Update',48),(84,1003,'2018-10-12 12:51:33','Update',4),(85,1005,'2018-10-12 12:53:03','Update',4),(86,1005,'2018-10-12 13:04:30','Update',5),(87,1005,'2018-10-12 13:06:16','Update',3),(88,1001,'2018-10-12 13:20:56','Update',4),(89,1005,'2018-10-12 13:30:04','Update',3),(91,1005,'2018-10-15 06:38:58','Update',34),(92,1,'2018-10-16 06:46:39','Insert',63),(93,1,'2018-10-16 07:37:13','Insert',64),(94,1,'2018-10-16 20:29:51','Insert',65),(95,1,'2018-10-16 20:30:01','Update',65),(96,1,'2018-10-16 20:30:14','Update',65),(97,1,'2018-10-16 20:30:43','Update',65),(98,1,'2018-10-16 20:30:49','Update',65),(101,1,'2018-10-18 09:25:59','Insert',66),(103,1,'2018-10-18 10:11:04','Insert',53),(111,1,'2018-10-18 10:53:51','Insert',61),(112,1,'2018-10-18 10:54:07','Insert',62),(113,1,'2018-10-18 10:54:19','Update',62),(114,1,'2018-10-18 11:04:18','Update',61),(115,1,'2018-10-18 11:22:15','Update',44),(116,1,'2018-10-18 11:22:26','Update',44),(117,1,'2018-10-18 11:24:05','Update',44),(118,1,'2018-10-18 11:25:53','Update',44),(119,1,'2018-10-18 11:27:51','Update',44),(120,1,'2018-10-18 11:27:54','Update',44),(121,1,'2018-10-18 12:18:31','Insert',67);
/*!40000 ALTER TABLE `adminlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alive_s`
--

DROP TABLE IF EXISTS `alive_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alive_s` (
  `aid` int(11) DEFAULT NULL,
  `spec` varchar(50) DEFAULT NULL,
  `gen` varchar(50) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alive_a` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alive_s`
--

LOCK TABLES `alive_s` WRITE;
/*!40000 ALTER TABLE `alive_s` DISABLE KEYS */;
INSERT INTO `alive_s` VALUES (53,'Deer','Chital Deer','2018-10-10 11:07:52',0),(65,'Deer','Chital Deer','2018-10-16 22:02:11',0);
/*!40000 ALTER TABLE `alive_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `animal_id` int(11) NOT NULL,
  `species` varchar(10) NOT NULL,
  `genus` varchar(50) NOT NULL,
  `endangered_S` tinyint(1) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `preg_S` tinyint(1) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `doe` date NOT NULL,
  `feed_count` int(11) NOT NULL,
  `alive` tinyint(1) DEFAULT NULL,
  `injury_S` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'Tiger','Bengal Tiger',1,'Male',0,350,'2018-04-02',90,1,0),(2,'Elephant','Asiatic Elephant',1,'Female',1,5400,'2018-01-02',400,1,0),(3,'Leopard','Indian Leopard',1,'Female',1,100,'2018-01-08',200,1,0),(4,'Ostrich','Common',0,'Male',0,60,'2013-05-03',50,1,0),(5,'Giraffe','Northern Giraffe',0,'Female',0,790,'2012-05-08',34,1,0),(6,'Zebra','Plains Zebra',0,'Male',0,400,'2017-08-15',30,1,0),(7,'Tiger','South China Tiger',1,'Female',0,575,'2018-04-18',230,1,0),(8,'Lion','Asiatic Lion',0,'Female',1,550,'2015-02-17',255,1,0),(9,'Elephant','African Elephant',0,'Male',0,6000,'2013-01-27',200,1,0),(10,'Rhinoceros','White Rhinoceros',1,'Male',0,2300,'2013-02-17',180,1,0),(11,'Ostrich','Common',0,'Female',0,60,'2016-05-03',105,1,0),(12,'Lion','African Lion',0,'Male',0,500,'2015-02-17',170,1,0),(13,'Zebra','Plains Zebra',0,'Female',1,380,'2013-03-25',80,1,0),(14,'Elephant','Asiatic Elephant',1,'Male',0,6100,'2016-01-22',200,1,0),(15,'Ostrich','Common',0,'Male',0,65,'2018-02-13',55,1,0),(16,'Rhinoceros','Black Rhinoceros',1,'Male',0,1400,'2015-12-27',180,1,0),(17,'Rhinoceros','Indian Rhinoceros',1,'Female',1,2100,'2015-12-27',220,1,0),(18,'Tiger','Bengal Tiger',1,'Female',1,320,'2018-04-16',95,1,0),(19,'Zebra','Mountain Zebra',0,'Female',0,280,'2014-12-21',35,1,0),(20,'Deer','Sambar Deer',0,'Male',0,180,'2012-12-21',30,1,0),(21,'Deer','Sambar Deer',0,'Male',0,180,'2012-12-21',30,1,0),(22,'Deer','Chital Deer',0,'Male',0,190,'2012-12-21',35,1,0),(23,'Deer','Sambar Deer',0,'Female',1,190,'2012-12-19',85,1,0),(24,'Deer','Sambar Deer',0,'Female',0,185,'2012-12-19',38,1,0),(25,'Rhinoceros','White Rhinoceros',1,'Male',0,2200,'2014-12-17',180,1,0),(26,'Ostrich','Common',0,'Female',1,60,'2013-05-03',105,1,0),(27,'Deer','Sambar Deer',0,'Female',0,190,'2013-11-01',30,1,0),(28,'Deer','Chital Deer',0,'Female',0,180,'2013-11-01',33,1,0),(29,'Deer','Sambar Deer',0,'Female',1,190,'2013-11-01',80,1,0),(30,'Deer','Sambar Deer',0,'Female',1,190,'2013-11-01',80,1,0),(31,'Deer','Chital Deer',0,'Male',0,180,'2013-11-01',33,1,0),(32,'Deer','Chital Deer',0,'Male',0,180,'2013-11-01',33,1,0),(33,'Deer','Chital Deer',0,'Male',0,185,'2013-11-02',30,1,0),(34,'Deer','Sambar Deer',0,'Male',0,185,'2013-11-02',30,1,1),(35,'Giraffe','Northern Giraffe',0,'Male',0,800,'2012-05-08',35,1,0),(36,'Giraffe','Northern Giraffe',0,'Female',1,820,'2012-05-08',40,1,0),(37,'Lion','African Lion',0,'Male',0,520,'2016-12-21',170,1,0),(38,'Lion','Asiatic Lion',0,'Female',1,520,'2013-12-27',260,1,0),(39,'Lion','Asiatic Lion',0,'Male',1,550,'2013-12-28',265,1,0),(40,'Deer','Chital Deer',0,'Male',0,185,'2015-11-01',35,1,0),(41,'Deer','Chital Deer',0,'Male',0,185,'2015-11-01',35,1,0),(42,'Deer','Chital Deer',0,'Male',0,185,'2015-11-01',35,1,0),(43,'Deer','Chital Deer',0,'Female',1,180,'2015-11-01',80,1,0),(44,'Deer','Sambar Deer',0,'Female',1,170,'2015-11-01',78,1,0),(45,'Tiger','Bengal Tiger',1,'Male',0,370,'2014-12-01',95,1,0),(46,'Tiger','South China Tiger',1,'Male',0,570,'2015-04-18',220,1,0),(47,'Rhinoceros','Indian Rhinoceros',1,'Male',0,2200,'2013-12-27',175,1,0),(48,'Elephant','Asiatic Elephant',1,'Female',1,5900,'2015-04-07',190,1,0),(49,'Monkey','Macaque Monkey',0,'Male',0,2,'2015-04-07',1,1,0),(50,'Monkey','Rheus Macaque Monkey',0,'Male',0,4,'2016-04-07',2,1,0),(51,'Monkey','Rheus Macaque Monkey',0,'Female',1,2,'2016-04-07',2,1,0),(52,'Monkey','Rheus Macaque Monkey',0,'Male',0,2,'2013-04-05',1,1,0),(53,'Zebra','Mountain Zebra',0,'Female',1,270,'2013-11-01',56,1,1),(54,'Elephant','Asiatic Elephant',1,'Female',1,5000,'2013-02-17',240,1,0),(55,'Leopard','Indian Leopard',1,'Female',0,70,'2015-01-18',20,1,0),(56,'Leopard','Indian Leopard',1,'Female',0,81,'2015-01-19',25,1,0),(57,'Leopard','Indian Leopard',1,'Female',0,79,'2015-01-19',25,1,0),(58,'Leopard','Indian Leopard',1,'Female',0,80,'2015-01-19',25,1,0),(59,'Leopard','Indian Leopard',1,'Male',0,100,'2015-01-19',25,1,0),(60,'Deer','Chital Deer',0,'Female',0,90,'2015-11-01',33,1,0),(61,'Deer','Chital Deer',0,'Female',1,99,'2015-11-01',70,1,1),(62,'Deer','Sambar Deer',0,'Female',0,105,'2013-11-02',70,1,0),(63,'Deer','Sambar Deer',0,'Male',0,195,'2014-12-02',80,1,0),(64,'Lion','Asiatic Lion',0,'Male',0,555,'2011-11-17',260,1,0),(65,'Deer','Chital Deer',0,'Male',0,80,'2017-11-01',15,0,1),(66,'Tiger','South China Tiger',1,'Male',0,570,'2016-04-18',235,1,1),(67,'Lion','Asiatic Lion',0,'Male',0,500,'2013-11-17',260,1,1);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t6 BEFORE INSERT ON animal FOR EACH ROW
BEGIN
IF new.sex = 'Male' THEN
SET new.preg_S = 0;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t1 BEFORE UPDATE ON animal FOR EACH ROW
BEGIN
IF (NEW.preg_S = 1 AND NEW.species = 'Tiger') THEN
SET NEW.feed_count = OLD.feed_count + 50;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Lion') THEN
SET NEW.feed_count = OLD.feed_count + 50;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Leopard') THEN
SET NEW.feed_count = OLD.feed_count + 50;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Elephant') THEN
SET NEW.feed_count = OLD.feed_count + 70;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Rhinoceros') THEN
SET NEW.feed_count = OLD.feed_count + 70;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Giraffe') THEN
SET NEW.feed_count = OLD.feed_count + 20;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Zebra') THEN
SET NEW.feed_count = OLD.feed_count + 20;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Deer') THEN
SET NEW.feed_count = OLD.feed_count + 20;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Ostrich') THEN
SET NEW.feed_count = OLD.feed_count + 5;
ELSEIF (NEW.preg_S = 1 AND NEW.species = 'Monkey') THEN
SET NEW.feed_count = OLD.feed_count + 5;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t7 BEFORE UPDATE ON animal FOR EACH ROW
BEGIN
IF NEW.sex = 'Male' THEN 
SET NEW.preg_S = 0;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t2 AFTER UPDATE ON animal FOR EACH ROW
BEGIN
IF (new.preg_S = 1) THEN
INSERT INTO pt(aid,ps,ts,spec,gen)
VALUES(new.animal_id,1,NOW(),new.species,new.genus);
INSERT INTO sct(eid,aid_,sch)
SELECT employee.employee_id,new.animal_id,"Animal Pregnant, Visit ASAP"
FROM employee,animal
WHERE employee.job = "Guard" ORDER BY RAND() LIMIT 1;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t3 AFTER UPDATE ON animal FOR EACH ROW
BEGIN
IF (new.injury_S = 1) THEN
INSERT INTO it(aid,ins,ts,spec,gen)
VALUES(new.animal_id,1,NOW(),new.species,new.genus);
INSERT INTO sct(eid,aid_,sch)
SELECT employee.employee_id,new.animal_id,"Animal injured, Visit ASAP"
FROM employee,animal
WHERE employee.job = "Vet" ORDER BY RAND() LIMIT 1;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t5 AFTER UPDATE ON animal FOR EACH ROW
BEGIN
IF (new.alive = 0) THEN
INSERT INTO alive_S(aid,spec,gen,ts,alive_a)
VALUES(new.animal_id,new.species,new.genus,NOW(),0);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `animal_injury`
--

DROP TABLE IF EXISTS `animal_injury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal_injury` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`srno`),
  KEY `aid` (`aid`),
  CONSTRAINT `animal_injury_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_injury`
--

LOCK TABLES `animal_injury` WRITE;
/*!40000 ALTER TABLE `animal_injury` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal_injury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `job` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phono` varchar(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Shardul','Male','Guard','1998-03-23','Basant Bahar, Baner-Pune','9623165225',100000),(1001,'Ganesh','Male','Guard','1968-10-10','Basant Bahar, Baner-Pune','7878787878',25000),(1002,'Gaitonde','Male','Guard','1970-10-23','Camelia, Baner - Pune','9898989898',23000),(1003,'Raj','Male','Guard','1978-10-23','24K Gliterati - Pimple Gurav Pune','7676767676',30000),(1004,'Karan','Male','Guard','1968-10-23','MontVert - Pashan Pune','9822416956',38000),(1005,'Vedanti','Female','Guard','1981-10-23','Kumar Priyadarshan - Pashan Pune','9822062344',35000),(2001,'Stephanie','Male','Vet','2018-10-19','Sylvan Heights, Aundh - Pune','9623165335',75500),(2002,'Richard','Male','Vet','1975-02-13','Mirabel Tower, Bawdhan - Pune','8922065781',90000),(3001,'John','Male','PAM','1981-02-13','Nyati Complex, Bawdhan - Pune','8783746387',200000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_pam`
--

DROP TABLE IF EXISTS `employee_pam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_pam` (
  `area` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_pam`
--

LOCK TABLES `employee_pam` WRITE;
/*!40000 ALTER TABLE `employee_pam` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_pam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `guard`
--

DROP TABLE IF EXISTS `guard`;
/*!50001 DROP VIEW IF EXISTS `guard`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `guard` AS SELECT 
 1 AS `animal_id`,
 1 AS `feed_count`,
 1 AS `alive`,
 1 AS `injury_S`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `it`
--

DROP TABLE IF EXISTS `it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it` (
  `aid` int(11) DEFAULT NULL,
  `ins` tinyint(1) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spec` varchar(50) DEFAULT NULL,
  `gen` varchar(50) DEFAULT NULL,
  KEY `aid` (`aid`),
  CONSTRAINT `it_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it`
--

LOCK TABLES `it` WRITE;
/*!40000 ALTER TABLE `it` DISABLE KEYS */;
INSERT INTO `it` VALUES (34,1,'2018-10-15 06:38:57','Deer','Sambar Deer'),(65,1,'2018-10-16 20:30:01','Deer','Chital Deer'),(65,1,'2018-10-16 20:30:14','Deer','Chital Deer'),(65,1,'2018-10-16 20:30:43','Deer','Chital Deer'),(65,1,'2018-10-16 20:30:48','Deer','Chital Deer'),(65,1,'2018-10-16 21:57:57','Deer','Chital Deer'),(65,1,'2018-10-16 22:02:11','Deer','Chital Deer'),(61,1,'2018-10-18 11:04:17','Deer','Chital Deer');
/*!40000 ALTER TABLE `it` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','password'),('guard1','password'),('guard2','password'),('guard3','password'),('guard4','password'),('guard5','password'),('vet1','password'),('vet2','password'),('pam1','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poacher`
--

DROP TABLE IF EXISTS `poacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poacher` (
  `fine` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  KEY `aid` (`aid`),
  KEY `eid` (`eid`),
  CONSTRAINT `poacher_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `animal` (`animal_id`),
  CONSTRAINT `poacher_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poacher`
--

LOCK TABLES `poacher` WRITE;
/*!40000 ALTER TABLE `poacher` DISABLE KEYS */;
INSERT INTO `poacher` VALUES (2000,65,3001,'Satwik');
/*!40000 ALTER TABLE `poacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt`
--

DROP TABLE IF EXISTS `pt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt` (
  `aid` int(11) DEFAULT NULL,
  `ps` tinyint(1) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spec` varchar(50) DEFAULT NULL,
  `gen` varchar(50) DEFAULT NULL,
  `due_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `aid` (`aid`),
  CONSTRAINT `pt_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt`
--

LOCK TABLES `pt` WRITE;
/*!40000 ALTER TABLE `pt` DISABLE KEYS */;
INSERT INTO `pt` VALUES (43,1,'2018-10-18 10:34:20','Deer','Chital Deer','2019-05-18 10:33:50'),(3,1,'2018-10-18 10:36:44','Leopard','Indian Leopard','2019-02-10 14:44:21'),(54,1,'2018-10-18 10:34:46','Elephant','Asiatic Elephant','2020-07-10 14:43:45'),(54,1,'2018-10-18 10:34:46','Elephant','Asiatic Elephant','2020-07-10 14:43:45'),(30,1,'2018-10-18 10:34:20','Deer','Sambar Deer','2019-05-18 10:33:50'),(29,1,'2018-10-18 10:34:20','Deer','Sambar Deer','2019-05-18 10:33:50'),(26,1,'2018-10-18 10:36:00','Ostrich','Common','2018-12-11 14:01:34'),(17,1,'2018-10-18 10:37:33','Rhinoceros','Indian Rhinoceros','2020-02-11 18:58:05'),(48,1,'2018-10-18 10:34:46','Elephant','Asiatic Elephant','2020-07-11 19:30:24'),(61,1,'2018-10-18 11:04:17','Deer','Chital Deer','2018-10-18 11:04:17'),(44,1,'2018-10-18 11:22:26','Deer','Sambar Deer','2018-10-18 11:22:26'),(44,1,'2018-10-18 11:25:52','Deer','Sambar Deer','2018-10-18 11:25:52'),(44,1,'2018-10-18 11:27:53','Deer','Sambar Deer','2018-10-18 11:27:53');
/*!40000 ALTER TABLE `pt` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER t4 BEFORE INSERT ON pt FOR EACH ROW
BEGIN
IF (NEW.spec = 'Deer') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 7 MONTH);
ELSEIF (NEW.spec = 'Elephant') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 21 MONTH);
ELSEIF (NEW.spec = 'Giraffe') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 15 MONTH);
ELSEIF (NEW.spec = 'Monkey') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 5 MONTH);
ELSEIF (NEW.spec = 'Zebra') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 13 MONTH);
ELSEIF (NEW.spec = 'Tiger') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 4 MONTH);
ELSEIF (NEW.spec = 'Lion') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 4 MONTH);
ELSEIF (NEW.spec = 'Leopard') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 4 MONTH);
ELSEIF (NEW.spec = 'Ostrich') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 2 MONTH);
ELSEIF (NEW.spec = 'Rhinoceros') THEN
SET NEW.due_date = DATE_ADD(NEW.ts, INTERVAL 16 MONTH);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sct`
--

DROP TABLE IF EXISTS `sct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sct` (
  `eid` int(11) DEFAULT NULL,
  `sch` varchar(50) DEFAULT NULL,
  `aid_` int(11) DEFAULT NULL,
  KEY `sct_ibfk_1` (`eid`),
  KEY `aid_` (`aid_`),
  CONSTRAINT `sct_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `sct_ibfk_2` FOREIGN KEY (`aid_`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sct`
--

LOCK TABLES `sct` WRITE;
/*!40000 ALTER TABLE `sct` DISABLE KEYS */;
INSERT INTO `sct` VALUES (1005,'Animal Pregnant, Visit ASAP',48),(2001,'Animal injured, Visit ASAP',34),(2001,'Animal injured, Visit ASAP',65),(2002,'Animal injured, Visit ASAP',65),(2002,'Animal injured, Visit ASAP',65),(2001,'Animal injured, Visit ASAP',65),(2002,'Animal injured, Visit ASAP',65),(2001,'Animal injured, Visit ASAP',65),(1003,'Animal Pregnant, Visit ASAP',61),(2002,'Animal injured, Visit ASAP',61),(1001,'Animal Pregnant, Visit ASAP',44),(1005,'Animal Pregnant, Visit ASAP',44),(1001,'Animal Pregnant, Visit ASAP',44);
/*!40000 ALTER TABLE `sct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vet`
--

DROP TABLE IF EXISTS `vet`;
/*!50001 DROP VIEW IF EXISTS `vet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vet` AS SELECT 
 1 AS `animal_id`,
 1 AS `endangered_S`,
 1 AS `sex`,
 1 AS `preg_S`,
 1 AS `weight`,
 1 AS `feed_count`,
 1 AS `alive`,
 1 AS `injury_S`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'wildlife'
--

--
-- Dumping routines for database 'wildlife'
--

--
-- Final view structure for view `guard`
--

/*!50001 DROP VIEW IF EXISTS `guard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guard` AS select `animal`.`animal_id` AS `animal_id`,`animal`.`feed_count` AS `feed_count`,`animal`.`alive` AS `alive`,`animal`.`injury_S` AS `injury_S` from `animal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vet`
--

/*!50001 DROP VIEW IF EXISTS `vet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vet` AS select `animal`.`animal_id` AS `animal_id`,`animal`.`endangered_S` AS `endangered_S`,`animal`.`sex` AS `sex`,`animal`.`preg_S` AS `preg_S`,`animal`.`weight` AS `weight`,`animal`.`feed_count` AS `feed_count`,`animal`.`alive` AS `alive`,`animal`.`injury_S` AS `injury_S` from `animal` */;
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

-- Dump completed on 2018-10-19 19:42:56
