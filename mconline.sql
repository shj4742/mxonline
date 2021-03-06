-- MySQL dump 10.13  Distrib 5.7.17, for Win32 (AMD64)
--
-- Host: localhost    Database: mconline
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(14,'Can view group',3,'view_group'),(15,'Can view permission',2,'view_permission'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Bookmark',7,'add_bookmark'),(26,'Can change Bookmark',7,'change_bookmark'),(27,'Can delete Bookmark',7,'delete_bookmark'),(28,'Can add User Setting',8,'add_usersettings'),(29,'Can change User Setting',8,'change_usersettings'),(30,'Can delete User Setting',8,'delete_usersettings'),(31,'Can add User Widget',9,'add_userwidget'),(32,'Can change User Widget',9,'change_userwidget'),(33,'Can delete User Widget',9,'delete_userwidget'),(34,'Can add log entry',10,'add_log'),(35,'Can change log entry',10,'change_log'),(36,'Can delete log entry',10,'delete_log'),(37,'Can view Bookmark',7,'view_bookmark'),(38,'Can view log entry',10,'view_log'),(39,'Can view User Setting',8,'view_usersettings'),(40,'Can view User Widget',9,'view_userwidget'),(41,'Can add 鐢ㄦ埛淇℃伅',11,'add_userprofile'),(42,'Can change 鐢ㄦ埛淇℃伅',11,'change_userprofile'),(43,'Can delete 鐢ㄦ埛淇℃伅',11,'delete_userprofile'),(44,'Can add 閭楠岃瘉鐮?,12,'add_emailverifyrecord'),(45,'Can change 閭楠岃瘉鐮?,12,'change_emailverifyrecord'),(46,'Can delete 閭楠岃瘉鐮?,12,'delete_emailverifyrecord'),(47,'Can add 杞挱鍥?,13,'add_banner'),(48,'Can change 杞挱鍥?,13,'change_banner'),(49,'Can delete 杞挱鍥?,13,'delete_banner'),(50,'Can view 杞挱鍥?,13,'view_banner'),(51,'Can view 閭楠岃瘉鐮?,12,'view_emailverifyrecord'),(52,'Can view 鐢ㄦ埛淇℃伅',11,'view_userprofile'),(53,'Can add 璇剧▼',14,'add_course'),(54,'Can change 璇剧▼',14,'change_course'),(55,'Can delete 璇剧▼',14,'delete_course'),(56,'Can add 瑙嗛',15,'add_lesson'),(57,'Can change 瑙嗛',15,'change_lesson'),(58,'Can delete 瑙嗛',15,'delete_lesson'),(59,'Can add 瑙嗛',16,'add_video'),(60,'Can change 瑙嗛',16,'change_video'),(61,'Can delete 瑙嗛',16,'delete_video'),(62,'Can add 璇剧▼璧勬簮',17,'add_courseresource'),(63,'Can change 璇剧▼璧勬簮',17,'change_courseresource'),(64,'Can delete 璇剧▼璧勬簮',17,'delete_courseresource'),(65,'Can view 璇剧▼',14,'view_course'),(66,'Can view 璇剧▼璧勬簮',17,'view_courseresource'),(67,'Can view 瑙嗛',15,'view_lesson'),(68,'Can view 瑙嗛',16,'view_video'),(69,'Can add 鐢ㄦ埛鍜ㄨ',18,'add_userask'),(70,'Can change 鐢ㄦ埛鍜ㄨ',18,'change_userask'),(71,'Can delete 鐢ㄦ埛鍜ㄨ',18,'delete_userask'),(72,'Can add 璇剧▼璇勮',19,'add_coursecomments'),(73,'Can change 璇剧▼璇勮',19,'change_coursecomments'),(74,'Can delete 璇剧▼璇勮',19,'delete_coursecomments'),(75,'Can add 鐢ㄦ埛鏀惰棌',20,'add_userfavorite'),(76,'Can change 鐢ㄦ埛鏀惰棌',20,'change_userfavorite'),(77,'Can delete 鐢ㄦ埛鏀惰棌',20,'delete_userfavorite'),(78,'Can add 鐢ㄦ埛娑堟伅',21,'add_usermessage'),(79,'Can change 鐢ㄦ埛娑堟伅',21,'change_usermessage'),(80,'Can delete 鐢ㄦ埛娑堟伅',21,'delete_usermessage'),(81,'Can add 鐢ㄦ埛璇剧▼',22,'add_usercourse'),(82,'Can change 鐢ㄦ埛璇剧▼',22,'change_usercourse'),(83,'Can delete 鐢ㄦ埛璇剧▼',22,'delete_usercourse'),(84,'Can view 璇剧▼璇勮',19,'view_coursecomments'),(85,'Can view 鐢ㄦ埛鍜ㄨ',18,'view_userask'),(86,'Can view 鐢ㄦ埛璇剧▼',22,'view_usercourse'),(87,'Can view 鐢ㄦ埛鏀惰棌',20,'view_userfavorite'),(88,'Can view 鐢ㄦ埛娑堟伅',21,'view_usermessage'),(89,'Can add 鍩庡競',23,'add_citydict'),(90,'Can change 鍩庡競',23,'change_citydict'),(91,'Can delete 鍩庡競',23,'delete_citydict'),(92,'Can add 鏈烘瀯鍚嶇О',24,'add_courseorg'),(93,'Can change 鏈烘瀯鍚嶇О',24,'change_courseorg'),(94,'Can delete 鏈烘瀯鍚嶇О',24,'delete_courseorg'),(95,'Can add 鏁欏笀',25,'add_teacher'),(96,'Can change 鏁欏笀',25,'change_teacher'),(97,'Can delete 鏁欏笀',25,'delete_teacher'),(98,'Can view 鍩庡競',23,'view_citydict'),(99,'Can view 鏈烘瀯鍚嶇О',24,'view_courseorg'),(100,'Can view 鏁欏笀',25,'view_teacher'),(101,'Can add captcha store',26,'add_captchastore'),(102,'Can change captcha store',26,'change_captchastore'),(103,'Can delete captcha store',26,'delete_captchastore'),(104,'Can view captcha store',26,'view_captchastore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$FUXrRjqfEVdo$i0oftWD4XQParQqM0ANiesvTMaIljvR2bBdAu2lHJWo=','2018-06-09 14:15:09.267000',1,'admin','','','123@123.com',1,1,'2018-06-09 14:14:56.059000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (24,'UJGA','ujga','bc76db655d4690874a1dbd6e162c61d067dd2017','2018-06-17 15:47:17.821000'),(25,'AYGL','aygl','268340077cbb49c449078074487c8ee06fe3e9ca','2018-06-17 15:48:17.433000'),(27,'IHBV','ihbv','a4b012359d67ceca90dbb4b4d25a1f8799666f2f','2018-06-17 15:52:23.368000'),(28,'NXIU','nxiu','ec1a0aef0c61c7fbc56feda8dddaaa6a095ef358','2018-06-17 16:04:04.460000');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(20) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11),
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'鍗曠墖鏈哄叆闂?,'鍗曠墖鏈哄揩閫熷叆闂?,'鍗曠墖鏈鸿绋嬫槸鎴戦櫌鏈虹數涓€浣撳寲鎶€鏈笓涓氱殑鏍稿績璇剧▼锛屾槸涓轰粠浜嬫満鐢典骇鍝佺殑鐢熶骇浼佷笟鍩瑰吇鍏锋湁鍗曠墖鏈哄簲鐢ㄤ骇鍝佽璁°€佸垎鏋愩€佽皟璇曘€佸埗浣溿€佸畨瑁呬笌缁存姢鑳藉姏鐨勫疄璺靛瀷浜烘墠','cj',0,0,0,'courses/2018/06/mcu.jpg',0,'2018-06-21 16:40:00.000000',7),(2,'浼犳劅鍣ㄩ€夊瀷鍙婂畨瑁?,'鏈绋嬫槸鏈虹數涓€浣撳寲鎶€鏈笓涓氱殑涓€闂ㄦ牳蹇冭绋嬶紝灞炰簬涓撲笟蹇呬慨璇俱€?,'鏈绋嬫槸鏈虹數涓€浣撳寲鎶€鏈笓涓氱殑涓€闂ㄦ牳蹇冭绋嬶紝灞炰簬涓撲笟蹇呬慨璇俱€?,'cj',0,0,0,'courses/2018/06/chuanganqi.jpg',0,'2018-06-21 16:45:00.000000',7),(3,'鏈烘鍒跺浘','瀹冩槸鏈烘鍒堕€犲強鍏惰嚜鍔ㄥ寲銆佹ā鍏疯璁°€佹暟鎺ф妧鏈€佹満鐢典竴浣撳寲绛変笓涓氱殑鏍稿績璇剧▼涔嬩竴','銆婃満姊板埗鍥俱€嬭绋嬪湪楂樿亴楂樹笓闄㈡牎鏈虹被涓撲笟涓紝鍧囧畾浣嶄负鎶€鏈熀纭€璇撅紝鏄竴闂ㄩ噸瑕佺殑蹇呬慨璇俱€傚畠鏄満姊板埗閫犲強鍏惰嚜鍔ㄥ寲銆佹ā鍏疯璁°€佹暟鎺ф妧鏈€佹満鐢典竴浣撳寲绛変笓涓氱殑鏍稿績璇剧▼涔嬩竴','cj',0,0,0,'courses/2018/06/jixiezhitu.jpg',0,'2018-06-21 16:46:00.000000',7),(4,'python鍩虹','Python寮曞鍏ラ棬','1.鎺屾彙璁＄畻鏈虹殑鏋勬垚鍜屽伐浣滃師鐞哱r\n2.浼氫娇鐢↙inux甯哥敤宸ュ叿 \r\n3.鐔熺粌浣跨敤Docker鐨勫熀鏈懡浠?\r\n4.寤虹珛Python寮€鍙戠幆澧冿紝骞朵娇鐢╬rint杈撳嚭 \r\n5.浣跨敤Python瀹屾垚瀛楃涓茬殑鍚勭鎿嶄綔 \r\n6.浣跨敤Python re妯″潡杩涜绋嬪簭璁捐\r\n7.浣跨敤Python鍒涘缓鏂囦欢銆佽闂€佸垹闄ゆ枃浠?\r\n8.鎺屾彙import 璇彞銆丗rom鈥mport 璇彞銆丗rom鈥mport* 璇彞銆佹柟娉曠殑寮曠敤銆丳ython涓殑鍖?,'cj',0,0,0,'courses/2018/06/python.jpg',0,'2018-06-21 16:50:00.000000',2),(5,'django web鍏ラ棬','Python涓嬫湁璁稿娆句笉鍚岀殑 Web 妗嗘灦銆侱jango鏄噸閲忕骇閫夋墜涓渶鏈変唬琛ㄦ€х殑涓€浣嶃€傝澶氭垚鍔熺殑缃戠珯鍜孉PP閮藉熀浜嶥jango銆?,'ython涓嬫湁璁稿娆句笉鍚岀殑 Web 妗嗘灦銆侱jango鏄噸閲忕骇閫夋墜涓渶鏈変唬琛ㄦ€х殑涓€浣嶃€傝澶氭垚鍔熺殑缃戠珯鍜孉PP閮藉熀浜嶥jango銆俓r\n\r\nDjango鏄竴涓紑鏀炬簮浠ｇ爜鐨刉eb搴旂敤妗嗘灦锛岀敱Python鍐欐垚銆俓r\n\r\nDjango閬靛畧BSD鐗堟潈锛屽垵娆″彂甯冧簬2005骞?鏈? 骞朵簬2008骞?鏈堝彂甯冧簡绗竴涓寮忕増鏈?.0 銆俓r\n\r\nDjango閲囩敤浜哅VC鐨勮蒋浠惰璁℃ā寮忥紝鍗虫ā鍨婱锛岃鍥綱鍜屾帶鍒跺櫒C銆?,'cj',0,0,0,'courses/2018/06/djangoweb.jpg',0,'2018-06-21 16:53:00.000000',2),(6,'django web妗嗘灦','鏈暀绋嬮€傚悎鏈塒ython鍩虹鐨勫紑鍙戣€呭涔犮€?,'1銆佸彲鏍规嵁浜у搧鍘熷瀷鍥撅紝寮€鍙慦eb缃戠珯鐨勫墠绔晫闈紱\r\n2銆佸彲鏍规嵁涓氬姟娴佺▼鍥撅紝寮€鍙慦eb缃戠珯鐨勫悗鍙颁笟鍔★紱\r\n3銆佸彲鏍规嵁Web妗嗘灦璁捐锛屽紑鍙戝搴旂殑鏁版嵁搴擄紱\r\n4銆佺紦瀛樻湇鍔″櫒鐨勬搷浣滃拰璁捐锛沑r\n5銆佸紓姝ヤ换鍔＄殑瀹炵幇銆?,'zj',0,0,0,'courses/2018/06/django.jpg',0,'2018-06-21 16:54:00.000000',1);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_courseresource`
--

DROP TABLE IF EXISTS `courses_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_courseresource`
--

LOCK TABLES `courses_courseresource` WRITE;
/*!40000 ALTER TABLE `courses_courseresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_video`
--

DROP TABLE IF EXISTS `courses_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_video`
--

LOCK TABLES `courses_video` WRITE;
/*!40000 ALTER TABLE `courses_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(26,'captcha','captchastore'),(5,'contenttypes','contenttype'),(14,'courses','course'),(17,'courses','courseresource'),(15,'courses','lesson'),(16,'courses','video'),(19,'operation','coursecomments'),(18,'operation','userask'),(22,'operation','usercourse'),(20,'operation','userfavorite'),(21,'operation','usermessage'),(23,'organization','citydict'),(24,'organization','courseorg'),(25,'organization','teacher'),(6,'sessions','session'),(13,'users','banner'),(12,'users','emailverifyrecord'),(11,'users','userprofile'),(7,'xadmin','bookmark'),(10,'xadmin','log'),(8,'xadmin','usersettings'),(9,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-06-09 14:10:15.607000'),(2,'auth','0001_initial','2018-06-09 14:10:24.731000'),(3,'admin','0001_initial','2018-06-09 14:10:27.000000'),(4,'admin','0002_logentry_remove_auto_add','2018-06-09 14:10:27.179000'),(5,'contenttypes','0002_remove_content_type_name','2018-06-09 14:10:28.223000'),(6,'auth','0002_alter_permission_name_max_length','2018-06-09 14:10:29.009000'),(7,'auth','0003_alter_user_email_max_length','2018-06-09 14:10:30.026000'),(8,'auth','0004_alter_user_username_opts','2018-06-09 14:10:30.091000'),(9,'auth','0005_alter_user_last_login_null','2018-06-09 14:10:30.730000'),(10,'auth','0006_require_contenttypes_0002','2018-06-09 14:10:30.758000'),(11,'auth','0007_alter_validators_add_error_messages','2018-06-09 14:10:30.802000'),(12,'sessions','0001_initial','2018-06-09 14:10:31.365000'),(13,'xadmin','0001_initial','2018-06-09 14:10:39.583000'),(14,'xadmin','0002_log','2018-06-09 14:10:42.225000'),(15,'xadmin','0003_auto_20160715_0100','2018-06-09 14:10:43.286000'),(16,'users','0001_initial','2018-06-09 15:54:28.643000'),(17,'courses','0001_initial','2018-06-09 15:54:33.428000'),(18,'operation','0001_initial','2018-06-09 15:54:36.636000'),(19,'operation','0002_auto_20180609_1554','2018-06-09 15:54:47.947000'),(20,'organization','0001_initial','2018-06-09 15:54:52.277000'),(21,'users','0002_auto_20180612_1133','2018-06-12 11:33:28.933000'),(22,'users','0003_auto_20180612_1140','2018-06-12 11:40:42.792000'),(23,'captcha','0001_initial','2018-06-12 15:07:18.473000'),(24,'users','0004_emailverifyrecord_is_rcode','2018-06-17 15:57:52.804000'),(25,'organization','0002_courseorg_add_time','2018-06-17 16:48:56.422000'),(26,'organization','0003_courseorg_catgory','2018-06-17 17:40:10.586000'),(27,'organization','0004_auto_20180620_1606','2018-06-20 16:06:47.999000'),(28,'organization','0005_auto_20180621_1331','2018-06-21 13:31:47.355000'),(29,'courses','0002_course_course_org','2018-06-21 16:40:48.076000'),(30,'organization','0006_teacher_image','2018-06-21 17:55:36.601000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0e45q51qynnc74dnbf5qxkax0ddxdpdg','ZTEzOTU4Njc5OTg5YTM3MzEwZmI1ODZiYzZkZGQ5ZWRhNjRmZjliMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJiMjQyZmQxZGQ0Mzk2Y2NjOWE4YzQ2MGJiNGUzYjhjMDcyYzZiMmQ1IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2018-07-05 16:56:38.370000'),('4tsv47pnpoi7p0sjch2fp7y6p73ha3dv','YzhkYTc5YjE3ZWNlYWZiNDBhYmIzYzhiYmEyMWIwZTk5MjJiZjQ2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJlbWFpbHZlcmlmeXJlY29yZCJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiYjI0MmZkMWRkNDM5NmNjYzlhOGM0NjBiYjRlM2I4YzA3MmM2YjJkNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==','2018-07-03 11:05:58.305000'),('nqtdroslldl9v12549f5mdb2s0ed0pct','ZTFmYjUzNzhlOTY4ODBkNjJlYTk2NTRjYzg1MWNiMDE5YjI3YmRlNDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk5NDI1YjQ3MzlmZTRjOGQxNWQ2ODc4YzJlOGIwZGQ4Nzk5ODU3NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExIn0=','2018-07-01 15:47:01.351000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_ea134da7` (`course_id`),
  KEY `operation_coursecomments_e8701ad4` (`user_id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
INSERT INTO `operation_userask` VALUES (1,'shiji','13254987640','django','2018-06-21 15:38:25.226000'),(2,'test','13739784742','django','2018-06-21 16:11:38.195000'),(3,'鍖椾含','13739784742','鍒嗗叕鍙哥瓟澶?,'2018-06-21 16:11:53.050000'),(4,'浣庡姛鑰?,'18332826203','鏀惧埌','2018-06-21 16:12:28.543000'),(5,'test','13739784742','娌欏彂','2018-06-21 16:13:02.378000');
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_ea134da7` (`course_id`),
  KEY `operation_usercourse_e8701ad4` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_course_id_3f140ade_fk_courses_course_id` (`course_id`),
  KEY `operation_userfavorite_e8701ad4` (`user_id`),
  CONSTRAINT `operation_userfavorite_course_id_3f140ade_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'鍖椾含','甯濋兘 瓒呭ぇ鍩庡競','2018-06-17 16:36:00.000000'),(2,'澶╂触','瓒呭ぇ鍩庡競','2018-06-17 16:37:00.000000'),(3,'涓婃捣甯?,'瓒呭ぇ鍩庡競','2018-06-17 16:41:00.000000'),(4,'娌堥槼甯?,'瓒呭ぇ鍩庡競','2018-06-17 16:42:00.000000'),(5,'闀挎槬','瓒呭ぇ鍩庡競','2018-06-17 16:42:00.000000'),(6,'鍝堝皵婊?,'瓒呭ぇ鍩庡競','2018-06-17 16:42:00.000000'),(7,'鍗椾含','瓒呭ぇ鍩庡競','2018-06-17 16:42:00.000000'),(8,'姝︽眽','瓒呭ぇ鍩庡競','2018-06-17 16:42:00.000000'),(9,'骞垮窞','瓒呭ぇ鍩庡競','2018-06-17 16:43:00.000000'),(10,'閲嶅簡','瓒呭ぇ鍩庡競','2018-06-17 16:43:00.000000'),(11,'鎴愰兘','瓒呭ぇ鍩庡競','2018-06-17 16:43:00.000000'),(12,'瑗垮畨','瓒呭ぇ鍩庡競','2018-06-17 16:43:00.000000'),(13,'鐭冲搴?,'鐗瑰ぇ鍩庡競','2018-06-17 16:43:00.000000'),(14,'鍞愬北','鐗瑰ぇ鍩庡競','2018-06-17 16:43:00.000000'),(15,'澶師','瓒呭ぇ鍩庡競','2018-06-17 16:43:00.000000'),(16,'鍖呭ご','瓒呭ぇ鍩庡競','2018-06-17 16:44:00.000000'),(17,'澶ц繛','鐗瑰ぇ鍩庡競','2018-06-17 16:44:00.000000'),(18,'闉嶅北','鐗瑰ぇ鍩庡競','2018-06-17 16:44:00.000000'),(19,'鎶氶『','鐗瑰ぇ鍩庡競','2018-06-17 16:44:00.000000'),(20,'鍚夋灄','鐗瑰ぇ鍩庡競','2018-06-17 16:44:00.000000'),(21,'淇濆畾','澶у煄甯?,'2018-06-17 16:45:00.000000'),(22,'寮犲鍙?,'澶у煄甯?,'2018-06-17 16:45:00.000000'),(23,'鏄嗘槑','鐗瑰ぇ鍩庡競','2018-06-17 16:45:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (1,'鍏勫紵杩炴暀鑲?,'鍏勫紵杩炴暀鑲诧紙浠ヤ笅绠€绉板厔寮熻繛锛夋槸鏄撶浼橈紙鍖椾含锛夋暀鑲插挩璇㈣偂浠芥湁闄愬叕鍙告棗涓嬪搧鐗岋紝鑷村姏浜庨珮绱犺川杞欢寮€鍙戜汉鎵嶇殑鍩硅涓庡煿鍏汇€傚叕鍙告垚绔嬩簬2007骞达紝鎬婚儴璁惧湪鍖椾含锛岀洰鍓嶅凡鍦ㄤ笂娴枫€佸箍宸炪€佹繁鍦炽€侀儜宸炪€佹矆闃炽€佹垚閮姐€佸崡浜€佹澀宸炪€佺煶瀹跺簞銆佸崡鏄岀瓑鍩庡競璁剧珛浜嗘暀瀛︿腑蹇冿紝涓氬姟鑼冨洿瑕嗙洊鍏ㄥ浗銆?016骞?鏈堣幏寰楀崕鍥炬暀鑲?.25浜垮厓鎶曡祫锛屽悓骞?鏈堟寕鐗屾柊涓夋澘銆?,0,0,'org/2018/06/xiongdilian_logo.png','鍖椾含甯傛槍骞冲尯鍥為緳瑙傛枃鍗庤タ璺偛鑽ｆ暀鑲插洯鍖篖AMP鍏勫紵杩炴ゼ',1,'2018-06-17 16:49:00.000000','pxjg',0,0),(2,'杈惧唴鏃朵唬绉戞妧闆嗗洟鏈夐檺鍏徃','鏈夊ぇ鏁版嵁linux python 浜у搧缁忕悊銆乯ava銆乁I銆乸hp,,杞欢娴嬭瘯锛?G-Android锛屽奖瑙嗭紝3G-IOS,鏁版嵁鍒嗘瀽锛屽祵鍏ュ紡銆丆++銆佺綉缁滃伐绋嬨€?NET銆佺綉缁滆惀閿€銆佷細璁°€乁3D銆乄eb',0,0,'org/2018/06/danei_logo_CQmqSJs.png','鍖椾含甯傛捣娣€鍖哄ぇ閽熷涓紟澶у帵B搴?-8灞?,1,'2018-06-17 16:53:00.000000','pxjg',0,0),(3,'鍖椾含甯傛捣娣€鍖洪潚楦熶俊鎭妧鏈亴涓氭妧鑳藉煿璁鏍?,'涓撲笟閮芥槸闈㈠悜灏变笟鐨勶紝鐜板湪灏变笟鍜岃柂璧勬瘮杈冨ソ鐨勮蒋浠跺紑鍙戙€佺綉缁滃伐绋?銆佽璁＄被銆佽惀閿€绫汇€佽绠楁満绫汇€佸畨鍗撶瓑閮芥槸姣旇緝鐑棬鐨勩€?,0,0,'org/2018/06/beidaqingniao_logo_xQkdiTN.png','鍖椾含甯傛捣娣€鍖洪潚楦熶俊鎭妧鏈亴涓氭妧鑳藉煿璁鏍?,1,'2018-06-17 16:57:00.000000','pxjg',0,0),(4,'骞垮窞灏忕爜鍝ユ暀鑲茬鎶€鏈夐檺鍏徃','骞垮窞灏忕爜鍝ユ暀鑲茬鎶€鏈夐檺鍏徃锛屾槸涓€瀹朵笓娉ㄤ簬鍩瑰吇楂樼骇IT鎶€鏈汉鎵嶏紝涓哄鍛樻彁渚涘畾鍒跺寲IT鑱屼笟瑙勫垝鏂规鍙婃剰瑙佸挩璇㈡湇鍔＄殑鏁欒偛绉戞妧鍏徃銆傜鐫€鈥滃叏蹇冨叏鎰忎负瀛﹀憳鏈嶅姟锛岃璁ょ湡鐪熷仛濂芥暀鑲插伐浣滐紝鍑′簨澶氬仛涓€鐐癸紝鍒お璁¤緝寰楀け鈥濈殑浼佷笟鏂囧寲锛岀珛蹇楁墦閫犱竴涓暀瀛︿笓涓氬苟绱ц窡褰撲笅娴佽鍓嶆部鎶€鏈紝璁╁鍛樹繚鎸佸己鏈夊姏鐨勬牳蹇冪珵浜夊姏銆佸湪浼佷笟涓叿鏈夌湡姝ｅ疄鎴樿兘鍔涳紝璁╂洿澶氭湁姊︽兂鐨勫勾杞讳汉瀛﹀埌瀹炲疄鍦ㄥ湪鏈変环鍊肩殑鐭ヨ瘑锛岃鐭ヨ瘑鐪熸鏀瑰彉鍛借繍鐨処T鍩硅鍝佺墝銆?,0,0,'org/2018/06/xiaomage_logo.png','骞垮窞甯傚ぉ娌冲尯妫犱笅娑屼笢璺ぇ鍦板伐涓氬尯D鏍嬪洓妤?,9,'2018-06-17 17:02:00.000000','pxjg',0,0),(5,'鎴愰兘婧愪唬鐮佹暀鑲插挩璇㈡湁闄愬叕鍙?,'婧愮爜鏃朵唬涓撴敞浜巎ava銆丳HP銆乽i璁捐銆亀eb鍓嶇/H5绛夋柟闈汉鎵嶅煿鍏?,0,0,'org/2018/06/yunmashidai_logo_PfI0WeI.png','鎴愰兘甯傞珮鏂板尯搴滃煄澶ч亾瑗挎399鍙峰ぉ搴滄柊璋?鍙锋ゼ6F / 028-86261949',11,'2018-06-17 17:05:00.000000','pxjg',0,0),(6,'娴嬭瘯','娴嬭瘯娴嬭瘯娴嬭瘯',0,0,'org/2018/06/test5.jpg','娌冲寳鐪佹檵宸炲競',13,'2018-06-17 17:34:00.000000','gr',0,0),(7,'鐭冲搴勮亴涓氭妧鏈闄㈢綉缁滄暀鑲插闄?,'鐭冲搴勮亴涓氭妧鏈闄紙鍘熺煶瀹跺簞澶у锛夊垱寤轰簬1984骞达紝鏄粡鍥藉鏁欒偛閮ㄦ壒鍑嗐€佺煶瀹跺簞甯傛斂搴滀富鍔炵殑涓€鎵€鍏ㄦ棩鍒舵櫘閫氶珮绛夐櫌鏍★紱鏄渤鍖楃渷閲嶇偣寤鸿鐨勭ず鑼冩€ч珮鑱岄櫌鏍?鏄浗瀹剁浜屾壒鐜颁唬瀛﹀緬鍒惰瘯鐐瑰崟浣嶃€?005骞撮€氳繃鏁欒偛閮ㄩ珮鑱岄珮涓撲汉鎵嶅煿鍏绘按骞宠瘎浼帮紝鑾峰緱浼樼銆?013骞磋崳鑾封€滅渷浼氬钩瀹夐珮鏍″缓璁惧厛杩涘崟浣嶁€濆拰鈥滃叏鍥借亴涓氶櫌鏍￠瓍鍔涙牎鍥€濄€?016骞村叆閫夆€滃浗瀹剁骇浼樿川楂樼瓑鑱屼笟闄㈡牎寤鸿绔嬮」鍗曚綅鈥濄€傚湪涓浗绉戝璇勪环鐮旂┒涓績绛夐儴闂ㄨ仈鍚堝彂甯冪殑2017骞翠腑鍥介珮鑱岄珮涓撻櫌鏍＄珵浜夊姏鎺掕姒滀笂浣嶅垪鍏ㄥ浗绗?3浣嶏紝鍏ㄧ渷绗?浣嶃€?,0,0,'org/2018/06/shijiazhuang_logo_6NV2Xcr.png','娌冲寳鐪佺煶瀹跺簞甯傞暱鍏磋12鍙?,13,'2018-06-17 17:42:00.000000','gx',0,0),(8,'瑗垮畨鐢靛瓙绉戞妧澶у缃戠粶缁х画鏁欒偛瀛﹂櫌','瑗垮畨鐢靛瓙绉戞妧澶у鏄互淇℃伅涓庣數瀛愬绉戜负涓伙紝宸ャ€佺悊銆佺銆佹枃澶氬绉戝崗璋冨彂灞曠殑鍏ㄥ浗閲嶇偣澶у锛岀洿灞炴暀鑲查儴锛屾槸鍥藉鈥滀紭鍔垮绉戝垱鏂板钩鍙扳€濋」鐩拰鈥?11宸ョ▼鈥濋」鐩噸鐐瑰缓璁鹃珮鏍′箣涓€銆佸浗瀹跺弻鍒涚ず鑼冨熀鍦颁箣涓€銆侀鎵?5鎵€绀鸿寖鎬ц蒋浠跺闄€侀鎵?鎵€绀鸿寖鎬у井鐢靛瓙瀛﹂櫌銆侀鎵?鎵€鑾锋壒璁剧珛闆嗘垚鐢佃矾浜烘墠鍩瑰吇鍩哄湴鍜岄鎵逛竴娴佺綉缁滃畨鍏ㄥ闄㈠缓璁剧ず鑼冮」鐩殑楂樻牎涔嬩竴銆?,0,0,'org/2018/06/xidian_logo_w0wXB6Q.png','闄曡タ鐪佽タ瀹夊競澶櫧鍗楄矾2鍙?,12,'2018-06-17 17:45:00.000000','gx',0,0),(9,'娓呭崕澶у','涓嶇敤浠嬬粛浜嗗惂',0,0,'org/2018/06/qinghua_logo.png','鍖椾含甯傛捣娣€鍖烘竻鍗庡ぇ瀛?,1,'2018-06-17 17:52:00.000000','gx',0,0),(10,'鐗规娴嬭瘯','娴嬭瘯',0,0,'org/2018/06/test5_XszRm0u.jpg','娌冲寳鐪佹檵宸炲競',21,'2018-06-17 17:53:00.000000','gr',0,0),(11,'test','闃胯惃寰峰彂鐨勫彂鐢熷湴鏂箂ad鍣舵槸鐨勯樋钀ㄥ痉鍣舵槸鐨勯樋钀ㄥ痉鍣舵槸鐨勫櫠鍗佸涓猘sdgags',0,0,'org/2018/06/test5_vd7hxeb.jpg','娌冲寳鐪佹檵宸炲競',13,'2018-06-17 17:54:00.000000','gr',0,0);
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100),
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'寮犱簹瀵?,'1979骞?1鏈堝嚭鐢燂紝璁插笀\r\n\r\n2003骞?鏈堟湰绉戞瘯涓氫簬娌冲寳鐞嗗伐瀛﹂櫌娴嬫帶鎶€鏈笌浠櫒涓撲笟銆俓r\n\r\n2003骞?鏈堣嚦浠婂湪鐭冲搴勮亴涓氭妧鏈闄㈡満鐢靛伐绋嬬郴浠庝簨鏁欏宸ヤ綔锛岀幇涓烘満鐢靛伐绋嬬郴鏈虹數涓€浣撳寲涓撲笟缇や笓浠绘暀甯堛€俓r\n\r\n2008骞村彇寰楃嚂灞卞ぇ瀛﹀伐瀛︾澹浣嶃€?,15,'鐭冲搴勮亴涓氭妧鏈闄?,'璁插笀','姘旀皼娲昏穬锛屼汉姘旈珮',0,0,'2018-06-21 16:19:00.000000',7,NULL),(2,'寮犵鑹?,'1999骞?鏈堟瘯涓氫簬鑻忓窞澶у鏈烘璁捐涓庡埗閫犱笓涓氾紝骞跺彇寰楀伐瀛﹀澹浣嶃€俓r\n\r\n1999.7~2000.9浠昏亴浜庤嫃宸炲競涓幆闆嗗洟鏈夐檺鍏徃锛岃礋璐ｄ骇鍝佹祴缁樸€佺紪鎺掔敓浜ц鍒掋€佷粨搴撶鐞嗗強璐ㄩ噺绠＄悊銆俓r\n\r\n2000.9~2004.2浠昏亴浜庤嫃宸炲お骞虫磱姹借溅淇濅慨璁惧寮€鍙戝叕鍙革紝璐熻矗浜у搧鐮斿彂鍜岃川閲忕鐞嗭紝骞剁洿鎺ヨ礋璐SO9000锛?000鐨勫疄鏂藉拰绠＄悊銆俓r\n\r\n2004.2~2004.8浠昏亴浜庣煶瀹跺簞甯傜涓€寤虹瓚闆嗗洟鍏徃璁惧绉戯紝鎷呬换宸ョ▼甯堛€俓r\n\r\n2004骞?鏈堣皟鍏ユ湰鏍℃媴浠昏緟瀵煎憳涓€鑱屻€?,14,'鐭冲搴勮亴涓氭妧鏈闄?,'杈呭鍛?,'骞介粯',0,0,'2018-06-21 16:26:00.000000',7,NULL),(3,'鍐崕','9骞?鐨?宓?鍏?寮?绯?缁?杞?浠?寮€ 鍙?銆佽皟 璇?缁?楠岋紝4骞?鐨?宓?鍏?寮?杞?浠?寮€ 鍙?鏁?瀛?缁?楠岋紝鏇?浠?璇?浜?鑸?绉?鎶€ 鏈?闄愬叕鍙搁珮绾ц蒋浠跺伐绋嬪笀锛屽箍閾堕€氶泦鍥㈤珮绾ч」鐩粡 鐞嗐€傛巿璇惧瘜鏈夋縺鎯呫€佽矗浠诲績寮猴紝浠ュ疄璺典负瀵煎悜锛屽惎 鍙戝鐢熸€濊€冦€?,0,'杈惧唴鏃朵唬绉戞妧闆嗗洟鏈夐檺鍏徃','鎬荤洃','璐ｄ换蹇冨己锛?鍚彂瀛︾敓鎬濊€?,0,0,'2018-06-21 16:29:00.000000',2,NULL),(4,'娓告垚浼?,'鏉ヨ嚜澶у攼鐢典俊 宓屽叆寮忓簲鐢ㄤ笓瀹?,12,'杈惧唴鏃朵唬绉戞妧闆嗗洟鏈夐檺鍏徃','璁插笀','姘旀皼娲昏穬锛屼汉姘旈珮',0,0,'2018-06-21 16:32:00.000000',2,NULL),(5,'鏉ㄣ€€鍋?,'鏉ヨ嚜涓蒋 C++搴旂敤涓撳',8,'杈惧唴鏃朵唬绉戞妧闆嗗洟鏈夐檺鍏徃','璁插笀','骞介粯',0,0,'2018-06-21 16:32:00.000000',2,NULL),(6,'榛?鍑?,'澶氬勾绉诲姩浜掕仈缃戝紑鍙戠粡楠岋紝绮鹃€欰ndroid涓巌OS寮€鍙戯紝瀵笿avaEE绛夊悗鍙版妧鏈篃鏈夋墍鐮旂┒銆傚挨鍏剁簿閫欰ndroid骞冲彴鐨勫紑鍙戯紝瀵笰ndroid骞冲彴涓嬬殑鎬ц兘浼樺寲鏈夋瀬鍏朵赴瀵岀殑缁忛獙銆?,8,'骞垮窞灏忕爜鍝ユ暀鑲茬鎶€鏈夐檺鍏徃','楂樼骇璁插笀','姘旀皼娲昏穬锛屼汉姘旈珮',0,0,'2018-06-21 16:33:00.000000',4,NULL),(7,'闊╁宄?,'澶氬勾瀹炴垬宸ヤ綔缁忛獙鏇惧弬涓庡埗浣滃疂椹琔sage Training椤圭洰銆丏MS椤圭洰锛屽ゥ杩叏鎭姇褰遍」鐩紝濂旈┌绛夊瀹舵苯杞﹂棬鎴疯涓氬ぇ鍨嬮」鐩紝璐熻矗UI璁捐銆佺晫闈㈣璁°€?D妯″瀷鍒朵綔銆佸墠绔紑鍙戠瓑鑱屽姟銆?,6,'骞垮窞灏忕爜鍝ユ暀鑲茬鎶€鏈夐檺鍏徃','楂樼骇璁插笀','姘旀皼娲昏穬锛屼汉姘旈珮',0,0,'2018-06-21 16:34:00.000000',4,NULL),(8,'甯堢ǚ','绯荤粺寮€鍙戣€?,4,'鐗规寮€鍙?,'鐮斿彂宸ョ▼甯?,'璐ｄ换蹇冨己',0,0,'2018-06-21 16:35:00.000000',10,NULL),(9,'寮犺礉璐?,'鍢垮樋 鎴戞噦灏卞ソ',6,'瀹夊浗甯傚尰闄?,'浣忛櫌鍖诲笀','璐ｄ换蹇冨己',0,0,'2018-06-21 16:36:00.000000',10,NULL);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  `is_rcode` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (1,'EYX4Gc7B4ErGMQa0','541002174@qq.com','register','2018-06-13 09:02:06.117000',0),(2,'ycmiY9SAhBQZtPWw','541002174@qq.com','register','2018-06-13 09:06:53.466000',0),(3,'NL4UPRTpqfaFiHF9','541002174@qq.com','register','2018-06-13 09:36:24.788000',0),(4,'UBJb7A28TdbrHszA','541002174@qq.com','register','2018-06-17 11:56:08.401000',0),(5,'9TOBM4HSD6W6Oeju','541002174@qq.com','forget','2018-06-17 15:43:44.435000',1);
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(13) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$24000$G3ZQ2W8bGnHZ$kv6xnStUrom2w7sRAGmcQF5A+vCE13MdJ96F1SHYlus=','2018-06-20 16:40:01.332000',1,'admin','','','123@123.com',1,1,'2018-06-09 15:56:00.000000','绠＄悊鍛?,NULL,'male','娌冲寳鐪佹檵宸炲競','','images/2018/06/companylogo.jpg'),(2,'pbkdf2_sha256$24000$NlySNx5ny0f4$HdVDfH78WeFlGZUEYW678JiZ7K5IFJTZv9IulcVaYlw=','2018-06-12 11:44:20.685000',0,'13739784742','甯?,'绋?,'shj4742@126.com',0,1,'2018-06-12 10:42:00.000000','璐濆笀涓滃幓','1991-05-02','male','娌冲寳鐪佹檵宸炲競','13739784742','images/2018/06/aobama.png'),(11,'pbkdf2_sha256$24000$TEihpIY9u2xA$80D32kCBeYCJ+jrhWCCqLmY/8H4LLPKtuQ+MbrReWbo=','2018-06-19 11:03:33.282000',0,'541002174@qq.com','','','541002174@qq.com',0,1,'2018-06-17 11:56:08.310000','',NULL,'female','',NULL,'images/default.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2018-06-12 10:42:47.372000','127.0.0.1','2','13739784742','create','宸叉坊鍔?,11,1),(2,'2018-06-12 11:28:58.993000','127.0.0.1','2','13739784742','change','宸蹭慨鏀?last_login锛宖irst_name锛宭ast_name锛宔mail锛宯ick_name锛宐irthday锛実ender锛宎ddress锛宮obile 鍜?image 銆?,11,1),(3,'2018-06-12 11:41:02.753000','127.0.0.1','2','13739784742','change','宸蹭慨鏀?last_login 鍜?image 銆?,11,1),(4,'2018-06-12 11:41:42.108000','127.0.0.1','1','admin','change','宸蹭慨鏀?last_login锛宯ick_name锛実ender锛宎ddress 鍜?image 銆?,11,1),(5,'2018-06-13 09:34:34.399000','127.0.0.1',NULL,'','delete','鎵归噺鍒犻櫎 2 涓?鐢ㄦ埛淇℃伅',NULL,1),(6,'2018-06-17 11:55:38.340000','127.0.0.1',NULL,'','delete','鎵归噺鍒犻櫎 1 涓?鐢ㄦ埛淇℃伅',NULL,1),(7,'2018-06-17 16:37:33.117000','127.0.0.1','1','鍖椾含','create','宸叉坊鍔?,23,1),(8,'2018-06-17 16:41:58.195000','127.0.0.1','2','澶╂触','create','宸叉坊鍔?,23,1),(9,'2018-06-17 16:42:21.583000','127.0.0.1','3','涓婃捣甯?,'create','宸叉坊鍔?,23,1),(10,'2018-06-17 16:42:33.374000','127.0.0.1','4','娌堥槼甯?,'create','宸叉坊鍔?,23,1),(11,'2018-06-17 16:42:41.655000','127.0.0.1','5','闀挎槬','create','宸叉坊鍔?,23,1),(12,'2018-06-17 16:42:52.221000','127.0.0.1','6','鍝堝皵婊?,'create','宸叉坊鍔?,23,1),(13,'2018-06-17 16:42:58.355000','127.0.0.1','7','鍗椾含','create','宸叉坊鍔?,23,1),(14,'2018-06-17 16:43:05.164000','127.0.0.1','8','姝︽眽','create','宸叉坊鍔?,23,1),(15,'2018-06-17 16:43:15.763000','127.0.0.1','9','骞垮窞','create','宸叉坊鍔?,23,1),(16,'2018-06-17 16:43:23.948000','127.0.0.1','10','閲嶅簡','create','宸叉坊鍔?,23,1),(17,'2018-06-17 16:43:29.970000','127.0.0.1','11','鎴愰兘','create','宸叉坊鍔?,23,1),(18,'2018-06-17 16:43:36.986000','127.0.0.1','12','瑗垮畨','create','宸叉坊鍔?,23,1),(19,'2018-06-17 16:43:50.152000','127.0.0.1','13','鐭冲搴?,'create','宸叉坊鍔?,23,1),(20,'2018-06-17 16:43:57.635000','127.0.0.1','14','鍞愬北','create','宸叉坊鍔?,23,1),(21,'2018-06-17 16:44:10.892000','127.0.0.1','15','澶師','create','宸叉坊鍔?,23,1),(22,'2018-06-17 16:44:17.653000','127.0.0.1','16','鍖呭ご','create','宸叉坊鍔?,23,1),(23,'2018-06-17 16:44:30.861000','127.0.0.1','17','澶ц繛','create','宸叉坊鍔?,23,1),(24,'2018-06-17 16:44:44.748000','127.0.0.1','18','闉嶅北','create','宸叉坊鍔?,23,1),(25,'2018-06-17 16:44:57.958000','127.0.0.1','19','鎶氶『','create','宸叉坊鍔?,23,1),(26,'2018-06-17 16:45:25.067000','127.0.0.1','20','鍚夋灄','create','宸叉坊鍔?,23,1),(27,'2018-06-17 16:45:36.915000','127.0.0.1','21','淇濆畾','create','宸叉坊鍔?,23,1),(28,'2018-06-17 16:45:43.639000','127.0.0.1','22','寮犲鍙?,'create','宸叉坊鍔?,23,1),(29,'2018-06-17 16:45:59.094000','127.0.0.1','23','鏄嗘槑','create','宸叉坊鍔?,23,1),(30,'2018-06-17 16:53:41.371000','127.0.0.1','1','鍏勫紵杩炴暀鑲?,'create','宸叉坊鍔?,24,1),(31,'2018-06-17 16:57:59.075000','127.0.0.1','2','杈惧唴鏃朵唬绉戞妧闆嗗洟鏈夐檺鍏徃','create','宸叉坊鍔?,24,1),(32,'2018-06-17 17:00:30.359000','127.0.0.1','3','鍖椾含甯傛捣娣€鍖洪潚楦熶俊鎭妧鏈亴涓氭妧鑳藉煿璁鏍?,'create','宸叉坊鍔?,24,1),(33,'2018-06-17 17:04:50.960000','127.0.0.1','4','骞垮窞灏忕爜鍝ユ暀鑲茬鎶€鏈夐檺鍏徃','create','宸叉坊鍔?,24,1),(34,'2018-06-17 17:09:27.599000','127.0.0.1','5','鎴愰兘婧愪唬鐮佹暀鑲插挩璇㈡湁闄愬叕鍙?,'create','宸叉坊鍔?,24,1),(35,'2018-06-17 17:34:59.915000','127.0.0.1','6','娴嬭瘯','create','宸叉坊鍔?,24,1),(36,'2018-06-17 17:42:13.992000','127.0.0.1','6','娴嬭瘯','change','宸蹭慨鏀?catgory 銆?,24,1),(37,'2018-06-17 17:45:16.988000','127.0.0.1','7','鐭冲搴勮亴涓氭妧鏈闄㈢綉缁滄暀鑲插闄?,'create','宸叉坊鍔?,24,1),(38,'2018-06-17 17:47:45.324000','127.0.0.1','8','瑗垮畨鐢靛瓙绉戞妧澶у缃戠粶缁х画鏁欒偛瀛﹂櫌','create','宸叉坊鍔?,24,1),(39,'2018-06-17 17:53:23.075000','127.0.0.1','9','娓呭崕澶у','create','宸叉坊鍔?,24,1),(40,'2018-06-17 17:53:37.826000','127.0.0.1','9','娓呭崕澶у','change','娌℃湁瀛楁琚慨鏀广€?,24,1),(41,'2018-06-17 17:54:11.439000','127.0.0.1','10','鐗规娴嬭瘯','create','宸叉坊鍔?,24,1),(42,'2018-06-17 17:54:47.895000','127.0.0.1','11','test','create','宸叉坊鍔?,24,1),(43,'2018-06-20 16:40:50.078000','127.0.0.1','8','瑗垮畨鐢靛瓙绉戞妧澶у缃戠粶缁х画鏁欒偛瀛﹂櫌','change','宸蹭慨鏀?image 銆?,24,1),(44,'2018-06-20 16:40:59.924000','127.0.0.1','7','鐭冲搴勮亴涓氭妧鏈闄㈢綉缁滄暀鑲插闄?,'change','宸蹭慨鏀?image 銆?,24,1),(45,'2018-06-20 16:41:16.116000','127.0.0.1','5','鎴愰兘婧愪唬鐮佹暀鑲插挩璇㈡湁闄愬叕鍙?,'change','宸蹭慨鏀?image 銆?,24,1),(46,'2018-06-20 16:41:49.531000','127.0.0.1','3','鍖椾含甯傛捣娣€鍖洪潚楦熶俊鎭妧鏈亴涓氭妧鑳藉煿璁鏍?,'change','宸蹭慨鏀?image 銆?,24,1),(47,'2018-06-20 16:42:13.490000','127.0.0.1','2','杈惧唴鏃朵唬绉戞妧闆嗗洟鏈夐檺鍏徃','change','宸蹭慨鏀?image 銆?,24,1),(48,'2018-06-21 16:26:11.618000','127.0.0.1','1','寮犱簹瀵?,'create','宸叉坊鍔?,25,1),(49,'2018-06-21 16:27:40.462000','127.0.0.1','2','寮犵鑹?,'create','宸叉坊鍔?,25,1),(50,'2018-06-21 16:31:01.958000','127.0.0.1','3','鍐崕','create','宸叉坊鍔?,25,1),(51,'2018-06-21 16:32:25.537000','127.0.0.1','4','娓告垚浼?,'create','宸叉坊鍔?,25,1),(52,'2018-06-21 16:32:57.043000','127.0.0.1','5','鏉ㄣ€€鍋?,'create','宸叉坊鍔?,25,1),(53,'2018-06-21 16:34:43.571000','127.0.0.1','6','榛?鍑?,'create','宸叉坊鍔?,25,1),(54,'2018-06-21 16:35:29.910000','127.0.0.1','7','闊╁宄?,'create','宸叉坊鍔?,25,1),(55,'2018-06-21 16:36:25.156000','127.0.0.1','8','甯堢ǚ','create','宸叉坊鍔?,25,1),(56,'2018-06-21 16:37:05.003000','127.0.0.1','9','寮犺礉璐?,'create','宸叉坊鍔?,25,1),(57,'2018-06-21 16:44:04.081000','127.0.0.1','1','鍗曠墖鏈哄叆闂?,'create','宸叉坊鍔?,14,1),(58,'2018-06-21 16:46:31.113000','127.0.0.1','2','浼犳劅鍣ㄩ€夊瀷鍙婂畨瑁?,'create','宸叉坊鍔?,14,1),(59,'2018-06-21 16:48:25.466000','127.0.0.1','3','鏈烘鍒跺浘','create','宸叉坊鍔?,14,1),(60,'2018-06-21 16:53:48.191000','127.0.0.1','4','python鍩虹','create','宸叉坊鍔?,14,1),(61,'2018-06-21 16:54:49.347000','127.0.0.1','5','django web鍏ラ棬','create','宸叉坊鍔?,14,1),(62,'2018-06-21 16:56:38.106000','127.0.0.1','6','django web妗嗘灦','create','宸叉坊鍔?,14,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','/static/xadmin/css/themes/bootstrap-xadmin.css',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 18:09:16
