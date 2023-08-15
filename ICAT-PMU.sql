-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: icat_pmu
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicability`
--

LOCK TABLES `applicability` WRITE;
/*!40000 ALTER TABLE `applicability` DISABLE KEYS */;
INSERT INTO `applicability` VALUES ('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,1,'Estimates the impact of fuel pricing policies on GHG emissions in the road transport sector','Estimates the impact of fuel pricing policies on GHG emissions in the road transport sector',1,'99872dd9-441e-4929-ac02-a5428c17b856'),('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,2,'Reduce traffic congestion','Reduce traffic congestion',2,'ac7d1e9a-8d71-464a-b8de-c433bdb023fa'),('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,3,'Shift passenger from road to rail','Shift passenger from road to rail',3,'271dcb5a-2360-4abc-88b2-8412d6e3e9bc'),('','2022-02-11 07:11:36','','2022-02-11 07:11:36',0,4,'Introduce vehicles with lower emissions per kilometer','Introduce vehicles with lower emissions per kilometer',4,'2d3a77a6-4c81-46d8-86d1-5a4df742e9c2'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,5,'New electric and/or hybrid vehicles that displace the use of fossil fuel vehicles',NULL,5,'2e29f1591faa428a8ccaedf235144d07'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,6,'Shift cargo among trucks barges, ships and trains',NULL,6,'2256a69208254ccfb0eb5b95372096e2'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,7,'Shift pasengers from private to public vehicles','Shift pasengers from private to public vehicles',7,'9b538ba19d6c47cfaa49db5666f216a6'),('1','2022-02-11 07:11:36','1','2022-02-11 07:11:36',0,8,'Retrofits that improve engine efficiency','Retrofits that improve engine efficiency',8,'9acbfe5e23a94719b8572c59498f7f48'),('1',NULL,'1',NULL,0,9,'Project activities that establish and operate an MRTS without feeder lines','Project activities that establish and operate an MRTS without feeder lines',9,'abe4e32a-cf55-4bc1-af2a-a3620e3c93e9'),('',NULL,'',NULL,0,10,'Shift in mode of transportation of liquid fuels from road transportation using trucks to pipeline transportation','Shift in mode of transportation of liquid fuels from road transportation using trucks to pipeline transportation',10,'25bf8ecd-0ffb-46d2-9944-e655157f23a5'),('',NULL,'',NULL,0,11,'Displacement of diesel with bio-diesel','Displacement of diesel with bio-diesel',11,'9577d1b8-b999-43a6-b9cf-7bca0343d18a'),('',NULL,'',NULL,0,12,'Production, sale and consumption of blended biodiesel used as fuel','Production, sale and consumption of blended biodiesel used as fuel',12,'5adca21c-83e4-4129-91bd-dfe409e1a7b6'),('',NULL,'',NULL,0,13,'Reduce traffic congestion','Reduce traffic congestion',1,'7b16af33-1d0b-40dc-a62e-b86b2538ae20'),('',NULL,'',NULL,0,14,'Shift passengers from private to public vehicles (road)','Shift passengers from private to public vehicles (road)',1,'fdcbaeaa-7571-4ff0-9fb6-fd665650a346'),(' ','2022-02-11 07:11:36',' ','2022-02-11 07:11:36',0,15,'Installing vehicle or engine tracking and recording systems','Installing vehicle or engine tracking and recording systems',1,'fdcbaeaa-7571-4ff0-9fb6-fd665650ahfghs'),(' ','2022-02-11 07:11:36',' ','2022-02-11 07:11:36',0,16,'Construction and operation of a new BRT system or replacement or expansions of existing BRT systems (adding new routes and lines)','Construction and operation of a new BRT system or replacement or expansions of existing BRT systems (adding new routes and lines)',1,'abe4e32a-cf55-4bc1-af2a-a3620e3c9ffhhgd'),(' ','2022-02-11 07:11:36',' ','2022-02-11 07:11:36',0,17,'Implementation of ITS measures to improve the operation of buses or Changes/improvements in bus routes that allow for a more efficient journey between the origin and final destination','Implementation of ITS measures to improve the operation of buses or Changes/improvements in bus routes that allow for a more efficient journey between the origin and final destination',1,'9b538ba19d6c47cfaa49db5666f2gt43');
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
) ENGINE=InnoDB AUTO_INCREMENT=895 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('',NULL,'',NULL,0,1,'LK','LKA','Sri Lanka','Sri lanka',1,1,'https://www.worldometers.info//img/flags/small/tn_ce-flag.gif',NULL,NULL,'Active','Asia','6d4970cc-1330-4c13-a87d-ec98617536da',5,0,0,0,1,1,0,NULL,NULL),('',NULL,'',NULL,0,2,'KE','KEN','Kenya','Kenya',2,1,'https://www.worldometers.info//img/flags/small/tn_ke-flag.gif','2022-05-17 12:30:41',NULL,'Active','Africa','b3cac7d2-247f-46d3-ac81-f7f8cf2468d0',19,1,1,1,1,1,NULL,NULL,NULL),('',NULL,'',NULL,0,3,'KG','KGZ','Kyrgyzstan','Kyrgyzstan',3,1,'https://www.worldometers.info//img/flags/small/tn_kg-flag.gif','2022-05-26 09:14:36',NULL,'Active','Asia','fa0ce0b6-655f-423c-a29f-3b46a99c9559',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,4,'LR','LBR','Liberia','Liberia',4,1,'https://www.worldometers.info//img/flags/small/tn_li-flag.gif','2022-05-30 06:07:30',NULL,'Deactivated','Africa','6ce03f29-998a-4cd0-9e35-c637e678fb2f',NULL,1,1,0,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,5,'MV','MDV','Maldives','Maldives',5,1,'https://www.worldometers.info//img/flags/small/tn_mv-flag.gif','2022-05-30 06:07:30',NULL,'Active','Asia','141faf7d-5766-42d1-bd08-64a5cb42527a',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,6,'MX','MEX','Mexico','Mexico',6,1,'https://www.worldometers.info//img/flags/small/tn_mx-flag.gif','2022-05-30 06:07:30',NULL,'Active','Americas','8e571ce4-cc61-4c56-b943-7ec797728ae5',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,7,'MA','MAR','Morocco','Morocco',7,1,'https://www.worldometers.info//img/flags/small/tn_mo-flag.gif','2022-05-30 06:07:30',NULL,'Active','Africa','1a872c32-6e9b-4e31-9e56-23da03517590',NULL,1,1,1,1,1,NULL,NULL,NULL),('',NULL,'',NULL,0,8,'MZ','MOZ','Mozambique','Mozambique',8,0,'https://www.worldometers.info//img/flags/small/tn_mz-flag.gif',NULL,NULL,NULL,'Africa','0d56e49c-675e-4c5c-9be5-cddb74c6e9db',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,9,'NG','NGA','Nigeria','Nigeria',9,1,'https://www.worldometers.info//img/flags/small/tn_ni-flag.gif','2022-06-06 09:01:47',NULL,'Deactivated','Africa','86d06950-83f1-4ee2-b101-975560744de5',20,1,1,1,1,1,0,NULL,NULL),('',NULL,'',NULL,0,10,'PE','PER','Peru','Peru',10,1,'https://www.worldometers.info//img/flags/small/tn_pe-flag.gif','2022-05-25 10:59:13',NULL,'Active','Americas','f0afd7be-51c4-4113-be5c-b36872da9ddb',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,11,'PH','PHL','Philippines','Philippines',11,1,'https://www.worldometers.info//img/flags/small/tn_rp-flag.gif','2023-08-03 07:45:12',NULL,'Active','Asia','725d39d9-4d12-43da-9976-d38f87f31c53',20,1,1,1,1,1,1,NULL,NULL),('',NULL,'',NULL,0,12,'CD','COD','Republic of the Congo','Republic of the Congo',12,1,'https://www.worldometers.info//img/flags/small/tn_congo-flag.gif','2023-08-03 11:41:20',NULL,'Active','Africa','173ee671-8c7b-4953-9dfc-ca9db8bc7e1f',21,1,1,1,1,1,1,NULL,NULL),('',NULL,'',NULL,0,13,'RW','RWA','Rwanda','Rwanda',13,0,'https://www.worldometers.info//img/flags/small/tn_rw-flag.gif',NULL,NULL,NULL,'Africa','dbd26c80-2382-4dd1-a4ab-12025b041209',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,14,'ST','STP','São Tomé and Príncipe','São Tomé and Príncipe',14,0,'https://www.worldometers.info//img/flags/small/tn_tp-flag.gif',NULL,NULL,NULL,'Africa','56097437-7691-40bd-a35d-23e04de39591',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,15,'SN','SEN','Senegal','Senegal',15,0,'https://www.worldometers.info//img/flags/small/tn_sg-flag.gif',NULL,NULL,NULL,'Africa','1104491b-871e-4bea-a8fd-81c223967caf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,16,'ZA','ZAF','South Africa','South Africa',16,1,'https://www.worldometers.info//img/flags/small/tn_sf-flag.gif','2022-05-18 11:15:26',NULL,'Active','Africa','80c6bd79-2c9a-42ea-a5e7-3f66bf53c2e2',NULL,1,1,1,1,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,17,'SD','SDN','Sudan','Sudan',17,0,'https://www.worldometers.info//img/flags/small/tn_su-flag.gif',NULL,NULL,NULL,'Africa','c2f64248-8dad-4042-82ee-1e8390ac84b9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,18,'TJ','TJK','Tajikistan','Tajikistan',18,0,'https://www.worldometers.info//img/flags/small/tn_ti-flag.gif',NULL,NULL,NULL,'Asia','7229e0d0-cb53-4f52-b79b-7dce25222e6e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,19,'TH','THA','Thailand','Thailand',19,0,'https://www.worldometers.info//img/flags/small/tn_th-flag.gif',NULL,NULL,NULL,'Asia','e457f186-b285-4f4b-b90b-abfa59efe6ee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,20,'TO','TON','Tonga','Tonga',20,0,'https://www.worldometers.info//img/flags/small/tn_tn-flag.gif',NULL,NULL,NULL,'Oceania','f414ed32-0750-48ab-99f7-a800edd16d3e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,21,'TT','TTO','Trinidad and Tobago','Trinidad and Tobago',21,0,'https://www.worldometers.info//img/flags/small/tn_td-flag.gif',NULL,NULL,NULL,'Americas','cff0b754-cedc-4580-81f8-902c8a715d6d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,22,'TN','TUN','Tunisia','Tunisia',22,0,'https://www.worldometers.info//img/flags/small/tn_ts-flag.gif',NULL,NULL,NULL,'Africa','a589ca6b-43ad-48b5-80c0-b8fbd12c8447',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,23,'TM','TKM','Turkmenistan','Turkmenistan',23,1,'https://www.worldometers.info//img/flags/small/tn_tx-flag.gif','2022-06-06 09:02:25',NULL,'Active','Asia','373460c3-fc89-4652-82a3-e9bf69b9cd5e',NULL,0,0,1,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,24,'AE','URE','United Arab Emirates','United Arab Emirates',24,1,'https://www.worldometers.info//img/flags/small/tn_ae-flag.gif','2022-05-11 06:39:48',NULL,'Active','Asia','3e7dfbdd-9a47-4615-9fe9-0f185ba4ff2c',NULL,1,0,0,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,25,'UZ','UZB','Uzbekistan','Uzbekistan',25,0,'https://www.worldometers.info//img/flags/small/tn_uz-flag.gif','2022-05-10 15:43:37',NULL,'Active','Asia','696d09fa-6991-4b8e-a8eb-26347d36508c',NULL,0,0,0,0,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,26,'VN','VNM','Viet Nam','Viet Nam',26,1,'https://www.worldometers.info//img/flags/small/tn_vm-flag.gif','2022-06-08 07:19:36',NULL,'Active','Asia','a4dc57dc-4d19-4807-9832-c153556b38b6',NULL,1,1,1,1,1,NULL,NULL,NULL),('',NULL,'',NULL,0,27,'ZW','ZWE','Zimbabwe','Zimbabwe',27,1,'https://www.worldometers.info//img/flags/small/tn_zi-flag.gif','2022-05-10 15:20:09',NULL,'Active','Africa','33942ed5-12ab-4fa8-b215-4ad7fd173590',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),('',NULL,'',NULL,0,28,'KH','KHM','Cambodia_Test','Cambodia',28,1,'https://www.worldometers.info/img/flags/cb-flag.gif','2022-05-19 03:20:18',NULL,'Active','Asia','4dadff9c2b634fb7a02f98f44e46f4bd',14,0,0,0,1,NULL,0,NULL,NULL),('',NULL,'',NULL,0,29,'AG','ATG','Antigua and Barbuda_test','Antigua and Barbuda_test',1,1,'https://www.worldometers.info/img/flags/ac-flag.gif','2022-05-19 03:20:18',NULL,'Active','Carribean','9d49df8e-2f80-4308-b865-c62f3e7eaa0b',15,0,0,0,1,1,0,NULL,NULL),('',NULL,'',NULL,0,30,'VN','VNM','Vietnam_Test ','Vietnam_Test ',30,1,'https://www.worldometers.info//img/flags/small/tn_vm-flag.gif','2022-08-05 03:25:33',NULL,'Active','Asia','a8c08fae-6f1b-480d-a087-6080c82fdf72',NULL,0,0,0,1,1,0,NULL,NULL),(NULL,'2022-09-21 08:36:37',NULL,'2022-09-21 08:36:37',0,31,'LK','LKA','Test ClimateSI','test ClimateSI',31,1,'https://www.climatesi.com/assets/images/SI-logo.jpg','2022-09-21 08:36:36',NULL,'Deactivated','Asia','a8c08fae-6f1b-480d-a087-6080c82fdffg',NULL,0,0,1,0,1,0,NULL,NULL),(NULL,'2022-09-22 03:39:35',NULL,'2022-09-22 03:39:35',0,32,'LK','LKA','Test ICAT','Test ICAT',32,1,'https://climateactiontransparency.org/wp-content/themes/custom/assets/i/logo/logo_blue.svg','2022-09-22 03:39:34',NULL,'Active','Asia','4dadff9c2b634fb7a02f98f44e46f4gyyh',20,0,0,0,1,1,0,NULL,NULL),('','2022-10-27 13:30:55','','2022-10-27 13:30:55',0,33,'LK','LKA','Test Single Country','Test Single Country',1,1,'https://www.worldometers.info//img/flags/small/tn_ce-flag.gif','2022-10-27 13:30:54',NULL,'Deactivated','Asia','6d4970cc-1330-4c13-a87d-ec986175kkka',5,1,1,1,1,1,1,1,'https://icat-ca-tool-country.climatesi.com'),(NULL,'2023-05-10 07:01:46',NULL,'2023-05-10 07:01:46',0,34,'KH','KHM','Cambodia','Cambodia',34,1,'https://www.worldometers.info/img/flags/cb-flag.gif','2023-05-10 07:01:45',NULL,'Active','Asia','4dadff9c2b63ddd4fb7a02f98f44e46f4bd',NULL,1,1,1,1,1,0,NULL,NULL),('',NULL,'',NULL,0,35,'DZ','DZA','Algeria','Algeria',8,0,'https://www.worldometers.info/img/flags/ag-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4ab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,36,'AO','AGO','Angola','Angola',8,0,'https://www.worldometers.info/img/flags/ao-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4ac',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,37,'AR','ARG','Argentina','Argentina',8,0,'https://www.worldometers.info/img/flags/ar-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,38,'BD','BGD','Bangladesh','Bangladesh',8,0,'https://www.worldometers.info/img/flags/bg-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,39,'BZ','BLZ','Belize','Belize',8,0,'https://www.worldometers.info/img/flags/bh-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,40,'BW','BWA','Botswana','Botswana',8,0,'https://www.worldometers.info/img/flags/bc-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4beq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,41,'BR','BRA','Brazil','Brazil',8,0,'https://www.worldometers.info/img/flags/br-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bew',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,42,'BI','BDI','Burundi','Burundi',8,0,'https://www.worldometers.info/img/flags/by-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,43,'CM','CMR','Cameroon','Cameroon',8,0,'https://www.worldometers.info/img/flags/cm-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4ber',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,44,'CF','CAF','Central African Republic','Central African Republic',8,0,'https://en.wikipedia.org/wiki/File:Flag_of_the_Central_African_Republic.svg',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,45,'TD','TCD','Chad','Chad',8,0,'https://www.worldometers.info/img/flags/cd-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,46,'CL','CHL','Chile','Chile',8,0,'https://www.worldometers.info/img/flags/ci-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4beu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,47,'CN','CHN','China','China',8,0,'https://www.worldometers.info/img/flags/ch-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bei',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,48,'CO','COL','Colombia','Colombia',8,0,'https://www.worldometers.info/img/flags/co-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4beo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,49,'CR','CRI','Costa Rica','Costa Rica',8,0,'https://www.worldometers.info/img/flags/cs-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,50,'CU','CUB','Cuba','Cuba',8,0,'https://www.worldometers.info/img/flags/cu-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,51,'CD','COD','Democratic Republic of the Congo','Democratic Republic of the Congo',8,0,'https://en.wikipedia.org/wiki/File:Flag_of_the_Democratic_Republic_of_the_Congo.svg',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,52,'DM','DOM','Dominican Republic','Dominican Republic',8,0,'https://www.worldometers.info/img/flags/dr-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bef',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,53,'EC','ECU','Ecuador','Ecuador',8,0,'https://www.worldometers.info/img/flags/ec-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4beg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,54,'GQ','GNQ','Equatorial Guinea','Equatorial Guinea',8,0,'https://www.worldometers.info/img/flags/ek-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4beh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,55,'SZ','SWZ','Eswatini','Eswatini',8,0,'https://www.worldometers.info/img/flags/wz-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bej',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,56,'ET','ETH','Ethiopia','Ethiopia',8,0,'https://www.worldometers.info/img/flags/et-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bek',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,57,'FJ','FJI','Fiji','Fiji',8,0,'https://www.worldometers.info/img/flags/fj-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bza',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,58,'GA','GAB','Gabon','Gabon',8,0,'https://www.worldometers.info/img/flags/gb-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bzm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,59,'GH','GHA','Ghana','Ghana',8,0,'https://www.worldometers.info/img/flags/gh-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bzx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,60,'GN','GIN','Guinea','Guinea',8,0,'https://www.worldometers.info/img/flags/gv-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bvd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,61,'IN','IND','India','India',8,0,'https://www.worldometers.info/img/flags/in-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bzv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,62,'KZ','KAZ','Kazakhstan','Kazakhstan',8,0,'https://www.worldometers.info/img/flags/kz-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4blk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,63,'LS','LSO','Lesotho','Lesotho',8,0,'https://www.worldometers.info/img/flags/lt-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4blm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('','2023-08-03 05:30:54','','2023-08-03 05:30:54',0,64,'MG','MDG','Madagascar','Madagascar',8,1,'https://www.worldometers.info/img/flags/ma-flag.gif','2023-08-03 05:30:53',NULL,'Deactivated','Africa','4dadff9c2b63ddd4fb7a02f98f44e46f4bkjh',5,1,1,1,1,NULL,0,NULL,NULL),('',NULL,'',NULL,0,65,'ML','MLI','Mali','Mali',8,0,'https://www.worldometers.info/img/flags/ml-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b6hgddd4fb7a02f98f44e46f4bd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('','2023-08-02 10:25:44','','2023-08-02 10:25:44',0,66,'NE','NER','Niger','The Niger, officially the Republic of the Niger, is a landlocked country in West Africa. It is a unitary state bordered by Libya to the northeast, Chad to the east, Nigeria to the south, Benin and Burkina Faso to the southwest, Mali to the west, and Algeria to the northwest',8,1,'https://www.worldometers.info/img/flags/ng-flag.gif','2023-08-02 10:25:44',NULL,'Deactivated','Africa','4dadff9mjh63ddd4fb7a02f98f44e46f4bd',5,1,1,1,1,NULL,0,NULL,NULL),('',NULL,'',NULL,0,67,'PA','PAN','Panama','Panama',8,0,'https://www.worldometers.info/img/flags/pm-flag.gif',NULL,NULL,NULL,'Africa','4daujhg9c2b63ddd4fb7a02f98f44e46f4bd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,68,'UG','UGA','Uganda','Uganda',8,0,'https://www.worldometers.info/img/flags/ug-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e4jugs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,'',NULL,0,69,'VU','VUT','Vanuatu','Vanuatu',8,0,'https://www.worldometers.info/img/flags/nh-flag.gif',NULL,NULL,NULL,'Africa','4dadff9c2b63ddd4fb7a02f98f44e46f67hs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,0,70,'AG','ATG','Antigua and Barbuda','Antigua and Barbuda',1,0,'https://www.worldometers.info/img/flags/ac-flag.gif',NULL,NULL,NULL,NULL,'33942ed5-12ab-4fa8-b215-4ad7fd1hggfn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_sector`
--

