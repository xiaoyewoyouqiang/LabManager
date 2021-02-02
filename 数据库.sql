/*
SQLyog Ultimate v9.30 
MySQL - 5.5.40 : Database - ll
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`labManager_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `labManager_db`;

/*Table structure for table `t_brand` */

DROP TABLE IF EXISTS `t_brand`;

CREATE TABLE `t_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_893pccjfcvay83qhve9xo2tcm` (`Category_id`) USING BTREE,
  CONSTRAINT `FK_893pccjfcvay83qhve9xo2tcm` FOREIGN KEY (`Category_id`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_brand` */

/*Table structure for table `t_category` */

DROP TABLE IF EXISTS `t_category`;

CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_category` */

/*Table structure for table `t_equipment` */

DROP TABLE IF EXISTS `t_equipment`;

CREATE TABLE `t_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bz` varchar(255) DEFAULT NULL,
  `isBx` int(11) NOT NULL DEFAULT '0',
  `isDelete` int(11) NOT NULL DEFAULT '0',
  `jg` double DEFAULT NULL,
  `sbxlh` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `xh` varchar(255) DEFAULT NULL,
  `zzs` varchar(255) DEFAULT NULL,
  `Laboratory_id` int(11) DEFAULT NULL,
  `fwTime` datetime DEFAULT NULL,
  `ht` varchar(255) DEFAULT NULL,
  `isFw` int(11) NOT NULL DEFAULT '0',
  `photo` varchar(255) DEFAULT NULL,
  `bxLogid` int(11) DEFAULT NULL,
  `isJy` int(11) NOT NULL DEFAULT '0',
  `jyId` int(11) DEFAULT NULL,
  `JyUser_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_4gbru41steogqjjxhx0d8nnci` (`Laboratory_id`) USING BTREE,
  KEY `FK_hklhbo0lr2su1yo1w1ott8d2s` (`JyUser_id`) USING BTREE,
  CONSTRAINT `FK_4gbru41steogqjjxhx0d8nnci` FOREIGN KEY (`Laboratory_id`) REFERENCES `t_laboratory` (`id`),
  CONSTRAINT `FK_hklhbo0lr2su1yo1w1ott8d2s` FOREIGN KEY (`JyUser_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_equipment` */

insert  into `t_equipment`(`id`,`bz`,`isBx`,`isDelete`,`jg`,`sbxlh`,`time`,`xh`,`zzs`,`Laboratory_id`,`fwTime`,`ht`,`isFw`,`photo`,`bxLogid`,`isJy`,`jyId`,`JyUser_id`) values (1,'计算机基础',0,0,3500,'天龙-11',NULL,'电脑','江苏大华',1,'2019-03-14 15:23:32','\\upload\\75b40810ad5f11e6779fd863d0b032aa实时位置和轨迹接口.doc',1,'\\upload\\63cfd790ad6011e6779fd863d0b032aa13.jpg',9,0,9,6),(2,'石墨烯材料探究',0,0,222,'22',NULL,'石墨烯c0','山东',2,'2019-03-14 15:23:32','\\upload\\fe25ef90ae2911e6f233742beffe859a实验室设备管理系统详细功能.docx',1,'\\upload\\20b2c030ad6011e6779fd863d0b032aa9.jpg',7,0,14,1),(3,'33',0,0,33,'33',NULL,'33','33',5,'2019-03-14 15:23:32',NULL,1,'\\upload\\1e96d640ae2a11e6f233742beffe859a9.jpg',NULL,0,12,6),(4,'44',0,0,44,'44',NULL,'44','44',5,'2019-03-14 15:23:32',NULL,1,NULL,NULL,1,16,1),(5,'55',0,0,55,'55',NULL,'55','55',6,'2019-03-14 15:23:32',NULL,1,NULL,NULL,0,13,4),(6,'66',0,0,666,'66',NULL,'666','666',6,'2019-03-14 15:23:32',NULL,0,NULL,NULL,0,NULL,NULL),(7,'77',0,0,77,'77',NULL,'777','77',3,'2019-03-14 15:23:32',NULL,0,NULL,NULL,0,NULL,NULL),(8,'88',0,0,88,'88',NULL,'88','88',4,'2019-03-14 15:23:32',NULL,1,NULL,11,0,NULL,NULL),(9,'99',0,1,99,'99',NULL,'99','99',7,'2019-03-14 15:23:32',NULL,0,NULL,NULL,0,NULL,NULL),(10,'333',0,0,222,'333',NULL,'测试测试','测试测试',9,'2019-03-14 15:23:32',NULL,1,NULL,NULL,0,NULL,NULL),(11,'实验室管理测试',0,0,11,'222',NULL,'实验室管理测试','实验室管理测试',10,'2019-03-14 15:23:32','\\upload\\63ae2510ae2c11e6be0c12c967dbb02e实验室设备管理系统详细功能.docx',1,'\\upload\\7fc8a9f0ae2c11e6be0c12c967dbb02e1.jpg',NULL,0,NULL,NULL);

/*Table structure for table `t_equipmentlog` */

DROP TABLE IF EXISTS `t_equipmentlog`;

CREATE TABLE `t_equipmentlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endTime` datetime DEFAULT NULL,
  `isYy` int(11) NOT NULL DEFAULT '0',
  `qx` tinyblob,
  `time` datetime DEFAULT NULL,
  `user` tinyblob,
  `Equipment_id` int(11) DEFAULT NULL,
  `qx_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_aj076up5mm5gyl3q97bl2if78` (`Equipment_id`) USING BTREE,
  KEY `FK_a4m6nesgv6t398u3r2dd2o0w0` (`qx_id`) USING BTREE,
  KEY `FK_lmr7ywifxyrrkc3xj24hm8l6f` (`user_id`) USING BTREE,
  CONSTRAINT `FK_a4m6nesgv6t398u3r2dd2o0w0` FOREIGN KEY (`qx_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_aj076up5mm5gyl3q97bl2if78` FOREIGN KEY (`Equipment_id`) REFERENCES `t_equipment` (`id`),
  CONSTRAINT `FK_lmr7ywifxyrrkc3xj24hm8l6f` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_equipmentlog` */

insert  into `t_equipmentlog`(`id`,`endTime`,`isYy`,`qx`,`time`,`user`,`Equipment_id`,`qx_id`,`user_id`) values (6,'2016-11-19 11:55:38',0,NULL,'2019-03-14 15:23:32',NULL,1,1,1),(7,'2016-11-19 11:56:02',0,NULL,'2019-03-14 15:23:32',NULL,1,7,7),(8,'2016-11-19 11:58:11',0,NULL,'2019-03-14 15:23:32',NULL,1,1,1),(9,'2019-04-19 10:41:49',0,NULL,'2019-03-14 15:23:32',NULL,1,6,6),(10,'2016-11-19 15:32:57',0,NULL,'2019-03-14 15:23:32',NULL,4,4,4),(11,'2016-11-19 15:48:57',0,NULL,'2019-03-14 15:23:32',NULL,2,1,1),(12,'2019-04-19 10:41:33',0,NULL,'2019-03-14 15:23:32',NULL,3,6,6),(13,'2019-04-19 10:43:14',0,NULL,'2019-04-17 14:40:33',NULL,5,4,4),(14,'2019-04-17 14:55:39',0,NULL,'2019-04-17 14:55:04',NULL,2,1,1),(15,'2019-04-19 10:40:46',0,NULL,'2019-04-19 10:40:10',NULL,4,1,1),(16,NULL,0,NULL,'2019-07-11 18:27:10',NULL,4,NULL,1);

/*Table structure for table `t_introduction` */

DROP TABLE IF EXISTS `t_introduction`;

CREATE TABLE `t_introduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gg` varchar(255) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_introduction` */

/*Table structure for table `t_laboratory` */

DROP TABLE IF EXISTS `t_laboratory`;

CREATE TABLE `t_laboratory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `fzr` varchar(255) DEFAULT NULL,
  `fzrDh` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL DEFAULT '0',
  `isYy` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `laboratoryLogId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_oiwbrfnohrp1gwe00ly8rb5vg` (`user_id`) USING BTREE,
  CONSTRAINT `FK_oiwbrfnohrp1gwe00ly8rb5vg` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_laboratory` */

insert  into `t_laboratory`(`id`,`address`,`bz`,`fzr`,`fzrDh`,`isDelete`,`isYy`,`name`,`time`,`user_id`,`laboratoryLogId`) values (1,'勤学楼三楼','需要携带个人笔记本电脑，实验书','张老师','14223412432',0,1,'实验室1','2019-03-14 15:23:32',6,13),(2,'奋斗楼二楼','需要携带。。。','李老师','13232355241',0,1,'实验室2','2019-03-14 15:23:32',1,14),(3,'3','3','张老师','14222213321',0,1,'实验室3','2019-03-14 15:23:32',6,19),(4,'4','4','李白老师','14452213321',0,1,'实验室4','2019-03-14 15:23:32',1,16),(5,'555','555','555','555',0,0,'实验室5','2019-03-14 15:23:32',NULL,NULL),(6,'6','6','6','6',0,0,'9999','2019-03-14 15:23:32',NULL,NULL),(7,'aaa','aaa','aa','aa',1,0,'hhhh','2019-03-14 15:23:32',NULL,NULL),(8,NULL,'',NULL,NULL,1,0,NULL,'2019-03-14 15:23:32',NULL,NULL),(9,'测试测试','测试测试','测试测试','11111111111',0,0,'测试测试','2019-03-14 15:23:32',NULL,NULL),(10,'实验室管理测试','实验室管理测试','实验室管理测试','11111111111',0,0,'实验室管理测试','2019-03-14 15:23:32',NULL,15),(11,'明日之星科技有限公司','腾讯课堂学习',NULL,'学习开发',0,1,'爱写代码','2019-07-11 18:26:22',1,17);

/*Table structure for table `t_laboratorylog` */

DROP TABLE IF EXISTS `t_laboratorylog`;

CREATE TABLE `t_laboratorylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isYy` int(11) NOT NULL DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `laboratory_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `userQx_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_bflao1s1awsf0h4jtycc2xgky` (`laboratory_id`) USING BTREE,
  KEY `FK_of6onusgky4n43a3fjpjvd1xf` (`user_id`) USING BTREE,
  KEY `FK_1v21erw5dwhs38nqj5h452fpa` (`userQx_id`) USING BTREE,
  CONSTRAINT `FK_1v21erw5dwhs38nqj5h452fpa` FOREIGN KEY (`userQx_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_bflao1s1awsf0h4jtycc2xgky` FOREIGN KEY (`laboratory_id`) REFERENCES `t_laboratory` (`id`),
  CONSTRAINT `FK_of6onusgky4n43a3fjpjvd1xf` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_laboratorylog` */

insert  into `t_laboratorylog`(`id`,`isYy`,`time`,`laboratory_id`,`user_id`,`endTime`,`userQx_id`) values (7,0,'2019-03-14 15:23:32',1,1,'2019-03-14 15:23:32',1),(8,0,'2019-03-14 15:23:32',1,1,'2019-03-14 15:23:32',1),(9,0,'2019-03-14 15:23:32',1,1,'2019-03-14 15:23:32',7),(10,0,'2019-03-14 15:23:32',1,1,'2019-03-14 15:23:32',1),(11,0,'2019-03-14 15:23:32',1,1,'2019-03-14 15:23:32',1),(12,0,'2019-03-14 15:23:32',2,6,'2019-03-14 15:23:32',6),(13,0,'2019-03-14 15:23:32',1,6,'2019-03-14 15:23:32',NULL),(14,0,'2019-03-14 15:23:32',2,1,'2019-03-14 15:23:32',NULL),(15,0,'2019-03-14 15:23:32',10,6,'2019-03-14 15:23:32',6),(16,0,'2019-04-18 10:13:00',4,1,NULL,NULL),(17,0,'2019-07-11 18:28:53',11,1,NULL,NULL),(18,0,'2019-11-06 23:10:05',3,6,NULL,NULL),(19,0,'2019-11-06 23:10:06',3,6,NULL,NULL);

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(255) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `User_Fsr` int(11) DEFAULT NULL,
  `User_Jsr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_oa4mv5qj0sqj0we556035uujp` (`User_Fsr`) USING BTREE,
  KEY `FK_f8e6w63qcqq7ovck9p24tarfn` (`User_Jsr`) USING BTREE,
  CONSTRAINT `FK_f8e6w63qcqq7ovck9p24tarfn` FOREIGN KEY (`User_Jsr`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_oa4mv5qj0sqj0we556035uujp` FOREIGN KEY (`User_Fsr`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_message` */

/*Table structure for table `t_notice` */

DROP TABLE IF EXISTS `t_notice`;

CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isDelete` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `nr` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_notice` */

insert  into `t_notice`(`id`,`isDelete`,`name`,`nr`,`time`) values (1,0,'最新通告','教学楼2楼实验室关闭。','2019-04-15 10:18:48');

/*Table structure for table `t_photo` */

DROP TABLE IF EXISTS `t_photo`;

CREATE TABLE `t_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `fileName1` varchar(255) DEFAULT NULL,
  `fileName2` varchar(255) DEFAULT NULL,
  `fileName3` varchar(255) DEFAULT NULL,
  `fileName4` varchar(255) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `jg` double NOT NULL,
  `js` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_auktpin78v83k3m853icf84pc` (`brand_id`) USING BTREE,
  KEY `FK_2d9pnn6ktk352aa8dc7fjqgfv` (`category_id`) USING BTREE,
  KEY `FK_pk1m1dnqq1ehyv197nf76moa3` (`user_id`) USING BTREE,
  CONSTRAINT `FK_2d9pnn6ktk352aa8dc7fjqgfv` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`id`),
  CONSTRAINT `FK_auktpin78v83k3m853icf84pc` FOREIGN KEY (`brand_id`) REFERENCES `t_brand` (`id`),
  CONSTRAINT `FK_pk1m1dnqq1ehyv197nf76moa3` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_photo` */

/*Table structure for table `t_purchase` */

DROP TABLE IF EXISTS `t_purchase`;

CREATE TABLE `t_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `money` double NOT NULL,
  `price` double NOT NULL,
  `time` datetime DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_mk4hqspsn92mxmjoqydy99pla` (`photo_id`) USING BTREE,
  KEY `FK_207dkr7b4an3av28b483722kt` (`user_id`) USING BTREE,
  CONSTRAINT `FK_207dkr7b4an3av28b483722kt` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_mk4hqspsn92mxmjoqydy99pla` FOREIGN KEY (`photo_id`) REFERENCES `t_photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_purchase` */

/*Table structure for table `t_repairlog` */

DROP TABLE IF EXISTS `t_repairlog`;

CREATE TABLE `t_repairlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bxTime` datetime DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `isDelete` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `wz` varchar(255) DEFAULT NULL,
  `Equipment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_awqus26wjn9jwoqdgkpqascpt` (`Equipment_id`) USING BTREE,
  CONSTRAINT `FK_awqus26wjn9jwoqdgkpqascpt` FOREIGN KEY (`Equipment_id`) REFERENCES `t_equipment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_repairlog` */

insert  into `t_repairlog`(`id`,`bxTime`,`bz`,`endTime`,`isDelete`,`title`,`wz`,`Equipment_id`) values (5,'2016-11-18 15:59:09','33','2019-03-14 15:23:32',0,'33','33',1),(6,'2016-11-18 16:33:40','测试','2019-03-14 15:23:32',0,'测试','测试',1),(7,'2016-11-18 16:36:00','33','2019-03-14 15:23:32',0,'33','33',1),(8,'2016-11-19 15:32:15','测试测试','2019-03-14 15:23:32',0,'测试测试','测试测试',10),(9,'2016-11-19 15:48:36','实验室管理测试','2019-03-14 15:23:32',0,'实验室管理测试','实验室管理测试',5),(10,'2019-04-17 14:52:54','没有原因','2019-03-14 15:23:32',0,'仪器出了故障','实验室三楼',5),(11,'2019-04-17 14:53:35','学生误操作','2019-04-19 10:45:59',0,'设备坏了','实验室三楼',8);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`enName`,`name`) values (1,'admin','管理员'),(2,'js','教师'),(3,'xs','学生');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bj` varchar(255) DEFAULT NULL,
  `isDelete` int(11) NOT NULL DEFAULT '0',
  `isSh` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `xy` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  `fzr` varchar(255) DEFAULT NULL,
  `fzrDh` varchar(255) DEFAULT NULL,
  `isYy` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_2qjfg4ive1qmy8ev91c0mwvlm` (`role_id`) USING BTREE,
  KEY `FK_1mede137ulc3ntvt2xkxpt7sd` (`user_id`) USING BTREE,
  CONSTRAINT `FK_1mede137ulc3ntvt2xkxpt7sd` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_2qjfg4ive1qmy8ev91c0mwvlm` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`bj`,`isDelete`,`isSh`,`name`,`number`,`pass`,`phone`,`realName`,`time`,`xy`,`role_id`,`address`,`bz`,`fzr`,`fzrDh`,`isYy`,`user_id`) values (1,'三系',0,1,'admin','教务管理员','123456','16252162516','实验室管教1','2019-03-14 15:23:32','***学院',1,NULL,NULL,NULL,NULL,0,NULL),(4,'111',0,1,'xs','1','222222','17913863545','学生11','2019-03-14 15:23:32','审计学院',3,NULL,NULL,NULL,NULL,0,NULL),(6,'11',0,1,'js','1','111111','17913863545','教师','2019-03-14 15:23:32','1',2,NULL,NULL,NULL,NULL,0,NULL),(7,'0',0,1,'admin1','0','111111','0','管理员2','2019-03-14 15:23:32',NULL,1,NULL,NULL,NULL,NULL,0,NULL),(8,'11',0,1,'abc','abc','111111','17913863545','abc','2019-03-14 15:23:32','11',3,NULL,NULL,NULL,NULL,0,NULL),(9,'3',0,1,'liudecheng','23900','1','15262829925','柳德成','2019-04-18 10:14:47','审计学院',3,NULL,NULL,NULL,NULL,0,NULL),(10,'3',0,0,'miaomiao','2017031213','234','15262829923','喵喵','2019-04-18 10:16:04','审计学院',3,NULL,NULL,NULL,NULL,0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
