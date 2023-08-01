/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.5.8-log : Database - adsventure
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`adsventure` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `adsventure`;

/*Table structure for table `addads` */

DROP TABLE IF EXISTS `addads`;

CREATE TABLE `addads` (
  `anid` int(11) NOT NULL AUTO_INCREMENT,
  `print` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `nid` varchar(100) DEFAULT NULL,
  `cid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`anid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `addads` */

LOCK TABLES `addads` WRITE;

insert  into `addads`(`anid`,`print`,`size`,`page`,`type`,`nid`,`cid`) values (6,'Normal Print','Large','0-1','SubTitile','2','2'),(7,'Normal Print','Large','0-1','SubTitile','2','1'),(9,'Color Print','XX-Large','3-4','Main Title','6','2'),(10,'Color Print','Small','5-6','MainTitle','2','6'),(11,'Color Print','XX-Large','4-5','Both','6','1'),(12,'Color Print','X-Large','3-4','MainTitle','8','8');

UNLOCK TABLES;

/*Table structure for table `addrequest` */

DROP TABLE IF EXISTS `addrequest`;

CREATE TABLE `addrequest` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `anid` varchar(200) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `width` varchar(100) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL,
  `break` varchar(100) DEFAULT NULL,
  `line` varchar(100) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `rdate` varchar(300) DEFAULT NULL,
  `lang` varchar(100) DEFAULT NULL,
  `images` blob,
  `newdate` varchar(100) DEFAULT NULL,
  `distr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `addrequest` */

LOCK TABLES `addrequest` WRITE;

insert  into `addrequest`(`rid`,`anid`,`uid`,`width`,`style`,`break`,`line`,`des`,`status`,`rdate`,`lang`,`images`,`newdate`,`distr`) values (3,'6','3','2  px','Times new Roman','2.0','23','newspaper ad - a printed advertisement that is published in a newspaper','yes','10-06-22 05:03:50',NULL,NULL,NULL,NULL),(5,'7','3','7 px','Causual','2.3 inchs','43','Newspaper Advertising Definition: Print ads that run in local or national, daily or weekly news publications','no','10-06-22 05:30:09',NULL,NULL,NULL,NULL),(6,'6','2','3 PX','Times new Roman','2.0 inchs','566','Arvind Kejriwal, commenting on a widely-shared photo of arrested Delhi Minister Satyendar Jain, today said the minister had been taken to hospital yesterday.\r\n\r\n','no','10-06-22 10:27:59',NULL,NULL,NULL,NULL),(7,'7','4','3 PX','Times new Roman','0.2','300','Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that','no','10-06-22 11:10:58',NULL,NULL,NULL,NULL),(8,'9','4','2  px','times new Roman','5','2334','Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that','yes','10-06-22 11:12:07',NULL,NULL,NULL,NULL),(9,'7','','567','657','76','776','yujytu','no','14-07-22 06:35:04',NULL,NULL,NULL,NULL),(17,'9','4','887','78','789','9789','87o9uouy','yes','14-07-22 07:41:59','English','images/fff.PNG','2022-07-29',NULL),(22,'6','4','56','67','67','567','76','no','14-07-22 07:56:25','0','images/a.PNG','0556-07-06',NULL),(23,'9','4','67','65','57','765','5656','no','14-07-22 07:57:32','0','images/a.PNG','0775-05-06',NULL),(24,'9','4','64','56','5645','546','564456','no','14-07-22 07:59:47','English','images/aa.PNG','0054-04-05',NULL),(25,'9','4','4545','3445','4534','45','rfgfdg','no','14-07-22 08:32:30','0','images/aa.PNG','0345-05-04',' ,'),(44,'9','4','45354','4556','5665','56546','Arvind Kejriwal, commenting on a widely-shared photo of arrested Delhi Minister Satyendar Jain, today said the minister had been taken to hospital yesterday.','no','14-07-22 09:18:05','EnglishMalayalam','images/a.PNG','0005-04-05','KannurKasaragodKollam'),(45,'7','4','564','45','56','46','AyexeM A simpler and more correct answer would not be to omit potentially important and related information, but instead to answer the question, as you suggest, but then provide ','no','14-07-22 10:03:44',' , EnglishMalayalamHindi','images/news.jfif','0085-06-05',' , KannurKasaragodKollamKottayamErnakulamIdukki'),(46,'6','4','34','45','54','3','looks that we cannot get the time of the system which is visiting the site except using javascript. For PHP we can set a fixed time zone to get the 5','no','14-07-22 10:05:45','English , Malayalam , Hindi , ','images/news.jfif','2022-07-09','Kannur , Kasaragod , Kollam , Kottayam , '),(47,'9','4','45','34','34','5','4534','yes','14-07-22 10:10:23','English , Malayalam , Hindi , ','images/a.PNG','0004-03-23','Kannur , Kollam , Kottayam , Kozhikode , '),(48,'7','4','78','8','7','7','newly received or noteworthy information, especially about recent events.\r\n','no','14-07-22 10:17:13','English , Malayalam , Hindi , ','images/medication.PNG','2022-07-23','Kannur , Kasaragod , Kollam , '),(49,'12','5','7','4','34','3','fghdfgh','yes','13-07-23 09:20:06','English , Malayalam , ','images/cakes.jpeg','2023-12-16','Kozhikode , Malappuram , Palakkad , ');

UNLOCK TABLES;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(100) DEFAULT NULL,
  `dates` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

LOCK TABLES `category` WRITE;

insert  into `category`(`cid`,`catname`,`dates`,`description`,`image`) values (1,'Sports','2022-06-18','Continue this list with the login screen design example of the most downloaded Android app: Facebook. At the top of the screen, Facebook tries to immediately direct the user towards the appâ€™s goal: connecting with friends by liking, commenting and sharing. This reminds the user of why they downloaded the app',NULL),(2,'Cinema','2022-06-02','Mobile operating system Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets',NULL),(3,'Nevin','2022-07-28','Ernakulam, kochin-4654','images/'),(6,'newuser','2022-07-27','utrtyutu','images/back.PNG'),(7,'Education','2023-03-29','                    fdgdfgdf','images/2.jpg'),(8,'Busniss','2023-08-20','                    it includes all kinds of busm and services for user satisfication','images/bus.jpg');

UNLOCK TABLES;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) DEFAULT NULL,
  `head` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `fdate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

LOCK TABLES `feedback` WRITE;

insert  into `feedback`(`fid`,`uid`,`head`,`description`,`fdate`) values (9,'3','Quality Paper','Continue this list with the login screen design example of the most downloaded Android app: Facebook. At the top of the screen, Facebook tries to immediately direct the user towards the appâ€™s goal: ','10-06-22 09:41:29'),(10,'3','Good Data','Mobile operating system Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as s','10-06-22 09:42:09'),(11,'2','Empty Action','Mobile operating system Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as s','10-06-22 10:58:35'),(12,'4','Provide Good Records','Mobile operating system Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as s','10-06-22 11:11:19'),(13,'4','Quality Paper','Continue this list with the login screen design example of the most downloaded Android app: Facebook. At the top of the screen, Facebook tries to immediately direct the user towards the appâ€™s goal: ','19-07-22 09:26:16');

UNLOCK TABLES;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `l_id` int(20) NOT NULL AUTO_INCREMENT,
  `reg_id` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

LOCK TABLES `login` WRITE;

insert  into `login`(`l_id`,`reg_id`,`email`,`password`,`type`,`status`) values (0,'0','admin@gmail.com','123456','ADMIN','yes'),(8,'2','jenishashanrose@gmail.com','123','USER','yes'),(10,'2','thin@gmail.com','345','NEWS','yes'),(11,'3','nevin@gmail.com','123','USER','yes'),(12,'5','meenu@gmail.com','jhjh','NEWS','yes'),(13,'4','user@gmail.com','123','USER','yes'),(14,'6','com@gmail.com','123','NEWS','yes'),(15,'7','hindu@gmail.com','3545454','NEWS','yes'),(16,'8','mano@gmail.com','788','NEWS','yes'),(17,'5','dona@gmail.com','123','USER','yes');

UNLOCK TABLES;

/*Table structure for table `news_reg` */

DROP TABLE IF EXISTS `news_reg`;

CREATE TABLE `news_reg` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone` varchar(66) NOT NULL,
  `address` varchar(44) NOT NULL,
  `iso` varchar(34) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `news_reg` */

LOCK TABLES `news_reg` WRITE;

insert  into `news_reg`(`nid`,`name`,`email`,`phone`,`address`,`iso`,`pass`,`amount`) values (2,'Thinathandi','thin@gmail.com','9987565345','TamilNadu\r\n','ISO-777HJGHHG','345',NULL),(5,'Meenu','meenu@gmail.com','9090986546','TamilNadu','ISO-777HJGHHG','jhjh',NULL),(6,'newcom','com@gmail.com','6786786587','Kerla','ISO-777HJGHHG','123',NULL),(7,'HinduPaper','hindu@gmail.com','5464756786','234343433545555555555555555553','2022-07-24','3545454','5000'),(8,'Manonrama','mano@gmail.com','6556655656','4577777777998876','2023-11-25','788','5000');

UNLOCK TABLES;

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` varchar(100) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `pdate` varchar(200) NOT NULL,
  `publishdate` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

LOCK TABLES `payment` WRITE;

insert  into `payment`(`pid`,`rid`,`amount`,`pdate`,`publishdate`,`status`) values (1,'3','200','2022-06-15','2022-06-24','yes'),(2,'47','343','2022-12-24','2022-11-30','yes');

UNLOCK TABLES;

/*Table structure for table `replayfeed` */

DROP TABLE IF EXISTS `replayfeed`;

CREATE TABLE `replayfeed` (
  `rfid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(100) DEFAULT NULL,
  `rdate` varchar(200) DEFAULT NULL,
  `replay` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rfid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `replayfeed` */

LOCK TABLES `replayfeed` WRITE;

insert  into `replayfeed`(`rfid`,`fid`,`rdate`,`replay`) values (1,'11','11-06-22 10:57:03','Continue this list with the login screen design example of the most downloaded Android app: Facebook. At the top of the screen, Facebook tries to immediately direct the user towards the appâ€™s goal: ');

UNLOCK TABLES;

/*Table structure for table `user_reg` */

DROP TABLE IF EXISTS `user_reg`;

CREATE TABLE `user_reg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `user_reg` */

LOCK TABLES `user_reg` WRITE;

insert  into `user_reg`(`uid`,`name`,`email`,`address`,`phone`,`password`) values (2,'news_reg','jenishashanrose@gmail.com','utrtyutu','5655654444','yrdtg'),(3,'Nevin','nevin@gmail.com','Ernakulam, kochin-4654','4353645645','123'),(4,'newuser','user@gmail.com','utrtyutu','5655654444','123'),(5,'dona','dona@gmail.com',' dona address','7875665565','123');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
