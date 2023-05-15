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
INSERT INTO `user` VALUES('-', '2023-04-25 10:56:14', '-', '2023-04-25 10:56:14', 0, 300, 'PMU', 'Admin', 'pmuadmin@fakeemail', 'pmu_admin', '+99 99-999-9999', '+99 99-999-9999', 'Manager', '$2b$10$CspFymLVQY9KqDGxO9ryae', '$2b$10$CspFymLVQY9KqDGxO9ryaev4evwNJk.4k03tqH6NO7hSBBI/aaYGS', '', NULL, 0, 1, 6, 1, '233'), ('-', '2023-04-25 10:56:56', '-', '2023-04-25 10:56:56', 0, 301, 'PMU', 'User', 'pmuuser@fakeemail', 'pmu_user', '+99 99-999-9999', '+99 99-999-9999', 'User', '$2b$10$CspFymLVQY9KqDGxO9ryae', '$2b$10$CspFymLVQY9KqDGxO9ryaev4evwNJk.4k03tqH6NO7hSBBI/aaYGS', '', NULL, 0, 3, 6, 1, '234');
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
