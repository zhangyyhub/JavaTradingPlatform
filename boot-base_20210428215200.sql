-- MySQL dump 10.13  Distrib 5.5.40, for Win64 (x86)
--
-- Host: localhost    Database: boot-base
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `database_bak`
--

DROP TABLE IF EXISTS `database_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_bak`
--

LOCK TABLES `database_bak` WRITE;
/*!40000 ALTER TABLE `database_bak` DISABLE KEYS */;
INSERT INTO `database_bak` VALUES (10,'2021-01-26 20:39:12','2021-01-26 20:39:12','boot-base_20210126203912.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(11,'2021-01-26 20:55:38','2021-01-26 20:55:38','boot-base_20210126205538.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(12,'2021-01-26 20:55:43','2021-01-26 20:55:43','boot-base_20210126205543.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(15,'2021-01-26 20:58:12','2021-01-26 20:58:12','boot-base_20210126205812.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(16,'2021-01-26 20:58:17','2021-01-26 20:58:17','boot-base_20210126205817.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(17,'2021-01-26 20:58:22','2021-01-26 20:58:22','boot-base_20210126205822.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(18,'2021-01-26 20:58:28','2021-01-26 20:58:28','boot-base_20210126205828.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(19,'2021-01-26 20:58:33','2021-01-26 20:58:33','boot-base_20210126205833.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(20,'2021-01-26 20:58:38','2021-01-26 20:58:38','boot-base_20210126205838.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(21,'2021-01-26 20:58:43','2021-01-26 20:58:43','boot-base_20210126205843.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(27,'2021-01-26 21:00:30','2021-01-26 21:00:30','boot-base_20210126210030.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(28,'2021-01-26 21:00:36','2021-01-26 21:00:36','boot-base_20210126210035.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(29,'2021-01-26 21:00:40','2021-01-26 21:00:40','boot-base_20210126210040.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(30,'2021-01-26 23:25:55','2021-01-26 23:25:55','boot-base_20210126232555.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(31,'2021-01-26 23:28:04','2021-01-26 23:28:04','boot-base_20210126232804.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/'),(32,'2021-01-26 23:50:20','2021-01-26 23:50:20','boot-base_20210126235020.sql','D:/IdeaProgram/base-boot/src/main/resources/backup/');
/*!40000 ALTER TABLE `database_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `name` varchar(18) NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_button` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgeupubdqncc1lpgf2cn4fqwbc` (`parent_id`),
  CONSTRAINT `FKgeupubdqncc1lpgf2cn4fqwbc` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2021-01-22 20:12:07','2021-01-22 20:12:07','mdi-wrench','系统设置',1,'',NULL,'\0',''),(2,'2021-01-22 20:12:50','2021-01-23 22:35:36','mdi-view-sequential','菜单管理',2,'/menu/list',1,'\0',''),(3,'2021-01-22 20:13:41','2021-01-22 20:13:41','mdi-account-multiple','角色管理',3,'/role/list',1,'\0',''),(4,'2021-01-22 20:14:13','2021-01-22 20:14:13','mdi-account','用户管理',4,'/user/list',1,'\0',''),(5,'2021-01-22 20:15:33','2021-01-22 20:15:33','mdi-plus','添加菜单',7,'/menu/add',2,'\0',''),(6,'2021-01-22 20:16:07','2021-01-23 23:20:10','mdi-border-color','编辑菜单',8,'edit(\'/menu/edit\')',2,'',''),(7,'2021-01-22 20:17:30','2021-01-23 23:33:56','mdi-close','删除菜单',9,'del(\'/menu/delete\')',2,'',''),(8,'2021-01-22 20:18:08','2021-01-22 20:18:08','mdi-account-multiple-plus','添加角色',10,'/role/add',3,'\0',''),(9,'2021-01-22 20:18:34','2021-01-23 23:56:01','mdi-account-multiple-outline','编辑角色',11,'edit(\'/role/edit\')',3,'',''),(10,'2021-01-22 20:19:07','2021-01-24 00:19:27','mdi-account-multiple-minus','删除角色',12,'del(\'/role/delete\')',3,'',''),(11,'2021-01-22 20:19:47','2021-01-22 20:19:56','mdi-account-plus','添加用户',13,'/user/add',4,'\0',''),(12,'2021-01-22 20:20:26','2021-01-24 00:19:44','mdi-account-edit','编辑用户',14,'edit(\'/user/edit\')',4,'',''),(13,'2021-01-22 20:20:43','2021-01-24 00:20:00','mdi-account-minus','删除用户',15,'del(\'/user/delete\')',4,'',''),(20,'2021-01-24 16:11:55','2021-01-24 16:18:43','mdi-arrow-up-box','上传图片',16,'/upload/upload_photo',4,'\0','\0'),(21,'2021-01-24 23:20:47','2021-01-25 00:34:23','mdi-more','日志管理',5,'/system/operator_log_list',1,'\0',''),(22,'2021-01-24 23:24:29','2021-01-25 00:21:07','mdi-comment-remove-outline','删除日志',17,'del(\'/system/delete_operator_log\')',21,'',''),(23,'2021-01-24 23:26:47','2021-01-25 00:41:55','mdi-delete','清空日志',18,'delAll(\'/system/delete_all_operator_log\')',21,'',''),(24,'2021-01-25 11:46:37','2021-01-25 11:51:22','mdi-database','数据备份',6,'/database_bak/list',1,'\0',''),(25,'2021-01-25 11:50:30','2021-01-25 22:21:05','mdi-database-plus','备份',19,'add(\'/database_bak/add\')',24,'',''),(26,'2021-01-25 11:53:26','2021-01-25 11:53:26','mdi-database-minus','删除',20,'del(\'/database_bak/delete\')',24,'',''),(30,'2021-01-26 19:31:35','2021-01-26 20:38:40','mdi-file','还原',0,'restore(\'/database_bak/restore\')',24,'','');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operater_log`
--

DROP TABLE IF EXISTS `operater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operater_log`
--

LOCK TABLES `operater_log` WRITE;
/*!40000 ALTER TABLE `operater_log` DISABLE KEYS */;
INSERT INTO `operater_log` VALUES (390,'2021-01-25 10:55:38','2021-01-25 10:55:38','admin于2021-01-25 10:55:38登录系统','admin'),(392,'2021-01-25 11:46:37','2021-01-25 11:46:37','添加菜单信息[Menu{name=\'数据备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'/database_bak/list\', icon=\'mdi-cloud-print\', sort=0, isButton=false, isShow=true}]','admin'),(393,'2021-01-25 11:50:30','2021-01-25 11:50:30','添加菜单信息[Menu{name=\'备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'/database_bak/add\', icon=\'mdi-clipboard-plus\', sort=0, isButton=false, isShow=true}]','admin'),(394,'2021-01-25 11:51:22','2021-01-25 11:51:22','编辑菜单信息[Menu{name=\'数据备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'/database_bak/list\', icon=\'mdi-database\', sort=6, isButton=false, isShow=true}]','admin'),(395,'2021-01-25 11:51:55','2021-01-25 11:51:55','编辑菜单信息[Menu{name=\'备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'/database_bak/add\', icon=\'mdi-database-plus\', sort=19, isButton=false, isShow=true}]','admin'),(396,'2021-01-25 11:53:26','2021-01-25 11:53:26','添加菜单信息[Menu{name=\'删除\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'del(\'/database_bak/delete\')\', icon=\'mdi-database-minus\', sort=20, isButton=true, isShow=true}]','admin'),(397,'2021-01-25 11:54:04','2021-01-25 11:54:04','编辑角色超级管理员','admin'),(400,'2021-01-25 19:49:46','2021-01-25 19:49:46','编辑角色超级管理员','admin'),(401,'2021-01-25 19:49:46','2021-01-25 19:49:46','编辑角色超级管理员','admin'),(402,'2021-01-25 19:50:07','2021-01-25 19:50:07','admin于2021-01-25 19:50:07登录系统','admin'),(403,'2021-01-25 19:53:18','2021-01-25 19:53:18','admin于2021-01-25 19:53:18登录系统','admin'),(404,'2021-01-25 19:54:03','2021-01-25 19:54:03','编辑菜单信息[Menu{name=\'数据备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'/database_bak/list\', icon=\'mdi-database\', sort=6, isButton=false, isShow=true}]','admin'),(405,'2021-01-25 19:54:12','2021-01-25 19:54:12','admin于2021-01-25 19:54:12登录系统','admin'),(406,'2021-01-25 20:15:36','2021-01-25 20:15:36','admin于2021-01-25 20:15:36登录系统','admin'),(407,'2021-01-25 20:19:41','2021-01-25 20:19:41','admin于2021-01-25 20:19:41登录系统','admin'),(408,'2021-01-25 20:23:58','2021-01-25 20:23:58','编辑菜单信息[Menu{name=\'备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'add(\'/database_bak\')\', icon=\'mdi-database-plus\', sort=19, isButton=true, isShow=true}]','admin'),(409,'2021-01-25 22:15:28','2021-01-25 22:15:28','admin于2021-01-25 22:15:28登录系统','admin'),(410,'2021-01-25 22:18:31','2021-01-25 22:18:31','admin于2021-01-25 22:18:31登录系统','admin'),(411,'2021-01-25 22:21:05','2021-01-25 22:21:05','编辑菜单信息[Menu{name=\'备份\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'add(\'/database_bak/add\')\', icon=\'mdi-database-plus\', sort=19, isButton=true, isShow=true}]','admin'),(412,'2021-01-25 22:21:21','2021-01-25 22:21:21','admin于2021-01-25 22:21:21登录系统','admin'),(413,'2021-01-25 23:49:18','2021-01-25 23:49:18','admin于2021-01-25 23:49:18登录系统','admin'),(414,'2021-01-25 23:53:29','2021-01-25 23:53:29','admin于2021-01-25 23:53:29登录系统','admin'),(415,'2021-01-25 23:57:48','2021-01-25 23:57:48','admin于2021-01-25 23:57:48登录系统','admin'),(416,'2021-01-26 00:05:39','2021-01-26 00:05:39','admin于2021-01-26 00:05:38登录系统','admin'),(417,'2021-01-26 00:08:57','2021-01-26 00:08:57','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(418,'2021-01-26 00:10:25','2021-01-26 00:10:25','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126001024.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(419,'2021-01-26 00:38:18','2021-01-26 00:38:18','admin于2021-01-26 00:38:18登录系统','admin'),(420,'2021-01-26 00:38:39','2021-01-26 00:38:39','添加菜单信息[Menu{name=\'测试一级\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'\', icon=\'mdi-alarm-check\', sort=0, isButton=false, isShow=true}]','admin'),(421,'2021-01-26 00:39:06','2021-01-26 00:39:06','添加菜单信息[Menu{name=\'测试二级1\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'\', icon=\'mdi-alarm-plus\', sort=0, isButton=false, isShow=true}]','admin'),(422,'2021-01-26 00:39:21','2021-01-26 00:39:21','添加菜单信息[Menu{name=\'测试二级2\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'\', icon=\'mdi-all-inclusive\', sort=0, isButton=false, isShow=true}]','admin'),(423,'2021-01-26 00:39:28','2021-01-26 00:39:28','删除菜单信息id=29','admin'),(424,'2021-01-26 00:40:02','2021-01-26 00:40:02','删除菜单信息id=28','admin'),(425,'2021-01-26 00:40:10','2021-01-26 00:40:10','删除菜单信息id=27','admin'),(426,'2021-01-26 11:13:22','2021-01-26 11:13:22','admin于2021-01-26 11:13:21登录系统','admin'),(427,'2021-01-26 14:43:26','2021-01-26 14:43:26','admin于2021-01-26 14:43:26登录系统','admin'),(428,'2021-01-26 15:37:10','2021-01-26 15:37:10','admin于2021-01-26 15:37:10登录系统','admin'),(429,'2021-01-26 15:42:13','2021-01-26 15:42:13','admin于2021-01-26 15:42:13登录系统','admin'),(430,'2021-01-26 15:42:37','2021-01-26 15:42:37','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126154237.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(431,'2021-01-26 19:29:37','2021-01-26 19:29:37','admin于2021-01-26 19:29:37登录系统','admin'),(432,'2021-01-26 19:29:46','2021-01-26 19:29:46','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126192946.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(433,'2021-01-26 19:31:36','2021-01-26 19:31:36','添加菜单信息[Menu{name=\'还原\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'restore(‘/database_bak/restore’)\', icon=\'mdi-file\', sort=0, isButton=true, isShow=true}]','admin'),(434,'2021-01-26 19:31:45','2021-01-26 19:31:45','编辑角色超级管理员','admin'),(435,'2021-01-26 19:31:56','2021-01-26 19:31:56','admin于2021-01-26 19:31:56登录系统','admin'),(436,'2021-01-26 19:32:02','2021-01-26 19:32:02','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126193202.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(437,'2021-01-26 19:33:09','2021-01-26 19:33:09','admin于2021-01-26 19:33:09登录系统','admin'),(438,'2021-01-26 19:35:19','2021-01-26 19:35:19','admin于2021-01-26 19:35:19登录系统','admin'),(439,'2021-01-26 19:36:08','2021-01-26 19:36:08','编辑菜单信息[Menu{name=\'还原\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'restore(\'database_bak/restore\')\', icon=\'mdi-file\', sort=0, isButton=true, isShow=true}]','admin'),(440,'2021-01-26 19:36:31','2021-01-26 19:36:31','admin于2021-01-26 19:36:31登录系统','admin'),(441,'2021-01-26 19:36:55','2021-01-26 19:36:55','编辑角色超级管理员','admin'),(442,'2021-01-26 19:37:17','2021-01-26 19:37:17','admin于2021-01-26 19:37:17登录系统','admin'),(443,'2021-01-26 19:37:30','2021-01-26 19:37:30','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126193729.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(444,'2021-01-26 20:35:18','2021-01-26 20:35:18','添加角色备份测试1','admin'),(445,'2021-01-26 20:35:23','2021-01-26 20:35:23','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126203523.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(446,'2021-01-26 20:37:42','2021-01-26 20:37:42','admin于2021-01-26 20:37:42登录系统','admin'),(447,'2021-01-26 20:37:59','2021-01-26 20:37:59','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126203759.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(448,'2021-01-26 20:38:09','2021-01-26 20:38:09','编辑角色id为7','admin'),(449,'2021-01-26 20:38:40','2021-01-26 20:38:40','编辑菜单信息[Menu{name=\'还原\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'restore(\'/database_bak/restore\')\', icon=\'mdi-file\', sort=0, isButton=true, isShow=true}]','admin'),(450,'2021-01-26 20:39:12','2021-01-26 20:39:12','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126203912.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(451,'2021-01-26 21:00:21','2021-01-26 21:00:21','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126210020.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','获取登录用户失败'),(452,'2021-01-26 21:00:25','2021-01-26 21:00:25','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126210025.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','获取登录用户失败'),(453,'2021-01-26 21:00:30','2021-01-26 21:00:30','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126210030.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','获取登录用户失败'),(454,'2021-01-26 21:00:35','2021-01-26 21:00:35','admin于2021-01-26 21:00:35登录系统','admin'),(455,'2021-01-26 21:00:36','2021-01-26 21:00:36','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126210035.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','获取登录用户失败'),(456,'2021-01-26 21:00:40','2021-01-26 21:00:40','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126210040.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','获取登录用户失败'),(457,'2021-01-26 22:11:54','2021-01-26 22:11:54','admin于2021-01-26 22:11:54登录系统','admin'),(458,'2021-01-26 22:23:37','2021-01-26 22:23:37','admin于2021-01-26 22:23:37登录系统','admin'),(459,'2021-01-26 22:25:44','2021-01-26 22:25:44','admin于2021-01-26 22:25:43登录系统','admin'),(460,'2021-01-26 22:27:25','2021-01-26 22:27:25','admin于2021-01-26 22:27:25登录系统','admin'),(461,'2021-01-26 22:43:04','2021-01-26 22:43:04','admin于2021-01-26 22:43:04登录系统','admin'),(462,'2021-01-26 22:50:22','2021-01-26 22:50:22','admin于2021-01-26 22:50:22登录系统','admin'),(463,'2021-01-26 22:51:01','2021-01-26 22:51:01','test于2021-01-26 22:51:01登录系统','test'),(464,'2021-01-26 23:00:18','2021-01-26 23:00:18','admin于2021-01-26 23:00:18登录系统','admin'),(465,'2021-01-26 23:01:31','2021-01-26 23:01:31','admin于2021-01-26 23:01:31登录系统','admin'),(466,'2021-01-26 23:05:53','2021-01-26 23:05:53','admin于2021-01-26 23:05:53登录系统','admin'),(467,'2021-01-26 23:07:29','2021-01-26 23:07:29','admin于2021-01-26 23:07:29登录系统','admin'),(468,'2021-01-26 23:07:59','2021-01-26 23:07:59','admin于2021-01-26 23:07:59登录系统','admin'),(469,'2021-01-26 23:08:36','2021-01-26 23:08:36','admin于2021-01-26 23:08:36登录系统','admin'),(470,'2021-01-26 23:08:46','2021-01-26 23:08:46','编辑角色超级管理员','admin'),(471,'2021-01-26 23:08:57','2021-01-26 23:08:57','编辑角色测试角色','admin'),(472,'2021-01-26 23:09:04','2021-01-26 23:09:04','admin于2021-01-26 23:09:04登录系统','admin'),(473,'2021-01-26 23:21:06','2021-01-26 23:21:06','admin于2021-01-26 23:21:06登录系统','admin'),(474,'2021-01-26 23:21:25','2021-01-26 23:21:25','添加菜单信息[Menu{name=\'12324\', parent=null, url=\'\', icon=\'mdi-account-convert\', sort=0, isButton=false, isShow=true}]','admin'),(475,'2021-01-26 23:21:38','2021-01-26 23:21:38','编辑菜单信息[Menu{name=\'12324\', parent=null, url=\'\', icon=\'mdi-account-convert\', sort=111, isButton=false, isShow=true}]','admin'),(476,'2021-01-26 23:21:51','2021-01-26 23:21:51','添加菜单信息[Menu{name=\'21324\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'\', icon=\'mdi-adjust\', sort=0, isButton=false, isShow=true}]','admin'),(477,'2021-01-26 23:22:02','2021-01-26 23:22:02','添加菜单信息[Menu{name=\'23142r\', parent=Menu{name=\'null\', parent=null, url=\'null\', icon=\'null\', sort=0, isButton=false, isShow=true}, url=\'\', icon=\'mdi-alarm-multiple\', sort=0, isButton=false, isShow=true}]','admin'),(478,'2021-01-26 23:22:08','2021-01-26 23:22:08','删除菜单信息id=33','admin'),(479,'2021-01-26 23:22:22','2021-01-26 23:22:22','删除菜单信息id=32','admin'),(480,'2021-01-26 23:22:30','2021-01-26 23:22:30','删除菜单信息id=31','admin'),(481,'2021-01-26 23:22:43','2021-01-26 23:22:43','添加角色1343','admin'),(482,'2021-01-26 23:22:51','2021-01-26 23:22:51','添加角色3142x3','admin'),(483,'2021-01-26 23:23:03','2021-01-26 23:23:03','编辑角色13433142','admin'),(484,'2021-01-26 23:23:07','2021-01-26 23:23:07','编辑角色id为8','admin'),(485,'2021-01-26 23:23:12','2021-01-26 23:23:12','编辑角色id为9','admin'),(486,'2021-01-26 23:23:36','2021-01-26 23:23:36','添加用户,用户名13','admin'),(487,'2021-01-26 23:23:53','2021-01-26 23:23:53','编辑用户,用户名13','admin'),(488,'2021-01-26 23:24:05','2021-01-26 23:24:05','删除用户,用户id8','admin'),(489,'2021-01-26 23:25:55','2021-01-26 23:25:55','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126232555.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(490,'2021-01-26 23:28:04','2021-01-26 23:28:04','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126232804.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(491,'2021-01-26 23:34:45','2021-01-26 23:34:45','admin于2021-01-26 23:34:45登录系统','admin'),(492,'2021-01-26 23:35:25','2021-01-26 23:35:25','admin于2021-01-26 23:35:25登录系统','admin'),(493,'2021-01-26 23:49:36','2021-01-26 23:49:36','admin于2021-01-26 23:49:36登录系统','admin'),(494,'2021-01-26 23:50:20','2021-01-26 23:50:20','数据库备份成功,备份文件名DatabaseBak{filename=\'boot-base_20210126235020.sql\', filepath=\'D:/IdeaProgram/base-boot/src/main/resources/backup/\'}','admin'),(495,'2021-01-26 23:53:34','2021-01-26 23:53:34','admin于2021-01-26 23:53:34登录系统','admin'),(496,'2021-01-27 00:07:50','2021-01-27 00:07:50','admin于2021-01-27 00:07:50登录系统','admin'),(497,'2021-01-27 00:08:31','2021-01-27 00:08:31','admin于2021-01-27 00:08:31登录系统','admin'),(498,'2021-01-27 23:10:31','2021-01-27 23:10:31','admin于2021-01-27 23:10:31登录系统','admin'),(499,'2021-01-28 21:13:52','2021-01-28 21:13:52','admin于2021-01-28 21:13:52登录系统','admin'),(500,'2021-01-28 22:34:35','2021-01-28 22:34:35','admin于2021-01-28 22:34:35登录系统','admin');
/*!40000 ALTER TABLE `operater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2021-01-19 16:03:49','2021-01-26 23:08:46','超级管理员','拥有所有权限',1),(2,'2021-01-24 00:21:06','2021-01-26 23:08:57','测试角色','',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_authorities`
--

DROP TABLE IF EXISTS `role_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKtl0ns8c0yk51fbpjfh8kxfjag` (`authorities_id`),
  KEY `FK8dv2uo3imjpm4dmk7pge9v2vo` (`role_id`),
  CONSTRAINT `FK8dv2uo3imjpm4dmk7pge9v2vo` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKtl0ns8c0yk51fbpjfh8kxfjag` FOREIGN KEY (`authorities_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_authorities`
--

LOCK TABLES `role_authorities` WRITE;
/*!40000 ALTER TABLE `role_authorities` DISABLE KEYS */;
INSERT INTO `role_authorities` VALUES (1,1),(1,2),(1,5),(1,6),(1,7),(1,3),(1,8),(1,9),(1,10),(1,4),(1,11),(1,12),(1,13),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,30),(2,1),(2,2),(2,5),(2,6),(2,7),(2,3),(2,9),(2,4),(2,12);
/*!40000 ALTER TABLE `role_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(256) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2021-01-21 00:00:00','2021-01-24 23:07:24','22@163.com','20210124/1611492145898.jpeg','12345678910','111',1,1,'admin',1),(2,'2021-01-21 23:53:44','2021-01-24 16:21:40','aaa@qq.com','20210124/1611476456768.jpg','1111','222',1,1,'test',2),(3,'2021-01-22 16:08:49','2021-01-22 16:08:49','aaa@qq.com','20210122/1611302904680.jpg','111','1',1,1,'普通用户',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 21:52:03