LOCK TABLES `country_sector` WRITE;
/*!40000 ALTER TABLE `country_sector` DISABLE KEYS */;
INSERT INTO `country_sector` VALUES (NULL,NULL,NULL,NULL,0,1,27,1,'c9abdfc0-74b6-43e4-bca9-27fd0c8a6a29'),(NULL,NULL,NULL,NULL,0,2,0,1,''),(NULL,NULL,NULL,NULL,0,3,0,1,''),(NULL,NULL,NULL,NULL,0,4,0,1,''),(NULL,NULL,NULL,NULL,0,5,0,1,''),(NULL,NULL,NULL,NULL,0,6,0,1,''),(NULL,NULL,NULL,NULL,0,7,0,1,''),(NULL,NULL,NULL,NULL,0,8,0,1,''),(NULL,NULL,NULL,NULL,0,9,0,1,''),(NULL,NULL,NULL,NULL,0,10,0,1,''),(NULL,NULL,NULL,NULL,0,11,0,1,''),(NULL,NULL,NULL,NULL,0,12,0,1,''),(NULL,NULL,NULL,NULL,0,13,0,1,''),(NULL,NULL,NULL,NULL,0,14,3,1,'88760436-9f71-4324-9145-dcfe424790bd'),(NULL,NULL,NULL,NULL,0,15,0,1,''),(NULL,NULL,NULL,NULL,0,16,0,1,''),(NULL,NULL,NULL,NULL,0,17,24,1,'79f3a524-3e65-40b2-85bf-4872ae99c066'),(NULL,NULL,NULL,NULL,0,18,0,1,''),(NULL,NULL,NULL,NULL,0,19,0,1,''),(NULL,NULL,NULL,NULL,0,20,9,1,'faa040e1-f822-4e89-8131-62677c6babe5'),(NULL,NULL,NULL,NULL,0,21,26,1,'e694d9f4-b770-4463-99cb-10c519ac834f'),(NULL,NULL,NULL,NULL,0,22,2,1,'1275051c-0ee1-46ac-a48e-39578a69fecb'),(NULL,NULL,NULL,NULL,0,23,0,1,''),(NULL,NULL,NULL,NULL,0,24,16,1,'441a083c-e1a3-4658-b7fb-5343b795962f'),(NULL,NULL,NULL,NULL,0,25,23,1,'0ebfe1cd-8c5b-444d-a97b-2c1c3db587ad'),(NULL,NULL,NULL,NULL,0,26,0,1,''),(NULL,NULL,NULL,NULL,0,27,0,1,''),(NULL,NULL,NULL,NULL,0,28,0,1,''),(NULL,NULL,NULL,NULL,0,29,0,1,''),(NULL,NULL,NULL,NULL,0,30,4,1,'f1b76f9d-74cf-4301-bba1-402bfa4cadde'),(NULL,NULL,NULL,NULL,0,31,0,1,''),(NULL,NULL,NULL,NULL,0,32,28,1,'f1b76f9d-74cf-4301-bba1-402bfa4caddb'),(NULL,NULL,NULL,NULL,0,33,0,1,''),(NULL,NULL,NULL,NULL,0,35,31,1,'75899452-4b51-49b6-95fb-e73a4da88f9d'),(NULL,NULL,NULL,NULL,0,36,32,1,'6df89155-46c8-4414-a7ea-41e4a9424782'),(NULL,NULL,NULL,NULL,0,37,1,1,'9cb41ccc-182a-494e-99d8-ef8a8bb494a8'),(NULL,NULL,NULL,NULL,0,38,29,1,'7dd94292-eb64-4a23-8f24-e1ba40dfcca8'),(NULL,NULL,NULL,NULL,0,39,30,1,'f4714c04-69fb-4370-866b-cdd3d1571acf'),(NULL,NULL,NULL,NULL,0,40,33,1,'fe2de7fa-ef0e-4186-9b59-52f3e99a8ad9'),(NULL,NULL,NULL,NULL,0,41,34,1,'859011fb-660a-4116-b61e-f371217ed02a'),(NULL,NULL,NULL,NULL,0,52,66,1,'1dd52974-9a31-43f3-bba9-4e100ce4137b'),(NULL,NULL,NULL,NULL,0,53,64,1,'acd50a02-e9fd-4890-97e1-c883e6ebd65b'),(NULL,NULL,NULL,NULL,0,54,11,1,'a896f9d9-fa5d-46d0-9f03-c30c1acec4d6'),(NULL,NULL,NULL,NULL,0,55,12,1,'98b9c5b2-3477-4ac9-a73d-f3aee88a8c48');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES ('-','2022-04-22 12:03:12','-','2022-04-22 12:03:12',0,1,3,4,'application/octet-stream','2254country.sql','LearningMaterial/4/3a10f94f1.sql'),('-','2022-04-22 12:04:42','-','2022-04-22 12:04:42',0,2,3,4,'application/octet-stream','a.sql','LearningMaterial/4/1aa6f108d.sql'),('-','2022-04-22 12:07:23','-','2022-04-22 12:07:23',0,3,3,4,'application/octet-stream','co(1).sql','LearningMaterial/4/5c136221.sql'),('-','2022-04-22 12:14:31','-','2022-04-22 12:14:31',0,4,3,4,'application/octet-stream','Dump20220217 (1).sql','LearningMaterial/4/95d7f882.sql'),('-','2022-04-22 12:26:33','-','2022-04-22 12:26:33',0,5,3,4,'application/octet-stream','Dump20220325.sql','LearningMaterial/4/ad257faf.sql'),('-','2022-04-22 13:08:05','-','2022-04-22 13:08:05',0,6,3,4,'application/octet-stream','pmu-server.sql','LearningMaterial/4/622e4ebe.sql'),('-','2022-04-22 13:11:35','-','2022-04-22 13:11:35',0,7,3,4,'application/x-putty-private-key','new-tree.ppk','LearningMaterial/4/1810d9768.ppk'),('-','2022-04-22 13:14:17','-','2022-04-22 13:14:17',0,8,3,4,'application/octet-stream','new-smart-tree.pem','LearningMaterial/4/f29f3de2.pem'),('-','2022-04-22 13:23:26','-','2022-04-22 13:23:26',0,9,3,4,'application/octet-stream','country .sql','LearningMaterial/4/bc7d7d93.sql'),('-','2022-05-18 13:06:15','-','2022-05-18 13:06:15',0,10,3,4,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','data_entry_template_5_18_2022_12_43 pm.xlsx','LearningMaterial/4/9af8103fc.xlsx'),('-','2022-05-18 13:08:36','-','2022-05-18 13:08:36',0,11,3,4,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','data_entry_template_5_18_2022_12_43 pm.xlsx','LearningMaterial/4/d94e21094.xlsx'),('-','2022-05-26 06:11:00','-','2022-05-26 06:11:00',0,12,3,4,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','20220525_Concept note_V1(PA).docx','LearningMaterial/4/d6425348.docx'),('-','2022-05-26 06:17:53','-','2022-05-26 06:17:53',0,13,3,4,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','20220525_Concept note_V1(PA).docx','LearningMaterial/4/d8086ab6.docx'),('-','2022-05-26 06:19:32','-','2022-05-26 06:19:32',0,14,3,4,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','Concept note_V1(PA).docx','LearningMaterial/4/a1d53f8f.docx'),('-','2022-05-26 06:45:00','-','2022-05-26 06:45:00',0,15,3,4,'application/octet-stream','mainflask.py','LearningMaterial/4/b102cf4fd.py'),('-','2022-05-26 06:48:35','-','2022-05-26 06:48:35',0,16,3,4,'application/octet-stream','mainflask.py','LearningMaterial/4/1517df83.py'),('-','2022-05-27 06:29:55','-','2022-05-27 06:29:55',0,17,3,4,'application/octet-stream','mainflask.py','LearningMaterial/4/91195eb2.py'),('-','2022-05-27 06:47:51','-','2022-05-27 06:47:51',0,18,3,4,'text/csv','tree_specie.csv','LearningMaterial/4/1092bdc11.csv'),('-','2022-05-27 06:54:47','-','2022-05-27 06:54:47',0,19,3,4,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','Time Esimation for New SCC developmet.xlsx','LearningMaterial/4/66fda8a6.xlsx'),('-','2022-05-27 08:19:21','-','2022-05-27 08:19:21',0,20,3,4,'application/pdf','Forti Client VPN Guide.pdf','LearningMaterial/4/718af821.pdf'),('-','2022-05-27 11:00:02','-','2022-05-27 11:00:02',0,21,3,4,'application/pdf','sample.pdf','LearningMaterial/4/5ddacae8.pdf'),(NULL,NULL,NULL,NULL,0,22,3,4,'image/png','Baseline Parameters.png','Methodology/PNG/Baseline Parameters.png'),('-','2022-06-08 08:02:55','-','2022-06-08 08:02:55',0,23,3,4,'application/pdf','Transport-Pricing-Assessment-Guide.pdf','LearningMaterial/4/28d9c889.pdf'),('-','2022-06-08 08:04:07','-','2022-06-08 08:04:07',0,24,3,4,'application/vnd.ms-excel.sheet.macroenabled.12','GACMO.xlsm','LearningMaterial/4/e57512fc.xlsm'),('-','2022-07-20 09:10:15','-','2022-07-20 09:10:15',0,26,3,4,'video/mp4','7. QC team - Quality control.mp4','LearningMaterial/4/1c2b6aae.mp4'),('-','2022-07-20 10:17:55','-','2022-07-20 10:17:55',0,27,3,4,'video/mp4','1. Country Admin - Dashboard.mp4','LearningMaterial/4/364ed78f.mp4'),('-','2022-07-20 10:23:12','-','2022-07-20 10:23:12',0,28,3,4,'video/mp4','2. Country Admin - Country Profile.mp4','LearningMaterial/4/70ccaee5.mp4'),('-','2022-07-20 10:39:31','-','2022-07-20 10:39:31',0,29,3,4,'video/mp4','3. Country Admin - Manage institution.mp4','LearningMaterial/4/15a3eb85.mp4'),('-','2022-07-20 11:58:04','-','2022-07-20 11:58:04',0,30,3,4,'video/mp4','1. Country Admin - Dashboard.mp4','LearningMaterial/4/cb8637da.mp4'),('-','2022-07-20 12:01:37','-','2022-07-20 12:01:37',0,31,3,4,'video/mp4','2. Country Admin - Country Profile.mp4','LearningMaterial/4/91947df5.mp4'),('-','2022-07-20 12:43:27','-','2022-07-20 12:43:27',0,32,3,4,'video/mp4','3. Country Admin - Manage institution.mp4','LearningMaterial/4/382768e2.mp4'),('-','2022-07-25 09:25:43','-','2022-07-25 09:25:43',0,33,3,4,'video/mp4','6. Country Admin - Manage institution.mp4','LearningMaterial/4/641c96f3.mp4'),('-','2022-08-03 11:12:27','-','2022-08-03 11:12:27',0,34,3,4,'video/mp4','0. ICAT Admin.mp4','LearningMaterial/4/a0a13794.mp4'),('-','2022-08-03 11:25:06','-','2022-08-03 11:25:06',0,35,3,4,'video/mp4','3. Institution admin - Assign data requests.mp4','LearningMaterial/4/46587983.mp4'),('-','2022-08-03 11:39:03','-','2022-08-03 11:39:03',0,36,3,4,'video/mp4','5. Institution admin - Review data.mp4','LearningMaterial/4/d1f3ab8a.mp4'),('-','2022-08-03 11:45:05','-','2022-08-03 11:45:05',0,37,3,4,'video/mp4','6. Sector Admin - GHG impact Assessment.mp4','LearningMaterial/4/cee5d2f5.mp4'),('-','2022-08-04 06:08:36','-','2022-08-04 06:08:36',0,38,3,4,'video/mp4','1. MRV admin & Sector admin - Climate action Menu.mp4','LearningMaterial/4/1026e8355.mp4'),('-','2022-08-04 06:13:54','-','2022-08-04 06:13:54',0,39,3,4,'video/mp4','Data Collection team - Data collection and Approval.mp4','LearningMaterial/4/a6e6cb4e.mp4'),('-','2022-08-04 06:21:19','-','2022-08-04 06:21:19',0,40,3,4,'video/mp4','Data Entry Operator & Institution Admin - Data Entry.mp4','LearningMaterial/4/447583ed.mp4'),('-','2022-08-04 06:52:14','-','2022-08-04 06:52:14',0,41,3,4,'video/mp4','Verifier - Verification.mp4','LearningMaterial/4/14a6b74f.mp4'),('-','2023-06-23 12:06:02','-','2023-06-23 12:06:02',0,42,3,4,'video/mp4','Assign verifier .mp4','LearningMaterial/4/1f2f5126.mp4'),('-','2023-06-23 12:13:58','-','2023-06-23 12:13:58',0,43,3,4,'video/mp4','Data request status and approval.mp4','LearningMaterial/4/fb1572cf.mp4'),('-','2023-06-23 12:15:22','-','2023-06-23 12:15:22',0,44,3,4,'video/mp4','Send data request to institutions.mp4','LearningMaterial/4/b4d92775.mp4'),('-','2023-06-23 12:17:10','-','2023-06-23 12:17:10',0,45,3,4,'video/mp4','Quality Control.mp4','LearningMaterial/4/6102c457f.mp4'),('-','2023-06-23 12:18:04','-','2023-06-23 12:18:04',0,46,3,4,'video/mp4','Review data.mp4','LearningMaterial/4/57d7d98f.mp4'),('-','2023-06-23 12:18:46','-','2023-06-23 12:18:46',0,47,3,4,'video/mp4','Enter data.mp4','LearningMaterial/4/bf60d692.mp4'),('-','2023-06-23 12:19:20','-','2023-06-23 12:19:20',0,48,3,4,'video/mp4','Assign data requests.mp4','LearningMaterial/4/c8868873.mp4'),('-','2023-06-23 12:20:27','-','2023-06-23 12:20:27',0,49,3,4,'video/mp4','Enter data.mp4','LearningMaterial/4/b919d92c.mp4'),('-','2023-06-23 12:32:20','-','2023-06-23 12:32:20',0,50,3,4,'video/mp4','Propose a climate action & accept a proposed climate action.mp4','LearningMaterial/4/47b934110.mp4'),('-','2023-06-23 12:33:06','-','2023-06-23 12:33:06',0,51,3,4,'video/mp4','Sent to assign verifiers.mp4','LearningMaterial/4/d7101310e3.mp4'),('-','2023-06-23 12:33:43','-','2023-06-23 12:33:43',0,52,3,4,'video/mp4','Report generation.mp4','LearningMaterial/4/441c1d4d.mp4'),('-','2023-06-23 12:37:39','-','2023-06-23 12:37:39',0,53,3,4,'video/mp4','Quality control team.mp4','LearningMaterial/4/54039d5d.mp4'),('-','2023-06-23 13:05:40','-','2023-06-23 13:05:40',0,54,3,4,'video/mp4','Reset password option & forget password option.mp4','LearningMaterial/4/f639d261.mp4'),('-','2023-06-23 13:08:46','-','2023-06-23 13:08:46',0,55,3,4,'video/mp4','Propose a climate action in detail (Rv).mp4','LearningMaterial/4/e3621b86.mp4'),('-','2023-06-23 13:11:18','-','2023-06-23 13:11:18',0,56,3,4,'video/mp4','Create an institution in detail.mp4','LearningMaterial/4/953ebf7c.mp4'),('-','2023-06-23 13:11:40','-','2023-06-23 13:11:40',0,57,3,4,'video/mp4','Create user in detail (Rv).mp4','LearningMaterial/4/90e10a78b.mp4'),('-','2023-06-23 13:16:34','-','2023-06-23 13:16:34',0,58,3,4,'video/mp4','Reset password option & forget password option.mp4','LearningMaterial/4/7da710628.mp4'),('-','2023-06-23 13:18:15','-','2023-06-23 13:18:15',0,59,3,4,'video/mp4','Propose a climate action in detail (Rv).mp4','LearningMaterial/4/4869ffa3.mp4'),('-','2023-06-23 13:18:42','-','2023-06-23 13:18:42',0,60,3,4,'video/mp4','Create user in detail (Rv).mp4','LearningMaterial/4/214d49d9.mp4'),('-','2023-06-23 13:19:23','-','2023-06-23 13:19:23',0,61,3,4,'video/mp4','Reset password option & forget password option.mp4','LearningMaterial/4/7bc312ee.mp4'),('-','2023-06-23 13:19:53','-','2023-06-23 13:19:53',0,62,3,4,'video/mp4','Create an institution in detail.mp4','LearningMaterial/4/c821e55c.mp4'),('-','2023-06-23 13:44:22','-','2023-06-23 13:44:22',0,63,3,4,'video/mp4','Additional steps need to take when concerns are raised (New).mp4','LearningMaterial/4/5d3e5431.mp4'),('-','2023-06-23 13:52:07','-','2023-06-23 13:52:07',0,64,3,4,'video/mp4','Sent to assign verifiers.mp4','LearningMaterial/4/f0710147b.mp4'),('-','2023-06-23 13:56:00','-','2023-06-23 13:56:00',0,65,3,4,'video/mp4','Report generation.mp4','LearningMaterial/4/444999910.mp4'),('-','2023-06-23 14:39:55','-','2023-06-23 14:39:55',0,66,3,4,'video/mp4','Sent to assign verifiers.mp4','LearningMaterial/4/7f5c5f5a.mp4'),('-','2023-06-23 14:43:27','-','2023-06-23 14:43:27',0,67,3,4,'video/mp4','Report generation.mp4','LearningMaterial/4/58dd7db2.mp4'),('-','2023-06-23 15:09:53','-','2023-06-23 15:09:53',0,68,3,4,'video/mp4','Quality Control.mp4','LearningMaterial/4/3f34f4f8.mp4'),('-','2023-06-23 15:11:49','-','2023-06-23 15:11:49',0,69,3,4,'video/mp4','Data request status and approval.mp4','LearningMaterial/4/a72410fca.mp4'),('-','2023-06-23 15:12:42','-','2023-06-23 15:12:42',0,70,3,4,'video/mp4','Data request status and approval.mp4','LearningMaterial/4/cb1046101.mp4'),('-','2023-06-23 15:16:08','-','2023-06-23 15:16:08',0,71,3,4,'video/mp4','Send data request to institutions.mp4','LearningMaterial/4/89fda9b9.mp4'),('-','2023-06-23 15:24:46','-','2023-06-23 15:24:46',0,72,3,4,'video/mp4','Propose a climate action & accept a proposed climate action.mp4','LearningMaterial/4/e08de0ee.mp4'),('-','2023-06-25 14:16:15','-','2023-06-25 14:16:15',0,73,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/6dcd1faa.pdf'),('-','2023-06-25 14:19:00','-','2023-06-25 14:19:00',0,74,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/923c8799.pdf'),('-','2023-06-25 14:20:50','-','2023-06-25 14:20:50',0,75,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/365c583a.pdf'),('-','2023-06-25 14:24:32','-','2023-06-25 14:24:32',0,76,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/f744d9a5.pdf'),('-','2023-06-25 14:25:36','-','2023-06-25 14:25:36',0,77,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/9638343a.pdf'),('-','2023-06-25 14:26:54','-','2023-06-25 14:26:54',0,78,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/a6ef3a15.pdf'),('-','2023-06-25 14:27:44','-','2023-06-25 14:27:44',0,79,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/56268f9c.pdf'),('-','2023-06-25 14:28:33','-','2023-06-25 14:28:33',0,80,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/c83f5309.pdf'),('-','2023-06-25 14:30:01','-','2023-06-25 14:30:01',0,81,3,4,'application/pdf','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','LearningMaterial/4/3d2d7f0e.pdf'),('-','2023-06-25 15:20:04','-','2023-06-25 15:20:04',0,82,3,4,'video/mp4','Verification.mp4','LearningMaterial/4/f76c16d6.mp4'),('-','2023-06-26 04:52:03','-','2023-06-26 04:52:03',0,83,3,4,'video/mp4','Data Entry Operator (Rv).mp4','LearningMaterial/4/102d9bb67.mp4'),('-','2023-06-28 07:47:00','-','2023-06-28 07:47:00',0,84,3,4,'video/mp4','Reset password option & forget password option.mp4','LearningMaterial/4/ce1dc372.mp4'),('-','2023-06-28 07:53:12','-','2023-06-28 07:53:12',0,85,3,4,'video/mp4','Create user in detail (Rv).mp4','LearningMaterial/4/8bd6d22d.mp4'),('-','2023-06-28 08:31:00','-','2023-06-28 08:31:00',0,86,3,4,'video/mp4','Report generation.mp4','LearningMaterial/4/33ab3468.mp4'),('-','2023-06-28 08:53:46','-','2023-06-28 08:53:46',0,87,3,4,'video/mp4','Reset password option & forget password option.mp4','LearningMaterial/4/6dd23b7a.mp4'),('-','2023-07-05 07:42:51','-','2023-07-05 07:42:51',0,88,3,4,'video/mp4','Assessing a climate action .mp4','LearningMaterial/4/4599c64f.mp4'),('-','2023-07-06 22:10:47','-','2023-07-06 22:10:47',0,89,3,4,'video/mp4','Technical team.mp4','LearningMaterial/4/3563cb4f.mp4'),('-','2023-07-10 03:09:55','-','2023-07-10 03:09:55',0,90,3,4,'video/mp4','Data Entry Operator.mp4','LearningMaterial/4/dc1010c32f.mp4'),('-','2023-07-14 08:48:40','-','2023-07-14 08:48:40',0,91,3,4,'video/mp4','Assessing a climate action .mp4','LearningMaterial/4/64fd5f11.mp4'),('-','2023-07-14 08:56:04','-','2023-07-14 08:56:04',0,92,3,4,'video/mp4','Assessing a climate action .mp4','LearningMaterial/4/2782d605.mp4'),('-','2023-07-14 09:24:42','-','2023-07-14 09:24:42',0,93,3,4,'video/mp4','Country admin.mp4','LearningMaterial/4/6e8410a89.mp4'),('-','2023-07-14 09:37:00','-','2023-07-14 09:37:00',0,94,3,4,'video/mp4','Institution admin (Rv).mp4','LearningMaterial/4/7e1071b0b.mp4'),('-','2023-07-14 09:47:31','-','2023-07-14 09:47:31',0,95,3,4,'video/mp4','Data Entry Operator.mp4','LearningMaterial/4/32da6994.mp4'),('-','2023-07-14 10:05:08','-','2023-07-14 10:05:08',0,96,3,4,'video/mp4','Data collection team (Rv).mp4','LearningMaterial/4/a334a137.mp4');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES ('-','2022-03-02 03:57:34','-','2022-03-02 03:57:34',0,5,'UNEP CCC','The UNEP Copenhagen Climate Centre will support countries in the towards a climate-resilient and low carbon future',0,0,NULL,0,'Copenhagen, Denmark.','+45 45-335-2685',1,NULL,''),(NULL,NULL,NULL,NULL,0,6,'ICAT','icat',0,0,NULL,0,'Platz der Vereinten Nationen 1','+49 228 815 0317',2,NULL,''),('-','2022-06-01 05:47:58','-','2022-06-01 05:47:58',0,14,'World Resource Institution','World Resource Institution',0,0,NULL,0,'10G Street NE, Suite 800, Washington DC 20002','+12 02-729-7600',1,NULL,'e3e77d4b-9e37-4e5d-8b0b-239ddd741f42'),('-','2022-06-01 05:49:25','-','2022-06-01 05:49:25',0,15,'ISPRA','ISPRA',0,0,NULL,0,'Vitaliano Brancati, 48-00144 Roma(I)','+10 12-521-1002',1,NULL,'78b2a574-8a27-47b7-b29e-abec86f0177a'),('-','2022-06-01 05:52:00','-','2022-06-01 05:52:00',0,16,'GHG Management Institute','GHG Management Institute',0,0,NULL,0,'Washington, DC','+18 88-778-1972',1,NULL,'7478be43-cb78-47d6-a112-b1ab6979d119'),('-','2022-06-01 05:53:22','-','2022-06-01 05:53:22',0,17,'United Nations System Staff College','United Nations System Staff College',0,0,NULL,0,'Viale Maestri Del Lavoro 10, 10127 Torino, Italy','+39 01-165-3591',1,NULL,'8f0572dc-7782-4c28-98f7-ca7a20b35e13'),('-','2022-06-01 05:55:41','-','2022-06-01 05:55:41',0,18,'Aether','Aether',0,0,NULL,0,'Center for Innovation, New Rd, Oxford OX1, 1BY, UK','+44 18-652-6146',1,NULL,'6ab05d99-3668-46d5-90e1-e8fbae8bff8f'),('-','2022-07-27 09:48:34','-','2022-07-27 09:48:34',0,19,'PMU Insitution 1','',0,0,NULL,0,'Sri Lanka','+94 26-472-6528',1,NULL,'2b69dd7f-4dd4-4f44-9557-dcc32af6f772'),('-','2023-08-02 14:03:06','-','2023-08-02 14:03:06',1,20,'PMU institution _SL ICAT','PMU institution',0,0,NULL,0,'ICAT, SL','+23 45-678-9988',1,NULL,'cac229bf-8320-4c58-a90c-8ea3ebcfd3ea'),('-','2023-08-03 11:43:55','-','2023-08-03 11:43:55',1,21,'PMU institutions _ RC','Republic of the Congo',0,0,NULL,0,'ICAT PMU, Congo','+23 45-009-3777',1,NULL,'b04a341a-0017-4a2f-b366-95270d3aff1b');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_material`
--

LOCK TABLES `learning_material` WRITE;
/*!40000 ALTER TABLE `learning_material` DISABLE KEYS */;
INSERT INTO `learning_material` VALUES ('','2022-06-08 08:02:56','','2022-06-08 08:02:56',0,20,'Learning Material','Transport-Pricing-Assessment-Guide.pdf','https://climateactiontransparency.org/wp-content/uploads/2020/04/Introduction-to-the-ICAT-Assessment-Guides.pdf','https://icon-library.com/images/document-icon-image/document-icon-image-1.jpg',1,NULL,'037d48b5-2245-424e-87e1-931c4b7cee09'),('','2022-06-08 08:04:08','','2022-06-08 08:04:08',0,21,'Learning Material','GACMO.xlsm','https://unepccc.org/wp-content/uploads/2023/03/gacmo-country-x.xlsm','https://icon-library.com/images/document-icon-image/document-icon-image-1.jpg',1,NULL,'b1c0e289-72e4-4118-a1eb-9f91fb7317e1'),('','2023-06-23 12:06:04','','2023-06-23 12:06:04',0,39,'Learning Material','Assign verifier .mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/42','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'40af4c9b-6d2e-4d47-88bf-04d4704a970a'),('','2023-06-23 12:14:00','','2023-06-23 12:14:00',0,40,'Learning Material','Data request status and approval.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/43','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'b28082cc-fba2-4dbe-8f9b-11b01a56cdd6'),('','2023-06-23 12:15:24','','2023-06-23 12:15:24',0,41,'Learning Material','Send data request to institutions.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/44','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'a2809c02-6feb-436e-b454-9bfe71e59bae'),('','2023-06-23 12:17:11','','2023-06-23 12:17:11',0,42,'Learning Material','Quality Control.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/45','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'5bb1b974-414a-43a3-9287-b3e53e986946'),('','2023-06-23 12:18:05','','2023-06-23 12:18:05',0,43,'Learning Material','Review data.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/46','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'0514cfcc-9a73-4041-a489-89beb1e7deca'),('','2023-06-23 12:18:48','','2023-06-23 12:18:48',0,44,'Learning Material','Enter data.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/47','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'85c1f261-f19e-45d1-9fc2-b626e9b8b2dc'),('','2023-06-23 12:19:22','','2023-06-23 12:19:22',0,45,'Learning Material','Assign data requests.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/48','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'cea7d284-2113-4165-ae43-548df6f8188f'),('','2023-06-23 12:20:29','','2023-06-23 12:20:29',0,46,'Learning Material','Enter data.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/49','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'820ca52d-8457-42bc-8ce2-886bd4a602ec'),('','2023-06-23 12:32:22','','2023-06-23 12:32:22',0,47,'Learning Material','Propose a climate action & accept a proposed climate action.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/50','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'98f355d5-2c5d-44f5-84eb-ad213349203b'),('','2023-06-23 12:33:08','','2023-06-23 12:33:08',0,48,'Learning Material','Sent to assign verifiers.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/51','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'adaa6ba0-e43e-4ff1-94ff-188d813301b7'),('','2023-06-23 12:33:45','','2023-06-23 12:33:45',0,49,'Learning Material','Report generation.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/52','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'74d1fee5-935e-408e-8879-7405506d392c'),('','2023-06-23 12:37:41','','2023-06-23 12:37:41',0,50,'Learning Material','Quality control team.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/53','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'ac2fad0b-3fa9-4344-b43b-b1fa7e39091a'),('','2023-06-23 13:05:41','','2023-06-23 13:05:41',0,51,'Learning Material','Reset password option & forget password option.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/54','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'6ffe5982-843f-4c49-b5a0-43539048b22d'),('','2023-06-23 13:08:47','','2023-06-23 13:08:47',0,52,'Learning Material','Propose a climate action in detail (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/55','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'4a313062-bfa5-455b-b8cf-36f18fd30d8a'),('','2023-06-23 13:11:19','','2023-06-23 13:11:19',0,53,'Learning Material','Create an institution in detail.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/56','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'47929781-2b39-47a1-9ab0-92df876e9241'),('','2023-06-23 13:11:42','','2023-06-23 13:11:42',0,54,'Learning Material','Create user in detail (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/57','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'81933cf4-a8b1-426b-a119-636aa765cab5'),('','2023-06-23 13:16:36','','2023-06-23 13:16:36',0,55,'Learning Material','Reset password option & forget password option.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/58','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'bbb0da7f-05ba-45d9-ae1d-d9c8dc8e75cc'),('','2023-06-23 13:18:17','','2023-06-23 13:18:17',0,56,'Learning Material','Propose a climate action in detail (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/59','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'af32acc8-2a42-4b14-ac7e-31f41b3f7e06'),('','2023-06-23 13:18:44','','2023-06-23 13:18:44',0,57,'Learning Material','Create user in detail (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/60','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'0b6bb569-9a83-4267-b124-033483faca66'),('','2023-06-23 13:19:25','','2023-06-23 13:19:25',0,58,'Learning Material','Reset password option & forget password option.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/61','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'26d1a60b-8ffd-4779-9c5f-d9f70f2cfaf5'),('','2023-06-23 13:19:55','','2023-06-23 13:19:55',0,59,'Learning Material','Create an institution in detail.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/62','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'7c01bdad-1e55-4de8-8613-766fa3059838'),('','2023-06-23 13:44:24','','2023-06-23 13:44:24',0,60,'Learning Material','Additional steps need to take when concerns are raised (New).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/63','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'9fb397f1-c4ab-4876-9e69-703f4bc9d008'),('','2023-06-23 13:52:09','','2023-06-23 13:52:09',0,61,'Learning Material','Sent to assign verifiers.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/64','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'17cd42b5-8fae-4d11-9521-e2688529a695'),('','2023-06-23 13:56:02','','2023-06-23 13:56:02',0,62,'Learning Material','Report generation.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/65','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'45fedca8-2423-412c-9e3f-2c76c75f1372'),('','2023-06-23 14:39:57','','2023-06-23 14:39:57',0,63,'Learning Material','Sent to assign verifiers.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/66','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'41ec96a3-f84d-4c6f-b98e-62abb2036d8b'),('','2023-06-23 14:43:28','','2023-06-23 14:43:28',0,64,'Learning Material','Report generation.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/67','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'34154279-00e0-4c5f-b24d-461dfc945ca5'),('','2023-06-23 15:09:54','','2023-06-23 15:09:54',0,65,'Learning Material','Quality Control.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/68','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'9f9325ad-b1d3-485c-9d2c-f40521f4082b'),('','2023-06-23 15:12:44','','2023-06-23 15:12:44',0,66,'Learning Material','Data request status and approval.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/70','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'6f735631-8839-431c-aca7-f7cc0a5d0e0d'),('','2023-06-23 15:16:10','','2023-06-23 15:16:10',0,67,'Learning Material','Send data request to institutions.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/71','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'6ea040cb-6bff-477d-8242-2e449b3072ea'),('','2023-06-23 15:24:48','','2023-06-23 15:24:48',0,68,'Learning Material','Propose a climate action & accept a proposed climate action.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/72','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'a4f0f897-322c-4721-8cfa-9e5d702466e6'),('','2023-06-25 14:16:18','','2023-06-25 14:16:18',0,69,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/73','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'0f24cd8b-78a0-4895-bf7a-9c2b1ee3a138'),('','2023-06-25 14:19:02','','2023-06-25 14:19:02',0,70,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/74','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'99603c5c-c30f-4b6e-8d14-13db84b3f4ef'),('','2023-06-25 14:20:52','','2023-06-25 14:20:52',0,71,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/75','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'f1d88b6b-fed9-445d-a6db-980de00ae699'),('','2023-06-25 14:24:34','','2023-06-25 14:24:34',0,72,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/76','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'709ddf26-6817-48f1-aad3-07a5798245be'),('','2023-06-25 14:25:38','','2023-06-25 14:25:38',0,73,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/77','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'3df2196f-c212-4ade-9d6a-00be526ef8bc'),('','2023-06-25 14:26:56','','2023-06-25 14:26:56',0,74,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/78','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'41deaccd-5ada-4005-a6f9-58dd410da5ee'),('','2023-06-25 14:27:46','','2023-06-25 14:27:46',0,75,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/79','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'921cee68-10ba-4a6e-8f94-327922455a17'),('','2023-06-25 14:28:35','','2023-06-25 14:28:35',0,76,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/80','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'dfa60a6f-0f0b-4118-908e-3f044d6d1263'),('','2023-06-25 14:30:03','','2023-06-25 14:30:03',0,77,'Learning Material','ICAT TranCAD_User Manual_v1.2_ClimateSI.pdf','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/81','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'205b9335-83d1-42c3-8b54-0305ff2f4413'),('','2023-06-25 15:20:06','','2023-06-25 15:20:06',0,78,'Learning Material','Verification.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/82','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'fe822555-114a-4cf2-bb40-bc8ca63e71b8'),('','2023-06-26 04:52:07','','2023-06-26 04:52:07',0,79,'Learning Material','Data Entry Operator (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/83','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'243d4787-d60c-4215-b5ef-834ac2f1ed31'),('','2023-06-28 07:47:02','','2023-06-28 07:47:02',0,80,'Learning Material','Reset password option & forget password option.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/84','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'f94e42b0-3252-407e-9d86-c657d4c94733'),('','2023-06-28 07:53:14','','2023-06-28 07:53:14',0,81,'Learning Material','Create user in detail (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/85','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'ad0648e0-01b6-4919-8953-b175cfb3fed5'),('','2023-06-28 08:31:02','','2023-06-28 08:31:02',0,82,'Learning Material','Report generation.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/86','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'a9cead35-80ee-4718-80bf-7a336ef66856'),('','2023-06-28 08:53:48','','2023-06-28 08:53:48',0,83,'Learning Material','Reset password option & forget password option.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/87','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'51089e0d-8031-4b79-b84b-74a2a14c94f6'),('','2023-07-05 07:42:54','','2023-07-05 07:42:54',0,84,'Learning Material','Assessing a climate action .mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/88','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'f4685c45-c12c-49ec-b8b3-05c47e91cd6c'),('','2023-07-06 22:10:48','','2023-07-06 22:10:48',0,85,'Learning Material','Technical team.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/89','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'6702f984-d595-4741-a99b-661e4eb63965'),('','2023-07-10 03:09:57','','2023-07-10 03:09:57',0,86,'Learning Material','Data Entry Operator.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/90','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'9bcc175d-6d69-417b-82f8-732be667f2e4'),('','2023-07-14 08:48:42','','2023-07-14 08:48:42',0,87,'Learning Material','Assessing a climate action .mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/91','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'e074f7f0-4a8b-423d-9d60-0b37c2dc1e42'),('','2023-07-14 08:56:06','','2023-07-14 08:56:06',0,88,'Learning Material','Assessing a climate action .mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/92','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'b454376e-ff88-4f94-9c9d-a05f421d7a98'),('','2023-07-14 09:24:44','','2023-07-14 09:24:44',0,89,'Learning Material','Country admin.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/93','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'2ea31773-6b2c-4fb0-8572-cad9ebfaf269'),('','2023-07-14 09:37:01','','2023-07-14 09:37:01',0,90,'Learning Material','Institution admin (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/94','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'ad0845de-6986-4ad0-b075-331ca501bb4b'),('','2023-07-14 09:47:33','','2023-07-14 09:47:33',0,91,'Learning Material','Data Entry Operator.mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/95','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'ac890b4c-f9f4-4df9-b4f5-d8460df99ef3'),('','2023-07-14 10:05:10','','2023-07-14 10:05:10',0,92,'Learning Material','Data collection team (Rv).mp4','https://icat-ca-tool.climatesi.com/pmu-api/document/downloadDocument/attachment/96','https://www.pngkey.com/png/detail/342-3428680_document-clipart.png',1,NULL,'05d82fd2-3a26-4208-b1ff-efd7188c02ef'),(' ','2023-07-14 10:05:10',' ','2023-07-14 10:05:10',0,93,'User Guidence','COMPASS Tool Box','https://climateactiontransparency.org/our-work/icat-toolbox/compass-toolbox/','https://climateactiontransparency.org/our-work/icat-toolbox/compass-toolbox/',1,NULL,'05d82fd2-3a26-4208-b1ff-efd7188c02gd');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_material_sector`
--

