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
  `xh` varchar(255) DEFAULT NULL,
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_4gbru41steogqjjxhx0d8nnci` (`Laboratory_id`) USING BTREE,
  KEY `FK_hklhbo0lr2su1yo1w1ott8d2s` (`JyUser_id`) USING BTREE,
  CONSTRAINT `FK_4gbru41steogqjjxhx0d8nnci` FOREIGN KEY (`Laboratory_id`) REFERENCES `t_laboratory` (`id`),
  CONSTRAINT `FK_hklhbo0lr2su1yo1w1ott8d2s` FOREIGN KEY (`JyUser_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_equipment`
--

LOCK TABLES `t_equipment` WRITE;
/*!40000 ALTER TABLE `t_equipment` DISABLE KEYS */;
INSERT INTO `t_equipment` VALUES (1,'计算机基础',0,0,1,3500,'天龙-11',NULL,'电脑','江苏大华',1,'2019-03-14 15:23:32','\\upload\\75b40810ad5f11e6779fd863d0b032aa实时位置和轨迹接口.doc',1,'\\upload\\63cfd790ad6011e6779fd863d0b032aa13.jpg',9,9,6,0,0),(2,'石墨烯材料探究',0,0,2,222,'22',NULL,'石墨烯c0','山东',2,'2019-03-14 15:23:32','\\upload\\fe25ef90ae2911e6f233742beffe859a实验室设备管理系统详细功能.docx',1,'\\upload\\20b2c030ad6011e6779fd863d0b032aa9.jpg',7,14,1,0,0),(3,'33',0,0,1,33,'33',NULL,'33','33',5,'2019-03-14 15:23:32',NULL,1,'\\upload\\1e96d640ae2a11e6f233742beffe859a9.jpg',NULL,24,1,1,0),(4,'44',0,0,3,44,'44',NULL,'44','44',5,'2019-03-14 15:23:32',NULL,1,NULL,NULL,16,1,0,0),(5,'55',0,0,1,55,'55',NULL,'55','55',6,'2019-03-14 15:23:32',NULL,1,NULL,NULL,17,1,0,0),(6,'66',0,0,1,666,'66',NULL,'666','666',6,'2021-02-08 01:27:44',NULL,1,NULL,NULL,NULL,NULL,0,0),(7,'77',0,0,0,77,'77',NULL,'777','77',3,'2019-03-14 15:23:32',NULL,0,NULL,NULL,30,1,1,1),(8,'88',0,0,1,88,'88',NULL,'88','88',4,'2019-03-14 15:23:32',NULL,1,NULL,11,27,1,0,0),(9,'99',0,1,1,99,'99',NULL,'99','99',7,'2019-03-14 15:23:32',NULL,0,NULL,NULL,NULL,NULL,0,0),(10,'333',0,0,0,222,'333',NULL,'测试测试','测试测试',9,'2019-03-14 15:23:32',NULL,1,NULL,NULL,NULL,NULL,0,0),(11,'实验室管理测试',0,0,1,11,'222',NULL,'实验室管理测试','实验室管理测试',10,'2019-03-14 15:23:32','\\upload\\63ae2510ae2c11e6be0c12c967dbb02e实验室设备管理系统详细功能.docx',1,'\\upload\\7fc8a9f0ae2c11e6be0c12c967dbb02e1.jpg',NULL,18,1,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_equipmentlog`
--

