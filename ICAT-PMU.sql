-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: icat_pmu
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `EmissionReductionDraftData`
--

DROP TABLE IF EXISTS `EmissionReductionDraftData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmissionReductionDraftData` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `baseYear` varchar(255) NOT NULL,
  `baseYearEmission` int NOT NULL,
  `targetYear` varchar(255) NOT NULL,
  `targetYearEmission` int NOT NULL,
  `unconditionaltco2` int DEFAULT NULL,
  `conditionaltco2` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `sectorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_903d3bbe21046e31495e9a0ec03` (`countryId`),
  KEY `FK_3aec1cc3c2511fc0edb63dd6b21` (`sectorId`),
  CONSTRAINT `FK_3aec1cc3c2511fc0edb63dd6b21` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`),
  CONSTRAINT `FK_903d3bbe21046e31495e9a0ec03` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmissionReductionDraftData`
--

LOCK TABLES `EmissionReductionDraftData` WRITE;
/*!40000 ALTER TABLE `EmissionReductionDraftData` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmissionReductionDraftData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicability`
--

DROP TABLE IF EXISTS `applicability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicability` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `uniqueIdentification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicability`
--

LOCK TABLES `applicability` WRITE;
/*!40000 ALTER TABLE `applicability` DISABLE KEYS */;
INSERT INTO `applicability` VALUES ('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,1,'Estimates the impact of fuel pricing policies on GHG emissions in the road transport sector','Estimates the impact of fuel pricing policies on GHG emissions in the road transport sector',1,'99872dd9-441e-4929-ac02-a5428c17b856'),('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,2,'Reduce traffic congestion','Reduce traffic congestion',2,'ac7d1e9a-8d71-464a-b8de-c433bdb023fa'),('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,3,'Shift passenger from road to rail','Shift passenger from road to rail',3,'271dcb5a-2360-4abc-88b2-8412d6e3e9bc'),('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,4,'Introduce vehicles with lower emissions per kilometer','Introduce vehicles with lower emissions per kilometer',4,'2d3a77a6-4c81-46d8-86d1-5a4df742e9c2'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,5,'New electric and/or hybrid vehicles that displace the use of fossil fuel vehicles',NULL,5,'2e29f1591faa428a8ccaedf235144d07'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,6,'Shift cargo among trucks barges, ships and trains',NULL,6,'2256a69208254ccfb0eb5b95372096e2'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,7,'Shift pasengers from private to public vehicles','Shift pasengers from private to public vehicles',7,'9b538ba19d6c47cfaa49db5666f216a6'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,8,'Retrofits that improve engine efficiency','Retrofits that improve engine efficiency',8,'9acbfe5e23a94719b8572c59498f7f48'),('1',NULL,'1',NULL,0,9,'Project activities that establish and operate an MRTS without feeder lines','Project activities that establish and operate an MRTS without feeder lines',9,'abe4e32a-cf55-4bc1-af2a-a3620e3c93e9'),('',NULL,'',NULL,0,10,'Shift in mode of transportation of liquid fuels from road transportation using trucks to pipeline transportation','Shift in mode of transportation of liquid fuels from road transportation using trucks to pipeline transportation',10,'25bf8ecd-0ffb-46d2-9944-e655157f23a5'),('',NULL,'',NULL,0,11,'Displacement of diesel with bio-diesel','Displacement of diesel with bio-diesel',11,'9577d1b8-b999-43a6-b9cf-7bca0343d18a'),('',NULL,'',NULL,0,12,'Production, sale and consumption of blended biodiesel used as fuel','Production, sale and consumption of blended biodiesel used as fuel',12,'5adca21c-83e4-4129-91bd-dfe409e1a7b6'),('',NULL,'',NULL,0,13,'Reduce traffic congestion','Reduce traffic congestion',1,'7b16af33-1d0b-40dc-a62e-b86b2538ae20'),('',NULL,'',NULL,0,14,'Shift passengers from private to public vehicles (road)','Shift passengers from private to public vehicles (road)',1,'fdcbaeaa-7571-4ff0-9fb6-fd665650a346');
/*!40000 ALTER TABLE `applicability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `actionStatus` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7ae389e858ad6f2c0c63112e387` (`userId`),
  CONSTRAINT `FK_7ae389e858ad6f2c0c63112e387` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES ('-','2022-06-01 05:47:58','-','2022-06-01 05:47:58',0,186,'Dr. Henning','World Resource Institution Institution created','Institution Created','Created','ICAT Admin',40),('-','2022-06-01 05:49:25','-','2022-06-01 05:49:25',0,187,'Dr. Henning','ISPRA Institution created','Institution Created','Created','ICAT Admin',40),('-','2022-06-01 05:52:00','-','2022-06-01 05:52:00',0,188,'Dr. Henning','ghg Management Institute Institution created','Institution Created','Created','ICAT Admin',40),('-','2022-06-01 05:53:22','-','2022-06-01 05:53:22',0,189,'Dr. Henning','United Nations System Staff College Institution created','Institution Created','Created','ICAT Admin',40),('-','2022-06-01 05:55:41','-','2022-06-01 05:55:41',0,190,'Dr. Henning','Aether Institution created','Institution Created','Created','ICAT Admin',40),('-','2022-06-01 06:16:39','-','2022-06-01 06:16:39',0,191,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-01 06:19:18','-','2022-06-01 06:19:18',0,192,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-01 08:44:58','-','2022-06-01 08:44:58',0,193,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-01 08:47:57','-','2022-06-01 08:47:57',0,194,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-01 08:56:41','-','2022-06-01 08:56:41',0,195,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-01 09:00:45','-','2022-06-01 09:00:45',0,196,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-01 09:03:42','-','2022-06-01 09:03:42',0,197,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-01 09:29:08','-','2022-06-01 09:29:08',0,198,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-01 11:19:19','-','2022-06-01 11:19:19',0,199,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-02 03:38:05','-','2022-06-02 03:38:05',0,200,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-02 13:29:51','-','2022-06-02 13:29:51',0,201,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-02 13:32:45','-','2022-06-02 13:32:45',0,202,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-03 05:39:10','-','2022-06-03 05:39:10',0,203,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-04 07:54:04','-','2022-06-04 07:54:04',0,204,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-06 08:59:24','-','2022-06-06 08:59:24',0,205,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-06 09:01:22','-','2022-06-06 09:01:22',0,206,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-06 09:01:49','-','2022-06-06 09:01:49',0,207,'Dr. Henning','Nigeria Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-06-06 09:02:26','-','2022-06-06 09:02:26',0,208,'Dr. Henning','Turkmenistan Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-06-06 09:32:03','-','2022-06-06 09:32:03',0,209,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 05:28:23','-','2022-06-08 05:28:23',0,210,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 06:48:06','-','2022-06-08 06:48:06',0,211,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 07:03:32','-','2022-06-08 07:03:32',0,212,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 07:05:06','-','2022-06-08 07:05:06',0,213,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 07:19:38','-','2022-06-08 07:19:38',0,214,'Dr. Henning','Viet Nam Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-06-08 07:47:26','-','2022-06-08 07:47:26',0,215,'Dr. Henning','Pasan User Created','User Created','Created','ICAT Admin',40),('-','2022-06-08 08:36:27','-','2022-06-08 08:36:27',0,216,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 09:14:17','-','2022-06-08 09:14:17',0,217,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:41:51','-','2022-06-08 09:41:51',0,218,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:49:39','-','2022-06-08 09:49:39',0,219,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 09:51:03','-','2022-06-08 09:51:03',0,220,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:53:00','-','2022-06-08 09:53:00',0,221,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:54:29','-','2022-06-08 09:54:29',0,222,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:54:34','-','2022-06-08 09:54:34',0,223,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:54:53','-','2022-06-08 09:54:53',0,224,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 09:55:49','-','2022-06-08 09:55:49',0,225,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 10:09:13','-','2022-06-08 10:09:13',0,226,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 10:09:22','-','2022-06-08 10:09:22',0,227,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 10:09:33','-','2022-06-08 10:09:33',0,228,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 10:09:42','-','2022-06-08 10:09:42',0,229,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 10:27:25','-','2022-06-08 10:27:25',0,230,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 10:29:09','-','2022-06-08 10:29:09',0,231,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 10:29:23','-','2022-06-08 10:29:23',0,232,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 15:55:11','-','2022-06-08 15:55:11',0,233,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 15:55:49','-','2022-06-08 15:55:49',0,234,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 15:56:04','-','2022-06-08 15:56:04',0,235,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 15:59:34','-','2022-06-08 15:59:34',0,236,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 16:16:16','-','2022-06-08 16:16:16',0,237,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 16:30:21','-','2022-06-08 16:30:21',0,238,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 17:35:25','-','2022-06-08 17:35:25',0,239,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-08 18:59:46','-','2022-06-08 18:59:46',0,240,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-08 19:33:47','-','2022-06-08 19:33:47',0,241,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-09 03:34:17','-','2022-06-09 03:34:17',0,242,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-09 03:38:04','-','2022-06-09 03:38:04',0,243,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-09 03:49:39','-','2022-06-09 03:49:39',0,244,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-09 06:51:12','-','2022-06-09 06:51:12',0,245,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-10 04:09:10','-','2022-06-10 04:09:10',0,246,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-10 06:21:09','-','2022-06-10 06:21:09',0,247,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-10 09:30:38','-','2022-06-10 09:30:38',0,248,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-13 03:29:47','-','2022-06-13 03:29:47',0,249,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-15 08:39:46','-','2022-06-15 08:39:46',0,250,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 04:44:30','-','2022-06-17 04:44:30',0,251,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:05:21','-','2022-06-17 05:05:21',0,252,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:05:25','-','2022-06-17 05:05:25',0,253,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:05:29','-','2022-06-17 05:05:29',0,254,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:06:00','-','2022-06-17 05:06:00',0,255,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:06:24','-','2022-06-17 05:06:24',0,256,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-17 05:06:51','-','2022-06-17 05:06:51',0,257,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:08:26','-','2022-06-17 05:08:26',0,258,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:09:01','-','2022-06-17 05:09:01',0,259,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:09:03','-','2022-06-17 05:09:03',0,260,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:10:01','-','2022-06-17 05:10:01',0,261,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-17 05:11:26','-','2022-06-17 05:11:26',0,262,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-17 05:11:32','-','2022-06-17 05:11:32',0,263,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-06-17 05:14:37','-','2022-06-17 05:14:37',0,264,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:15:08','-','2022-06-17 05:15:08',0,265,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:17:47','-','2022-06-17 05:17:47',0,266,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:18:03','-','2022-06-17 05:18:03',0,267,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-17 05:30:08','-','2022-06-17 05:30:08',0,268,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-20 05:11:22','-','2022-06-20 05:11:22',0,269,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-22 02:59:18','-','2022-06-22 02:59:18',0,270,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-24 09:15:35','-','2022-06-24 09:15:35',0,271,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-27 11:51:50','-','2022-06-27 11:51:50',0,272,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-06-28 11:03:58','-','2022-06-28 11:03:58',0,273,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-06 13:52:14','-','2022-07-06 13:52:14',0,274,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-06 13:52:35','-','2022-07-06 13:52:35',0,275,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-06 13:52:39','-','2022-07-06 13:52:39',0,276,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-06 13:57:43','-','2022-07-06 13:57:43',0,277,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-06 13:58:30','-','2022-07-06 13:58:30',0,278,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-06 13:59:17','-','2022-07-06 13:59:17',0,279,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-06 14:34:31','-','2022-07-06 14:34:31',0,280,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-06 14:35:30','-','2022-07-06 14:35:30',0,281,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-06 16:25:44','-','2022-07-06 16:25:44',0,282,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-07 11:52:34','-','2022-07-07 11:52:34',0,283,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-08 08:30:44','-','2022-07-08 08:30:44',0,284,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-08 08:58:25','-','2022-07-08 08:58:25',0,285,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-08 09:09:47','-','2022-07-08 09:09:47',0,286,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-08 10:06:09','-','2022-07-08 10:06:09',0,287,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-09 05:35:47','-','2022-07-09 05:35:47',0,288,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-09 05:38:24','-','2022-07-09 05:38:24',0,289,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-09 06:02:48','-','2022-07-09 06:02:48',0,290,'Hak','dr.hak.mao25@gmail.com Is Logged','User Logged','Logged','Country Admin',68),('-','2022-07-09 06:02:49','-','2022-07-09 06:02:49',0,291,'Hak','dr.hak.mao25@gmail.com Is Logged','User Logged','Logged','Country Admin',68),('-','2022-07-09 06:02:52','-','2022-07-09 06:02:52',0,292,'Hak','dr.hak.mao25@gmail.com Is Logged','User Logged','Logged','Country Admin',68),('-','2022-07-11 03:48:31','-','2022-07-11 03:48:31',0,293,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-11 03:58:28','-','2022-07-11 03:58:28',0,294,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-11 04:22:05','-','2022-07-11 04:22:05',0,295,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-11 05:10:13','-','2022-07-11 05:10:13',0,296,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-11 05:46:50','-','2022-07-11 05:46:50',0,297,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-12 10:11:32','-','2022-07-12 10:11:32',0,298,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-12 10:46:19','-','2022-07-12 10:46:19',0,299,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-12 10:51:26','-','2022-07-12 10:51:26',0,300,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-14 03:58:02','-','2022-07-14 03:58:02',0,301,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-15 12:04:30','-','2022-07-15 12:04:30',0,302,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-19 04:58:29','-','2022-07-19 04:58:29',0,303,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-19 05:01:18','-','2022-07-19 05:01:18',0,304,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-19 07:52:30','-','2022-07-19 07:52:30',0,305,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-19 08:55:12','-','2022-07-19 08:55:12',0,306,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-19 09:08:15','-','2022-07-19 09:08:15',0,307,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-19 09:08:26','-','2022-07-19 09:08:26',0,308,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-20 03:36:07','-','2022-07-20 03:36:07',0,309,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 04:02:45','-','2022-07-20 04:02:45',0,310,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 04:05:00','-','2022-07-20 04:05:00',0,311,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 04:16:23','-','2022-07-20 04:16:23',0,312,'Dr. Henning','A&B_Country User Created','User Created','Created','ICAT Admin',40),('-','2022-07-20 04:21:34','-','2022-07-20 04:21:34',0,313,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 04:43:10','-','2022-07-20 04:43:10',0,314,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 04:44:00','-','2022-07-20 04:44:00',0,315,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 04:49:03','-','2022-07-20 04:49:03',0,316,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 05:04:25','-','2022-07-20 05:04:25',0,317,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 05:22:49','-','2022-07-20 05:22:49',0,318,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 05:44:05','-','2022-07-20 05:44:05',0,319,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 05:47:49','-','2022-07-20 05:47:49',0,320,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 05:48:13','-','2022-07-20 05:48:13',0,321,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 05:53:23','-','2022-07-20 05:53:23',0,322,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-20 06:11:29','-','2022-07-20 06:11:29',0,323,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 06:17:42','-','2022-07-20 06:17:42',0,324,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 06:19:21','-','2022-07-20 06:19:21',0,325,'Dr. Henning','A&B-test User Created','User Created','Created','ICAT Admin',40),('-','2022-07-20 07:13:35','-','2022-07-20 07:13:35',0,326,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 07:19:09','-','2022-07-20 07:19:09',0,327,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 07:29:11','-','2022-07-20 07:29:11',0,328,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 07:37:27','-','2022-07-20 07:37:27',0,329,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 08:03:28','-','2022-07-20 08:03:28',0,330,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 08:46:22','-','2022-07-20 08:46:22',0,331,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 09:33:12','-','2022-07-20 09:33:12',0,332,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 09:38:02','-','2022-07-20 09:38:02',0,333,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 09:38:02','-','2022-07-20 09:38:02',0,334,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 10:03:14','-','2022-07-20 10:03:14',0,335,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 11:39:16','-','2022-07-20 11:39:16',0,336,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 11:51:36','-','2022-07-20 11:51:36',0,337,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 12:00:36','-','2022-07-20 12:00:36',0,338,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 12:02:19','-','2022-07-20 12:02:19',0,339,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 12:42:28','-','2022-07-20 12:42:28',0,340,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-20 16:02:12','-','2022-07-20 16:02:12',0,341,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-21 04:18:16','-','2022-07-21 04:18:16',0,342,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-22 07:44:07','-','2022-07-22 07:44:07',0,343,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-22 11:06:00','-','2022-07-22 11:06:00',0,344,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-22 11:06:20','-','2022-07-22 11:06:20',0,345,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 06:06:05','-','2022-07-25 06:06:05',0,346,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 06:07:29','-','2022-07-25 06:07:29',0,347,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 06:09:06','-','2022-07-25 06:09:06',0,348,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 07:35:44','-','2022-07-25 07:35:44',0,349,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 09:02:37','-','2022-07-25 09:02:37',0,350,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 09:04:54','-','2022-07-25 09:04:54',0,351,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 09:05:05','-','2022-07-25 09:05:05',0,352,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 09:25:16','-','2022-07-25 09:25:16',0,353,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 09:58:44','-','2022-07-25 09:58:44',0,354,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 10:52:03','-','2022-07-25 10:52:03',0,355,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 11:29:05','-','2022-07-25 11:29:05',0,356,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 11:34:41','-','2022-07-25 11:34:41',0,357,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-25 11:35:38','-','2022-07-25 11:35:38',0,358,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 11:54:58','-','2022-07-25 11:54:58',0,359,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 11:55:04','-','2022-07-25 11:55:04',0,360,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-25 11:55:15','-','2022-07-25 11:55:15',0,361,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-25 12:51:06','-','2022-07-25 12:51:06',0,362,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-25 12:51:19','-','2022-07-25 12:51:19',0,363,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-26 04:39:09','-','2022-07-26 04:39:09',0,364,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-26 09:09:13','-','2022-07-26 09:09:13',0,365,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-26 09:44:20','-','2022-07-26 09:44:20',0,366,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-26 09:44:42','-','2022-07-26 09:44:42',0,367,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-26 09:45:06','-','2022-07-26 09:45:06',0,368,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-26 09:45:17','-','2022-07-26 09:45:17',0,369,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-26 10:22:56','-','2022-07-26 10:22:56',0,370,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-27 07:24:37','-','2022-07-27 07:24:37',0,371,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-27 08:20:48','-','2022-07-27 08:20:48',0,372,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-27 09:14:24','-','2022-07-27 09:14:24',0,373,'Dr. Henning','ISPRA Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:14:43','-','2022-07-27 09:14:43',0,374,'Dr. Henning','ISPRA Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:15:18','-','2022-07-27 09:15:18',0,375,'Dr. Henning','ISPRA Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:18:56','-','2022-07-27 09:18:56',0,376,'Dr. Henning','UNEP CC Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:19:09','-','2022-07-27 09:19:09',0,377,'Dr. Henning','UNEP CCC Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:19:19','-','2022-07-27 09:19:19',0,378,'Dr. Henning','UNEP CCC Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:44:36','-','2022-07-27 09:44:36',0,379,'Dr. Henning','UNEP CCC Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:45:45','-','2022-07-27 09:45:45',0,380,'Dr. Henning','ISPRA Institution Updated','Institution Updated','Updated','ICAT Admin',40),('-','2022-07-27 09:46:27','-','2022-07-27 09:46:27',0,381,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-27 09:48:34','-','2022-07-27 09:48:34',0,382,'Dr. Henning','PMU Insitution 1 Institution created','Institution Created','Created','ICAT Admin',40),('-','2022-07-27 09:55:34','-','2022-07-27 09:55:34',0,383,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-27 11:17:46','-','2022-07-27 11:17:46',0,384,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-27 11:27:02','-','2022-07-27 11:27:02',0,385,'Dr. Henning','Hasitha User Created','User Created','Created','ICAT Admin',40),('-','2022-07-27 11:31:04','-','2022-07-27 11:31:04',0,386,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-27 11:48:43','-','2022-07-27 11:48:43',0,387,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 03:23:58','-','2022-07-28 03:23:58',0,388,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 03:44:12','-','2022-07-28 03:44:12',0,389,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 03:46:24','-','2022-07-28 03:46:24',0,390,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 03:48:41','-','2022-07-28 03:48:41',0,391,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 03:49:31','-','2022-07-28 03:49:31',0,392,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 03:50:35','-','2022-07-28 03:50:35',0,393,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 04:18:07','-','2022-07-28 04:18:07',0,394,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:18:16','-','2022-07-28 04:18:16',0,395,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:18:52','-','2022-07-28 04:18:52',0,396,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:38:52','-','2022-07-28 04:38:52',0,397,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:39:14','-','2022-07-28 04:39:14',0,398,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 04:39:58','-','2022-07-28 04:39:58',0,399,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:43:49','-','2022-07-28 04:43:49',0,400,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:43:53','-','2022-07-28 04:43:53',0,401,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 04:45:32','-','2022-07-28 04:45:32',0,402,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 05:49:34','-','2022-07-28 05:49:34',0,403,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 05:51:25','-','2022-07-28 05:51:25',0,404,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 05:51:36','-','2022-07-28 05:51:36',0,405,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 05:51:53','-','2022-07-28 05:51:53',0,406,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 05:52:56','-','2022-07-28 05:52:56',0,407,'Shyamika','Nemo User Created','User Created','Created','PMU Admin',41),('-','2022-07-28 05:53:17','-','2022-07-28 05:53:17',0,408,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 05:54:30','-','2022-07-28 05:54:30',0,409,'Nemo','ritiqy@decabg.eu Is Logged','User Logged','Logged','PMU User',75),('-','2022-07-28 06:13:33','-','2022-07-28 06:13:33',0,410,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 06:33:52','-','2022-07-28 06:33:52',0,411,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 06:37:57','-','2022-07-28 06:37:57',0,412,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 06:38:20','-','2022-07-28 06:38:20',0,413,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 06:38:43','-','2022-07-28 06:38:43',0,414,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 06:39:13','-','2022-07-28 06:39:13',0,415,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 06:40:25','-','2022-07-28 06:40:25',0,416,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 06:43:39','-','2022-07-28 06:43:39',0,417,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 06:44:27','-','2022-07-28 06:44:27',0,418,'Nemo','ritiqy@decabg.eu Is Logged','User Logged','Logged','PMU User',75),('-','2022-07-28 06:44:54','-','2022-07-28 06:44:54',0,419,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 06:45:34','-','2022-07-28 06:45:34',0,420,'Nemo','ritiqy@decabg.eu Is Logged','User Logged','Logged','PMU User',75),('-','2022-07-28 06:46:01','-','2022-07-28 06:46:01',0,421,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-28 06:47:11','-','2022-07-28 06:47:11',0,422,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 08:14:50','-','2022-07-28 08:14:50',0,423,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-28 10:01:24','-','2022-07-28 10:01:24',0,424,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-07-29 09:01:58','-','2022-07-29 09:01:58',0,425,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-29 10:57:41','-','2022-07-29 10:57:41',0,426,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-29 11:04:51','-','2022-07-29 11:04:51',0,427,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-29 11:15:19','-','2022-07-29 11:15:19',0,428,'Hak','dr.hak.mao25@gmail.com Is Logged','User Logged','Logged','Country Admin',68),('-','2022-07-29 11:15:58','-','2022-07-29 11:15:58',0,429,'Hak','dr.hak.mao25@gmail.com Is Logged','User Logged','Logged','Country Admin',68),('-','2022-07-29 12:01:25','-','2022-07-29 12:01:25',0,430,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-29 12:03:07','-','2022-07-29 12:03:07',0,431,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-07-29 12:07:55','-','2022-07-29 12:07:55',0,432,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-01 06:28:34','-','2022-08-01 06:28:34',0,433,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-01 07:29:37','-','2022-08-01 07:29:37',0,434,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-01 07:33:20','-','2022-08-01 07:33:20',0,435,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-01 07:37:19','-','2022-08-01 07:37:19',0,436,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-01 07:45:04','-','2022-08-01 07:45:04',0,437,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-01 07:45:39','-','2022-08-01 07:45:39',0,438,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-01 07:45:41','-','2022-08-01 07:45:41',0,439,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-01 07:45:41','-','2022-08-01 07:45:41',0,440,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-01 07:46:33','-','2022-08-01 07:46:33',0,441,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-01 07:46:50','-','2022-08-01 07:46:50',0,442,'Nemo','ritiqy@decabg.eu Is Logged','User Logged','Logged','PMU User',75),('-','2022-08-02 03:35:15','-','2022-08-02 03:35:15',0,443,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 03:53:34','-','2022-08-02 03:53:34',0,444,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 03:58:01','-','2022-08-02 03:58:01',0,445,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 05:17:18','-','2022-08-02 05:17:18',0,446,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:08:49','-','2022-08-02 09:08:49',0,447,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:17:05','-','2022-08-02 09:17:05',0,448,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:17:24','-','2022-08-02 09:17:24',0,449,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-02 09:20:03','-','2022-08-02 09:20:03',0,450,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:20:32','-','2022-08-02 09:20:32',0,451,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-02 09:28:32','-','2022-08-02 09:28:32',0,452,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:32:36','-','2022-08-02 09:32:36',0,453,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:37:32','-','2022-08-02 09:37:32',0,454,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 09:59:35','-','2022-08-02 09:59:35',0,455,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 10:18:03','-','2022-08-02 10:18:03',0,456,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 10:21:33','-','2022-08-02 10:21:33',0,457,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 10:30:35','-','2022-08-02 10:30:35',0,458,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 10:31:14','-','2022-08-02 10:31:14',0,459,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 10:33:09','-','2022-08-02 10:33:09',0,460,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 12:15:49','-','2022-08-02 12:15:49',0,461,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 12:33:15','-','2022-08-02 12:33:15',0,462,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 15:33:03','-','2022-08-02 15:33:03',0,463,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-02 15:35:31','-','2022-08-02 15:35:31',0,464,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-03 03:35:37','-','2022-08-03 03:35:37',0,465,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-03 05:17:20','-','2022-08-03 05:17:20',0,466,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-08-03 06:11:36','-','2022-08-03 06:11:36',0,467,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-03 06:13:52','-','2022-08-03 06:13:52',0,468,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-03 09:56:59','-','2022-08-03 09:56:59',0,469,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-03 11:05:53','-','2022-08-03 11:05:53',0,470,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-03 11:27:43','-','2022-08-03 11:27:43',0,471,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-03 14:26:09','-','2022-08-03 14:26:09',0,472,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 03:41:10','-','2022-08-04 03:41:10',0,473,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 03:42:22','-','2022-08-04 03:42:22',0,474,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 04:42:28','-','2022-08-04 04:42:28',0,475,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 06:03:02','-','2022-08-04 06:03:02',0,476,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 06:24:13','-','2022-08-04 06:24:13',0,477,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 06:25:44','-','2022-08-04 06:25:44',0,478,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 06:28:07','-','2022-08-04 06:28:07',0,479,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 06:46:42','-','2022-08-04 06:46:42',0,480,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 07:05:09','-','2022-08-04 07:05:09',0,481,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 10:59:43','-','2022-08-04 10:59:43',0,482,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 11:20:16','-','2022-08-04 11:20:16',0,483,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-04 12:03:40','-','2022-08-04 12:03:40',0,484,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 03:24:50','-','2022-08-05 03:24:50',0,485,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 03:25:34','-','2022-08-05 03:25:34',0,486,'Dr. Henning','Vietnam_Test  Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-08-05 04:12:23','-','2022-08-05 04:12:23',0,487,'Dr. Henning','Pham User Created','User Created','Created','ICAT Admin',40),('-','2022-08-05 04:18:40','-','2022-08-05 04:18:40',0,488,'Dr. Henning','Trung User Created','User Created','Created','ICAT Admin',40),('-','2022-08-05 04:23:53','-','2022-08-05 04:23:53',0,489,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 07:47:45','-','2022-08-05 07:47:45',0,490,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 07:52:20','-','2022-08-05 07:52:20',0,491,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 10:13:36','-','2022-08-05 10:13:36',0,492,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 10:13:38','-','2022-08-05 10:13:38',0,493,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 10:14:10','-','2022-08-05 10:14:10',0,494,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:14:11','-','2022-08-05 10:14:11',0,495,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:14:13','-','2022-08-05 10:14:13',0,496,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:14:14','-','2022-08-05 10:14:14',0,497,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:14:15','-','2022-08-05 10:14:15',0,498,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:14:15','-','2022-08-05 10:14:15',0,499,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:14:15','-','2022-08-05 10:14:15',0,500,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-08-05 10:43:52','-','2022-08-05 10:43:52',0,501,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 11:06:25','-','2022-08-05 11:06:25',0,502,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-05 14:03:28','-','2022-08-05 14:03:28',0,503,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-08 05:03:25','-','2022-08-08 05:03:25',0,504,'Hak','dr.hak.mao25@gmail.com Is Logged','User Logged','Logged','Country Admin',68),('-','2022-08-08 05:03:29','-','2022-08-08 05:03:29',0,505,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-08 09:34:31','-','2022-08-08 09:34:31',0,506,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-12 12:07:52','-','2022-08-12 12:07:52',0,507,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-15 12:14:41','-','2022-08-15 12:14:41',0,508,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-15 12:17:25','-','2022-08-15 12:17:25',0,509,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-18 04:20:59','-','2022-08-18 04:20:59',0,510,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-19 05:51:37','-','2022-08-19 05:51:37',0,511,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-19 05:56:31','-','2022-08-19 05:56:31',0,512,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-19 11:01:31','-','2022-08-19 11:01:31',0,513,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-22 03:44:10','-','2022-08-22 03:44:10',0,514,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-29 04:09:26','-','2022-08-29 04:09:26',0,515,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-29 05:46:08','-','2022-08-29 05:46:08',0,516,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-29 07:32:04','-','2022-08-29 07:32:04',0,517,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-29 11:46:19','-','2022-08-29 11:46:19',0,518,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-29 11:46:19','-','2022-08-29 11:46:19',0,519,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-31 04:08:09','-','2022-08-31 04:08:09',0,520,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-08-31 09:49:18','-','2022-08-31 09:49:18',0,521,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-01 03:46:15','-','2022-09-01 03:46:15',0,522,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-01 09:53:33','-','2022-09-01 09:53:33',0,523,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-02 04:44:41','-','2022-09-02 04:44:41',0,524,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-03 07:31:35','-','2022-09-03 07:31:35',0,525,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-03 14:12:21','-','2022-09-03 14:12:21',0,526,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-04 11:05:08','-','2022-09-04 11:05:08',0,527,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-04 11:07:30','-','2022-09-04 11:07:30',0,528,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-04 12:52:49','-','2022-09-04 12:52:49',0,529,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-05 10:41:56','-','2022-09-05 10:41:56',0,530,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-05 10:46:46','-','2022-09-05 10:46:46',0,531,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-05 14:15:02','-','2022-09-05 14:15:02',0,532,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-06 10:40:20','-','2022-09-06 10:40:20',0,533,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-06 10:55:11','-','2022-09-06 10:55:11',0,534,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-06 11:00:05','-','2022-09-06 11:00:05',0,535,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-08 04:17:30','-','2022-09-08 04:17:30',0,536,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-12 04:41:00','-','2022-09-12 04:41:00',0,537,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-13 08:50:27','-','2022-09-13 08:50:27',0,538,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-13 11:03:03','-','2022-09-13 11:03:03',0,539,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-14 03:52:36','-','2022-09-14 03:52:36',0,540,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-14 04:13:45','-','2022-09-14 04:13:45',0,541,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-14 04:25:20','-','2022-09-14 04:25:20',0,542,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-14 06:37:55','-','2022-09-14 06:37:55',0,543,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-14 07:08:15','-','2022-09-14 07:08:15',0,544,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-14 12:02:59','-','2022-09-14 12:02:59',0,545,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-20 04:11:04','-','2022-09-20 04:11:04',0,546,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-09-20 04:11:57','-','2022-09-20 04:11:57',0,547,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-09-20 07:57:16','-','2022-09-20 07:57:16',0,548,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-09-20 09:03:40','-','2022-09-20 09:03:40',0,549,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-20 09:35:23','-','2022-09-20 09:35:23',0,550,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 04:08:30','-','2022-09-21 04:08:30',0,551,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 04:29:08','-','2022-09-21 04:29:08',0,552,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 05:02:15','-','2022-09-21 05:02:15',0,553,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 05:46:21','-','2022-09-21 05:46:21',0,554,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 06:27:47','-','2022-09-21 06:27:47',0,555,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 06:50:51','-','2022-09-21 06:50:51',0,556,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 08:35:50','-','2022-09-21 08:35:50',0,557,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 08:36:37','-','2022-09-21 08:36:37',0,558,'Dr. Henning','Test ClimateSI Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-09-21 08:37:51','-','2022-09-21 08:37:51',0,559,'Dr. Henning','Audrey User Created','User Created','Created','ICAT Admin',40),('-','2022-09-21 08:41:55','-','2022-09-21 08:41:55',0,560,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 09:07:02','-','2022-09-21 09:07:02',0,561,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 09:08:24','-','2022-09-21 09:08:24',0,562,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 09:09:31','-','2022-09-21 09:09:31',0,563,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 09:10:27','-','2022-09-21 09:10:27',0,564,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 09:11:21','-','2022-09-21 09:11:21',0,565,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-21 09:12:42','-','2022-09-21 09:12:42',0,566,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 03:39:09','-','2022-09-22 03:39:09',0,567,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 03:39:35','-','2022-09-22 03:39:35',0,568,'Dr. Henning','Test ICAT Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-09-22 03:40:55','-','2022-09-22 03:40:55',0,569,'Dr. Henning','Henna User Created','User Created','Created','ICAT Admin',40),('-','2022-09-22 04:11:09','-','2022-09-22 04:11:09',0,570,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 04:12:11','-','2022-09-22 04:12:11',0,571,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 04:13:42','-','2022-09-22 04:13:42',0,572,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:27:08','-','2022-09-22 09:27:08',0,573,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:29:57','-','2022-09-22 09:29:57',0,574,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:34:03','-','2022-09-22 09:34:03',0,575,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:34:49','-','2022-09-22 09:34:49',0,576,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:35:41','-','2022-09-22 09:35:41',0,577,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:36:47','-','2022-09-22 09:36:47',0,578,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:38:25','-','2022-09-22 09:38:25',0,579,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:40:10','-','2022-09-22 09:40:10',0,580,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-22 09:42:46','-','2022-09-22 09:42:46',0,581,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 09:54:41','-','2022-09-29 09:54:41',0,582,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 10:08:22','-','2022-09-29 10:08:22',0,583,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 10:09:47','-','2022-09-29 10:09:47',0,584,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 10:11:08','-','2022-09-29 10:11:08',0,585,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 10:11:49','-','2022-09-29 10:11:49',0,586,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 10:17:02','-','2022-09-29 10:17:02',0,587,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-29 10:41:19','-','2022-09-29 10:41:19',0,588,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-30 03:24:05','-','2022-09-30 03:24:05',0,589,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-30 03:25:50','-','2022-09-30 03:25:50',0,590,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-30 07:02:24','-','2022-09-30 07:02:24',0,591,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-09-30 07:22:32','-','2022-09-30 07:22:32',0,592,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-03 07:06:28','-','2022-10-03 07:06:28',0,593,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-03 07:07:35','-','2022-10-03 07:07:35',0,594,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 07:02:39','-','2022-10-04 07:02:39',0,595,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 07:03:39','-','2022-10-04 07:03:39',0,596,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 07:04:56','-','2022-10-04 07:04:56',0,597,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 07:11:00','-','2022-10-04 07:11:00',0,598,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 07:31:34','-','2022-10-04 07:31:34',0,599,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 08:19:41','-','2022-10-04 08:19:41',0,600,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 08:22:12','-','2022-10-04 08:22:12',0,601,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 08:53:15','-','2022-10-04 08:53:15',0,602,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-04 09:00:50','-','2022-10-04 09:00:50',0,603,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-05 03:34:04','-','2022-10-05 03:34:04',0,604,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-07 04:10:15','-','2022-10-07 04:10:15',0,605,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-07 04:20:30','-','2022-10-07 04:20:30',0,606,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-09 10:03:08','-','2022-10-09 10:03:08',0,607,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-09 10:05:01','-','2022-10-09 10:05:01',0,608,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-09 10:18:15','-','2022-10-09 10:18:15',0,609,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-09 10:30:17','-','2022-10-09 10:30:17',0,610,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-10 07:15:13','-','2022-10-10 07:15:13',0,611,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-10 07:18:08','-','2022-10-10 07:18:08',0,612,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-10 08:17:25','-','2022-10-10 08:17:25',0,613,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-11 03:07:24','-','2022-10-11 03:07:24',0,614,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-18 12:23:54','-','2022-10-18 12:23:54',0,615,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-18 12:25:20','-','2022-10-18 12:25:20',0,616,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-10-18 12:28:47','-','2022-10-18 12:28:47',0,617,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-18 12:30:23','-','2022-10-18 12:30:23',0,618,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-10-27 12:52:21','-','2022-10-27 12:52:21',0,619,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-27 13:20:22','-','2022-10-27 13:20:22',0,620,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-27 13:30:55','-','2022-10-27 13:30:55',0,621,'Dr. Henning','Test Single Country Country Activated','Country Activated','Activated','ICAT Admin',40),('-','2022-10-28 03:45:04','-','2022-10-28 03:45:04',0,622,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-10-28 04:27:10','-','2022-10-28 04:27:10',0,623,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-10-28 06:07:49','-','2022-10-28 06:07:49',0,624,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-10-28 06:16:08','-','2022-10-28 06:16:08',0,625,'Dr. Henning','test Single Country  User Created','User Created','Created','ICAT Admin',40),('-','2022-10-28 06:27:25','-','2022-10-28 06:27:25',0,626,'Dr. Henning','Single Country  User Created','User Created','Created','ICAT Admin',40),('-','2022-11-08 05:59:18','-','2022-11-08 05:59:18',0,627,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-08 06:01:26','-','2022-11-08 06:01:26',0,628,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-08 09:32:39','-','2022-11-08 09:32:39',0,629,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-08 10:45:41','-','2022-11-08 10:45:41',0,630,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-08 10:48:45','-','2022-11-08 10:48:45',0,631,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-08 11:02:08','-','2022-11-08 11:02:08',0,632,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-08 11:15:05','-','2022-11-08 11:15:05',0,633,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-09 04:09:29','-','2022-11-09 04:09:29',0,634,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-15 11:19:21','-','2022-11-15 11:19:21',0,635,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-25 06:16:44','-','2022-11-25 06:16:44',0,636,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-25 09:37:59','-','2022-11-25 09:37:59',0,637,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-25 12:08:20','-','2022-11-25 12:08:20',0,638,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-25 12:08:41','-','2022-11-25 12:08:41',0,639,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-11-25 12:08:50','-','2022-11-25 12:08:50',0,640,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:08:52','-','2022-11-25 12:08:52',0,641,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:08:55','-','2022-11-25 12:08:55',0,642,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:08:57','-','2022-11-25 12:08:57',0,643,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:09:05','-','2022-11-25 12:09:05',0,644,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:09:06','-','2022-11-25 12:09:06',0,645,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:09:07','-','2022-11-25 12:09:07',0,646,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-25 12:09:07','-','2022-11-25 12:09:07',0,647,'Pham','xedego4525@5k2u.com Is Logged','User Logged','Logged','Country Admin',76),('-','2022-11-28 09:04:43','-','2022-11-28 09:04:43',0,648,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-28 09:06:29','-','2022-11-28 09:06:29',0,649,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-11-28 09:09:00','-','2022-11-28 09:09:00',0,650,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-11-28 09:11:43','-','2022-11-28 09:11:43',0,651,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2022-12-01 03:39:24','-','2022-12-01 03:39:24',0,652,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-09 06:55:53','-','2022-12-09 06:55:53',0,653,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-15 06:08:36','-','2022-12-15 06:08:36',0,654,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-15 08:41:14','-','2022-12-15 08:41:14',0,655,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-15 08:45:14','-','2022-12-15 08:45:14',0,656,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-15 08:46:02','-','2022-12-15 08:46:02',0,657,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-15 08:50:43','-','2022-12-15 08:50:43',0,658,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2022-12-15 09:55:51','-','2022-12-15 09:55:51',0,659,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-01-13 10:31:54','-','2023-01-13 10:31:54',0,660,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-01-31 10:08:05','-','2023-01-31 10:08:05',0,661,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-02-02 04:29:11','-','2023-02-02 04:29:11',0,662,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-03-08 06:40:37','-','2023-03-08 06:40:37',0,663,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-03-08 06:49:45','-','2023-03-08 06:49:45',0,664,'Dr. Henning','Icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-03-10 05:56:02','-','2023-03-10 05:56:02',0,665,'Shyamika','pmuadmin2@climatesi.com Is Logged','User Logged','Logged','PMU Admin',41),('-','2023-03-10 05:58:25','-','2023-03-10 05:58:25',0,666,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40),('-','2023-03-14 07:34:46','-','2023-03-14 07:34:46',0,667,'Dr. Henning','icat@unops.org Is Logged','User Logged','Logged','ICAT Admin',40);
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `climateAction`
--

DROP TABLE IF EXISTS `climateAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `climateAction` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `climateActionName` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactPersoFullName` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contactPersonDesignation` varchar(30) DEFAULT NULL,
  `telephoneNumber` varchar(255) NOT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `projectScope` varchar(255) DEFAULT NULL,
  `acceptedDate` datetime DEFAULT NULL,
  `proposeDateofCommence` datetime NOT NULL,
  `duration` int NOT NULL,
  `objective` varchar(500) DEFAULT NULL,
  `subNationalLevl1` varchar(255) DEFAULT NULL,
  `subNationalLevl2` varchar(255) DEFAULT NULL,
  `subNationalLevl3` varchar(255) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT '0.000000',
  `latitude` decimal(10,6) DEFAULT '0.000000',
  `outcome` varchar(500) DEFAULT NULL,
  `currentProgress` varchar(500) DEFAULT NULL,
  `chgEmissions` varchar(255) DEFAULT NULL,
  `adaptationBenefits` varchar(500) DEFAULT NULL,
  `directSDBenefit` varchar(500) DEFAULT NULL,
  `indirectSDBenefit` varchar(500) DEFAULT NULL,
  `implementingEntity` varchar(255) DEFAULT NULL,
  `executingEntity` varchar(255) DEFAULT NULL,
  `partiesInvolved` varchar(300) DEFAULT NULL,
  `beneficiaries` varchar(300) DEFAULT NULL,
  `donors` varchar(100) DEFAULT NULL,
  `investors` varchar(100) DEFAULT NULL,
  `fundingOrganization` varchar(300) DEFAULT NULL,
  `initialInvestment` decimal(10,2) DEFAULT NULL,
  `annualFunding` decimal(10,2) DEFAULT NULL,
  `annualRevenue` decimal(10,2) DEFAULT NULL,
  `expectedRecurrentExpenditure` decimal(10,2) DEFAULT NULL,
  `projectRejectComment` varchar(255) DEFAULT NULL,
  `projectDataRequsetComment` varchar(255) DEFAULT NULL,
  `mappedInstitutionId` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `projectStatusId` int DEFAULT NULL,
  `sectorId` int DEFAULT NULL,
  `ndcId` int DEFAULT NULL,
  `subNdcId` int DEFAULT NULL,
  `projectOwnerId` int DEFAULT NULL,
  `financingSchemeId` int DEFAULT NULL,
  `mitigationActionTypeId` int DEFAULT NULL,
  `projectApprovalStatusId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8c67478ebaf885a17a7f3ba2a2a` (`mappedInstitutionId`),
  KEY `FK_cb90295360fb75053021ca56024` (`countryId`),
  KEY `FK_79d7612e07dc96cd3df4d950edf` (`projectStatusId`),
  KEY `FK_54f6375c9abf2c890c562ac0056` (`sectorId`),
  KEY `FK_36d6f99c9f32370899605512ba0` (`ndcId`),
  KEY `FK_bcd47c9800671dee99ff9126908` (`subNdcId`),
  KEY `FK_f85da9240db0ec0d457ae7d2052` (`projectOwnerId`),
  KEY `FK_33b4c4b6600f96de9b0e5105458` (`financingSchemeId`),
  KEY `FK_ed93c833d58a02fa54d5a28d331` (`mitigationActionTypeId`),
  KEY `FK_ec7b6550d5f7fdac3b35d05d545` (`projectApprovalStatusId`),
  CONSTRAINT `FK_33b4c4b6600f96de9b0e5105458` FOREIGN KEY (`financingSchemeId`) REFERENCES `financing_scheme` (`id`),
  CONSTRAINT `FK_36d6f99c9f32370899605512ba0` FOREIGN KEY (`ndcId`) REFERENCES `ndc` (`id`),
  CONSTRAINT `FK_54f6375c9abf2c890c562ac0056` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`),
  CONSTRAINT `FK_79d7612e07dc96cd3df4d950edf` FOREIGN KEY (`projectStatusId`) REFERENCES `projectstatus` (`id`),
  CONSTRAINT `FK_8c67478ebaf885a17a7f3ba2a2a` FOREIGN KEY (`mappedInstitutionId`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_bcd47c9800671dee99ff9126908` FOREIGN KEY (`subNdcId`) REFERENCES `sub_ndc` (`id`),
  CONSTRAINT `FK_cb90295360fb75053021ca56024` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_ec7b6550d5f7fdac3b35d05d545` FOREIGN KEY (`projectApprovalStatusId`) REFERENCES `project_approval_status` (`id`),
  CONSTRAINT `FK_ed93c833d58a02fa54d5a28d331` FOREIGN KEY (`mitigationActionTypeId`) REFERENCES `mitigationActionType` (`id`),
  CONSTRAINT `FK_f85da9240db0ec0d457ae7d2052` FOREIGN KEY (`projectOwnerId`) REFERENCES `project_owner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climateAction`
--

LOCK TABLES `climateAction` WRITE;
/*!40000 ALTER TABLE `climateAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `climateAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `climate_change_data_category`
--

DROP TABLE IF EXISTS `climate_change_data_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `climate_change_data_category` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climate_change_data_category`
--

LOCK TABLES `climate_change_data_category` WRITE;
/*!40000 ALTER TABLE `climate_change_data_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `climate_change_data_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `code_extended` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `isSystemUse` tinyint DEFAULT NULL,
  `flagPath` varchar(255) DEFAULT NULL,
  `registeredDate` datetime DEFAULT NULL,
  `isMember` tinyint DEFAULT NULL,
  `countryStatus` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `uniqueIdentification` varchar(255) DEFAULT NULL,
  `institutionId` int DEFAULT NULL,
  `climateActionModule` tinyint DEFAULT NULL,
  `ghgModule` tinyint DEFAULT NULL,
  `macModule` tinyint DEFAULT NULL,
  `dataCollectionModule` tinyint DEFAULT NULL,
  `isCA` tinyint DEFAULT NULL,
  `dataCollectionGhgModule` tinyint DEFAULT NULL,
  `isSingleCountry` int DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e4eaa2d02799fcc1e1f954bac23` (`institutionId`),
  CONSTRAINT `FK_e4eaa2d02799fcc1e1f954bac23` FOREIGN KEY (`institutionId`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('',NULL,'',NULL,0,1,'LK','LKA','Sri Lanka','Sri lanka',1,1,'https://www.worldometers.info//img/flags/small/tn_ce-flag.gif',NULL,NULL,'Active','Asia','6d4970cc-1330-4c13-a87d-ec98617536da',5,1,1,1,1,1,0,NULL,NULL),('',NULL,'',NULL,0,2,'KE','KEN','Kenya','Kenya',2,1,'https://www.worldometers.info//img/flags/small/tn_ke-flag.gif','2022-05-17 12:30:41',NULL,'Active','Africa','b3cac7d2-247f-46d3-ac81-f7f8cf2468d0',19,1,1,1,1,1,NULL,NULL,NULL),('',NULL,'',NULL,0,3,'KG','KGZ','Kyrgyzstan','Kyrgyzstan',3,1,'https://www.worldometers.info//img/flags/small/tn_kg-flag.gif','2022-05-26 09:14:36',NULL,'Active','Asia','fa0ce0b6-655f-423c-a29f-3b46a99c9559',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,4,'LR','LBR','Liberia','Liberia',4,1,'https://www.worldometers.info//img/flags/small/tn_li-flag.gif','2022-05-30 06:07:30',NULL,'Deactivated','Africa','6ce03f29-998a-4cd0-9e35-c637e678fb2f',NULL,1,1,0,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,5,'MV','MDV','Maldives','Maldives',5,1,'https://www.worldometers.info//img/flags/small/tn_mv-flag.gif','2022-05-30 06:07:30',NULL,'Active','Asia','141faf7d-5766-42d1-bd08-64a5cb42527a',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,6,'MX','MEX','Mexico','Mexico',6,1,'https://www.worldometers.info//img/flags/small/tn_mx-flag.gif','2022-05-30 06:07:30',NULL,'Active','Americas','8e571ce4-cc61-4c56-b943-7ec797728ae5',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,7,'MA','MAR','Morocco','Morocco',7,1,'https://www.worldometers.info//img/flags/small/tn_mo-flag.gif','2022-05-30 06:07:30',NULL,'Active','Africa','1a872c32-6e9b-4e31-9e56-23da03517590',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,8,'MZ','MOZ','Mozambique','Mozambique',8,0,'https://www.worldometers.info//img/flags/small/tn_mz-flag.gif',NULL,NULL,NULL,'Africa','0d56e49c-675e-4c5c-9be5-cddb74c6e9db',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,9,'NG','NGA','Nigeria','Nigeria',9,1,'https://www.worldometers.info//img/flags/small/tn_ni-flag.gif','2022-06-06 09:01:47',NULL,'Active','Africa','86d06950-83f1-4ee2-b101-975560744de5',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,10,'PE','PER','Peru','Peru',10,1,'https://www.worldometers.info//img/flags/small/tn_pe-flag.gif','2022-05-25 10:59:13',NULL,'Active','Americas','f0afd7be-51c4-4113-be5c-b36872da9ddb',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,11,'PH','PHL','Philippines','Philippines',11,0,'https://www.worldometers.info//img/flags/small/tn_rp-flag.gif',NULL,NULL,NULL,'Asia','725d39d9-4d12-43da-9976-d38f87f31c53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,12,'CD','COD','Republic of the Congo','Republic of the Congo',12,0,'https://www.worldometers.info//img/flags/small/tn_congo-flag.gif',NULL,NULL,NULL,'Africa','173ee671-8c7b-4953-9dfc-ca9db8bc7e1f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,13,'RW','RWA','Rwanda','Rwanda',13,0,'https://www.worldometers.info//img/flags/small/tn_rw-flag.gif',NULL,NULL,NULL,'Africa','dbd26c80-2382-4dd1-a4ab-12025b041209',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,14,'ST','STP','São Tomé and Príncipe','São Tomé and Príncipe',14,0,'https://www.worldometers.info//img/flags/small/tn_tp-flag.gif',NULL,NULL,NULL,'Africa','56097437-7691-40bd-a35d-23e04de39591',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,15,'SN','SEN','Senegal','Senegal',15,0,'https://www.worldometers.info//img/flags/small/tn_sg-flag.gif',NULL,NULL,NULL,'Africa','1104491b-871e-4bea-a8fd-81c223967caf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,16,'ZA','ZAF','South Africa','South Africa',16,1,'https://www.worldometers.info//img/flags/small/tn_sf-flag.gif','2022-05-18 11:15:26',NULL,'Active','Africa','80c6bd79-2c9a-42ea-a5e7-3f66bf53c2e2',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,17,'SD','SDN','Sudan','Sudan',17,0,'https://www.worldometers.info//img/flags/small/tn_su-flag.gif',NULL,NULL,NULL,'Africa','c2f64248-8dad-4042-82ee-1e8390ac84b9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,18,'TJ','TJK','Tajikistan','Tajikistan',18,0,'https://www.worldometers.info//img/flags/small/tn_ti-flag.gif',NULL,NULL,NULL,'Asia','7229e0d0-cb53-4f52-b79b-7dce25222e6e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,19,'TH','THA','Thailand','Thailand',19,0,'https://www.worldometers.info//img/flags/small/tn_th-flag.gif',NULL,NULL,NULL,'Asia','e457f186-b285-4f4b-b90b-abfa59efe6ee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,20,'TO','TON','Tonga','Tonga',20,0,'https://www.worldometers.info//img/flags/small/tn_tn-flag.gif',NULL,NULL,NULL,'Oceania','f414ed32-0750-48ab-99f7-a800edd16d3e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,21,'TT','TTO','Trinidad and Tobago','Trinidad and Tobago',21,0,'https://www.worldometers.info//img/flags/small/tn_td-flag.gif',NULL,NULL,NULL,'Americas','cff0b754-cedc-4580-81f8-902c8a715d6d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,22,'TN','TUN','Tunisia','Tunisia',22,0,'https://www.worldometers.info//img/flags/small/tn_ts-flag.gif',NULL,NULL,NULL,'Africa','a589ca6b-43ad-48b5-80c0-b8fbd12c8447',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,23,'TM','TKM','Turkmenistan','Turkmenistan',23,1,'https://www.worldometers.info//img/flags/small/tn_tx-flag.gif','2022-06-06 09:02:25',NULL,'Active','Asia','373460c3-fc89-4652-82a3-e9bf69b9cd5e',NULL,0,0,1,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,24,'AE','URE','United Arab Emirates','United Arab Emirates',24,1,'https://www.worldometers.info//img/flags/small/tn_ae-flag.gif','2022-05-11 06:39:48',NULL,'Active','Asia','3e7dfbdd-9a47-4615-9fe9-0f185ba4ff2c',NULL,1,0,0,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,25,'UZ','UZB','Uzbekistan','Uzbekistan',25,0,'https://www.worldometers.info//img/flags/small/tn_uz-flag.gif','2022-05-10 15:43:37',NULL,'Active','Asia','696d09fa-6991-4b8e-a8eb-26347d36508c',NULL,0,0,0,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,26,'VN','VNM','Viet Nam','Viet Nam',26,1,'https://www.worldometers.info//img/flags/small/tn_vm-flag.gif','2022-06-08 07:19:36',NULL,'Active','Asia','a4dc57dc-4d19-4807-9832-c153556b38b6',NULL,1,1,1,1,1,NULL,NULL,NULL),('',NULL,'',NULL,0,27,'ZW','ZWE','Zimbabwe','Zimbabwe',27,1,'https://www.worldometers.info//img/flags/small/tn_zi-flag.gif','2022-05-10 15:20:09',NULL,'Active','Africa','33942ed5-12ab-4fa8-b215-4ad7fd173590',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,28,'KH','KHM','Cambodia_Test','Cambodia',28,1,'https://www.worldometers.info/img/flags/cb-flag.gif','2022-05-19 03:20:18',NULL,'Active','Asia','4dadff9c2b634fb7a02f98f44e46f4bd',14,0,0,0,1,NULL,0,NULL,NULL),('',NULL,'',NULL,0,29,'AG','ATG','Antigua and Barbuda_test','Antigua and Barbuda_test',1,1,'https://www.worldometers.info/img/flags/ac-flag.gif','2022-05-19 03:20:18',NULL,'Active','Carribean','9d49df8e-2f80-4308-b865-c62f3e7eaa0b',15,0,0,0,1,1,0,NULL,NULL),('',NULL,'',NULL,0,30,'VN','VNM','Vietnam_Test ','Vietnam_Test ',30,1,'https://www.worldometers.info//img/flags/small/tn_vm-flag.gif','2022-08-05 03:25:33',NULL,'Active','Asia','a8c08fae-6f1b-480d-a087-6080c82fdf72',NULL,0,0,0,1,1,0,NULL,NULL),(NULL,'2022-09-21 08:36:37',NULL,'2022-09-21 08:36:37',0,31,'LK','LKA','Test ClimateSI','test ClimateSI',31,1,'https://www.climatesi.com/assets/images/SI-logo.jpg','2022-09-21 08:36:36',NULL,'Active','Asia','a8c08fae-6f1b-480d-a087-6080c82fdffg',NULL,0,0,1,0,1,0,NULL,NULL),(NULL,'2022-09-22 03:39:35',NULL,'2022-09-22 03:39:35',0,32,'LK','LKA','Test ICAT','Test ICAT',32,1,'https://climateactiontransparency.org/wp-content/themes/custom/assets/i/logo/logo_blue.svg','2022-09-22 03:39:34',NULL,'Active','Asia','4dadff9c2b634fb7a02f98f44e46f4gyyh',NULL,0,0,0,1,1,0,NULL,NULL),('','2022-10-27 13:30:55','','2022-10-27 13:30:55',0,33,'LK','LKA','Test Single Country','Test Single Country',1,1,'https://www.worldometers.info//img/flags/small/tn_ce-flag.gif','2022-10-27 13:30:54',NULL,'Active','Asia','6d4970cc-1330-4c13-a87d-ec986175kkka',5,1,1,1,1,1,1,1,'https://icat-ca-tool-country.climatesi.com');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_sector`
--

DROP TABLE IF EXISTS `country_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_sector` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `countryId` int NOT NULL,
  `sectorId` int NOT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ac9fae572f4d56580da4c77da0e` (`sectorId`),
  CONSTRAINT `FK_ac9fae572f4d56580da4c77da0e` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_sector`
--

LOCK TABLES `country_sector` WRITE;
/*!40000 ALTER TABLE `country_sector` DISABLE KEYS */;
INSERT INTO `country_sector` VALUES (NULL,NULL,NULL,NULL,0,1,27,1,'c9abdfc0-74b6-43e4-bca9-27fd0c8a6a29'),(NULL,NULL,NULL,NULL,0,2,0,1,''),(NULL,NULL,NULL,NULL,0,3,0,1,''),(NULL,NULL,NULL,NULL,0,4,0,1,''),(NULL,NULL,NULL,NULL,0,5,0,1,''),(NULL,NULL,NULL,NULL,0,6,0,1,''),(NULL,NULL,NULL,NULL,0,7,0,1,''),(NULL,NULL,NULL,NULL,0,8,0,1,''),(NULL,NULL,NULL,NULL,0,9,0,1,''),(NULL,NULL,NULL,NULL,0,10,0,1,''),(NULL,NULL,NULL,NULL,0,11,0,1,''),(NULL,NULL,NULL,NULL,0,12,0,1,''),(NULL,NULL,NULL,NULL,0,13,0,1,''),(NULL,NULL,NULL,NULL,0,14,3,1,'88760436-9f71-4324-9145-dcfe424790bd'),(NULL,NULL,NULL,NULL,0,15,0,1,''),(NULL,NULL,NULL,NULL,0,16,0,1,''),(NULL,NULL,NULL,NULL,0,17,24,1,'79f3a524-3e65-40b2-85bf-4872ae99c066'),(NULL,NULL,NULL,NULL,0,18,0,1,''),(NULL,NULL,NULL,NULL,0,19,0,1,''),(NULL,NULL,NULL,NULL,0,20,9,1,'faa040e1-f822-4e89-8131-62677c6babe5'),(NULL,NULL,NULL,NULL,0,21,26,1,'e694d9f4-b770-4463-99cb-10c519ac834f'),(NULL,NULL,NULL,NULL,0,22,2,1,'1275051c-0ee1-46ac-a48e-39578a69fecb'),(NULL,NULL,NULL,NULL,0,23,0,1,''),(NULL,NULL,NULL,NULL,0,24,16,1,'441a083c-e1a3-4658-b7fb-5343b795962f'),(NULL,NULL,NULL,NULL,0,25,23,1,'0ebfe1cd-8c5b-444d-a97b-2c1c3db587ad'),(NULL,NULL,NULL,NULL,0,26,0,1,''),(NULL,NULL,NULL,NULL,0,27,0,1,''),(NULL,NULL,NULL,NULL,0,28,0,1,''),(NULL,NULL,NULL,NULL,0,29,0,1,''),(NULL,NULL,NULL,NULL,0,30,4,1,'f1b76f9d-74cf-4301-bba1-402bfa4cadde'),(NULL,NULL,NULL,NULL,0,31,0,1,''),(NULL,NULL,NULL,NULL,0,32,28,1,'f1b76f9d-74cf-4301-bba1-402bfa4caddb'),(NULL,NULL,NULL,NULL,0,33,0,1,''),(NULL,NULL,NULL,NULL,0,35,31,1,'75899452-4b51-49b6-95fb-e73a4da88f9d'),(NULL,NULL,NULL,NULL,0,36,32,1,'6df89155-46c8-4414-a7ea-41e4a9424782'),(NULL,NULL,NULL,NULL,0,37,1,1,'9cb41ccc-182a-494e-99d8-ef8a8bb494a8'),(NULL,NULL,NULL,NULL,0,38,29,1,'7dd94292-eb64-4a23-8f24-e1ba40dfcca8'),(NULL,NULL,NULL,NULL,0,39,30,1,'f4714c04-69fb-4370-866b-cdd3d1571acf'),(NULL,NULL,NULL,NULL,0,40,33,1,'fe2de7fa-ef0e-4186-9b59-52f3e99a8ad9');
/*!40000 ALTER TABLE `country_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `documentOwner` int NOT NULL,
  `documentOwnerId` int NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `relativePath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES ('-','2022-04-22 12:03:12','-','2022-04-22 12:03:12',0,1,3,4,'application/octet-stream','2254country.sql','LearningMaterial/4/3a10f94f1.sql'),('-','2022-04-22 12:04:42','-','2022-04-22 12:04:42',0,2,3,4,'application/octet-stream','a.sql','LearningMaterial/4/1aa6f108d.sql'),('-','2022-04-22 12:07:23','-','2022-04-22 12:07:23',0,3,3,4,'application/octet-stream','co(1).sql','LearningMaterial/4/5c136221.sql'),('-','2022-04-22 12:14:31','-','2022-04-22 12:14:31',0,4,3,4,'application/octet-stream','Dump20220217 (1).sql','LearningMaterial/4/95d7f882.sql'),('-','2022-04-22 12:26:33','-','2022-04-22 12:26:33',0,5,3,4,'application/octet-stream','Dump20220325.sql','LearningMaterial/4/ad257faf.sql'),('-','2022-04-22 13:08:05','-','2022-04-22 13:08:05',0,6,3,4,'application/octet-stream','pmu-server.sql','LearningMaterial/4/622e4ebe.sql'),('-','2022-04-22 13:11:35','-','2022-04-22 13:11:35',0,7,3,4,'application/x-putty-private-key','new-tree.ppk','LearningMaterial/4/1810d9768.ppk'),('-','2022-04-22 13:14:17','-','2022-04-22 13:14:17',0,8,3,4,'application/octet-stream','new-smart-tree.pem','LearningMaterial/4/f29f3de2.pem'),('-','2022-04-22 13:23:26','-','2022-04-22 13:23:26',0,9,3,4,'application/octet-stream','country .sql','LearningMaterial/4/bc7d7d93.sql'),('-','2022-05-18 13:06:15','-','2022-05-18 13:06:15',0,10,3,4,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','data_entry_template_5_18_2022_12_43 pm.xlsx','LearningMaterial/4/9af8103fc.xlsx'),('-','2022-05-18 13:08:36','-','2022-05-18 13:08:36',0,11,3,4,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','data_entry_template_5_18_2022_12_43 pm.xlsx','LearningMaterial/4/d94e21094.xlsx'),('-','2022-05-26 06:11:00','-','2022-05-26 06:11:00',0,12,3,4,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','20220525_Concept note_V1(PA).docx','LearningMaterial/4/d6425348.docx'),('-','2022-05-26 06:17:53','-','2022-05-26 06:17:53',0,13,3,4,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','20220525_Concept note_V1(PA).docx','LearningMaterial/4/d8086ab6.docx'),('-','2022-05-26 06:19:32','-','2022-05-26 06:19:32',0,14,3,4,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','Concept note_V1(PA).docx','LearningMaterial/4/a1d53f8f.docx'),('-','2022-05-26 06:45:00','-','2022-05-26 06:45:00',0,15,3,4,'application/octet-stream','mainflask.py','LearningMaterial/4/b102cf4fd.py'),('-','2022-05-26 06:48:35','-','2022-05-26 06:48:35',0,16,3,4,'application/octet-stream','mainflask.py','LearningMaterial/4/1517df83.py'),('-','2022-05-27 06:29:55','-','2022-05-27 06:29:55',0,17,3,4,'application/octet-stream','mainflask.py','LearningMaterial/4/91195eb2.py'),('-','2022-05-27 06:47:51','-','2022-05-27 06:47:51',0,18,3,4,'text/csv','tree_specie.csv','LearningMaterial/4/1092bdc11.csv'),('-','2022-05-27 06:54:47','-','2022-05-27 06:54:47',0,19,3,4,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','Time Esimation for New SCC developmet.xlsx','LearningMaterial/4/66fda8a6.xlsx'),('-','2022-05-27 08:19:21','-','2022-05-27 08:19:21',0,20,3,4,'application/pdf','Forti Client VPN Guide.pdf','LearningMaterial/4/718af821.pdf'),('-','2022-05-27 11:00:02','-','2022-05-27 11:00:02',0,21,3,4,'application/pdf','sample.pdf','LearningMaterial/4/5ddacae8.pdf'),(NULL,NULL,NULL,NULL,0,22,3,4,'image/png','Baseline Parameters.png','Methodology/PNG/Baseline Parameters.png'),('-','2022-06-08 08:02:55','-','2022-06-08 08:02:55',0,23,3,4,'application/pdf','Transport-Pricing-Assessment-Guide.pdf','LearningMaterial/4/28d9c889.pdf'),('-','2022-06-08 08:04:07','-','2022-06-08 08:04:07',0,24,3,4,'application/vnd.ms-excel.sheet.macroenabled.12','GACMO.xlsm','LearningMaterial/4/e57512fc.xlsm'),('-','2022-07-20 09:10:15','-','2022-07-20 09:10:15',0,26,3,4,'video/mp4','7. QC team - Quality control.mp4','LearningMaterial/4/1c2b6aae.mp4'),('-','2022-07-20 10:17:55','-','2022-07-20 10:17:55',0,27,3,4,'video/mp4','1. Country Admin - Dashboard.mp4','LearningMaterial/4/364ed78f.mp4'),('-','2022-07-20 10:23:12','-','2022-07-20 10:23:12',0,28,3,4,'video/mp4','2. Country Admin - Country Profile.mp4','LearningMaterial/4/70ccaee5.mp4'),('-','2022-07-20 10:39:31','-','2022-07-20 10:39:31',0,29,3,4,'video/mp4','3. Country Admin - Manage institution.mp4','LearningMaterial/4/15a3eb85.mp4'),('-','2022-07-20 11:58:04','-','2022-07-20 11:58:04',0,30,3,4,'video/mp4','1. Country Admin - Dashboard.mp4','LearningMaterial/4/cb8637da.mp4'),('-','2022-07-20 12:01:37','-','2022-07-20 12:01:37',0,31,3,4,'video/mp4','2. Country Admin - Country Profile.mp4','LearningMaterial/4/91947df5.mp4'),('-','2022-07-20 12:43:27','-','2022-07-20 12:43:27',0,32,3,4,'video/mp4','3. Country Admin - Manage institution.mp4','LearningMaterial/4/382768e2.mp4'),('-','2022-07-25 09:25:43','-','2022-07-25 09:25:43',0,33,3,4,'video/mp4','6. Country Admin - Manage institution.mp4','LearningMaterial/4/641c96f3.mp4'),('-','2022-08-03 11:12:27','-','2022-08-03 11:12:27',0,34,3,4,'video/mp4','0. ICAT Admin.mp4','LearningMaterial/4/a0a13794.mp4'),('-','2022-08-03 11:25:06','-','2022-08-03 11:25:06',0,35,3,4,'video/mp4','3. Institution admin - Assign data requests.mp4','LearningMaterial/4/46587983.mp4'),('-','2022-08-03 11:39:03','-','2022-08-03 11:39:03',0,36,3,4,'video/mp4','5. Institution admin - Review data.mp4','LearningMaterial/4/d1f3ab8a.mp4'),('-','2022-08-03 11:45:05','-','2022-08-03 11:45:05',0,37,3,4,'video/mp4','6. Sector Admin - GHG impact Assessment.mp4','LearningMaterial/4/cee5d2f5.mp4'),('-','2022-08-04 06:08:36','-','2022-08-04 06:08:36',0,38,3,4,'video/mp4','1. MRV admin & Sector admin - Climate action Menu.mp4','LearningMaterial/4/1026e8355.mp4'),('-','2022-08-04 06:13:54','-','2022-08-04 06:13:54',0,39,3,4,'video/mp4','Data Collection team - Data collection and Approval.mp4','LearningMaterial/4/a6e6cb4e.mp4'),('-','2022-08-04 06:21:19','-','2022-08-04 06:21:19',0,40,3,4,'video/mp4','Data Entry Operator & Institution Admin - Data Entry.mp4','LearningMaterial/4/447583ed.mp4'),('-','2022-08-04 06:52:14','-','2022-08-04 06:52:14',0,41,3,4,'video/mp4','Verifier - Verification.mp4','LearningMaterial/4/14a6b74f.mp4');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financing_scheme`
--

DROP TABLE IF EXISTS `financing_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financing_scheme` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financing_scheme`
--

LOCK TABLES `financing_scheme` WRITE;
/*!40000 ALTER TABLE `financing_scheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `financing_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `sortOrder` int NOT NULL,
  `isNational` tinyint NOT NULL,
  `deletedAt` datetime(6) DEFAULT NULL,
  `canNotDelete` tinyint NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL,
  `contactNumber` varchar(100) NOT NULL,
  `typeId` int DEFAULT NULL,
  `parentInstitutionId` int DEFAULT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_d218ad3566afa9e396f184fd7d` (`name`),
  KEY `FK_4893e540d687978250eb88fa2dc` (`typeId`),
  KEY `FK_3ca64cf0f964345e07b4c469bbe` (`parentInstitutionId`),
  CONSTRAINT `FK_3ca64cf0f964345e07b4c469bbe` FOREIGN KEY (`parentInstitutionId`) REFERENCES `institution` (`id`),
  CONSTRAINT `FK_4893e540d687978250eb88fa2dc` FOREIGN KEY (`typeId`) REFERENCES `institution_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES ('-','2022-03-02 03:57:34','-','2022-03-02 03:57:34',0,5,'UNEP CCC','The UNEP Copenhagen Climate Centre will support countries in the towards a climate-resilient and low carbon future',0,0,NULL,0,'Copenhagen, Denmark.','+45 45-335-2685',1,NULL,''),(NULL,NULL,NULL,NULL,0,6,'ICAT','icat',0,0,NULL,0,'Platz der Vereinten Nationen 1','+49 228 815 0317',2,NULL,''),('-','2022-06-01 05:47:58','-','2022-06-01 05:47:58',0,14,'World Resource Institution','World Resource Institution',0,0,NULL,0,'10G Street NE, Suite 800, Washington DC 20002','+12 02-729-7600',1,NULL,'e3e77d4b-9e37-4e5d-8b0b-239ddd741f42'),('-','2022-06-01 05:49:25','-','2022-06-01 05:49:25',0,15,'ISPRA','ISPRA',0,0,NULL,0,'Vitaliano Brancati, 48-00144 Roma(I)','+10 12-521-1002',1,NULL,'78b2a574-8a27-47b7-b29e-abec86f0177a'),('-','2022-06-01 05:52:00','-','2022-06-01 05:52:00',0,16,'GHG Management Institute','GHG Management Institute',0,0,NULL,0,'Washington, DC','+18 88-778-1972',1,NULL,'7478be43-cb78-47d6-a112-b1ab6979d119'),('-','2022-06-01 05:53:22','-','2022-06-01 05:53:22',0,17,'United Nations System Staff College','United Nations System Staff College',0,0,NULL,0,'Viale Maestri Del Lavoro 10, 10127 Torino, Italy','+39 01-165-3591',1,NULL,'8f0572dc-7782-4c28-98f7-ca7a20b35e13'),('-','2022-06-01 05:55:41','-','2022-06-01 05:55:41',0,18,'Aether','Aether',0,0,NULL,0,'Center for Innovation, New Rd, Oxford OX1, 1BY, UK','+44 18-652-6146',1,NULL,'6ab05d99-3668-46d5-90e1-e8fbae8bff8f'),('-','2022-07-27 09:48:34','-','2022-07-27 09:48:34',0,19,'PMU Insitution 1','',0,0,NULL,0,'Sri Lanka','+94 26-472-6528',1,NULL,'2b69dd7f-4dd4-4f44-9557-dcc32af6f772');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_category`
--

DROP TABLE IF EXISTS `institution_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution_category` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_category`
--

LOCK TABLES `institution_category` WRITE;
/*!40000 ALTER TABLE `institution_category` DISABLE KEYS */;
INSERT INTO `institution_category` VALUES (NULL,NULL,NULL,NULL,1,1,'insCat1','institution catogery',1);
/*!40000 ALTER TABLE `institution_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_type`
--

DROP TABLE IF EXISTS `institution_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution_type` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_type`
--

LOCK TABLES `institution_type` WRITE;
/*!40000 ALTER TABLE `institution_type` DISABLE KEYS */;
INSERT INTO `institution_type` VALUES (NULL,NULL,NULL,NULL,1,1,'PMU','pmu',1),(NULL,NULL,NULL,NULL,1,2,'ICAT','pmu',1);
/*!40000 ALTER TABLE `institution_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_material`
--

DROP TABLE IF EXISTS `learning_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_material` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `documentType` varchar(255) DEFAULT NULL,
  `documentName` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT 'https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',
  `isPublish` tinyint DEFAULT NULL,
  `deletedAt` datetime(6) DEFAULT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_material`
--

LOCK TABLES `learning_material` WRITE;
/*!40000 ALTER TABLE `learning_material` DISABLE KEYS */;
INSERT INTO `learning_material` VALUES ('','2022-06-08 08:02:56','','2022-06-08 08:02:56',0,20,'Learning Material','Transport-Pricing-Assessment-Guide.pdf','https://climateactiontransparency.org/wp-content/uploads/2020/04/Introduction-to-the-ICAT-Assessment-Guides.pdf','https://icon-library.com/images/document-icon-image/document-icon-image-1.jpg',1,NULL,'037d48b5-2245-424e-87e1-931c4b7cee09'),('','2022-06-08 08:04:08','','2022-06-08 08:04:08',0,21,'Learning Material','GACMO.xlsm','https://www.cdmpipeline.org/publications/GACMO.xlsm','https://icon-library.com/images/document-icon-image/document-icon-image-1.jpg',1,NULL,'b1c0e289-72e4-4118-a1eb-9f91fb7317e1'),('','2022-07-20 09:10:20','','2022-07-20 09:10:20',0,23,'Learning Material','7. QC team - Quality control.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/26','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'d41de203-df9c-412e-8714-5a65770bc046'),('','2022-07-20 11:58:07','','2022-07-20 11:58:07',0,27,'Learning Material','1. Country Admin - Dashboard.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/30','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'ef626d58-e255-4d74-897d-6ef7b9a0475e'),('','2022-07-20 12:01:38','','2022-07-20 12:01:38',0,28,'Learning Material','2. Country Admin - Country Profile.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/31','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'41e6b95a-973f-4c2e-b3fc-e761ffd38efc'),('','2022-07-20 12:43:29','','2022-07-20 12:43:29',0,29,'Learning Material','3. Country Admin - Manage institution.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/32','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'18a67887-2d92-4901-94a4-16793804bb8e'),('','2022-07-25 09:25:45','','2022-07-25 09:25:45',0,30,'Learning Material','6. Country Admin - Manage institution.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/33','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',0,NULL,'c83d5c5f-1942-44af-b5b4-ed8bdc4b949b'),('','2022-08-03 11:12:28','','2022-08-03 11:12:28',0,31,'Learning Material','0. ICAT Admin.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/34','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'8b9cfb7e-c709-4ca9-9d68-f324af0b086f'),('','2022-08-03 11:25:07','','2022-08-03 11:25:07',0,32,'Learning Material','3. Institution admin - Assign data requests.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/35','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'f9d1318e-e61c-499b-9fbe-0f36e8a7f471'),('','2022-08-03 11:39:04','','2022-08-03 11:39:04',0,33,'Learning Material','5. Institution admin - Review data.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/36','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'220da0e3-e1f2-4edb-9dac-80c699ada24b'),('','2022-08-03 11:45:06','','2022-08-03 11:45:06',0,34,'Learning Material','6. Sector Admin - GHG impact Assessment.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/37','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'3fe8a0ba-56f1-4ee3-ad22-a3600b3c9be3'),('','2022-08-04 06:08:37','','2022-08-04 06:08:37',0,35,'Learning Material','1. MRV admin & Sector admin - Climate action Menu.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/38','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'68472a81-9cc4-4f3a-813f-de625b05d2d5'),('','2022-08-04 06:13:55','','2022-08-04 06:13:55',0,36,'Learning Material','Data Collection team - Data collection and Approval.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/39','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'97773545-d9df-4d02-8cfa-6bce4e8c1ffc'),('','2022-08-04 06:21:20','','2022-08-04 06:21:20',0,37,'Learning Material','Data Entry Operator & Institution Admin - Data Entry.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/40','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'784df738-4d52-475f-ab88-e8c50dee7f27'),('','2022-08-04 06:52:15','','2022-08-04 06:52:15',0,38,'Learning Material','Verifier - Verification.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/41','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'4fa99648-7b77-40ed-aef0-cbf81a29d7b6');
/*!40000 ALTER TABLE `learning_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_material_sector`
--

DROP TABLE IF EXISTS `learning_material_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_material_sector` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `learningMaterial2Id` int DEFAULT NULL,
  `sectorId` int DEFAULT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_05475f6a338a7a5d6dcc19d3917` (`sectorId`),
  KEY `FK_896211865857258fb8cae3434d4` (`learningMaterial2Id`),
  CONSTRAINT `FK_05475f6a338a7a5d6dcc19d3917` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`),
  CONSTRAINT `FK_896211865857258fb8cae3434d4` FOREIGN KEY (`learningMaterial2Id`) REFERENCES `learning_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_material_sector`
--

LOCK TABLES `learning_material_sector` WRITE;
/*!40000 ALTER TABLE `learning_material_sector` DISABLE KEYS */;
INSERT INTO `learning_material_sector` VALUES (NULL,NULL,NULL,NULL,0,12,20,1,'cb25dccf-c162-4656-a0ac-0aa6e6b1c5c5'),(NULL,NULL,NULL,NULL,0,13,21,1,'fb18ff7a-861b-42a1-bac7-c45fc1d568cf'),(NULL,NULL,NULL,NULL,0,15,23,1,'66146b76-5a65-48f6-a91c-c6d5a516f13d'),(NULL,NULL,NULL,NULL,0,19,27,1,'ffa4a907-bec5-4828-be3a-3d4a3cbb0609'),(NULL,NULL,NULL,NULL,0,20,28,1,'2048fed2-907d-482c-9e60-f455aedb788f'),(NULL,NULL,NULL,NULL,0,21,29,1,'79887ccc-a408-4f6c-ad9d-681418ec434e'),(NULL,NULL,NULL,NULL,0,22,30,1,'31474d3f-2a80-413a-8b44-e7a7900ccc66'),(NULL,NULL,NULL,NULL,0,23,31,1,'5e4abb38-5731-4456-84fd-a2d0b86da9dc'),(NULL,NULL,NULL,NULL,0,24,32,1,'7c0f134f-1e8b-4d30-b1a5-ab1fa370958d'),(NULL,NULL,NULL,NULL,0,25,33,1,'60622132-c289-4d9c-9654-2b3ed72214b2'),(NULL,NULL,NULL,NULL,0,26,34,1,'e8c3a9ab-70ec-486d-a3ab-c78e8e24a79b'),(NULL,NULL,NULL,NULL,0,27,35,1,'6c6979b4-cf07-45e7-830e-e4b7c78bbc2b'),(NULL,NULL,NULL,NULL,0,28,36,1,'e43cfc60-bb74-4801-b17d-48bd18790d88'),(NULL,NULL,NULL,NULL,0,29,37,1,'21666764-62f3-45ef-b97c-f905814699c9'),(NULL,NULL,NULL,NULL,0,30,38,1,'3d07db42-564e-4831-82ca-2e5aadf2c8bb');
/*!40000 ALTER TABLE `learning_material_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning_material_user_type`
--

DROP TABLE IF EXISTS `learning_material_user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning_material_user_type` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `learningMaterialId` int DEFAULT NULL,
  `userTypeId` int DEFAULT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_67aeae28f6be57ee476b6b68178` (`userTypeId`),
  KEY `FK_79de6299326ccddcfa7ea877019` (`learningMaterialId`),
  CONSTRAINT `FK_67aeae28f6be57ee476b6b68178` FOREIGN KEY (`userTypeId`) REFERENCES `user_type` (`id`),
  CONSTRAINT `FK_79de6299326ccddcfa7ea877019` FOREIGN KEY (`learningMaterialId`) REFERENCES `learning_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_material_user_type`
--

LOCK TABLES `learning_material_user_type` WRITE;
/*!40000 ALTER TABLE `learning_material_user_type` DISABLE KEYS */;
INSERT INTO `learning_material_user_type` VALUES (NULL,NULL,NULL,NULL,0,12,20,1,'2a664558-f4af-49ad-acbb-4d5d0b4b621a',0),(NULL,NULL,NULL,NULL,0,13,21,1,'8c3a8cf2-ae52-4a4a-b64e-18b0fa832515',0),(NULL,NULL,NULL,NULL,0,15,23,2,'77317361-bad0-446b-ab31-a259320ec406',11),(NULL,NULL,NULL,NULL,0,19,27,2,'ad8d1188-9e73-4415-871a-65bc5f289b91',2),(NULL,NULL,NULL,NULL,0,20,28,2,'37fd4d16-0055-48e3-827b-ff26d352df6e',2),(NULL,NULL,NULL,NULL,0,21,29,2,'6cb50069-c8ff-4301-b159-f1a0d0edb8f0',2),(NULL,NULL,NULL,NULL,0,22,30,2,'22a71278-0234-40a3-bca8-4f56a5e3babe',2),(NULL,NULL,NULL,NULL,0,23,31,4,'140a14ad-10ca-437e-9165-230200950017',4),(NULL,NULL,NULL,NULL,0,24,32,NULL,'abaaf859-88b0-43db-a7f0-aaa749ba1a97',12),(NULL,NULL,NULL,NULL,0,25,33,NULL,'ea838f3d-4d2a-4ae1-b78d-9679d9be3c11',12),(NULL,NULL,NULL,NULL,0,26,34,NULL,'e30a8b8c-7ace-42b8-a0a6-4ea620355d80',7),(NULL,NULL,NULL,NULL,0,27,35,NULL,'914e34b3-ba01-4480-9d6a-2b508c6c3a42',8),(NULL,NULL,NULL,NULL,0,28,36,NULL,'da8b126a-4ceb-4f68-aee7-c8073dd4fa74',10),(NULL,NULL,NULL,NULL,0,29,37,NULL,'53a773e2-3d30-476b-879f-9a4199db15a3',13),(NULL,NULL,NULL,NULL,0,30,38,NULL,'f53a6c72-9cc7-4cff-9a7f-af20b9f245a4',6);
/*!40000 ALTER TABLE `learning_material_user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `methodology`
--

DROP TABLE IF EXISTS `methodology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `methodology` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `developedBy` varchar(255) NOT NULL,
  `parentId` int DEFAULT NULL,
  `applicableSector` varchar(255) DEFAULT NULL,
  `isActive` int NOT NULL DEFAULT '0',
  `easenessOfDataCollection` varchar(255) DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `sectorId` int DEFAULT NULL,
  `mitigationActionTypeId` int DEFAULT NULL,
  `applicabilityId` int DEFAULT NULL,
  `transportSubSector` varchar(255) DEFAULT NULL,
  `upstream_downstream` varchar(255) DEFAULT NULL,
  `ghgIncluded` varchar(255) DEFAULT NULL,
  `documents` varchar(255) NOT NULL,
  `methodId` int DEFAULT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_233d133d9992c1191c613a9b345` (`countryId`),
  KEY `FK_115ce1bdd3f8dbb2e36d49ff71f` (`sectorId`),
  KEY `FK_b9c3f66fd6907e1550008854ecc` (`mitigationActionTypeId`),
  KEY `FK_8db0e9afc027c589d41bea7e56d` (`applicabilityId`),
  KEY `FK_693100a7373f8691aa3529410fe` (`methodId`),
  CONSTRAINT `FK_115ce1bdd3f8dbb2e36d49ff71f` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`),
  CONSTRAINT `FK_233d133d9992c1191c613a9b345` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_693100a7373f8691aa3529410fe` FOREIGN KEY (`methodId`) REFERENCES `methodology_data` (`id`),
  CONSTRAINT `FK_8db0e9afc027c589d41bea7e56d` FOREIGN KEY (`applicabilityId`) REFERENCES `applicability` (`id`),
  CONSTRAINT `FK_b9c3f66fd6907e1550008854ecc` FOREIGN KEY (`mitigationActionTypeId`) REFERENCES `mitigationActionType` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodology`
--

LOCK TABLES `methodology` WRITE;
/*!40000 ALTER TABLE `methodology` DISABLE KEYS */;
INSERT INTO `methodology` VALUES ('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,1,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',1,1,3,4,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'0dc49d7e-b03c-406f-a40a-8a61cc186633'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,2,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',1,1,3,4,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'0e35fb2d-e434-48d8-8c54-6cfb74f78e2e'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,3,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'1f1a6b7b-b31c-4739-8a0c-9e84c94064fa'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,4,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'6666819d-85b8-4d8e-90ac-f5a4c0be60d4'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,5,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'7d18884b-2c6b-47f0-83b2-b6237e667222'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,6,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'b5a2c27f-e1a8-4756-9287-cdd66b892835'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,7,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'2069be08-ad62-434c-bb7e-34c613319aba'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,8,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',0,'Transport',1,'Moderate to low',1,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'75020287-a231-48ab-941c-457ad1f0b726'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,9,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',10,'61f08f63-0147-45e6-910e-b7de593f7c1e'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,10,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',1,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'43404ed2-0ba2-421b-835c-8ec04301bb6b'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,11,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'496e45e6fad2430c8235789bd9b5d584'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,12,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'80fd1155-a134-4546-9130-fabee5951816'),(NULL,NULL,NULL,NULL,0,13,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',1,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'67a00d4f-7256-42b3-becb-7467edf40c6e'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,14,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,14,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',10,'9c516b9a-89f6-419c-a043-eb5fffc5fb6c'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,15,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',28,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'d5c7f06d-09ad-4a2b-8f44-65cfd6b369b5'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,16,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',28,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'20b5f3f8-cdaf-44b2-a0fa-ff1fc96d0834'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,17,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Freight','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',11,'f1782769-d843-4f9f-b0fc-86e005ae9b86'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,18,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Freight','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',12,'8db8d400-11ae-40a5-ac7e-ea50c281a3d8'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,19,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',13,'9131df7f-75b4-4945-a543-fe905fe24ffc'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,20,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',14,'9cdb209e-b2b6-4f2a-855b-ffcbc73a6065'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,21,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',29,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'facba004-e573-479f-88e2-da55546f3200'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,22,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'8d746d4f-7ace-4674-be84-b6221d9fd9be'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,23,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'4a6ba96b-9f40-4ad2-9b55-ba36a3cedae0'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,24,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'f84290fc-33f1-4c2e-94bb-8b3dca9a7ca7'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,25,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'c7ebadb9-de96-4a19-9791-d38a57f09602'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,26,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'bbb5df0a-3e73-40cd-9fe9-da363cdc96c8'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,27,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'11c95573-2365-4c6f-8ef9-9376fd71c2f9'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,28,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'20e33da9-aa2c-40f7-812c-92e994910108'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,29,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',1,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'9f751398-0359-48b0-b8ae-e79f49e8bbfc'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,30,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',1,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'77c16c64-e05c-4431-bcae-0c74ae32c3e8'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,31,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',30,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'b689409d-c837-4925-91ed-422eaaa94b83'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,32,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'420fd5a6-1077-44ac-9df3-bde1a6252b0e'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,33,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'a9b41c9a-a5ef-46bb-9210-4cbc00769998'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,34,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'10266243-7f4d-492e-a7cd-d2f7583385b9'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,35,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',30,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'0acfd364-b656-4abf-9b24-02bd9550be38'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,36,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'5a49dc43-3e58-4774-9e10-83b15e666d87'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,37,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'f5e5c9c3-6227-4898-a3c9-1e432a40dacd'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,38,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'6350bd0e-5d80-45c6-a8f0-66b54eb56150'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,39,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'dae8b8f3-3155-415b-95d2-90949954054c'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,40,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,14,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',10,'3eca1f4b-51a5-4005-9b24-eb8a5642562a'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,41,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',11,'1d436b1d-bb5c-4df9-9051-feb7a42cfcb5'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,42,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',12,'80444db2-bd14-4c39-a318-a69c828b0439'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,43,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',13,'bd2f76e6-9b9a-4dee-8642-1e8050c7465e'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,44,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',14,'3e1c7629-4da4-4b46-a539-fde23aff89f0'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,45,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',30,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'2f99d27f-6d17-48c1-a354-bdc8f6f3c0da'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,46,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',30,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'883bab5c-8de1-4149-85ef-bea75f6adc9f'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,47,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',30,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'5b14b26e-2c25-47c8-ad4e-0348b25de0d3'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,48,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',30,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'367bc4e0-fd40-4b1c-85cf-8a6dbd6e3910'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,49,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',30,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'99e6c24e-0836-491d-a8be-dd4bfb9decbd'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,50,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',30,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'093c2f85-f94e-47ca-a8a4-2407babff6b3'),('','2022-08-05 11:06:53','-','2022-02-25 14:41:46',0,51,'V 1.0','UNFCCC_AM0016_V_5_new','ACM 0016','CDM',NULL,'Transport',2,'Moderate to low',30,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'defcda6c-d99b-4c9a-957c-284f0ca55cfd'),('','2022-08-15 12:17:47','-','2022-02-25 14:41:46',0,52,'V 1.0','UNFCCC_AM0016_V_5_new','ACM 0016','CDM',NULL,'Transport',1,'Moderate to low',1,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'e0bd0013-4292-45fb-b784-2a357bef7e1f'),('','2022-08-18 04:21:32','-','2022-08-18 14:41:46',0,53,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,3,12,'Freight','No','Only CO2','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau',22,'fc5d563c-3db7-4e96-aa29-7bcb6767754e'),('','2022-08-29 11:47:16','-','2022-08-18 14:41:46',0,54,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport',1,'Moderate to low',1,1,1,1,NULL,'No','Only CO2','',23,'a27bf347-126b-4005-8209-d8a924180f6a'),('','2022-08-31 09:50:14','-','2022-08-18 14:41:46',0,55,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',30,1,3,12,'Freight','No','Only CO2','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau',22,'a83b88d8-caca-4ae2-9c11-f38d71391d43'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,56,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',28,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'171ba448-eefa-4711-9a5c-526dcc4735c0'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,57,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',28,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'1a376cb8-ee25-4b9e-8df2-344e4f878dec'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,58,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'dd3a418a-2c10-4c16-95cb-75115172549d'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,59,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'7087bbd7-2e55-4bbc-ac52-374f1e98f9e1'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,60,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'8e980874-ccef-4d79-ae84-7fe1f06775e4'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,61,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'ca0eb25c-4bf7-4516-8fd5-30b408617713'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,62,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'c81af764-414e-44c3-a2cb-86225199d6b8'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,63,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'341d4916-8532-45d7-adc6-c26a4a28f004'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,64,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'29bdbd05-679c-49d5-a53e-e3b70acaf92a'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,65,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',11,'e69e1d74-da4b-49c7-88b0-ea994c6d72d2'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,66,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',12,'a65ada4f-1263-462a-aff4-7caf24885a0f'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,67,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',13,'0c54d61e-2891-4377-a7c9-0fb0a34b3b2e'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,68,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',14,'faccea76-8d21-438b-85b4-92a4defe2e1f'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,69,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',28,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'aa9f080f-234e-4082-93c2-5128033f1de6'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,70,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',28,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'4bc9ce78-ddd0-4c42-8391-ef3969ff1768'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,71,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',28,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'0cdeeb61-2c20-46e6-9e7e-d3b4aa5b591c'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,72,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',28,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'2ec621b8-5041-4a1a-978f-e9cebe8c959c'),('','2022-08-31 09:50:42','-','2022-08-18 14:41:46',0,73,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',28,1,3,12,'Freight','No','Only CO2','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau',22,'845bbef4-36e4-484a-8aff-10a2f939d41f'),('','2022-08-31 10:02:20','-','2022-08-18 14:41:46',0,74,'V 8.0','AM0031','AM0031-BRT','CDM',NULL,'Transport',1,'Moderate to low',1,1,1,1,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'66d959c1-0169-40d8-b090-0ad18f8623cf'),('','2022-09-01 03:48:34','-','2022-08-18 14:41:46',0,75,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport',1,'Moderate to low',30,1,1,1,NULL,'No','Only CO2','',23,'128e2ed6-a6e4-4fbb-a3f4-404e623cf576'),('','2022-09-01 03:48:52','-','2022-08-18 14:41:46',0,76,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport',1,'Moderate to low',28,1,1,1,NULL,'No','Only CO2','',23,'04f1f27c-4a4a-42d6-8d00-b9dcbc96eb85'),('','2022-09-03 07:31:59','-','2022-08-18 14:41:46',0,77,'V 8.0','AM0031','AM0031-BRT','CDM',NULL,'Transport',1,'Moderate to low',30,1,1,1,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'f03b2e48-0b78-4271-bd09-091c464e8354'),('','2022-09-06 11:00:22','-','2022-08-18 14:41:46',0,78,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN','CDM',NULL,'Transport',1,'Moderate to low',1,1,1,1,NULL,'No','Only CO2','',25,'90a396db-b6d8-43e8-8860-9a79d9c5a686'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,79,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',29,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'d81e5999-0e1a-4de4-bbce-0810115580fe'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,80,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',29,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'64a52aef-2679-4059-ace5-549125022360'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,81,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'8a8ec1fe-454a-416f-9725-9538e4bb240f'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,82,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,14,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',10,'45f92c12-c0c6-4cef-a28f-47c914567926'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,83,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',11,'acb97f85-2991-4e77-bdc9-9ca0e9fb346a'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,84,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',12,'1be7b0e7-5e74-4489-9cc3-4f9a034cd193'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,85,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',13,'3c19bff5-a99b-4cf3-96fa-0be023953492'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,86,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',14,'6f1f1c11-630e-4976-93a4-817afae1e6fb'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,87,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',29,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'91018ad1-18ba-43fa-b98b-cdb872df804a'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,88,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'c07af74a-7c28-40f0-af78-34aa08e994b5'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,89,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'c29d4ce3-86f5-4be5-82d6-46d7f95a3b3a'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,90,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',29,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'e8375cf5-2abc-491a-99c8-c4eacbdfebb6'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,91,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',29,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'1a2fb63d-00f7-4002-b9ac-7b050ec4323f'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,92,'V 1.0','UNFCCC_AM0016_V_5_new','ACM 0016','CDM',NULL,'Transport',1,'Moderate to low',29,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'3187e33b-2f46-452d-b7f0-7a1d547b9e8f'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,93,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,3,12,'Freight','No','Only CO2','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau',22,'f4e0c165-bedb-4447-b0e5-45582d36cb47'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,94,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport',1,'Moderate to low',29,1,1,1,NULL,'No','Only CO2','',23,'5741021a-6f8d-47a3-a24a-65555ec05ac8'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,95,'V 8.0','AM0031','AM0031-BRT','CDM',NULL,'Transport',1,'Moderate to low',29,1,1,1,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'189f8d8e-54d5-4c9b-a2ec-4c3117b9e42a'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,96,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN','CDM',NULL,'Transport',1,'Moderate to low',29,1,1,1,NULL,'No','Only CO2','',25,'c295f0af-5ba1-496f-b548-709c7f6bcb74'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,97,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',32,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'169c4305-5bbf-4077-a371-f698f5111e76'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,98,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',32,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'ce577770-5821-436a-90af-47cce61ff67e'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,99,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'20e7f6f9-e7f3-4281-bda7-f49e95c29004'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,100,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'eabcf1bd-2a04-4d25-81cb-a148364d8828'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,101,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'4ea0e079-3a8b-4e37-a72b-114e9905320a'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,102,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'2c427fba-36c2-4f4d-9b85-67d196e6d960'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,103,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'946fe4b6-c92a-4000-8746-ca10663d974d'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,104,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',32,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'862fae49-49df-4084-8557-5ab07cc6744f'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,105,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',32,1,2,14,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',10,'aabbb547-18c8-4d4c-a205-98ce468e394f'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,106,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'b8b3f93b-64fd-4415-a0db-743840a0e0e7'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,107,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',32,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',12,'4f0981fd-dc79-4112-8ce2-e1672129ba0a'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,108,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',32,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',11,'75a7630e-6490-44c3-9f98-b7e020d05385'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,109,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',32,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',13,'5eb6908d-b200-4065-b510-6984e38e1f60'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,110,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',32,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',14,'70de69a9-f117-4867-8fb8-fc78e05024f1'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,111,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',32,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'fcf8e4f2-5b33-4285-87d2-3244bee5c755'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,112,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',32,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'621d5b43-5126-4650-81ea-69f0eccd0c21'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,113,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',32,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'b8a68cef-7c95-41e1-b92f-be30af953aa5'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,114,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',32,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'3838653d-68d1-469e-a289-6f24203e97d9'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,115,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',32,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'a167e715-3700-4ffa-b791-6f55363ce01b'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,116,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',32,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'0e1d32a4-338c-4cb1-9aa9-fab92392ed13'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,117,'V 1.0','UNFCCC_AM0016_V_5_new','ACM 0016','CDM',NULL,'Transport',1,'Moderate to low',32,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'bf6ba480-15cf-490c-8676-e0753fe17385'),('','2022-10-11 03:07:47','-','2022-08-18 14:41:46',0,118,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',32,1,3,12,'Freight','No','Only CO2','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau',22,'06dde21b-15fd-49cf-96d8-b9cef9dffa97'),('','2022-10-11 03:07:47','-','2022-08-18 14:41:46',0,119,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport',1,'Moderate to low',32,1,1,1,NULL,'No','Only CO2','',23,'609b7a49-26a6-4419-bf6b-2c8c857a88ac'),('','2022-10-11 03:07:47','-','2022-08-18 14:41:46',0,120,'V 8.0','AM0031','AM0031-BRT','CDM',NULL,'Transport',1,'Moderate to low',32,1,1,1,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'3195be96-7bef-498e-bdcd-0c29ad4bd862'),('','2022-10-11 03:07:48','-','2022-08-18 14:41:46',0,121,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN','CDM',NULL,'Transport',1,'Moderate to low',32,1,1,1,NULL,'No','Only CO2','',25,'135a8317-94df-45d7-9b25-3757094a5983'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,122,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',33,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'c88d2548-41e4-4992-800d-864ab45f459f'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,123,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',33,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'9717e307-fa4c-49d3-818b-f60585d4c085'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,124,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'e970a1a5-c545-4bdb-b777-b120f1f087bc'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,125,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'a12371ba-86ab-424c-91ee-1882f9a42880'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,126,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'377972d6-b2e1-46fa-b396-e876aa39bc3b'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,127,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'0d87eca7-9af6-4d40-8855-753fbd8f461b'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,128,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'595741f0-dd2b-41f7-bb66-79e1e0a79181'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,129,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',33,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'384a4e24-be01-4e2f-85bb-65790b3cba05'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,130,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',33,1,2,14,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',10,'bb9ba647-6eda-4108-9e80-7fccab304242'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,131,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',33,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',11,'ef67c939-6460-43e7-b251-229dba7f68b9'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,132,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'186f4b30-2933-4aa2-ba95-42bd61fbddda'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,133,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',33,1,2,3,'Frieght','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf',12,'b8e4352e-7326-4f55-93d7-c2a3e56ca335'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,134,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',33,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',13,'1d69e1d7-8d40-4582-a696-19987f85394d'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,135,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',33,1,2,3,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',14,'c4b75557-e2c5-4d3e-a0ce-362faaa5b776'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,136,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',33,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'effaad2e-3c2b-4634-99a7-bf2c69d987bd'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,137,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',33,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'af2e0272-3a06-4e29-8de4-091e604c72fe'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,138,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',33,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'3d861d69-70f3-41c8-8f4b-c10ef18a04a4'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,139,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',33,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'7d78eff4-f01b-418d-810f-0428749b3bfd'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,140,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',33,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'8122d385-6e97-47ec-aa3d-a57d609a782c'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,141,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',33,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'f580eb7b-7e4e-4bee-b59b-95f307c599f9'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,142,'V 1.0','UNFCCC_AM0016_V_5_new','ACM 0016','CDM',NULL,'Transport',1,'Moderate to low',33,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'ef13bcef-2c42-4b99-9f8a-cdfa089b9ded'),('','2022-11-08 06:01:49','-','2022-08-18 14:41:46',0,143,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',33,1,3,12,'Freight','No','Only CO2','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau',22,'43a7b103-1641-4d4b-965e-2ef8daa65a9b'),('','2022-11-08 06:01:50','-','2022-08-18 14:41:46',0,144,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport',1,'Moderate to low',33,1,1,1,NULL,'No','Only CO2','',23,'887f65bb-de39-47b6-9575-8e4260ba4c2d'),('','2022-11-08 06:01:50','-','2022-08-18 14:41:46',0,145,'V 8.0','AM0031','AM0031-BRT','CDM',NULL,'Transport',1,'Moderate to low',33,1,1,1,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'46d52a71-2a5f-4636-8703-272948f79da5'),('','2022-11-08 06:01:50','-','2022-08-18 14:41:46',0,146,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN','CDM',NULL,'Transport',1,'Moderate to low',33,1,1,1,NULL,'No','Only CO2','',25,'d4996184-cfb7-4448-aabb-1eb62f5ad909');
/*!40000 ALTER TABLE `methodology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `methodology_data`
--

DROP TABLE IF EXISTS `methodology_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `methodology_data` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `developedBy` varchar(255) NOT NULL,
  `parentId` int DEFAULT NULL,
  `applicableSector` varchar(255) DEFAULT NULL,
  `documents` varchar(255) NOT NULL,
  `easenessOfDataCollection` varchar(255) DEFAULT NULL,
  `transportSubSector` varchar(255) DEFAULT NULL,
  `upstream_downstream` varchar(255) DEFAULT NULL,
  `ghgIncluded` varchar(255) DEFAULT NULL,
  `uniqueIdentification` varchar(255) DEFAULT NULL,
  `sectorId` int DEFAULT NULL,
  `mitigationActionTypeId` int DEFAULT NULL,
  `applicabilityId` int DEFAULT NULL,
  `baselineImage` varchar(255) DEFAULT NULL,
  `projectImage` varchar(255) DEFAULT NULL,
  `projectionImage` varchar(255) DEFAULT NULL,
  `leakageImage` varchar(255) DEFAULT NULL,
  `resultImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3b2dd63821c79381a9c08a67300` (`sectorId`),
  KEY `FK_ba8e25093f8f178f79b543cec1a` (`mitigationActionTypeId`),
  KEY `FK_ba7bf70e51ea6ff06589ba0328f` (`applicabilityId`),
  CONSTRAINT `FK_3b2dd63821c79381a9c08a67300` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`),
  CONSTRAINT `FK_ba7bf70e51ea6ff06589ba0328f` FOREIGN KEY (`applicabilityId`) REFERENCES `applicability` (`id`),
  CONSTRAINT `FK_ba8e25093f8f178f79b543cec1a` FOREIGN KEY (`mitigationActionTypeId`) REFERENCES `mitigationActionType` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodology_data`
--

LOCK TABLES `methodology_data` WRITE;
/*!40000 ALTER TABLE `methodology_data` DISABLE KEYS */;
INSERT INTO `methodology_data` VALUES ('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,1,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf','Moderately Resource and Data Intensive','Passenger',NULL,'Only CO2','924c167a-a1ef-42d4-b844-a5be942eb483',1,3,4,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_AMS IIIS_Passenger.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_AMS IIIS_Passenger.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,2,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf','Moderately Resource and Data Intensive','Frieght',NULL,'Only CO2','72647361-ffea-4b8c-9120-289a5f9a8c71',1,3,4,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_AMS IIIS_Freight.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_AMS IIIS_Freight.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,3,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','68776aba-6b2f-4a7e-9bb2-99eb0120bf6b',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch A - Baseline.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch A - PE.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,4,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','423cff3e-7571-4acc-af90-4212b352d31e',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch B - Baseline.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch B - PE.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,5,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','aaef4e0c-dbae-492d-82af-8b74b6ccb93d',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch C - Baseline.PNG',NULL,NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,6,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','9bee1a99-b84b-4615-9bc3-b5e0b6ce42fe',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Toll roads and distance-based charges BE1.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Toll roads and distance-based charges PE 1.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,7,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','b196bfa3-3deb-4b27-b354-a4f8a50b0afc',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Cordon pricing BE 1.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Cordon pricing PE 1.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,8,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','3f69da2a-abff-4510-873f-b27ec09b27b5',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Purchase incentives for low-GHG vehicles.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/icat.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,9,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf','Moderate to low','Passenger','No','Only CO2','49cc9372-d402-471f-bae4-5618ed22197f',1,2,13,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_JICA_Traffic Cogestion.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_JICA_Traffic Congestion.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,10,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf','Moderate to low','Passenger','No','Only CO2','517036d0-d9b1-4b7c-8e8d-12d4fd0b844d',1,2,14,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_JICA_Modal shift.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_JICA_Modal Shift.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,11,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf','Moderate to low','Frieght','No','Only CO2','d77cdd78-e43b-4cca-84df-7acbd7c0079c',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Baseline - Elecrification.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Freight - Project Emission.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Emission Reduction.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,12,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_06.pdf','Moderate to low','Frieght','No','Only CO2','f944e878-ccc4-45eb-b055-d21bb5a4686f',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Freight - Baseline Modal shift.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Freight - Project Emission.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Emission Reduction copy.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,13,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf','Moderate to low','Passenger','No','Only CO2','56a24339-68a9-484b-ae6b-75d3c4e4b128',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA passenger - Electrification - Baseline.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Passenger - Project .png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Emission Reduction copy.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,14,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf','Moderate to low','Passenger','No','Only CO2','0af995ba-8201-4042-b032-cf660cfaea55',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Jica Passenger - Modal shift - Baseline.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Passenger - Project .png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Passenger - Project .png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,15,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf','Moderately Resource and Data Intensive','Passenger and Freight','No','Only CO2','6fe2cefe-a4e3-4ffb-95a1-16a403eb244f',1,4,5,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reductions by electric and hybrid vehicles 1.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reductions by electric and hybrid vehicles PE 1.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,16,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf','Moderately Resource and Data Intensive','Not specified','No','Only CO2','5d6469dd-817d-4d44-a110-80c472de402f',1,4,8,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_Parameters.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_Emission_Equation.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,17,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf','Highly Resource and Data intensive','Freight','No','Only CO2','cab3a62e-1827-4344-ae1d-58a6b74a737f',1,6,6,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_AM0090.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_AM0090.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,18,'V 2.0','AM0110_V_2','AM0110_V_2','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf','Highly Resource and Data intensive','Freight','No','Only CO2','f825e902-d25d-4589-8880-0242e91d1589',1,5,10,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AM 0110 BE.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AM 0110 project.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AM 0110 ER.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,19,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Used defualt emission factor','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf','Moderate to low','Freight','No','Only CO2','071301ea-87b3-4a53-89f2-b58cde084fef',1,3,11,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Baseline.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Project .png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Leakage.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Emission Reduction.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,20,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Used methodological tool','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf','Moderate to low','Freight','No','Only CO2','fd2ddee8-3065-4e3a-8eb4-3b1f2b9c9430',1,3,11,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Baseline.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Project .png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Leakage.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Emission Reduction.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,21,'V 1.0','UNFCCC_AM0016_V_5_new','ACM 0016','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf','Moderate to low','Passenger','No','Only CO2','9fcee0bb-fb65-4fe6-ad40-9b1c052c249d',1,1,9,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ACM0016-be.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/ACM0016-pe.png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ACM0016-le.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,22,'V 4.0','CDM_ACM0017','ACM 0017','CDM',NULL,'Transport','https://cdm.unfccc.int/filestorage/W/9/F/W9FPD1N04ULQHTCBMOIY2ASZ3V8E7R/EB113_repan15_ACM0017_ver04.pdf?t=TjR8cmdzbWJ6fDDR6ijE7t1EkL3y36cQHyau','Highly Resource and Data intensive','Freight','No','Only CO2','da8c7ca3-3bce-44d0-a2cd-e286e5f1d882',1,3,12,NULL,NULL,NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,23,'V 1.0','CDM_AMS_III_AT','CDM_AMS_III_AT','CDM',NULL,'Transport','','Moderate to low',NULL,'No','Only CO2','f33ac249-f2a1-4bb6-bce9-5426cfde33c0',1,1,1,NULL,NULL,NULL,NULL,NULL),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,24,'V 8.0','AM0031','AM0031-BRT','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf','Moderate to low','Passenger','No','Only CO2','3867952c-14d0-4460-be92-c3b9aea28be1',1,1,1,NULL,NULL,NULL,NULL,NULL),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,25,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN','CDM',NULL,'Transport','','Moderate to low',NULL,'No','Only CO2','8540c8b0-e25e-4715-850f-a911683bf953',1,1,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `methodology_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitigationActionType`
--

DROP TABLE IF EXISTS `mitigationActionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitigationActionType` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `uniqueIdentification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitigationActionType`
--

LOCK TABLES `mitigationActionType` WRITE;
/*!40000 ALTER TABLE `mitigationActionType` DISABLE KEYS */;
INSERT INTO `mitigationActionType` VALUES ('','2022-02-24 18:32:27','','2022-02-24 18:32:27',0,1,'Fuel Pricing Policices','Fuel Pricing Policices',1,'4ac9f5f5-9d99-44a4-afd2-3dcefd261ba4'),('','2022-02-24 18:32:27','','2022-02-24 18:32:27',0,2,'Inter Urban Rail Infrastructure','Inter Urban Rail Infrastructure',2,'537b09fb-a262-4929-a7ba-eab911dedf39'),('','2022-02-24 18:32:27','','2022-02-24 18:32:27',0,3,'Alternative Fuels Incentives,Regulation and Production ','Alternative Fuels Incentives,Regulation and Production ',3,'15477995-a7d6-4e59-b21a-584bcfb7825d'),('1','2022-02-24 18:32:27','1','2022-02-24 18:32:27',0,4,'Vehicle Efficiency Improvement Programmes ','Alternative Fuels Incentives,Regulation and Production',4,'03e6d6717f794432b8be65842b05f182'),('1','2022-02-24 18:32:27','1','2022-02-24 18:32:27',0,5,'Shift Mode of Freight Transport from Road to Rail, Water or pipeline','Shift Mode of Freight Transport from Road to Rail, Water or pipeline',5,'f17bca44efd8426e85bff3a4d387aa6a'),('1',NULL,'1',NULL,0,6,'Mass  Transit Investment','Mass  Transit Investment',6,'84d1566a-cab9-4507-bfd9-828979e127d9');
/*!40000 ALTER TABLE `mitigationActionType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndc`
--

DROP TABLE IF EXISTS `ndc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ndc` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `setId` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `sectorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_92389299b167ac885ba3bec8657` (`setId`),
  KEY `FK_7e561bde5bd1c89bb8a54e13a2f` (`countryId`),
  KEY `FK_654634fb70af569a33c1cdb994c` (`sectorId`),
  CONSTRAINT `FK_654634fb70af569a33c1cdb994c` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`),
  CONSTRAINT `FK_7e561bde5bd1c89bb8a54e13a2f` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_92389299b167ac885ba3bec8657` FOREIGN KEY (`setId`) REFERENCES `ndc_set` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndc`
--

LOCK TABLES `ndc` WRITE;
/*!40000 ALTER TABLE `ndc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndc_set`
--

DROP TABLE IF EXISTS `ndc_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ndc_set` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `submissionDate` datetime NOT NULL,
  `countryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ca2befaabb1b648bef65426505e` (`countryId`),
  CONSTRAINT `FK_ca2befaabb1b648bef65426505e` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndc_set`
--

LOCK TABLES `ndc_set` WRITE;
/*!40000 ALTER TABLE `ndc_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndc_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_approval_status`
--

DROP TABLE IF EXISTS `project_approval_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_approval_status` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_approval_status`
--

LOCK TABLES `project_approval_status` WRITE;
/*!40000 ALTER TABLE `project_approval_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_approval_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_owner`
--

DROP TABLE IF EXISTS `project_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_owner` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_owner`
--

LOCK TABLES `project_owner` WRITE;
/*!40000 ALTER TABLE `project_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectstatus`
--

DROP TABLE IF EXISTS `projectstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projectstatus` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectstatus`
--

LOCK TABLES `projectstatus` WRITE;
/*!40000 ALTER TABLE `projectstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `reportName` varchar(255) NOT NULL,
  `savedLocation` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isPublish` int DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT 'https://act.campaign.gov.uk/wp-content/uploads/sites/25/2017/02/form_icon-1.jpg',
  `countryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4573f1195dcb7fce0638e5ec239` (`countryId`),
  CONSTRAINT `FK_4573f1195dcb7fce0638e5ec239` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `uniqueIdentification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES ('','2022-02-24 18:32:15','','2022-02-24 18:32:15',0,1,'Transport','Transport',1,'af488820-5439-46f5-8b54-3a38bf583fb9');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub-sector`
--

DROP TABLE IF EXISTS `sub-sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub-sector` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `sectorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ac74d5f5215ab743bc498899c2c` (`sectorId`),
  CONSTRAINT `FK_ac74d5f5215ab743bc498899c2c` FOREIGN KEY (`sectorId`) REFERENCES `sector` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub-sector`
--

LOCK TABLES `sub-sector` WRITE;
/*!40000 ALTER TABLE `sub-sector` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub-sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_ndc`
--

DROP TABLE IF EXISTS `sub_ndc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_ndc` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  `ndcId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_743d909fa9717fcd224725adc85` (`ndcId`),
  CONSTRAINT `FK_743d909fa9717fcd224725adc85` FOREIGN KEY (`ndcId`) REFERENCES `ndc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_ndc`
--

LOCK TABLES `sub_ndc` WRITE;
/*!40000 ALTER TABLE `sub_ndc` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_ndc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `mrvInstitution` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetToken` varchar(255) NOT NULL,
  `deletedAt` datetime(6) DEFAULT NULL,
  `canNotDelete` tinyint NOT NULL DEFAULT '0',
  `userTypeId` int DEFAULT NULL,
  `institutionId` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `uniqueIdentification` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_78a916df40e02a9deb1c4b75ed` (`username`),
  UNIQUE KEY `IDX_e12875dfb3b1d92d7d7c5377e2` (`email`),
  KEY `FK_29f29dffce2845a1abc901d4e85` (`userTypeId`),
  KEY `FK_ca0de218397aed2409d865d1580` (`institutionId`),
  KEY `FK_4aaf6d02199282eb8d3931bff31` (`countryId`),
  CONSTRAINT `FK_29f29dffce2845a1abc901d4e85` FOREIGN KEY (`userTypeId`) REFERENCES `user_type` (`id`),
  CONSTRAINT `FK_4aaf6d02199282eb8d3931bff31` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_ca0de218397aed2409d865d1580` FOREIGN KEY (`institutionId`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('-','2022-03-02 02:42:07','-','2022-03-02 02:42:07',0,40,'Dr. Henning','Wuester','icat@unops.org','icat@unops.org','+49 228 815 0317','+49 228 815 0317',NULL,'$2b$10$Sl6MW7QyJkEcLwSgMo1Lo.','$2b$10$Sl6MW7QyJkEcLwSgMo1Lo.muIVbg4BbSQn2.jxDE0Rr.wxLAFvYHe','',NULL,0,4,6,1,''),('-','2022-03-02 04:02:09','-','2022-03-02 04:02:09',0,41,'Shyamika','Shiwanthi','pmuadmin2@climatesi.com','pmuadmin2@climatesi.com','+07 12-372-0622','+07 12-372-0622',NULL,'$2b$10$wdgFIvX9Dq6daUkGqFQMqu','$2b$10$wdgFIvX9Dq6daUkGqFQMqu9cKay7/bSMSwc6EvQFbw5zFSgCppi16','',NULL,0,1,5,1,''),('-','2022-05-30 04:21:30','-','2022-05-30 04:21:30',0,68,'Hak','Mao','dr.hak.mao25@gmail.com','dr.hak.mao25@gmail.com','+85 56-672-8282','+85 56-672-8282','department of climate change','$2b$10$q5sT7p8/hHoUBsc3kiCzSe','$2b$10$q5sT7p8/hHoUBsc3kiCzSemp8TsoFzMDOUfLeewBLr.R6zNPzNjZW','',NULL,0,2,NULL,28,'a2d8a76e-23e6-434f-95f4-46fa6d6e09d1'),('-','2022-05-30 06:10:31','-','2022-05-30 06:10:31',0,69,'Liberia_CA','Admin','kortezokka232@vusra.com','kortezokka232@vusra.com','+44 71-089-2190','+44 71-089-2190','Department of climate change_LB','n/a','','',NULL,0,2,NULL,4,'eaab36d6-b13f-406f-ba3b-cd8d1cf831aa'),('-','2022-07-20 06:19:21','-','2022-07-20 06:19:21',0,73,'A&B-test','test','lisijig589@leupus.com','lisijig589@leupus.com','+07 14-888-4031','+07 14-888-4031','abc','$2b$10$Sl6MW7QyJkEcLwSgMo1Lo.','$2b$10$Sl6MW7QyJkEcLwSgMo1Lo.muIVbg4BbSQn2.jxDE0Rr.wxLAFvYHe','',NULL,0,2,NULL,29,'ebf979b1-1fb0-4581-beeb-658d9f6f0ce2'),('-','2022-07-28 05:52:56','-','2022-07-28 05:52:56',0,75,'Nemo','Samnang','ritiqy@decabg.eu','ritiqy@decabg.eu','+85 52-512-4326','+85 52-183-5182',NULL,'$2b$10$Mxf8RB80RnXi9iyvfoigu.','$2b$10$Mxf8RB80RnXi9iyvfoigu.ZtBmMpWCWIDwhaUPXLUu4fv74coOuAC','',NULL,0,3,5,1,'0dcb511b-3afc-418c-8f02-5cf80ae98716'),('-','2022-08-05 04:12:23','-','2022-08-05 04:12:23',0,76,'Pham','Vuong','xedego4525@5k2u.com','xedego4525@5k2u.com','+84 26-172-8371','+84 27-362-8190','Ministry of Environment','$2b$10$q05TLrU53x9aLYRtNslXNO','$2b$10$q05TLrU53x9aLYRtNslXNOuNAGCSf1FQhuqpzPSkW6PVpNYvNQJuW','',NULL,0,2,NULL,30,'f4fa0e7a-d373-4951-9cce-d7ba3d9840ce'),('-','2022-09-21 08:37:51','-','2022-09-21 08:37:51',0,78,'Audrey','Doherty','zipazo@teleg.eu','zipazo@teleg.eu','+94 71-238-9191','+94 89-123-9122','Ministry of Transport','$2b$10$OvCmdptkXtyrUfRGGSfG7O','$2b$10$OvCmdptkXtyrUfRGGSfG7OVkTQ/wh/5koqNa5YGbrBqCzUoGfeD1G','',NULL,0,2,NULL,31,'87e54d01-a0ab-4abd-a5da-586bd44285cc'),('-','2022-09-22 03:40:55','-','2022-09-22 03:40:55',0,79,'Henna','Bright','jamesu@decabg.eu','jamesu@decabg.eu','+95 12-379-8123','+91 54-871-3819','Ministry of Environment','$2b$10$TiPCjgUaxZjcDRaWUQhNl.','$2b$10$TiPCjgUaxZjcDRaWUQhNl.X.3diLGqrKV6CXv4Fg4xK2qr0XSzcte','',NULL,0,2,NULL,32,'e3f0d06f-0a91-45da-9df9-d115997f35f3'),('-','2022-10-28 06:27:25','-','2022-10-28 06:27:25',0,81,'Melvin','Lord','testsinglecountry@minutestep.com','testsinglecountry@minutestep.com','+11 11-111-1111','+11 11-111-1111','Single Country  institution ','n/a','','',NULL,0,2,NULL,33,'979ee1e9-8711-4049-b1ef-7c512e50f848');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `editedBy` varchar(255) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `sortOrder` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES ('1','2021-11-30 00:00:00','1','2021-11-30 00:00:00',1,1,'PMU Admin','icat admin',1),('1','2021-11-30 00:00:00','1','2021-11-30 00:00:00',1,2,'Country Admin','icat user',1),('1','2021-11-30 00:00:00','1','2021-11-30 00:00:00',1,3,'PMU User','pmu admin',1),(NULL,NULL,NULL,NULL,0,4,'ICAT Admin',NULL,1),(NULL,NULL,NULL,NULL,0,5,'ICAT User',NULL,1);
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 14:43:36