LOCK TABLES `learning_material_sector` WRITE;
/*!40000 ALTER TABLE `learning_material_sector` DISABLE KEYS */;
INSERT INTO `learning_material_sector` VALUES (NULL,NULL,NULL,NULL,0,12,20,1,'cb25dccf-c162-4656-a0ac-0aa6e6b1c5c5'),(NULL,NULL,NULL,NULL,0,13,21,1,'fb18ff7a-861b-42a1-bac7-c45fc1d568cf'),(NULL,NULL,NULL,NULL,0,31,39,1,'30d0ad57-d6de-4f74-b4d1-cf04ea1d9fe5'),(NULL,NULL,NULL,NULL,0,32,40,1,'5b550f31-fbfe-4b91-9e77-b1ba7e0cbd2d'),(NULL,NULL,NULL,NULL,0,33,41,1,'d3482cd1-9235-4620-aa07-4045ca623034'),(NULL,NULL,NULL,NULL,0,34,42,1,'c5f8cf8d-aff8-491a-8565-3f5151a54ec6'),(NULL,NULL,NULL,NULL,0,35,43,1,'cca5d2b8-192f-46d1-9fab-acc47429c6a6'),(NULL,NULL,NULL,NULL,0,36,44,1,'5104cfe4-ab60-4c75-90d7-1073012dc89f'),(NULL,NULL,NULL,NULL,0,37,45,1,'e08d5d75-eb59-4b53-b1c6-b2c59c7e5e35'),(NULL,NULL,NULL,NULL,0,38,46,1,'43697412-3741-4bf1-965f-65392733e672'),(NULL,NULL,NULL,NULL,0,39,47,1,'27a372cd-b847-4b16-a63e-74caf44986fe'),(NULL,NULL,NULL,NULL,0,40,48,1,'93559990-ac0a-4b4e-8115-23d3c33b5de2'),(NULL,NULL,NULL,NULL,0,41,49,1,'f2bf9161-de2f-446e-b089-34a120408767'),(NULL,NULL,NULL,NULL,0,42,50,1,'7ada07a0-52a8-4f24-b37d-a87b5318d0a6'),(NULL,NULL,NULL,NULL,0,43,51,1,'367d7c5e-8152-4c53-a642-6a515f06e531'),(NULL,NULL,NULL,NULL,0,44,52,1,'349c4d66-3ddb-4a4c-9ef1-4cb2e6d773ca'),(NULL,NULL,NULL,NULL,0,45,53,1,'c6089701-d7fd-4c58-b700-dbbfa7ffe470'),(NULL,NULL,NULL,NULL,0,46,54,1,'44b59e68-035a-43a5-99e4-3a4cfdccb508'),(NULL,NULL,NULL,NULL,0,47,55,1,'1e49b946-bdef-4a47-9c8d-d9c30f63a76e'),(NULL,NULL,NULL,NULL,0,48,56,1,'5bad2737-f0ad-4fbe-8f08-d6cf571afde3'),(NULL,NULL,NULL,NULL,0,49,57,1,'f3aa88fa-ecda-461d-8018-d0476c63036b'),(NULL,NULL,NULL,NULL,0,50,58,1,'585ee18d-376a-4bbb-99cc-3da3496bc64b'),(NULL,NULL,NULL,NULL,0,51,59,1,'ea5cfc4a-c32c-4f99-b71e-b3201b05843d'),(NULL,NULL,NULL,NULL,0,52,60,1,'b907f570-6f0c-41a6-bc70-eff5931842d0'),(NULL,NULL,NULL,NULL,0,53,61,1,'c2152b84-d7b6-4322-af8c-e2432982724c'),(NULL,NULL,NULL,NULL,0,54,62,1,'a0c016ef-62b7-45e5-aedc-8d8671effaff'),(NULL,NULL,NULL,NULL,0,55,63,1,'88f03088-3785-4038-9def-99fa29071783'),(NULL,NULL,NULL,NULL,0,56,64,1,'db1ea2f1-6367-4695-b4a3-f090a0c0f395'),(NULL,NULL,NULL,NULL,0,57,65,1,'5cdd4cdb-baf7-4eac-a180-6db282174cfa'),(NULL,NULL,NULL,NULL,0,58,66,1,'a73700b0-2ff9-4d4a-a0e6-fdba50977f58'),(NULL,NULL,NULL,NULL,0,59,67,1,'fa97f3fd-b061-41f6-b687-fa3f584ecec3'),(NULL,NULL,NULL,NULL,0,60,68,1,'3597ba12-a857-435c-a91b-5447c2c39641'),(NULL,NULL,NULL,NULL,0,61,69,1,'6c031bf9-5707-4960-affb-902c2098ba9a'),(NULL,NULL,NULL,NULL,0,62,70,1,'1c8c470b-fbf5-40e7-bc7f-f99155a49647'),(NULL,NULL,NULL,NULL,0,63,71,1,'51c24f1c-ab87-4f24-9ced-b20f443b2b32'),(NULL,NULL,NULL,NULL,0,64,72,1,'0e0f6be0-9257-4c11-9077-ac0e9defa9ff'),(NULL,NULL,NULL,NULL,0,65,73,1,'0ba2ba4e-525e-4833-834b-48531f2b681f'),(NULL,NULL,NULL,NULL,0,66,74,1,'00ac5f0e-b841-4591-9f05-ac226ea8f62a'),(NULL,NULL,NULL,NULL,0,67,75,1,'189ff25d-3f77-4034-836c-9c3aea896107'),(NULL,NULL,NULL,NULL,0,68,76,1,'700ac812-eefd-4d26-a75b-2af2d0fad547'),(NULL,NULL,NULL,NULL,0,69,77,1,'c7e5c5fa-ac10-4731-b2b6-7bd839b5ecdd'),(NULL,NULL,NULL,NULL,0,70,78,1,'233ed39b-889c-4a73-ae0a-7cbab54ad38c'),(NULL,NULL,NULL,NULL,0,71,79,1,'4f3ed769-7d42-4fa8-bfca-b3d75e2b13ee'),(NULL,NULL,NULL,NULL,0,72,80,1,'011c1dfe-cf82-4dda-ab63-15bff95da9e6'),(NULL,NULL,NULL,NULL,0,73,81,1,'0d0202e8-68fe-437c-a453-d1271064c131'),(NULL,NULL,NULL,NULL,0,74,82,1,'7e4420e1-37de-4758-9f25-404f71f84f37'),(NULL,NULL,NULL,NULL,0,75,83,1,'0896872c-191c-4224-8287-e0523299dcbd'),(NULL,NULL,NULL,NULL,0,76,84,1,'04470765-b6ff-4f6b-b370-98855622d1da'),(NULL,NULL,NULL,NULL,0,77,85,1,'4f446c3b-4dc4-4662-80d2-4c1c14c097ca'),(NULL,NULL,NULL,NULL,0,78,86,1,'b8ba31a8-7edc-4661-ae08-4b2eec6cffdb'),(NULL,NULL,NULL,NULL,0,79,87,1,'3b990e96-f155-437c-aa1c-5b3b163d7e50'),(NULL,NULL,NULL,NULL,0,80,88,1,'83b4ee90-f9d0-47b9-b3b6-65b4518841dd'),(NULL,NULL,NULL,NULL,0,81,89,1,'e3571f9f-5845-4957-9e44-b5cd27ba13f6'),(NULL,NULL,NULL,NULL,0,82,90,1,'b3b891f9-f31a-474e-baa5-3af0d1d3237b'),(NULL,NULL,NULL,NULL,0,83,91,1,'a07efe4d-1ebf-41b7-afaf-b613eec51cd8'),(NULL,NULL,NULL,NULL,0,84,92,1,'6c4d1cd3-8cc1-4d20-b8c7-54deadeb5191');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning_material_user_type`
--

LOCK TABLES `learning_material_user_type` WRITE;
/*!40000 ALTER TABLE `learning_material_user_type` DISABLE KEYS */;
INSERT INTO `learning_material_user_type` VALUES (NULL,NULL,NULL,NULL,0,12,20,1,'2a664558-f4af-49ad-acbb-4d5d0b4b621a',0),(NULL,NULL,NULL,NULL,0,13,21,1,'8c3a8cf2-ae52-4a4a-b64e-18b0fa832515',0),(NULL,NULL,NULL,NULL,0,31,39,2,'7e622c1b-e808-4c14-8489-50f8556c24d4',2),(NULL,NULL,NULL,NULL,0,32,40,NULL,'6c5dc693-1728-498e-a264-87c2ffbfe240',10),(NULL,NULL,NULL,NULL,0,33,41,NULL,'c8b44116-ab3e-402b-8201-e10fa768b6f1',10),(NULL,NULL,NULL,NULL,0,34,42,NULL,'333a56e5-45e6-4396-b25f-b595bf812dd4',11),(NULL,NULL,NULL,NULL,0,35,43,NULL,'17f058bf-8258-44aa-ba19-6b3b2337c4f0',12),(NULL,NULL,NULL,NULL,0,36,44,NULL,'87f66ba4-f459-4c45-bb4c-ab9c761b533f',12),(NULL,NULL,NULL,NULL,0,37,45,NULL,'5dc539d3-a335-4b5e-a9f5-abc3917294e8',12),(NULL,NULL,NULL,NULL,0,38,46,NULL,'f53d8d9b-905c-453f-b8dc-d1ccb38a9cb5',13),(NULL,NULL,NULL,NULL,0,39,47,NULL,'75442df5-ce68-421b-b3dc-53c72ccf132a',7),(NULL,NULL,NULL,NULL,0,40,48,NULL,'324174e1-c1d1-4a4b-a522-c02242ecf0b7',7),(NULL,NULL,NULL,NULL,0,41,49,NULL,'843d4109-1bf0-4a46-84b8-52cc106dc018',7),(NULL,NULL,NULL,NULL,0,42,50,NULL,'f3d4aaf4-396f-45f7-bd5a-73d5d8171eaf',11),(NULL,NULL,NULL,NULL,0,43,51,2,'a4153fff-9278-4c73-b61b-86fa0914610c',2),(NULL,NULL,NULL,NULL,0,44,52,2,'be48da29-29cc-4fdc-bcb5-4cdf723d455f',2),(NULL,NULL,NULL,NULL,0,45,53,NULL,'af9f7390-6af6-4aee-9a8d-9953332c7801',7),(NULL,NULL,NULL,NULL,0,46,54,NULL,'ed70e1bd-0e01-4739-bb64-5ea4984f0728',7),(NULL,NULL,NULL,NULL,0,47,55,NULL,'e81fc8cb-2b66-4271-bec3-84f6f332a1b4',7),(NULL,NULL,NULL,NULL,0,48,56,NULL,'6200e6c8-89dd-4473-974e-dc0335cf51e1',9),(NULL,NULL,NULL,NULL,0,49,57,NULL,'c73460a9-4e76-41d7-9f28-0ed9f0fb80d7',9),(NULL,NULL,NULL,NULL,0,50,58,NULL,'9890fa39-7737-4333-a4d4-6208872deae2',9),(NULL,NULL,NULL,NULL,0,51,59,NULL,'5179dafd-9f5d-4a65-9507-165422dba220',9),(NULL,NULL,NULL,NULL,0,52,60,NULL,'b2e1b5e2-aa14-482c-a1eb-f3bdce3efd40',9),(NULL,NULL,NULL,NULL,0,53,61,NULL,'19b0e112-f8d1-444e-9aa1-e4c31245c3f7',9),(NULL,NULL,NULL,NULL,0,54,62,NULL,'aed57c5f-29a5-4d38-a033-d8cd081e978c',9),(NULL,NULL,NULL,NULL,0,55,63,NULL,'ec6c152f-2b23-4fbd-a882-665ddec01e94',8),(NULL,NULL,NULL,NULL,0,56,64,NULL,'a29128a2-e953-4dba-886f-416421b49f60',8),(NULL,NULL,NULL,NULL,0,57,65,NULL,'86bc0eb2-60c2-49e8-9b9f-3cc988608589',8),(NULL,NULL,NULL,NULL,0,58,66,NULL,'943baa10-129f-4ccf-9975-f53775b32a8e',8),(NULL,NULL,NULL,NULL,0,59,67,NULL,'c248b063-94f0-4dca-868a-3955b878bbb2',8),(NULL,NULL,NULL,NULL,0,60,68,NULL,'211d545d-211a-46bb-9465-afc7493c27fa',8),(NULL,NULL,NULL,NULL,0,61,69,2,'f7672c90-1aef-41b0-9f96-a5cc3b1e6f18',2),(NULL,NULL,NULL,NULL,0,62,70,NULL,'9e9437da-8ad8-449b-bb24-52834486795f',6),(NULL,NULL,NULL,NULL,0,63,71,NULL,'69f55102-8904-4b8c-b188-4066fa99a64f',8),(NULL,NULL,NULL,NULL,0,64,72,NULL,'12864d0a-c327-432d-95f3-a82e3e192aa6',7),(NULL,NULL,NULL,NULL,0,65,73,NULL,'71de447d-099b-42d3-80b2-9449417238a3',9),(NULL,NULL,NULL,NULL,0,66,74,NULL,'291577de-4247-4d59-a4c0-ad7be1b24f4e',10),(NULL,NULL,NULL,NULL,0,67,75,NULL,'c74d4573-c3eb-4823-8179-14ddb6628feb',11),(NULL,NULL,NULL,NULL,0,68,76,NULL,'e2e5d698-6088-4157-ada8-dd9681cb3c7e',12),(NULL,NULL,NULL,NULL,0,69,77,NULL,'25677956-d40b-46c8-bdf3-0cf006092e52',13),(NULL,NULL,NULL,NULL,0,70,78,NULL,'6a4136cd-d77a-4856-a1e9-8bb78198ddd1',6),(NULL,NULL,NULL,NULL,0,71,79,NULL,'d2a4708f-d766-4952-8080-7c3176971af6',13),(NULL,NULL,NULL,NULL,0,72,80,NULL,'90286dd5-fc0f-4330-b618-a54215121d95',10),(NULL,NULL,NULL,NULL,0,73,81,NULL,'97c58efc-7639-425a-a136-e286ba0b0b8e',8),(NULL,NULL,NULL,NULL,0,74,82,2,'64f80464-d5c5-43c1-835f-cd1734524fe6',2),(NULL,NULL,NULL,NULL,0,75,83,NULL,'f3e2d0f2-685b-4b2c-9b2a-ace169b1fd71',8),(NULL,NULL,NULL,NULL,0,76,84,NULL,'806ae39a-3b20-4ba2-99ec-9082904352b9',7),(NULL,NULL,NULL,NULL,0,77,85,NULL,'8a16d5e8-b193-41d4-92bd-7df087e27180',9),(NULL,NULL,NULL,NULL,0,78,86,NULL,'ef8998f4-1ca7-4f48-91ae-c388e6111520',13),(NULL,NULL,NULL,NULL,0,79,87,NULL,'9f160334-7b50-4f28-963c-5ef048423bce',8),(NULL,NULL,NULL,NULL,0,80,88,NULL,'35932c5b-9347-4230-b9d0-d351dc73f3ef',9),(NULL,NULL,NULL,NULL,0,81,89,2,'bc61c389-3ea9-437d-818a-84fac802fe0d',2),(NULL,NULL,NULL,NULL,0,82,90,NULL,'f88a8721-0999-477e-b949-8fedf098874c',12),(NULL,NULL,NULL,NULL,0,83,91,NULL,'e0b7f80a-0d08-48c8-a827-649b3bff624d',13),(NULL,NULL,NULL,NULL,0,84,92,NULL,'70b5a3a9-7590-4cfc-ada1-ea4fd3cbe9e1',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodology`
--