LOCK TABLES `t_equipmentlog` WRITE;
/*!40000 ALTER TABLE `t_equipmentlog` DISABLE KEYS */;
INSERT INTO `t_equipmentlog` VALUES (6,'2016-11-19 11:55:38',NULL,1,'2019-03-14 15:23:32',NULL,1,1,1,0,0),(7,'2016-11-19 11:56:02',NULL,1,'2019-03-14 15:23:32',NULL,1,7,7,0,0),(8,'2016-11-19 11:58:11',NULL,2,'2019-03-14 15:23:32',NULL,1,1,1,0,0),(9,'2019-04-19 10:41:49',NULL,2,'2019-03-14 15:23:32',NULL,1,6,6,0,0),(10,'2016-11-19 15:32:57',NULL,3,'2019-03-14 15:23:32',NULL,4,4,4,0,0),(11,'2016-11-19 15:48:57',NULL,1,'2019-03-14 15:23:32',NULL,2,1,1,0,0),(12,'2019-04-19 10:41:33',NULL,1,'2019-03-14 15:23:32',NULL,3,6,6,0,0),(13,'2019-04-19 10:43:14',NULL,3,'2019-04-17 14:40:33',NULL,5,4,4,0,0),(14,'2019-04-17 14:55:39',NULL,0,'2019-04-17 14:55:04',NULL,2,1,1,0,0),(15,'2019-04-19 10:40:46',NULL,0,'2019-04-19 10:40:10',NULL,4,1,1,0,0),(16,NULL,NULL,0,'2019-07-11 18:27:10',NULL,4,NULL,1,0,0),(17,NULL,NULL,1,'2021-02-08 01:26:01',NULL,5,NULL,1,0,0),(18,NULL,NULL,0,'2021-02-09 15:54:14',NULL,11,NULL,1,0,0),(19,'2021-02-15 00:41:05',NULL,3,'2021-02-15 00:27:03',NULL,3,1,1,0,0),(20,NULL,NULL,0,'2021-02-15 00:27:56',NULL,7,NULL,1,0,0),(21,'2021-02-15 00:42:56',NULL,3,'2021-02-15 00:28:02',NULL,7,1,1,0,0),(22,NULL,NULL,0,'2021-02-15 00:41:13',NULL,3,NULL,1,0,0),(23,NULL,NULL,0,'2021-02-15 00:42:39',NULL,3,NULL,1,0,0),(24,NULL,NULL,0,'2021-02-15 00:42:44',NULL,3,NULL,1,0,0),(25,NULL,NULL,0,'2021-02-15 00:43:03',NULL,7,NULL,1,0,0),(26,NULL,NULL,0,'2021-02-15 00:43:08',NULL,8,NULL,1,0,0),(27,NULL,NULL,0,'2021-02-15 00:43:15',NULL,8,NULL,1,0,0),(28,NULL,NULL,0,'2021-02-15 00:49:08',NULL,7,NULL,1,0,0),(29,'2021-02-15 00:49:19',NULL,3,'2021-02-15 00:49:14',NULL,7,1,1,0,0),(30,NULL,NULL,0,'2021-02-15 00:49:33',NULL,7,NULL,1,0,0);
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
INSERT INTO `t_laboratory` VALUES (1,'信息中心一楼','需要携带个人笔记本电脑，实验书','黄武秋','14223412432',0,1,'华南师范大学南海校区培训基地','2019-03-14 15:23:32',1,26),(2,'信息中心一楼 信101(1)','需要携带。。。','黄武秋','13232355241',0,2,'微格实验室(1)','2019-03-14 15:23:32',1,34),(3,'信息中心一楼 信101(2)','3','黄武秋','14222213321',0,0,'微格实验室(2)','2019-03-14 15:23:32',1,30),(4,'信息中心一楼 信101(3)','4','黄武秋','14452213321',0,3,'微格实验室(3)','2019-03-14 15:23:32',1,21),(5,'信息中心一楼 信103','555','黄武秋','555',0,1,'国际化综合实验室','2019-03-14 15:23:32',NULL,NULL),(6,'信息中心一楼 110','6','黄武秋','6',0,2,'金融工程大数据分析实验室','2019-03-14 15:23:32',NULL,NULL),(7,'信息中心20B','aaa','黄武秋','数据中心分别部署高性能计算服务器集群和大数据及云计算实验平台服务集群',0,1,'数据中心','2019-03-14 15:23:32',NULL,NULL),(8,'信息中心201','','黄武秋','新媒体与混合现实实验室立足新媒体、国际化、前瞻性和前沿科学研究的需求，配备了国内外先进的图形工作站和混合现实设备',0,1,'数媒体与混合现实实验室','2019-03-14 15:23:32',NULL,NULL),(9,'信息中心203','测试测试','黄武秋','本实验室以大数据和云计算应用引领前沿创新研究，提供了完整的大数据教学实训、科研创新所需的计算能力和工具支持，为大数据人才的培养、科研创新和各种大赛提供了方便、可靠的服务平台',0,1,'大数据与云计算实验室','2019-03-14 15:23:32',NULL,NULL),(10,'信息中心205','实验室管理测试','黄武秋','11111111111',0,3,'软件工程实验室','2019-03-14 15:23:32',NULL,15),(11,'信息中心206','腾讯课堂学习','黄武秋','学习开发',0,0,'信息中心206','2019-07-11 18:26:22',1,28),(33,'信息中心207','暂无','黄武秋','暂无',0,0,'信息中心207','2021-02-18 17:45:53',NULL,NULL),(34,'信息中心208','暂无','黄武秋','暂无',0,0,'软件技术实验室','2021-02-18 17:46:29',NULL,NULL),(35,'信息中心209','暂无','黄武秋','暂无',0,0,'信息中心209','2021-02-18 17:46:56',NULL,NULL),(36,'信息中心210','暂无','黄武秋','暂无',0,0,'实验中心设备间','2021-02-18 17:47:33',NULL,NULL),(37,'信息中心211','暂无','黄武秋','暂无',0,0,'软件工程实验室','2021-02-18 17:48:01',NULL,NULL),(38,'信息中心212','暂无','黄武秋','本实验室主要承担国际联合学院软件工程专业、电子信息工程专业、信息与计算科学专业的程序语言类课程和程序设计类课程的实验，包括A、B、C三件微机室',0,0,'软件技术与Capstone实训室','2021-02-18 17:50:34',NULL,NULL),(39,'301','暂无','黄武秋','暂无',0,0,'网络技术实验室','2021-02-18 18:15:53',NULL,NULL),(40,'302','暂无','黄武秋','暂无',0,0,'实验室中心办公室','2021-02-18 18:16:26',NULL,NULL),(41,'303','暂无','黄武秋','暂无',0,0,'图形图像处理技术实验室','2021-02-18 18:17:34',NULL,NULL),(42,'304','暂无','黄武秋','暂无',0,0,'公共基础实验室(机房)','2021-02-18 18:18:11',NULL,NULL),(43,'305','暂无','黄武秋','暂无',0,0,'教师办公室','2021-02-18 18:18:36',NULL,NULL),(44,'305','暂无','黄武秋','暂无',1,0,'教师办公室','2021-02-18 18:18:38',NULL,NULL),(45,'3A','暂无','黄武秋','暂无',0,0,'信息楼机房 3A','2021-02-18 18:19:08',NULL,NULL),(46,'3B','暂无','黄武秋','暂无',0,0,'信息楼机房 3B','2021-02-18 18:19:36',NULL,NULL),(47,'3C','暂无','黄武秋','暂无',0,0,'信息楼机房 3C','2021-02-18 18:20:02',NULL,NULL),(48,'306','暂无','黄武秋','暂无',0,0,'信息中心','2021-02-18 18:20:27',NULL,NULL),(49,'308','暂无','黄武秋','暂无',0,0,'软件工程创新开放实验室','2021-02-18 18:21:10',NULL,NULL),(50,'309','暂无','黄武秋','暂无',0,0,'产学研技术研究中心','2021-02-18 18:21:43',NULL,NULL),(51,'30B','暂无','黄武秋','暂无',0,0,'实验中心设备间','2021-02-18 18:22:25',NULL,NULL),(52,'信息中心40B','暂无','黄武秋','暂无',0,0,'信息中心40B','2021-02-18 18:22:55',NULL,NULL),(53,'信息中心40B','暂无','黄武秋','暂无',1,0,'信息中心40B','2021-02-18 18:22:56',NULL,NULL),(54,'信403','暂无','黄武秋','暂无',0,0,'嵌入式系统实验室(软件学院)','2021-02-18 18:23:27',NULL,NULL),(55,'信403','暂无','黄武秋','暂无',1,0,'嵌入式系统实验室(软件学院)','2021-02-18 18:23:29',NULL,NULL),(56,'信息中心四楼','暂无','黄武秋','ERP财务管理创新实验室是一个集多功能为一体的中心',0,0,'ERP财务管理创新实验室','2021-02-18 18:24:33',NULL,NULL),(57,'信息中心四楼','暂无','黄武秋','ERP财务管理创新实验室是-个集多功能为一体的中心',1,0,'ERP财务管理创新实验室','2021-02-18 18:24:34',NULL,NULL),(58,'404','暂无','黄武秋','暂无',0,0,'公共基础实验室(机房)','2021-02-18 18:26:40',NULL,NULL),(59,'406','暂无','黄武秋','暂无',0,0,'模拟电路实验室','2021-02-18 18:27:07',NULL,NULL),(60,'406','暂无','黄武秋','暂无',1,0,'模拟电路实验室','2021-02-18 18:27:09',NULL,NULL),(61,'软件学院407-1','暂无','黄武秋','暂无',0,0,'软件学院407-1','2021-02-18 18:28:18',NULL,NULL),(62,'软件学院407-2','暂无','黄武秋','暂无',0,0,'软件学院407-2','2021-02-18 18:28:50',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_laboratorylog`
--

LOCK TABLES `t_laboratorylog` WRITE;
/*!40000 ALTER TABLE `t_laboratorylog` DISABLE KEYS */;
INSERT INTO `t_laboratorylog` VALUES (7,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',1,0,0),(8,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',1,0,0),(9,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',7,0,0),(10,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',1,0,0),(11,'2019-03-14 15:23:32',1,1,1,'2019-03-14 15:23:32',1,0,0),(12,'2019-03-14 15:23:32',2,2,6,'2019-03-14 15:23:32',6,0,0),(13,'2019-03-14 15:23:32',1,2,6,'2019-03-14 15:23:32',NULL,0,0),(14,'2019-03-14 15:23:32',2,3,1,'2021-02-15 00:43:52',1,0,0),(15,'2019-03-14 15:23:32',10,0,6,'2019-03-14 15:23:32',6,0,0),(16,'2019-04-18 10:13:00',4,1,1,NULL,NULL,0,0),(17,'2019-07-11 18:28:53',11,3,1,'2021-02-15 00:44:41',1,0,0),(18,'2019-11-06 23:10:05',3,1,6,NULL,NULL,0,0),(19,'2019-11-06 23:10:06',3,1,6,NULL,NULL,0,0),(20,'2021-02-07 14:35:09',4,1,1,NULL,NULL,0,0),(21,'2021-02-09 15:54:05',4,0,1,NULL,NULL,0,0),(22,'2021-02-14 18:41:31',1,0,1,NULL,NULL,0,0),(23,'2021-02-14 23:46:40',1,3,1,'2021-02-14 23:53:53',1,0,0),(24,'2021-02-14 23:54:01',1,0,1,NULL,NULL,0,0),(25,'2021-02-15 00:43:27',1,0,1,NULL,NULL,0,0),(26,'2021-02-15 00:43:34',1,0,1,NULL,NULL,0,0),(27,'2021-02-15 00:43:57',2,0,1,NULL,NULL,0,0),(28,'2021-02-15 00:44:48',11,0,1,NULL,NULL,0,0),(29,'2021-02-15 00:45:01',3,3,1,'2021-02-15 00:45:16',1,0,0),(30,'2021-02-15 00:45:21',3,0,1,NULL,NULL,0,0),(31,'2021-02-15 00:47:57',2,0,1,NULL,NULL,0,0),(32,'2021-02-15 00:48:06',2,3,1,'2021-02-15 00:48:17',1,0,0),(33,'2021-02-15 00:48:33',2,0,1,NULL,NULL,0,0),(34,'2021-02-15 00:48:50',2,0,1,NULL,NULL,0,0);
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_awqus26wjn9jwoqdgkpqascpt` (`Equipment_id`) USING BTREE,
  CONSTRAINT `FK_awqus26wjn9jwoqdgkpqascpt` FOREIGN KEY (`Equipment_id`) REFERENCES `t_equipment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_repairlog`
--

LOCK TABLES `t_repairlog` WRITE;
/*!40000 ALTER TABLE `t_repairlog` DISABLE KEYS */;
INSERT INTO `t_repairlog` VALUES (5,'2016-11-18 15:59:09','33','2019-03-14 15:23:32',0,'33','33',1),(6,'2016-11-18 16:33:40','测试','2019-03-14 15:23:32',0,'测试','测试',1),(7,'2016-11-18 16:36:00','33','2019-03-14 15:23:32',0,'33','33',1),(8,'2016-11-19 15:32:15','测试测试','2019-03-14 15:23:32',0,'测试测试','测试测试',10),(9,'2016-11-19 15:48:36','实验室管理测试','2019-03-14 15:23:32',0,'实验室管理测试','实验室管理测试',5),(10,'2019-04-17 14:52:54','没有原因','2019-03-14 15:23:32',0,'仪器出了故障','实验室三楼',5),(11,'2019-04-17 14:53:35','学生误操作','2019-04-19 10:45:59',0,'设备坏了','实验室三楼',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'软件工程',0,1,'admin','教务管理员','123789scnu','16252162516','实验室管教1','2019-03-14 15:23:32','软件学院',1,NULL,NULL,NULL,NULL,0,NULL),(4,'2班',0,1,'lmf@scnu','1','123456scnu','17913863545','林勉芬','2019-03-14 15:23:32','软件学院',3,NULL,NULL,NULL,NULL,0,NULL),(6,'2班',0,1,'xjl@scnu','1','123456scnu','17913863545','冼俊琳','2019-03-14 15:23:32','软件学院',3,NULL,NULL,NULL,NULL,0,NULL),(7,'2班',0,1,'pww@scnu','0','123456scnu','0','彭雯雯','2019-03-14 15:23:32','软件学院',3,NULL,NULL,NULL,NULL,0,NULL),(8,'11',0,1,'hwq@scnu','abc','123456scnu','17913863545','黄武秋','2019-03-14 15:23:32','软件学院',2,NULL,NULL,NULL,NULL,0,NULL);
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

-- Dump completed on 2021-02-21 18:07:10
