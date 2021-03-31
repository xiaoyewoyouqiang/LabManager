-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: labmanager_db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `t_brand`
--

DROP TABLE IF EXISTS `t_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_893pccjfcvay83qhve9xo2tcm` (`Category_id`) USING BTREE,
  CONSTRAINT `FK_893pccjfcvay83qhve9xo2tcm` FOREIGN KEY (`Category_id`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_brand`
--

LOCK TABLES `t_brand` WRITE;
/*!40000 ALTER TABLE `t_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_equipment`
--

DROP TABLE IF EXISTS `t_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_equipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bz` varchar(255) DEFAULT NULL,
  `isBx` int NOT NULL DEFAULT '0',
  `isDelete` int NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '0',
  `jg` double DEFAULT NULL,
  `sbxlh` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zzs` varchar(255) DEFAULT NULL,
  `Laboratory_id` int DEFAULT NULL,
  `fwTime` datetime DEFAULT NULL,
  `ht` varchar(255) DEFAULT NULL,
  `isFw` int NOT NULL DEFAULT '0',
  `photo` varchar(255) DEFAULT NULL,
  `bxLogid` int DEFAULT NULL,
  `jyId` int DEFAULT NULL,
  `JyUser_id` int DEFAULT NULL,
  `isJy` int NOT NULL DEFAULT '0',
  `isSh` int NOT NULL DEFAULT '0',
  `xh` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_4gbru41steogqjjxhx0d8nnci` (`Laboratory_id`) USING BTREE,
  KEY `FK_hklhbo0lr2su1yo1w1ott8d2s` (`JyUser_id`) USING BTREE,
  CONSTRAINT `FK_4gbru41steogqjjxhx0d8nnci` FOREIGN KEY (`Laboratory_id`) REFERENCES `t_laboratory` (`id`),
  CONSTRAINT `FK_hklhbo0lr2su1yo1w1ott8d2s` FOREIGN KEY (`JyUser_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_equipment`
--

LOCK TABLES `t_equipment` WRITE;
/*!40000 ALTER TABLE `t_equipment` DISABLE KEYS */;
INSERT INTO `t_equipment` VALUES (25,NULL,1,0,0,NULL,NULL,NULL,'机器人','华南师范大学',36,NULL,NULL,0,'\\upload\\f1ab0e20904311eb2ca2e7bb3989a29b机器人.jpg',21,NULL,NULL,0,0,NULL,NULL),(26,NULL,0,0,0,0,'',NULL,'FPV VR Flying Experience','华南师范大学南海校区',36,NULL,NULL,0,'\\upload\\b2af9780904411eb2ca2e7bb3989a29bvr.jpg',NULL,NULL,NULL,0,0,NULL,NULL),(27,NULL,0,0,0,NULL,'20',NULL,'机器人小车','华南师范大学南海校区',36,NULL,NULL,0,'\\upload\\cee2ad70904411eb2ca2e7bb3989a29b机器人小车.jpg',NULL,NULL,NULL,0,0,NULL,NULL),(28,NULL,0,0,0,NULL,NULL,NULL,'无人机','华南师范大学南海校区',36,NULL,NULL,0,'\\upload\\01295040904511eb2ca2e7bb3989a29b无人机.jpg',NULL,NULL,NULL,0,0,NULL,NULL),(29,NULL,0,0,0,NULL,NULL,NULL,'扫地机器人','华南师范大学南海校区',36,NULL,NULL,0,'\\upload\\f193ff80904a11eb2ca2e7bb3989a29b扫地机器人.jpg',NULL,NULL,NULL,0,0,NULL,NULL),(30,NULL,0,0,0,NULL,NULL,NULL,'移动平台','华南师范大学南海校区',36,NULL,NULL,0,'\\upload\\f4706b80904a11eb2ca2e7bb3989a29b移动平台.jpg',NULL,NULL,NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `t_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_equipmentlog`
--

DROP TABLE IF EXISTS `t_equipmentlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_equipmentlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `endTime` datetime DEFAULT NULL,
  `qx` tinyblob,
  `state` int NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `user` tinyblob,
  `Equipment_id` int DEFAULT NULL,
  `qx_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `isSh` int NOT NULL DEFAULT '0',
  `isYy` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_aj076up5mm5gyl3q97bl2if78` (`Equipment_id`) USING BTREE,
  KEY `FK_a4m6nesgv6t398u3r2dd2o0w0` (`qx_id`) USING BTREE,
  KEY `FK_lmr7ywifxyrrkc3xj24hm8l6f` (`user_id`) USING BTREE,
  CONSTRAINT `FK_a4m6nesgv6t398u3r2dd2o0w0` FOREIGN KEY (`qx_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_aj076up5mm5gyl3q97bl2if78` FOREIGN KEY (`Equipment_id`) REFERENCES `t_equipment` (`id`),
  CONSTRAINT `FK_lmr7ywifxyrrkc3xj24hm8l6f` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_equipmentlog`
--

LOCK TABLES `t_equipmentlog` WRITE;
/*!40000 ALTER TABLE `t_equipmentlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_equipmentlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_feedback`
--

DROP TABLE IF EXISTS `t_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  `number` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_feedback`
--

LOCK TABLES `t_feedback` WRITE;
/*!40000 ALTER TABLE `t_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_introduction`
--

DROP TABLE IF EXISTS `t_introduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_introduction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gg` varchar(255) DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_introduction`
--

LOCK TABLES `t_introduction` WRITE;
/*!40000 ALTER TABLE `t_introduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_introduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_laboratory`
--

DROP TABLE IF EXISTS `t_laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_laboratory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `fzr` varchar(255) DEFAULT NULL,
  `fzrDh` varchar(255) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `laboratoryLogId` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_oiwbrfnohrp1gwe00ly8rb5vg` (`user_id`) USING BTREE,
  CONSTRAINT `FK_oiwbrfnohrp1gwe00ly8rb5vg` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_laboratory`
--

LOCK TABLES `t_laboratory` WRITE;
/*!40000 ALTER TABLE `t_laboratory` DISABLE KEYS */;
INSERT INTO `t_laboratory` VALUES (1,'信息中心一楼','需要携带个人笔记本电脑，实验书','黄武秋','14223412432',0,0,'华南师范大学南海校区培训基地','2019-03-14 15:23:32',NULL,51),(2,'信息中心一楼 信101(1)','需要携带。。。','黄武秋','13232355241',0,0,'微格实验室(1)','2019-03-14 15:23:32',NULL,41),(3,'信息中心一楼 信101(2)','3','黄武秋','14222213321',0,0,'微格实验室(2)','2019-03-14 15:23:32',NULL,30),(4,'信息中心一楼 信101(3)','4','黄武秋','14452213321',0,0,'微格实验室(3)','2019-03-14 15:23:32',NULL,40),(5,'信息中心一楼 信103','555','黄武秋','555',0,0,'国际化综合实验室','2019-03-14 15:23:32',NULL,48),(6,'信息中心一楼 110','6','黄武秋','6',0,0,'金融工程大数据分析实验室','2019-03-14 15:23:32',NULL,36),(7,'信息中心20B','aaa','黄武秋','数据中心分别部署高性能计算服务器集群和大数据及云计算实验平台服务集群',0,0,'数据中心','2019-03-14 15:23:32',NULL,43),(8,'信息中心201','','黄武秋','新媒体与混合现实实验室立足新媒体、国际化、前瞻性和前沿科学研究的需求，配备了国内外先进的图形工作站和混合现实设备',0,0,'数媒体与混合现实实验室','2019-03-14 15:23:32',NULL,45),(9,'信息中心203','测试测试','黄武秋','本实验室以大数据和云计算应用引领前沿创新研究，提供了完整的大数据教学实训、科研创新所需的计算能力和工具支持，为大数据人才的培养、科研创新和各种大赛提供了方便、可靠的服务平台',0,0,'大数据与云计算实验室','2019-03-14 15:23:32',NULL,NULL),(10,'信息中心205','实验室管理测试','黄武秋','11111111111',0,0,'软件工程实验室','2019-03-14 15:23:32',NULL,15),(11,'信息中心206','腾讯课堂学习','黄武秋','学习开发',0,0,'信息中心206','2019-07-11 18:26:22',NULL,28),(33,'信息中心207','暂无','黄武秋','暂无',0,0,'信息中心207','2021-02-18 17:45:53',NULL,NULL),(34,'信息中心208','暂无','黄武秋','暂无',0,0,'软件技术实验室','2021-02-18 17:46:29',NULL,NULL),(35,'信息中心209','暂无','黄武秋','暂无',0,0,'信息中心209','2021-02-18 17:46:56',NULL,NULL),(36,'信息中心210','暂无','黄武秋','暂无',0,0,'实验中心设备间','2021-02-18 17:47:33',NULL,NULL),(37,'信息中心211','暂无','黄武秋','暂无',0,0,'软件工程实验室','2021-02-18 17:48:01',NULL,NULL),(38,'信息中心212','暂无','黄武秋','本实验室主要承担国际联合学院软件工程专业、电子信息工程专业、信息与计算科学专业的程序语言类课程和程序设计类课程的实验，包括A、B、C三件微机室',0,0,'软件技术与Capstone实训室','2021-02-18 17:50:34',NULL,NULL),(39,'301','暂无','黄武秋','暂无',0,0,'网络技术实验室','2021-02-18 18:15:53',NULL,NULL),(40,'302','暂无','黄武秋','暂无',0,0,'实验室中心办公室','2021-02-18 18:16:26',NULL,NULL),(41,'303','暂无','黄武秋','暂无',0,0,'图形图像处理技术实验室','2021-02-18 18:17:34',NULL,NULL),(42,'304','暂无','黄武秋','暂无',0,0,'公共基础实验室(机房)','2021-02-18 18:18:11',NULL,NULL),(43,'305','暂无','黄武秋','暂无',0,0,'教师办公室','2021-02-18 18:18:36',NULL,NULL),(44,'305','暂无','黄武秋','暂无',0,0,'教师办公室','2021-02-18 18:18:38',NULL,NULL),(45,'3A','暂无','黄武秋','暂无',0,0,'信息楼机房 3A','2021-02-18 18:19:08',NULL,NULL),(46,'3B','暂无','黄武秋','暂无',0,0,'信息楼机房 3B','2021-02-18 18:19:36',NULL,NULL),(47,'3C','暂无','黄武秋','暂无',0,0,'信息楼机房 3C','2021-02-18 18:20:02',NULL,NULL),(48,'306','暂无','黄武秋','暂无',0,0,'信息中心','2021-02-18 18:20:27',NULL,NULL),(49,'308','暂无','黄武秋','暂无',0,0,'软件工程创新开放实验室','2021-02-18 18:21:10',NULL,NULL),(50,'309','暂无','黄武秋','暂无',0,0,'产学研技术研究中心','2021-02-18 18:21:43',NULL,NULL),(51,'30B','暂无','黄武秋','暂无',0,0,'实验中心设备间','2021-02-18 18:22:25',NULL,NULL),(52,'信息中心40B','暂无','黄武秋','暂无',0,0,'信息中心40B','2021-02-18 18:22:55',NULL,NULL),(53,'信息中心40B','暂无','黄武秋','暂无',0,0,'信息中心40B','2021-02-18 18:22:56',NULL,NULL),(54,'信403','暂无','黄武秋','暂无',0,0,'嵌入式系统实验室(软件学院)','2021-02-18 18:23:27',NULL,NULL),(55,'信403','暂无','黄武秋','暂无',0,0,'嵌入式系统实验室(软件学院)','2021-02-18 18:23:29',NULL,NULL),(56,'信息中心四楼','暂无','黄武秋','ERP财务管理创新实验室是一个集多功能为一体的中心',0,0,'ERP财务管理创新实验室','2021-02-18 18:24:33',NULL,NULL),(57,'信息中心四楼','暂无','黄武秋','ERP财务管理创新实验室是-个集多功能为一体的中心',0,0,'ERP财务管理创新实验室','2021-02-18 18:24:34',NULL,NULL),(58,'404','暂无','黄武秋','暂无',0,0,'公共基础实验室(机房)','2021-02-18 18:26:40',NULL,NULL),(59,'406','暂无','黄武秋','暂无',0,0,'模拟电路实验室','2021-02-18 18:27:07',NULL,NULL),(60,'406','暂无','黄武秋','暂无',0,0,'模拟电路实验室','2021-02-18 18:27:09',NULL,NULL),(61,'软件学院407-1','暂无','黄武秋','暂无',0,0,'软件学院407-1','2021-02-18 18:28:18',NULL,NULL),(62,'软件学院407-2','暂无','黄武秋','暂无',0,0,'软件学院407-2','2021-02-18 18:28:50',NULL,NULL);
/*!40000 ALTER TABLE `t_laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_laboratorylog`
--

DROP TABLE IF EXISTS `t_laboratorylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_laboratorylog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `laboratory_id` int DEFAULT NULL,
  `state` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `userQx_id` int DEFAULT NULL,
  `isSh` int NOT NULL DEFAULT '0',
  `isYy` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_bflao1s1awsf0h4jtycc2xgky` (`laboratory_id`) USING BTREE,
  KEY `FK_of6onusgky4n43a3fjpjvd1xf` (`user_id`) USING BTREE,
  KEY `FK_1v21erw5dwhs38nqj5h452fpa` (`userQx_id`) USING BTREE,
  CONSTRAINT `FK_1v21erw5dwhs38nqj5h452fpa` FOREIGN KEY (`userQx_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_bflao1s1awsf0h4jtycc2xgky` FOREIGN KEY (`laboratory_id`) REFERENCES `t_laboratory` (`id`),
  CONSTRAINT `FK_of6onusgky4n43a3fjpjvd1xf` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_laboratorylog`
--

LOCK TABLES `t_laboratorylog` WRITE;
/*!40000 ALTER TABLE `t_laboratorylog` DISABLE KEYS */;
INSERT INTO `t_laboratorylog` VALUES (7,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',1,0,0),(8,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',1,0,0),(27,'2021-02-15 00:43:57',2,0,1,NULL,NULL,0,0),(28,'2021-02-15 00:44:48',11,0,1,NULL,NULL,0,0),(29,'2021-02-15 00:45:01',3,3,1,'2021-02-15 00:45:16',1,0,0),(30,'2021-02-15 00:45:21',3,0,1,NULL,NULL,0,0),(31,'2021-02-15 00:47:57',2,0,1,NULL,NULL,0,0),(32,'2021-02-15 00:48:06',2,3,1,'2021-02-15 00:48:17',1,0,0),(33,'2021-02-15 00:48:33',2,0,1,NULL,NULL,0,0),(34,'2021-02-15 00:48:50',2,0,1,NULL,NULL,0,0),(35,'2021-03-01 17:06:30',1,0,1,NULL,NULL,0,0),(36,'2021-03-31 15:27:13',6,0,1,NULL,NULL,0,0),(37,'2021-03-31 15:39:39',7,0,8,NULL,NULL,0,0),(38,'2021-03-31 15:40:38',7,3,1,'2021-03-31 15:40:45',1,0,0),(39,'2021-03-31 15:41:09',7,0,1,NULL,NULL,0,0),(40,'2021-03-31 15:45:25',4,0,1,NULL,NULL,0,0),(41,'2021-03-31 15:45:32',2,0,1,NULL,NULL,0,0),(42,'2021-03-31 15:52:17',7,0,1,NULL,NULL,0,0),(43,'2021-03-31 15:52:22',7,0,1,NULL,NULL,0,0),(44,'2021-03-31 15:54:10',8,0,1,NULL,NULL,0,0),(45,'2021-03-31 15:54:14',8,0,1,NULL,NULL,0,0),(46,'2021-03-31 15:55:26',5,0,4,NULL,NULL,0,0),(47,'2021-03-31 15:56:03',5,3,1,'2021-03-31 15:56:08',1,0,0),(48,'2021-03-31 15:56:18',5,0,1,NULL,NULL,0,0),(49,'2021-03-31 15:59:56',1,0,4,NULL,NULL,0,0),(50,'2021-03-31 16:00:29',1,3,1,'2021-03-31 16:03:35',1,0,0),(51,'2021-03-31 16:03:40',1,0,1,NULL,NULL,0,0);
/*!40000 ALTER TABLE `t_laboratorylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` varchar(255) DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `User_Fsr` int DEFAULT NULL,
  `User_Jsr` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_oa4mv5qj0sqj0we556035uujp` (`User_Fsr`) USING BTREE,
  KEY `FK_f8e6w63qcqq7ovck9p24tarfn` (`User_Jsr`) USING BTREE,
  CONSTRAINT `FK_f8e6w63qcqq7ovck9p24tarfn` FOREIGN KEY (`User_Jsr`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_oa4mv5qj0sqj0we556035uujp` FOREIGN KEY (`User_Fsr`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notice`
--

DROP TABLE IF EXISTS `t_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isDelete` int NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `nr` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notice`
--

LOCK TABLES `t_notice` WRITE;
/*!40000 ALTER TABLE `t_notice` DISABLE KEYS */;
INSERT INTO `t_notice` VALUES (1,0,'最新通告','教学楼2楼实验室关闭。','2019-04-15 10:18:48');
/*!40000 ALTER TABLE `t_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_photo`
--

DROP TABLE IF EXISTS `t_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `fileName1` varchar(255) DEFAULT NULL,
  `fileName2` varchar(255) DEFAULT NULL,
  `fileName3` varchar(255) DEFAULT NULL,
  `fileName4` varchar(255) DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `jg` double NOT NULL,
  `js` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_auktpin78v83k3m853icf84pc` (`brand_id`) USING BTREE,
  KEY `FK_2d9pnn6ktk352aa8dc7fjqgfv` (`category_id`) USING BTREE,
  KEY `FK_pk1m1dnqq1ehyv197nf76moa3` (`user_id`) USING BTREE,
  CONSTRAINT `FK_2d9pnn6ktk352aa8dc7fjqgfv` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`id`),
  CONSTRAINT `FK_auktpin78v83k3m853icf84pc` FOREIGN KEY (`brand_id`) REFERENCES `t_brand` (`id`),
  CONSTRAINT `FK_pk1m1dnqq1ehyv197nf76moa3` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_photo`
--

LOCK TABLES `t_photo` WRITE;
/*!40000 ALTER TABLE `t_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_purchase`
--

DROP TABLE IF EXISTS `t_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `isDelete` int DEFAULT NULL,
  `money` double NOT NULL,
  `price` double NOT NULL,
  `time` datetime DEFAULT NULL,
  `photo_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_mk4hqspsn92mxmjoqydy99pla` (`photo_id`) USING BTREE,
  KEY `FK_207dkr7b4an3av28b483722kt` (`user_id`) USING BTREE,
  CONSTRAINT `FK_207dkr7b4an3av28b483722kt` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_mk4hqspsn92mxmjoqydy99pla` FOREIGN KEY (`photo_id`) REFERENCES `t_photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_purchase`
--

LOCK TABLES `t_purchase` WRITE;
/*!40000 ALTER TABLE `t_purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_repairlog`
--

DROP TABLE IF EXISTS `t_repairlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_repairlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bxTime` datetime DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `wz` varchar(255) DEFAULT NULL,
  `Equipment_id` int DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_awqus26wjn9jwoqdgkpqascpt` (`Equipment_id`) USING BTREE,
  CONSTRAINT `FK_awqus26wjn9jwoqdgkpqascpt` FOREIGN KEY (`Equipment_id`) REFERENCES `t_equipment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_repairlog`
--

LOCK TABLES `t_repairlog` WRITE;
/*!40000 ALTER TABLE `t_repairlog` DISABLE KEYS */;
INSERT INTO `t_repairlog` VALUES (14,'2019-11-21 19:11:39','内存故障','2021-03-29 19:12:06',0,'黄武秋','A室',31,'44'),(15,'2019-12-01 19:12:43','系统崩溃','2021-03-29 19:12:55',0,'黄武秋','B室',32,'06'),(16,'2019-12-01 19:14:58','硬盘坏了','2021-03-29 19:15:07',0,'黄武秋','C室',33,'44'),(17,'2019-12-16 19:15:26','内存故障','2021-03-29 19:15:31',0,'黄武秋','A室',31,'12'),(18,'2019-12-18 19:16:16','不通电','2021-03-29 19:16:20',0,'黄武秋','A室',31,'04'),(19,'2019-12-18 19:16:54','内存故障','2021-03-29 19:17:32',0,'黄武秋','A室',31,'30'),(21,'2021-03-30 11:26:11','test',NULL,0,'黄武秋','D室',NULL,'200');
/*!40000 ALTER TABLE `t_repairlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'admin','管理员'),(2,'js','教师'),(3,'xs','学生');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bj` varchar(255) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  `isSh` int NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `xy` varchar(255) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `fzr` varchar(255) DEFAULT NULL,
  `fzrDh` varchar(255) DEFAULT NULL,
  `isYy` int NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_2qjfg4ive1qmy8ev91c0mwvlm` (`role_id`) USING BTREE,
  KEY `FK_1mede137ulc3ntvt2xkxpt7sd` (`user_id`) USING BTREE,
  CONSTRAINT `FK_1mede137ulc3ntvt2xkxpt7sd` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_2qjfg4ive1qmy8ev91c0mwvlm` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'软件工程',0,1,'admin','教务管理员','12345678scnu','16252162516','实验室管教1','2019-03-14 15:23:32','软件学院',1,NULL,NULL,NULL,NULL,0,NULL),(4,'2班',0,1,'lmf@scnu','1','123456scnu','17913863545','林勉芬','2019-03-14 15:23:32','软件学院',3,NULL,NULL,NULL,NULL,0,NULL),(6,'3班',0,1,'xjl@scnu','1','123456scnu','17913863545','冼俊琳','2019-03-14 15:23:32','软件学院',3,NULL,NULL,NULL,NULL,0,NULL),(7,'2班',0,1,'pww@scnu','0','123456scnu','0','彭雯雯','2019-03-14 15:23:32','软件学院',3,NULL,NULL,NULL,NULL,0,NULL),(8,'实验室',0,1,'hwq@scnu','abc','123456scnu','17913863545','黄武秋','2019-03-14 15:23:32','软件学院',2,NULL,NULL,NULL,NULL,0,NULL),(9,'123',1,0,'mianfen','123','123','13129604118','lin','2021-03-14 12:34:42','123',2,NULL,NULL,NULL,NULL,0,NULL),(10,'TEST',1,0,'TEST','TEST','TEST','13129604118','TEST','2021-03-14 12:35:48','TEST',3,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-31 16:12:26