LOCK TABLES `methodology` WRITE;
/*!40000 ALTER TABLE `methodology` DISABLE KEYS */;
INSERT INTO `methodology` VALUES ('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,1,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',1,1,3,4,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'0dc49d7e-b03c-406f-a40a-8a61cc186633'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,2,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',1,1,3,4,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'0e35fb2d-e434-48d8-8c54-6cfb74f78e2e'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,3,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'1f1a6b7b-b31c-4739-8a0c-9e84c94064fa'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,4,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'6666819d-85b8-4d8e-90ac-f5a4c0be60d4'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,5,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'7d18884b-2c6b-47f0-83b2-b6237e667222'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,6,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'b5a2c27f-e1a8-4756-9287-cdd66b892835'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,7,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'2069be08-ad62-434c-bb7e-34c613319aba'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,8,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',0,'Transport',1,'Moderate to low',1,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'75020287-a231-48ab-941c-457ad1f0b726'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,9,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',10,'61f08f63-0147-45e6-910e-b7de593f7c1e'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,10,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',1,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'43404ed2-0ba2-421b-835c-8ec04301bb6b'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,11,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'496e45e6fad2430c8235789bd9b5d584'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,12,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'80fd1155-a134-4546-9130-fabee5951816'),(NULL,NULL,NULL,NULL,0,13,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',1,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'67a00d4f-7256-42b3-becb-7467edf40c6e'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,14,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',10,'9c516b9a-89f6-419c-a043-eb5fffc5fb6c'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,15,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',28,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'d5c7f06d-09ad-4a2b-8f44-65cfd6b369b5'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,16,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',28,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'20b5f3f8-cdaf-44b2-a0fa-ff1fc96d0834'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,17,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'f1782769-d843-4f9f-b0fc-86e005ae9b86'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,18,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'8db8d400-11ae-40a5-ac7e-ea50c281a3d8'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,19,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'9131df7f-75b4-4945-a543-fe905fe24ffc'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,20,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',1,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'9cdb209e-b2b6-4f2a-855b-ffcbc73a6065'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,21,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',29,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'facba004-e573-479f-88e2-da55546f3200'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,22,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'8d746d4f-7ace-4674-be84-b6221d9fd9be'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,23,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'4a6ba96b-9f40-4ad2-9b55-ba36a3cedae0'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,24,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'f84290fc-33f1-4c2e-94bb-8b3dca9a7ca7'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,25,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'c7ebadb9-de96-4a19-9791-d38a57f09602'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,26,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'bbb5df0a-3e73-40cd-9fe9-da363cdc96c8'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,27,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'11c95573-2365-4c6f-8ef9-9376fd71c2f9'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,28,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',1,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'20e33da9-aa2c-40f7-812c-92e994910108'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,29,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',1,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'9f751398-0359-48b0-b8ae-e79f49e8bbfc'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,30,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',1,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'77c16c64-e05c-4431-bcae-0c74ae32c3e8'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,31,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',30,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'b689409d-c837-4925-91ed-422eaaa94b83'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,32,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'420fd5a6-1077-44ac-9df3-bde1a6252b0e'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,33,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'a9b41c9a-a5ef-46bb-9210-4cbc00769998'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,34,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'10266243-7f4d-492e-a7cd-d2f7583385b9'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,35,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',30,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'0acfd364-b656-4abf-9b24-02bd9550be38'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,36,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'5a49dc43-3e58-4774-9e10-83b15e666d87'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,37,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'f5e5c9c3-6227-4898-a3c9-1e432a40dacd'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,38,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'6350bd0e-5d80-45c6-a8f0-66b54eb56150'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,39,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',30,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'dae8b8f3-3155-415b-95d2-90949954054c'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,40,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',10,'3eca1f4b-51a5-4005-9b24-eb8a5642562a'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,41,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'1d436b1d-bb5c-4df9-9051-feb7a42cfcb5'),('','2022-08-05 04:12:47','-','2022-02-25 14:41:46',0,42,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'80444db2-bd14-4c39-a318-a69c828b0439'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,43,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'bd2f76e6-9b9a-4dee-8642-1e8050c7465e'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,44,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',30,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'3e1c7629-4da4-4b46-a539-fde23aff89f0'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,45,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',30,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'2f99d27f-6d17-48c1-a354-bdc8f6f3c0da'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,46,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',30,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'883bab5c-8de1-4149-85ef-bea75f6adc9f'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,47,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',30,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'5b14b26e-2c25-47c8-ad4e-0348b25de0d3'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,48,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',30,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'367bc4e0-fd40-4b1c-85cf-8a6dbd6e3910'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,49,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',30,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'99e6c24e-0836-491d-a8be-dd4bfb9decbd'),('','2022-08-05 04:12:48','-','2022-02-25 14:41:46',0,50,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',30,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'093c2f85-f94e-47ca-a8a4-2407babff6b3'),('','2022-08-05 11:06:53','-','2022-02-25 14:41:46',0,51,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport',2,'Moderate to low',30,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'defcda6c-d99b-4c9a-957c-284f0ca55cfd'),('','2022-08-15 12:17:47','-','2022-02-25 14:41:46',0,52,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport',1,'Moderate to low',1,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'e0bd0013-4292-45fb-b784-2a357bef7e1f'),('','2022-08-18 04:21:32','-','2022-08-18 14:41:46',0,53,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',1,'Moderate',1,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'fc5d563c-3db7-4e96-aa29-7bcb6767754e'),('','2022-08-29 11:47:16','-','2022-08-18 14:41:46',0,54,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',1,'Moderate',1,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'a27bf347-126b-4005-8209-d8a924180f6a'),('','2022-08-31 09:50:14','-','2022-08-18 14:41:46',0,55,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',1,'Moderate',30,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'a83b88d8-caca-4ae2-9c11-f38d71391d43'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,56,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',28,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'171ba448-eefa-4711-9a5c-526dcc4735c0'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,57,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',28,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'1a376cb8-ee25-4b9e-8df2-344e4f878dec'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,58,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'dd3a418a-2c10-4c16-95cb-75115172549d'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,59,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'7087bbd7-2e55-4bbc-ac52-374f1e98f9e1'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,60,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'8e980874-ccef-4d79-ae84-7fe1f06775e4'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,61,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'ca0eb25c-4bf7-4516-8fd5-30b408617713'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,62,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'c81af764-414e-44c3-a2cb-86225199d6b8'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,63,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',28,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'341d4916-8532-45d7-adc6-c26a4a28f004'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,64,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'29bdbd05-679c-49d5-a53e-e3b70acaf92a'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,65,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'e69e1d74-da4b-49c7-88b0-ea994c6d72d2'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,66,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'a65ada4f-1263-462a-aff4-7caf24885a0f'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,67,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'0c54d61e-2891-4377-a7c9-0fb0a34b3b2e'),('','2022-08-31 09:50:41','-','2022-02-25 14:41:46',0,68,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',28,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'faccea76-8d21-438b-85b4-92a4defe2e1f'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,69,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',28,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'aa9f080f-234e-4082-93c2-5128033f1de6'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,70,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',28,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'4bc9ce78-ddd0-4c42-8391-ef3969ff1768'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,71,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',28,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'0cdeeb61-2c20-46e6-9e7e-d3b4aa5b591c'),('','2022-08-31 09:50:42','-','2022-02-25 14:41:46',0,72,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',28,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'2ec621b8-5041-4a1a-978f-e9cebe8c959c'),('','2022-08-31 09:50:42','-','2022-08-18 14:41:46',0,73,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',1,'Moderate',28,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'845bbef4-36e4-484a-8aff-10a2f939d41f'),('','2022-08-31 10:02:20','-','2022-08-18 14:41:46',0,74,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport',1,'Moderately resource and data intensive',1,1,6,16,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'66d959c1-0169-40d8-b090-0ad18f8623cf'),('','2022-09-01 03:48:34','-','2022-08-18 14:41:46',0,75,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',1,'Moderate',30,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'128e2ed6-a6e4-4fbb-a3f4-404e623cf576'),('','2022-09-01 03:48:52','-','2022-08-18 14:41:46',0,76,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',1,'Moderate',28,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'04f1f27c-4a4a-42d6-8d00-b9dcbc96eb85'),('','2022-09-03 07:31:59','-','2022-08-18 14:41:46',0,77,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport',1,'Moderately resource and data intensive',30,1,6,16,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'f03b2e48-0b78-4271-bd09-091c464e8354'),('','2022-09-06 11:00:22','-','2022-08-18 14:41:46',0,78,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN-Efficient operation of public transportation','CDM',NULL,'Transport',1,'Moderate to low',1,1,4,17,'Passenger','No','Only CO2','',25,'90a396db-b6d8-43e8-8860-9a79d9c5a686'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,79,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',29,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'d81e5999-0e1a-4de4-bbce-0810115580fe'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,80,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',29,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'64a52aef-2679-4059-ace5-549125022360'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,81,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'8a8ec1fe-454a-416f-9725-9538e4bb240f'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,82,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',10,'45f92c12-c0c6-4cef-a28f-47c914567926'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,83,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'acb97f85-2991-4e77-bdc9-9ca0e9fb346a'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,84,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'1be7b0e7-5e74-4489-9cc3-4f9a034cd193'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,85,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'3c19bff5-a99b-4cf3-96fa-0be023953492'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,86,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',29,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'6f1f1c11-630e-4976-93a4-817afae1e6fb'),('','2022-10-04 09:01:25','-','2022-02-25 14:41:46',0,87,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',29,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'91018ad1-18ba-43fa-b98b-cdb872df804a'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,88,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'c07af74a-7c28-40f0-af78-34aa08e994b5'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,89,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',29,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'c29d4ce3-86f5-4be5-82d6-46d7f95a3b3a'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,90,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',29,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'e8375cf5-2abc-491a-99c8-c4eacbdfebb6'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,91,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',29,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'1a2fb63d-00f7-4002-b9ac-7b050ec4323f'),('','2022-10-04 09:01:26','-','2022-02-25 14:41:46',0,92,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport',1,'Moderate to low',29,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'3187e33b-2f46-452d-b7f0-7a1d547b9e8f'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,93,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',1,'Moderate',29,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'f4e0c165-bedb-4447-b0e5-45582d36cb47'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,94,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',1,'Moderate',29,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'5741021a-6f8d-47a3-a24a-65555ec05ac8'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,95,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport',1,'Moderately resource and data intensive',29,1,6,16,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'189f8d8e-54d5-4c9b-a2ec-4c3117b9e42a'),('','2022-10-04 09:01:26','-','2022-08-18 14:41:46',0,96,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN-Efficient operation of public transportation','CDM',NULL,'Transport',1,'Moderate to low',29,1,4,17,'Passenger','No','Only CO2','',25,'c295f0af-5ba1-496f-b548-709c7f6bcb74'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,97,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',2,'Moderately Resource and Data Intensive',32,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'169c4305-5bbf-4077-a371-f698f5111e76'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,98,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',2,'Moderately Resource and Data Intensive',32,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'ce577770-5821-436a-90af-47cce61ff67e'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,99,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',2,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'20e7f6f9-e7f3-4281-bda7-f49e95c29004'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,100,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'eabcf1bd-2a04-4d25-81cb-a148364d8828'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,101,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',2,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'4ea0e079-3a8b-4e37-a72b-114e9905320a'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,102,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',2,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'2c427fba-36c2-4f4d-9b85-67d196e6d960'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,103,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',2,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'946fe4b6-c92a-4000-8746-ca10663d974d'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,104,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',2,'Moderate to low',32,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'862fae49-49df-4084-8557-5ab07cc6744f'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,105,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',2,'Moderate to low',32,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',10,'aabbb547-18c8-4d4c-a205-98ce468e394f'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,106,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',2,'Highly Resource and Data intensive',32,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'b8b3f93b-64fd-4415-a0db-743840a0e0e7'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,107,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',2,'Moderate to low',32,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'4f0981fd-dc79-4112-8ce2-e1672129ba0a'),('','2022-10-11 03:07:46','-','2022-02-25 14:41:46',0,108,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',2,'Moderate to low',32,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'75a7630e-6490-44c3-9f98-b7e020d05385'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,109,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',2,'Moderate to low',32,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'5eb6908d-b200-4065-b510-6984e38e1f60'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,110,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',2,'Moderate to low',32,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'70de69a9-f117-4867-8fb8-fc78e05024f1'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,111,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',2,'Moderately Resource and Data Intensive',32,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'fcf8e4f2-5b33-4285-87d2-3244bee5c755'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,112,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',2,'Moderately Resource and Data Intensive',32,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'621d5b43-5126-4650-81ea-69f0eccd0c21'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,113,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',2,'Highly Resource and Data intensive',32,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'b8a68cef-7c95-41e1-b92f-be30af953aa5'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,114,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',2,'Highly Resource and Data intensive',32,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'3838653d-68d1-469e-a289-6f24203e97d9'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,115,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',2,'Moderate to low',32,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'a167e715-3700-4ffa-b791-6f55363ce01b'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,116,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',2,'Moderate to low',32,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'0e1d32a4-338c-4cb1-9aa9-fab92392ed13'),('','2022-10-11 03:07:47','-','2022-02-25 14:41:46',0,117,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport',2,'Moderate to low',32,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'bf6ba480-15cf-490c-8676-e0753fe17385'),('','2022-10-11 03:07:47','-','2022-08-18 14:41:46',0,118,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',2,'Moderate',32,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'06dde21b-15fd-49cf-96d8-b9cef9dffa97'),('','2022-10-11 03:07:47','-','2022-08-18 14:41:46',0,119,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',2,'Moderate',32,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'609b7a49-26a6-4419-bf6b-2c8c857a88ac'),('','2022-10-11 03:07:47','-','2022-08-18 14:41:46',0,120,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport',2,'Moderately resource and data intensive',32,1,6,16,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'3195be96-7bef-498e-bdcd-0c29ad4bd862'),('','2022-10-11 03:07:48','-','2022-08-18 14:41:46',0,121,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN-Efficient operation of public transportation','CDM',NULL,'Transport',2,'Moderate to low',32,1,4,17,'Passenger','No','Only CO2','',25,'135a8317-94df-45d7-9b25-3757094a5983'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,122,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',33,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'c88d2548-41e4-4992-800d-864ab45f459f'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,123,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',2,'Moderately Resource and Data Intensive',33,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'9717e307-fa4c-49d3-818b-f60585d4c085'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,124,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',2,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'e970a1a5-c545-4bdb-b777-b120f1f087bc'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,125,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',2,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'a12371ba-86ab-424c-91ee-1882f9a42880'),('','2022-11-08 06:01:47','-','2022-02-25 14:41:46',0,126,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',2,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'377972d6-b2e1-46fa-b396-e876aa39bc3b'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,127,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',2,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'0d87eca7-9af6-4d40-8855-753fbd8f461b'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,128,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',2,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'595741f0-dd2b-41f7-bb66-79e1e0a79181'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,129,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',2,'Moderate to low',33,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'384a4e24-be01-4e2f-85bb-65790b3cba05'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,130,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',2,'Moderate to low',33,1,2,14,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',10,'bb9ba647-6eda-4108-9e80-7fccab304242'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,131,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',2,'Moderate to low',33,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'ef67c939-6460-43e7-b251-229dba7f68b9'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,132,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',2,'Highly Resource and Data intensive',33,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'186f4b30-2933-4aa2-ba95-42bd61fbddda'),('','2022-11-08 06:01:48','-','2022-02-25 14:41:46',0,133,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',2,'Moderate to low',33,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'b8e4352e-7326-4f55-93d7-c2a3e56ca335'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,134,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',2,'Moderate to low',33,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'1d69e1d7-8d40-4582-a696-19987f85394d'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,135,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',2,'Moderate to low',33,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'c4b75557-e2c5-4d3e-a0ce-362faaa5b776'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,136,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',2,'Moderately Resource and Data Intensive',33,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'effaad2e-3c2b-4634-99a7-bf2c69d987bd'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,137,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',2,'Moderately Resource and Data Intensive',33,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'af2e0272-3a06-4e29-8de4-091e604c72fe'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,138,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',2,'Highly Resource and Data intensive',33,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'3d861d69-70f3-41c8-8f4b-c10ef18a04a4'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,139,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',2,'Highly Resource and Data intensive',33,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'7d78eff4-f01b-418d-810f-0428749b3bfd'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,140,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',2,'Moderate to low',33,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'8122d385-6e97-47ec-aa3d-a57d609a782c'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,141,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',2,'Moderate to low',33,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'f580eb7b-7e4e-4bee-b59b-95f307c599f9'),('','2022-11-08 06:01:49','-','2022-02-25 14:41:46',0,142,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport',2,'Moderate to low',33,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'ef13bcef-2c42-4b99-9f8a-cdfa089b9ded'),('','2022-11-08 06:01:49','-','2022-08-18 14:41:46',0,143,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',2,'Moderate',33,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'43a7b103-1641-4d4b-965e-2ef8daa65a9b'),('','2022-11-08 06:01:50','-','2022-08-18 14:41:46',0,144,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',2,'Moderate',33,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'887f65bb-de39-47b6-9575-8e4260ba4c2d'),('','2022-11-08 06:01:50','-','2022-08-18 14:41:46',0,145,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport',2,'Moderately resource and data intensive',33,1,6,16,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'46d52a71-2a5f-4636-8703-272948f79da5'),('','2022-11-08 06:01:50','-','2022-08-18 14:41:46',0,146,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN-Efficient operation of public transportation','CDM',NULL,'Transport',2,'Moderate to low',33,1,4,17,'Passenger','No','Only CO2','',25,'d4996184-cfb7-4448-aabb-1eb62f5ad909'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,147,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',34,1,3,4,'Passenger',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',1,'7b1a8f31-aec6-4f53-9d23-741d2e5387e6'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,148,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',34,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'51edefae-6cdc-4a6a-8cdf-ec849928d205'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,149,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',34,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',3,'8c7c58bd-3652-479a-bc94-8baa49e7bdec'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,150,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport',1,'Highly Resource and Data intensive',34,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',4,'adece05b-b8ea-4012-901f-3faad117c3c1'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,151,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport',1,'Highly Resource and Data intensive',34,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',5,'c4d2f615-86ad-4194-8c60-93c9ca8b6354'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,152,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport',1,'Highly Resource and Data intensive',34,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',6,'ddb3fd85-5a70-444c-a81e-6afaf64ee8c6'),('','2023-05-15 01:50:02','-','2022-02-25 14:41:46',0,153,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',34,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'2aa536c0-1ab7-437c-8759-66cfdecc1746'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,154,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',34,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'4fb3d401-fbec-4068-ad16-617f27a1f4de'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,155,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',34,1,2,13,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_03.pdf',9,'1ac84915-43e2-4ef3-86d2-cfff9adccb35'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,156,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',34,1,2,14,'Passenger','No','Only CO2','https://www.jica.go.jp/english/our_work/climate_change/c8h0vm0000f7klc7-att/estimation_04.pdf',10,'087b0676-b68a-4717-a333-75f9c983db1f'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,157,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport',1,'Moderate to low',34,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/JICA_Modal shift_Freight.pdf',12,'8b879044-dbfd-4f84-b743-29d5e37d4bb6'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,158,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport',1,'Moderate to low',34,1,2,3,'Frieght','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',11,'7bcd3c99-66ca-49cd-a26f-1e2a545ecf67'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,159,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',34,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_06.pdf',13,'7c9e5f42-3800-4008-bee8-0cf587002adc'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,160,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport',1,'Moderate to low',34,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',14,'57cd9f4c-f81d-48bc-ba59-b7c099fd25de'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,161,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',34,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'c55ecfac-4223-40c4-bc71-125658d9294e'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,162,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',34,1,4,8,'Not specified','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf',16,'b4a0f699-1544-4287-996f-2ff04e626cfa'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,163,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',34,1,6,6,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf',17,'fc2d9f6d-2f68-4793-8b12-cb6abd2c87fd'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,164,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport',1,'Highly Resource and Data intensive',34,1,5,10,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf',18,'93a42ece-50d6-4e25-aa7a-bd41f7daab3d'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,165,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport',1,'Moderate to low',34,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',19,'b820169c-fae5-4e69-9a3c-12654eabf8b5'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,166,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport',1,'Moderate to low',34,1,3,11,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf',20,'7db0c017-d550-41b7-8fe6-e5992619c63a'),('','2023-05-15 01:50:03','-','2022-02-25 14:41:46',0,167,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport',1,'Moderate to low',34,1,1,9,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf',21,'d370c6d6-bbbe-4118-aa64-32df5d420128'),('','2023-05-15 01:50:03','-','2022-08-18 14:41:46',0,168,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport',1,'Moderate',34,1,3,12,'Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf',22,'98acd938-2230-47d5-8a9e-74c09b571dad'),('','2023-05-15 01:50:03','-','2022-08-18 14:41:46',0,169,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport',1,'Moderate',34,1,4,15,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf',23,'9ae88f23-d29b-4339-ac78-d1e2f40c51c0'),('','2023-05-15 01:50:03','-','2022-08-18 14:41:46',0,170,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport',1,'Moderately resource and data intensive',34,1,6,16,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf',24,'5197bf3b-93b8-43d1-a83c-8c96b028027a'),('','2023-05-15 01:50:03','-','2022-08-18 14:41:46',0,171,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN-Efficient operation of public transportation','CDM',NULL,'Transport',1,'Moderate to low',34,1,4,17,'Passenger','No','Only CO2','',25,'abe45673-57d3-45b4-ab19-a5682012b36a'),('','2023-08-03 07:50:41','-','2022-02-25 14:41:46',0,172,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',11,1,2,13,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf',9,'0788c9fa-f3e3-4270-97c8-71e122a1509d'),('','2023-08-03 07:50:42','-','2022-02-25 14:41:46',0,173,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport',1,'Highly Resource and Data intensive',11,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',8,'35c7d07c-894a-4c22-92cd-c7ba436ebd09'),('','2023-08-03 11:49:20','-','2022-02-25 14:41:46',0,174,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport',1,'Moderately Resource and Data Intensive',12,1,3,4,'Frieght',NULL,'Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf',2,'682c073a-9545-46b2-919c-5aecf2d291f1'),('','2023-08-03 11:49:20','-','2022-02-25 14:41:46',0,175,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport',1,'Highly Resource and Data intensive',12,1,1,1,'Not specified','No','Only CO2','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf',7,'09772df0-0d49-43b5-9ebb-adfc80995a22'),('','2023-08-03 11:59:21','-','2022-02-25 14:41:46',0,176,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport',1,'Moderate to low',11,1,2,3,'Passenger','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf',13,'7c6d497f-baa8-492a-91df-f9741519e85f'),('','2023-08-03 11:59:21','-','2022-02-25 14:41:46',0,177,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport',1,'Moderately Resource and Data Intensive',11,1,4,5,'Passenger and Freight','No','Only CO2','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf',15,'82e1feb0-4202-4ac1-880f-07d66813a67c');
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
INSERT INTO `methodology_data` VALUES ('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,1,'V 4.0','AMS-iii-S_person','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Passenger)','CDM',0,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf','Moderately Resource and Data Intensive','Passenger',NULL,'Only CO2','924c167a-a1ef-42d4-b844-a5be942eb483',1,3,4,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_AMS IIIS_Passenger.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_AMS IIIS_Passenger.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,2,'V 4.0','AMS-iii-S_freight','AMS-III.S - Introduction of low-emission vehicles/technologies to commercial vehicle fleets (Freight)','CDM',0,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB70_repan29_AMS-III.S_ver04.0.pdf','Moderately Resource and Data Intensive','Frieght',NULL,'Only CO2','72647361-ffea-4b8c-9120-289a5f9a8c71',1,3,4,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_AMS IIIS_Freight.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_AMS IIIS_Freight.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,3,'V 1.0','ICAT_TPM_FSR_2020_A','ICAT methodology for fuel subsidy removal and increased fuel tax or levy Approach A (top-down energy-use data_Fuel mix)','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','68776aba-6b2f-4a7e-9bb2-99eb0120bf6b',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch A - Baseline.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch A - PE.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,4,'V 1.0','ICAT_TPM_FSR_2020_B','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach B (top-down energy-use data_Gasoline & Diesel)','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','423cff3e-7571-4acc-af90-4212b352d31e',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch B - Baseline.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch B - PE.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,5,'V 1.0','ICAT_TPM_FSR_2020_C','ICAT methodology for fuel subsidy removal and increased fuel tax or levy _Approach C (top-down energy-use data & bottom-up travel activity data )','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','aaef4e0c-dbae-492d-82af-8b74b6ccb93d',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Approch C - Baseline.PNG',NULL,NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,6,'V 1.0','ICAT_TPM_RP_2020_Toll_roads','ICAT methodology for toll roads and distance-based charges','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','9bee1a99-b84b-4615-9bc3-b5e0b6ce42fe',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Toll roads and distance-based charges BE1.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Toll roads and distance-based charges PE 1.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,7,'V 1.0','ICAT_TPM_RP_2020_cordon','ICAT methodology for cordon pricing','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','b196bfa3-3deb-4b27-b354-a4f8a50b0afc',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Cordon pricing BE 1.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Cordon pricing PE 1.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,8,'V 1.0','ICAT_TPM_VPI_2020','ICAT Methodology for Vehicle Purchase Incentives for More Efficient Vehicles','ICAT',0,'Transport','https://climateactiontransparency.org/wp-content/uploads/2020/04/Transport-Pricing-Assessment-Guide.pdf','Highly Resource and Data intensive','Not specified','No','Only CO2','3f69da2a-abff-4510-873f-b27ec09b27b5',1,1,1,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Purchase incentives for low-GHG vehicles.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/icat.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,9,'V 3.0','JICA_TCM_MS_P_V - trafic','JICA_Traffic Congestion (Passenger)','JICA',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf','Moderate to low','Passenger','No','Only CO2','49cc9372-d402-471f-bae4-5618ed22197f',1,2,13,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_JICA_Traffic Cogestion.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_JICA_Traffic Congestion.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,10,'V 3.0','JICA_TCM_MS_P_V','JICA_Modal Shift (Passenger)','JICA',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/estimation_03_M03_Model shift_2019.pdf','Moderate to low','Passenger','No','Only CO2','517036d0-d9b1-4b7c-8e8d-12d4fd0b844d',1,2,14,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_JICA_Modal shift.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_JICA_Modal Shift.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,11,'V 3.0','JICA_RAIWAY_FR_ELECTRI','JICA_Railway_Electrification (Freight)','JICA',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf','Moderate to low','Frieght','No','Only CO2','d77cdd78-e43b-4cca-84df-7acbd7c0079c',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Baseline - Elecrification.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Freight - Project Emission.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Emission Reduction.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,12,'V 3.0','JICA_RAIWAY_FR_MODEL','JICA_Railway_Modal Shift (Freight)','JICA',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf','Moderate to low','Frieght','No','Only CO2','f944e878-ccc4-45eb-b055-d21bb5a4686f',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Freight - Baseline Modal shift.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Freight - Project Emission.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Emission Reduction copy.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,13,'V 3.0','JICA_RAIWAY_PASS_ELECTRI','JICA_Railway_Electrification (Passenger)','JICA',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf','Moderate to low','Passenger','No','Only CO2','56a24339-68a9-484b-ae6b-75d3c4e4b128',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA passenger - Electrification - Baseline.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Passenger - Project .png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA freight - Emission Reduction copy.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,14,'V 3.0','JICA_RAIWAY_PASS_MODEL','JICA_Railway_Modal Shift(Passenger)','JICA',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/M03_Railway_Passenger_MS_E_2013.pdf','Moderate to low','Passenger','No','Only CO2','0af995ba-8201-4042-b032-cf660cfaea55',1,2,3,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Jica Passenger - Modal shift - Baseline.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Passenger - Project .png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/JICA Passenger - Project .png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,15,'V 15.0','AMS-iii-C','AMS-iii-C - Emission reductions by electric and hybrid vehicles ','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan09_AMS-III.C_ver 15.0.pdf','Moderately Resource and Data Intensive','Passenger and Freight','No','Only CO2','6fe2cefe-a4e3-4ffb-95a1-16a403eb244f',1,4,5,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reductions by electric and hybrid vehicles 1.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reductions by electric and hybrid vehicles PE 1.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,16,'V 2.0','UNFCCC_AMS_III_BC','UNFCCC_AMS_III_BC - Emission reductions through improved efficiency of vehicle fleets','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB 75_repan24_AMS-III.BC_ver 02.0.pdf','Moderately Resource and Data Intensive','Not specified','No','Only CO2','5d6469dd-817d-4d44-a110-80c472de402f',1,4,8,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_Parameters.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_Emission_Equation.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,17,'V 1.1.0','UNFCCC_AM0090','UNFCCC_AM0090 - Modal shift in transportation of cargo from road transportation to water or rail transportation','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/Modal shift in transportation of cargo from road transportation to water or rail transportation.pdf','Highly Resource and Data intensive','Freight','No','Only CO2','cab3a62e-1827-4344-ae1d-58a6b74a737f',1,6,6,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline_AM0090.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project_AM0090.PNG',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,18,'V 2.0','AM0110_V_2','AM0110_V_-Modal shift in transportation of liquid fuels','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB83_repan05_AM0110_ver02.0.pdf','Highly Resource and Data intensive','Freight','No','Only CO2','f825e902-d25d-4589-8880-0242e91d1589',1,5,10,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AM 0110 BE.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AM 0110 project.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AM 0110 ER.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,19,'V 1.0','CDM_AMS_III_AK_A','CDM_AMS_III_AK_ Biodiesel production and use for transport applications-Used defualt emission factor','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf','Moderate to low','Freight','No','Only CO2','071301ea-87b3-4a53-89f2-b58cde084fef',1,3,11,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Baseline.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Project .png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Leakage.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Emission Reduction.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,20,'V 1.0','CDM_AMS_III_AK_B','CDM_AMS_III_AK_Biodiesel production and use for transport applications-Used methodological tool','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB98_repan07_AMS-III.AK.pdf','Moderate to low','Freight','No','Only CO2','fd2ddee8-3065-4e3a-8eb4-3b1f2b9c9430',1,3,11,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Baseline.PNG','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Project .png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Leakage.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/AMS IIIAK - Emission Reduction.png'),('-','2022-02-25 14:41:46','-','2022-02-25 14:41:46',0,21,'V 1.0','UNFCCC_AM0016_V_5_new','ACM0016: Mass Rapid Transit Projects','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan02_ACM0016_(v05.0).pdf','Moderate to low','Passenger','No','Only CO2','9fcee0bb-fb65-4fe6-ad40-9b1c052c249d',1,1,9,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ACM0016-be.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/ACM0016-pe.png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ACM0016-le.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,22,'V 4.0','CDM_ACM0017','ACM0017: Production of biofuel ','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB113_repan15_ACM0017_ver04.pdf','Moderate','Passenger and Freight','No','Only CO2','da8c7ca3-3bce-44d0-a2cd-e286e5f1d882',1,3,12,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline equation ACM0017.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project equation ACM0017.png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Leakage equation ACM0017.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reduction equation ACM0017.png'),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,23,'V 1.0','CDM_AMS_III_AT','AMS-III.AT.: Transportation energy efficiency activities installing digital tachograph systems to commercial freight transport fleets','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB66_repan57_Revison of AMS-III.AT_ver02_.pdf','Moderate','Passenger and Freight','No','Only CO2','f33ac249-f2a1-4bb6-bce9-5426cfde33c0',1,4,15,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline equation AMS III AT.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project equation AMS III AT.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/ER.PNG'),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,24,'V 8.0','AM0031','AM0031-Bus rapid transit projects','CDM',NULL,'Transport','https://icat-ca-tool.climatesi.com/pmu-api/DOC/EB110_repan03_AM0031 (v08.0).pdf','Moderately resource and data intensive','Passenger','No','Only CO2','3867952c-14d0-4460-be92-c3b9aea28be1',1,6,16,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline equation AM0031.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Leakage equation AM0031.png',NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Leakage equation AM0031.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reduction equation AM0031.png'),('-','2022-08-18 14:41:46','-','2022-08-18 14:41:46',0,25,'V 1.0','CDM_AMS_III_BN','CDM_AMS_III_BN-Efficient operation of public transportation','CDM',NULL,'Transport','','Moderate to low','Passenger','No','Only CO2','8540c8b0-e25e-4715-850f-a911683bf953',1,4,17,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Baseline equation AMS III BN.png','https://icat-ca-tool.climatesi.com/pmu-api/PNG/Project equation AMS III BN.png',NULL,NULL,'https://icat-ca-tool.climatesi.com/pmu-api/PNG/Emission reduction equation AMS III BN.png');
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
  `salt` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('-','2022-03-02 02:42:07','-','2022-03-02 02:42:07',0,40,'Dr. Henning','Wuester','icat@unops.org','icat@unops.org','+49 228 815 0317','+49 228 815 0317',NULL,'$2b$10$vvHVN6uw.sZT3vH580TRlu','$2b$10$vvHVN6uw.sZT3vH580TRluoloEADw37SZT/daMbc1Zx4UGAj4kBEO','',NULL,0,4,6,1,''),('-','2022-03-02 04:02:09','-','2022-03-02 04:02:09',0,41,'Shyamika','Shiwanthi','pmuadmin2@climatesi.com','pmuadmin2@climatesi.com','+07 12-372-0622','+07 12-372-0622',NULL,'$2b$10$igc0tMHraJ2oY1YFLoehGu','$2b$10$igc0tMHraJ2oY1YFLoehGuEIsVwlrN1kc3tMXZmQgRXNmBps5ZoAe','',NULL,0,1,5,1,''),('-','2022-05-30 04:21:30','-','2022-05-30 04:21:30',0,68,'Hak','Mao','dr.hak.mao25@gmail.com','dr.hak.mao25@gmail.com','+85 56-672-8282','+85 56-672-8282','department of climate change','$2b$10$q5sT7p8/hHoUBsc3kiCzSe','$2b$10$q5sT7p8/hHoUBsc3kiCzSemp8TsoFzMDOUfLeewBLr.R6zNPzNjZW','',NULL,0,2,NULL,28,'a2d8a76e-23e6-434f-95f4-46fa6d6e09d1'),('-','2022-05-30 06:10:31','-','2022-05-30 06:10:31',0,69,'Liberia_CA','Admin','kortezokka232@vusra.com','kortezokka232@vusra.com','+44 71-089-2190','+44 71-089-2190','Department of climate change_LB','n/a','','',NULL,0,2,NULL,4,'eaab36d6-b13f-406f-ba3b-cd8d1cf831aa'),('-','2022-07-20 06:19:21','-','2022-07-20 06:19:21',0,73,'A&B-test','test','lisijig589@leupus.com','lisijig589@leupus.com','+07 14-888-4031','+07 14-888-4031','abc','$2b$10$Sl6MW7QyJkEcLwSgMo1Lo.','$2b$10$Sl6MW7QyJkEcLwSgMo1Lo.muIVbg4BbSQn2.jxDE0Rr.wxLAFvYHe','',NULL,0,2,NULL,29,'ebf979b1-1fb0-4581-beeb-658d9f6f0ce2'),('-','2022-07-28 05:52:56','-','2022-07-28 05:52:56',1,75,'Nemo','Samnang','ritiqy@decabg.eu','ritiqy@decabg.eu','+85 52-512-4326','+85 52-183-5182',NULL,'$2b$10$Mxf8RB80RnXi9iyvfoigu.','$2b$10$Mxf8RB80RnXi9iyvfoigu.ZtBmMpWCWIDwhaUPXLUu4fv74coOuAC','',NULL,0,3,5,1,'0dcb511b-3afc-418c-8f02-5cf80ae98716'),('-','2022-08-05 04:12:23','-','2022-08-05 04:12:23',0,76,'Pham','Vuong','xedego4525@5k2u.com','xedego4525@5k2u.com','+84 26-172-8371','+84 27-362-8190','Ministry of Environment','$2b$10$q05TLrU53x9aLYRtNslXNO','$2b$10$q05TLrU53x9aLYRtNslXNOuNAGCSf1FQhuqpzPSkW6PVpNYvNQJuW','',NULL,0,2,NULL,30,'f4fa0e7a-d373-4951-9cce-d7ba3d9840ce'),('-','2022-09-21 08:37:51','-','2022-09-21 08:37:51',0,78,'Audrey','Doherty','zipazo@teleg.eu','zipazo@teleg.eu','+94 71-238-9191','+94 89-123-9122','Ministry of Transport','$2b$10$OvCmdptkXtyrUfRGGSfG7O','$2b$10$OvCmdptkXtyrUfRGGSfG7OVkTQ/wh/5koqNa5YGbrBqCzUoGfeD1G','',NULL,0,2,NULL,31,'87e54d01-a0ab-4abd-a5da-586bd44285cc'),('-','2022-09-22 03:40:55','-','2022-09-22 03:40:55',0,79,'Henna','Bright','jamesu@decabg.eu','jamesu@decabg.eu','+95 12-379-8123','+91 54-871-3819','Ministry of Environment','$2b$10$TiPCjgUaxZjcDRaWUQhNl.','$2b$10$TiPCjgUaxZjcDRaWUQhNl.X.3diLGqrKV6CXv4Fg4xK2qr0XSzcte','',NULL,0,2,NULL,32,'e3f0d06f-0a91-45da-9df9-d115997f35f3'),('-','2022-10-28 06:27:25','-','2022-10-28 06:27:25',0,81,'Melvin','Lord','testsinglecountry@minutestep.com','testsinglecountry@minutestep.com','+11 11-111-1111','+11 11-111-1111','Single Country  institution ','n/a','','',NULL,0,2,NULL,33,'979ee1e9-8711-4049-b1ef-7c512e50f848'),('-','2023-05-10 09:15:59','-','2023-05-10 09:15:59',0,82,'Dr.Hak','Mao','maohakccd.se@gmail.com','maohakccd.se@gmail.com','+85 52-321-8370','','General Directorate of Policy and Strategy  ','$2b$10$kOOcsseml.5kQngwy0i32O','$2b$10$kOOcsseml.5kQngwy0i32O5xhqeRCbGnZJXv.pP5PHw8hMJab5ALq','',NULL,0,2,NULL,34,'13f0d912-9029-41b5-a94e-e6e5d7e56db1'),('-','2023-05-29 10:46:09','-','2023-05-29 10:46:09',0,83,'Hasitha','Ihalawaththa','vubihy@brand-app.biz','vubihy@brand-app.biz','+86 12-537-1823','+12 93-879-1792',NULL,'$2b$10$cwS8DFU4UplrLy9WznjrPu','$2b$10$cwS8DFU4UplrLy9WznjrPuLYS/1IQ8YYF4gl9TWgjAiIq5PJoOMTq','',NULL,0,3,19,1,'fe19d06b-95b8-49ea-b381-2548bd37d685'),('-','2023-06-20 10:11:31','-','2023-06-20 10:11:31',0,84,'Pradeep','Ranasinghe111','femuloxe@lyft.live','femuloxe@lyft.live','+07 14-888-4031','+11 11-111-1111','test','$2b$10$7KK5SdwbcDJYipsEgtbNme','$2b$10$7KK5SdwbcDJYipsEgtbNmekkP/2FXlZRQrMw.1XxpE1X69P7ILi8O','',NULL,0,2,NULL,27,'bc54409f-f598-49fd-aca2-646f84843a52'),('-','2023-06-26 01:43:55','-','2023-06-26 01:43:55',0,85,'test ','morocco','qojihira@afia.pro','qojihira@afia.pro','+11 11-111-1111','+11 11-111-1111','test morocco','$2b$10$ecbQY1GosvTRUFrvXINPSe','$2b$10$ecbQY1GosvTRUFrvXINPSeqWaFijCXXp4aaGHfVF3FElgY4hlSJua','',NULL,0,2,NULL,7,'364d3c86-815e-4c8d-9dd9-356e0d2cccd8'),('-','2023-08-03 05:50:40','-','2023-08-03 05:50:40',0,87,'Robert','Samuel','tacoceg617@kkoup.com','tacoceg617@kkoup.com','+23 45-009-4839','+23 40-912-8567',NULL,'$2b$10$HE8f4IdxIdwarA34nEbJX.','$2b$10$HE8f4IdxIdwarA34nEbJX.v0jA/bW1qyodHyUxrhO8Jfz.DJ.kKnC','',NULL,0,1,20,1,'8f0c9863-232b-441a-956d-01544f90679b'),('-','2023-08-03 08:28:30','-','2023-08-03 08:28:30',0,89,'Annah','Samuel','icatuser36@gmail.com','icatuser36@gmail.com','+34 59-092-9003','+34 59-200-8940',NULL,'$2b$10$X00tCkRqo.JDhV00yuq7Hu','$2b$10$X00tCkRqo.JDhV00yuq7HuwVtk/va5MnL1W4U3tB.Tp3hy3K1I1iq','',NULL,0,5,6,1,'e070070e-161d-431f-82fd-5bd38d582fee'),('-','2023-08-03 08:46:14','-','2023-08-03 08:46:14',0,90,'Samuel ','Rodrigo','pmuuser0@gmail.com','pmuuser0@gmail.com','+12 45-990-3389','+24 59-920-4403',NULL,'n/a','','',NULL,0,3,20,1,'af196278-a925-40d3-ba1e-39c76bda64de'),('-','2023-08-03 11:46:25','-','2023-08-03 11:46:25',1,91,'Sahan','Samuel','sahan@gmail.com','sahan@gmail.com','+23 44-789-4455','+23 40-899-5643','Director','n/a','','',NULL,0,2,NULL,12,'fab62911-ae24-4bac-ae85-d6c3b1485a42'),('-','2023-08-03 11:57:35','-','2023-08-03 11:57:35',0,92,'Robert','Rodrigo','robrodrigo@gmail.com','robrodrigo@gmail.com','+23 44-456-7890','+23 88-945-3903','Director','$2b$10$sfKmyc1P45jf.RlaZV5N7u','$2b$10$sfKmyc1P45jf.RlaZV5N7uz48xtIfGsAEOTarg/KgEhWscA/lv45q','',NULL,0,2,NULL,11,'a7b8ab05-b197-464c-945c-d062ad61a2db'),('-','2023-08-03 12:18:00','-','2023-08-03 12:18:00',0,93,'Robert','Janaka','transport.board.gov@gmail.com','transport.board.gov@gmail.com','+45 33-567-8967','+23 45-678-9932','Director','$2b$10$zX3Qa9UAhTsVJv/bYEk63u','$2b$10$zX3Qa9UAhTsVJv/bYEk63u6N96ccUjA6G9pYWMHL.kU2JDuwFxv4K','',NULL,0,2,NULL,9,'aa6a5452-fb28-45f2-8ec3-2f509622a5af');
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

-- Dump completed on 2023-08-08  4:25:22
