-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_member','Can add member'),(26,7,'change_member','Can change member'),(27,7,'delete_member','Can delete member'),(28,7,'view_member','Can view member'),(29,8,'add_comment','Can add comment'),(30,8,'change_comment','Can change comment'),(31,8,'delete_comment','Can delete comment'),(32,8,'view_comment','Can view comment'),(33,9,'add_filter','Can add filter'),(34,9,'change_filter','Can change filter'),(35,9,'delete_filter','Can delete filter'),(36,9,'view_filter','Can view filter'),(37,10,'add_file','Can add file'),(38,10,'change_file','Can change file'),(39,10,'delete_file','Can delete file'),(40,10,'view_file','Can view file');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$rNOiE6Cnb5EeIuNlZ8Luhk$Z86tqK/tSVpmsDkWVWRiXzTlHX4GuIfgnbAEH0Di/6E=','2023-09-07',1,'dotienduc113','','',1,1,'',''),(2,'pbkdf2_sha256$600000$lwLQnZKlP7I8TDveej4xGZ$vjlKtw+n/KXHXYAfGlasGhYp3VU8Ycy4yt77DPGdoTg=','2023-08-22',0,'john','','',0,1,'',''),(3,'pbkdf2_sha256$600000$VqhadTlLkS3U5ZyHyNpMTS$E6QHRG7UHIgD8wnhTBluvyA8RQ8wBneCR9a2TYzHn3c=','2023-09-07',0,'mary','','',0,1,'2023-08-22',''),(4,'pbkdf2_sha256$600000$Ndh34ulLB1w8uEHykcqA4G$9aoJAuUgjYNACvNPL4FQI/ece6DT6yh9+b/jqGCB5Ws=','',0,'dotienduc456','','',0,1,'2023-08-22',''),(6,'pbkdf2_sha256$600000$OYzbKzAn5yBsc5y7xWHnPD$LHBvyb0jzcFk+vZoeMFIZnZb5dJ15Dnrc+XuaStIVA0=','',0,'namcuong','','',0,1,'2023-08-22',''),(7,'pbkdf2_sha256$600000$4QLdDxnOonQgI0EPleUj0j$0UYLpUhew5sPWz+oD+mVF5f3pgXf418uV/dMPjjXulE=','',0,'dennis','','',0,1,'2023-08-22',''),(8,'pbkdf2_sha256$600000$cDCtWto4p7TAAEiPTPWy5t$VhJOOI35TWmVNozUNRAbUNAgSUNSl7xWaANkBG4FX10=','',0,'dotienduc134','','',0,1,'2023-08-22',''),(9,'pbkdf2_sha256$600000$y54E8ZRtjHdVN695RP2NV9$fNOY0OmhU9MWVk2qu/dLeZ9yAAhVi1q1SF/q28/WuWY=','',0,'dotienduc654','','',0,1,'2023-08-22',''),(10,'pbkdf2_sha256$600000$7AB9GTvIk8Bvycw9wSkXrn$ys3eopvQLXdHEScMkTXkmBXP0pdg6AUaWNblgcsp7ps=','2023-08-22',0,'dotienduc458','','',0,1,'2023-08-22',''),(11,'pbkdf2_sha256$600000$tnLkH8dLYKPyHsxXkoAAjS$FX8saxWbR8N3xYICHDuGlxGTZdl29hE8Mu1zEtOKNuI=','2023-08-23',0,'hello','','',0,1,'2023-08-23',''),(12,'pbkdf2_sha256$600000$igbIA4X0mKiYlsDUmrk6BV$JFR/H8jzDx8TMga8Sxak86DVT20tN6L2QIcYlKMTOoY=','',0,'nhnhnhnh','','',0,1,'2023-08-23',''),(13,'pbkdf2_sha256$600000$4l96wIezmJlBIObAvnrxrp$H3j9OoMqhDyA94FohCueG2EG5vwrN7ANVAQGCIg2d3s=','',0,'nabdsn','','',0,1,'2023-08-23','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(19) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(63) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,6,'Member object (6)',1,'[{\"added\": {}}]',7,1,'2023-08-22'),(2,6,'Member object (6)',2,'[]',7,1,'2023-08-22'),(3,2,'john',1,'[{\"added\": {}}]',4,1,'2023-08-22'),(4,2,'john',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1,'2023-08-22'),(5,2,'john',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1,'2023-08-22'),(6,3,'mary',1,'[{\"added\": {}}]',4,1,'2023-08-22'),(7,1,'Comment object (1)',1,'[{\"added\": {}}]',8,1,'2023-08-23'),(8,1,'Comment object (1)',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',8,1,'2023-08-23'),(9,2,'Comment object (2)',1,'[{\"added\": {}}]',8,1,'2023-08-23'),(10,3,'Comment object (3)',3,'',8,1,'2023-08-23'),(11,1,'Comment object (1)',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',8,1,'2023-08-23'),(12,2,'Comment object (2)',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',8,1,'2023-08-23'),(13,4,'Comment object (4)',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',8,1,'2023-08-23'),(14,5,'Comment object (5)',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',8,1,'2023-08-23'),(15,6,'Comment object (6)',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',8,1,'2023-08-23'),(16,7,'Comment object (7)',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',8,1,'2023-08-23'),(17,1,'dotienduc113',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1,'2023-08-24'),(18,16,'hello12345',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1,'2023-08-25'),(19,21,'Comment object (21)',3,'',8,1,'2023-08-29'),(20,20,'Comment object (20)',3,'',8,1,'2023-08-29'),(21,19,'Comment object (19)',2,'[]',8,1,'2023-08-29'),(22,22,'Comment object (22)',3,'',8,1,'2023-08-29'),(23,23,'Comment object (23)',3,'',8,1,'2023-08-29'),(24,24,'Comment object (24)',3,'',8,1,'2023-08-29'),(25,25,'Comment object (25)',3,'',8,1,'2023-08-29'),(26,27,'Comment object (27)',3,'',8,1,'2023-08-29'),(27,26,'Comment object (26)',3,'',8,1,'2023-08-29'),(28,28,'Comment object (28)',3,'',8,1,'2023-08-29'),(29,17,'testadmin',1,'[{\"added\": {}}]',4,1,'2023-09-07'),(30,17,'testadmin',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1,'2023-09-07');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'members','comment'),(10,'members','file'),(9,'members','filter'),(7,'members','member'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-21'),(2,'auth','0001_initial','2023-08-21'),(3,'admin','0001_initial','2023-08-21'),(4,'admin','0002_logentry_remove_auto_add','2023-08-21'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-21'),(6,'contenttypes','0002_remove_content_type_name','2023-08-21'),(7,'auth','0002_alter_permission_name_max_length','2023-08-21'),(8,'auth','0003_alter_user_email_max_length','2023-08-21'),(9,'auth','0004_alter_user_username_opts','2023-08-21'),(10,'auth','0005_alter_user_last_login_null','2023-08-21'),(11,'auth','0006_require_contenttypes_0002','2023-08-21'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-21'),(13,'auth','0008_alter_user_username_max_length','2023-08-21'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-21'),(15,'auth','0010_alter_group_name_max_length','2023-08-21'),(16,'auth','0011_update_proxy_permissions','2023-08-21'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-21'),(18,'sessions','0001_initial','2023-08-21'),(19,'members','0001_initial','2023-08-21'),(20,'members','0002_member_joined_date_member_phone','2023-08-21'),(21,'members','0003_remove_member_joined_date_remove_member_phone','2023-08-21'),(22,'members','0004_member_joined_date_member_phone','2023-08-21'),(23,'members','0005_comment','2023-08-23'),(24,'members','0006_comment_name_alter_comment_body','2023-08-23'),(25,'members','0007_comment_number','2023-08-23'),(26,'members','0008_filter','2023-08-24'),(27,'members','0009_filter_number','2023-08-24'),(28,'members','0010_file','2023-08-26'),(29,'members','0011_alter_file_file','2023-08-26'),(30,'members','0012_remove_file_u_id_file_date','2023-08-26'),(31,'members','0013_alter_file_file','2023-08-29');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(228) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cck2uypuxgo1r430tpujzyy572yxctw0','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qYRZ8:78yyoBIzUOyWI8GVWWua_JP5KYlvetJ0ZVPa52omouc','2023-09-05'),('9kh8fmq2g5tmcqt9m68nnyf5lwfoy98o','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qYSZ4:9O2ojIdh8kHuOGYo_LPAmzHKzN7gm74pzYbqi_EpLaM','2023-09-05'),('olu4gz0hhna8ifas10pqocq4ycnt1dty','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qYTB9:YpMmUGoEKK6dLAQWegltNabYEmEEMvV97gt5nkE786Y','2023-09-05'),('oi02ofea9e6fdlt81pgsc6z88mykcpj2','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qYfGb:y2Dx1yFnSLGa4Yx1DtN3wWS19kiHFhovllYi5zFLU4o','2023-09-06'),('ei6hkjwy7zuw4lmqxhs23mbyebgat694','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qatYf:8RtN4NiHBa6XIz7dA-ERaX3X1aQtGJqd5Y6LwnLNSPc','2023-09-12'),('xk69oasapxxsnq2k91m2u8bgcksv1dog','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qeEuT:PHfmYRGfj6sEE1aI4sbML-0N9XypOdPra3_agmJRyQc','2023-09-21'),('fgjz01vn6y4l33lynici3kc8pdv50pqy','.eJxVjMsOwiAQRf-FtSHQ4VFcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3xoRKMQzODCkZj57AF2bjKAATFraAqRiCoDGMjpXNGYtF8MFpPbJ4fwAIKji8:1qeF5I:ZU0377y0bzbw5EyQcFpF37sTW_NNri5DmbvVSXoxqss','2023-09-21');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_comment`
--

DROP TABLE IF EXISTS `members_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_comment` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(12) DEFAULT NULL,
  `body` text,
  `number` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_comment`
--

LOCK TABLES `members_comment` WRITE;
/*!40000 ALTER TABLE `members_comment` DISABLE KEYS */;
INSERT INTO `members_comment` VALUES (1,'dotienduc113','hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test.','1'),(2,'mary','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised','1'),(4,'dotienduc113','aduhauihsdauisdiu','1'),(5,'mary','haksdjanachuiuiajda','1'),(6,'thang','hhajbgysacuiasjkbuiasui\r\nadasdasad','1'),(7,'thang','Now is the winter of our discontent\r\nMade glorious summer by this sun of York;\r\nAnd all the clouds that lour\'d upon our house\r\nIn the deep bosom of the ocean buried.\r\nNow are our brows bound with victorious wreaths;\r\nOur bruised arms hung up for monuments;\r\nOur stern alarums changed to merry meetings,\r\nOur dreadful marches to delightful measures.\r\nGrim-visaged war hath smooth\'d his wrinkled front;\r\nAnd now, instead of mounting barded steeds\r\nTo fright the souls of fearful adversaries,\r\nHe capers nimbly in a lady\'s chamber\r\nTo the lascivious pleasing of a lute.\r\nBut I, that am not shaped for sportive tricks,\r\nNor made to court an amorous looking-glass;\r\nI, that am rudely stamp\'d, and want love\'s majesty\r\nTo strut before a wanton ambling nymph;\r\nI, that am curtail\'d of this fair proportion,','1'),(8,'dotienduc113','hello this is a test 2\r\ni asb uhasjkmn','2'),(9,'dotienduc113','this aisn a test no 3\r\najsjk \r\nasjkdkjsa','3'),(10,'dotienduc113','sdaihhduasudasuiduhasd','3'),(11,'mary','\'','1'),(12,'dotienduc113','hellamsmda jk ajk jkanmsoask ansj anodoa kdansodaoids andaod','1'),(13,'dotienduc113','asdddddddddddd','3'),(14,'dotienduc113','chfffffffffffffffffffffffffff',''),(15,'dotienduc113','vvt f ufy f',''),(16,'dotienduc113','dotienduc113: hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test. hello this is a test.\r\n\r\nmary: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised','1'),(17,'dotienduc113','ewfas          adadaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','1'),(18,'dotienduc113','uy','1'),(19,'dotienduc113','sd','1'),(29,'dotienduc113','<script>alert(1)</script>','1'),(30,'dotienduc113','<script>alert(\"xss\")</script>','1'),(31,'dotienduc113','<script>\r\nalert(document.cookie);</script>','1');
/*!40000 ALTER TABLE `members_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_file`
--

DROP TABLE IF EXISTS `members_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_file` (
  `id` smallint(6) DEFAULT NULL,
  `name` varchar(12) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `file` varchar(48) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_file`
--

LOCK TABLES `members_file` WRITE;
/*!40000 ALTER TABLE `members_file` DISABLE KEYS */;
INSERT INTO `members_file` VALUES (315,'mary','2023-08-28','file_upload/2.jpg'),(316,'mary','2023-08-28','file_upload/1.txt'),(317,'mary','2023-08-28','file_upload/4.jpg'),(318,'mary','2023-08-28','file_upload/2.txt'),(319,'mary','2023-08-28','file_upload/2_3E7OZs9.txt'),(320,'mary','2023-08-28','file_upload/test.php'),(321,'mary','2023-08-28','file_upload/test_u239qTY.php'),(322,'mary','2023-08-28','file_upload/test_ZBch4H8.php'),(323,'mary','2023-08-28','file_upload/test_gMaFZku.php'),(324,'mary','2023-08-28','file_upload/2_MShfv5Z.txt'),(325,'mary','2023-08-28','file_upload/1_J3yNiuS.txt'),(326,'mary','2023-08-28','file_upload/Windows_Key.txt'),(327,'mary','2023-08-28','file_upload/photo-1601004890684-d8cbf643f5f2.jpg'),(328,'mary','2023-08-28','file_upload/Câu-hỏi-ôn-tập.docx'),(329,'mary','2023-08-28','file_upload/Windows_Key_Be6mqLz.txt'),(330,'mary','2023-08-28','file_upload/Windows_Key_0ua5b16.txt'),(331,'mary','2023-08-28','file_upload/Windows_Key_bJY0l0j.txt'),(332,'mary','2023-08-28','file_upload/Windows_Key_QmBk90d.txt'),(333,'mary','2023-08-28','file_upload/Windows_Key_UQImPo6.txt'),(334,'mary','2023-08-28','file_upload/Windows_Key_lvI2VbD.txt'),(335,'mary','2023-08-28','file_upload/Windows_Key_RauLjlc.txt'),(336,'mary','2023-08-28','file_upload/Windows_Key_P03edIo.txt'),(337,'mary','2023-08-28','file_upload/Windows_Key_x7iLXOG.txt'),(338,'mary','2023-08-28','file_upload/Windows_Key_OiCL6Rn.txt'),(339,'mary','2023-08-28','file_upload/2_R7W3E9A.txt'),(340,'mary','2023-08-28','file_upload/signup.html'),(341,'mary','2023-08-28','file_upload/hello_test.txt'),(342,'mary','2023-08-28','file_upload/hello_test_AKjf17j.txt'),(343,'mary','2023-08-28','file_upload/Windows_Key_IIQBQD2.txt'),(344,'mary','2023-08-28','file_upload/Windows_Key_6Sx4kHN.txt'),(345,'mary','2023-08-28','file_upload/Windows_Key_lFfpNkA.txt'),(346,'mary','2023-08-28','file_upload/3.py'),(347,'mary','2023-08-28','file_upload/hello_test_7sh5DRl.txt'),(348,'mary','2023-08-28','file_upload/test_jyZB558.php'),(349,'mary','2023-08-28','file_upload/3_5p1iGY8.py'),(350,'mary','2023-08-29','file_upload/hello.php'),(351,'mary','2023-08-29','file_upload/testing.py'),(352,'mary','2023-08-29','file_upload/pyth.py'),(353,'mary','2023-08-29','file_upload/testing_FOYeQC7.py'),(354,'mary','2023-08-29','file_upload/123.py'),(355,'mary','2023-08-29','file_upload/2_8suXW4i.txt'),(356,'mary','2023-08-29','file_upload/2_93q0RS3.txt'),(357,'dotienduc113','2023-08-29','file_upload/1_KyaYaHw.txt'),(358,'dotienduc113','2023-08-29','file_upload/pyth_qh9hTdC.py'),(359,'dotienduc113','2023-08-29','static/hello_test.txt');
/*!40000 ALTER TABLE `members_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_filter`
--

DROP TABLE IF EXISTS `members_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_filter` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `number` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_filter`
--

LOCK TABLES `members_filter` WRITE;
/*!40000 ALTER TABLE `members_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_member`
--

DROP TABLE IF EXISTS `members_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members_member` (
  `id` tinyint(4) DEFAULT NULL,
  `firstname` varchar(9) DEFAULT NULL,
  `lastname` varchar(7) DEFAULT NULL,
  `joined_date` varchar(0) DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_member`
--

LOCK TABLES `members_member` WRITE;
/*!40000 ALTER TABLE `members_member` DISABLE KEYS */;
INSERT INTO `members_member` VALUES (1,'Emil','Refsnes','','316666113'),(2,'Stalikken','Refness','','12345679'),(3,'Lene','Refness','',''),(4,'Stale','Doe','',''),(6,'john','doe','','457658459');
/*!40000 ALTER TABLE `members_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',31),('django_admin_log',30),('django_content_type',10),('auth_permission',40),('auth_group',0),('auth_user',17),('members_member',6),('members_comment',31),('members_file',359);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:47
