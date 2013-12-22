-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ez_hollywood
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1

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
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket` DISABLE KEYS */;
INSERT INTO `ezbasket` VALUES (15,0,18,'sbk5k40ooe1935qdgsdblmgm37');
/*!40000 ALTER TABLE `ezbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
INSERT INTO `ezbinaryfile` VALUES (357,55,'64307460b6a67acf6efdb942dc5e315f.m4v','application/octet-stream','Piraya small – Mobilnett.m4v',1),(465,0,'bd59a6da79a53021aedd5d57c607e6fb.png','image/png','eZ_logo_color_black_RGB_150dpi.png',1),(471,0,'14baa48f299479bfadf67a166c05829b.png','image/png','eZ_logo_color_white_RGB_150dpi.png',1);
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2,2,1,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,'',3,'Lock',0);
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,'',3,'Not locked'),(2,'',3,'Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(45,1),(49,1),(50,1),(51,1),(52,1),(54,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(140,1),(142,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collaboration_id`,`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`collaboration_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key_ip` (`user_id`,`session_key`,`ip`),
  KEY `content_parentcomment` (`contentobject_id`,`language_id`,`parent_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `send_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_type` varchar(30) NOT NULL,
  `content_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `subscription_time` int(11) NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT '1',
  `hash_string` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0,2,'ger-DE','Deutsch (Deutschland)'),(0,4,'eng-GB','English (United Kingdom)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent` DISABLE KEYS */;
INSERT INTO `ezcontentbrowserecent` VALUES (1382621828,1,'eZ Publish',2,14),(1381794991,13,'Users',5,14),(1382070975,19,'Footer',134,14),(1382743456,20,'Pizza',124,14),(1382613863,21,'Pizza L.A.',137,14),(1382751527,22,'Banner',142,14),(1382950781,23,'Burger',128,14),(1382950931,24,'Hamburger',152,14);
/*!40000 ALTER TABLE `ezcontentbrowserecent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,'<short_name|name>',1024392098,14,1,'folder',2,1,3,1082454875,14,'a3d405b81be900468eb153d774f4f0d2','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:6:\"Folder\";}',1,1,'',0),(1,'<name>',1024392098,14,3,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:10:\"User group\";}',1,1,'',0),(1,'<first_name> <last_name>',1024392098,14,4,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:4:\"User\";}',1,1,'',0),(0,'<subject>',1052385685,14,13,'comment',2,0,3,1082455144,14,'000c14f4f475e9f2955dedab72799941','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:7:\"Comment\";}',1,1,'',0),(1,'<name>',1081858024,14,14,'common_ini_settings',2,0,3,1081858024,14,'ffedf2e73b1ea0c3e630e42e2db9c900','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:19:\"Common ini settings\";}',1,1,'',0),(1,'<title>',1081858045,14,15,'template_look',2,0,3,1081858045,14,'59b43cd9feaaf0e45ac974fb4bbd3f92','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:13:\"Template look\";}',1,1,'',0),(0,'<short_title|title>',1381794973,14,16,'article',4,1,5,1381794973,14,'c15b600eb9198b1924063b5a68758232','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794973,14,17,'blog',4,1,5,1381794973,14,'3a6f9c1f075b3bf49d7345576b196fe8','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Blog\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1381794973,14,18,'blog_post',4,1,5,1381794973,14,'7ecb961056b7cbb30f22a91357e0a007','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Blog post\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794973,14,19,'product',4,0,5,1382076994,14,'77f3ede996a3a39c7159cc69189c5307','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Product\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794973,14,20,'feedback_form',4,1,5,1381794973,14,'df0257b8fc55f6b8ab179d6fb915455e','a:0:{}','a:2:{s:6:\"eng-GB\";s:13:\"Feedback form\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,21,'landing_page',4,1,5,1381794974,14,'e36c458e3e4a81298a0945f53a2c81f4','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:12:\"Landing Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1381794974,14,22,'wiki_page',4,1,5,1381794974,14,'d4a05eed0402e4d70fedfda2023f1aa2','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"Wiki Page\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,23,'poll',4,0,5,1381794974,14,'232937a3a2eacbbf24e2601aebe16522','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Poll\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,24,'file',4,0,5,1381794974,14,'637d58bfddf164627bdfd265733280a0','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,25,'image',4,0,5,1381794974,14,'f6df12aa74e36230eb675f364fccd25a','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,26,'link',4,0,5,1381794974,14,'74ec6507063150bc813549b22534ad48','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Link\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,27,'gallery',4,1,5,1381794974,14,'6a320cdc3e274841b82fcd63a86f80d1','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Gallery\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794974,14,28,'forum',4,1,5,1381794974,14,'b241f924b96b267153f5f55904e0675a','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Forum\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<subject>',1381794975,14,29,'forum_topic',4,1,5,1381794975,14,'71f99c516743a33562c3893ef98c9b60','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Forum topic\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<subject>',1381794975,14,30,'forum_reply',4,0,5,1381794975,14,'80ee42a66b2b8b6ee15f5c5f4b361562','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Forum reply\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<short_title|title>',1381794975,14,31,'event',4,0,5,1381794975,14,'563cb5edc2adfd2b240efa456c81525f','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Event\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1381794975,14,32,'event_calendar',4,1,5,1381794975,14,'020cbeb6382c8c89dcec2cd406fb47a8','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:14:\"Event calendar\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794975,14,33,'banner',4,0,5,1381794975,14,'9cb558e25fd946246bbb32950c00228e','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Banner\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<title>',1381794975,14,34,'forums',4,1,5,1381794975,14,'60a921e54c1efbb9456bd2283d9e66cb','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Forums\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1381794975,14,35,'video',4,0,5,1381794975,14,'b38417e8194fb8f893ca918d297b4fa8','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:5:\"Video\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,'',0),(0,'<name>',1382028269,14,38,'section',2,1,3,1382948028,14,'81be5f0e604aa047addfe2ba8819e941','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:7:\"Section\";s:16:\"always-available\";s:6:\"ger-DE\";}',1,1,'',0),(0,'<name>',1382076279,14,39,'food',2,1,3,1382076724,14,'c8bbe4b689e93519261b9fe84a3a52f6','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:4:\"Food\";s:16:\"always-available\";s:6:\"ger-DE\";}',1,1,'',0);
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,'',1,0,0,0,0,255,0,0,0,'Folder','','','','','ezstring',4,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',6,'name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:4:\"Name\";}',0),(1,'',3,0,0,0,0,255,0,0,0,'','','','','','ezstring',7,'description',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:11:\"Description\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',8,'first_name',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:10:\"First name\";}',0),(1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring',9,'last_name',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:9:\"Last name\";}',0),(0,'',4,0,0,0,0,0,0,0,0,'','','','','','ezuser',12,'user_account',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:12:\"User account\";}',0),(1,'',1,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',119,'short_description',0,0,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:7:\"Summary\";}',0),(1,'',13,0,0,0,0,100,0,0,0,'','','','','','ezstring',149,'subject',0,1,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:7:\"Subject\";}',0),(1,'',13,0,0,0,0,0,0,0,0,'','','','','','ezstring',150,'author',0,1,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:6:\"Author\";}',0),(1,'',13,0,0,0,0,20,0,0,0,'','','','','','eztext',151,'message',0,1,1,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:7:\"Message\";}',0),(1,'',1,0,0,0,0,100,0,0,0,'','','','','','ezstring',155,'short_name',0,0,1,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:10:\"Short name\";}',0),(1,'',1,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',156,'description',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:11:\"Description\";}',0),(0,'',1,0,0,0,0,0,0,1,0,'','','','','','ezboolean',158,'show_children',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:17:\"Display sub items\";}',0),(1,'',14,0,0,0,0,0,0,0,0,'','','','','','ezstring',159,'name',0,0,1,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:4:\"Name\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','IndexPage','','override;user;admin;demo','ezinisetting',160,'indexpage',0,0,0,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:10:\"Index Page\";}',0),(0,'',14,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','DefaultPage','','override;user;admin;demo','ezinisetting',161,'defaultpage',0,0,0,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:12:\"Default Page\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugOutput','','override;user;admin;demo','ezinisetting',162,'debugoutput',0,0,0,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:12:\"Debug Output\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugByIP','','override;user;admin;demo','ezinisetting',163,'debugbyip',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:11:\"Debug By IP\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'site.ini','DebugSettings','DebugIPList','','override;user;admin;demo','ezinisetting',164,'debugiplist',0,0,0,6,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:13:\"Debug IP List\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','DebugSettings','DebugRedirection','','override;user;admin;demo','ezinisetting',165,'debugredirection',0,0,0,7,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:17:\"Debug Redirection\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','ContentSettings','ViewCaching','','override;user;admin;demo','ezinisetting',166,'viewcaching',0,0,0,8,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:12:\"View Caching\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCache','','override;user;admin;demo','ezinisetting',167,'templatecache',0,0,0,9,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:14:\"Template Cache\";}',0),(0,'',14,0,0,0,0,2,0,0,0,'site.ini','TemplateSettings','TemplateCompile','','override;user;admin;demo','ezinisetting',168,'templatecompile',0,0,0,10,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:16:\"Template Compile\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','small','Filters','','override;user;admin;demo','ezinisetting',169,'imagesmall',0,0,0,11,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:16:\"Image Small Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','medium','Filters','','override;user;admin;demo','ezinisetting',170,'imagemedium',0,0,0,12,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:17:\"Image Medium Size\";}',0),(0,'',14,0,0,0,0,6,0,0,0,'image.ini','large','Filters','','override;user;admin;demo','ezinisetting',171,'imagelarge',0,0,0,13,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:16:\"Image Large Size\";}',0),(0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteName','','override;user;admin;demo','ezinisetting',172,'title',0,0,0,1,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:5:\"Title\";}',0),(0,'',15,0,0,0,0,6,0,0,0,'site.ini','SiteSettings','MetaDataArray','','override;user;admin;demo','ezinisetting',173,'meta_data',0,0,0,2,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:9:\"Meta data\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezimage',174,'image',0,0,0,3,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:5:\"Image\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'sitestyle','','','','','ezpackage',175,'sitestyle',0,0,0,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:9:\"Sitestyle\";}',0),(0,'',15,0,0,0,0,1,0,0,0,'site.ini','MailSettings','AdminEmail','','override;user;admin;demo','ezinisetting',177,'email',0,0,0,6,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:5:\"Email\";}',0),(0,'',15,0,0,0,0,1,0,0,0,'site.ini','SiteSettings','SiteURL','','override;user;admin;demo','ezinisetting',178,'siteurl',0,0,0,7,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:8:\"Site URL\";}',0),(1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext',179,'signature',0,0,1,4,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:9:\"Signature\";}',0),(1,'',4,0,0,0,0,1,0,0,0,'','','','','','ezimage',180,'image',0,0,0,5,'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}','a:2:{s:16:\"always-available\";s:6:\"ger-DE\";s:6:\"ger-DE\";s:5:\"Image\";}',0),(1,'',16,0,0,0,0,255,0,0,0,'New article','','','','','ezstring',181,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,255,0,0,0,'','','','','','ezstring',182,'short_title',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezauthor',183,'author',0,0,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',184,'intro',0,1,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Summary\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',185,'body',0,0,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezimage',186,'image',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',187,'caption',0,0,1,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:15:\"Caption (Image)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',188,'publish_date',0,0,1,8,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:12:\"Publish date\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',189,'star_rating',0,0,0,9,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',190,'tags',0,0,1,10,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezgmaplocation',191,'location',0,0,1,11,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',16,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',192,'comments',0,0,1,12,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezstring',193,'name',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',17,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',194,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',17,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',195,'tags',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezstring',196,'title',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,25,0,0,0,'','','','','','ezxmltext',197,'body',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',198,'publication_date',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:16:\"Publication date\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',199,'tags',0,0,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',18,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',200,'comments',0,0,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',201,'name',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',202,'product_number',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:14:\"Product number\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',203,'short_description',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',204,'description',0,0,1,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,1,0,0,0,1,0,0,0,'','','','','','ezprice',205,'price',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Price\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezimage',206,'image',0,0,0,7,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,5,0,0,0,'','','','','','ezxmltext',207,'caption',0,0,1,8,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:15:\"Caption (Image)\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezmultioption',208,'additional_options',0,0,1,9,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:18:\"Additional options\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',209,'star_rating',0,0,1,10,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',210,'tags',0,0,1,11,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',211,'comments',0,0,1,12,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',212,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',213,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',214,'sender_name',1,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Sender name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,0,0,0,0,'','','','','','ezstring',215,'subject',1,1,1,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',20,0,0,0,0,10,0,0,0,'','','','','','eztext',216,'message',1,1,1,5,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',20,0,0,0,0,0,0,0,0,'','','','','','ezemail',217,'email',1,1,0,6,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',20,0,0,0,0,0,0,0,0,'','','','','','ezemail',218,'recipient',0,0,0,7,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:9:\"Recipient\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezstring',219,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',21,0,0,0,0,0,0,0,0,'','','','','','ezpage',220,'page',0,0,0,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:6:\"Layout\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezstring',221,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',22,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',222,'body',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',223,'star_rating',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',224,'tags',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',225,'comments',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',22,0,0,0,0,0,0,0,0,'','','','','','ezboolean',226,'show_children',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Display sub items\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezstring',227,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',23,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',228,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',23,0,0,0,0,0,0,0,0,'','','','','','ezoption',229,'question',1,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:8:\"Question\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',24,0,0,0,0,0,0,0,0,'New file','','','','','ezstring',230,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',24,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',231,'description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',232,'file',0,1,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',233,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',234,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',24,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',235,'comments',0,0,1,6,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',25,0,0,0,0,150,0,0,0,'','','','','','ezstring',236,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',25,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',237,'caption',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',25,0,0,0,0,2,0,0,0,'','','','','','ezimage',238,'image',0,0,0,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',25,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',239,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',25,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',240,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',26,0,0,0,0,255,0,0,0,'','','','','','ezstring',241,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',26,0,0,0,0,20,0,0,0,'','','','','','ezxmltext',242,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',26,0,0,0,0,0,0,0,0,'','','','','','ezurl',243,'location',0,0,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',26,0,0,0,0,0,0,1,0,'','','','','','ezboolean',244,'open_in_new_window',0,0,1,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:18:\"Open in new window\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezstring',245,'name',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',246,'short_description',0,0,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',27,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',247,'description',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation',248,'image',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',27,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',249,'tags',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',28,0,0,0,0,0,0,0,0,'','','','','','ezstring',250,'name',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',28,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',251,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezstring',252,'subject',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',29,0,0,0,0,10,0,0,0,'','','','','','eztext',253,'message',0,1,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezboolean',254,'sticky',0,0,1,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:6:\"Sticky\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',29,0,0,0,0,0,0,0,0,'','','','','','ezsubtreesubscription',255,'notify_me',0,0,0,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:23:\"Notify me about updates\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',30,0,0,0,0,0,0,0,0,'','','','','','ezstring',256,'subject',0,1,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Subject\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',30,0,0,0,0,10,0,0,0,'','','','','','eztext',257,'message',0,1,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:7:\"Message\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',31,0,0,0,0,55,0,0,0,'','','','','','ezstring',258,'title',0,0,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:10:\"Full title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',31,0,0,0,0,19,0,0,0,'','','','','','ezstring',259,'short_title',0,1,1,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',31,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',260,'text',0,0,1,3,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"Text\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',261,'category',0,0,1,4,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:8:\"Category\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',31,0,0,0,0,1,0,0,0,'','','','','','ezdatetime',262,'from_time',0,1,0,5,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:9:\"From Time\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',31,0,0,0,0,0,0,0,0,'','','','','','ezdatetime',263,'to_time',0,0,0,6,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:7:\"To Time\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',31,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',264,'tags',0,0,1,7,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',32,0,0,0,0,65,0,0,0,'','','','','','ezstring',265,'title',0,1,1,1,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(0,'',32,0,0,0,0,0,0,0,0,'','','','','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Calendar\"/><option id=\"1\" name=\"Program\"/></options></ezselection>\n','ezselection',266,'view',0,1,0,2,'a:0:{}','a:1:{s:6:\"eng-GB\";s:0:\"\";}','a:2:{s:6:\"eng-GB\";s:4:\"View\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezstring',267,'name',0,1,0,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezstring',268,'url',0,0,0,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:3:\"URL\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezimage',269,'image',0,1,0,3,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',33,0,0,0,0,10,0,0,0,'','','','','','eztext',270,'image_map',0,0,0,4,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:9:\"Image map\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',33,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',271,'tags',0,0,1,5,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',34,0,0,0,0,0,0,0,0,'','','','','','ezstring',272,'title',0,0,1,1,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',34,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',273,'description',0,0,1,2,'a:0:{}','a:0:{}','a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezstring',274,'name',0,0,1,1,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',35,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',275,'caption',0,0,1,2,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezbinaryfile',276,'file',0,0,1,3,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezsrrating',277,'star_rating',0,0,1,4,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',35,0,0,0,0,0,0,0,0,'','','','','','ezcomcomments',278,'comments',0,0,1,5,'a:0:{}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:8:\"Comments\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',279,'site_map_url',0,0,0,8,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:12:\"Site map URL\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezurl',280,'tag_cloud_url',0,0,0,9,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:13:\"Tag Cloud URL\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',281,'login_label',0,0,0,10,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:13:\"Login (label)\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',282,'logout_label',0,0,0,11,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:14:\"Logout (label)\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',283,'my_profile_label',0,0,0,12,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:18:\"My profile (label)\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',284,'register_user_label',0,0,0,13,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:25:\"Register new user (label)\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',285,'rss_feed',0,0,0,14,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:8:\"RSS feed\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',286,'shopping_basket_label',0,0,0,15,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:23:\"Shopping basket (label)\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezstring',287,'site_settings_label',0,0,0,16,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:21:\"Site settings (label)\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',288,'footer_text',0,0,0,17,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:11:\"Footer text\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,0,0,0,0,'','','','','','ezboolean',289,'hide_powered_by',0,0,0,18,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:17:\"Hide \"Powered by\"\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',15,0,0,0,0,10,0,0,0,'','','','','','eztext',290,'footer_script',0,0,0,19,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:17:\"Footer Javascript\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezpage',291,'call_for_action',0,0,0,6,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',1,0,0,0,0,0,0,0,0,'','','','','','ezkeyword',292,'tags',0,0,0,7,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezstring',300,'name',0,0,1,1,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:4:\"Name\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezstring',301,'name',0,0,1,1,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:4:\"Name\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',39,0,0,0,0,0,0,0,0,'','','','','','ezimage',302,'image',0,0,0,2,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:5:\"Image\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',39,0,0,0,0,10,0,0,0,'','','','','','ezxmltext',303,'description',0,0,1,3,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:12:\"Beschreibung\";s:16:\"always-available\";s:6:\"ger-DE\";}',0),(1,'',19,0,0,0,0,0,0,0,0,'','','','','','ezstring',304,'type',0,0,1,3,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}','a:2:{s:6:\"eng-GB\";s:3:\"Typ\";s:16:\"always-available\";s:6:\"eng-GB\";}',0),(1,'',38,0,0,0,0,0,0,0,0,'','','','','','ezimage',305,'image',0,0,0,2,'a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:0:\"\";s:16:\"always-available\";s:6:\"ger-DE\";}','a:2:{s:6:\"ger-DE\";s:4:\"Bild\";s:16:\"always-available\";s:6:\"ger-DE\";}',0);
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(13,0,1,'Content'),(14,0,4,'Setup'),(15,0,4,'Setup'),(16,0,1,'Content'),(17,0,1,'Content'),(18,0,1,'Content'),(19,0,1,'Content'),(20,0,1,'Content'),(21,0,1,'Content'),(22,0,1,'Content'),(23,0,1,'Content'),(24,0,3,'Media'),(25,0,3,'Media'),(26,0,1,'Content'),(27,0,1,'Content'),(28,0,1,'Content'),(29,0,1,'Content'),(30,0,1,'Content'),(31,0,1,'Content'),(32,0,1,'Content'),(33,0,1,'Content'),(34,0,1,'Content'),(35,0,3,'Media'),(38,0,1,'Content'),(39,0,1,'Content');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,3,'ger-DE','Folder'),(3,0,3,'ger-DE','User group'),(4,0,3,'ger-DE','User'),(13,0,3,'ger-DE','Comment'),(14,0,3,'ger-DE','Common ini settings'),(15,0,3,'ger-DE','Template look'),(16,0,5,'eng-GB','Article'),(17,0,5,'eng-GB','Blog'),(18,0,5,'eng-GB','Blog post'),(19,0,5,'eng-GB','Product'),(20,0,5,'eng-GB','Feedback form'),(21,0,5,'eng-GB','Landing Page'),(22,0,5,'eng-GB','Wiki Page'),(23,0,5,'eng-GB','Poll'),(24,0,5,'eng-GB','File'),(25,0,5,'eng-GB','Image'),(26,0,5,'eng-GB','Link'),(27,0,5,'eng-GB','Gallery'),(28,0,5,'eng-GB','Forum'),(29,0,5,'eng-GB','Forum topic'),(30,0,5,'eng-GB','Forum reply'),(31,0,5,'eng-GB','Event'),(32,0,5,'eng-GB','Event calendar'),(33,0,5,'eng-GB','Banner'),(34,0,5,'eng-GB','Forums'),(35,0,5,'eng-GB','Video'),(38,0,3,'ger-DE','Section'),(39,0,3,'ger-DE','Food');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1031216928,14,1,1033922106,14,'Content'),(1031216941,14,2,1033922113,14,'Users'),(1032009743,14,3,1033922120,14,'Media'),(1081858024,14,4,1081858024,14,'Setup');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (3,1,4,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1),(4,2,10,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1),(3,2,11,2,3,1381794991,'Members',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1),(3,1,12,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1),(3,1,13,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1),(4,4,14,2,3,1381794990,'Amir Koklan',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1),(1,1,41,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1),(3,1,42,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1),(1,1,45,2,3,1079684190,'Setup',14,1079684190,'241d538ce310074e602f29f49e44e938',4,1),(1,1,49,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1),(1,1,50,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1),(1,1,51,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1),(14,1,52,2,2,1082016591,'Common INI settings',14,1082016591,'27437f3547db19cf81a33c92578b2c89',4,1),(15,2,54,2,2,1301062376,'eZ Publish Demo Design',14,1082016652,'8b8b22fe3c6061ed500fbd2b377b885f',5,1),(1,1,56,2,3,1103023132,'Design',14,1103023132,'08799e609893f7aba22f10cb466d9cc8',5,1),(21,1,57,2,3,1284454019,'Home',14,1195480486,'8a9c9c761004866fb458d89910f52bee',1,2),(21,1,58,2,2,1332939802,'Getting Started',14,1332927190,'7c013ad2b5221a74704c3d8313c4936a',1,2),(1,1,59,2,3,1332936697,'Resources',14,1332936697,'90cf3af65240904b2e8ededf5a80aa52',1,2),(16,1,60,2,2,1332939216,'eZ Publish Tutorials',14,1332938805,'93db70ffc8003c01f03cf81fa622d456',1,2),(16,1,61,2,2,1332939113,'eZ User Documentation',14,1332938824,'dc55dac3352b47cdf54646d9cb6200e5',1,2),(16,1,62,2,2,1332939505,'Technical Documentation',14,1332939505,'45d1f7e22c1ddbaeaae72505341e854d',1,2),(16,1,63,2,2,1332939663,'Demos and Videos',14,1332939663,'94b224233ef4b2d8660824ad1bf27bc4',1,2),(1,1,64,2,3,1332937412,'Selected Features',14,1332932074,'b26079e84486ed2368778c2a2ff3be15',1,2),(16,1,65,2,2,1332936299,'Search Result Clustering with eZ Find',14,1332932904,'c8fa6ace2c8b3cdd30941c89470b9213',1,2),(16,1,66,2,2,1332933837,'Autosave in Editorial Editing Process',14,1332933216,'141f8143f9b2e740eb1541aa44cccdda',1,2),(16,1,67,2,2,1332938654,'Multivariate Testing',14,1332933539,'db01949a286c60127a496daf7343591c',1,2),(16,1,68,2,2,1332938008,'Improved Online Analytics',14,1332933792,'16923c9da5bf2dc970e7c802ae434f8e',1,2),(16,1,69,2,2,1332939761,'Getting Started with eZ Publish Etna',14,1332934074,'699c5b72347666a663adf84f5410ea18',1,2),(21,2,70,2,2,1381796527,'Travel',14,1332922372,'da2fff8ce1d176a6b109b58dc399b441',1,2),(27,1,71,2,2,1332922399,'Peruvian Amazon',14,1332922399,'c995a5cff3a86e483fa0affde17ea562',1,2),(25,1,72,2,2,1332923876,'Amazon Side River',14,1332923876,'591c4c5232934dc019c32557cd919aba',1,2),(25,1,73,2,2,1332923912,'River Boat',14,1332923912,'ae6a4339b92614cb2f43a515f4cf5a1d',1,2),(25,1,74,2,2,1332923987,'Flying Bird',14,1332923987,'c9f16079a6fc0316c9a3c432c1ca0813',1,2),(25,1,75,2,2,1332924014,'Turtles',14,1332924014,'9336fbd1f7a91ae0eb831d9f3e7856d3',1,2),(25,1,76,2,2,1332924042,'Hat on a Stick',14,1332924042,'3fffa16022ba5d62a4f5166780dc6fad',1,2),(25,1,77,2,2,1332924104,'Heron in the Water',14,1332924104,'4ebf1c6f8affa7450433f217a19474d3',1,2),(25,1,78,2,2,1332924130,'Bird Island',14,1332924130,'2d9839a2f0afa38ea22394ac883c51fb',1,2),(25,1,79,2,2,1332924185,'Aligator',14,1332924185,'15afd328fad196528c8752dd318338d5',1,2),(35,1,80,2,2,1332929023,'Piranha Fishing',14,1332928969,'955a8335666b76426497ed397bd60224',1,2),(1,1,81,2,3,1332924346,'Information',14,1332924346,'d8f7773cbfb1d877deb524b58eacc822',1,2),(16,1,82,2,2,1332929154,'Largest City Without Road Connection',14,1332924325,'e1f4777db6743dc2d4bff7f046866c44',1,2),(16,1,83,2,2,1332935545,'Amazon Jungle',14,1332925062,'789fb4ebd973179859a9843d802d4cb7',1,2),(16,1,84,2,2,1332929120,'Floating Village in Iquitos, Loreto',14,1332926147,'7339e1532bf2f29acc606760125f5b9a',1,2),(21,1,85,2,2,1332931812,'City Shopping',14,1332929528,'fdfad0d10118eda1334a1aa8ee117ca6',1,2),(1,1,86,2,3,1332935044,'Products',14,1332929541,'88ebdebc4d5e55ebe841c50a92882961',1,2),(19,1,87,2,2,1332930150,'New York Cab',14,1332930102,'36e4d2c8185dd4216b15c2ce950dec9d',1,2),(19,1,88,2,2,1332930878,'City View',14,1332930586,'ffb82f7e0eac83ca50fbef0b65ff0823',1,2),(19,1,89,2,2,1332930865,'Street Crossing',14,1332930788,'3d33faf4810668ffc1b8290198ac67a5',1,2),(1,1,90,2,3,1332930952,'Locations',14,1332930904,'3d8a1028538c7c1d019cb39890b7d64a',1,2),(16,1,91,2,2,1332934427,'New York City',14,1332930989,'87eb8bb6f1839c4c2b5a63c08240a0e3',1,2),(1,1,92,2,3,1332935082,'Partner Section',14,1332927318,'d58a80698adb4e2fc8841ba07a5d4a3b',6,2),(24,1,93,2,2,1332931967,'eZ Logo Black',14,1332931967,'dea1fa921d0240f266116fecf9e1d94d',6,2),(24,1,94,2,2,1332932005,'eZ Logo White',14,1332932005,'9c75ceb69a9eeb2fb4285c427fc81022',6,2),(1,1,95,2,3,1332932020,'Logos',14,1332932020,'aff81f1aaca7d418e748bfc3a98e5caf',6,2),(22,1,96,2,2,1332932333,'Partner Wiki',14,1332932333,'8611401d0e6198c8c10c2526e4af6f6a',6,2),(17,1,97,2,2,1332932403,'Blog',14,1332932403,'c62cbc4be226d3c7c7379e0cd9ef7ba7',1,2),(18,1,98,2,2,1332932488,'Example Blog Post',14,1332932449,'f6fdb5ffc10c01f8ba1093c206e9dc6a',1,2),(20,1,99,2,2,1332927282,'Contact Us',14,1332927205,'f8cc7a4cf8a964a1a0ea6666f5da7d0d',1,1),(3,1,100,2,3,1381794991,'Partners',14,1381794991,'76832ffc1ae635bd80d49787e5a54471',2,1),(1,2,101,2,3,1382071267,'Pizza Hollywood',14,1381869839,'9c99a49ee26febf70bfa35d451e95030',1,1),(38,3,122,2,2,1382683099,'Pizza',14,1382028737,'ee63c8482e8a7c250afe69d4797f533b',1,1),(38,1,123,2,2,1382028778,'From Italy',14,1382028778,'f14074f913f56f8f4e4630cd2d92f9c6',1,1),(38,1,124,2,2,1382028827,'Baguette',14,1382028827,'f6c2402f4ec6649afae51ac53ae2c6cd',1,1),(38,1,125,2,2,1382028858,'Salate',14,1382028858,'d31f43a01cfa9d428a28aa0e99227558',1,1),(38,3,126,2,2,1382950633,'Burger',14,1382029414,'0062b111a702493d7eed2a2f15b895c2',1,1),(38,1,127,2,2,1382029436,'Wrap',14,1382029436,'8b3826f393645aa9bd30ff1424f88b6e',1,1),(38,1,128,2,2,1382029457,'Spezial',14,1382029457,'7e0df07a48453391e5fd7041c5c83805',1,1),(38,1,129,2,2,1382029556,'Dessert',14,1382029556,'e757577b97d9584881bc9ca55e7f21cb',1,1),(38,1,130,2,2,1382029594,'Getränke',14,1382029594,'9d3f40eed78e3fb23527519759cad296',1,1),(38,1,131,2,2,1382029660,'Extras',14,1382029660,'f8a9847c8f5703da2faeec61cc563039',1,1),(1,1,132,2,3,1382070235,'Footer',14,1382070235,'23a8bd5cd968d51dfcacfead56c2e3f4',1,1),(16,2,133,2,2,1382731379,'Impressum',14,1382070975,'d5b09c35aa54ff5650e03d8139c9167c',1,1),(1,1,134,2,3,1382071289,'Foods',14,1382071289,'90ace9e98722fddb4ee3d1c883c92202',1,1),(39,2,135,2,2,1382602944,'Pizza L.A.',14,1382076566,'6034930fbb0c74de14e635b8c0a52c7e',1,1),(19,3,136,2,2,1382729849,'Pizza L.A CL',14,1382076895,'b274fc4e2ff610a2f4809e1e9eeb6918',1,1),(19,2,137,2,2,1382729874,'Pizza L.A American',14,1382613725,'ef3cc3618909d0109110816b849e8c54',1,1),(19,2,138,2,2,1382729896,'Pizza L.A Jumbo',14,1382613863,'582c5283db2a8aa747e35a8e7e18e7dc',1,1),(1,1,140,2,3,1382621828,'Banner',14,1382621828,'c431bff8b12a7eb2becde90148ba8af4',1,1),(25,1,142,2,2,1382622191,'banner',14,1382622191,'dd0f94af2745a98f6e020165e37f40b0',1,1),(25,1,145,2,2,1382742363,'banner',14,1382742363,'92300ddbf8b3efa2868bd4243b5ca67c',1,1),(25,1,146,2,2,1382742386,'banner',14,1382742386,'27a5109932bea691fa412904b34299c3',1,1),(39,3,147,2,2,1382751407,'Pizza California',14,1382743416,'7e128176777efe19866336566454df96',1,1),(39,2,148,2,2,1382743436,'Pizza L.A.',14,1382743436,'8917fbf09681e9812c9b910264c43055',1,1),(39,2,149,2,2,1382743456,'Pizza L.A.',14,1382743456,'57fdb322d7f31d1ca25500f0067ffd26',1,1),(25,1,150,2,2,1382751527,'Somer',14,1382751527,'50beb4bec3c977b668c2c4b35d5a1a24',1,1),(39,2,151,2,2,1382951383,'Hamburger',14,1382950781,'0b9f40338ecc445546e5277d32af8914',1,1),(19,2,152,2,2,1382950964,'Hamburger',14,1382950931,'28dabb837bf23fd4efad25e71e10c755',1,1),(4,1,153,2,3,0,'Neue/er/es User',14,0,'745f8fcec5945992a0a6aac2a943a653',2,0);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attr_id` (`id`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_attribute_contentobject_id` (`contentobject_id`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
) ENGINE=InnoDB AUTO_INCREMENT=900 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (0,7,4,NULL,NULL,'Main group','ezstring',7,'ger-DE',3,0,'',1),(0,6,4,NULL,NULL,'Users','ezstring',8,'ger-DE',3,0,'',1),(0,8,10,0,0,'Anonymous','ezstring',19,'ger-DE',3,0,'anonymous',2),(0,9,10,0,0,'User','ezstring',20,'ger-DE',3,0,'user',2),(0,12,10,0,0,'','ezuser',21,'ger-DE',3,0,'',2),(0,6,11,0,0,'Guest accounts','ezstring',22,'ger-DE',3,0,'',1),(0,6,11,0,0,'Members','ezstring',22,'ger-DE',3,0,'members',2),(0,7,11,0,0,'','ezstring',23,'ger-DE',3,0,'',1),(0,7,11,0,0,'','ezstring',23,'ger-DE',3,0,'',2),(0,6,12,0,0,'Administrator users','ezstring',24,'ger-DE',3,0,'',1),(0,7,12,0,0,'','ezstring',25,'ger-DE',3,0,'',1),(0,6,13,0,0,'Editors','ezstring',26,'ger-DE',3,0,'',1),(0,7,13,0,0,'','ezstring',27,'ger-DE',3,0,'',1),(0,8,14,0,0,'Administrator','ezstring',28,'ger-DE',3,0,'administrator',3),(0,8,14,0,0,'Amir','ezstring',28,'ger-DE',3,0,'amir',4),(0,9,14,0,0,'User','ezstring',29,'ger-DE',3,0,'user',3),(0,9,14,0,0,'Koklan','ezstring',29,'ger-DE',3,0,'koklan',4),(30,12,14,0,0,'','ezuser',30,'ger-DE',3,0,'',3),(30,12,14,0,0,'','ezuser',30,'ger-DE',3,0,'',4),(0,4,41,0,0,'Media','ezstring',98,'ger-DE',3,0,'',1),(0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',99,'ger-DE',3,0,'',1),(0,6,42,0,0,'Anonymous Users','ezstring',100,'ger-DE',3,0,'anonymous users',1),(0,7,42,0,0,'User group for the anonymous user','ezstring',101,'ger-DE',3,0,'user group for the anonymous user',1),(0,155,41,0,0,'','ezstring',103,'ger-DE',3,0,'',1),(0,156,41,0,1045487555,'','ezxmltext',105,'ger-DE',3,0,'',1),(0,158,41,0,0,'','ezboolean',109,'ger-DE',3,0,'',1),(0,4,45,0,0,'Setup','ezstring',123,'ger-DE',3,0,'setup',1),(0,155,45,0,0,'','ezstring',124,'ger-DE',3,0,'',1),(0,119,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',125,'ger-DE',3,0,'',1),(0,156,45,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',126,'ger-DE',3,0,'',1),(0,158,45,0,0,'','ezboolean',128,'ger-DE',3,0,'',1),(0,4,49,0,0,'Images','ezstring',142,'ger-DE',3,0,'images',1),(0,155,49,0,0,'','ezstring',143,'ger-DE',3,0,'',1),(0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',144,'ger-DE',3,0,'',1),(0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',145,'ger-DE',3,0,'',1),(0,158,49,0,1,'','ezboolean',146,'ger-DE',3,1,'',1),(0,4,50,0,0,'Files','ezstring',147,'ger-DE',3,0,'files',1),(0,155,50,0,0,'','ezstring',148,'ger-DE',3,0,'',1),(0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',149,'ger-DE',3,0,'',1),(0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',150,'ger-DE',3,0,'',1),(0,158,50,0,1,'','ezboolean',151,'ger-DE',3,1,'',1),(0,4,51,0,0,'Multimedia','ezstring',152,'ger-DE',3,0,'multimedia',1),(0,155,51,0,0,'','ezstring',153,'ger-DE',3,0,'',1),(0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',154,'ger-DE',3,0,'',1),(0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',155,'ger-DE',3,0,'',1),(0,158,51,0,1,'','ezboolean',156,'ger-DE',3,1,'',1),(0,159,52,0,0,'Common INI settings','ezstring',157,'ger-DE',2,0,'common ini settings',1),(0,160,52,0,0,'/content/view/full/2/','ezinisetting',158,'ger-DE',2,0,'',1),(0,161,52,0,0,'/content/view/full/2','ezinisetting',159,'ger-DE',2,0,'',1),(0,162,52,0,0,'disabled','ezinisetting',160,'ger-DE',2,0,'',1),(0,163,52,0,0,'disabled','ezinisetting',161,'ger-DE',2,0,'',1),(0,164,52,0,0,'','ezinisetting',162,'ger-DE',2,0,'',1),(0,165,52,0,0,'enabled','ezinisetting',163,'ger-DE',2,0,'',1),(0,166,52,0,0,'disabled','ezinisetting',164,'ger-DE',2,0,'',1),(0,167,52,0,0,'enabled','ezinisetting',165,'ger-DE',2,0,'',1),(0,168,52,0,0,'enabled','ezinisetting',166,'ger-DE',2,0,'',1),(0,169,52,0,0,'=geometry/scale=100;100','ezinisetting',167,'ger-DE',2,0,'',1),(0,170,52,0,0,'=geometry/scale=200;200','ezinisetting',168,'ger-DE',2,0,'',1),(0,171,52,0,0,'=geometry/scale=300;300','ezinisetting',169,'ger-DE',2,0,'',1),(0,172,54,0,0,'eZ Publish Demo Design','ezinisetting',170,'ger-DE',2,0,'',2),(0,173,54,0,0,'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework','ezinisetting',171,'ger-DE',2,0,'',2),(0,174,54,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"eZ-Publish-Demo-Design1.png\" suffix=\"png\" basename=\"eZ-Publish-Demo-Design1\" dirpath=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE\" url=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE/eZ-Publish-Demo-Design1.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794991\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"eZ-Publish-Demo-Design1_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE\" url=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE/eZ-Publish-Demo-Design1_reference.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"2605465115\" timestamp=\"1381919078\" is_valid=\"1\"/><alias name=\"large\" filename=\"eZ-Publish-Demo-Design1_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE\" url=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE/eZ-Publish-Demo-Design1_large.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alias_key=\"1592566908\" timestamp=\"1381919078\" is_valid=\"1\"/></ezimage>\n','ezimage',172,'ger-DE',2,0,'',2),(0,175,54,0,0,'0','ezpackage',173,'ger-DE',2,0,'0',2),(0,177,54,0,0,'amirkoklan@gmail.com','ezinisetting',175,'ger-DE',2,0,'',2),(0,178,54,0,0,'localhost:8080/hollywood/index.php','ezinisetting',176,'ger-DE',2,0,'',2),(0,179,10,0,0,'','eztext',177,'ger-DE',3,0,'',2),(0,179,14,0,0,'','eztext',178,'ger-DE',3,0,'',3),(0,179,14,0,0,'','eztext',178,'ger-DE',3,0,'',4),(0,180,10,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382749467\"/>\n','ezimage',179,'ger-DE',3,0,'',2),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'ger-DE',3,0,'',3),(0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage',180,'ger-DE',3,0,'',4),(0,4,56,0,NULL,'Design','ezstring',181,'ger-DE',3,0,'design',1),(0,155,56,0,NULL,'','ezstring',182,'ger-DE',3,0,'',1),(0,119,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',183,'ger-DE',3,0,'',1),(0,156,56,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />','ezxmltext',184,'ger-DE',3,0,'',1),(0,158,56,0,1,'','ezboolean',185,'ger-DE',3,1,'',1),(0,219,57,0,NULL,'Home','ezstring',186,'ger-DE',3,0,'home',1),(0,220,57,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_865346aabbcc48a9839274cc554868be\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_4efd68496edd8184aade729b4d2ee17b\">\n      <name>Main Story</name>\n      <zone_id>865346aabbcc48a9839274cc554868be</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_bffec84af43985679e30e6ff6d79c19b\">\n      <name>Mixed Content</name>\n      <zone_id>865346aabbcc48a9839274cc554868be</zone_id>\n      <type>ContentGrid</type>\n      <view>2_columns_2_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_d769ae69f693b76429a731a8ce475e23\">\n      <name>Gallery</name>\n      <zone_id>865346aabbcc48a9839274cc554868be</zone_id>\n      <type>Gallery</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_f742abffba08fc849b6e80dec769a74c\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_cd58c813f7463484f22a2168a44cdcc4\">\n      <name>Highlighted Feature</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>HighlightedItem</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_9481d2b1810c928ded55e94b0ae13647\">\n      <name>Main Items</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_b0d7b1fae15381576e13e5bd1480f555\">\n      <name>News</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>FeedReader</type>\n      <custom_attributes>\n        <source>http://ez.no/rss/feed/news</source>\n        <limit>5</limit>\n        <offset>0</offset>\n      </custom_attributes>\n      <view>default</view>\n    </block>\n    <block id=\"id_530f34a56860389349bd37e74bc095a7\">\n      <name>Selected Video</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>Video</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_27d176fb3baf2ab9dea2b1f98270e701\">\n      <name>Tags</name>\n      <zone_id>f742abffba08fc849b6e80dec769a74c</zone_id>\n      <type>TagCloud</type>\n      <view>default</view>\n      <custom_attributes>\n        <subtree_node_id>2</subtree_node_id>\n      </custom_attributes>\n    </block>\n  </zone>\n</page>\n','ezpage',187,'ger-DE',3,0,'',1),(0,219,58,0,NULL,'Getting Started','ezstring',188,'ger-DE',2,0,'getting started',1),(0,220,58,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout2</zone_layout>\n  <zone id=\"id_c5ce576877ab71afb7c143ea3276db4f\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_74f7a63a2c079e279c8669f660ded478\">\n      <name>Highlighted Feature</name>\n      <zone_id>c5ce576877ab71afb7c143ea3276db4f</zone_id>\n      <type>HighlightedItem</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_a577b33f9a9ec054e0c2171288056be9\">\n      <name>Main Features</name>\n      <zone_id>c5ce576877ab71afb7c143ea3276db4f</zone_id>\n      <type>ContentGrid</type>\n      <view>1_column_4_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_fe8088a104581ea7faa6c00fe743f072\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_c0ef745972ce2d55057c70d157eb7b96\">\n      <name></name>\n      <zone_id>fe8088a104581ea7faa6c00fe743f072</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_594491ab539125dc271807a83724e608\">\n      <name></name>\n      <zone_id>fe8088a104581ea7faa6c00fe743f072</zone_id>\n      <type>ContentGrid</type>\n      <view>2_columns_2_rows</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n</page>\n','ezpage',189,'ger-DE',2,0,'',1),(0,4,59,0,NULL,'Resources','ezstring',190,'ger-DE',3,0,'resources',1),(0,155,59,0,NULL,'','ezstring',191,'ger-DE',3,0,'',1),(0,119,59,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',192,'ger-DE',3,0,'',1),(0,156,59,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',193,'ger-DE',3,0,'',1),(194,158,59,0,1,'','ezboolean',194,'ger-DE',3,1,'',1),(0,181,60,0,NULL,'eZ Publish Tutorials','ezstring',195,'ger-DE',2,0,'ez publish tutorials',1),(0,182,60,0,NULL,'','ezstring',196,'ger-DE',2,0,'',1),(0,183,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',197,'ger-DE',2,0,'',1),(0,184,60,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"23\">Developing eZ Publish Extensions</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"24\">Building mobile browser and hybrid applications with eZ Publish</link></paragraph></li></ul></paragraph></section>','ezxmltext',198,'ger-DE',2,0,'',1),(0,185,60,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',199,'ger-DE',2,0,'',1),(0,186,60,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794977\"><original attribute_id=\"200\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',200,'ger-DE',2,0,'',1),(0,187,60,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',201,'ger-DE',2,0,'',1),(0,188,60,0,0,'','ezdatetime',202,'ger-DE',2,0,'',1),(0,189,60,0,0,'','ezsrrating',203,'ger-DE',2,0,'',1),(0,190,60,0,NULL,'','ezkeyword',204,'ger-DE',2,0,'',1),(0,191,60,0,0,'','ezgmaplocation',205,'ger-DE',2,0,'',1),(0,192,60,1,1,'','ezcomcomments',206,'ger-DE',2,0,'',1),(0,181,61,0,NULL,'eZ User Documentation','ezstring',207,'ger-DE',2,0,'ez user documentation',1),(0,182,61,0,NULL,'','ezstring',208,'ger-DE',2,0,'',1),(0,183,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',209,'ger-DE',2,0,'',1),(0,184,61,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"25\">Administration Interface</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"26\">Daily Tasks</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"27\">Website Interface User Documentation</link></paragraph></li></ul></paragraph></section>','ezxmltext',210,'ger-DE',2,0,'',1),(0,185,61,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',211,'ger-DE',2,0,'',1),(0,186,61,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"Documentation\" alias_key=\"1293033771\" timestamp=\"1381794977\"><original attribute_id=\"212\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',212,'ger-DE',2,0,'',1),(0,187,61,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',213,'ger-DE',2,0,'',1),(0,188,61,0,0,'','ezdatetime',214,'ger-DE',2,0,'',1),(0,189,61,0,0,'','ezsrrating',215,'ger-DE',2,0,'',1),(0,190,61,0,NULL,'','ezkeyword',216,'ger-DE',2,0,'',1),(0,191,61,0,0,'','ezgmaplocation',217,'ger-DE',2,0,'',1),(0,192,61,1,1,'','ezcomcomments',218,'ger-DE',2,0,'',1),(0,181,62,0,NULL,'Technical Documentation','ezstring',219,'ger-DE',2,0,'technical documentation',1),(0,182,62,0,NULL,'','ezstring',220,'ger-DE',2,0,'',1),(0,183,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',221,'ger-DE',2,0,'',1),(0,184,62,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"28\">Concepts and basics</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"29\">Template language</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"30\">REST API</link></paragraph></li></ul></paragraph></section>','ezxmltext',222,'ger-DE',2,0,'',1),(0,185,62,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',223,'ger-DE',2,0,'',1),(0,186,62,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794977\"><original attribute_id=\"224\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',224,'ger-DE',2,0,'',1),(0,187,62,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',225,'ger-DE',2,0,'',1),(0,188,62,0,0,'','ezdatetime',226,'ger-DE',2,0,'',1),(0,189,62,0,0,'','ezsrrating',227,'ger-DE',2,0,'',1),(0,190,62,0,NULL,'','ezkeyword',228,'ger-DE',2,0,'',1),(0,191,62,0,0,'','ezgmaplocation',229,'ger-DE',2,0,'',1),(0,192,62,1,1,'','ezcomcomments',230,'ger-DE',2,0,'',1),(0,181,63,0,NULL,'Demos and Videos','ezstring',231,'ger-DE',2,0,'demos and videos',1),(0,182,63,0,NULL,'','ezstring',232,'ger-DE',2,0,'',1),(0,183,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',233,'ger-DE',2,0,'',1),(0,184,63,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"31\">Multichannel Content Management</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"32\">Landingpage Management with eZ Flow</link></paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><link url_id=\"33\">More Demos and Videos</link></paragraph></li></ul></paragraph></section>','ezxmltext',234,'ger-DE',2,0,'',1),(0,185,63,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',235,'ger-DE',2,0,'',1),(0,186,63,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794978\"><original attribute_id=\"236\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',236,'ger-DE',2,0,'',1),(0,187,63,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',237,'ger-DE',2,0,'',1),(0,188,63,0,0,'','ezdatetime',238,'ger-DE',2,0,'',1),(0,189,63,0,0,'','ezsrrating',239,'ger-DE',2,0,'',1),(0,190,63,0,NULL,'','ezkeyword',240,'ger-DE',2,0,'',1),(0,191,63,0,0,'','ezgmaplocation',241,'ger-DE',2,0,'',1),(0,192,63,1,1,'','ezcomcomments',242,'ger-DE',2,0,'',1),(0,4,64,0,NULL,'Selected Features','ezstring',243,'ger-DE',3,0,'selected features',1),(0,155,64,0,NULL,'','ezstring',244,'ger-DE',3,0,'',1),(0,119,64,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',245,'ger-DE',3,0,'',1),(0,156,64,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',246,'ger-DE',3,0,'',1),(247,158,64,0,1,'','ezboolean',247,'ger-DE',3,1,'',1),(0,181,65,0,NULL,'Search Result Clustering with eZ Find','ezstring',248,'ger-DE',2,0,'search result clustering with ez find',1),(0,182,65,0,NULL,'','ezstring',249,'ger-DE',2,0,'',1),(0,183,65,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',250,'ger-DE',2,0,'',1),(0,184,65,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In eZ Publish 4.7 Etna you have the possibility to generate search result clustering. </paragraph></section>','ezxmltext',251,'ger-DE',2,0,'',1),(0,185,65,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is an algorithm to automatically categorize search results based on the content enabling an automatic facet like navigation interface.</paragraph><paragraph>For more information please visit <link url_id=\"34\">www.ez.no.</link></paragraph></section>','ezxmltext',252,'ger-DE',2,0,'',1),(0,186,65,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"c81119e9f40047f343202d901cf37236.png\" suffix=\"png\" basename=\"c81119e9f40047f343202d901cf37236\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/search-result-clustering-with-ez-find/253-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/search-result-clustering-with-ez-find/253-1-ger-DE/trashed/c81119e9f40047f343202d901cf37236.png\" original_filename=\"274b087e.png\" mime_type=\"image/png\" width=\"770\" height=\"333\" alternative_text=\"Content Clustering with eZ Find\" alias_key=\"1293033771\" timestamp=\"1381794978\"><original attribute_id=\"253\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><alias name=\"contentgrid\" filename=\"c81119e9f40047f343202d901cf37236_contentgrid.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/search-result-clustering-with-ez-find/253-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/search-result-clustering-with-ez-find/253-1-ger-DE/trashed/c81119e9f40047f343202d901cf37236_contentgrid.png\" mime_type=\"image/png\" width=\"370\" height=\"160\" alias_key=\"4192414807\" timestamp=\"1382071020\" is_valid=\"1\"/></ezimage>\n','ezimage',253,'ger-DE',2,0,'',1),(0,187,65,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',254,'ger-DE',2,0,'',1),(0,188,65,0,0,'','ezdatetime',255,'ger-DE',2,0,'',1),(0,189,65,0,0,'','ezsrrating',256,'ger-DE',2,0,'',1),(0,190,65,0,NULL,'','ezkeyword',257,'ger-DE',2,0,'',1),(0,191,65,0,1,'','ezgmaplocation',258,'ger-DE',2,0,'Skien, Norway',1),(0,192,65,1,1,'','ezcomcomments',259,'ger-DE',2,0,'',1),(0,181,66,0,NULL,'Autosave in Editorial Editing Process','ezstring',260,'ger-DE',2,0,'autosave in editorial editing process',1),(0,182,66,0,NULL,'','ezstring',261,'ger-DE',2,0,'',1),(0,183,66,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',262,'ger-DE',2,0,'',1),(0,184,66,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In eZ Publish 4.7 you have now automatic saving of content during editing. This feature will automatically save the content you are working on regularly and whenever you shift focus from for example title to introduction. </paragraph></section>','ezxmltext',263,'ger-DE',2,0,'',1),(0,185,66,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The editor gets an notification whenever the content is saved and can see how long since last automatic save. This enables the editors to focus on the content editing and not worrying about content being lost due to issues with the browser, closed window or expired session.</paragraph><paragraph>For more information please visit <link target=\"_self\" url_id=\"35\">www.ez.no.</link></paragraph></section>','ezxmltext',264,'ger-DE',2,0,'',1),(0,186,66,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"6ab3fed97980e0c706db92a41129f2d6.png\" suffix=\"png\" basename=\"6ab3fed97980e0c706db92a41129f2d6\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/autosave-in-editorial-editing-process/265-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/autosave-in-editorial-editing-process/265-1-ger-DE/trashed/6ab3fed97980e0c706db92a41129f2d6.png\" original_filename=\"c7cfa9d3.png\" mime_type=\"image/png\" width=\"784\" height=\"445\" alternative_text=\"Automatic saving of content during editing.\" alias_key=\"1293033771\" timestamp=\"1381794979\"><original attribute_id=\"265\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',265,'ger-DE',2,0,'',1),(0,187,66,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',266,'ger-DE',2,0,'',1),(0,188,66,0,0,'','ezdatetime',267,'ger-DE',2,0,'',1),(0,189,66,0,0,'','ezsrrating',268,'ger-DE',2,0,'',1),(0,190,66,0,NULL,'','ezkeyword',269,'ger-DE',2,0,'',1),(0,191,66,0,1,'','ezgmaplocation',270,'ger-DE',2,0,'Skien, Norway',1),(0,192,66,1,1,'','ezcomcomments',271,'ger-DE',2,0,'',1),(0,181,67,0,NULL,'Multivariate Testing','ezstring',272,'ger-DE',2,0,'multivariate testing',1),(0,182,67,0,NULL,'','ezstring',273,'ger-DE',2,0,'',1),(0,183,67,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',274,'ger-DE',2,0,'',1),(0,184,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Publish 4.7 brings multivariate testing as an additional tool to the editorial team to provide a more goal oriented website. </paragraph></section>','ezxmltext',275,'ger-DE',2,0,'',1),(0,185,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The multi variant testing lets you define different landing pages that are served to the visitors, often referred to as A/B Testing. Based on analytics tracking with Odoscope of which page converts the best you have decision support in order to build a KPI focussed website for better Customer Experience.</paragraph><paragraph>For more information please visit <link target=\"_self\" url_id=\"35\">www.ez.no.</link></paragraph></section>','ezxmltext',276,'ger-DE',2,0,'',1),(0,186,67,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"2dfc2002e21795cc66b5b51be2964065.png\" suffix=\"png\" basename=\"2dfc2002e21795cc66b5b51be2964065\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/multivariate-testing/277-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/multivariate-testing/277-1-ger-DE/trashed/2dfc2002e21795cc66b5b51be2964065.png\" original_filename=\"b0839e1d.png\" mime_type=\"image/png\" width=\"770\" height=\"333\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794979\"><original attribute_id=\"277\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><alias name=\"contentgrid\" filename=\"2dfc2002e21795cc66b5b51be2964065_contentgrid.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/multivariate-testing/277-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/multivariate-testing/277-1-ger-DE/trashed/2dfc2002e21795cc66b5b51be2964065_contentgrid.png\" mime_type=\"image/png\" width=\"370\" height=\"160\" alias_key=\"4192414807\" timestamp=\"1382071020\" is_valid=\"1\"/></ezimage>\n','ezimage',277,'ger-DE',2,0,'',1),(0,187,67,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',278,'ger-DE',2,0,'',1),(0,188,67,0,0,'','ezdatetime',279,'ger-DE',2,0,'',1),(0,189,67,0,0,'','ezsrrating',280,'ger-DE',2,0,'',1),(0,190,67,0,NULL,'','ezkeyword',281,'ger-DE',2,0,'',1),(0,191,67,0,1,'','ezgmaplocation',282,'ger-DE',2,0,'Skien, Norway',1),(0,192,67,1,1,'','ezcomcomments',283,'ger-DE',2,0,'',1),(0,181,68,0,NULL,'Improved Online Analytics','ezstring',284,'ger-DE',2,0,'improved online analytics',1),(0,182,68,0,NULL,'','ezstring',285,'ger-DE',2,0,'',1),(0,183,68,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',286,'ger-DE',2,0,'',1),(0,184,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>With a tighter and improved integration with Odoscope you get better analysis of differentiated user behavior.</paragraph></section>','ezxmltext',287,'ger-DE',2,0,'',1),(0,185,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is specially efficient when combined with the A/B testing features that also were added to eZ Publish 4.7.</paragraph><paragraph>For more information please visit <link url_id=\"34\">www.ez.no.</link></paragraph></section>','ezxmltext',288,'ger-DE',2,0,'',1),(0,186,68,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"45b211711c1c8b86ef0d77c31fa4e385.png\" suffix=\"png\" basename=\"45b211711c1c8b86ef0d77c31fa4e385\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/improved-online-analytics/289-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/improved-online-analytics/289-1-ger-DE/trashed/45b211711c1c8b86ef0d77c31fa4e385.png\" original_filename=\"7a3d11eb.png\" mime_type=\"image/png\" width=\"770\" height=\"456\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794979\"><original attribute_id=\"289\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><alias name=\"contentgrid\" filename=\"45b211711c1c8b86ef0d77c31fa4e385_contentgrid.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/improved-online-analytics/289-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/improved-online-analytics/289-1-ger-DE/trashed/45b211711c1c8b86ef0d77c31fa4e385_contentgrid.png\" mime_type=\"image/png\" width=\"370\" height=\"160\" alias_key=\"4192414807\" timestamp=\"1382071025\" is_valid=\"1\"/></ezimage>\n','ezimage',289,'ger-DE',2,0,'',1),(0,187,68,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',290,'ger-DE',2,0,'',1),(0,188,68,0,0,'','ezdatetime',291,'ger-DE',2,0,'',1),(0,189,68,0,0,'','ezsrrating',292,'ger-DE',2,0,'',1),(0,190,68,0,NULL,'','ezkeyword',293,'ger-DE',2,0,'',1),(0,191,68,0,1,'','ezgmaplocation',294,'ger-DE',2,0,'Skien, Norway',1),(0,192,68,1,1,'','ezcomcomments',295,'ger-DE',2,0,'',1),(0,181,69,0,NULL,'Getting Started with eZ Publish Etna','ezstring',296,'ger-DE',2,0,'getting started with ez publish etna',1),(0,182,69,0,NULL,'','ezstring',297,'ger-DE',2,0,'',1),(0,183,69,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',298,'ger-DE',2,0,'',1),(0,184,69,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Welcome to eZ Publish 4.7 Etna. This release brings several new features and general improvements.</paragraph></section>','ezxmltext',299,'ger-DE',2,0,'',1),(0,185,69,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><section><header>Key Selected New Features in Etna</header><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><ul><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Autosave of content</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">A/B Testing</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Automatic Content Clustering of Search Results</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Improved Online Analytics with Integrated Odoscope</paragraph></li><li><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">New adaptive design templates and content (You are viewing that right now)</paragraph></li></ul><line><embed view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"65\"/><embed view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"66\"/><embed view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"67\"/><embed view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"68\"/></line></paragraph><paragraph>For further information visit <link url_id=\"36\">www.ez.no,</link>&#xA0;the documentation: <link url_id=\"37\">doc.ez.no</link>&#xA0;and the <link url_id=\"38\">share.ez.no</link>&#xA0;community.</paragraph></section></section>\n','ezxmltext',300,'ger-DE',2,0,'',1),(0,186,69,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"51845c0dc34fb57f09d59d8869753c6c.jpg\" suffix=\"jpg\" basename=\"51845c0dc34fb57f09d59d8869753c6c\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-etna/301-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-etna/301-1-ger-DE/trashed/51845c0dc34fb57f09d59d8869753c6c.jpg\" original_filename=\"a16f7354.jpg\" mime_type=\"image/jpeg\" width=\"1008\" height=\"502\" alternative_text=\"Etna\" alias_key=\"1293033771\" timestamp=\"1381794980\"><original attribute_id=\"301\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"502\" Width=\"1008\" IsColor=\"1\"/><alias name=\"campaign\" filename=\"51845c0dc34fb57f09d59d8869753c6c_campaign.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-etna/301-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-etna/301-1-ger-DE/trashed/51845c0dc34fb57f09d59d8869753c6c_campaign.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"383\" alias_key=\"3158711315\" timestamp=\"1382071020\" is_valid=\"1\"/></ezimage>\n','ezimage',301,'ger-DE',2,0,'',1),(0,187,69,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Mount Etna photographed by <link url_id=\"39\">Arend Vermazeren</link> / Flickr, CC License.</paragraph></section>','ezxmltext',302,'ger-DE',2,0,'',1),(0,188,69,0,0,'','ezdatetime',303,'ger-DE',2,0,'',1),(0,189,69,0,0,'','ezsrrating',304,'ger-DE',2,0,'',1),(0,190,69,0,NULL,'','ezkeyword',305,'ger-DE',2,0,'',1),(0,191,69,0,1,'','ezgmaplocation',306,'ger-DE',2,0,'Skien, Norway',1),(0,192,69,1,1,'','ezcomcomments',307,'ger-DE',2,0,'',1),(0,219,70,0,NULL,'Travel','ezstring',308,'ger-DE',2,0,'travel',1),(0,219,70,0,NULL,'Travel','ezstring',308,'ger-DE',2,0,'travel',2),(0,220,70,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_6c7f907b831a819ed8562e3ddce5b264\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_1e1e355c8da3c92e80354f243c6dd37b\">\n      <name>Campaign</name>\n      <zone_id>6c7f907b831a819ed8562e3ddce5b264</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_250bcab3ea2929edbf72ece096dcdb7a\">\n      <name>Amazon Gallery</name>\n      <zone_id>6c7f907b831a819ed8562e3ddce5b264</zone_id>\n      <type>Gallery</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_656b2182b4be70f18ca7b44b3fbb6dbe\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_4d2f5e57d2a2528b276cd9e776a62e42\">\n      <name>Featured Video</name>\n      <zone_id>656b2182b4be70f18ca7b44b3fbb6dbe</zone_id>\n      <type>Video</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_f36743396b8c36f10b467aa52f133e58\">\n      <name>Travel Information</name>\n      <zone_id>656b2182b4be70f18ca7b44b3fbb6dbe</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n</page>\n','ezpage',309,'ger-DE',2,0,'',1),(0,220,70,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_6c7f907b831a819ed8562e3ddce5b264\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_1e1e355c8da3c92e80354f243c6dd37b\">\n      <name>Campaign</name>\n      <zone_id>6c7f907b831a819ed8562e3ddce5b264</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_250bcab3ea2929edbf72ece096dcdb7a\">\n      <name>Amazon Gallery</name>\n      <zone_id>6c7f907b831a819ed8562e3ddce5b264</zone_id>\n      <type>Gallery</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_656b2182b4be70f18ca7b44b3fbb6dbe\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_4d2f5e57d2a2528b276cd9e776a62e42\">\n      <name>Featured Video</name>\n      <zone_id>656b2182b4be70f18ca7b44b3fbb6dbe</zone_id>\n      <type>Video</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n    <block id=\"id_f36743396b8c36f10b467aa52f133e58\">\n      <name>Travel Information</name>\n      <zone_id>656b2182b4be70f18ca7b44b3fbb6dbe</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n</page>\n','ezpage',309,'ger-DE',2,0,'',2),(0,245,71,0,NULL,'Peruvian Amazon','ezstring',310,'ger-DE',2,0,'peruvian amazon',1),(0,246,71,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',311,'ger-DE',2,0,'',1),(0,247,71,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',312,'ger-DE',2,0,'',1),(0,248,71,0,NULL,'','ezobjectrelation',313,'ger-DE',2,0,'',1),(0,249,71,0,NULL,'','ezkeyword',314,'ger-DE',2,0,'',1),(0,236,72,0,NULL,'Amazon Side River','ezstring',315,'ger-DE',2,0,'amazon side river',1),(0,237,72,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',316,'ger-DE',2,0,'',1),(0,238,72,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"c077460b33068b0188a9dd5140d186d7.jpg\" suffix=\"jpg\" basename=\"c077460b33068b0188a9dd5140d186d7\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/trashed/c077460b33068b0188a9dd5140d186d7.jpg\" original_filename=\"7d1afcb4.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Amazon Side River\" alias_key=\"1293033771\" timestamp=\"1381794981\"><original attribute_id=\"317\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"c077460b33068b0188a9dd5140d186d7_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/trashed/c077460b33068b0188a9dd5140d186d7_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071022\" is_valid=\"1\"/></ezimage>\n','ezimage',317,'ger-DE',2,0,'',1),(0,239,72,0,0,'','ezsrrating',318,'ger-DE',2,0,'',1),(0,240,72,0,NULL,'','ezkeyword',319,'ger-DE',2,0,'',1),(0,236,73,0,NULL,'River Boat','ezstring',320,'ger-DE',2,0,'river boat',1),(0,237,73,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',321,'ger-DE',2,0,'',1),(0,238,73,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"57e32bab4ae215aa42766fa34edc1d3d.jpg\" suffix=\"jpg\" basename=\"57e32bab4ae215aa42766fa34edc1d3d\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/trashed/57e32bab4ae215aa42766fa34edc1d3d.jpg\" original_filename=\"bbbbc2fe.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Old River Boat\" alias_key=\"1293033771\" timestamp=\"1381794982\"><original attribute_id=\"322\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"57e32bab4ae215aa42766fa34edc1d3d_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/trashed/57e32bab4ae215aa42766fa34edc1d3d_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071021\" is_valid=\"1\"/></ezimage>\n','ezimage',322,'ger-DE',2,0,'',1),(0,239,73,0,0,'','ezsrrating',323,'ger-DE',2,0,'',1),(0,240,73,0,NULL,'','ezkeyword',324,'ger-DE',2,0,'',1),(0,236,74,0,NULL,'Flying Bird','ezstring',325,'ger-DE',2,0,'flying bird',1),(0,237,74,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',326,'ger-DE',2,0,'',1),(0,238,74,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"fd136a686eec1dbdf7a712c26683513e.jpg\" suffix=\"jpg\" basename=\"fd136a686eec1dbdf7a712c26683513e\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/trashed/fd136a686eec1dbdf7a712c26683513e.jpg\" original_filename=\"9675a24a.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Flying Bird\" alias_key=\"1293033771\" timestamp=\"1381794982\"><original attribute_id=\"327\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"fd136a686eec1dbdf7a712c26683513e_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/trashed/fd136a686eec1dbdf7a712c26683513e_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071024\" is_valid=\"1\"/></ezimage>\n','ezimage',327,'ger-DE',2,0,'',1),(0,239,74,0,0,'','ezsrrating',328,'ger-DE',2,0,'',1),(0,240,74,0,NULL,'','ezkeyword',329,'ger-DE',2,0,'',1),(0,236,75,0,NULL,'Turtles','ezstring',330,'ger-DE',2,0,'turtles',1),(0,237,75,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',331,'ger-DE',2,0,'',1),(0,238,75,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"4d8da5de9fcaeb1ddb5f5ec72770942a.jpg\" suffix=\"jpg\" basename=\"4d8da5de9fcaeb1ddb5f5ec72770942a\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/trashed/4d8da5de9fcaeb1ddb5f5ec72770942a.jpg\" original_filename=\"236e8a89.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Turtles\" alias_key=\"1293033771\" timestamp=\"1381794982\"><original attribute_id=\"332\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"4d8da5de9fcaeb1ddb5f5ec72770942a_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/trashed/4d8da5de9fcaeb1ddb5f5ec72770942a_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071024\" is_valid=\"1\"/></ezimage>\n','ezimage',332,'ger-DE',2,0,'',1),(0,239,75,0,0,'','ezsrrating',333,'ger-DE',2,0,'',1),(0,240,75,0,NULL,'','ezkeyword',334,'ger-DE',2,0,'',1),(0,236,76,0,NULL,'Hat on a Stick','ezstring',335,'ger-DE',2,0,'hat on a stick',1),(0,237,76,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',336,'ger-DE',2,0,'',1),(0,238,76,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"922cf4c2e88efe4cdc5457f34a8ac9cb.jpg\" suffix=\"jpg\" basename=\"922cf4c2e88efe4cdc5457f34a8ac9cb\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/trashed/922cf4c2e88efe4cdc5457f34a8ac9cb.jpg\" original_filename=\"2233e737.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Hat on a stick\" alias_key=\"1293033771\" timestamp=\"1381794982\"><original attribute_id=\"337\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"922cf4c2e88efe4cdc5457f34a8ac9cb_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/trashed/922cf4c2e88efe4cdc5457f34a8ac9cb_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071024\" is_valid=\"1\"/></ezimage>\n','ezimage',337,'ger-DE',2,0,'',1),(0,239,76,0,0,'','ezsrrating',338,'ger-DE',2,0,'',1),(0,240,76,0,NULL,'','ezkeyword',339,'ger-DE',2,0,'',1),(0,236,77,0,NULL,'Heron in the Water','ezstring',340,'ger-DE',2,0,'heron in the water',1),(0,237,77,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',341,'ger-DE',2,0,'',1),(0,238,77,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"fde2b25e52d32b80b4e8e82a9e2ace42.jpg\" suffix=\"jpg\" basename=\"fde2b25e52d32b80b4e8e82a9e2ace42\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/trashed/fde2b25e52d32b80b4e8e82a9e2ace42.jpg\" original_filename=\"347b47f7.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"478\" alternative_text=\"Heron\" alias_key=\"1293033771\" timestamp=\"1381794983\"><original attribute_id=\"342\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"478\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"fde2b25e52d32b80b4e8e82a9e2ace42_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/trashed/fde2b25e52d32b80b4e8e82a9e2ace42_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071023\" is_valid=\"1\"/></ezimage>\n','ezimage',342,'ger-DE',2,0,'',1),(0,239,77,0,0,'','ezsrrating',343,'ger-DE',2,0,'',1),(0,240,77,0,NULL,'','ezkeyword',344,'ger-DE',2,0,'',1),(0,236,78,0,NULL,'Bird Island','ezstring',345,'ger-DE',2,0,'bird island',1),(0,237,78,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',346,'ger-DE',2,0,'',1),(0,238,78,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"acbb1752127ab5759c1629dea776ac42.jpg\" suffix=\"jpg\" basename=\"acbb1752127ab5759c1629dea776ac42\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/trashed/acbb1752127ab5759c1629dea776ac42.jpg\" original_filename=\"1c936c89.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Lots of birds\" alias_key=\"1293033771\" timestamp=\"1381794983\"><original attribute_id=\"347\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"acbb1752127ab5759c1629dea776ac42_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/trashed/acbb1752127ab5759c1629dea776ac42_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071023\" is_valid=\"1\"/></ezimage>\n','ezimage',347,'ger-DE',2,0,'',1),(0,239,78,0,0,'','ezsrrating',348,'ger-DE',2,0,'',1),(0,240,78,0,NULL,'','ezkeyword',349,'ger-DE',2,0,'',1),(0,236,79,0,NULL,'Aligator','ezstring',350,'ger-DE',2,0,'aligator',1),(0,237,79,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',351,'ger-DE',2,0,'',1),(0,238,79,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"914980befc15af2e0746ef34a44a64fe.jpg\" suffix=\"jpg\" basename=\"914980befc15af2e0746ef34a44a64fe\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/trashed/914980befc15af2e0746ef34a44a64fe.jpg\" original_filename=\"81b898d7.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Aligator\" alias_key=\"1293033771\" timestamp=\"1381794983\"><original attribute_id=\"352\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"gallery\" filename=\"914980befc15af2e0746ef34a44a64fe_gallery.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/trashed/914980befc15af2e0746ef34a44a64fe_gallery.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"390\" alias_key=\"935385201\" timestamp=\"1382071022\" is_valid=\"1\"/></ezimage>\n','ezimage',352,'ger-DE',2,0,'',1),(0,239,79,0,0,'','ezsrrating',353,'ger-DE',2,0,'',1),(0,240,79,0,NULL,'','ezkeyword',354,'ger-DE',2,0,'',1),(0,274,80,0,NULL,'Piranha Fishing','ezstring',355,'ger-DE',2,0,'piranha fishing',1),(0,275,80,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',356,'ger-DE',2,0,'',1),(0,276,80,0,NULL,'','ezbinaryfile',357,'ger-DE',2,0,'',1),(0,277,80,0,0,'','ezsrrating',358,'ger-DE',2,0,'',1),(0,278,80,1,1,'','ezcomcomments',359,'ger-DE',2,0,'',1),(0,4,81,0,NULL,'Information','ezstring',360,'ger-DE',3,0,'information',1),(0,155,81,0,NULL,'','ezstring',361,'ger-DE',3,0,'',1),(0,119,81,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',362,'ger-DE',3,0,'',1),(0,156,81,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',363,'ger-DE',3,0,'',1),(364,158,81,0,1,'','ezboolean',364,'ger-DE',3,1,'',1),(0,181,82,0,NULL,'Largest City Without Road Connection','ezstring',365,'ger-DE',2,0,'largest city without road connection',1),(0,182,82,0,NULL,'','ezstring',366,'ger-DE',2,0,'',1),(0,183,82,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',367,'ger-DE',2,0,'',1),(0,184,82,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Iquitos is the largest city in the <link xhtml:title=\"Peruvian rainforest\" url_id=\"40\">Peruvian rainforest</link>, with a population of 406,340. It is the capital of <link xhtml:title=\"Loreto Region\" url_id=\"41\">Loreto Region</link> and <link xhtml:title=\"Maynas Province\" url_id=\"42\">Maynas Province</link>.</paragraph></section>','ezxmltext',368,'ger-DE',2,0,'',1),(0,185,82,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Located on the <link xhtml:title=\"Amazon River\" url_id=\"43\">Amazon River</link>, it is only 106 m (348 ft) above sea level, although it is more than 3,000 km (1,864 mi) from the mouth of the Amazon at <link xhtml:title=\"Belém\" url_id=\"44\">Belém</link> (Brazil) on the Atlantic Ocean. It is situated 125 km (78 mi) downstream of the confluence of the <link xhtml:title=\"Ucayali River\" url_id=\"45\">Ucayali</link> and <link xhtml:title=\"Marañón River (Peru)\" url_id=\"46\">Marañón</link> rivers, the two main headwaters of the Amazon River. Iquitos has long been a major port in the <link xhtml:title=\"Amazon Basin\" url_id=\"47\">Amazon Basin</link>. It is surrounded by three rivers: the <link xhtml:title=\"Nanay\" url_id=\"48\">Nanay</link>, the <link xhtml:title=\"Itaya (river) (page does not exist)\" url_id=\"49\">Itaya</link>, and the Amazon.</paragraph><paragraph>The city can be reached only by airplane or boat, with the exception of a road to <link xhtml:title=\"Nauta\" url_id=\"50\">Nauta</link>, a small town roughly 100 km (62 mi) south. It is the largest city in the world which cannot be reached by road. Ocean vessels of 3,000 tons or 9,000 tons<custom name=\"sup\"><link anchor_name=\"cite_note-0\" url_id=\"51\">[1]</link></custom> and 5.5 metres (18 ft) <link xhtml:title=\"Draft (hull)\" url_id=\"52\">draft</link> can reach Iquitos from the Atlantic ocean, 3600 km away.</paragraph><paragraph>Most travel within the city is via bus, motorcycle, or the ubiquitous <link xhtml:title=\"Auto rickshaw\" url_id=\"53\">auto rickshaw</link> (mototaxi, motocarro or motokar), which is essentially a modified motorcycle with a cabin behind supported by two wheels, seating three. Transportation to nearby towns often requires a river trip via peque-peque, a small public motorized boat.</paragraph><paragraph>The climate is hot and humid, with an average relative humidity of 85%. The wet season lasts from around November to May, with the river reaching its highest point in May. The river is at its lowest in October.</paragraph><paragraph>For complete text visit Wikipedia: <link url_id=\"51\">http://en.wikipedia.org/wiki/Iquitos</link>This text is available under the <link url_id=\"54\">Creative Commons Attribution-ShareAlike License</link>; additional terms may apply. See <link url_id=\"55\">Terms of use</link> for details.</paragraph></section>','ezxmltext',369,'ger-DE',2,0,'',1),(0,186,82,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"4e1df6115c63b1ea36a79a9a478130d2.jpg\" suffix=\"jpg\" basename=\"4e1df6115c63b1ea36a79a9a478130d2\" dirpath=\"var/ezdemo_site/storage/images/travel/information/largest-city-without-road-connection/370-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/information/largest-city-without-road-connection/370-1-ger-DE/trashed/4e1df6115c63b1ea36a79a9a478130d2.jpg\" original_filename=\"e410cf0a.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"Kids in Iquitos\" alias_key=\"1293033771\" timestamp=\"1381794984\"><original attribute_id=\"370\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/></ezimage>\n','ezimage',370,'ger-DE',2,0,'',1),(0,187,82,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Kids in Iquitos</paragraph></section>','ezxmltext',371,'ger-DE',2,0,'',1),(0,188,82,0,0,'','ezdatetime',372,'ger-DE',2,0,'',1),(0,189,82,0,0,'','ezsrrating',373,'ger-DE',2,0,'',1),(0,190,82,0,NULL,'','ezkeyword',374,'ger-DE',2,0,'',1),(0,191,82,0,1,'','ezgmaplocation',375,'ger-DE',2,0,'Iquitos, Peru',1),(0,192,82,1,1,'','ezcomcomments',376,'ger-DE',2,0,'',1),(0,181,83,0,NULL,'Amazon Jungle','ezstring',377,'ger-DE',2,0,'amazon jungle',1),(0,182,83,0,NULL,'','ezstring',378,'ger-DE',2,0,'',1),(0,183,83,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',379,'ger-DE',2,0,'',1),(0,184,83,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>The Amazon Rainforest, also known in English as Amazoniaor the Amazon Jungle, is a <link xhtml:title=\"Tropical and subtropical moist broadleaf forests\" url_id=\"56\">moist broadleaf forest</link> that covers most of the <link xhtml:title=\"Amazon Basin\" url_id=\"47\">Amazon Basin</link> of South America.</paragraph></section>','ezxmltext',380,'ger-DE',2,0,'',1),(0,185,83,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This basin encompasses seven million square kilometers (1.7 billion acres), of which five and a half million square kilometers (1.4 billion acres) are covered by the rainforest. This region includes territory belonging to nine nations. The majority of the forest is contained <link xhtml:title=\"Brazilian Amazon\" url_id=\"57\">within Brazil</link>, with 60% of the rainforest, followed by <link xhtml:title=\"Peruvian Amazon\" url_id=\"58\">Peru</link> with 13%, <link xhtml:title=\"Amazon Region of Colombia\" url_id=\"59\">Colombia</link> with 10%, and with minor amounts in, <link xhtml:title=\"Venezuela\" url_id=\"60\">Venezuela</link>, <link xhtml:title=\"Ecuador\" url_id=\"61\">Ecuador</link>,<link xhtml:title=\"Bolivia\" url_id=\"62\">Bolivia</link>, <link xhtml:title=\"Guyana\" url_id=\"63\">Guyana</link>, <link xhtml:title=\"Suriname\" url_id=\"64\">Suriname</link> and <link xhtml:title=\"French Guiana\" url_id=\"65\">French Guiana</link>. States or departments in four nations contain \"<link xhtml:title=\"Amazonas (disambiguation)\" url_id=\"66\">Amazonas</link>\" in their names. The Amazon represents over half of the planet\'s remaining <link xhtml:title=\"Rainforest\" url_id=\"67\">rainforests</link>, and it comprises the largest and most species-rich tract of <link xhtml:title=\"Tropical rainforest\" url_id=\"68\">tropical rainforest</link> in the world.</paragraph><paragraph><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For complete text visit Wikipedia: <link url_id=\"69\">http://en.wikipedia.org/wiki/Amazon_jungle</link></line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">This text is available under the <link target=\"_self\" url_id=\"54\">Creative Commons Attribution-ShareAlike License</link>; additional terms may apply. See <link target=\"_self\" url_id=\"55\">Terms of use</link> for details.</line></paragraph></section>','ezxmltext',381,'ger-DE',2,0,'',1),(0,186,83,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"413285ceedee2abf49334374d8ec149f.jpg\" suffix=\"jpg\" basename=\"413285ceedee2abf49334374d8ec149f\" dirpath=\"var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/trashed/413285ceedee2abf49334374d8ec149f.jpg\" original_filename=\"44525552.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"512\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794985\"><original attribute_id=\"382\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"512\" Width=\"770\" IsColor=\"1\"/><alias name=\"contentgrid\" filename=\"413285ceedee2abf49334374d8ec149f_contentgrid.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/trashed/413285ceedee2abf49334374d8ec149f_contentgrid.jpg\" mime_type=\"image/jpeg\" width=\"370\" height=\"160\" alias_key=\"4192414807\" timestamp=\"1382071021\" is_valid=\"1\"/></ezimage>\n','ezimage',382,'ger-DE',2,0,'',1),(0,187,83,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',383,'ger-DE',2,0,'',1),(0,188,83,0,0,'','ezdatetime',384,'ger-DE',2,0,'',1),(0,189,83,0,0,'','ezsrrating',385,'ger-DE',2,0,'',1),(0,190,83,0,NULL,'','ezkeyword',386,'ger-DE',2,0,'',1),(0,191,83,0,1,'','ezgmaplocation',387,'ger-DE',2,0,'Iquitos, Peru',1),(0,192,83,1,1,'','ezcomcomments',388,'ger-DE',2,0,'',1),(0,181,84,0,NULL,'Floating Village in Iquitos, Loreto','ezstring',389,'ger-DE',2,0,'floating village in iquitos, loreto',1),(0,182,84,0,NULL,'','ezstring',390,'ger-DE',2,0,'',1),(0,183,84,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',391,'ger-DE',2,0,'',1),(0,184,84,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>You find floating villages around Iquitos in the Loreto region in Peru. </paragraph></section>','ezxmltext',392,'ger-DE',2,0,'',1),(0,185,84,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Loreto is <link xhtml:title=\"Peru\" url_id=\"70\">Peru</link>\'s northernmost <link xhtml:title=\"Regions of Peru\" url_id=\"71\">region</link>. Covering almost one-third of Peru\'s territory, Loreto is by far the nation\'s largest region and also one of the most sparsely populated ones, due to its remote location in the <link xhtml:title=\"Amazon Rainforest\" url_id=\"72\">Amazon Rainforest</link>. Its capital is the city of <link xhtml:title=\"Iquitos\" url_id=\"51\">Iquitos</link>.</paragraph><section><header>Geography</header><paragraph>Loreto\'s large territory comprises parts of the High and Low Jungle, and all of its surface is covered with thick <link xhtml:title=\"Vegetation\" url_id=\"73\">vegetation</link>.</paragraph><paragraph>This territory has wide river flood plains, which are covered with rainwater and usually are swamped in summer. In these flood areas there are elevated sectors calledrestingas, which always remain above water, even in times of the greatest swellings. There are numerous <link xhtml:title=\"Lagoon\" url_id=\"74\">lagoons</link> known as cochas and tipishcas, surrounded by marshy areas with abundant grass vegetation.</paragraph><paragraph>Numerous rivers cross Loreto\'s territory, all of which are part of the Amazonian Hydrographical System. Most of them are navigable. The main river crossing the region is the<link xhtml:title=\"Amazon River\" url_id=\"43\">Amazon</link>, one of the world\'s most important rivers. Its numerous curves are always changing and sometimes make for a difficult journey. The width between banks of the Amazon sometimes measures a staggering 4 km. The <link xhtml:title=\"Yavari River\" url_id=\"75\">Yavari River</link> runs from Peru to Brazil, the <link xhtml:title=\"Içá River\" url_id=\"76\">Putumayo</link> River serves as part of the border with Colombia, and the <link xhtml:title=\"Ucayali\" url_id=\"77\">Ucayali</link>and <link xhtml:title=\"Marañón River\" url_id=\"78\">Marañón</link> rivers penetrate Loreto after going through the <link xhtml:title=\"Pongo de Manseriche\" url_id=\"79\">Pongo de Manseriche</link>.</paragraph><paragraph><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For complete text visit Wikipedia: <link url_id=\"41\">http://en.wikipedia.org/wiki/Loreto_Region</link></line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">This text is available under the <link target=\"_self\" url_id=\"54\">Creative Commons Attribution-ShareAlike License</link>; additional terms may apply. See <link target=\"_self\" url_id=\"55\">Terms of use</link> for details.</line></paragraph></section></section>','ezxmltext',393,'ger-DE',2,0,'',1),(0,186,84,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"6a00dde5cbe5b09c17daaee7c245311f.jpg\" suffix=\"jpg\" basename=\"6a00dde5cbe5b09c17daaee7c245311f\" dirpath=\"var/ezdemo_site/storage/images/travel/information/floating-village-in-iquitos-loreto/394-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/travel/information/floating-village-in-iquitos-loreto/394-1-ger-DE/trashed/6a00dde5cbe5b09c17daaee7c245311f.jpg\" original_filename=\"1adcd08a.jpg\" mime_type=\"image/jpeg\" width=\"770\" height=\"476\" alternative_text=\"Floating Village in Iquitos\" alias_key=\"1293033771\" timestamp=\"1381794985\"><original attribute_id=\"394\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"476\" Width=\"770\" IsColor=\"1\"/></ezimage>\n','ezimage',394,'ger-DE',2,0,'',1),(0,187,84,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Floating Village in Iquitos</paragraph></section>','ezxmltext',395,'ger-DE',2,0,'',1),(0,188,84,0,0,'','ezdatetime',396,'ger-DE',2,0,'',1),(0,189,84,0,0,'','ezsrrating',397,'ger-DE',2,0,'',1),(0,190,84,0,NULL,'','ezkeyword',398,'ger-DE',2,0,'',1),(0,191,84,0,1,'','ezgmaplocation',399,'ger-DE',2,0,'Iquitos, Peru',1),(0,192,84,1,1,'','ezcomcomments',400,'ger-DE',2,0,'',1),(0,219,85,0,NULL,'City Shopping','ezstring',401,'ger-DE',2,0,'city shopping',1),(0,220,85,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>2ZonesLayout1</zone_layout>\n  <zone id=\"id_1b6149311bf4ece4717e6fff905e148c\">\n    <zone_identifier>left</zone_identifier>\n    <block id=\"id_70150fb6cf7608e841868b3fe925b58c\">\n      <name></name>\n      <zone_id>1b6149311bf4ece4717e6fff905e148c</zone_id>\n      <type>Campaign</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n  <zone id=\"id_6669bce3079221f326d4eb4121447fd9\">\n    <zone_identifier>right</zone_identifier>\n    <block id=\"id_4f1c2e8abfb4f163fbf256a29af0a24e\">\n      <name>Products</name>\n      <zone_id>6669bce3079221f326d4eb4121447fd9</zone_id>\n      <type>ContentGrid</type>\n      <view>default</view>\n      <overflow_id></overflow_id>\n    </block>\n  </zone>\n</page>\n','ezpage',402,'ger-DE',2,0,'',1),(0,4,86,0,NULL,'Products','ezstring',403,'ger-DE',3,0,'products',1),(0,155,86,0,NULL,'','ezstring',404,'ger-DE',3,0,'',1),(0,119,86,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',405,'ger-DE',3,0,'',1),(0,156,86,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',406,'ger-DE',3,0,'',1),(407,158,86,0,1,'','ezboolean',407,'ger-DE',3,1,'',1),(0,201,87,0,NULL,'New York Cab','ezstring',408,'ger-DE',2,0,'new york cab',1),(0,202,87,0,NULL,'NYC101','ezstring',409,'ger-DE',2,0,'nyc101',1),(0,203,87,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is a sample product showing how you can use e-commerce in eZ Publish.</paragraph></section>','ezxmltext',410,'ger-DE',2,0,'',1),(0,204,87,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',411,'ger-DE',2,0,'',1),(0,205,87,142,NULL,'','ezprice',412,'ger-DE',2,14200,'',1),(0,206,87,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"f73dfd4da5acdd84bea5ad26efc90de5.jpg\" suffix=\"jpg\" basename=\"f73dfd4da5acdd84bea5ad26efc90de5\" dirpath=\"var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/trashed/f73dfd4da5acdd84bea5ad26efc90de5.jpg\" original_filename=\"e627f43d.jpg\" mime_type=\"image/jpeg\" width=\"500\" height=\"375\" alternative_text=\"NYC Cab\" alias_key=\"1293033771\" timestamp=\"1381794986\"><original attribute_id=\"413\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"375\" Width=\"500\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.8\" UserComment=\"Camera+ recipe?&#10;? effect: Cross Process\" UserCommentEncoding=\"ASCII\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">QXBwbGU=</item><item key=\"Model\" base64=\"1\">aVBob25l</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">Q2FtZXJhKyAyLjMuMw==</item><item key=\"DateTime\" base64=\"1\">MjAxMjowMzoyOCAxMjoxNzowMQ==</item><item key=\"HostComputer\" base64=\"1\">aVBob25lIChpUGhvbmUgT1MgNS4xKQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MjIy</item></array><array name=\"exif\"><item key=\"FNumber\" base64=\"1\">MTQvNQ==</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMjowMzoyOCAxMjoxNzowMQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMjowMzoyOCAxMjoxNzowMQ==</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAABDYW1lcmErIHJlY2lwZT8KPyBlZmZlY3Q6IENyb3NzIFByb2Nlc3M=</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">NTAw</item><item key=\"ExifImageLength\" base64=\"1\">Mzc1</item></array></information></ezimage>\n','ezimage',413,'ger-DE',2,0,'',1),(0,207,87,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>NYC Fast Cab</paragraph></section>','ezxmltext',414,'ger-DE',2,0,'',1),(0,208,87,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Distance</name><multioptions><multioption id=\"1\" name=\"\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"In City\" additional_price=\"10\"/><option id=\"2\" option_id=\"2\" value=\"To Airport\" additional_price=\"50\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',415,'ger-DE',2,0,'',1),(0,209,87,0,0,'','ezsrrating',416,'ger-DE',2,0,'',1),(0,210,87,0,NULL,'','ezkeyword',417,'ger-DE',2,0,'',1),(0,211,87,1,1,'','ezcomcomments',418,'ger-DE',2,0,'',1),(0,201,88,0,NULL,'City View','ezstring',419,'ger-DE',2,0,'city view',1),(0,202,88,0,NULL,'NYC103','ezstring',420,'ger-DE',2,0,'nyc103',1),(0,203,88,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Manhattan city view for sale.</paragraph></section>','ezxmltext',421,'ger-DE',2,0,'',1),(0,204,88,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',422,'ger-DE',2,0,'',1),(0,205,88,256,NULL,'','ezprice',423,'ger-DE',2,25600,'',1),(0,206,88,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"83e77dce7ef558f292e534d67591414b.jpg\" suffix=\"jpg\" basename=\"83e77dce7ef558f292e534d67591414b\" dirpath=\"var/ezdemo_site/storage/images/city-shopping/products/city-view/424-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/city-shopping/products/city-view/424-1-ger-DE/trashed/83e77dce7ef558f292e534d67591414b.jpg\" original_filename=\"5b3249df.jpg\" mime_type=\"image/jpeg\" width=\"450\" height=\"338\" alternative_text=\"City View\" alias_key=\"1293033771\" timestamp=\"1381794986\"><original attribute_id=\"424\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"338\" Width=\"450\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/7.4\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">TklLT04=</item><item key=\"Model\" base64=\"1\">RTk1MA==</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">MzAwLzE=</item><item key=\"YResolution\" base64=\"1\">MzAwLzE=</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">djk4MXAtNzk=</item><item key=\"DateTime\" base64=\"1\">MjAwMToxMjowMyAyMDo1MTowNQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MTgw</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MS8yNzY=</item><item key=\"FNumber\" base64=\"1\">MzcvNQ==</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">ODA=</item><item key=\"ExifVersion\" base64=\"1\">MDIxMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAwMToxMjowMyAyMDo1MTowNQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAwMToxMjowMyAyMDo1MTowNQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AAAAAQ==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">Mi8x</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8x</item><item key=\"MaxApertureValue\" base64=\"1\">MTMvNQ==</item><item key=\"MeteringMode\" base64=\"1\">Mg==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">MzYvNQ==</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">NDUw</item><item key=\"ExifImageLength\" base64=\"1\">MzM4</item></array></information></ezimage>\n','ezimage',424,'ger-DE',2,0,'',1),(0,207,88,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',425,'ger-DE',2,0,'',1),(0,208,88,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Direction</name><multioptions><multioption id=\"1\" name=\"\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"North\" additional_price=\"10\"/><option id=\"2\" option_id=\"2\" value=\"South\" additional_price=\"5\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',426,'ger-DE',2,0,'',1),(0,209,88,0,0,'','ezsrrating',427,'ger-DE',2,0,'',1),(0,210,88,0,NULL,'','ezkeyword',428,'ger-DE',2,0,'',1),(0,211,88,1,1,'','ezcomcomments',429,'ger-DE',2,0,'',1),(0,201,89,0,NULL,'Street Crossing','ezstring',430,'ger-DE',2,0,'street crossing',1),(0,202,89,0,NULL,'NYC102','ezstring',431,'ger-DE',2,0,'nyc102',1),(0,203,89,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Old street crossing for sale. Paint is a bit faded, but still quite visible.</paragraph></section>','ezxmltext',432,'ger-DE',2,0,'',1),(0,204,89,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',433,'ger-DE',2,0,'',1),(0,205,89,79,NULL,'','ezprice',434,'ger-DE',2,7900,'',1),(0,206,89,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"341aeb018f1ce2928367c3274deb72c2.jpg\" suffix=\"jpg\" basename=\"341aeb018f1ce2928367c3274deb72c2\" dirpath=\"var/ezdemo_site/storage/images/city-shopping/products/street-crossing/435-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/city-shopping/products/street-crossing/435-1-ger-DE/trashed/341aeb018f1ce2928367c3274deb72c2.jpg\" original_filename=\"01a8f40b.jpg\" mime_type=\"image/jpeg\" width=\"400\" height=\"242\" alternative_text=\"Old street crossing.\" alias_key=\"1293033771\" timestamp=\"1381794986\"><original attribute_id=\"435\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"242\" Width=\"400\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/2.8\" UserComment=\"Camera+ recipe?&#10;? scene: Clarity&#10;? crop: Freeform&#10;? effect: Tailfins (98%)\" UserCommentEncoding=\"ASCII\"><array name=\"ifd0\"><item key=\"Make\" base64=\"1\">QXBwbGU=</item><item key=\"Model\" base64=\"1\">aVBob25l</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">NzIvMQ==</item><item key=\"YResolution\" base64=\"1\">NzIvMQ==</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">Q2FtZXJhKyAyLjMuMw==</item><item key=\"DateTime\" base64=\"1\">MjAxMjowMzoxMSAyMjoxNDoxOQ==</item><item key=\"HostComputer\" base64=\"1\">aVBob25lIChpUGhvbmUgT1MgNS4wLjEp</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MjI0</item></array><array name=\"exif\"><item key=\"FNumber\" base64=\"1\">MTQvNQ==</item><item key=\"ExifVersion\" base64=\"1\">MDIyMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMjowMzoxMSAyMjoxNDoxOQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMjowMzoxMSAyMjoxNDoxOQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AAAAAQ==</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAABDYW1lcmErIHJlY2lwZT8KPyBzY2VuZTogQ2xhcml0eQo/IGNyb3A6IEZyZWVmb3JtCj8gZWZmZWN0OiBUYWlsZmlucyAoOTglKQ==</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">NDAw</item><item key=\"ExifImageLength\" base64=\"1\">MjQy</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item></array></information></ezimage>\n','ezimage',435,'ger-DE',2,0,'',1),(0,207,89,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',436,'ger-DE',2,0,'',1),(0,208,89,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Number</name><multioptions><multioption id=\"1\" name=\"\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"North South\" additional_price=\"10\"/><option id=\"2\" option_id=\"2\" value=\"East West\" additional_price=\"20\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',437,'ger-DE',2,0,'',1),(0,209,89,0,0,'','ezsrrating',438,'ger-DE',2,0,'',1),(0,210,89,0,NULL,'','ezkeyword',439,'ger-DE',2,0,'',1),(0,211,89,1,1,'','ezcomcomments',440,'ger-DE',2,0,'',1),(0,4,90,0,NULL,'Locations','ezstring',441,'ger-DE',3,0,'locations',1),(0,155,90,0,NULL,'','ezstring',442,'ger-DE',3,0,'',1),(0,119,90,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',443,'ger-DE',3,0,'',1),(0,156,90,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',444,'ger-DE',3,0,'',1),(445,158,90,0,1,'','ezboolean',445,'ger-DE',3,1,'',1),(0,181,91,0,NULL,'New York City','ezstring',446,'ger-DE',2,0,'new york city',1),(0,182,91,0,NULL,'','ezstring',447,'ger-DE',2,0,'',1),(0,183,91,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Administrator User\" email=\"bf@ez.no\"/></authors></ezauthor>\n','ezauthor',448,'ger-DE',2,0,'',1),(0,184,91,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>New York is the <link xhtml:title=\"List of United States cities by population\" url_id=\"80\">most populous city</link> in the <link xhtml:title=\"United States\" url_id=\"81\">United States</link> and the center of the <link xhtml:title=\"New York Metropolitan Area\" url_id=\"82\">New York Metropolitan Area</link>, one of the <link xhtml:title=\"List of metropolitan areas by population\" url_id=\"83\">most populous metropolitan areas</link> in the world.</paragraph></section>','ezxmltext',449,'ger-DE',2,0,'',1),(0,185,91,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>New York exerts a significant impact upon global commerce, finance, media, art, fashion, research, technology, education, and entertainment. The home of the <link xhtml:title=\"United Nations Headquarters\" url_id=\"84\">United Nations Headquarters</link>, New York is an important center for <link xhtml:title=\"Diplomacy\" url_id=\"85\">international diplomacy</link> and has been described as the cultural capital of the world. The city is also referred to as New York City or The City of New York to distinguish it from the <link xhtml:title=\"New York\" url_id=\"86\">State of New York</link>, of which it is a part.</paragraph><paragraph><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">For complete text visit Wikipedia: <link url_id=\"87\">http://en.wikipedia.org/wiki/New_York_City</link></line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">This text is available under the <link target=\"_self\" url_id=\"54\">Creative Commons Attribution-ShareAlike License</link>; additional terms may apply. See <link target=\"_self\" url_id=\"55\">Terms of use</link> for details.</line></paragraph></section>','ezxmltext',450,'ger-DE',2,0,'',1),(0,186,91,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"0a69cc3132e3fbfad7a2ee1d37ba7eb5.jpg\" suffix=\"jpg\" basename=\"0a69cc3132e3fbfad7a2ee1d37ba7eb5\" dirpath=\"var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/trashed/0a69cc3132e3fbfad7a2ee1d37ba7eb5.jpg\" original_filename=\"90bbe723.jpg\" mime_type=\"image/jpeg\" width=\"771\" height=\"578\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1381794987\"><original attribute_id=\"451\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"578\" Width=\"771\" IsColor=\"1\"/><alias name=\"contentgrid\" filename=\"0a69cc3132e3fbfad7a2ee1d37ba7eb5_contentgrid.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/trashed\" url=\"var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/trashed/0a69cc3132e3fbfad7a2ee1d37ba7eb5_contentgrid.jpg\" mime_type=\"image/jpeg\" width=\"370\" height=\"160\" alias_key=\"4192414807\" timestamp=\"1382071021\" is_valid=\"1\"/></ezimage>\n','ezimage',451,'ger-DE',2,0,'',1),(0,187,91,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',452,'ger-DE',2,0,'',1),(0,188,91,0,0,'','ezdatetime',453,'ger-DE',2,0,'',1),(0,189,91,0,0,'','ezsrrating',454,'ger-DE',2,0,'',1),(0,190,91,0,NULL,'','ezkeyword',455,'ger-DE',2,0,'',1),(0,191,91,0,1,'','ezgmaplocation',456,'ger-DE',2,0,'Manhattan New York',1),(0,192,91,1,1,'','ezcomcomments',457,'ger-DE',2,0,'',1),(0,4,92,0,NULL,'Partner Section','ezstring',458,'ger-DE',3,0,'partner section',1),(0,155,92,0,NULL,'','ezstring',459,'ger-DE',3,0,'',1),(0,119,92,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>In this section you find information that is restricted based on login privileges. This is done by assigning a non-public section to the content, in this case \"Restricted\" is used.</paragraph></section>','ezxmltext',460,'ger-DE',3,0,'',1),(0,156,92,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',461,'ger-DE',3,0,'',1),(462,158,92,0,1,'','ezboolean',462,'ger-DE',3,1,'',1),(0,230,93,0,NULL,'eZ Logo Black','ezstring',463,'ger-DE',2,0,'ez logo black',1),(0,231,93,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>150 DPI PNG version of the eZ Logo.</paragraph></section>','ezxmltext',464,'ger-DE',2,0,'',1),(0,232,93,0,NULL,'','ezbinaryfile',465,'ger-DE',2,0,'',1),(0,233,93,0,0,'','ezsrrating',466,'ger-DE',2,0,'',1),(0,234,93,0,NULL,'','ezkeyword',467,'ger-DE',2,0,'',1),(0,235,93,1,1,'','ezcomcomments',468,'ger-DE',2,0,'',1),(0,230,94,0,NULL,'eZ Logo White','ezstring',469,'ger-DE',2,0,'ez logo white',1),(0,231,94,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>eZ Logo 150DPI in PNG format.</paragraph></section>','ezxmltext',470,'ger-DE',2,0,'',1),(0,232,94,0,NULL,'','ezbinaryfile',471,'ger-DE',2,0,'',1),(0,233,94,0,0,'','ezsrrating',472,'ger-DE',2,0,'',1),(0,234,94,0,NULL,'','ezkeyword',473,'ger-DE',2,0,'',1),(0,235,94,1,1,'','ezcomcomments',474,'ger-DE',2,0,'',1),(0,4,95,0,NULL,'Logos','ezstring',475,'ger-DE',3,0,'logos',1),(0,155,95,0,NULL,'','ezstring',476,'ger-DE',3,0,'',1),(0,119,95,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',477,'ger-DE',3,0,'',1),(0,156,95,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',478,'ger-DE',3,0,'',1),(479,158,95,0,1,'','ezboolean',479,'ger-DE',3,1,'',1),(0,221,96,0,NULL,'Partner Wiki','ezstring',480,'ger-DE',2,0,'partner wiki',1),(0,222,96,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is an example of Wiki content in the restricted partner section.</paragraph><section><header>Heading</header><paragraph>Headings are automatically used to generate a table of contents for simpler navigation in larger pieces of content.</paragraph></section></section>','ezxmltext',481,'ger-DE',2,0,'',1),(0,223,96,0,0,'','ezsrrating',482,'ger-DE',2,0,'',1),(0,224,96,0,NULL,'','ezkeyword',483,'ger-DE',2,0,'',1),(0,225,96,1,1,'','ezcomcomments',484,'ger-DE',2,0,'',1),(0,226,96,0,0,'','ezboolean',485,'ger-DE',2,0,'',1),(0,193,97,0,NULL,'Blog','ezstring',486,'ger-DE',2,0,'blog',1),(0,194,97,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>','ezxmltext',487,'ger-DE',2,0,'',1),(0,195,97,0,NULL,'','ezkeyword',488,'ger-DE',2,0,'',1),(0,196,98,0,NULL,'Example Blog Post','ezstring',489,'ger-DE',2,0,'example blog post',1),(0,197,98,0,1045487555,'<?xml version=\"1.0\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>This is a sample post for showing how a corporate blog can be integrated into your eZ Publish site.</paragraph><paragraph>You can also refer to other content on the site as the gallery below:</paragraph><paragraph xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><embed view=\"embed\" size=\"medium\" custom:offset=\"0\" custom:limit=\"5\" object_id=\"71\"/></paragraph></section>\n','ezxmltext',490,'ger-DE',2,0,'',1),(0,198,98,0,1332932400,'','ezdatetime',491,'ger-DE',2,1332932400,'',1),(0,199,98,0,NULL,'','ezkeyword',492,'ger-DE',2,0,'',1),(0,200,98,1,1,'','ezcomcomments',493,'ger-DE',2,0,'',1),(0,212,99,0,NULL,'Contact Us','ezstring',494,'ger-DE',2,0,'contact us',1),(0,213,99,0,1045487555,'<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Please fill in the form below to contact us.</paragraph><paragraph>You can also reach us at:</paragraph><paragraph><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\"><strong>Company Name</strong></line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Address</line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">City</line><line xmlns:tmp=\"http://ez.no/namespaces/ezpublish3/temporary/\">Country </line></paragraph></section>','ezxmltext',495,'ger-DE',2,0,'',1),(0,214,99,0,NULL,'','ezstring',496,'ger-DE',2,0,'',1),(0,215,99,0,NULL,'','ezstring',497,'ger-DE',2,0,'',1),(0,216,99,0,NULL,'','eztext',498,'ger-DE',2,0,'',1),(0,217,99,0,NULL,'','ezemail',499,'ger-DE',2,0,'',1),(0,218,99,0,NULL,'','ezemail',500,'ger-DE',2,0,'',1),(0,279,54,0,88,'Site map','ezurl',501,'ger-DE',2,0,'',2),(0,280,54,0,89,'Tag cloud','ezurl',502,'ger-DE',2,0,'',2),(0,281,54,0,NULL,'Login','ezstring',503,'ger-DE',2,0,'login',2),(0,282,54,0,NULL,'Logout','ezstring',504,'ger-DE',2,0,'logout',2),(0,283,54,0,NULL,'My profile','ezstring',505,'ger-DE',2,0,'my profile',2),(0,284,54,0,NULL,'Register','ezstring',506,'ger-DE',2,0,'register',2),(0,285,54,0,NULL,'/rss/feed/my_feed','ezstring',507,'ger-DE',2,0,'/rss/feed/my_feed',2),(0,286,54,0,NULL,'Shopping basket','ezstring',508,'ger-DE',2,0,'shopping basket',2),(0,287,54,0,NULL,'Site settings','ezstring',509,'ger-DE',2,0,'site settings',2),(0,288,54,0,NULL,'Copyright &#169; 2013 <a href=\"http://ez.no\" title=\"eZ Systems\">eZ Systems AS</a> (except where otherwise noted). All rights reserved.','eztext',510,'ger-DE',2,0,'',2),(0,289,54,0,0,'','ezboolean',511,'ger-DE',2,0,'',2),(0,290,54,0,NULL,'','eztext',512,'ger-DE',2,0,'',2),(0,6,100,0,NULL,'Partners','ezstring',513,'ger-DE',3,0,'partners',1),(0,7,100,0,NULL,'','ezstring',514,'ger-DE',3,0,'',1),(0,291,41,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',515,'ger-DE',2,0,'',1),(0,291,45,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',516,'ger-DE',2,0,'',1),(0,291,49,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',517,'ger-DE',2,0,'',1),(0,291,50,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',518,'ger-DE',2,0,'',1),(0,291,51,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',519,'ger-DE',2,0,'',1),(0,291,56,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',520,'ger-DE',2,0,'',1),(0,291,59,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',521,'ger-DE',2,0,'',1),(0,291,64,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',522,'ger-DE',2,0,'',1),(0,291,81,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',523,'ger-DE',2,0,'',1),(0,291,86,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',524,'ger-DE',2,0,'',1),(0,291,90,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',525,'ger-DE',2,0,'',1),(0,291,92,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',526,'ger-DE',2,0,'',1),(0,291,95,0,NULL,'<?xml version=\"1.0\"?>\n<page/>\n','ezpage',527,'ger-DE',2,0,'',1),(0,292,41,0,NULL,'','ezkeyword',528,'ger-DE',2,0,'',1),(0,292,45,0,NULL,'','ezkeyword',529,'ger-DE',2,0,'',1),(0,292,49,0,NULL,'','ezkeyword',530,'ger-DE',2,0,'',1),(0,292,50,0,NULL,'','ezkeyword',531,'ger-DE',2,0,'',1),(0,292,51,0,NULL,'','ezkeyword',532,'ger-DE',2,0,'',1),(0,292,56,0,NULL,'','ezkeyword',533,'ger-DE',2,0,'',1),(0,292,59,0,NULL,'','ezkeyword',534,'ger-DE',2,0,'',1),(0,292,64,0,NULL,'','ezkeyword',535,'ger-DE',2,0,'',1),(0,292,81,0,NULL,'','ezkeyword',536,'ger-DE',2,0,'',1),(0,292,86,0,NULL,'','ezkeyword',537,'ger-DE',2,0,'',1),(0,292,90,0,NULL,'','ezkeyword',538,'ger-DE',2,0,'',1),(0,292,92,0,NULL,'','ezkeyword',539,'ger-DE',2,0,'',1),(0,292,95,0,NULL,'','ezkeyword',540,'ger-DE',2,0,'',1),(0,4,101,0,NULL,'Foods','ezstring',541,'ger-DE',3,0,'foods',1),(0,4,101,0,NULL,'Pizza Hollywood','ezstring',541,'ger-DE',3,0,'pizza hollywood',2),(0,155,101,0,NULL,'','ezstring',542,'ger-DE',3,0,'',1),(0,155,101,0,NULL,'','ezstring',542,'ger-DE',3,0,'',2),(0,119,101,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',543,'ger-DE',3,0,'',1),(0,119,101,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',543,'ger-DE',3,0,'',2),(0,156,101,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',544,'ger-DE',3,0,'',1),(0,156,101,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',544,'ger-DE',3,0,'',2),(545,158,101,0,1,'','ezboolean',545,'ger-DE',3,1,'',1),(545,158,101,0,1,'','ezboolean',545,'ger-DE',3,1,'',2),(0,291,101,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>CallForActionLayout</zone_layout>\n  <zone id=\"id_b496199cac215518b134c1afe190879a\">\n    <zone_identifier>main</zone_identifier>\n  </zone>\n</page>\n','ezpage',546,'ger-DE',3,0,'',1),(0,291,101,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>CallForActionLayout</zone_layout>\n  <zone id=\"id_b496199cac215518b134c1afe190879a\">\n    <zone_identifier>main</zone_identifier>\n  </zone>\n</page>\n','ezpage',546,'ger-DE',3,0,'',2),(0,292,101,0,NULL,'','ezkeyword',547,'ger-DE',3,0,'',1),(0,292,101,0,NULL,'','ezkeyword',547,'ger-DE',3,0,'',2),(0,300,122,0,NULL,'Pizza','ezstring',730,'ger-DE',2,0,'pizza',1),(0,300,122,0,NULL,'Pizza Klassiker','ezstring',730,'ger-DE',2,0,'pizza klassiker',2),(0,300,122,0,NULL,'Pizza','ezstring',730,'ger-DE',2,0,'pizza',3),(0,300,123,0,NULL,'From Italy','ezstring',731,'ger-DE',2,0,'from italy',1),(0,300,124,0,NULL,'Baguette','ezstring',732,'ger-DE',2,0,'baguette',1),(0,300,125,0,NULL,'Salate','ezstring',733,'ger-DE',2,0,'salate',1),(0,300,126,0,NULL,'Burger','ezstring',734,'ger-DE',2,0,'burger',1),(0,300,126,0,NULL,'Burger','ezstring',734,'ger-DE',2,0,'burger',2),(0,300,126,0,NULL,'Burger','ezstring',734,'ger-DE',2,0,'burger',3),(0,300,127,0,NULL,'Wrap','ezstring',735,'ger-DE',2,0,'wrap',1),(0,300,128,0,NULL,'Spezial','ezstring',736,'ger-DE',2,0,'spezial',1),(0,300,129,0,NULL,'Dessert','ezstring',737,'ger-DE',2,0,'dessert',1),(0,300,130,0,NULL,'Getränke','ezstring',738,'ger-DE',2,0,'getränke',1),(0,300,131,0,NULL,'Extras','ezstring',739,'ger-DE',2,0,'extras',1),(0,4,132,0,NULL,'Footer','ezstring',740,'ger-DE',3,0,'footer',1),(0,155,132,0,NULL,'','ezstring',741,'ger-DE',3,0,'',1),(0,119,132,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',742,'ger-DE',3,0,'',1),(0,156,132,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',743,'ger-DE',3,0,'',1),(744,158,132,0,1,'','ezboolean',744,'ger-DE',3,1,'',1),(0,291,132,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>CallForActionLayout</zone_layout>\n  <zone id=\"id_e17585fedb095eb03f4a0454b91b3981\">\n    <zone_identifier>main</zone_identifier>\n  </zone>\n</page>\n','ezpage',745,'ger-DE',3,0,'',1),(0,292,132,0,NULL,'','ezkeyword',746,'ger-DE',3,0,'',1),(0,181,133,0,NULL,'Impressum','ezstring',747,'ger-DE',2,0,'impressum',1),(0,181,133,0,NULL,'Impressum','ezstring',747,'ger-DE',2,0,'impressum',2),(0,182,133,0,NULL,'','ezstring',748,'ger-DE',2,0,'',1),(0,182,133,0,NULL,'','ezstring',748,'ger-DE',2,0,'',2),(0,183,133,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Amir Koklan\" email=\"amirkoklan@gmail.com\"/></authors></ezauthor>\n','ezauthor',749,'ger-DE',2,0,'',1),(0,183,133,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Amir Koklan\" email=\"amirkoklan@gmail.com\"/></authors></ezauthor>\n','ezauthor',749,'ger-DE',2,0,'',2),(0,184,133,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Impressum</paragraph></section>\n','ezxmltext',750,'ger-DE',2,0,'',1),(0,184,133,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Impressum</paragraph></section>\n','ezxmltext',750,'ger-DE',2,0,'',2),(0,185,133,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',751,'ger-DE',2,0,'',1),(0,185,133,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',751,'ger-DE',2,0,'',2),(0,186,133,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382070944\"><original attribute_id=\"752\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',752,'ger-DE',2,0,'',1),(0,186,133,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382070944\"><original attribute_id=\"752\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',752,'ger-DE',2,0,'',2),(0,187,133,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',753,'ger-DE',2,0,'',1),(0,187,133,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',753,'ger-DE',2,0,'',2),(0,188,133,0,0,'','ezdatetime',754,'ger-DE',2,0,'',1),(0,188,133,0,0,'','ezdatetime',754,'ger-DE',2,0,'',2),(0,189,133,0,NULL,'','ezsrrating',755,'ger-DE',2,0,'',1),(0,189,133,0,1,'','ezsrrating',755,'ger-DE',2,0,'',2),(0,190,133,0,NULL,'','ezkeyword',756,'ger-DE',2,0,'',1),(0,190,133,0,NULL,'','ezkeyword',756,'ger-DE',2,0,'',2),(0,191,133,0,0,'','ezgmaplocation',757,'ger-DE',2,0,'',1),(0,191,133,0,0,'','ezgmaplocation',757,'ger-DE',2,0,'',2),(0,192,133,1,1,'','ezcomcomments',758,'ger-DE',2,0,'',1),(0,192,133,-1,-1,'','ezcomcomments',758,'ger-DE',2,0,'',2),(0,4,134,0,NULL,'Foods','ezstring',759,'ger-DE',3,0,'foods',1),(0,155,134,0,NULL,'','ezstring',760,'ger-DE',3,0,'',1),(0,119,134,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',761,'ger-DE',3,0,'',1),(0,156,134,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',762,'ger-DE',3,0,'',1),(763,158,134,0,1,'','ezboolean',763,'ger-DE',3,1,'',1),(0,291,134,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>CallForActionLayout</zone_layout>\n  <zone id=\"id_b11a524121804d3efa1873e753a9d1eb\">\n    <zone_identifier>main</zone_identifier>\n  </zone>\n</page>\n','ezpage',764,'ger-DE',3,0,'',1),(0,292,134,0,NULL,'','ezkeyword',765,'ger-DE',3,0,'',1),(0,301,135,0,NULL,'Pizza L.A.','ezstring',766,'ger-DE',2,0,'pizza l.a.',1),(0,301,135,0,NULL,'Pizza L.A.','ezstring',766,'ger-DE',2,0,'pizza l.a.',2),(0,302,135,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076464\"><original attribute_id=\"767\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',767,'ger-DE',2,0,'',1),(0,302,135,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Pizza-L.A.png\" suffix=\"png\" basename=\"Pizza-L.A\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A.png\" original_filename=\"pizza la.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382602943\"><original attribute_id=\"767\" attribute_version=\"2\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"Pizza-L.A_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_reference.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"2605465115\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"small\" filename=\"Pizza-L.A_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_small.png\" mime_type=\"image/png\" width=\"97\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1382602948\" is_valid=\"1\"/><alias name=\"productthumbnail\" filename=\"Pizza-L.A_productthumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_productthumbnail.png\" mime_type=\"image/png\" width=\"170\" height=\"174\" alias_key=\"1108033634\" timestamp=\"1382603265\" is_valid=\"1\"/><alias name=\"large\" filename=\"Pizza-L.A_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_large.png\" mime_type=\"image/png\" width=\"291\" height=\"300\" alias_key=\"1592566908\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"product_view\" filename=\"Pizza-L.A_product_view.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_product_view.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"1177252184\" timestamp=\"1382755153\" is_valid=\"1\"/></ezimage>\n','ezimage',767,'ger-DE',2,0,'',2),(0,303,135,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',768,'ger-DE',2,0,'',1),(0,303,135,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',768,'ger-DE',2,0,'',2),(0,201,136,0,NULL,'Classic','ezstring',769,'ger-DE',2,0,'classic',1),(0,201,136,0,NULL,'Pizza L.A','ezstring',769,'ger-DE',2,0,'pizza l.a',2),(0,201,136,0,NULL,'Pizza L.A CL','ezstring',769,'ger-DE',2,0,'pizza l.a cl',3),(0,202,136,0,NULL,'100','ezstring',770,'ger-DE',2,0,'100',1),(0,202,136,0,NULL,'100','ezstring',770,'ger-DE',2,0,'100',2),(0,202,136,0,NULL,'100','ezstring',770,'ger-DE',2,0,'100',3),(0,203,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',771,'ger-DE',2,0,'',1),(0,203,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',771,'ger-DE',2,0,'',2),(0,203,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',771,'ger-DE',2,0,'',3),(0,204,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',772,'ger-DE',2,0,'',1),(0,204,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',772,'ger-DE',2,0,'',2),(0,204,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',772,'ger-DE',2,0,'',3),(0,205,136,6.9,NULL,'1,1','ezprice',773,'ger-DE',2,690,'',1),(0,205,136,6.9,NULL,'1,1','ezprice',773,'ger-DE',2,690,'',2),(0,205,136,6.9,NULL,'1,1','ezprice',773,'ger-DE',2,690,'',3),(0,206,136,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076783\"><original attribute_id=\"774\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',774,'ger-DE',2,0,'',1),(0,206,136,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076783\"><original attribute_id=\"774\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',774,'ger-DE',2,0,'',2),(0,206,136,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076783\"><original attribute_id=\"774\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',774,'ger-DE',2,0,'',3),(0,207,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',775,'ger-DE',2,0,'',1),(0,207,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',775,'ger-DE',2,0,'',2),(0,207,136,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',775,'ger-DE',2,0,'',3),(0,208,136,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"3\"><name>Zusätze</name><multioptions><multioption id=\"1\" name=\"Zusätze\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"0.8\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"0.8\"/><option id=\"3\" option_id=\"3\" value=\"Mais\" additional_price=\"0.8\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',776,'ger-DE',2,0,'',1),(0,208,136,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"3\"><name>Zusätze</name><multioptions><multioption id=\"1\" name=\"Zusätze\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"0.8\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"0.8\"/><option id=\"3\" option_id=\"3\" value=\"Mais\" additional_price=\"0.8\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',776,'ger-DE',2,0,'',2),(0,208,136,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"3\"><name>Zusätze</name><multioptions><multioption id=\"1\" name=\"Zusätze\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"0.8\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"0.8\"/><option id=\"3\" option_id=\"3\" value=\"Mais\" additional_price=\"0.8\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',776,'ger-DE',2,0,'',3),(0,209,136,0,NULL,'','ezsrrating',777,'ger-DE',2,0,'',1),(0,209,136,0,NULL,'','ezsrrating',777,'ger-DE',2,0,'',2),(0,209,136,0,NULL,'','ezsrrating',777,'ger-DE',2,0,'',3),(0,210,136,0,NULL,'','ezkeyword',778,'ger-DE',2,0,'',1),(0,210,136,0,NULL,'','ezkeyword',778,'ger-DE',2,0,'',2),(0,210,136,0,NULL,'','ezkeyword',778,'ger-DE',2,0,'',3),(0,211,136,1,1,'','ezcomcomments',779,'ger-DE',2,0,'',1),(0,211,136,1,1,'','ezcomcomments',779,'ger-DE',2,0,'',2),(0,211,136,1,1,'','ezcomcomments',779,'ger-DE',2,0,'',3),(0,304,87,NULL,NULL,NULL,'ezstring',781,'ger-DE',2,0,'',1),(0,304,88,NULL,NULL,NULL,'ezstring',782,'ger-DE',2,0,'',1),(0,304,89,NULL,NULL,NULL,'ezstring',783,'ger-DE',2,0,'',1),(0,304,136,NULL,NULL,NULL,'ezstring',784,'ger-DE',2,0,'',1),(0,304,136,0,NULL,'Classic','ezstring',784,'ger-DE',2,0,'classic',2),(0,304,136,0,NULL,'Classic','ezstring',784,'ger-DE',2,0,'classic',3),(0,201,137,0,NULL,'Pizza L.A','ezstring',785,'ger-DE',2,0,'pizza l.a',1),(0,201,137,0,NULL,'Pizza L.A American','ezstring',785,'ger-DE',2,0,'pizza l.a american',2),(0,202,137,0,NULL,'','ezstring',786,'ger-DE',2,0,'',1),(0,202,137,0,NULL,'','ezstring',786,'ger-DE',2,0,'',2),(0,304,137,0,NULL,'American','ezstring',787,'ger-DE',2,0,'american',1),(0,304,137,0,NULL,'American','ezstring',787,'ger-DE',2,0,'american',2),(0,203,137,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',788,'ger-DE',2,0,'',1),(0,203,137,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',788,'ger-DE',2,0,'',2),(0,204,137,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',789,'ger-DE',2,0,'',1),(0,204,137,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',789,'ger-DE',2,0,'',2),(0,205,137,7.9,NULL,'1,1','ezprice',790,'ger-DE',2,790,'',1),(0,205,137,7.9,NULL,'1,1','ezprice',790,'ger-DE',2,790,'',2),(0,206,137,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382613598\"><original attribute_id=\"791\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',791,'ger-DE',2,0,'',1),(0,206,137,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382613598\"><original attribute_id=\"791\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',791,'ger-DE',2,0,'',2),(0,207,137,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',792,'ger-DE',2,0,'',1),(0,207,137,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',792,'ger-DE',2,0,'',2),(0,208,137,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Zutaten</name><multioptions><multioption id=\"1\" name=\"Zutaten\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"0.8\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"0.8\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',793,'ger-DE',2,0,'',1),(0,208,137,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Zutaten</name><multioptions><multioption id=\"1\" name=\"Zutaten\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"0.8\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"0.8\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',793,'ger-DE',2,0,'',2),(0,209,137,0,1,'','ezsrrating',794,'ger-DE',2,0,'',1),(0,209,137,0,1,'','ezsrrating',794,'ger-DE',2,0,'',2),(0,210,137,0,NULL,'','ezkeyword',795,'ger-DE',2,0,'',1),(0,210,137,0,NULL,'','ezkeyword',795,'ger-DE',2,0,'',2),(0,211,137,1,1,'','ezcomcomments',796,'ger-DE',2,0,'',1),(0,211,137,1,1,'','ezcomcomments',796,'ger-DE',2,0,'',2),(0,201,138,0,NULL,'Pizza L.A','ezstring',797,'ger-DE',2,0,'pizza l.a',1),(0,201,138,0,NULL,'Pizza L.A Jumbo','ezstring',797,'ger-DE',2,0,'pizza l.a jumbo',2),(0,202,138,0,NULL,'','ezstring',798,'ger-DE',2,0,'',1),(0,202,138,0,NULL,'','ezstring',798,'ger-DE',2,0,'',2),(0,304,138,0,NULL,'Jumbo','ezstring',799,'ger-DE',2,0,'jumbo',1),(0,304,138,0,NULL,'Jumbo','ezstring',799,'ger-DE',2,0,'jumbo',2),(0,203,138,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',800,'ger-DE',2,0,'',1),(0,203,138,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',800,'ger-DE',2,0,'',2),(0,204,138,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',801,'ger-DE',2,0,'',1),(0,204,138,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',801,'ger-DE',2,0,'',2),(0,205,138,13.9,NULL,'1,1','ezprice',802,'ger-DE',2,1390,'',1),(0,205,138,13.9,NULL,'1,1','ezprice',802,'ger-DE',2,1390,'',2),(0,206,138,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382613783\"><original attribute_id=\"803\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',803,'ger-DE',2,0,'',1),(0,206,138,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382613783\"><original attribute_id=\"803\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',803,'ger-DE',2,0,'',2),(0,207,138,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',804,'ger-DE',2,0,'',1),(0,207,138,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',804,'ger-DE',2,0,'',2),(0,208,138,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Zutaten</name><multioptions><multioption id=\"1\" name=\"Zutaten\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"1.60\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"1.60\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',805,'ger-DE',2,0,'',1),(0,208,138,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"2\"><name>Zutaten</name><multioptions><multioption id=\"1\" name=\"Zutaten\" priority=\"1\" default_option_id=\"\"><option id=\"1\" option_id=\"1\" value=\"Käse\" additional_price=\"1.60\"/><option id=\"2\" option_id=\"2\" value=\"Tomaten\" additional_price=\"1.60\"/></multioption></multioptions></ezmultioption>\n','ezmultioption',805,'ger-DE',2,0,'',2),(0,209,138,0,1,'','ezsrrating',806,'ger-DE',2,0,'',1),(0,209,138,0,1,'','ezsrrating',806,'ger-DE',2,0,'',2),(0,210,138,0,NULL,'','ezkeyword',807,'ger-DE',2,0,'',1),(0,210,138,0,NULL,'','ezkeyword',807,'ger-DE',2,0,'',2),(0,211,138,1,1,'','ezcomcomments',808,'ger-DE',2,0,'',1),(0,211,138,1,1,'','ezcomcomments',808,'ger-DE',2,0,'',2),(0,4,140,0,NULL,'Banner','ezstring',814,'ger-DE',3,0,'banner',1),(0,155,140,0,NULL,'','ezstring',815,'ger-DE',3,0,'',1),(0,119,140,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',816,'ger-DE',3,0,'',1),(0,156,140,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',817,'ger-DE',3,0,'',1),(818,158,140,0,1,'','ezboolean',818,'ger-DE',3,1,'',1),(0,291,140,0,NULL,'<?xml version=\"1.0\"?>\n<page>\n  <zone_layout>CallForActionLayout</zone_layout>\n  <zone id=\"id_8c4533e56ad914248565f81a7b65b792\">\n    <zone_identifier>main</zone_identifier>\n  </zone>\n</page>\n','ezpage',819,'ger-DE',3,0,'',1),(0,292,140,0,NULL,'','ezkeyword',820,'ger-DE',3,0,'',1),(0,236,142,0,NULL,'banner','ezstring',826,'ger-DE',2,0,'banner',1),(0,237,142,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>banner</paragraph></section>\n','ezxmltext',827,'ger-DE',2,0,'',1),(0,238,142,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"banner.png\" suffix=\"png\" basename=\"banner\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner.png\" original_filename=\"banner.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382622191\"><original attribute_id=\"828\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"banner_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_reference.png\" mime_type=\"image/png\" width=\"600\" height=\"222\" alias_key=\"2605465115\" timestamp=\"1382652618\" is_valid=\"1\"/><alias name=\"small\" filename=\"banner_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_small.png\" mime_type=\"image/png\" width=\"100\" height=\"37\" alias_key=\"2343348577\" timestamp=\"1382666286\" is_valid=\"1\"/><alias name=\"medium\" filename=\"banner_medium.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_medium.png\" mime_type=\"image/png\" width=\"200\" height=\"74\" alias_key=\"3736024005\" timestamp=\"1382622385\" is_valid=\"1\"/><alias name=\"listitem\" filename=\"banner_listitem.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_listitem.png\" mime_type=\"image/png\" width=\"130\" height=\"48\" alias_key=\"379714049\" timestamp=\"1382622385\" is_valid=\"1\"/><alias name=\"articleimage\" filename=\"banner_articleimage.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_articleimage.png\" mime_type=\"image/png\" width=\"770\" height=\"286\" alias_key=\"2384827203\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"articlethumbnail\" filename=\"banner_articlethumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_articlethumbnail.png\" mime_type=\"image/png\" width=\"170\" height=\"63\" alias_key=\"3605056846\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"gallerythumbnail\" filename=\"banner_gallerythumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_gallerythumbnail.png\" mime_type=\"image/png\" width=\"105\" height=\"39\" alias_key=\"4103440102\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"galleryline\" filename=\"banner_galleryline.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_galleryline.png\" mime_type=\"image/png\" width=\"70\" height=\"26\" alias_key=\"913981729\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"imagelarge\" filename=\"banner_imagelarge.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_imagelarge.png\" mime_type=\"image/png\" width=\"448\" height=\"166\" alias_key=\"2602985738\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"large\" filename=\"banner_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_large.png\" mime_type=\"image/png\" width=\"360\" height=\"133\" alias_key=\"3448122496\" timestamp=\"1382652622\" is_valid=\"1\"/><alias name=\"rss\" filename=\"banner_rss.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_rss.png\" mime_type=\"image/png\" width=\"83\" height=\"31\" alias_key=\"3240742506\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"logo\" filename=\"banner_logo.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_logo.png\" mime_type=\"image/png\" width=\"96\" height=\"36\" alias_key=\"2290415655\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"infoboximage\" filename=\"banner_infoboximage.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_infoboximage.png\" mime_type=\"image/png\" width=\"75\" height=\"27\" alias_key=\"2355174995\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"billboard\" filename=\"banner_billboard.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_billboard.png\" mime_type=\"image/png\" width=\"764\" height=\"283\" alias_key=\"3500035376\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"productthumbnail\" filename=\"banner_productthumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_productthumbnail.png\" mime_type=\"image/png\" width=\"170\" height=\"63\" alias_key=\"1108033634\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"productimage\" filename=\"banner_productimage.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_productimage.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1857621694\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory1\" filename=\"banner_mainstory1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_mainstory1.png\" mime_type=\"image/png\" width=\"468\" height=\"173\" alias_key=\"4189723086\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory2\" filename=\"banner_mainstory2.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_mainstory2.png\" mime_type=\"image/png\" width=\"439\" height=\"163\" alias_key=\"761504640\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory3\" filename=\"banner_mainstory3.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_mainstory3.png\" mime_type=\"image/png\" width=\"201\" height=\"74\" alias_key=\"4033665292\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block2items1\" filename=\"banner_block2items1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_block2items1.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"3162376705\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block2items2\" filename=\"banner_block2items2.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_block2items2.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"103484950\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block3items3\" filename=\"banner_block3items3.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_block3items3.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"622919048\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"blockgallery1\" filename=\"banner_blockgallery1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_blockgallery1.png\" mime_type=\"image/png\" width=\"126\" height=\"46\" alias_key=\"3313202540\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"campaign\" filename=\"banner_campaign.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_campaign.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"3158711315\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"backgroundimage\" filename=\"banner_backgroundimage.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_backgroundimage.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1870438127\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"highlighted\" filename=\"banner_highlighted.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_highlighted.png\" mime_type=\"image/png\" width=\"300\" height=\"111\" alias_key=\"3917877274\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"contentgrid\" filename=\"banner_contentgrid.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_contentgrid.png\" mime_type=\"image/png\" width=\"370\" height=\"137\" alias_key=\"4192414807\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"gallery\" filename=\"banner_gallery.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_gallery.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"935385201\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"galleryfull\" filename=\"banner_galleryfull.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_galleryfull.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"2921359933\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"imagefull\" filename=\"banner_imagefull.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_imagefull.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"2826031810\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"multiuploadthumbnail\" filename=\"banner_multiuploadthumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_multiuploadthumbnail.png\" mime_type=\"image/png\" width=\"100\" height=\"37\" alias_key=\"63312607\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"banner\" filename=\"banner_banner.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_banner.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1102548784\" timestamp=\"1382949105\" is_valid=\"1\"/></ezimage>\n','ezimage',828,'ger-DE',2,0,'',1),(0,239,142,0,NULL,'','ezsrrating',829,'ger-DE',2,0,'',1),(0,240,142,0,NULL,'','ezkeyword',830,'ger-DE',2,0,'',1),(0,236,145,0,NULL,'banner','ezstring',841,'ger-DE',2,0,'banner',1),(0,237,145,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>banner</paragraph></section>\n','ezxmltext',842,'ger-DE',2,0,'',1),(0,238,145,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"banner.png\" suffix=\"png\" basename=\"banner\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner.png\" original_filename=\"banner.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382622191\"><original attribute_id=\"828\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"banner_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_reference.png\" mime_type=\"image/png\" width=\"600\" height=\"222\" alias_key=\"2605465115\" timestamp=\"1382652618\" is_valid=\"1\"/><alias name=\"small\" filename=\"banner_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_small.png\" mime_type=\"image/png\" width=\"100\" height=\"37\" alias_key=\"2343348577\" timestamp=\"1382666286\" is_valid=\"1\"/><alias name=\"imagelarge\" filename=\"banner_imagelarge.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_imagelarge.png\" mime_type=\"image/png\" width=\"448\" height=\"166\" alias_key=\"2602985738\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"mainstory1\" filename=\"banner_mainstory1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_mainstory1.png\" mime_type=\"image/png\" width=\"468\" height=\"173\" alias_key=\"4189723086\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory2\" filename=\"banner_mainstory2.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_mainstory2.png\" mime_type=\"image/png\" width=\"439\" height=\"163\" alias_key=\"761504640\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory3\" filename=\"banner_mainstory3.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_mainstory3.png\" mime_type=\"image/png\" width=\"201\" height=\"74\" alias_key=\"4033665292\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block2items1\" filename=\"banner_block2items1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_block2items1.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"3162376705\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block2items2\" filename=\"banner_block2items2.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_block2items2.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"103484950\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block3items3\" filename=\"banner_block3items3.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_block3items3.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"622919048\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"blockgallery1\" filename=\"banner_blockgallery1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_blockgallery1.png\" mime_type=\"image/png\" width=\"126\" height=\"46\" alias_key=\"3313202540\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"campaign\" filename=\"banner_campaign.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_campaign.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"3158711315\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"backgroundimage\" filename=\"banner_backgroundimage.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_backgroundimage.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1870438127\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"highlighted\" filename=\"banner_highlighted.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_highlighted.png\" mime_type=\"image/png\" width=\"300\" height=\"111\" alias_key=\"3917877274\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"contentgrid\" filename=\"banner_contentgrid.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_contentgrid.png\" mime_type=\"image/png\" width=\"370\" height=\"137\" alias_key=\"4192414807\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"gallery\" filename=\"banner_gallery.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_gallery.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"935385201\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"galleryfull\" filename=\"banner_galleryfull.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_galleryfull.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"2921359933\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"imagefull\" filename=\"banner_imagefull.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_imagefull.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"2826031810\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"multiuploadthumbnail\" filename=\"banner_multiuploadthumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_multiuploadthumbnail.png\" mime_type=\"image/png\" width=\"100\" height=\"37\" alias_key=\"63312607\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"banner\" filename=\"banner_banner.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_banner.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1102548784\" timestamp=\"1382949105\" is_valid=\"1\"/></ezimage>\n','ezimage',843,'ger-DE',2,0,'',1),(0,239,145,0,NULL,'','ezsrrating',844,'ger-DE',2,0,'',1),(0,240,145,0,NULL,'','ezkeyword',845,'ger-DE',2,0,'',1),(0,236,146,0,NULL,'banner','ezstring',846,'ger-DE',2,0,'banner',1),(0,237,146,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>banner</paragraph></section>\n','ezxmltext',847,'ger-DE',2,0,'',1),(0,238,146,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"banner.png\" suffix=\"png\" basename=\"banner\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner.png\" original_filename=\"banner.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382622191\"><original attribute_id=\"828\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"banner_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_reference.png\" mime_type=\"image/png\" width=\"600\" height=\"222\" alias_key=\"2605465115\" timestamp=\"1382652618\" is_valid=\"1\"/><alias name=\"small\" filename=\"banner_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_small.png\" mime_type=\"image/png\" width=\"100\" height=\"37\" alias_key=\"2343348577\" timestamp=\"1382666286\" is_valid=\"1\"/><alias name=\"imagelarge\" filename=\"banner_imagelarge.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_imagelarge.png\" mime_type=\"image/png\" width=\"448\" height=\"166\" alias_key=\"2602985738\" timestamp=\"1382622386\" is_valid=\"1\"/><alias name=\"mainstory1\" filename=\"banner_mainstory1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_mainstory1.png\" mime_type=\"image/png\" width=\"468\" height=\"173\" alias_key=\"4189723086\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory2\" filename=\"banner_mainstory2.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_mainstory2.png\" mime_type=\"image/png\" width=\"439\" height=\"163\" alias_key=\"761504640\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"mainstory3\" filename=\"banner_mainstory3.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_mainstory3.png\" mime_type=\"image/png\" width=\"201\" height=\"74\" alias_key=\"4033665292\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block2items1\" filename=\"banner_block2items1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_block2items1.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"3162376705\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block2items2\" filename=\"banner_block2items2.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_block2items2.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"103484950\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"block3items3\" filename=\"banner_block3items3.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_block3items3.png\" mime_type=\"image/png\" width=\"195\" height=\"72\" alias_key=\"622919048\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"blockgallery1\" filename=\"banner_blockgallery1.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_blockgallery1.png\" mime_type=\"image/png\" width=\"126\" height=\"46\" alias_key=\"3313202540\" timestamp=\"1382622387\" is_valid=\"1\"/><alias name=\"campaign\" filename=\"banner_campaign.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_campaign.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"3158711315\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"backgroundimage\" filename=\"banner_backgroundimage.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_backgroundimage.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1870438127\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"highlighted\" filename=\"banner_highlighted.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_highlighted.png\" mime_type=\"image/png\" width=\"300\" height=\"111\" alias_key=\"3917877274\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"contentgrid\" filename=\"banner_contentgrid.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_contentgrid.png\" mime_type=\"image/png\" width=\"370\" height=\"137\" alias_key=\"4192414807\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"gallery\" filename=\"banner_gallery.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_gallery.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"935385201\" timestamp=\"1382622388\" is_valid=\"1\"/><alias name=\"galleryfull\" filename=\"banner_galleryfull.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_galleryfull.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"2921359933\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"imagefull\" filename=\"banner_imagefull.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_imagefull.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"2826031810\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"multiuploadthumbnail\" filename=\"banner_multiuploadthumbnail.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_multiuploadthumbnail.png\" mime_type=\"image/png\" width=\"100\" height=\"37\" alias_key=\"63312607\" timestamp=\"1382622389\" is_valid=\"1\"/><alias name=\"banner\" filename=\"banner_banner.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_banner.png\" mime_type=\"image/png\" width=\"735\" height=\"273\" alias_key=\"1102548784\" timestamp=\"1382949106\" is_valid=\"1\"/></ezimage>\n','ezimage',848,'ger-DE',2,0,'',1),(0,239,146,0,NULL,'','ezsrrating',849,'ger-DE',2,0,'',1),(0,240,146,0,NULL,'','ezkeyword',850,'ger-DE',2,0,'',1),(0,301,147,0,NULL,'Pizza L.A.','ezstring',851,'ger-DE',2,0,'pizza l.a.',1),(0,301,147,0,NULL,'Pizza L.A.','ezstring',851,'ger-DE',2,0,'pizza l.a.',2),(0,301,147,0,NULL,'Pizza California','ezstring',851,'ger-DE',2,0,'pizza california',3),(0,302,147,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076464\"><original attribute_id=\"767\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',852,'ger-DE',2,0,'',1),(0,302,147,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Pizza-L.A.png\" suffix=\"png\" basename=\"Pizza-L.A\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A.png\" original_filename=\"pizza la.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382602943\"><original attribute_id=\"767\" attribute_version=\"2\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"Pizza-L.A_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A_reference.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"2605465115\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"small\" filename=\"Pizza-L.A_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A_small.png\" mime_type=\"image/png\" width=\"97\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1382602948\" is_valid=\"1\"/><alias name=\"large\" filename=\"Pizza-L.A_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A_large.png\" mime_type=\"image/png\" width=\"291\" height=\"300\" alias_key=\"1592566908\" timestamp=\"1382606833\" is_valid=\"1\"/></ezimage>\n','ezimage',852,'ger-DE',2,0,'',2),(0,302,147,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Pizza-California.png\" suffix=\"png\" basename=\"Pizza-California\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California.png\" original_filename=\"pizza la.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382751407\"><original attribute_id=\"852\" attribute_version=\"3\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"Pizza-California_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California_reference.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"2605465115\" timestamp=\"1382751410\" is_valid=\"1\"/><alias name=\"small\" filename=\"Pizza-California_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California_small.png\" mime_type=\"image/png\" width=\"97\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1382751410\" is_valid=\"1\"/><alias name=\"product_view\" filename=\"Pizza-California_product_view.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California_product_view.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"1177252184\" timestamp=\"1382755154\" is_valid=\"1\"/></ezimage>\n','ezimage',852,'ger-DE',2,0,'',3),(0,303,147,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',853,'ger-DE',2,0,'',1),(0,303,147,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',853,'ger-DE',2,0,'',2),(0,303,147,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Creme Fraiche, Schinken, Broccoli,Knoblauch</paragraph></section>\n','ezxmltext',853,'ger-DE',2,0,'',3),(0,301,148,0,NULL,'Pizza L.A.','ezstring',854,'ger-DE',2,0,'pizza l.a.',1),(0,301,148,0,NULL,'Pizza L.A.','ezstring',854,'ger-DE',2,0,'pizza l.a.',2),(0,302,148,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076464\"><original attribute_id=\"767\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',855,'ger-DE',2,0,'',1),(0,302,148,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Pizza-L.A.png\" suffix=\"png\" basename=\"Pizza-L.A\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A.png\" original_filename=\"pizza la.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382602943\"><original attribute_id=\"767\" attribute_version=\"2\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"Pizza-L.A_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_reference.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"2605465115\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"small\" filename=\"Pizza-L.A_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_small.png\" mime_type=\"image/png\" width=\"97\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1382602948\" is_valid=\"1\"/><alias name=\"large\" filename=\"Pizza-L.A_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_large.png\" mime_type=\"image/png\" width=\"291\" height=\"300\" alias_key=\"1592566908\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"product_view\" filename=\"Pizza-L.A_product_view.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_product_view.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"1177252184\" timestamp=\"1382755154\" is_valid=\"1\"/></ezimage>\n','ezimage',855,'ger-DE',2,0,'',2),(0,303,148,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',856,'ger-DE',2,0,'',1),(0,303,148,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',856,'ger-DE',2,0,'',2),(0,301,149,0,NULL,'Pizza L.A.','ezstring',857,'ger-DE',2,0,'pizza l.a.',1),(0,301,149,0,NULL,'Pizza L.A.','ezstring',857,'ger-DE',2,0,'pizza l.a.',2),(0,302,149,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382076464\"><original attribute_id=\"767\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',858,'ger-DE',2,0,'',1),(0,302,149,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Pizza-L.A.png\" suffix=\"png\" basename=\"Pizza-L.A\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A.png\" original_filename=\"pizza la.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382602943\"><original attribute_id=\"767\" attribute_version=\"2\" attribute_language=\"ger-DE\"/><alias name=\"reference\" filename=\"Pizza-L.A_reference.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_reference.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"2605465115\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"small\" filename=\"Pizza-L.A_small.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_small.png\" mime_type=\"image/png\" width=\"97\" height=\"100\" alias_key=\"2343348577\" timestamp=\"1382602948\" is_valid=\"1\"/><alias name=\"large\" filename=\"Pizza-L.A_large.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_large.png\" mime_type=\"image/png\" width=\"291\" height=\"300\" alias_key=\"1592566908\" timestamp=\"1382606833\" is_valid=\"1\"/><alias name=\"product_view\" filename=\"Pizza-L.A_product_view.png\" suffix=\"png\" dirpath=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_product_view.png\" mime_type=\"image/png\" width=\"355\" height=\"365\" alias_key=\"1177252184\" timestamp=\"1382755154\" is_valid=\"1\"/></ezimage>\n','ezimage',858,'ger-DE',2,0,'',2),(0,303,149,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',859,'ger-DE',2,0,'',1),(0,303,149,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>frischen Tomaten, Mozzarella, Basilikum</paragraph></section>\n','ezxmltext',859,'ger-DE',2,0,'',2),(0,236,150,0,NULL,'Somer','ezstring',860,'ger-DE',2,0,'somer',1),(0,237,150,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',861,'ger-DE',2,0,'',1),(0,238,150,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Somer.jpg\" suffix=\"jpg\" basename=\"Somer\" dirpath=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer.jpg\" original_filename=\"n00009053-b.jpg\" mime_type=\"image/jpeg\" width=\"500\" height=\"356\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382751527\"><original attribute_id=\"862\" attribute_version=\"1\" attribute_language=\"ger-DE\"/><information Height=\"356\" Width=\"500\" IsColor=\"1\"/><alias name=\"reference\" filename=\"Somer_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer_reference.jpg\" mime_type=\"image/jpeg\" width=\"500\" height=\"356\" alias_key=\"2605465115\" timestamp=\"1382751530\" is_valid=\"1\"/><alias name=\"small\" filename=\"Somer_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"71\" alias_key=\"2343348577\" timestamp=\"1382751530\" is_valid=\"1\"/><alias name=\"banner\" filename=\"Somer_banner.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE\" url=\"var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer_banner.jpg\" mime_type=\"image/jpeg\" width=\"735\" height=\"273\" alias_key=\"1102548784\" timestamp=\"1382949106\" is_valid=\"1\"/></ezimage>\n','ezimage',862,'ger-DE',2,0,'',1),(0,239,150,0,NULL,'','ezsrrating',863,'ger-DE',2,0,'',1),(0,240,150,0,NULL,'','ezkeyword',864,'ger-DE',2,0,'',1),(0,305,122,NULL,NULL,NULL,'ezimage',865,'ger-DE',2,0,'',1),(0,305,122,NULL,NULL,NULL,'ezimage',865,'ger-DE',2,0,'',2),(0,305,122,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',865,'ger-DE',2,0,'',3),(0,305,123,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',868,'ger-DE',2,0,'',1),(0,305,124,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',869,'ger-DE',2,0,'',1),(0,305,125,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',870,'ger-DE',2,0,'',1),(0,305,126,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',871,'ger-DE',2,0,'',1),(0,305,126,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Burger.jpg\" suffix=\"jpg\" basename=\"Burger\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger.jpg\" original_filename=\"Fotolia_49852886_L.jpg\" mime_type=\"image/jpeg\" width=\"2221\" height=\"1666\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948601\"><original attribute_id=\"871\" attribute_version=\"2\" attribute_language=\"ger-DE\"/><information Height=\"1666\" Width=\"2221\" IsColor=\"1\" ByteOrderMotorola=\"0\" ApertureFNumber=\"f/22.0\" UserComment=\" \" UserCommentEncoding=\"ASCII\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><array name=\"ifd0\"><item key=\"ImageDescription\" base64=\"1\">T0xZTVBVUyBESUdJVEFMIENBTUVSQSAgICAgICAgIA==</item><item key=\"Make\" base64=\"1\">T0xZTVBVUyBJTUFHSU5HIENPUlAu</item><item key=\"Model\" base64=\"1\">RS01MTA=</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"XResolution\" base64=\"1\">MzAwLzE=</item><item key=\"YResolution\" base64=\"1\">MzAwLzE=</item><item key=\"ResolutionUnit\" base64=\"1\">Mg==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTMyBXaW5kb3dz</item><item key=\"DateTime\" base64=\"1\">MjAxMzowMjoyNSAyMTo0NzoyOA==</item><item key=\"YCbCrPositioning\" base64=\"1\">MQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">ODEw</item><item key=\"UndefinedTag:0xC4A5\" base64=\"1\">UHJpbnRJTQAwMzAwAAAlAAEAFAAUAAIAAQAAAAMA8AAAAAcAAAAAAAgAAAAAAAkAAAAAAAoAAAAAAAsAOAEAAAwAAAAAAA0AAAAAAA4AUAEAABAAYAEAACAAtAEAAAABAwAAAAEB/wAAAAIBgwAAAAMBgwAAAAQBgAAAAAUBgwAAAAYBgwAAAAcBgICAABABgAAAAAACAAAAAAcCAAAAAAgCAAAAAAkCAAAAAAoCAAAAAAsC+AEAAA0CAAAAACAC1gEAAAADAwAAAAED/wAAAAIDgwAAAAMDgwAAAAYDgwAAABADgAAAAAAEAAAAAAAACREAABAnAAALDwAAECcAAJcFAAAQJwAAsAgAABAnAAABHAAAECcAAF4CAAAQJwAAiwAAABAnAADLAwAAECcAAOUbAAAQJwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUFBQAAAEBAgIDAwP//AABAQICAwMD//wAAQECAgMDA//8FBQUAAABAQICAwMD//wAAQECAgMDA//8AAEBAgIDAwP//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">My81</item><item key=\"FNumber\" base64=\"1\">MjIvMQ==</item><item key=\"ExposureProgram\" base64=\"1\">MQ==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MTAw</item><item key=\"ExifVersion\" base64=\"1\">MDIyMQ==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMzowMToxMSAxOTozNjo0Ng==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMzowMToxMSAxOTozNjo0Ng==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8x</item><item key=\"MaxApertureValue\" base64=\"1\">Mi8x</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MjU1</item><item key=\"Flash\" base64=\"1\">OA==</item><item key=\"FocalLength\" base64=\"1\">NTAvMQ==</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MzY0OA==</item><item key=\"ExifImageLength\" base64=\"1\">MjczNg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MQ==</item><item key=\"WhiteBalance\" base64=\"1\">MQ==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MS8x</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"GainControl\" base64=\"1\">MA==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">Mg==</item><item key=\"Sharpness\" base64=\"1\">Mg==</item></array></information><alias name=\"reference\" filename=\"Burger_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"450\" alias_key=\"2605465115\" timestamp=\"1382949103\" is_valid=\"1\"/><alias name=\"small\" filename=\"Burger_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"75\" alias_key=\"2343348577\" timestamp=\"1382948613\" is_valid=\"1\"/><alias name=\"large\" filename=\"Burger_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_large.jpg\" mime_type=\"image/jpeg\" width=\"300\" height=\"225\" alias_key=\"1592566908\" timestamp=\"1382949104\" is_valid=\"1\"/><alias name=\"section_view\" filename=\"Burger_section_view.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_section_view.jpg\" mime_type=\"image/jpeg\" width=\"940\" height=\"705\" alias_key=\"3660755065\" timestamp=\"1382950287\" is_valid=\"1\"/></ezimage>\n','ezimage',871,'ger-DE',2,0,'',2),(0,305,126,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Burger.jpg\" suffix=\"jpg\" basename=\"Burger\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger.jpg\" original_filename=\"burger.jpg\" mime_type=\"image/jpeg\" width=\"2221\" height=\"857\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382950633\"><original attribute_id=\"871\" attribute_version=\"3\" attribute_language=\"ger-DE\"/><information Height=\"857\" Width=\"2221\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/22.0\" Copyright=\"ExQuisine - Fotolia\"><array name=\"ifd0\"><item key=\"ImageDescription\" base64=\"1\">T0xZTVBVUyBESUdJVEFMIENBTUVSQSAgICAgICAgIA==</item><item key=\"Make\" base64=\"1\">T0xZTVBVUyBJTUFHSU5HIENPUlAu</item><item key=\"Model\" base64=\"1\">RS01MTA=</item><item key=\"Orientation\" base64=\"1\">MQ==</item><item key=\"Software\" base64=\"1\">QWRvYmUgUGhvdG9zaG9wIENTMyBXaW5kb3dz</item><item key=\"DateTime\" base64=\"1\">MjAxMzowMjoyNSAyMTo0NzoyOA==</item><item key=\"YCbCrPositioning\" base64=\"1\">MQ==</item><item key=\"Copyright\" base64=\"1\">RXhRdWlzaW5lIC0gRm90b2xpYQ==</item><item key=\"Exif_IFD_Pointer\" base64=\"1\">MjM4Mg==</item><item key=\"Title\" base64=\"1\">TwBMAFkATQBQAFUAUwAgAEQASQBHAEkAVABBAEwAIABDAEEATQBFAFIAQQAgACAAIAAgACAAIAAgACAAIAAAAA==</item><item key=\"Comments\" base64=\"1\">IAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAAAA=</item><item key=\"Keywords\" base64=\"1\">YwBoAGUAZQBzAGUAYgB1AHIAZwBlAHIAOwBlAHMAcwBlAG4AOwBrAGUAdABjAGgAdQBwADsAYgBsAGEAdAB0AHMAYQBsAGEAdAA7AGIAcgD2AHQAYwBoAGUAbgA7AGIAdQByAGcAZQByADsAZgBhAHMAdAAgAGYAbwBvAGQAOwBzAGEAbABhAHQAOwBzAGEAbgBkAHcAaQBjAGgAOwB0AG8AbQBhAHQAZQA7AGgAYQBtAGIAdQByAGcAZQByADsAZwBlAGcAZQByAGkAbABsAHQAOwBzAGUAcwBhAG0AOwBpAG0AYgBpAHMAcwA7AHcAZQBpAHMAcwBiAHIAbwB0ADsAcwBlAHMAYQBtAGIAcgD2AHQAYwBoAGUAbgA7AHQAbwBtAGEAdABlAG4AOwBnAHIAaQBsAGwAOwBnAHIAaQBsAGwAZQBuADsAaQBzAG8AbABpAGUAcgB0ADsAegB3AGkAZQBiAGUAbABuADsAZgBsAGUAaQBzAGMAaAA7AGcAZQBtAPwAcwBlADsAaABhAGMAawBmAGwAZQBpAHMAYwBoADsAaABvAGwAegA7AHAAbwBtAG0AZQBzADsAZgByAGkAdABlAHMAOwBoAGkAbgB0AGUAcgBnAHIAdQBuAGQAOwBrAOQAcwBlADsAcwBjAGgAZQBpAGIAZQBuAGsA5ABzAGUAOwB6AHcAaQBlAGIAZQBsAAAA</item><item key=\"Subject\" base64=\"1\">TwBMAFkATQBQAFUAUwAgAEQASQBHAEkAVABBAEwAIABDAEEATQBFAFIAQQAgACAAIAAgACAAIAAgACAAIAAAAA==</item><item key=\"UndefinedTag:0xC4A5\" base64=\"1\">UHJpbnRJTQAwMzAwAAAlAAEAFAAUAAIAAQAAAAMA8AAAAAcAAAAAAAgAAAAAAAkAAAAAAAoAAAAAAAsAOAEAAAwAAAAAAA0AAAAAAA4AUAEAABAAYAEAACAAtAEAAAABAwAAAAEB/wAAAAIBgwAAAAMBgwAAAAQBgAAAAAUBgwAAAAYBgwAAAAcBgICAABABgAAAAAACAAAAAAcCAAAAAAgCAAAAAAkCAAAAAAoCAAAAAAsC+AEAAA0CAAAAACAC1gEAAAADAwAAAAED/wAAAAIDgwAAAAMDgwAAAAYDgwAAABADgAAAAAAEAAAAAAAACREAABAnAAALDwAAECcAAJcFAAAQJwAAsAgAABAnAAABHAAAECcAAF4CAAAQJwAAiwAAABAnAADLAwAAECcAAOUbAAAQJwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUFBQAAAEBAgIDAwP//AABAQICAwMD//wAAQECAgMDA//8FBQUAAABAQICAwMD//wAAQECAgMDA//8AAEBAgIDAwP//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</item><item key=\"UndefinedTag:0xEA1C\" base64=\"1\">HOoAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item></array><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">My81</item><item key=\"FNumber\" base64=\"1\">MjIvMQ==</item><item key=\"ExposureProgram\" base64=\"1\">MQ==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MTAw</item><item key=\"ExifVersion\" base64=\"1\">MDIyMQ==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxMzowMToxMSAxOTozNjo0Ng==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxMzowMToxMSAxOTozNjo0Ng==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC8x</item><item key=\"MaxApertureValue\" base64=\"1\">Mi8x</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MjU1</item><item key=\"Flash\" base64=\"1\">OA==</item><item key=\"FocalLength\" base64=\"1\">NTAvMQ==</item><item key=\"SubSecTimeOriginal\" base64=\"1\">MDA=</item><item key=\"SubSecTimeDigitized\" base64=\"1\">MDA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MzY0OA==</item><item key=\"ExifImageLength\" base64=\"1\">MjczNg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MQ==</item><item key=\"WhiteBalance\" base64=\"1\">MQ==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MS8x</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"GainControl\" base64=\"1\">MA==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">Mg==</item><item key=\"Sharpness\" base64=\"1\">Mg==</item><item key=\"UndefinedTag:0xEA1C\" base64=\"1\">HOoAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item></array></information><alias name=\"section_view\" filename=\"Burger_section_view.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_section_view.jpg\" mime_type=\"image/jpeg\" width=\"940\" height=\"362\" alias_key=\"3660755065\" timestamp=\"1382950636\" is_valid=\"1\"/><alias name=\"reference\" filename=\"Burger_reference.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_reference.jpg\" mime_type=\"image/jpeg\" width=\"600\" height=\"231\" alias_key=\"2605465115\" timestamp=\"1382950648\" is_valid=\"1\"/><alias name=\"small\" filename=\"Burger_small.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"38\" alias_key=\"2343348577\" timestamp=\"1382950648\" is_valid=\"1\"/><alias name=\"large\" filename=\"Burger_large.jpg\" suffix=\"jpg\" dirpath=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE\" url=\"var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_large.jpg\" mime_type=\"image/jpeg\" width=\"300\" height=\"115\" alias_key=\"1592566908\" timestamp=\"1382950660\" is_valid=\"1\"/></ezimage>\n','ezimage',871,'ger-DE',2,0,'',3),(0,305,127,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',872,'ger-DE',2,0,'',1),(0,305,128,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948561\"/>\n','ezimage',873,'ger-DE',2,0,'',1),(0,305,129,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948562\"/>\n','ezimage',874,'ger-DE',2,0,'',1),(0,305,130,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948562\"/>\n','ezimage',875,'ger-DE',2,0,'',1),(0,305,131,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382948562\"/>\n','ezimage',876,'ger-DE',2,0,'',1),(0,301,151,0,NULL,'Hamburger','ezstring',880,'ger-DE',2,0,'hamburger',1),(0,301,151,0,NULL,'Hamburger','ezstring',880,'ger-DE',2,0,'hamburger',2),(0,302,151,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382950698\"><original attribute_id=\"881\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',881,'ger-DE',2,0,'',1),(0,302,151,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382950698\"><original attribute_id=\"881\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',881,'ger-DE',2,0,'',2),(0,303,151,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',882,'ger-DE',2,0,'',1),(0,303,151,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"><paragraph>Salat, Gurken, Zwiebeln, Tomaten</paragraph></section>\n','ezxmltext',882,'ger-DE',2,0,'',2),(0,201,152,0,NULL,'Hamburger','ezstring',883,'ger-DE',2,0,'hamburger',1),(0,201,152,0,NULL,'Hamburger','ezstring',883,'ger-DE',2,0,'hamburger',2),(0,202,152,0,NULL,'501','ezstring',884,'ger-DE',2,0,'501',1),(0,202,152,0,NULL,'501','ezstring',884,'ger-DE',2,0,'501',2),(0,304,152,0,NULL,'Hamburger','ezstring',885,'ger-DE',2,0,'hamburger',1),(0,304,152,0,NULL,'Hamburger','ezstring',885,'ger-DE',2,0,'hamburger',2),(0,203,152,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',886,'ger-DE',2,0,'',1),(0,203,152,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',886,'ger-DE',2,0,'',2),(0,204,152,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',887,'ger-DE',2,0,'',1),(0,204,152,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',887,'ger-DE',2,0,'',2),(0,205,152,0,NULL,'1,1','ezprice',888,'ger-DE',2,0,'',1),(0,205,152,5,NULL,'1,1','ezprice',888,'ger-DE',2,500,'',2),(0,206,152,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382950874\"><original attribute_id=\"889\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',889,'ger-DE',2,0,'',1),(0,206,152,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382950874\"><original attribute_id=\"889\" attribute_version=\"1\" attribute_language=\"ger-DE\"/></ezimage>\n','ezimage',889,'ger-DE',2,0,'',2),(0,207,152,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',890,'ger-DE',2,0,'',1),(0,207,152,0,1045487555,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n','ezxmltext',890,'ger-DE',2,0,'',2),(0,208,152,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"0\"><name></name><multioptions/></ezmultioption>\n','ezmultioption',891,'ger-DE',2,0,'',1),(0,208,152,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmultioption option_counter=\"0\"><name></name><multioptions/></ezmultioption>\n','ezmultioption',891,'ger-DE',2,0,'',2),(0,209,152,0,NULL,'','ezsrrating',892,'ger-DE',2,0,'',1),(0,209,152,0,NULL,'','ezsrrating',892,'ger-DE',2,0,'',2),(0,210,152,0,NULL,'','ezkeyword',893,'ger-DE',2,0,'',1),(0,210,152,0,NULL,'','ezkeyword',893,'ger-DE',2,0,'',2),(0,211,152,1,1,'','ezcomcomments',894,'ger-DE',2,0,'',1),(0,211,152,1,1,'','ezcomcomments',894,'ger-DE',2,0,'',2),(0,8,153,0,NULL,'','ezstring',895,'ger-DE',2,0,'',1),(0,9,153,0,NULL,'','ezstring',896,'ger-DE',2,0,'',1),(0,12,153,0,NULL,'','ezuser',897,'ger-DE',2,0,'',1),(0,179,153,0,NULL,'','eztext',898,'ger-DE',2,0,'',1),(0,180,153,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1382961337\"/>\n','ezimage',899,'ger-DE',2,0,'',1);
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `op_code` int(11) NOT NULL DEFAULT '0',
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
INSERT INTO `ezcontentobject_link` VALUES (0,69,1,1,0,2,65),(0,69,1,2,0,2,66),(0,69,1,3,0,2,67),(0,69,1,4,0,2,68),(0,98,1,5,0,2,71);
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_co_id` (`contentobject_id`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES ('ger-DE',1,4,3,'Users','ger-DE'),('ger-DE',2,10,3,'Anonymous User','ger-DE'),('ger-DE',1,11,3,'Guest accounts','ger-DE'),('ger-DE',2,11,3,'Members','ger-DE'),('ger-DE',1,12,3,'Administrator users','ger-DE'),('ger-DE',1,13,3,'Editors','ger-DE'),('ger-DE',3,14,3,'Administrator User','ger-DE'),('ger-DE',4,14,3,'Amir Koklan','ger-DE'),('ger-DE',1,41,3,'Media','ger-DE'),('ger-DE',1,42,3,'Anonymous Users','ger-DE'),('ger-DE',1,45,3,'Setup','ger-DE'),('ger-DE',1,49,3,'Images','ger-DE'),('ger-DE',1,50,3,'Files','ger-DE'),('ger-DE',1,51,3,'Multimedia','ger-DE'),('ger-DE',1,52,2,'Common INI settings','ger-DE'),('ger-DE',2,54,2,'eZ Publish Demo Design','ger-DE'),('ger-DE',1,56,3,'Design','ger-DE'),('ger-DE',1,57,3,'Home','ger-DE'),('ger-DE',1,58,2,'Getting Started','ger-DE'),('ger-DE',1,59,3,'Resources','ger-DE'),('ger-DE',1,60,2,'eZ Publish Tutorials','ger-DE'),('ger-DE',1,61,2,'eZ User Documentation','ger-DE'),('ger-DE',1,62,2,'Technical Documentation','ger-DE'),('ger-DE',1,63,2,'Demos and Videos','ger-DE'),('ger-DE',1,64,3,'Selected Features','ger-DE'),('ger-DE',1,65,2,'Search Result Clustering with eZ Find','ger-DE'),('ger-DE',1,66,2,'Autosave in Editorial Editing Process','ger-DE'),('ger-DE',1,67,2,'Multivariate Testing','ger-DE'),('ger-DE',1,68,2,'Improved Online Analytics','ger-DE'),('ger-DE',1,69,2,'Getting Started with eZ Publish Etna','ger-DE'),('ger-DE',1,70,2,'Travel','ger-DE'),('ger-DE',2,70,2,'Travel','ger-DE'),('ger-DE',1,71,2,'Peruvian Amazon','ger-DE'),('ger-DE',1,72,2,'Amazon Side River','ger-DE'),('ger-DE',1,73,2,'River Boat','ger-DE'),('ger-DE',1,74,2,'Flying Bird','ger-DE'),('ger-DE',1,75,2,'Turtles','ger-DE'),('ger-DE',1,76,2,'Hat on a Stick','ger-DE'),('ger-DE',1,77,2,'Heron in the Water','ger-DE'),('ger-DE',1,78,2,'Bird Island','ger-DE'),('ger-DE',1,79,2,'Aligator','ger-DE'),('ger-DE',1,80,2,'Piranha Fishing','ger-DE'),('ger-DE',1,81,3,'Information','ger-DE'),('ger-DE',1,82,2,'Largest City Without Road Connection','ger-DE'),('ger-DE',1,83,2,'Amazon Jungle','ger-DE'),('ger-DE',1,84,2,'Floating Village in Iquitos, Loreto','ger-DE'),('ger-DE',1,85,2,'City Shopping','ger-DE'),('ger-DE',1,86,3,'Products','ger-DE'),('ger-DE',1,87,2,'New York Cab','ger-DE'),('ger-DE',1,88,2,'City View','ger-DE'),('ger-DE',1,89,2,'Street Crossing','ger-DE'),('ger-DE',1,90,3,'Locations','ger-DE'),('ger-DE',1,91,2,'New York City','ger-DE'),('ger-DE',1,92,3,'Partner Section','ger-DE'),('ger-DE',1,93,2,'eZ Logo Black','ger-DE'),('ger-DE',1,94,2,'eZ Logo White','ger-DE'),('ger-DE',1,95,3,'Logos','ger-DE'),('ger-DE',1,96,2,'Partner Wiki','ger-DE'),('ger-DE',1,97,2,'Blog','ger-DE'),('ger-DE',1,98,2,'Example Blog Post','ger-DE'),('ger-DE',1,99,2,'Contact Us','ger-DE'),('ger-DE',1,100,3,'Partners','ger-DE'),('ger-DE',1,101,3,'Foods','ger-DE'),('ger-DE',2,101,3,'Pizza Hollywood','ger-DE'),('ger-DE',1,122,2,'Pizza','ger-DE'),('ger-DE',2,122,2,'Pizza Klassiker','ger-DE'),('ger-DE',3,122,2,'Pizza','ger-DE'),('ger-DE',1,123,2,'From Italy','ger-DE'),('ger-DE',1,124,2,'Baguette','ger-DE'),('ger-DE',1,125,2,'Salate','ger-DE'),('ger-DE',1,126,2,'Burger','ger-DE'),('ger-DE',2,126,2,'Burger','ger-DE'),('ger-DE',3,126,2,'Burger','ger-DE'),('ger-DE',1,127,2,'Wrap','ger-DE'),('ger-DE',1,128,2,'Spezial','ger-DE'),('ger-DE',1,129,2,'Dessert','ger-DE'),('ger-DE',1,130,2,'Getränke','ger-DE'),('ger-DE',1,131,2,'Extras','ger-DE'),('ger-DE',1,132,3,'Footer','ger-DE'),('ger-DE',1,133,2,'Impressum','ger-DE'),('ger-DE',2,133,2,'Impressum','ger-DE'),('ger-DE',1,134,3,'Foods','ger-DE'),('ger-DE',1,135,2,'Pizza L.A.','ger-DE'),('ger-DE',2,135,2,'Pizza L.A.','ger-DE'),('ger-DE',1,136,2,'Classic','ger-DE'),('ger-DE',2,136,2,'Pizza L.A','ger-DE'),('ger-DE',3,136,2,'Pizza L.A CL','ger-DE'),('ger-DE',1,137,2,'Pizza L.A','ger-DE'),('ger-DE',2,137,2,'Pizza L.A American','ger-DE'),('ger-DE',1,138,2,'Pizza L.A','ger-DE'),('ger-DE',2,138,2,'Pizza L.A Jumbo','ger-DE'),('ger-DE',1,140,3,'Banner','ger-DE'),('ger-DE',1,142,2,'banner','ger-DE'),('eng-GB',1,145,4,'banner','eng-GB'),('ger-DE',1,145,2,'banner','ger-DE'),('eng-GB',1,146,4,'banner','eng-GB'),('ger-DE',1,146,2,'banner','ger-DE'),('eng-GB',1,147,4,'Pizza L.A.','eng-GB'),('ger-DE',1,147,2,'Pizza L.A.','ger-DE'),('eng-GB',2,147,4,'Pizza L.A.','eng-GB'),('ger-DE',2,147,2,'Pizza L.A.','ger-DE'),('ger-DE',3,147,2,'Pizza California','ger-DE'),('eng-GB',1,148,4,'Pizza L.A.','eng-GB'),('ger-DE',1,148,2,'Pizza L.A.','ger-DE'),('eng-GB',2,148,4,'Pizza L.A.','eng-GB'),('ger-DE',2,148,2,'Pizza L.A.','ger-DE'),('eng-GB',1,149,4,'Pizza L.A.','eng-GB'),('ger-DE',1,149,2,'Pizza L.A.','ger-DE'),('eng-GB',2,149,4,'Pizza L.A.','eng-GB'),('ger-DE',2,149,2,'Pizza L.A.','ger-DE'),('ger-DE',1,150,2,'Somer','ger-DE'),('ger-DE',1,151,2,'Hamburger','ger-DE'),('ger-DE',2,151,2,'Hamburger','ger-DE'),('ger-DE',1,152,2,'Hamburger','ger-DE'),('ger-DE',2,152,2,'Hamburger','ger-DE'),('ger-DE',1,153,2,'Neue/er/es User','ger-DE');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
INSERT INTO `ezcontentobject_trash` VALUES (58,1,2,1,1,60,1382029769,60,2,'getting_started','/1/2/60/',-12,'a056661abf6a4c778ca3a642797ae5e3',1,1),(59,1,3,0,1,61,1382029769,61,60,'getting_started/resources','/1/2/60/61/',0,'016830043439eddf2956a14d3192fc09',1,1),(60,1,4,0,1,62,1382029769,62,61,'getting_started/resources/ez_publish_tutorials','/1/2/60/61/62/',0,'a2304f8b1c6a2a363e7055aa16b2d555',1,1),(61,1,4,0,1,63,1382029769,63,61,'getting_started/resources/ez_user_documentation','/1/2/60/61/63/',0,'0382aaa1f4fb90e8cf01cc77406e88b0',1,1),(62,1,4,0,1,64,1382029769,64,61,'getting_started/resources/technical_documentation','/1/2/60/61/64/',0,'b9b95382aaa102120ca724dc96fb5892',1,1),(63,1,4,0,1,65,1382029769,65,61,'getting_started/resources/demos_and_videos','/1/2/60/61/65/',0,'0240c72d729c2412817a1c252e51eb1a',1,1),(64,1,3,0,1,66,1382029769,66,60,'getting_started/selected_features','/1/2/60/66/',0,'595c35359a2d37e2dba89eb8dba4ce93',1,1),(65,1,4,0,1,67,1382029769,67,66,'getting_started/selected_features/search_result_clustering_with_ez_find','/1/2/60/66/67/',0,'0379665e0367a771802c95a1a755679e',1,1),(66,1,4,0,1,68,1382029769,68,66,'getting_started/selected_features/autosave_in_editorial_editing_process','/1/2/60/66/68/',0,'8294f2a6427dd40744f1a98f3490b158',1,1),(67,1,4,0,1,69,1382029769,69,66,'getting_started/selected_features/multivariate_testing','/1/2/60/66/69/',0,'fd2168050d72bcfe92b1250586a8a87f',1,1),(68,1,4,0,1,70,1382029769,70,66,'getting_started/selected_features/improved_online_analytics','/1/2/60/66/70/',0,'cbd26486e64e79b91e7b4cc4ca6a7f87',1,1),(69,1,4,0,1,71,1382029769,71,66,'getting_started/selected_features/getting_started_with_ez_publish_etna','/1/2/60/66/71/',0,'80536ae793c16e51018c632b9c90ff25',1,1),(70,2,2,1,1,72,1382029781,72,2,'travel','/1/2/72/',-10,'d5defd070f545a13427da019a30aa5a9',1,1),(71,1,3,0,1,73,1382029781,73,72,'travel/peruvian_amazon','/1/2/72/73/',0,'d07d55e0d37cebd1e65dcf6e7bfb8585',1,1),(72,1,4,0,1,74,1382029781,74,73,'travel/peruvian_amazon/amazon_side_river','/1/2/72/73/74/',0,'ff9ed66414f95373b0fe6f63cd767087',1,1),(73,1,4,0,1,75,1382029781,75,73,'travel/peruvian_amazon/river_boat','/1/2/72/73/75/',0,'36044d78848d4de368989c3a7ec99d30',1,1),(74,1,4,0,1,76,1382029781,76,73,'travel/peruvian_amazon/flying_bird','/1/2/72/73/76/',0,'542dd763dce74ea5e03f1371321686d5',1,1),(75,1,4,0,1,77,1382029781,77,73,'travel/peruvian_amazon/turtles','/1/2/72/73/77/',0,'6b34016c90273ef02916b42df29b2a9b',1,1),(76,1,4,0,1,78,1382029781,78,73,'travel/peruvian_amazon/hat_on_a_stick','/1/2/72/73/78/',0,'92c32a10727ca4a15ceaabc8f133f7c5',1,1),(77,1,4,0,1,79,1382029781,79,73,'travel/peruvian_amazon/heron_in_the_water','/1/2/72/73/79/',0,'0065109a1389295b2ded4b64d884a900',1,1),(78,1,4,0,1,80,1382029781,80,73,'travel/peruvian_amazon/bird_island','/1/2/72/73/80/',0,'6ea2be0e6e4e5373e155336c91e1cfda',1,1),(79,1,4,0,1,81,1382029781,81,73,'travel/peruvian_amazon/aligator','/1/2/72/73/81/',0,'7ac051cba8a6e400810aa2966ce972e9',1,1),(80,1,4,0,1,82,1382029781,82,73,'travel/peruvian_amazon/piranha_fishing','/1/2/72/73/82/',0,'9aa6e47394fb80547819c1c86e1d7232',1,1),(81,1,3,0,1,83,1382029781,83,72,'travel/information','/1/2/72/83/',0,'3766b6904125008d930a7c44b9e575c7',2,0),(82,1,4,0,1,84,1382029781,84,83,'travel/information/largest_city_without_road_connection','/1/2/72/83/84/',0,'62427486787bc5588a7c4658edf89c52',1,1),(83,1,4,0,1,85,1382029781,85,83,'travel/information/amazon_jungle','/1/2/72/83/85/',0,'d81cd925356ad20ab7d4004a38d9e561',1,1),(84,1,4,0,1,86,1382029781,86,83,'travel/information/floating_village_in_iquitos_loreto','/1/2/72/83/86/',0,'eb07d913b94dfa55a04ad41825898d66',1,1),(85,1,2,1,1,87,1382029828,87,2,'city_shopping','/1/2/87/',-8,'d70f1694905d7c5df8e7a57628d5f223',1,1),(86,1,3,0,1,88,1382029828,88,87,'city_shopping/products','/1/2/87/88/',0,'c07971827e6e6cdbb9ab4e65a1ca7634',1,1),(87,1,4,0,1,89,1382029828,89,88,'city_shopping/products/new_york_cab','/1/2/87/88/89/',0,'9121d4ca38abdd42999c4c5ad1bd8c3d',1,1),(88,1,4,0,1,90,1382029828,90,88,'city_shopping/products/city_view','/1/2/87/88/90/',0,'89ea0c87d9327568c2652c6a4122d6f3',1,1),(89,1,4,0,1,91,1382029828,91,88,'city_shopping/products/street_crossing','/1/2/87/88/91/',0,'013b9aa0d3c776466a77ea4296ecaee6',1,1),(90,1,3,0,1,92,1382029828,92,87,'city_shopping/locations','/1/2/87/92/',0,'a655946daa57223381420cf5d93dfed2',1,1),(91,1,4,0,1,93,1382029828,93,92,'city_shopping/locations/new_york_city','/1/2/87/92/93/',0,'23a8950df34d7f7d2fdf1b50ee4b2eb5',1,1),(92,1,2,1,1,94,1382029842,94,2,'partner_section','/1/2/94/',-6,'49dfabb2e1a632ae1f95fdeb79f4a92e',1,1),(93,1,3,0,1,95,1382029842,95,94,'partner_section/ez_logo_black','/1/2/94/95/',0,'a6748f3cbe4bbc163e532c03ad28d0d0',1,1),(94,1,3,0,1,96,1382029842,96,94,'partner_section/ez_logo_white','/1/2/94/96/',0,'d59d9ae9190c7f4919beea16da748910',1,1),(95,1,3,0,1,97,1382029842,97,94,'partner_section/logos','/1/2/94/97/',0,'deab6d56548e30311d6c5ca9b8676160',1,1),(96,1,3,0,1,98,1382029842,98,94,'partner_section/partner_wiki','/1/2/94/98/',0,'92fd2ee79d5721b3a87c103659fc9799',1,1),(97,1,2,1,1,99,1382029906,99,2,'blog','/1/2/99/',-4,'0d05ff0c44f63901d8a1c0fbc5abc884',1,1),(98,1,3,0,1,100,1382029906,100,99,'blog/example_blog_post','/1/2/99/100/',0,'c0125304ac852abc3b7abe57f5ecbf21',1,1),(57,1,2,0,0,103,1382071324,103,2,'home','/1/2/103/',0,'c1e9f94e7ae1c32d7e32551215029996',1,1);
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (0,1,1,0,0,0,1,1382951383,1,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(101,1,2,1,0,0,2,1382951383,2,1,'','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(4,1,1,1,0,0,5,1381794991,5,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(11,1,2,2,0,0,12,1381794991,12,5,'users/members','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(12,1,1,2,0,0,13,1381794990,13,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(13,1,1,2,0,0,14,1081860719,14,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(14,1,4,3,0,0,15,1381794990,15,13,'users/administrator_users/amir_koklan','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(41,1,1,1,0,0,43,1081860720,43,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(42,1,1,2,0,0,44,1081860719,44,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(10,1,2,3,0,0,45,1081860719,45,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(45,1,1,1,0,0,48,1184592117,48,1,'setup2','/1/48/',0,'182ce1b5af0c09fa378557c462ba2617',9,1),(49,1,1,2,0,0,51,1081860720,51,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(50,1,1,2,0,0,52,1081860720,52,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(51,1,1,2,0,0,53,1081860720,53,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(52,1,1,2,0,0,54,1184592117,54,48,'setup2/common_ini_settings','/1/48/54/',0,'fa9f3cff9cf90ecfae335718dcbddfe2',1,1),(54,1,2,2,0,0,56,1381794991,56,58,'design/plain_site','/1/58/56/',0,'772da20ecf88b3035d73cbdfcea0f119',1,1),(56,1,1,1,0,0,58,1381794991,58,1,'design','/1/58/',0,'79f2d67372ab56f59b5d65bb9e0ca3b9',2,0),(99,1,1,3,0,0,101,1382070264,101,134,'footer/contact_us','/1/2/134/101/',-2,'86bf306624668ee9b8b979b0d56f7e0d',8,1),(100,1,1,2,0,0,102,1381794991,102,5,'users/partners','/1/5/102/',0,'4a7d93990d5b105c639fb88d63c992f5',1,1),(122,1,3,3,0,0,124,1382751407,124,136,'foods/pizza','/1/2/136/124/',0,'3f80bac2257d7310000fd6fbf77cdc07',1,1),(123,1,1,3,0,0,125,1382071324,125,136,'foods/from_italy','/1/2/136/125/',0,'5bae0a7f7812d91371ace26f424e7497',1,1),(124,1,1,3,0,0,126,1382071324,126,136,'foods/baguette','/1/2/136/126/',0,'219d4f19b1245334c1717592e1416e6d',1,1),(125,1,1,3,0,0,127,1382071324,127,136,'foods/salate','/1/2/136/127/',0,'9d2061179faf88222fe1626ba62a9291',1,1),(126,1,3,3,0,0,128,1382951383,128,136,'foods/burger','/1/2/136/128/',0,'2b521f8910af859980ee2bea8308ff0d',1,1),(127,1,1,3,0,0,129,1382071324,129,136,'foods/wrap','/1/2/136/129/',0,'37667c62b087140fb2de592bcebc0c59',1,1),(128,1,1,3,0,0,130,1382071324,130,136,'foods/spezial','/1/2/136/130/',0,'c5252729236f6b9501f3704203db1a11',1,1),(129,1,1,3,0,0,131,1382071324,131,136,'foods/dessert','/1/2/136/131/',0,'83cbaec1cdf1e79a935210fabdcd183c',1,1),(130,1,1,3,0,0,132,1382071324,132,136,'foods/getraenke','/1/2/136/132/',0,'c7df193f2b21c94a0430ec2c71ced39f',1,1),(131,1,1,3,0,0,133,1382071324,133,136,'foods/extras','/1/2/136/133/',0,'d3140312e17ec3dfc893d43ff6402eff',1,1),(132,1,1,2,0,0,134,1382731379,134,2,'footer','/1/2/134/',0,'ef83f123bcfb132245abe103f8b30e08',1,1),(133,1,2,3,0,0,135,1382731379,135,134,'footer/impressum','/1/2/134/135/',0,'46d9e0d02656def81c671bd8c9e242e1',1,1),(134,1,1,2,0,0,136,1382951383,136,2,'foods','/1/2/136/',0,'57c8e12703c057c1d8861f1e111b8568',1,1),(135,1,2,4,0,0,137,1382729896,137,124,'foods/pizza/pizza_l_a','/1/2/136/124/137/',0,'358a5af5c3e8bef1f57caeca12e031c6',1,1),(136,1,3,5,0,0,138,1382729849,138,137,'foods/pizza/pizza_l_a/pizza_l_a_cl','/1/2/136/124/137/138/',0,'4dbaf8b0d0faff73e18854ac08f70b0a',1,1),(137,1,2,5,0,0,139,1382729874,139,137,'foods/pizza/pizza_l_a/pizza_l_a_american','/1/2/136/124/137/139/',0,'57396191a93d9ddbbcedd582ba71c8b7',1,1),(138,1,2,5,0,0,140,1382729896,140,137,'foods/pizza/pizza_l_a/pizza_l_a_jumbo','/1/2/136/124/137/140/',0,'f591a2081c368509308417a40e02078d',1,1),(140,1,1,2,0,0,142,1382751527,142,2,'banner','/1/2/142/',0,'b90821a360c69b5826418cca3fb999bc',1,1),(142,1,1,3,0,0,144,1382622191,144,142,'banner/banner','/1/2/142/144/',0,'5616a5eda0ea8c3190c70d39886a5041',1,1),(145,1,1,3,0,0,146,1382742364,146,142,'banner/banner2','/1/2/142/146/',0,'4f290da52c1afd874e6577184d138842',2,0),(146,1,1,3,0,0,147,1382742386,147,142,'banner/banner3','/1/2/142/147/',0,'79a3acd6db5c2dfd3c79a8d323f0970a',2,0),(147,1,3,4,0,0,148,1382751407,148,124,'foods/pizza/pizza_california','/1/2/136/124/148/',0,'d5f7ceafbee86610b9fb0b7ffb637b26',2,0),(148,1,2,4,0,0,149,1382743436,149,124,'foods/pizza/pizza_l_a3','/1/2/136/124/149/',0,'9212911fa88ea0820552f4a1e7c8170a',2,0),(149,1,2,4,0,0,150,1382743456,150,124,'foods/pizza/pizza_l_a4','/1/2/136/124/150/',0,'416de1a42478b8024417f7891b3f1b18',2,0),(150,1,1,3,0,0,151,1382751527,151,142,'banner/somer','/1/2/142/151/',0,'92538088f3d979ec839e91e6bb3faae3',1,1),(151,1,2,4,0,0,152,1382951383,152,128,'foods/burger/hamburger','/1/2/136/128/152/',0,'b1b4f38975960b16ad6fd6a6768fefda',1,1),(152,1,2,5,0,0,153,1382950964,153,152,'foods/burger/hamburger/hamburger','/1/2/136/128/152/153/',0,'df21c18d335f194f7514a2c31f1602c2',1,1);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_language_id` int(11) NOT NULL DEFAULT '0',
  `language_mask` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,0,14,4,2,3,0,1,0,1,1),(11,1033920737,14,439,2,3,1033920746,3,0,1,0),(12,1033920760,14,440,2,3,1033920775,1,0,1,0),(13,1033920786,14,441,2,3,1033920794,1,0,1,0),(41,1060695450,14,472,2,3,1060695457,1,0,1,0),(42,1072180278,14,473,2,3,1072180330,1,0,1,0),(10,1072180337,14,474,2,3,1072180405,1,0,2,0),(45,1079684084,14,477,2,3,1079684190,1,0,1,0),(49,1080220181,14,488,2,3,1080220197,1,0,1,0),(50,1080220211,14,489,2,3,1080220220,1,0,1,0),(51,1080220225,14,490,2,3,1080220233,1,0,1,0),(52,1082016497,14,491,2,2,1082016591,1,0,1,0),(56,1103023120,14,495,2,3,1103023120,1,0,1,0),(14,1301061783,14,499,2,3,1301062024,3,0,3,0),(54,1301062300,14,500,2,2,1301062375,1,0,2,0),(57,1284453990,14,504,2,3,1284454018,1,0,1,0),(58,1332939800,14,505,2,3,1332939802,1,0,1,0),(59,1332936692,14,506,2,3,1332936697,1,0,1,0),(60,1332939145,14,507,2,3,1332939216,1,0,1,0),(61,1332939107,14,508,2,3,1332939113,1,0,1,0),(62,1332939412,14,509,2,3,1332939505,1,0,1,0),(63,1332939575,14,510,2,3,1332939663,1,0,1,0),(64,1332937411,14,511,2,3,1332937412,1,0,1,0),(65,1332936290,14,512,2,3,1332936299,1,0,1,0),(66,1332933830,14,513,2,3,1332933836,1,0,1,0),(67,1332938644,14,514,2,3,1332938654,1,0,1,0),(68,1332938000,14,515,2,3,1332938008,1,0,1,0),(69,1332939705,14,516,2,3,1332939761,1,0,1,0),(70,1332929093,14,517,2,3,1332929099,3,0,1,0),(71,1332922380,14,518,2,3,1332922399,1,0,1,0),(72,1332923743,14,519,2,3,1332923876,1,0,1,0),(73,1332923888,14,520,2,3,1332923912,1,0,1,0),(74,1332923956,14,521,2,3,1332923987,1,0,1,0),(75,1332923997,14,522,2,3,1332924014,1,0,1,0),(76,1332924020,14,523,2,3,1332924041,1,0,1,0),(77,1332924058,14,524,2,3,1332924104,1,0,1,0),(78,1332924109,14,525,2,3,1332924130,1,0,1,0),(79,1332924151,14,526,2,3,1332924185,1,0,1,0),(80,1332929019,14,527,2,3,1332929023,1,0,1,0),(81,1332924338,14,528,2,3,1332924346,1,0,1,0),(82,1332929149,14,529,2,3,1332929154,1,0,1,0),(83,1332935538,14,530,2,3,1332935545,1,0,1,0),(84,1332929105,14,531,2,3,1332929120,1,0,1,0),(85,1332931788,14,532,2,3,1332931812,1,0,1,0),(86,1332935018,14,533,2,3,1332935044,1,0,1,0),(87,1332930133,14,534,2,3,1332930150,1,0,1,0),(88,1332930872,14,535,2,3,1332930878,1,0,1,0),(89,1332930849,14,536,2,3,1332930864,1,0,1,0),(90,1332930948,14,537,2,3,1332930952,1,0,1,0),(91,1332934404,14,538,2,3,1332934427,1,0,1,0),(92,1332935076,14,539,2,3,1332935082,1,0,1,0),(93,1332931828,14,540,2,3,1332931967,1,0,1,0),(94,1332931974,14,541,2,3,1332932005,1,0,1,0),(95,1332932014,14,542,2,3,1332932020,1,0,1,0),(96,1332932273,14,543,2,3,1332932333,1,0,1,0),(97,1332932399,14,544,2,3,1332932403,1,0,1,0),(98,1332932458,14,545,2,3,1332932488,1,0,1,0),(99,1332927277,14,546,2,3,1332927282,1,0,1,0),(14,1381794990,14,547,2,3,1381794990,1,0,4,0),(100,1381794991,14,548,2,3,1381794991,1,0,1,0),(11,1381794991,14,549,2,3,1381794991,1,0,2,0),(70,1381796479,14,550,2,3,1381796527,1,0,2,0),(101,1381869774,14,553,2,3,1381869839,3,0,1,0),(122,1382028725,14,583,2,3,1382028731,3,0,1,0),(123,1382028750,14,584,2,3,1382028778,1,0,1,0),(124,1382028796,14,585,2,3,1382028827,1,0,1,0),(125,1382028853,14,586,2,3,1382028858,1,0,1,0),(126,1382029408,14,587,2,3,1382029414,3,0,1,0),(127,1382029430,14,588,2,3,1382029436,1,0,1,0),(128,1382029450,14,589,2,3,1382029456,1,0,1,0),(129,1382029548,14,590,2,3,1382029556,1,0,1,0),(130,1382029586,14,591,2,3,1382029594,1,0,1,0),(131,1382029654,14,592,2,3,1382029660,1,0,1,0),(132,1382070220,14,593,2,3,1382070235,1,0,1,0),(133,1382070942,14,594,2,3,1382070974,3,0,1,0),(101,1382071250,14,595,2,3,1382071267,1,0,2,0),(134,1382071281,14,596,2,3,1382071289,1,0,1,0),(135,1382076462,14,597,2,3,1382076566,3,0,1,0),(136,1382076782,14,599,2,3,1382076894,3,0,1,0),(135,1382602925,14,600,2,3,1382602943,1,0,2,0),(137,1382613597,14,601,2,3,1382613725,3,0,1,0),(136,1382613736,14,602,2,3,1382613758,3,0,2,0),(138,1382613782,14,603,2,3,1382613863,3,0,1,0),(140,1382621799,14,605,2,3,1382621828,1,0,1,0),(142,1382622170,14,607,2,3,1382622191,1,0,1,0),(122,1382680202,14,609,2,3,1382680245,3,0,2,0),(122,1382683081,14,610,2,3,1382683099,1,0,3,0),(136,1382729825,14,612,2,3,1382729848,1,0,3,0),(137,1382729860,14,613,2,3,1382729874,1,0,2,0),(138,1382729886,14,614,2,3,1382729896,1,0,2,0),(133,1382731358,14,615,2,3,1382731379,1,0,2,0),(145,1382742363,14,616,2,3,1382742363,1,0,1,0),(146,1382742386,14,617,2,3,1382742386,1,0,1,0),(147,1382743416,14,618,2,3,1382743416,3,0,1,0),(147,1382743416,14,619,2,3,1382743416,3,0,2,0),(148,1382743436,14,620,2,3,1382743436,3,0,1,0),(148,1382743436,14,621,2,3,1382743436,1,0,2,0),(149,1382743456,14,622,2,3,1382743456,3,0,1,0),(149,1382743456,14,623,2,3,1382743456,1,0,2,0),(147,1382751334,14,624,2,3,1382751407,1,0,3,0),(150,1382751501,14,625,2,3,1382751527,1,0,1,0),(126,1382948572,14,626,2,3,1382948600,3,0,2,0),(126,1382950600,14,627,2,3,1382950633,1,0,3,0),(151,1382950698,14,629,2,3,1382950781,3,0,1,0),(152,1382950873,14,630,2,3,1382950931,3,0,1,0),(152,1382950939,14,631,2,3,1382950964,1,0,2,0),(151,1382951359,14,632,2,3,1382951383,1,0,2,0),(153,1382961336,14,633,2,2,1382961336,5,0,1,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discountsubrule_id`,`value`,`issection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`),
  KEY `ezenumobjectvalue_co_attr_id_co_attr_ver` (`contentobject_attribute_id`,`contentobject_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_settings_address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
INSERT INTO `ezgmaplocation` VALUES (258,1,59.209868,9.609112,'Skien, Norway'),(270,1,59.209868,9.609112,'Skien, Norway'),(282,1,59.209868,9.609112,'Skien, Norway'),(294,1,59.209868,9.609112,'Skien, Norway'),(306,1,59.209868,9.609112,'Skien, Norway'),(375,1,-3.75,-73.25,'Iquitos, Peru'),(387,1,-3.75,-73.25,'Iquitos, Peru'),(399,1,-3.75,-73.25,'Iquitos, Peru'),(456,1,40.78306,-73.971249,'Manhattan New York');
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (172,'var/storage/images/setup/ez_publish/172-1-eng-GB/ez_publish.',1),(172,'var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE/eZ-Publish-Demo-Design1.png',42),(322,'var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/River-Boat_gallerythumbnail.jpg',49),(317,'var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/Amazon-Side-River_gallerythumbnail.jpg',51),(352,'var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/Aligator_gallerythumbnail.jpg',53),(347,'var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/Bird-Island_gallerythumbnail.jpg',55),(342,'var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/Heron-in-the-Water_gallerythumbnail.jpg',57),(337,'var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/Hat-on-a-Stick_gallerythumbnail.jpg',59),(332,'var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/Turtles_gallerythumbnail.jpg',61),(327,'var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/Flying-Bird_gallerythumbnail.jpg',63),(435,'var/ezdemo_site/storage/images/city-shopping/products/street-crossing/435-1-ger-DE/Street-Crossing_productthumbnail.jpg',65),(424,'var/ezdemo_site/storage/images/city-shopping/products/city-view/424-1-ger-DE/City-View_productthumbnail.jpg',66),(317,'var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/Amazon-Side-River_galleryfull.jpg',67),(322,'var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/River-Boat_galleryfull.jpg',68),(327,'var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/Flying-Bird_galleryfull.jpg',69),(332,'var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/Turtles_galleryfull.jpg',70),(337,'var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/Hat-on-a-Stick_galleryfull.jpg',71),(342,'var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/Heron-in-the-Water_galleryfull.jpg',72),(347,'var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/Bird-Island_galleryfull.jpg',73),(352,'var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/Aligator_galleryfull.jpg',74),(265,'var/ezdemo_site/storage/images/getting-started/selected-features/autosave-in-editorial-editing-process/265-1-ger-DE/Autosave-in-Editorial-Editing-Process_contentgrid.png',75),(382,'var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/Amazon-Jungle_campaign.jpg',76),(370,'var/ezdemo_site/storage/images/travel/information/largest-city-without-road-connection/370-1-ger-DE/Largest-City-Without-Road-Connection_campaign.jpg',77),(394,'var/ezdemo_site/storage/images/travel/information/floating-village-in-iquitos-loreto/394-1-ger-DE/Floating-Village-in-Iquitos-Loreto_campaign.jpg',78),(370,'var/ezdemo_site/storage/images/travel/information/largest-city-without-road-connection/370-1-ger-DE/Largest-City-Without-Road-Connection_contentgrid.jpg',79),(394,'var/ezdemo_site/storage/images/travel/information/floating-village-in-iquitos-loreto/394-1-ger-DE/Floating-Village-in-Iquitos-Loreto_contentgrid.jpg',80),(451,'var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/New-York-City_campaign.jpg',81),(413,'var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/New-York-Cab_reference.jpg',82),(413,'var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/New-York-Cab_small.jpg',83),(424,'var/ezdemo_site/storage/images/city-shopping/products/city-view/424-1-ger-DE/City-View_reference.jpg',84),(424,'var/ezdemo_site/storage/images/city-shopping/products/city-view/424-1-ger-DE/City-View_small.jpg',85),(435,'var/ezdemo_site/storage/images/city-shopping/products/street-crossing/435-1-ger-DE/Street-Crossing_reference.jpg',86),(435,'var/ezdemo_site/storage/images/city-shopping/products/street-crossing/435-1-ger-DE/Street-Crossing_small.jpg',87),(413,'var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/New-York-Cab_productthumbnail.jpg',88),(413,'var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/New-York-Cab_medium.jpg',90),(172,'var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE/eZ-Publish-Demo-Design1_reference.png',91),(172,'var/ezdemo_site/storage/images/design/plain-site/172-2-ger-DE/eZ-Publish-Demo-Design1_large.png',92),(301,'var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-etna/301-1-ger-DE/trashed/51845c0dc34fb57f09d59d8869753c6c.jpg',93),(301,'var/ezdemo_site/storage/images/getting-started/selected-features/getting-started-with-ez-publish-etna/301-1-ger-DE/trashed/51845c0dc34fb57f09d59d8869753c6c_campaign.jpg',94),(289,'var/ezdemo_site/storage/images/getting-started/selected-features/improved-online-analytics/289-1-ger-DE/trashed/45b211711c1c8b86ef0d77c31fa4e385.png',95),(289,'var/ezdemo_site/storage/images/getting-started/selected-features/improved-online-analytics/289-1-ger-DE/trashed/45b211711c1c8b86ef0d77c31fa4e385_contentgrid.png',96),(277,'var/ezdemo_site/storage/images/getting-started/selected-features/multivariate-testing/277-1-ger-DE/trashed/2dfc2002e21795cc66b5b51be2964065.png',97),(277,'var/ezdemo_site/storage/images/getting-started/selected-features/multivariate-testing/277-1-ger-DE/trashed/2dfc2002e21795cc66b5b51be2964065_contentgrid.png',98),(265,'var/ezdemo_site/storage/images/getting-started/selected-features/autosave-in-editorial-editing-process/265-1-ger-DE/trashed/6ab3fed97980e0c706db92a41129f2d6.png',99),(253,'var/ezdemo_site/storage/images/getting-started/selected-features/search-result-clustering-with-ez-find/253-1-ger-DE/trashed/c81119e9f40047f343202d901cf37236.png',100),(253,'var/ezdemo_site/storage/images/getting-started/selected-features/search-result-clustering-with-ez-find/253-1-ger-DE/trashed/c81119e9f40047f343202d901cf37236_contentgrid.png',101),(394,'var/ezdemo_site/storage/images/travel/information/floating-village-in-iquitos-loreto/394-1-ger-DE/trashed/6a00dde5cbe5b09c17daaee7c245311f.jpg',102),(382,'var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/trashed/413285ceedee2abf49334374d8ec149f.jpg',103),(382,'var/ezdemo_site/storage/images/travel/information/amazon-jungle/382-1-ger-DE/trashed/413285ceedee2abf49334374d8ec149f_contentgrid.jpg',104),(370,'var/ezdemo_site/storage/images/travel/information/largest-city-without-road-connection/370-1-ger-DE/trashed/4e1df6115c63b1ea36a79a9a478130d2.jpg',105),(352,'var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/trashed/914980befc15af2e0746ef34a44a64fe.jpg',106),(352,'var/ezdemo_site/storage/images/travel/peruvian-amazon/aligator/352-1-ger-DE/trashed/914980befc15af2e0746ef34a44a64fe_gallery.jpg',107),(347,'var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/trashed/acbb1752127ab5759c1629dea776ac42.jpg',108),(347,'var/ezdemo_site/storage/images/travel/peruvian-amazon/bird-island/347-1-ger-DE/trashed/acbb1752127ab5759c1629dea776ac42_gallery.jpg',109),(342,'var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/trashed/fde2b25e52d32b80b4e8e82a9e2ace42.jpg',110),(342,'var/ezdemo_site/storage/images/travel/peruvian-amazon/heron-in-the-water/342-1-ger-DE/trashed/fde2b25e52d32b80b4e8e82a9e2ace42_gallery.jpg',111),(337,'var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/trashed/922cf4c2e88efe4cdc5457f34a8ac9cb.jpg',112),(337,'var/ezdemo_site/storage/images/travel/peruvian-amazon/hat-on-a-stick/337-1-ger-DE/trashed/922cf4c2e88efe4cdc5457f34a8ac9cb_gallery.jpg',113),(332,'var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/trashed/4d8da5de9fcaeb1ddb5f5ec72770942a.jpg',114),(332,'var/ezdemo_site/storage/images/travel/peruvian-amazon/turtles/332-1-ger-DE/trashed/4d8da5de9fcaeb1ddb5f5ec72770942a_gallery.jpg',115),(327,'var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/trashed/fd136a686eec1dbdf7a712c26683513e.jpg',116),(327,'var/ezdemo_site/storage/images/travel/peruvian-amazon/flying-bird/327-1-ger-DE/trashed/fd136a686eec1dbdf7a712c26683513e_gallery.jpg',117),(322,'var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/trashed/57e32bab4ae215aa42766fa34edc1d3d.jpg',118),(322,'var/ezdemo_site/storage/images/travel/peruvian-amazon/river-boat/322-1-ger-DE/trashed/57e32bab4ae215aa42766fa34edc1d3d_gallery.jpg',119),(317,'var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/trashed/c077460b33068b0188a9dd5140d186d7.jpg',120),(317,'var/ezdemo_site/storage/images/travel/peruvian-amazon/amazon-side-river/317-1-ger-DE/trashed/c077460b33068b0188a9dd5140d186d7_gallery.jpg',121),(451,'var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/trashed/0a69cc3132e3fbfad7a2ee1d37ba7eb5.jpg',122),(451,'var/ezdemo_site/storage/images/city-shopping/locations/new-york-city/451-1-ger-DE/trashed/0a69cc3132e3fbfad7a2ee1d37ba7eb5_contentgrid.jpg',123),(435,'var/ezdemo_site/storage/images/city-shopping/products/street-crossing/435-1-ger-DE/trashed/341aeb018f1ce2928367c3274deb72c2.jpg',124),(424,'var/ezdemo_site/storage/images/city-shopping/products/city-view/424-1-ger-DE/trashed/83e77dce7ef558f292e534d67591414b.jpg',125),(413,'var/ezdemo_site/storage/images/city-shopping/products/new-york-cab/413-1-ger-DE/trashed/f73dfd4da5acdd84bea5ad26efc90de5.jpg',126),(767,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A.png',128),(767,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_reference.png',129),(767,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_small.png',130),(767,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_productthumbnail.png',131),(767,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_large.png',132),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner.png',151),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_reference.png',152),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_small.png',153),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_medium.png',181),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_listitem.png',182),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_articleimage.png',183),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_articlethumbnail.png',184),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_gallerythumbnail.png',185),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_galleryline.png',186),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_imagelarge.png',187),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_large.png',188),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_rss.png',189),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_logo.png',190),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_infoboximage.png',191),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_billboard.png',192),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_productthumbnail.png',193),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_productimage.png',194),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_mainstory1.png',195),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_mainstory2.png',196),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_mainstory3.png',197),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_block2items1.png',198),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_block2items2.png',199),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_block3items3.png',200),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_blockgallery1.png',201),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_campaign.png',202),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_backgroundimage.png',203),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_highlighted.png',204),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_contentgrid.png',205),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_gallery.png',206),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_galleryfull.png',207),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_imagefull.png',208),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_multiuploadthumbnail.png',209),(828,'var/ezdemo_site/storage/images/banner/banner/828-1-ger-DE/banner_banner.png',218),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner.png',220),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_reference.png',221),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_small.png',222),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_imagelarge.png',223),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_mainstory1.png',224),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_mainstory2.png',225),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_mainstory3.png',226),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_block2items1.png',227),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_block2items2.png',228),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_block3items3.png',229),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_blockgallery1.png',230),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_campaign.png',231),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_backgroundimage.png',232),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_highlighted.png',233),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_contentgrid.png',234),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_gallery.png',235),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_galleryfull.png',236),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_imagefull.png',237),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_multiuploadthumbnail.png',238),(843,'var/ezdemo_site/storage/images/banner/banner2/828-1-ger-DE/banner_banner.png',239),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner.png',240),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_reference.png',241),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_small.png',242),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_imagelarge.png',243),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_mainstory1.png',244),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_mainstory2.png',245),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_mainstory3.png',246),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_block2items1.png',247),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_block2items2.png',248),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_block3items3.png',249),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_blockgallery1.png',250),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_campaign.png',251),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_backgroundimage.png',252),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_highlighted.png',253),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_contentgrid.png',254),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_gallery.png',255),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_galleryfull.png',256),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_imagefull.png',257),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_multiuploadthumbnail.png',258),(848,'var/ezdemo_site/storage/images/banner/banner3/828-1-ger-DE/banner_banner.png',259),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A.png',260),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A_reference.png',261),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A_small.png',262),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a2/767-2-ger-DE/Pizza-L.A_large.png',263),(855,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A.png',264),(855,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_reference.png',265),(855,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_small.png',266),(855,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_large.png',267),(858,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A.png',268),(858,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_reference.png',269),(858,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_small.png',270),(858,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_large.png',271),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California.png',275),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California_reference.png',276),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California_small.png',277),(862,'var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer.jpg',279),(862,'var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer_reference.jpg',280),(862,'var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer_small.jpg',281),(862,'var/ezdemo_site/storage/images/banner/somer/862-1-ger-DE/Somer_banner.jpg',282),(767,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a/767-2-ger-DE/Pizza-L.A_product_view.png',283),(852,'var/ezdemo_site/storage/images/foods/pizza/pizza-california/852-3-ger-DE/Pizza-California_product_view.png',284),(855,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a3/767-2-ger-DE/Pizza-L.A_product_view.png',285),(858,'var/ezdemo_site/storage/images/foods/pizza/pizza-l.a4/767-2-ger-DE/Pizza-L.A_product_view.png',286),(871,'var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger.jpg',288),(871,'var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_reference.jpg',289),(871,'var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_small.jpg',290),(871,'var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_large.jpg',291),(871,'var/ezdemo_site/storage/images/foods/burger/871-2-ger-DE/Burger_section_view.jpg',292),(871,'var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger.jpg',295),(871,'var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_section_view.jpg',296),(871,'var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_reference.jpg',297),(871,'var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_small.jpg',298),(871,'var/ezdemo_site/storage/images/foods/burger/871-3-ger-DE/Burger_large.jpg',299);
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group` DISABLE KEYS */;
INSERT INTO `ezisbn_group` VALUES ('English language',0,1),('English language',1,2),('French language',2,3),('German language',3,4),('Japan',4,5),('Russian Federation and former USSR',5,6),('Iran',600,7),('Kazakhstan',601,8),('Indonesia',602,9),('Saudi Arabia',603,10),('Vietnam',604,11),('Turkey',605,12),('Romania',606,13),('Mexico',607,14),('Macedonia',608,15),('Lithuania',609,16),('Thailand',611,17),('Peru',612,18),('Mauritius',613,19),('Lebanon',614,20),('Hungary',615,21),('Thailand',616,22),('Ukraine',617,23),('China, People\'s Republic',7,24),('Czech Republic and Slovakia',80,25),('India',81,26),('Norway',82,27),('Poland',83,28),('Spain',84,29),('Brazil',85,30),('Serbia and Montenegro',86,31),('Denmark',87,32),('Italy',88,33),('Korea, Republic',89,34),('Netherlands',90,35),('Sweden',91,36),('International NGO Publishers and EC Organizations',92,37),('India',93,38),('Netherlands',94,39),('Argentina',950,40),('Finland',951,41),('Finland',952,42),('Croatia',953,43),('Bulgaria',954,44),('Sri Lanka',955,45),('Chile',956,46),('Taiwan',957,47),('Colombia',958,48),('Cuba',959,49),('Greece',960,50),('Slovenia',961,51),('Hong Kong, China',962,52),('Hungary',963,53),('Iran',964,54),('Israel',965,55),('Ukraine',966,56),('Malaysia',967,57),('Mexico',968,58),('Pakistan',969,59),('Mexico',970,60),('Philippines',971,61),('Portugal',972,62),('Romania',973,63),('Thailand',974,64),('Turkey',975,65),('Caribbean Community',976,66),('Egypt',977,67),('Nigeria',978,68),('Indonesia',979,69),('Venezuela',980,70),('Singapore',981,71),('South Pacific',982,72),('Malaysia',983,73),('Bangladesh',984,74),('Belarus',985,75),('Taiwan',986,76),('Argentina',987,77),('Hong Kong, China',988,78),('Portugal',989,79),('Qatar',9927,80),('Albania',9928,81),('Guatemala',9929,82),('Costa Rica',9930,83),('Algeria',9931,84),('Lao People\'s Democratic Republic',9932,85),('Syria',9933,86),('Latvia',9934,87),('Iceland',9935,88),('Afghanistan',9936,89),('Nepal',9937,90),('Tunisia',9938,91),('Armenia',9939,92),('Montenegro',9940,93),('Georgia',9941,94),('Ecuador',9942,95),('Uzbekistan',9943,96),('Turkey',9944,97),('Dominican Republic',9945,98),('Korea, P.D.R.',9946,99),('Algeria',9947,100),('United Arab Emirates',9948,101),('Estonia',9949,102),('Palestine',9950,103),('Kosova',9951,104),('Azerbaijan',9952,105),('Lebanon',9953,106),('Morocco',9954,107),('Lithuania',9955,108),('Cameroon',9956,109),('Jordan',9957,110),('Bosnia and Herzegovina',9958,111),('Libya',9959,112),('Saudi Arabia',9960,113),('Algeria',9961,114),('Panama',9962,115),('Cyprus',9963,116),('Ghana',9964,117),('Kazakhstan',9965,118),('Kenya',9966,119),('Kyrgyz Republic',9967,120),('Costa Rica',9968,121),('Uganda',9970,122),('Singapore',9971,123),('Peru',9972,124),('Tunisia',9973,125),('Uruguay',9974,126),('Moldova',9975,127),('Tanzania',9976,128),('Costa Rica',9977,129),('Ecuador',9978,130),('Iceland',9979,131),('Papua New Guinea',9980,132),('Morocco',9981,133),('Zambia',9982,134),('Gambia',9983,135),('Latvia',9984,136),('Estonia',9985,137),('Lithuania',9986,138),('Tanzania',9987,139),('Ghana',9988,140),('Macedonia',9989,141),('Bahrain',99901,142),('Gabon',99902,143),('Mauritius',99903,144),('Netherlands Antilles and Aruba',99904,145),('Bolivia',99905,146),('Kuwait',99906,147),('Malawi',99908,148),('Malta',99909,149),('Sierra Leone',99910,150),('Lesotho',99911,151),('Botswana',99912,152),('Andorra',99913,153),('Suriname',99914,154),('Maldives',99915,155),('Namibia',99916,156),('Brunei Darussalam',99917,157),('Faroe Islands',99918,158),('Benin',99919,159),('Andorra',99920,160),('Qatar',99921,161),('Guatemala',99922,162),('El Salvador',99923,163),('Nicaragua',99924,164),('Paraguay',99925,165),('Honduras',99926,166),('Albania',99927,167),('Georgia',99928,168),('Mongolia',99929,169),('Armenia',99930,170),('Seychelles',99931,171),('Malta',99932,172),('Nepal',99933,173),('Dominican Republic',99934,174),('Haiti',99935,175),('Bhutan',99936,176),('Macau',99937,177),('Srpska, Republic of',99938,178),('Guatemala',99939,179),('Georgia',99940,180),('Armenia',99941,181),('Sudan',99942,182),('Albania',99943,183),('Ethiopia',99944,184),('Namibia',99945,185),('Nepal',99946,186),('Tajikistan',99947,187),('Eritrea',99948,188),('Mauritius',99949,189),('Cambodia',99950,190),('Congo',99951,191),('Mali',99952,192),('Paraguay',99953,193),('Bolivia',99954,194),('Srpska, Republic of',99955,195),('Albania',99956,196),('Malta',99957,197),('Bahrain',99958,198),('Luxembourg',99959,199),('Malawi',99960,200),('El Salvador',99961,201),('Mongolia',99962,202),('Cambodia',99963,203),('Nicaragua',99964,204),('Macau',99965,205),('Kuwait',99966,206),('Paraguay',99967,207),('Botswana',99968,208),('France',10,209);
/*!40000 ALTER TABLE `ezisbn_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range` DISABLE KEYS */;
INSERT INTO `ezisbn_group_range` VALUES (0,'0',1,'5',1,59999),(60000,'600',3,'649',2,64999),(70000,'7',1,'7',3,79999),(80000,'80',2,'94',4,94999),(95000,'950',3,'989',5,98999),(99000,'9900',4,'9989',6,99899),(99900,'99900',5,'99999',7,99999),(10000,'10',2,'10',8,10999);
/*!40000 ALTER TABLE `ezisbn_group_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range` DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range` VALUES (0,1,1,'00',2,'19',19999),(20000,2,1,'200',3,'699',69999),(70000,3,1,'7000',4,'8499',84999),(85000,4,1,'85000',5,'89999',89999),(90000,5,1,'900000',6,'949999',94999),(95000,6,1,'9500000',7,'9999999',99999),(0,7,2,'00',2,'09',9999),(10000,8,2,'100',3,'399',39999),(40000,9,2,'4000',4,'5499',54999),(55000,10,2,'55000',5,'86979',86979),(86980,11,2,'869800',6,'998999',99899),(99900,12,2,'9990000',7,'9999999',99999),(0,13,3,'00',2,'19',19999),(20000,14,3,'200',3,'349',34999),(35000,15,3,'35000',5,'39999',39999),(40000,16,3,'400',3,'699',69999),(70000,17,3,'7000',4,'8399',83999),(84000,18,3,'84000',5,'89999',89999),(90000,19,3,'900000',6,'949999',94999),(95000,20,3,'9500000',7,'9999999',99999),(0,21,4,'00',2,'02',2999),(3000,22,4,'030',3,'033',3399),(3400,23,4,'0340',4,'0369',3699),(3700,24,4,'03700',5,'03999',3999),(4000,25,4,'04',2,'19',19999),(20000,26,4,'200',3,'699',69999),(70000,27,4,'7000',4,'8499',84999),(85000,28,4,'85000',5,'89999',89999),(90000,29,4,'900000',6,'949999',94999),(95000,30,4,'9500000',7,'9539999',95399),(95400,31,4,'95400',5,'96999',96999),(97000,32,4,'9700000',7,'9899999',98999),(99000,33,4,'99000',5,'99499',99499),(99500,34,4,'99500',5,'99999',99999),(0,35,5,'00',2,'19',19999),(20000,36,5,'200',3,'699',69999),(70000,37,5,'7000',4,'8499',84999),(85000,38,5,'85000',5,'89999',89999),(90000,39,5,'900000',6,'949999',94999),(95000,40,5,'9500000',7,'9999999',99999),(0,41,6,'00',2,'19',19999),(20000,42,6,'200',3,'420',42099),(42100,43,6,'4210',4,'4299',42999),(43000,44,6,'430',3,'430',43099),(43100,45,6,'4310',4,'4399',43999),(44000,46,6,'440',3,'440',44099),(44100,47,6,'4410',4,'4499',44999),(45000,48,6,'450',3,'699',69999),(70000,49,6,'7000',4,'8499',84999),(85000,50,6,'85000',5,'89999',89999),(90000,51,6,'900000',6,'909999',90999),(91000,52,6,'91000',5,'91999',91999),(92000,53,6,'9200',4,'9299',92999),(93000,54,6,'93000',5,'94999',94999),(95000,55,6,'9500000',7,'9500999',95009),(95010,56,6,'9501',4,'9799',97999),(98000,57,6,'98000',5,'98999',98999),(99000,58,6,'9900000',7,'9909999',99099),(99100,59,6,'9910',4,'9999',99999),(0,60,7,'00',2,'09',9999),(10000,61,7,'100',3,'499',49999),(50000,62,7,'5000',4,'8999',89999),(90000,63,7,'90000',5,'99999',99999),(0,64,8,'00',2,'19',19999),(20000,65,8,'200',3,'699',69999),(70000,66,8,'7000',4,'7999',79999),(80000,67,8,'80000',5,'84999',84999),(85000,68,8,'85',2,'99',99999),(0,69,9,'00',2,'19',19999),(20000,70,9,'200',3,'799',79999),(80000,71,9,'8000',4,'9499',94999),(95000,72,9,'95000',5,'99999',99999),(0,73,10,'00',2,'04',4999),(5000,74,10,'05',2,'49',49999),(50000,75,10,'500',3,'799',79999),(80000,76,10,'8000',4,'8999',89999),(90000,77,10,'90000',5,'99999',99999),(0,78,11,'0',1,'4',49999),(50000,79,11,'50',2,'89',89999),(90000,80,11,'900',3,'979',97999),(98000,81,11,'9800',4,'9999',99999),(1000,82,12,'01',2,'09',9999),(10000,83,12,'100',3,'399',39999),(40000,84,12,'4000',4,'5999',59999),(60000,85,12,'60000',5,'89999',89999),(90000,86,12,'90',2,'99',99999),(0,87,13,'0',1,'0',9999),(10000,88,13,'10',2,'49',49999),(50000,89,13,'500',3,'799',79999),(80000,90,13,'8000',4,'9199',91999),(92000,91,13,'92000',5,'99999',99999),(0,92,14,'00',2,'39',39999),(40000,93,14,'400',3,'749',74999),(75000,94,14,'7500',4,'9499',94999),(95000,95,14,'95000',5,'99999',99999),(0,96,15,'0',1,'0',9999),(10000,97,15,'10',2,'19',19999),(20000,98,15,'200',3,'449',44999),(45000,99,15,'4500',4,'6499',64999),(65000,100,15,'65000',5,'69999',69999),(70000,101,15,'7',1,'9',99999),(0,102,16,'00',2,'39',39999),(40000,103,16,'400',3,'799',79999),(80000,104,16,'8000',4,'9499',94999),(95000,105,16,'95000',5,'99999',99999),(0,106,18,'00',2,'29',29999),(30000,107,18,'300',3,'399',39999),(40000,108,18,'4000',4,'4499',44999),(45000,109,18,'45000',5,'49999',49999),(50000,110,18,'50',2,'99',99999),(0,111,19,'0',1,'9',99999),(0,112,20,'00',2,'39',39999),(40000,113,20,'400',3,'799',79999),(80000,114,20,'8000',4,'9499',94999),(95000,115,20,'95000',5,'99999',99999),(0,116,21,'00',2,'09',9999),(10000,117,21,'100',3,'499',49999),(50000,118,21,'5000',4,'7999',79999),(80000,119,21,'80000',5,'89999',89999),(0,120,22,'00',2,'19',19999),(20000,121,22,'200',3,'699',69999),(70000,122,22,'7000',4,'8999',89999),(90000,123,22,'90000',5,'99999',99999),(0,124,23,'00',2,'49',49999),(50000,125,23,'500',3,'699',69999),(70000,126,23,'7000',4,'8999',89999),(90000,127,23,'90000',5,'99999',99999),(0,128,24,'00',2,'09',9999),(10000,129,24,'100',3,'499',49999),(50000,130,24,'5000',4,'7999',79999),(80000,131,24,'80000',5,'89999',89999),(90000,132,24,'900000',6,'999999',99999),(0,133,25,'00',2,'19',19999),(20000,134,25,'200',3,'699',69999),(70000,135,25,'7000',4,'8499',84999),(85000,136,25,'85000',5,'89999',89999),(90000,137,25,'900000',6,'999999',99999),(0,138,26,'00',2,'19',19999),(20000,139,26,'200',3,'699',69999),(70000,140,26,'7000',4,'8499',84999),(85000,141,26,'85000',5,'89999',89999),(90000,142,26,'900000',6,'999999',99999),(0,143,27,'00',2,'19',19999),(20000,144,27,'200',3,'699',69999),(70000,145,27,'7000',4,'8999',89999),(90000,146,27,'90000',5,'98999',98999),(99000,147,27,'990000',6,'999999',99999),(0,148,28,'00',2,'19',19999),(20000,149,28,'200',3,'599',59999),(60000,150,28,'60000',5,'69999',69999),(70000,151,28,'7000',4,'8499',84999),(85000,152,28,'85000',5,'89999',89999),(90000,153,28,'900000',6,'999999',99999),(0,154,29,'00',2,'14',14999),(15000,155,29,'15000',5,'19999',19999),(20000,156,29,'200',3,'699',69999),(70000,157,29,'7000',4,'8499',84999),(85000,158,29,'85000',5,'89999',89999),(90000,159,29,'9000',4,'9199',91999),(92000,160,29,'920000',6,'923999',92399),(92400,161,29,'92400',5,'92999',92999),(93000,162,29,'930000',6,'949999',94999),(95000,163,29,'95000',5,'96999',96999),(97000,164,29,'9700',4,'9999',99999),(0,165,30,'00',2,'19',19999),(20000,166,30,'200',3,'599',59999),(60000,167,30,'60000',5,'69999',69999),(70000,168,30,'7000',4,'8499',84999),(85000,169,30,'85000',5,'89999',89999),(90000,170,30,'900000',6,'979999',97999),(98000,171,30,'98000',5,'99999',99999),(0,172,31,'00',2,'29',29999),(30000,173,31,'300',3,'599',59999),(60000,174,31,'6000',4,'7999',79999),(80000,175,31,'80000',5,'89999',89999),(90000,176,31,'900000',6,'999999',99999),(0,177,32,'00',2,'29',29999),(40000,178,32,'400',3,'649',64999),(70000,179,32,'7000',4,'7999',79999),(85000,180,32,'85000',5,'94999',94999),(97000,181,32,'970000',6,'999999',99999),(0,182,33,'00',2,'19',19999),(20000,183,33,'200',3,'599',59999),(60000,184,33,'6000',4,'8499',84999),(85000,185,33,'85000',5,'89999',89999),(90000,186,33,'900000',6,'949999',94999),(95000,187,33,'95000',5,'99999',99999),(0,188,34,'00',2,'24',24999),(25000,189,34,'250',3,'549',54999),(55000,190,34,'5500',4,'8499',84999),(85000,191,34,'85000',5,'94999',94999),(95000,192,34,'950000',6,'969999',96999),(97000,193,34,'97000',5,'98999',98999),(99000,194,34,'990',3,'999',99999),(0,195,35,'00',2,'19',19999),(20000,196,35,'200',3,'499',49999),(50000,197,35,'5000',4,'6999',69999),(70000,198,35,'70000',5,'79999',79999),(80000,199,35,'800000',6,'849999',84999),(85000,200,35,'8500',4,'8999',89999),(90000,201,35,'90',2,'90',90999),(91000,202,35,'910000',6,'939999',93999),(94000,203,35,'94',2,'94',94999),(95000,204,35,'950000',6,'999999',99999),(0,205,36,'0',1,'1',19999),(20000,206,36,'20',2,'49',49999),(50000,207,36,'500',3,'649',64999),(70000,208,36,'7000',4,'7999',79999),(85000,209,36,'85000',5,'94999',94999),(97000,210,36,'970000',6,'999999',99999),(0,211,37,'0',1,'5',59999),(60000,212,37,'60',2,'79',79999),(80000,213,37,'800',3,'899',89999),(90000,214,37,'9000',4,'9499',94999),(95000,215,37,'95000',5,'98999',98999),(99000,216,37,'990000',6,'999999',99999),(0,217,38,'00',2,'09',9999),(10000,218,38,'100',3,'499',49999),(50000,219,38,'5000',4,'7999',79999),(80000,220,38,'80000',5,'94999',94999),(95000,221,38,'950000',6,'999999',99999),(0,222,39,'000',3,'599',59999),(60000,223,39,'6000',4,'8999',89999),(90000,224,39,'90000',5,'99999',99999),(0,225,40,'00',2,'49',49999),(50000,226,40,'500',3,'899',89999),(90000,227,40,'9000',4,'9899',98999),(99000,228,40,'99000',5,'99999',99999),(0,229,41,'0',1,'1',19999),(20000,230,41,'20',2,'54',54999),(55000,231,41,'550',3,'889',88999),(89000,232,41,'8900',4,'9499',94999),(95000,233,41,'95000',5,'99999',99999),(0,234,42,'00',2,'19',19999),(20000,235,42,'200',3,'499',49999),(50000,236,42,'5000',4,'5999',59999),(60000,237,42,'60',2,'65',65999),(66000,238,42,'6600',4,'6699',66999),(67000,239,42,'67000',5,'69999',69999),(70000,240,42,'7000',4,'7999',79999),(80000,241,42,'80',2,'94',94999),(95000,242,42,'9500',4,'9899',98999),(99000,243,42,'99000',5,'99999',99999),(0,244,43,'0',1,'0',9999),(10000,245,43,'10',2,'14',14999),(15000,246,43,'150',3,'549',54999),(55000,247,43,'55000',5,'59999',59999),(60000,248,43,'6000',4,'9499',94999),(95000,249,43,'95000',5,'99999',99999),(0,250,44,'00',2,'28',28999),(29000,251,44,'2900',4,'2999',29999),(30000,252,44,'300',3,'799',79999),(80000,253,44,'8000',4,'8999',89999),(90000,254,44,'90000',5,'92999',92999),(93000,255,44,'9300',4,'9999',99999),(0,256,45,'0000',4,'1999',19999),(20000,257,45,'20',2,'49',49999),(50000,258,45,'50000',5,'54999',54999),(55000,259,45,'550',3,'799',79999),(80000,260,45,'8000',4,'9499',94999),(95000,261,45,'95000',5,'99999',99999),(0,262,46,'00',2,'19',19999),(20000,263,46,'200',3,'699',69999),(70000,264,46,'7000',4,'9999',99999),(0,265,47,'00',2,'02',2999),(3000,266,47,'0300',4,'0499',4999),(5000,267,47,'05',2,'19',19999),(20000,268,47,'2000',4,'2099',20999),(21000,269,47,'21',2,'27',27999),(28000,270,47,'28000',5,'30999',30999),(31000,271,47,'31',2,'43',43999),(44000,272,47,'440',3,'819',81999),(82000,273,47,'8200',4,'9699',96999),(97000,274,47,'97000',5,'99999',99999),(0,275,48,'00',2,'56',56999),(57000,276,48,'57000',5,'59999',59999),(60000,277,48,'600',3,'799',79999),(80000,278,48,'8000',4,'9499',94999),(95000,279,48,'95000',5,'99999',99999),(0,280,49,'00',2,'19',19999),(20000,281,49,'200',3,'699',69999),(70000,282,49,'7000',4,'8499',84999),(85000,283,49,'85000',5,'99999',99999),(0,284,50,'00',2,'19',19999),(20000,285,50,'200',3,'659',65999),(66000,286,50,'6600',4,'6899',68999),(69000,287,50,'690',3,'699',69999),(70000,288,50,'7000',4,'8499',84999),(85000,289,50,'85000',5,'92999',92999),(93000,290,50,'93',2,'93',93999),(94000,291,50,'9400',4,'9799',97999),(98000,292,50,'98000',5,'99999',99999),(0,293,51,'00',2,'19',19999),(20000,294,51,'200',3,'599',59999),(60000,295,51,'6000',4,'8999',89999),(90000,296,51,'90000',5,'94999',94999),(0,297,52,'00',2,'19',19999),(20000,298,52,'200',3,'699',69999),(70000,299,52,'7000',4,'8499',84999),(85000,300,52,'85000',5,'86999',86999),(87000,301,52,'8700',4,'8999',89999),(90000,302,52,'900',3,'999',99999),(0,303,53,'00',2,'19',19999),(20000,304,53,'200',3,'699',69999),(70000,305,53,'7000',4,'8499',84999),(85000,306,53,'85000',5,'89999',89999),(90000,307,53,'9000',4,'9999',99999),(0,308,54,'00',2,'14',14999),(15000,309,54,'150',3,'249',24999),(25000,310,54,'2500',4,'2999',29999),(30000,311,54,'300',3,'549',54999),(55000,312,54,'5500',4,'8999',89999),(90000,313,54,'90000',5,'96999',96999),(97000,314,54,'970',3,'989',98999),(99000,315,54,'9900',4,'9999',99999),(0,316,55,'00',2,'19',19999),(20000,317,55,'200',3,'599',59999),(70000,318,55,'7000',4,'7999',79999),(90000,319,55,'90000',5,'99999',99999),(0,320,56,'00',2,'14',14999),(15000,321,56,'1500',4,'1699',16999),(17000,322,56,'170',3,'199',19999),(20000,323,56,'2000',4,'2999',29999),(30000,324,56,'300',3,'699',69999),(70000,325,56,'7000',4,'8999',89999),(90000,326,56,'90000',5,'99999',99999),(0,327,57,'00',2,'00',999),(1000,328,57,'0100',4,'0999',9999),(10000,329,57,'10000',5,'19999',19999),(30000,330,57,'300',3,'499',49999),(50000,331,57,'5000',4,'5999',59999),(60000,332,57,'60',2,'89',89999),(90000,333,57,'900',3,'989',98999),(99000,334,57,'9900',4,'9989',99899),(99900,335,57,'99900',5,'99999',99999),(1000,336,58,'01',2,'39',39999),(40000,337,58,'400',3,'499',49999),(50000,338,58,'5000',4,'7999',79999),(80000,339,58,'800',3,'899',89999),(90000,340,58,'9000',4,'9999',99999),(0,341,59,'0',1,'1',19999),(20000,342,59,'20',2,'39',39999),(40000,343,59,'400',3,'799',79999),(80000,344,59,'8000',4,'9999',99999),(1000,345,60,'01',2,'59',59999),(60000,346,60,'600',3,'899',89999),(90000,347,60,'9000',4,'9099',90999),(91000,348,60,'91000',5,'96999',96999),(97000,349,60,'9700',4,'9999',99999),(0,350,61,'000',3,'015',1599),(1600,351,61,'0160',4,'0199',1999),(2000,352,61,'02',2,'02',2999),(3000,353,61,'0300',4,'0599',5999),(6000,354,61,'06',2,'09',9999),(10000,355,61,'10',2,'49',49999),(50000,356,61,'500',3,'849',84999),(85000,357,61,'8500',4,'9099',90999),(91000,358,61,'91000',5,'98999',98999),(99000,359,61,'9900',4,'9999',99999),(0,360,62,'0',1,'1',19999),(20000,361,62,'20',2,'54',54999),(55000,362,62,'550',3,'799',79999),(80000,363,62,'8000',4,'9499',94999),(95000,364,62,'95000',5,'99999',99999),(0,365,63,'0',1,'0',9999),(10000,366,63,'100',3,'169',16999),(17000,367,63,'1700',4,'1999',19999),(20000,368,63,'20',2,'54',54999),(55000,369,63,'550',3,'759',75999),(76000,370,63,'7600',4,'8499',84999),(85000,371,63,'85000',5,'88999',88999),(89000,372,63,'8900',4,'9499',94999),(95000,373,63,'95000',5,'99999',99999),(0,374,64,'00',2,'19',19999),(20000,375,64,'200',3,'699',69999),(70000,376,64,'7000',4,'8499',84999),(85000,377,64,'85000',5,'89999',89999),(90000,378,64,'90000',5,'94999',94999),(95000,379,64,'9500',4,'9999',99999),(0,380,65,'00000',5,'01999',1999),(2000,381,65,'02',2,'24',24999),(25000,382,65,'250',3,'599',59999),(60000,383,65,'6000',4,'9199',91999),(92000,384,65,'92000',5,'98999',98999),(99000,385,65,'990',3,'999',99999),(0,386,66,'0',1,'3',39999),(40000,387,66,'40',2,'59',59999),(60000,388,66,'600',3,'799',79999),(80000,389,66,'8000',4,'9499',94999),(95000,390,66,'95000',5,'99999',99999),(0,391,67,'00',2,'19',19999),(20000,392,67,'200',3,'499',49999),(50000,393,67,'5000',4,'6999',69999),(70000,394,67,'700',3,'999',99999),(0,395,68,'000',3,'199',19999),(20000,396,68,'2000',4,'2999',29999),(30000,397,68,'30000',5,'79999',79999),(80000,398,68,'8000',4,'8999',89999),(90000,399,68,'900',3,'999',99999),(0,400,69,'000',3,'099',9999),(10000,401,69,'1000',4,'1499',14999),(15000,402,69,'15000',5,'19999',19999),(20000,403,69,'20',2,'29',29999),(30000,404,69,'3000',4,'3999',39999),(40000,405,69,'400',3,'799',79999),(80000,406,69,'8000',4,'9499',94999),(95000,407,69,'95000',5,'99999',99999),(0,408,70,'00',2,'19',19999),(20000,409,70,'200',3,'599',59999),(60000,410,70,'6000',4,'9999',99999),(0,411,71,'00',2,'11',11999),(12000,412,71,'1200',4,'1999',19999),(20000,413,71,'200',3,'289',28999),(29000,414,71,'2900',4,'9999',99999),(0,415,72,'00',2,'09',9999),(10000,416,72,'100',3,'699',69999),(70000,417,72,'70',2,'89',89999),(90000,418,72,'9000',4,'9799',97999),(98000,419,72,'98000',5,'99999',99999),(0,420,73,'00',2,'01',1999),(2000,421,73,'020',3,'199',19999),(20000,422,73,'2000',4,'3999',39999),(40000,423,73,'40000',5,'44999',44999),(45000,424,73,'45',2,'49',49999),(50000,425,73,'50',2,'79',79999),(80000,426,73,'800',3,'899',89999),(90000,427,73,'9000',4,'9899',98999),(99000,428,73,'99000',5,'99999',99999),(0,429,74,'00',2,'39',39999),(40000,430,74,'400',3,'799',79999),(80000,431,74,'8000',4,'8999',89999),(90000,432,74,'90000',5,'99999',99999),(0,433,75,'00',2,'39',39999),(40000,434,75,'400',3,'599',59999),(60000,435,75,'6000',4,'8999',89999),(90000,436,75,'90000',5,'99999',99999),(0,437,76,'00',2,'11',11999),(12000,438,76,'120',3,'559',55999),(56000,439,76,'5600',4,'7999',79999),(80000,440,76,'80000',5,'99999',99999),(0,441,77,'00',2,'09',9999),(10000,442,77,'1000',4,'1999',19999),(20000,443,77,'20000',5,'29999',29999),(30000,444,77,'30',2,'49',49999),(50000,445,77,'500',3,'899',89999),(90000,446,77,'9000',4,'9499',94999),(95000,447,77,'95000',5,'99999',99999),(0,448,78,'00',2,'14',14999),(15000,449,78,'15000',5,'16999',16999),(17000,450,78,'17000',5,'19999',19999),(20000,451,78,'200',3,'799',79999),(80000,452,78,'8000',4,'9699',96999),(97000,453,78,'97000',5,'99999',99999),(0,454,79,'0',1,'1',19999),(20000,455,79,'20',2,'54',54999),(55000,456,79,'550',3,'799',79999),(80000,457,79,'8000',4,'9499',94999),(95000,458,79,'95000',5,'99999',99999),(0,459,80,'00',2,'09',9999),(10000,460,80,'100',3,'399',39999),(40000,461,80,'4000',4,'4999',49999),(0,462,81,'00',2,'09',9999),(10000,463,81,'100',3,'399',39999),(40000,464,81,'4000',4,'4999',49999),(0,465,82,'0',1,'3',39999),(40000,466,82,'40',2,'54',54999),(55000,467,82,'550',3,'799',79999),(80000,468,82,'8000',4,'9999',99999),(0,469,83,'00',2,'49',49999),(50000,470,83,'500',3,'939',93999),(94000,471,83,'9400',4,'9999',99999),(0,472,84,'00',2,'29',29999),(30000,473,84,'300',3,'899',89999),(90000,474,84,'9000',4,'9999',99999),(0,475,85,'00',2,'39',39999),(40000,476,85,'400',3,'849',84999),(85000,477,85,'8500',4,'9999',99999),(0,478,86,'0',1,'0',9999),(10000,479,86,'10',2,'39',39999),(40000,480,86,'400',3,'899',89999),(90000,481,86,'9000',4,'9999',99999),(0,482,87,'0',1,'0',9999),(10000,483,87,'10',2,'49',49999),(50000,484,87,'500',3,'799',79999),(80000,485,87,'8000',4,'9999',99999),(0,486,88,'0',1,'0',9999),(10000,487,88,'10',2,'39',39999),(40000,488,88,'400',3,'899',89999),(90000,489,88,'9000',4,'9999',99999),(0,490,89,'0',1,'1',19999),(20000,491,89,'20',2,'39',39999),(40000,492,89,'400',3,'799',79999),(80000,493,89,'8000',4,'9999',99999),(0,494,90,'0',1,'2',29999),(30000,495,90,'30',2,'49',49999),(50000,496,90,'500',3,'799',79999),(80000,497,90,'8000',4,'9999',99999),(0,498,91,'00',2,'79',79999),(80000,499,91,'800',3,'949',94999),(95000,500,91,'9500',4,'9999',99999),(0,501,92,'0',1,'4',49999),(50000,502,92,'50',2,'79',79999),(80000,503,92,'800',3,'899',89999),(90000,504,92,'9000',4,'9999',99999),(0,505,93,'0',1,'1',19999),(20000,506,93,'20',2,'49',49999),(50000,507,93,'500',3,'899',89999),(90000,508,93,'9000',4,'9999',99999),(0,509,94,'0',1,'0',9999),(10000,510,94,'10',2,'39',39999),(40000,511,94,'400',3,'899',89999),(90000,512,94,'9000',4,'9999',99999),(0,513,95,'00',2,'89',89999),(90000,514,95,'900',3,'984',98499),(98500,515,95,'9850',4,'9999',99999),(0,516,96,'00',2,'29',29999),(30000,517,96,'300',3,'399',39999),(40000,518,96,'4000',4,'9999',99999),(0,519,97,'0000',4,'0999',9999),(10000,520,97,'100',3,'499',49999),(50000,521,97,'5000',4,'5999',59999),(60000,522,97,'60',2,'69',69999),(70000,523,97,'700',3,'799',79999),(80000,524,97,'80',2,'89',89999),(90000,525,97,'900',3,'999',99999),(0,526,98,'00',2,'00',999),(1000,527,98,'010',3,'079',7999),(8000,528,98,'08',2,'39',39999),(40000,529,98,'400',3,'569',56999),(57000,530,98,'57',2,'57',57999),(58000,531,98,'580',3,'849',84999),(85000,532,98,'8500',4,'9999',99999),(0,533,99,'0',1,'1',19999),(20000,534,99,'20',2,'39',39999),(40000,535,99,'400',3,'899',89999),(90000,536,99,'9000',4,'9999',99999),(0,537,100,'0',1,'1',19999),(20000,538,100,'20',2,'79',79999),(80000,539,100,'800',3,'999',99999),(0,540,101,'00',2,'39',39999),(40000,541,101,'400',3,'849',84999),(85000,542,101,'8500',4,'9999',99999),(0,543,102,'0',1,'0',9999),(10000,544,102,'10',2,'39',39999),(40000,545,102,'400',3,'899',89999),(90000,546,102,'9000',4,'9999',99999),(0,547,103,'00',2,'29',29999),(30000,548,103,'300',3,'849',84999),(85000,549,103,'8500',4,'9999',99999),(0,550,104,'00',2,'39',39999),(40000,551,104,'400',3,'849',84999),(85000,552,104,'8500',4,'9999',99999),(0,553,105,'0',1,'1',19999),(20000,554,105,'20',2,'39',39999),(40000,555,105,'400',3,'799',79999),(80000,556,105,'8000',4,'9999',99999),(0,557,106,'0',1,'0',9999),(10000,558,106,'10',2,'39',39999),(40000,559,106,'400',3,'599',59999),(60000,560,106,'60',2,'89',89999),(90000,561,106,'9000',4,'9999',99999),(0,562,107,'0',1,'1',19999),(20000,563,107,'20',2,'39',39999),(40000,564,107,'400',3,'799',79999),(80000,565,107,'8000',4,'9999',99999),(0,566,108,'00',2,'39',39999),(40000,567,108,'400',3,'929',92999),(93000,568,108,'9300',4,'9999',99999),(0,569,109,'0',1,'0',9999),(10000,570,109,'10',2,'39',39999),(40000,571,109,'400',3,'899',89999),(90000,572,109,'9000',4,'9999',99999),(0,573,110,'00',2,'39',39999),(40000,574,110,'400',3,'699',69999),(70000,575,110,'70',2,'84',84999),(85000,576,110,'8500',4,'8799',87999),(88000,577,110,'88',2,'99',99999),(0,578,111,'0',1,'0',9999),(10000,579,111,'10',2,'18',18999),(19000,580,111,'1900',4,'1999',19999),(20000,581,111,'20',2,'49',49999),(50000,582,111,'500',3,'899',89999),(90000,583,111,'9000',4,'9999',99999),(0,584,112,'0',1,'1',19999),(20000,585,112,'20',2,'79',79999),(80000,586,112,'800',3,'949',94999),(95000,587,112,'9500',4,'9999',99999),(0,588,113,'00',2,'59',59999),(60000,589,113,'600',3,'899',89999),(90000,590,113,'9000',4,'9999',99999),(0,591,114,'0',1,'2',29999),(30000,592,114,'30',2,'69',69999),(70000,593,114,'700',3,'949',94999),(95000,594,114,'9500',4,'9999',99999),(0,595,115,'00',2,'54',54999),(55000,596,115,'5500',4,'5599',55999),(56000,597,115,'56',2,'59',59999),(60000,598,115,'600',3,'849',84999),(85000,599,115,'8500',4,'9999',99999),(0,600,116,'0',1,'2',29999),(30000,601,116,'30',2,'54',54999),(55000,602,116,'550',3,'734',73499),(73500,603,116,'7350',4,'7499',74999),(75000,604,116,'7500',4,'9999',99999),(0,605,117,'0',1,'6',69999),(70000,606,117,'70',2,'94',94999),(95000,607,117,'950',3,'999',99999),(0,608,118,'00',2,'39',39999),(40000,609,118,'400',3,'899',89999),(90000,610,118,'9000',4,'9999',99999),(0,611,119,'000',3,'149',14999),(15000,612,119,'1500',4,'1999',19999),(20000,613,119,'20',2,'69',69999),(70000,614,119,'7000',4,'7499',74999),(75000,615,119,'750',3,'959',95999),(96000,616,119,'9600',4,'9999',99999),(0,617,120,'00',2,'39',39999),(40000,618,120,'400',3,'899',89999),(90000,619,120,'9000',4,'9999',99999),(0,620,121,'00',2,'49',49999),(50000,621,121,'500',3,'939',93999),(94000,622,121,'9400',4,'9999',99999),(0,623,122,'00',2,'39',39999),(40000,624,122,'400',3,'899',89999),(90000,625,122,'9000',4,'9999',99999),(0,626,123,'0',1,'5',59999),(60000,627,123,'60',2,'89',89999),(90000,628,123,'900',3,'989',98999),(99000,629,123,'9900',4,'9999',99999),(0,630,124,'00',2,'09',9999),(10000,631,124,'1',1,'1',19999),(20000,632,124,'200',3,'249',24999),(25000,633,124,'2500',4,'2999',29999),(30000,634,124,'30',2,'59',59999),(60000,635,124,'600',3,'899',89999),(90000,636,124,'9000',4,'9999',99999),(0,637,125,'00',2,'05',5999),(6000,638,125,'060',3,'089',8999),(9000,639,125,'0900',4,'0999',9999),(10000,640,125,'10',2,'69',69999),(70000,641,125,'700',3,'969',96999),(97000,642,125,'9700',4,'9999',99999),(0,643,126,'0',1,'2',29999),(30000,644,126,'30',2,'54',54999),(55000,645,126,'550',3,'749',74999),(75000,646,126,'7500',4,'9499',94999),(95000,647,126,'95',2,'99',99999),(0,648,127,'0',1,'0',9999),(10000,649,127,'100',3,'399',39999),(40000,650,127,'4000',4,'4499',44999),(45000,651,127,'45',2,'89',89999),(90000,652,127,'900',3,'949',94999),(95000,653,127,'9500',4,'9999',99999),(0,654,128,'0',1,'5',59999),(60000,655,128,'60',2,'89',89999),(90000,656,128,'900',3,'989',98999),(99000,657,128,'9900',4,'9999',99999),(0,658,129,'00',2,'89',89999),(90000,659,129,'900',3,'989',98999),(99000,660,129,'9900',4,'9999',99999),(0,661,130,'00',2,'29',29999),(30000,662,130,'300',3,'399',39999),(40000,663,130,'40',2,'94',94999),(95000,664,130,'950',3,'989',98999),(99000,665,130,'9900',4,'9999',99999),(0,666,131,'0',1,'4',49999),(50000,667,131,'50',2,'64',64999),(65000,668,131,'650',3,'659',65999),(66000,669,131,'66',2,'75',75999),(76000,670,131,'760',3,'899',89999),(90000,671,131,'9000',4,'9999',99999),(0,672,132,'0',1,'3',39999),(40000,673,132,'40',2,'89',89999),(90000,674,132,'900',3,'989',98999),(99000,675,132,'9900',4,'9999',99999),(0,676,133,'00',2,'09',9999),(10000,677,133,'100',3,'159',15999),(16000,678,133,'1600',4,'1999',19999),(20000,679,133,'20',2,'79',79999),(80000,680,133,'800',3,'949',94999),(95000,681,133,'9500',4,'9999',99999),(0,682,134,'00',2,'79',79999),(80000,683,134,'800',3,'989',98999),(99000,684,134,'9900',4,'9999',99999),(80000,685,135,'80',2,'94',94999),(95000,686,135,'950',3,'989',98999),(99000,687,135,'9900',4,'9999',99999),(0,688,136,'00',2,'49',49999),(50000,689,136,'500',3,'899',89999),(90000,690,136,'9000',4,'9999',99999),(0,691,137,'0',1,'4',49999),(50000,692,137,'50',2,'79',79999),(80000,693,137,'800',3,'899',89999),(90000,694,137,'9000',4,'9999',99999),(0,695,138,'00',2,'39',39999),(40000,696,138,'400',3,'899',89999),(90000,697,138,'9000',4,'9399',93999),(94000,698,138,'940',3,'969',96999),(97000,699,138,'97',2,'99',99999),(0,700,139,'00',2,'39',39999),(40000,701,139,'400',3,'879',87999),(88000,702,139,'8800',4,'9999',99999),(0,703,140,'0',1,'2',29999),(30000,704,140,'30',2,'54',54999),(55000,705,140,'550',3,'749',74999),(75000,706,140,'7500',4,'9999',99999),(0,707,141,'0',1,'0',9999),(10000,708,141,'100',3,'199',19999),(20000,709,141,'2000',4,'2999',29999),(30000,710,141,'30',2,'59',59999),(60000,711,141,'600',3,'949',94999),(95000,712,141,'9500',4,'9999',99999),(0,713,142,'00',2,'49',49999),(50000,714,142,'500',3,'799',79999),(80000,715,142,'80',2,'99',99999),(0,716,144,'0',1,'1',19999),(20000,717,144,'20',2,'89',89999),(90000,718,144,'900',3,'999',99999),(0,719,145,'0',1,'5',59999),(60000,720,145,'60',2,'89',89999),(90000,721,145,'900',3,'999',99999),(0,722,146,'0',1,'3',39999),(40000,723,146,'40',2,'79',79999),(80000,724,146,'800',3,'999',99999),(0,725,147,'0',1,'2',29999),(30000,726,147,'30',2,'59',59999),(60000,727,147,'600',3,'699',69999),(70000,728,147,'70',2,'89',89999),(90000,729,147,'90',2,'94',94999),(95000,730,147,'950',3,'999',99999),(0,731,148,'0',1,'0',9999),(10000,732,148,'10',2,'89',89999),(90000,733,148,'900',3,'999',99999),(0,734,149,'0',1,'3',39999),(40000,735,149,'40',2,'94',94999),(95000,736,149,'950',3,'999',99999),(0,737,150,'0',1,'2',29999),(30000,738,150,'30',2,'89',89999),(90000,739,150,'900',3,'999',99999),(0,740,151,'00',2,'59',59999),(60000,741,151,'600',3,'999',99999),(0,742,152,'0',1,'3',39999),(40000,743,152,'400',3,'599',59999),(60000,744,152,'60',2,'89',89999),(90000,745,152,'900',3,'999',99999),(0,746,153,'0',1,'2',29999),(30000,747,153,'30',2,'35',35999),(60000,748,153,'600',3,'604',60499),(0,749,154,'0',1,'4',49999),(50000,750,154,'50',2,'89',89999),(90000,751,154,'900',3,'999',99999),(0,752,155,'0',1,'4',49999),(50000,753,155,'50',2,'79',79999),(80000,754,155,'800',3,'999',99999),(0,755,156,'0',1,'2',29999),(30000,756,156,'30',2,'69',69999),(70000,757,156,'700',3,'999',99999),(0,758,157,'0',1,'2',29999),(30000,759,157,'30',2,'89',89999),(90000,760,157,'900',3,'999',99999),(0,761,158,'0',1,'3',39999),(40000,762,158,'40',2,'79',79999),(80000,763,158,'800',3,'999',99999),(0,764,159,'0',1,'2',29999),(30000,765,159,'300',3,'399',39999),(40000,766,159,'40',2,'69',69999),(90000,767,159,'900',3,'999',99999),(0,768,160,'0',1,'4',49999),(50000,769,160,'50',2,'89',89999),(90000,770,160,'900',3,'999',99999),(0,771,161,'0',1,'1',19999),(20000,772,161,'20',2,'69',69999),(70000,773,161,'700',3,'799',79999),(80000,774,161,'8',1,'8',89999),(90000,775,161,'90',2,'99',99999),(0,776,162,'0',1,'3',39999),(40000,777,162,'40',2,'69',69999),(70000,778,162,'700',3,'999',99999),(0,779,163,'0',1,'1',19999),(20000,780,163,'20',2,'79',79999),(80000,781,163,'800',3,'999',99999),(0,782,164,'0',1,'1',19999),(20000,783,164,'20',2,'79',79999),(80000,784,164,'800',3,'999',99999),(0,785,165,'0',1,'3',39999),(40000,786,165,'40',2,'79',79999),(80000,787,165,'800',3,'999',99999),(0,788,166,'0',1,'0',9999),(10000,789,166,'10',2,'59',59999),(60000,790,166,'600',3,'999',99999),(0,791,167,'0',1,'2',29999),(30000,792,167,'30',2,'59',59999),(60000,793,167,'600',3,'999',99999),(0,794,168,'0',1,'0',9999),(10000,795,168,'10',2,'79',79999),(80000,796,168,'800',3,'999',99999),(0,797,169,'0',1,'4',49999),(50000,798,169,'50',2,'79',79999),(80000,799,169,'800',3,'999',99999),(0,800,170,'0',1,'4',49999),(50000,801,170,'50',2,'79',79999),(80000,802,170,'800',3,'999',99999),(0,803,171,'0',1,'4',49999),(50000,804,171,'50',2,'79',79999),(80000,805,171,'800',3,'999',99999),(0,806,172,'0',1,'0',9999),(10000,807,172,'10',2,'59',59999),(60000,808,172,'600',3,'699',69999),(70000,809,172,'7',1,'7',79999),(80000,810,172,'80',2,'99',99999),(0,811,173,'0',1,'2',29999),(30000,812,173,'30',2,'59',59999),(60000,813,173,'600',3,'999',99999),(0,814,174,'0',1,'1',19999),(20000,815,174,'20',2,'79',79999),(80000,816,174,'800',3,'999',99999),(0,817,175,'0',1,'2',29999),(30000,818,175,'30',2,'59',59999),(60000,819,175,'600',3,'699',69999),(70000,820,175,'7',1,'8',89999),(90000,821,175,'90',2,'99',99999),(0,822,176,'0',1,'0',9999),(10000,823,176,'10',2,'59',59999),(60000,824,176,'600',3,'999',99999),(0,825,177,'0',1,'1',19999),(20000,826,177,'20',2,'59',59999),(60000,827,177,'600',3,'999',99999),(0,828,178,'0',1,'1',19999),(20000,829,178,'20',2,'59',59999),(60000,830,178,'600',3,'899',89999),(90000,831,178,'90',2,'99',99999),(0,832,179,'0',1,'5',59999),(60000,833,179,'60',2,'89',89999),(90000,834,179,'900',3,'999',99999),(0,835,180,'0',1,'0',9999),(10000,836,180,'10',2,'69',69999),(70000,837,180,'700',3,'999',99999),(0,838,181,'0',1,'2',29999),(30000,839,181,'30',2,'79',79999),(80000,840,181,'800',3,'999',99999),(0,841,182,'0',1,'4',49999),(50000,842,182,'50',2,'79',79999),(80000,843,182,'800',3,'999',99999),(0,844,183,'0',1,'2',29999),(30000,845,183,'30',2,'59',59999),(60000,846,183,'600',3,'999',99999),(0,847,184,'0',1,'4',49999),(50000,848,184,'50',2,'79',79999),(80000,849,184,'800',3,'999',99999),(0,850,185,'0',1,'5',59999),(60000,851,185,'60',2,'89',89999),(90000,852,185,'900',3,'999',99999),(0,853,186,'0',1,'2',29999),(30000,854,186,'30',2,'59',59999),(60000,855,186,'600',3,'999',99999),(0,856,187,'0',1,'2',29999),(30000,857,187,'30',2,'69',69999),(70000,858,187,'700',3,'999',99999),(0,859,188,'0',1,'4',49999),(50000,860,188,'50',2,'79',79999),(80000,861,188,'800',3,'999',99999),(0,862,189,'0',1,'1',19999),(20000,863,189,'20',2,'89',89999),(90000,864,189,'900',3,'999',99999),(0,865,190,'0',1,'4',49999),(50000,866,190,'50',2,'79',79999),(80000,867,190,'800',3,'999',99999),(0,868,192,'0',1,'4',49999),(50000,869,192,'50',2,'79',79999),(80000,870,192,'800',3,'999',99999),(0,871,193,'0',1,'2',29999),(30000,872,193,'30',2,'79',79999),(80000,873,193,'800',3,'939',93999),(94000,874,193,'94',2,'99',99999),(0,875,194,'0',1,'2',29999),(30000,876,194,'30',2,'69',69999),(70000,877,194,'700',3,'999',99999),(0,878,195,'0',1,'1',19999),(20000,879,195,'20',2,'59',59999),(60000,880,195,'600',3,'799',79999),(80000,881,195,'80',2,'89',89999),(90000,882,195,'90',2,'99',99999),(0,883,196,'00',2,'59',59999),(60000,884,196,'600',3,'859',85999),(86000,885,196,'86',2,'99',99999),(0,886,197,'0',1,'1',19999),(20000,887,197,'20',2,'79',79999),(80000,888,197,'800',3,'999',99999),(0,889,198,'0',1,'4',49999),(50000,890,198,'50',2,'94',94999),(95000,891,198,'950',3,'999',99999),(0,892,199,'0',1,'2',29999),(30000,893,199,'30',2,'59',59999),(60000,894,199,'600',3,'999',99999),(0,895,200,'0',1,'0',9999),(10000,896,200,'10',2,'94',94999),(95000,897,200,'950',3,'999',99999),(0,898,201,'0',1,'3',39999),(40000,899,201,'40',2,'89',89999),(90000,900,201,'900',3,'999',99999),(0,901,202,'0',1,'4',49999),(50000,902,202,'50',2,'79',79999),(80000,903,202,'800',3,'999',99999),(0,904,203,'00',2,'49',49999),(50000,905,203,'500',3,'999',99999),(0,906,204,'0',1,'1',19999),(20000,907,204,'20',2,'79',79999),(80000,908,204,'800',3,'999',99999),(0,909,205,'0',1,'3',39999),(40000,910,205,'40',2,'79',79999),(80000,911,205,'800',3,'999',99999),(0,912,206,'0',1,'2',29999),(30000,913,206,'30',2,'69',69999),(70000,914,206,'700',3,'799',79999),(0,915,207,'0',1,'1',19999),(20000,916,207,'20',2,'59',59999),(60000,917,207,'600',3,'899',89999),(0,918,208,'0',1,'3',39999),(40000,919,208,'400',3,'599',59999),(60000,920,208,'60',2,'89',89999),(90000,921,208,'900',3,'999',99999),(0,922,209,'00',2,'19',19999),(20000,923,209,'200',3,'699',69999),(70000,924,209,'7000',4,'8999',89999),(90000,925,209,'90000',5,'97599',97599),(97600,926,209,'976000',6,'999999',99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`),
  KEY `ezkeyword_keyword_id` (`keyword`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
INSERT INTO `ezkeyword` VALUES (16,1,'eZ Find'),(16,2,'Content Clustering'),(27,3,'Amazon'),(27,4,'Travel'),(27,5,'Peru'),(25,6,'Amazon'),(25,7,'River'),(25,8,'Travel'),(25,9,'Peru'),(25,10,'River Boat'),(25,11,'Flying Bird'),(25,12,'Turtles'),(25,13,'Hat'),(25,14,'Heron'),(25,15,'Birds'),(25,16,'Aligator'),(16,17,'Iquitos'),(16,18,'Peru'),(16,19,'Amazon'),(16,20,'Amazon Jungle'),(19,21,'NYC'),(19,22,'Shopping'),(19,23,'Taxi'),(16,24,'Shopping New York'),(24,25,'Logo'),(22,26,'Partner info'),(22,27,'Wiki'),(18,28,'Blog Post'),(18,29,'Social'),(18,30,'eZ Publish');
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_keyword_id` (`keyword_id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
INSERT INTO `ezkeyword_attribute_link` VALUES (1,1,257),(2,2,257),(3,3,314),(4,4,314),(5,5,314),(6,6,319),(11,6,324),(14,6,329),(20,6,344),(22,6,349),(24,6,354),(7,7,319),(8,8,319),(12,8,324),(15,8,329),(18,8,339),(9,9,319),(10,10,324),(13,11,329),(16,12,334),(17,13,339),(19,14,344),(21,15,349),(23,16,354),(25,17,374),(26,18,374),(29,18,386),(27,19,374),(28,20,386),(30,21,417),(33,21,428),(35,21,439),(31,22,417),(34,22,428),(36,22,439),(32,23,417),(37,24,455),(38,25,467),(39,26,483),(40,27,483),(41,28,492),(42,29,492),(43,30,492);
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) unsigned DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) unsigned DEFAULT NULL,
  `rotation_interval` int(10) unsigned DEFAULT NULL,
  `is_removed` int(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block` DISABLE KEYS */;
INSERT INTO `ezm_block` VALUES ('1e1e355c8da3c92e80354f243c6dd37b','6c7f907b831a819ed8562e3ddce5b264','Campaign',72,'',0,'Campaign','',0,0,0),('250bcab3ea2929edbf72ece096dcdb7a','6c7f907b831a819ed8562e3ddce5b264','Amazon Gallery',72,'',0,'Gallery','',0,0,0),('27d176fb3baf2ab9dea2b1f98270e701','f742abffba08fc849b6e80dec769a74c','Tags',2,'',0,'TagCloud','',0,0,0),('4d2f5e57d2a2528b276cd9e776a62e42','656b2182b4be70f18ca7b44b3fbb6dbe','Featured Video',72,'',0,'Video','',0,0,0),('4efd68496edd8184aade729b4d2ee17b','865346aabbcc48a9839274cc554868be','Main Story',2,'',0,'Campaign','',0,0,0),('4f1c2e8abfb4f163fbf256a29af0a24e','6669bce3079221f326d4eb4121447fd9','Products',87,'',0,'ContentGrid','',0,0,0),('530f34a56860389349bd37e74bc095a7','f742abffba08fc849b6e80dec769a74c','Selected Video',2,'',0,'Video','',0,0,0),('594491ab539125dc271807a83724e608','fe8088a104581ea7faa6c00fe743f072','',60,'',0,'ContentGrid','',0,0,0),('70150fb6cf7608e841868b3fe925b58c','1b6149311bf4ece4717e6fff905e148c','',87,'',0,'Campaign','',0,0,0),('74f7a63a2c079e279c8669f660ded478','c5ce576877ab71afb7c143ea3276db4f','Highlighted Feature',60,'',0,'HighlightedItem','',0,0,0),('9481d2b1810c928ded55e94b0ae13647','f742abffba08fc849b6e80dec769a74c','Main Items',2,'',0,'ContentGrid','',0,0,0),('a577b33f9a9ec054e0c2171288056be9','c5ce576877ab71afb7c143ea3276db4f','Main Features',60,'',0,'ContentGrid','',0,0,0),('b0d7b1fae15381576e13e5bd1480f555','f742abffba08fc849b6e80dec769a74c','News',2,'',0,'FeedReader','',0,0,0),('bffec84af43985679e30e6ff6d79c19b','865346aabbcc48a9839274cc554868be','Mixed Content',2,'',0,'ContentGrid','',0,0,0),('c0ef745972ce2d55057c70d157eb7b96','fe8088a104581ea7faa6c00fe743f072','',60,'',0,'Campaign','',0,0,0),('cd58c813f7463484f22a2168a44cdcc4','f742abffba08fc849b6e80dec769a74c','Highlighted Feature',2,'',0,'HighlightedItem','',0,0,0),('d769ae69f693b76429a731a8ce475e23','865346aabbcc48a9839274cc554868be','Gallery',2,'',0,'Gallery','',0,0,0),('efebbf9ff812c45758ab0df46d2bd81e','ff3c037126cc5b97a8acb18a7366e330','Contact Us',66,'',0,'FeedbackForm','',0,0,0),('f15168c3ef3ca9e888bf625d1820c83c','087e6273b6f9338562a7c3ab7c768310','Contact Us',94,'',0,'FeedbackForm','',0,0,0),('f1dbdf93b91fb71a2565f8b4eab0335e','35d5c0d042d6b6b065adf752303e8d8c','Contact Us',88,'',0,'FeedbackForm','',0,0,0),('f36743396b8c36f10b467aa52f133e58','656b2182b4be70f18ca7b44b3fbb6dbe','Travel Information',72,'',0,'ContentGrid','',0,0,0);
/*!40000 ALTER TABLE `ezm_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) unsigned DEFAULT '0',
  `ts_hidden` int(10) unsigned DEFAULT '0',
  `rotation_until` int(10) unsigned DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL,
  PRIMARY KEY (`block_id`,`object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool` DISABLE KEYS */;
INSERT INTO `ezm_pool` VALUES ('1e1e355c8da3c92e80354f243c6dd37b',82,84,1,1332972411,1332972652,0,0,NULL),('1e1e355c8da3c92e80354f243c6dd37b',83,85,2,1332972389,1332972652,0,0,NULL),('1e1e355c8da3c92e80354f243c6dd37b',84,86,0,1332972436,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',72,74,7,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',73,75,6,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',74,76,5,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',75,77,4,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',76,78,3,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',77,79,2,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',78,80,1,1332972538,1332972652,0,0,NULL),('250bcab3ea2929edbf72ece096dcdb7a',79,81,0,1332972538,1332972652,0,0,NULL),('4d2f5e57d2a2528b276cd9e776a62e42',80,82,1,1332972571,1332972652,0,0,NULL),('4efd68496edd8184aade729b4d2ee17b',69,71,1,1332970712,1332971128,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',87,89,1,1332971999,1332972002,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',88,90,2,1332971999,1332972002,0,0,NULL),('4f1c2e8abfb4f163fbf256a29af0a24e',89,91,3,1332971999,1332972002,0,0,NULL),('530f34a56860389349bd37e74bc095a7',80,82,1,1332971099,1332971128,0,0,NULL),('594491ab539125dc271807a83724e608',60,62,0,1332971697,1332971745,0,0,NULL),('594491ab539125dc271807a83724e608',61,63,1,1332971673,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',62,64,2,1332971652,1332971695,0,0,NULL),('594491ab539125dc271807a83724e608',63,65,3,1332971627,1332971695,0,0,NULL),('70150fb6cf7608e841868b3fe925b58c',91,93,1,1332971960,1332972002,0,0,NULL),('74f7a63a2c079e279c8669f660ded478',65,67,1,1332971452,1332971695,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',87,89,1,1332971021,1332971128,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',88,90,2,1332971021,1332971128,0,0,NULL),('9481d2b1810c928ded55e94b0ae13647',89,91,3,1332971021,1332971128,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',66,68,0,1332971548,1332971695,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',67,69,1,1332971532,1332971695,0,0,NULL),('a577b33f9a9ec054e0c2171288056be9',68,70,2,1332971517,1332971695,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',65,67,2,1332970788,1332971128,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',67,69,3,1332970763,1332971128,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',83,85,0,1332970851,1332971128,0,0,NULL),('bffec84af43985679e30e6ff6d79c19b',91,93,1,1332970824,1332971128,0,0,NULL),('c0ef745972ce2d55057c70d157eb7b96',69,71,1,1332971584,1332971695,0,0,NULL),('cd58c813f7463484f22a2168a44cdcc4',68,70,1,1332970970,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',72,74,6,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',73,75,7,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',74,76,0,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',75,77,1,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',76,78,2,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',77,79,3,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',78,80,4,1332970925,1332971128,0,0,NULL),('d769ae69f693b76429a731a8ce475e23',79,81,5,1332970925,1332971128,0,0,NULL),('efebbf9ff812c45758ab0df46d2bd81e',99,101,1,1332972910,1332972936,0,0,NULL),('f15168c3ef3ca9e888bf625d1820c83c',99,101,1,1332973411,1332973426,0,0,NULL),('f1dbdf93b91fb71a2565f8b4eab0335e',99,101,1,1332973191,1332973199,0,0,NULL),('f36743396b8c36f10b467aa52f133e58',82,84,1,1332972635,1332972652,0,0,NULL),('f36743396b8c36f10b467aa52f133e58',84,86,0,1332972654,1332972712,0,0,NULL);
/*!40000 ALTER TABLE `ezm_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` int(11) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_id` (`contentobject_id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (8,2,0,4,1,2,5,'',0,1,1),(42,1,0,5,1,2,5,'',0,9,1),(10,2,-1,6,1,2,44,'',0,9,1),(4,1,0,7,1,2,1,'',0,1,1),(12,1,0,8,1,2,5,'',0,1,1),(13,1,0,9,1,2,5,'',0,1,1),(41,1,0,11,1,2,1,'',0,1,1),(11,1,0,12,1,2,5,'',0,1,1),(45,1,-1,16,1,2,1,'',0,9,1),(49,1,0,27,1,2,43,'',0,9,1),(50,1,0,28,1,2,43,'',0,9,1),(51,1,0,29,1,2,43,'',0,9,1),(52,1,0,30,1,2,48,'',0,1,1),(56,1,0,34,1,2,1,'',0,2,0),(14,3,-1,38,1,2,13,'',0,1,1),(54,2,-1,39,1,2,58,'',0,1,1),(57,1,0,43,1,2,2,'07cdfd23373b17c6b337251c22b7ea57',0,8,1),(58,1,0,44,1,2,2,'a056661abf6a4c778ca3a642797ae5e3',0,1,1),(59,1,0,45,1,2,60,'016830043439eddf2956a14d3192fc09',0,1,1),(60,1,0,46,1,2,61,'a2304f8b1c6a2a363e7055aa16b2d555',0,1,1),(61,1,0,47,1,2,61,'0382aaa1f4fb90e8cf01cc77406e88b0',0,1,1),(62,1,0,48,1,2,61,'b9b95382aaa102120ca724dc96fb5892',0,1,1),(63,1,0,49,1,2,61,'0240c72d729c2412817a1c252e51eb1a',0,1,1),(64,1,0,50,1,2,60,'595c35359a2d37e2dba89eb8dba4ce93',0,1,1),(65,1,0,51,1,2,66,'0379665e0367a771802c95a1a755679e',0,1,1),(66,1,0,52,1,2,66,'8294f2a6427dd40744f1a98f3490b158',0,1,1),(67,1,0,53,1,2,66,'fd2168050d72bcfe92b1250586a8a87f',0,1,1),(68,1,0,54,1,2,66,'cbd26486e64e79b91e7b4cc4ca6a7f87',0,1,1),(69,1,0,55,1,2,66,'80536ae793c16e51018c632b9c90ff25',0,1,1),(70,1,0,56,1,2,2,'d5defd070f545a13427da019a30aa5a9',0,1,1),(71,1,0,57,1,2,72,'d07d55e0d37cebd1e65dcf6e7bfb8585',0,1,1),(72,1,0,58,1,2,73,'ff9ed66414f95373b0fe6f63cd767087',0,1,1),(73,1,0,59,1,2,73,'36044d78848d4de368989c3a7ec99d30',0,1,1),(74,1,0,60,1,2,73,'542dd763dce74ea5e03f1371321686d5',0,1,1),(75,1,0,61,1,2,73,'6b34016c90273ef02916b42df29b2a9b',0,1,1),(76,1,0,62,1,2,73,'92c32a10727ca4a15ceaabc8f133f7c5',0,1,1),(77,1,0,63,1,2,73,'0065109a1389295b2ded4b64d884a900',0,1,1),(78,1,0,64,1,2,73,'6ea2be0e6e4e5373e155336c91e1cfda',0,1,1),(79,1,0,65,1,2,73,'7ac051cba8a6e400810aa2966ce972e9',0,1,1),(80,1,0,66,1,2,73,'9aa6e47394fb80547819c1c86e1d7232',0,1,1),(81,1,0,67,1,2,72,'3766b6904125008d930a7c44b9e575c7',0,2,0),(82,1,0,68,1,2,83,'62427486787bc5588a7c4658edf89c52',0,1,1),(83,1,0,69,1,2,83,'d81cd925356ad20ab7d4004a38d9e561',0,1,1),(84,1,0,70,1,2,83,'eb07d913b94dfa55a04ad41825898d66',0,1,1),(85,1,0,71,1,2,2,'d70f1694905d7c5df8e7a57628d5f223',0,1,1),(86,1,0,72,1,2,87,'c07971827e6e6cdbb9ab4e65a1ca7634',0,1,1),(87,1,0,73,1,2,88,'9121d4ca38abdd42999c4c5ad1bd8c3d',0,1,1),(88,1,0,74,1,2,88,'89ea0c87d9327568c2652c6a4122d6f3',0,1,1),(89,1,0,75,1,2,88,'013b9aa0d3c776466a77ea4296ecaee6',0,1,1),(90,1,0,76,1,2,87,'a655946daa57223381420cf5d93dfed2',0,1,1),(91,1,0,77,1,2,92,'23a8950df34d7f7d2fdf1b50ee4b2eb5',0,1,1),(92,1,0,78,1,2,2,'49dfabb2e1a632ae1f95fdeb79f4a92e',0,1,1),(93,1,0,79,1,2,94,'a6748f3cbe4bbc163e532c03ad28d0d0',0,1,1),(94,1,0,80,1,2,94,'d59d9ae9190c7f4919beea16da748910',0,1,1),(95,1,0,81,1,2,94,'deab6d56548e30311d6c5ca9b8676160',0,1,1),(96,1,0,82,1,2,94,'92fd2ee79d5721b3a87c103659fc9799',0,1,1),(97,1,0,83,1,2,2,'0d05ff0c44f63901d8a1c0fbc5abc884',0,1,1),(98,1,0,84,1,2,99,'c0125304ac852abc3b7abe57f5ecbf21',0,1,1),(99,1,0,85,1,5,134,'86bf306624668ee9b8b979b0d56f7e0d',0,8,1),(14,4,-1,86,1,2,13,'',0,1,1),(100,1,0,87,1,2,5,'',0,1,1),(11,2,-1,88,1,2,5,'',0,1,1),(70,2,-1,89,1,2,2,'',0,1,1),(101,1,0,92,1,2,2,'',0,1,1),(122,1,0,122,1,5,136,'',0,1,1),(123,1,0,123,1,5,136,'',0,1,1),(124,1,0,124,1,5,136,'',0,1,1),(125,1,0,125,1,5,136,'',0,1,1),(126,1,0,126,1,5,136,'',0,1,1),(127,1,0,127,1,5,136,'',0,1,1),(128,1,0,128,1,5,136,'',0,1,1),(129,1,0,129,1,5,136,'',0,1,1),(130,1,0,130,1,5,136,'',0,1,1),(131,1,0,131,1,5,136,'',0,1,1),(132,1,0,132,1,2,2,'',0,1,1),(133,1,0,133,1,2,134,'',0,1,1),(101,2,-1,134,1,2,1,'',0,8,1),(134,1,0,135,1,2,2,'',0,1,1),(135,1,0,136,1,2,124,'',0,1,1),(136,1,0,138,1,2,137,'',0,1,1),(135,2,-1,139,1,2,124,'',0,1,1),(137,1,0,140,1,2,137,'',0,1,1),(136,2,-1,141,1,2,137,'',0,1,1),(138,1,0,142,1,2,137,'',0,1,1),(140,1,0,144,1,2,2,'',0,1,1),(142,1,0,146,1,2,142,'',0,1,1),(122,2,-1,148,1,2,136,'',0,1,1),(122,3,-1,149,1,2,136,'',0,1,1),(136,3,-1,151,1,2,137,'',0,1,1),(137,2,-1,152,1,2,137,'',0,1,1),(138,2,-1,153,1,2,137,'',0,1,1),(133,2,-1,154,1,2,134,'',0,1,1),(145,1,0,156,1,2,142,'',0,2,0),(146,1,0,158,1,2,142,'',0,2,0),(147,2,0,160,1,2,124,'',0,2,0),(148,2,0,162,1,2,124,'',0,2,0),(149,2,0,164,1,2,124,'',0,2,0),(147,3,-1,165,1,2,124,'',0,2,0),(150,1,0,166,1,2,142,'',0,1,1),(126,2,-1,167,1,2,136,'',0,1,1),(126,3,-1,168,1,2,136,'',0,1,1),(151,1,0,170,1,2,128,'',0,1,1),(152,1,0,171,1,2,152,'',0,1,1),(152,2,-1,172,1,2,152,'',0,1,1),(151,2,-1,173,1,2,128,'',0,1,1),(153,1,0,174,1,3,12,'',0,2,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent` DISABLE KEYS */;
INSERT INTO `eznotificationevent` VALUES (57,1,0,0,'','','','','ezpublish',1,0),(58,1,0,0,'','','','','ezpublish',2,0),(59,1,0,0,'','','','','ezpublish',3,0),(60,1,0,0,'','','','','ezpublish',4,0),(61,1,0,0,'','','','','ezpublish',5,0),(62,1,0,0,'','','','','ezpublish',6,0),(63,1,0,0,'','','','','ezpublish',7,0),(64,1,0,0,'','','','','ezpublish',8,0),(65,1,0,0,'','','','','ezpublish',9,0),(66,1,0,0,'','','','','ezpublish',10,0),(67,1,0,0,'','','','','ezpublish',11,0),(68,1,0,0,'','','','','ezpublish',12,0),(69,1,0,0,'','','','','ezpublish',13,0),(70,1,0,0,'','','','','ezpublish',14,0),(71,1,0,0,'','','','','ezpublish',15,0),(72,1,0,0,'','','','','ezpublish',16,0),(73,1,0,0,'','','','','ezpublish',17,0),(74,1,0,0,'','','','','ezpublish',18,0),(75,1,0,0,'','','','','ezpublish',19,0),(76,1,0,0,'','','','','ezpublish',20,0),(77,1,0,0,'','','','','ezpublish',21,0),(78,1,0,0,'','','','','ezpublish',22,0),(79,1,0,0,'','','','','ezpublish',23,0),(80,1,0,0,'','','','','ezpublish',24,0),(81,1,0,0,'','','','','ezpublish',25,0),(82,1,0,0,'','','','','ezpublish',26,0),(83,1,0,0,'','','','','ezpublish',27,0),(84,1,0,0,'','','','','ezpublish',28,0),(85,1,0,0,'','','','','ezpublish',29,0),(86,1,0,0,'','','','','ezpublish',30,0),(87,1,0,0,'','','','','ezpublish',31,0),(88,1,0,0,'','','','','ezpublish',32,0),(89,1,0,0,'','','','','ezpublish',33,0),(90,1,0,0,'','','','','ezpublish',34,0),(91,1,0,0,'','','','','ezpublish',35,0),(92,1,0,0,'','','','','ezpublish',36,0),(93,1,0,0,'','','','','ezpublish',37,0),(94,1,0,0,'','','','','ezpublish',38,0),(95,1,0,0,'','','','','ezpublish',39,0),(96,1,0,0,'','','','','ezpublish',40,0),(97,1,0,0,'','','','','ezpublish',41,0),(98,1,0,0,'','','','','ezpublish',42,0),(99,1,0,0,'','','','','ezpublish',43,0),(14,4,0,0,'','','','','ezpublish',44,0),(100,1,0,0,'','','','','ezpublish',45,0),(11,2,0,0,'','','','','ezpublish',46,0),(70,2,0,0,'','','','','ezpublish',47,0),(101,1,0,0,'','','','','ezpublish',48,0),(102,1,0,0,'','','','','ezpublish',49,0),(103,1,0,0,'','','','','ezpublish',50,0),(104,1,0,0,'','','','','ezpublish',51,0),(105,1,0,0,'','','','','ezpublish',52,0),(106,1,0,0,'','','','','ezpublish',53,0),(107,1,0,0,'','','','','ezpublish',54,0),(108,1,0,0,'','','','','ezpublish',55,0),(109,1,0,0,'','','','','ezpublish',56,0),(110,1,0,0,'','','','','ezpublish',57,0),(111,1,0,0,'','','','','ezpublish',58,0),(112,1,0,0,'','','','','ezpublish',59,0),(113,1,0,0,'','','','','ezpublish',60,0),(113,2,0,0,'','','','','ezpublish',61,0),(114,1,0,0,'','','','','ezpublish',62,0),(113,3,0,0,'','','','','ezpublish',63,0),(115,1,0,0,'','','','','ezpublish',64,0),(116,1,0,0,'','','','','ezpublish',65,0),(114,2,0,0,'','','','','ezpublish',66,0),(117,1,0,0,'','','','','ezpublish',67,0),(118,1,0,0,'','','','','ezpublish',68,0),(119,1,0,0,'','','','','ezpublish',69,0),(120,1,0,0,'','','','','ezpublish',70,0),(121,1,0,0,'','','','','ezpublish',71,0),(113,4,0,0,'','','','','ezpublish',72,0),(113,5,0,0,'','','','','ezpublish',73,0),(113,6,0,0,'','','','','ezpublish',74,0),(113,7,0,0,'','','','','ezpublish',75,0),(113,8,0,0,'','','','','ezpublish',76,0),(113,9,0,0,'','','','','ezpublish',77,0),(122,1,0,0,'','','','','ezpublish',78,0),(123,1,0,0,'','','','','ezpublish',79,0),(124,1,0,0,'','','','','ezpublish',80,0),(125,1,0,0,'','','','','ezpublish',81,0),(126,1,0,0,'','','','','ezpublish',82,0),(127,1,0,0,'','','','','ezpublish',83,0),(128,1,0,0,'','','','','ezpublish',84,0),(129,1,0,0,'','','','','ezpublish',85,0),(130,1,0,0,'','','','','ezpublish',86,0),(131,1,0,0,'','','','','ezpublish',87,0),(132,1,0,0,'','','','','ezpublish',88,0),(133,1,0,0,'','','','','ezpublish',89,0),(101,2,0,0,'','','','','ezpublish',90,0),(134,1,0,0,'','','','','ezpublish',91,0),(135,1,0,0,'','','','','ezpublish',92,0),(136,1,0,0,'','','','','ezpublish',93,0),(135,2,0,0,'','','','','ezpublish',94,0),(137,1,0,0,'','','','','ezpublish',95,0),(136,2,0,0,'','','','','ezpublish',96,0),(138,1,0,0,'','','','','ezpublish',97,0),(139,1,0,0,'','','','','ezpublish',98,0),(140,1,0,0,'','','','','ezpublish',99,0),(141,1,0,0,'','','','','ezpublish',100,0),(142,1,0,0,'','','','','ezpublish',101,0),(143,1,0,0,'','','','','ezpublish',102,0),(122,2,0,0,'','','','','ezpublish',103,0),(122,3,0,0,'','','','','ezpublish',104,0),(136,3,0,0,'','','','','ezpublish',105,0),(137,2,0,0,'','','','','ezpublish',106,0),(138,2,0,0,'','','','','ezpublish',107,0),(133,2,0,0,'','','','','ezpublish',108,0),(145,1,0,0,'','','','','ezpublish',109,0),(146,1,0,0,'','','','','ezpublish',110,0),(147,2,0,0,'','','','','ezpublish',111,0),(148,2,0,0,'','','','','ezpublish',112,0),(149,2,0,0,'','','','','ezpublish',113,0),(147,3,0,0,'','','','','ezpublish',114,0),(150,1,0,0,'','','','','ezpublish',115,0),(126,2,0,0,'','','','','ezpublish',116,0),(126,3,0,0,'','','','','ezpublish',117,0),(151,1,0,0,'','','','','ezpublish',118,0),(152,1,0,0,'','','','','ezpublish',119,0),(152,2,0,0,'','','','','ezpublish',120,0),(151,2,0,0,'','','','','ezpublish',121,0);
/*!40000 ALTER TABLE `eznotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder` DISABLE KEYS */;
INSERT INTO `ezorder` VALUES ('ez',1382749783,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<shop_account><first-name>Amir</first-name><last-name>Koklan</last-name><email>amirkoklan@gmail.com</email><street1/><street2>Gauss</street2><zip>76131</zip><place>Karlsruhe</place><state/><country>Germany</country><comment/></shop_account>\n','','amirkoklan@gmail.com',1,0,0,0,1,10,3,1382749934,14,14),('ez',1382765344,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<shop_account><first-name>Amir</first-name><last-name>Koklan</last-name><email>amirkoklan@gmail.com</email><street1/><street2>Gauss</street2><zip>76131</zip><place>Karlsruhe</place><state/><country>Germany</country><comment/></shop_account>\n','','amirkoklan@gmail.com',2,0,0,0,2,13,1,1382765344,14,14),('ez',1382981320,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<shop_account><first-name>Amir</first-name><last-name>Koklan</last-name><email>amirkoklan@gmail.com</email><street1>HissIT</street1><street2>Gauß str</street2><zip>76135</zip><place>Karlsruhe</place><state>Baden-Württemberg</state><country>Deutschland</country><comment>Hiiii</comment></shop_account>\n','','amirkoklan@gmail.com',8,0,0,0,3,16,1,1382981320,10,10);
/*!40000 ALTER TABLE `ezorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr` DISABLE KEYS */;
INSERT INTO `ezorder_nr_incr` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `ezorder_nr_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status` DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1,1,'Pending',1),(2,1,'Processing',2),(3,1,'Delivered',3);
/*!40000 ALTER TABLE `ezorder_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history` DISABLE KEYS */;
INSERT INTO `ezorder_status_history` VALUES (1,1382749783,14,1,1),(2,1382749912,14,1,2),(3,1382749934,14,1,3),(4,1382765344,14,2,1),(5,1382981320,10,3,1);
/*!40000 ALTER TABLE `ezorder_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1'),(2,1381794967,'ezwt_extension','1.6-0'),(3,1381794968,'ezstarrating_extension','1.5-0'),(4,1381794969,'ezgmaplocation_extension','1.5-0'),(5,1381794970,'ezdemo_extension','1.0-0'),(6,1381794971,'ezflow_extension','2.5-0'),(7,1381794973,'ezcomments_extension','1.4-0'),(8,1381794975,'ezdemo_classes','1.0-0'),(9,1381794989,'ezdemo_democontent','1.0-0');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES ('*',308,'*',0,2),('login',319,'user',0,3),('*',330,'ezoe',0,3),('*',332,'ezoe',0,3),('create',337,'content',0,3),('create',338,'content',0,3),('create',339,'content',0,3),('create',340,'content',0,3),('create',341,'content',0,3),('create',342,'content',0,3),('use',343,'websitetoolbar',0,3),('edit',344,'content',0,3),('read',345,'content',0,3),('use',346,'notification',0,3),('manage_locations',347,'content',0,3),('*',348,'ezodf',0,3),('*',349,'ezflow',0,3),('*',350,'ezajax',0,3),('diff',351,'content',0,3),('versionread',352,'content',0,3),('versionremove',353,'content',0,3),('remove',354,'content',0,3),('translate',355,'content',0,3),('feed',356,'rss',0,3),('bookmark',357,'content',0,3),('pendinglist',358,'content',0,3),('dashboard',359,'content',0,3),('view_embed',360,'content',0,3),('read',361,'content',0,4),('create',362,'content',0,4),('create',363,'content',0,4),('create',364,'content',0,4),('edit',365,'content',0,4),('selfedit',366,'user',0,4),('use',367,'notification',0,4),('create',368,'content',0,5),('create',369,'content',0,5),('create',370,'content',0,5),('edit',371,'content',0,5),('selfedit',372,'user',0,5),('use',373,'notification',0,5),('password',374,'user',0,5),('call',375,'ezjscore',0,5),('pdf',383,'content',0,1),('read',384,'content',0,1),('read',385,'content',0,1),('feed',386,'rss',0,1),('login',387,'user',0,1),('login',388,'user',0,1),('buy',389,'shop',0,1);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (258,'Class',337),(259,'ParentClass',337),(260,'Class',338),(261,'ParentClass',338),(262,'Class',339),(263,'ParentClass',339),(264,'Class',340),(265,'ParentClass',340),(266,'Class',341),(267,'ParentClass',341),(268,'Class',342),(269,'ParentClass',342),(270,'Class',343),(271,'Section',345),(272,'Section',361),(273,'Class',362),(274,'Section',362),(275,'ParentClass',362),(276,'Class',363),(277,'Section',363),(278,'ParentClass',363),(279,'Class',364),(280,'Section',364),(281,'ParentClass',364),(282,'Class',365),(283,'Section',365),(284,'Owner',365),(285,'Class',368),(286,'Section',368),(287,'ParentClass',368),(288,'Class',369),(289,'Section',369),(290,'ParentClass',369),(291,'Class',370),(292,'Section',370),(293,'ParentClass',370),(294,'Class',371),(295,'Section',371),(296,'Owner',371),(305,'Section',383),(306,'Section',384),(307,'Class',385),(308,'Section',385),(309,'SiteAccess',387),(310,'SiteAccess',388);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (485,258,'1'),(486,258,'26'),(487,258,'24'),(488,258,'19'),(489,258,'20'),(490,258,'21'),(491,258,'16'),(492,258,'17'),(493,258,'23'),(494,258,'22'),(495,258,'27'),(496,258,'28'),(497,258,'34'),(498,258,'32'),(499,258,'33'),(500,258,'25'),(501,259,'1'),(502,260,'18'),(503,261,'17'),(504,262,'29'),(505,263,'28'),(506,264,'31'),(507,265,'32'),(508,266,'25'),(509,267,'27'),(510,268,'1'),(511,268,'26'),(512,268,'20'),(513,268,'21'),(514,268,'22'),(515,268,'27'),(516,268,'32'),(517,268,'34'),(518,269,'21'),(519,270,'1'),(520,270,'26'),(521,270,'16'),(522,270,'17'),(523,270,'18'),(524,270,'19'),(525,270,'20'),(526,270,'21'),(527,270,'22'),(528,270,'23'),(529,270,'25'),(530,270,'27'),(531,270,'28'),(532,270,'31'),(533,270,'32'),(534,270,'34'),(535,271,'1'),(536,271,'6'),(537,271,'3'),(538,272,'6'),(539,273,'29'),(540,274,'6'),(541,275,'28'),(542,276,'30'),(543,277,'6'),(544,278,'29'),(545,279,'13'),(546,280,'6'),(547,281,'16'),(548,282,'13'),(549,282,'29'),(550,282,'30'),(551,283,'6'),(552,284,'1'),(553,285,'29'),(554,286,'1'),(555,287,'28'),(556,288,'30'),(557,289,'1'),(558,290,'29'),(559,291,'13'),(560,292,'1'),(561,293,'16'),(562,293,'18'),(563,294,'13'),(564,294,'29'),(565,294,'30'),(566,295,'1'),(567,296,'1'),(577,305,'1'),(578,306,'1'),(579,307,'25'),(580,307,'33'),(581,308,'3'),(582,309,'2106599819'),(583,310,'292811013');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
INSERT INTO `ezpreferences` VALUES (1,'admin_navigation_content',14,'1'),(2,'admin_navigation_roles',14,'1'),(3,'admin_navigation_policies',14,'1'),(4,'admin_list_limit',14,'2'),(5,'admin_treemenu',14,'1'),(6,'admin_bookmark_menu',14,'1'),(7,'admin_right_menu_show',14,'1'),(8,'admin_clearcache_type',14,'All'),(9,'user_preferred_country',14,'Germany');
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`,`version`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection` DISABLE KEYS */;
INSERT INTO `ezproductcollection` VALUES (1382749533,'EUR',9),(1382749533,'EUR',10),(1382749790,'',11),(1382750512,'EUR',12),(1382750512,'EUR',13),(1382765357,'',14),(1382767597,'EUR',15),(1382767597,'EUR',16),(1382981332,'',17),(1382981503,'EUR',18);
/*!40000 ALTER TABLE `ezproductcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item` DISABLE KEYS */;
INSERT INTO `ezproductcollection_item` VALUES (136,0,53,1,1,'Pizza L.A CL',6.9,9,0),(137,0,54,1,1,'Pizza L.A American',8.7,9,0),(136,0,55,1,1,'Pizza L.A CL',6.9,10,0),(137,0,56,1,1,'Pizza L.A American',8.7,10,0),(136,0,64,1,1,'Pizza L.A CL',6.9,12,0),(136,0,67,1,1,'Pizza L.A CL',6.9,13,0),(136,0,76,1,1,'Pizza L.A CL',6.9,15,0),(136,0,77,1,1,'Pizza L.A CL',7.7,15,0),(136,0,78,1,1,'Pizza L.A CL',6.9,16,0),(136,0,79,1,1,'Pizza L.A CL',7.7,16,0),(136,0,80,1,1,'Pizza L.A CL',6.9,18,0),(137,0,81,1,1,'Pizza L.A American',9.5,18,0);
/*!40000 ALTER TABLE `ezproductcollection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt` DISABLE KEYS */;
INSERT INTO `ezproductcollection_item_opt` VALUES (1,1,'',415,1,10,'In City'),(2,2,'Pizza typ',632,1,0,'Classic'),(3,3,'Pizza typ',632,3,6.6,'Jumbo'),(4,4,'Pizza typ',632,2,1,'American'),(5,8,'',632,2,0.8,'Mais'),(6,14,'',632,2,0.8,'Mais'),(7,15,'',632,1,0.8,'Käse'),(8,16,'',632,2,0.8,'Mais'),(9,17,'Extras',718,2,0.8,'Mais'),(10,18,'Extras',718,1,0.8,'Käse'),(11,18,'',632,2,0.8,'Mais'),(12,19,'',632,2,0.8,'Mais'),(13,20,'Extras',718,1,0.8,'Käse'),(14,20,'',632,1,0.8,'Käse'),(15,21,'Extras',718,1,0.8,'Käse'),(16,21,'',632,2,0.8,'Mais'),(17,22,'Extras',718,3,0.8,'spinat'),(18,22,'',718,4,0.8,'Champinion'),(19,22,'',718,5,0,''),(20,22,'',632,3,0,''),(21,23,'',632,3,0,''),(22,24,'',632,3,0.8,''),(23,25,'onion',632,4,0.8,'Onion'),(24,26,'Extras',632,3,0.8,'Tomato'),(25,27,'Extras',632,3,0.8,'Tomato'),(26,28,'Extras',632,1,0.8,'Käse'),(27,29,'Extras',632,3,0.8,'Tomato'),(28,30,'Extras',632,2,0.8,'Mais'),(29,31,'Extras',632,2,0.8,'Mais'),(30,32,'Extras',632,1,0.8,'Käse'),(31,32,'Extras',632,2,0.8,'Mais'),(39,47,'Zusätze',776,1,0.8,'Käse'),(40,47,'Zusätze',776,2,0.8,'Tomaten'),(41,47,'Zusätze',776,3,0.8,'Mais'),(52,54,'Zutaten',793,1,0.8,'Käse'),(53,56,'Zutaten',793,1,0.8,'Käse'),(54,57,'Zusätze',776,1,0.8,'Käse'),(55,57,'Zusätze',776,2,0.8,'Tomaten'),(56,58,'Zusätze',776,1,0.8,'Käse'),(57,58,'Zusätze',776,2,0.8,'Tomaten'),(58,58,'Zusätze',776,3,0.8,'Mais'),(59,59,'Zusätze',776,1,0.8,'Käse'),(60,59,'Zusätze',776,2,0.8,'Tomaten'),(61,59,'Zusätze',776,3,0.8,'Mais'),(62,60,'Zutaten',805,1,1.6,'Käse'),(63,60,'Zutaten',805,2,1.6,'Tomaten'),(64,61,'Zusätze',776,2,0.8,'Tomaten'),(65,62,'Zutaten',805,2,1.6,'Tomaten'),(66,63,'Zusätze',776,3,0.8,'Mais'),(67,65,'Zutaten',793,2,0.8,'Tomaten'),(68,70,'Zusätze',776,2,0.8,'Tomaten'),(69,70,'Zusätze',776,3,0.8,'Mais'),(70,71,'Zutaten',793,1,0.8,'Käse'),(71,71,'Zutaten',793,2,0.8,'Tomaten'),(72,72,'Zusätze',776,1,0.8,'Käse'),(73,72,'Zusätze',776,2,0.8,'Tomaten'),(74,72,'Zusätze',776,3,0.8,'Mais'),(75,73,'Zusätze',776,1,0.8,'Käse'),(76,73,'Zusätze',776,2,0.8,'Tomaten'),(77,73,'Zusätze',776,3,0.8,'Mais'),(78,74,'Zusätze',776,1,0.8,'Käse'),(79,74,'Zusätze',776,2,0.8,'Tomaten'),(80,77,'Zusätze',776,1,0.8,'Käse'),(81,79,'Zusätze',776,1,0.8,'Käse'),(82,81,'Zutaten',793,1,0.8,'Käse'),(83,81,'Zutaten',793,2,0.8,'Tomaten');
/*!40000 ALTER TABLE `ezproductcollection_item_opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','*',0),(3,0,'Editor','',0),(4,0,'Partner',NULL,0),(5,0,'Member',NULL,0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export` DISABLE KEYS */;
INSERT INTO `ezrss_export` VALUES ('my_feed',1,1381794992,14,'',1,0,1,1381794992,14,0,10,'2.0','',1,'My RSS Feed','http://example.com');
/*!40000 ALTER TABLE `ezrss_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item` DISABLE KEYS */;
INSERT INTO `ezrss_export_item` VALUES ('',16,'intro','',1,1,139,1,0,'title');
/*!40000 ALTER TABLE `ezrss_export_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext,
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (6,3,4,0,4663,'name',0,951,0,0,1033917596,2,930),(7,3,4,0,4664,'description',0,952,1,930,1033917596,2,951),(7,3,4,0,4665,'description',0,0,2,951,1033917596,2,952),(8,4,10,0,4666,'first_name',0,954,0,0,1033920665,2,953),(9,4,10,0,4667,'last_name',0,953,1,953,1033920665,2,954),(12,4,10,0,4668,'user_account',0,955,2,954,1033920665,2,953),(12,4,10,0,4669,'user_account',0,927,3,953,1033920665,2,955),(12,4,10,0,4670,'user_account',0,0,4,955,1033920665,2,927),(6,3,12,0,4673,'name',0,930,0,0,1033920775,2,958),(6,3,12,0,4674,'name',0,0,1,958,1033920775,2,930),(6,3,13,0,4675,'name',0,0,0,0,1033920794,2,959),(4,1,41,0,4681,'name',0,0,0,0,1060695457,3,961),(6,3,42,0,4682,'name',0,930,0,0,1072180330,2,953),(6,3,42,0,4683,'name',0,954,1,953,1072180330,2,930),(7,3,42,0,4684,'description',0,952,2,930,1072180330,2,954),(7,3,42,0,4685,'description',0,816,3,954,1072180330,2,952),(7,3,42,0,4686,'description',0,814,4,952,1072180330,2,816),(7,3,42,0,4687,'description',0,953,5,816,1072180330,2,814),(7,3,42,0,4688,'description',0,954,6,814,1072180330,2,953),(7,3,42,0,4689,'description',0,0,7,953,1072180330,2,954),(4,1,45,0,4690,'name',0,0,0,0,1079684190,4,812),(4,1,49,0,4691,'name',0,0,0,0,1080220197,3,962),(4,1,50,0,4692,'name',0,0,0,0,1080220220,3,963),(4,1,51,0,4693,'name',0,0,0,0,1080220233,3,964),(159,14,52,0,4694,'name',0,965,0,0,1082016591,4,877),(159,14,52,0,4695,'name',0,966,1,877,1082016591,4,965),(159,14,52,0,4696,'name',0,0,2,965,1082016591,4,966),(176,15,54,0,4697,'id',0,0,0,0,1082016652,5,967),(4,1,56,0,4698,'name',0,0,0,0,1103023132,5,968),(212,20,99,0,6469,'name',0,1532,0,0,1381794989,1,1531),(212,20,99,0,6470,'name',0,819,1,1531,1381794989,1,1532),(213,20,99,0,6471,'description',0,1533,2,1532,1381794989,1,819),(213,20,99,0,6472,'description',0,863,3,819,1381794989,1,1533),(213,20,99,0,6473,'description',0,814,4,1533,1381794989,1,863),(213,20,99,0,6474,'description',0,1534,5,863,1381794989,1,814),(213,20,99,0,6475,'description',0,1528,6,814,1381794989,1,1534),(213,20,99,0,6476,'description',0,801,7,1534,1381794989,1,1528),(213,20,99,0,6477,'description',0,1531,8,1528,1381794989,1,801),(213,20,99,0,6478,'description',0,1532,9,801,1381794989,1,1531),(213,20,99,0,6479,'description',0,894,10,1531,1381794989,1,1532),(213,20,99,0,6480,'description',0,843,11,1532,1381794989,1,894),(213,20,99,0,6481,'description',0,882,12,894,1381794989,1,843),(213,20,99,0,6482,'description',0,1210,13,843,1381794989,1,882),(213,20,99,0,6483,'description',0,1532,14,882,1381794989,1,1210),(213,20,99,0,6484,'description',0,825,15,1210,1381794989,1,1532),(213,20,99,0,6485,'description',0,1535,16,1532,1381794989,1,825),(213,20,99,0,6486,'description',0,1435,17,825,1381794989,1,1535),(213,20,99,0,6487,'description',0,1536,18,1535,1381794989,1,1435),(213,20,99,0,6488,'description',0,1138,19,1435,1381794989,1,1536),(213,20,99,0,6489,'description',0,1537,20,1536,1381794989,1,1138),(213,20,99,0,6490,'description',0,0,21,1138,1381794989,1,1537),(8,4,14,0,6491,'first_name',0,1539,0,0,1033920830,2,1538),(9,4,14,0,6492,'last_name',0,1540,1,1538,1033920830,2,1539),(12,4,14,0,6493,'user_account',0,1541,2,1539,1033920830,2,1540),(12,4,14,0,6494,'user_account',0,1542,3,1540,1033920830,2,1541),(12,4,14,0,6495,'user_account',0,0,4,1541,1033920830,2,1542),(6,3,100,0,6496,'name',0,0,0,0,1381794991,2,1543),(6,3,11,0,6497,'name',0,0,0,0,1033920746,2,1544),(300,38,123,0,7583,'name',0,1628,0,0,1382028778,1,848),(300,38,123,0,7584,'name',0,0,1,848,1382028778,1,1628),(300,38,124,0,7585,'name',0,0,0,0,1382028827,1,1548),(300,38,125,0,7586,'name',0,0,0,0,1382028858,1,1549),(300,38,127,0,7588,'name',0,0,0,0,1382029436,1,1552),(300,38,128,0,7589,'name',0,0,0,0,1382029457,1,1553),(300,38,129,0,7590,'name',0,0,0,0,1382029556,1,1555),(300,38,130,0,7591,'name',0,0,0,0,1382029594,1,1556),(300,38,131,0,7592,'name',0,0,0,0,1382029660,1,1554),(4,1,132,0,7593,'name',0,0,0,0,1382070235,1,1629),(4,1,101,0,7597,'name',0,1631,0,0,1381869839,1,1546),(4,1,101,0,7598,'name',0,0,1,1546,1381869839,1,1631),(4,1,134,0,7599,'name',0,0,0,0,1382071289,1,1632),(301,39,135,0,7684,'name',0,1666,0,0,1382076566,1,1546),(301,39,135,0,7685,'name',0,1667,1,1546,1382076566,1,1666),(303,39,135,0,7686,'description',0,1635,2,1666,1382076566,1,1667),(303,39,135,0,7687,'description',0,1668,3,1667,1382076566,1,1635),(303,39,135,0,7688,'description',0,1669,4,1635,1382076566,1,1668),(303,39,135,0,7689,'description',0,0,5,1668,1382076566,1,1669),(4,1,140,0,7903,'name',0,0,0,0,1382621828,1,1679),(236,25,142,0,7906,'name',0,1679,0,0,1382622191,1,1679),(237,25,142,0,7907,'caption',0,0,1,1679,1382622191,1,1679),(300,38,122,0,7912,'name',0,0,0,0,1382028737,1,1546),(201,19,136,0,7913,'name',0,1666,0,0,1382076895,1,1546),(201,19,136,0,7914,'name',0,1682,1,1546,1382076895,1,1666),(201,19,136,0,7915,'name',0,1683,2,1666,1382076895,1,1682),(202,19,136,0,7916,'product_number',100,1684,3,1682,1382076895,1,1683),(304,19,136,0,7917,'type',0,1640,4,1683,1382076895,1,1684),(208,19,136,0,7918,'additional_options',0,1641,5,1684,1382076895,1,1640),(208,19,136,0,7919,'additional_options',0,1642,6,1640,1382076895,1,1641),(208,19,136,0,7920,'additional_options',0,1643,7,1641,1382076895,1,1642),(208,19,136,0,7921,'additional_options',0,1644,8,1642,1382076895,1,1643),(208,19,136,0,7922,'additional_options',0,1645,9,1643,1382076895,1,1644),(208,19,136,0,7923,'additional_options',0,1646,10,1644,1382076895,1,1645),(208,19,136,0,7924,'additional_options',0,1647,11,1645,1382076895,1,1646),(208,19,136,0,7925,'additional_options',0,1640,12,1646,1382076895,1,1647),(208,19,136,0,7926,'additional_options',0,1648,13,1647,1382076895,1,1640),(208,19,136,0,7927,'additional_options',0,1649,14,1640,1382076895,1,1648),(208,19,136,0,7928,'additional_options',0,1685,15,1648,1382076895,1,1649),(208,19,136,0,7929,'additional_options',0,1647,16,1649,1382076895,1,1685),(208,19,136,0,7930,'additional_options',0,1640,17,1685,1382076895,1,1647),(208,19,136,0,7931,'additional_options',0,1435,18,1647,1382076895,1,1640),(208,19,136,0,7932,'additional_options',0,1647,19,1640,1382076895,1,1435),(208,19,136,0,7933,'additional_options',0,1686,20,1435,1382076895,1,1647),(208,19,136,0,7934,'additional_options',0,1640,21,1647,1382076895,1,1686),(208,19,136,0,7935,'additional_options',0,1435,22,1686,1382076895,1,1640),(208,19,136,0,7936,'additional_options',0,1647,23,1640,1382076895,1,1435),(208,19,136,0,7937,'additional_options',0,1640,24,1435,1382076895,1,1647),(208,19,136,0,7938,'additional_options',0,1652,25,1647,1382076895,1,1640),(208,19,136,0,7939,'additional_options',0,1647,26,1640,1382076895,1,1652),(208,19,136,0,7940,'additional_options',0,1640,27,1652,1382076895,1,1647),(208,19,136,0,7941,'additional_options',0,1653,28,1647,1382076895,1,1640),(208,19,136,0,7942,'additional_options',0,1654,29,1640,1382076895,1,1653),(208,19,136,0,7943,'additional_options',0,1655,30,1653,1382076895,1,1654),(208,19,136,0,7944,'additional_options',0,1435,31,1654,1382076895,1,1655),(208,19,136,0,7945,'additional_options',0,1686,32,1655,1382076895,1,1435),(208,19,136,0,7946,'additional_options',0,1656,33,1435,1382076895,1,1686),(208,19,136,0,7947,'additional_options',0,1655,34,1686,1382076895,1,1656),(208,19,136,0,7948,'additional_options',0,1657,35,1656,1382076895,1,1655),(208,19,136,0,7949,'additional_options',0,1647,36,1655,1382076895,1,1657),(208,19,136,0,7950,'additional_options',0,1640,37,1657,1382076895,1,1647),(208,19,136,0,7951,'additional_options',0,1658,38,1647,1382076895,1,1640),(208,19,136,0,7952,'additional_options',0,1654,39,1640,1382076895,1,1658),(208,19,136,0,7953,'additional_options',0,1655,40,1658,1382076895,1,1654),(208,19,136,0,7954,'additional_options',0,1659,41,1654,1382076895,1,1655),(208,19,136,0,7955,'additional_options',0,1655,42,1655,1382076895,1,1659),(208,19,136,0,7956,'additional_options',0,1660,43,1659,1382076895,1,1655),(208,19,136,0,7957,'additional_options',0,1661,44,1655,1382076895,1,1660),(208,19,136,0,7958,'additional_options',0,1662,45,1660,1382076895,1,1661),(208,19,136,0,7959,'additional_options',0,1663,46,1661,1382076895,1,1662),(208,19,136,0,7960,'additional_options',0,1647,47,1662,1382076895,1,1663),(208,19,136,0,7961,'additional_options',0,1640,48,1663,1382076895,1,1647),(208,19,136,0,7962,'additional_options',0,1658,49,1647,1382076895,1,1640),(208,19,136,0,7963,'additional_options',0,1654,50,1640,1382076895,1,1658),(208,19,136,0,7964,'additional_options',0,1664,51,1658,1382076895,1,1654),(208,19,136,0,7965,'additional_options',0,1659,52,1654,1382076895,1,1664),(208,19,136,0,7966,'additional_options',0,1664,53,1664,1382076895,1,1659),(208,19,136,0,7967,'additional_options',0,1660,54,1659,1382076895,1,1664),(208,19,136,0,7968,'additional_options',0,1635,55,1664,1382076895,1,1660),(208,19,136,0,7969,'additional_options',0,1662,56,1660,1382076895,1,1635),(208,19,136,0,7970,'additional_options',0,1663,57,1635,1382076895,1,1662),(208,19,136,0,7971,'additional_options',0,1647,58,1662,1382076895,1,1663),(208,19,136,0,7972,'additional_options',0,1640,59,1663,1382076895,1,1647),(208,19,136,0,7973,'additional_options',0,1658,60,1647,1382076895,1,1640),(208,19,136,0,7974,'additional_options',0,1654,61,1640,1382076895,1,1658),(208,19,136,0,7975,'additional_options',0,1685,62,1658,1382076895,1,1654),(208,19,136,0,7976,'additional_options',0,1659,63,1654,1382076895,1,1685),(208,19,136,0,7977,'additional_options',0,1685,64,1685,1382076895,1,1659),(208,19,136,0,7978,'additional_options',0,1660,65,1659,1382076895,1,1685),(208,19,136,0,7979,'additional_options',0,1687,66,1685,1382076895,1,1660),(208,19,136,0,7980,'additional_options',0,1662,67,1660,1382076895,1,1687),(208,19,136,0,7981,'additional_options',0,1663,68,1687,1382076895,1,1662),(208,19,136,0,7982,'additional_options',0,1647,69,1662,1382076895,1,1663),(208,19,136,0,7983,'additional_options',0,1640,70,1663,1382076895,1,1647),(208,19,136,0,7984,'additional_options',0,1653,71,1647,1382076895,1,1640),(208,19,136,0,7985,'additional_options',0,1647,72,1640,1382076895,1,1653),(208,19,136,0,7986,'additional_options',0,1640,73,1653,1382076895,1,1647),(208,19,136,0,7987,'additional_options',0,1652,74,1647,1382076895,1,1640),(208,19,136,0,7988,'additional_options',0,1647,75,1640,1382076895,1,1652),(208,19,136,0,7989,'additional_options',0,1640,76,1652,1382076895,1,1647),(208,19,136,0,7990,'additional_options',0,1648,77,1647,1382076895,1,1640),(208,19,136,0,7991,'additional_options',0,1647,78,1640,1382076895,1,1648),(208,19,136,0,7992,'additional_options',0,0,79,1648,1382076895,1,1647),(201,19,137,0,7993,'name',0,1666,0,0,1382613725,1,1546),(201,19,137,0,7994,'name',0,1688,1,1546,1382613725,1,1666),(201,19,137,0,7995,'name',0,1688,2,1666,1382613725,1,1688),(304,19,137,0,7996,'type',0,1640,3,1688,1382613725,1,1688),(208,19,137,0,7997,'additional_options',0,1641,4,1688,1382613725,1,1640),(208,19,137,0,7998,'additional_options',0,1642,5,1640,1382613725,1,1641),(208,19,137,0,7999,'additional_options',0,1643,6,1641,1382613725,1,1642),(208,19,137,0,8000,'additional_options',0,1644,7,1642,1382613725,1,1643),(208,19,137,0,8001,'additional_options',0,1645,8,1643,1382613725,1,1644),(208,19,137,0,8002,'additional_options',0,1646,9,1644,1382613725,1,1645),(208,19,137,0,8003,'additional_options',0,1647,10,1645,1382613725,1,1646),(208,19,137,0,8004,'additional_options',0,1640,11,1646,1382613725,1,1647),(208,19,137,0,8005,'additional_options',0,1648,12,1647,1382613725,1,1640),(208,19,137,0,8006,'additional_options',0,1649,13,1640,1382613725,1,1648),(208,19,137,0,8007,'additional_options',0,1664,14,1648,1382613725,1,1649),(208,19,137,0,8008,'additional_options',0,1647,15,1649,1382613725,1,1664),(208,19,137,0,8009,'additional_options',0,1640,16,1664,1382613725,1,1647),(208,19,137,0,8010,'additional_options',0,1435,17,1647,1382613725,1,1640),(208,19,137,0,8011,'additional_options',0,1647,18,1640,1382613725,1,1435),(208,19,137,0,8012,'additional_options',0,1671,19,1435,1382613725,1,1647),(208,19,137,0,8013,'additional_options',0,1640,20,1647,1382613725,1,1671),(208,19,137,0,8014,'additional_options',0,1435,21,1671,1382613725,1,1640),(208,19,137,0,8015,'additional_options',0,1647,22,1640,1382613725,1,1435),(208,19,137,0,8016,'additional_options',0,1640,23,1435,1382613725,1,1647),(208,19,137,0,8017,'additional_options',0,1652,24,1647,1382613725,1,1640),(208,19,137,0,8018,'additional_options',0,1647,25,1640,1382613725,1,1652),(208,19,137,0,8019,'additional_options',0,1640,26,1652,1382613725,1,1647),(208,19,137,0,8020,'additional_options',0,1653,27,1647,1382613725,1,1640),(208,19,137,0,8021,'additional_options',0,1654,28,1640,1382613725,1,1653),(208,19,137,0,8022,'additional_options',0,1655,29,1653,1382613725,1,1654),(208,19,137,0,8023,'additional_options',0,1435,30,1654,1382613725,1,1655),(208,19,137,0,8024,'additional_options',0,1671,31,1655,1382613725,1,1435),(208,19,137,0,8025,'additional_options',0,1656,32,1435,1382613725,1,1671),(208,19,137,0,8026,'additional_options',0,1655,33,1671,1382613725,1,1656),(208,19,137,0,8027,'additional_options',0,1657,34,1656,1382613725,1,1655),(208,19,137,0,8028,'additional_options',0,1647,35,1655,1382613725,1,1657),(208,19,137,0,8029,'additional_options',0,1640,36,1657,1382613725,1,1647),(208,19,137,0,8030,'additional_options',0,1658,37,1647,1382613725,1,1640),(208,19,137,0,8031,'additional_options',0,1654,38,1640,1382613725,1,1658),(208,19,137,0,8032,'additional_options',0,1655,39,1658,1382613725,1,1654),(208,19,137,0,8033,'additional_options',0,1659,40,1654,1382613725,1,1655),(208,19,137,0,8034,'additional_options',0,1655,41,1655,1382613725,1,1659),(208,19,137,0,8035,'additional_options',0,1660,42,1659,1382613725,1,1655),(208,19,137,0,8036,'additional_options',0,1661,43,1655,1382613725,1,1660),(208,19,137,0,8037,'additional_options',0,1662,44,1660,1382613725,1,1661),(208,19,137,0,8038,'additional_options',0,1663,45,1661,1382613725,1,1662),(208,19,137,0,8039,'additional_options',0,1647,46,1662,1382613725,1,1663),(208,19,137,0,8040,'additional_options',0,1640,47,1663,1382613725,1,1647),(208,19,137,0,8041,'additional_options',0,1658,48,1647,1382613725,1,1640),(208,19,137,0,8042,'additional_options',0,1654,49,1640,1382613725,1,1658),(208,19,137,0,8043,'additional_options',0,1664,50,1658,1382613725,1,1654),(208,19,137,0,8044,'additional_options',0,1659,51,1654,1382613725,1,1664),(208,19,137,0,8045,'additional_options',0,1664,52,1664,1382613725,1,1659),(208,19,137,0,8046,'additional_options',0,1660,53,1659,1382613725,1,1664),(208,19,137,0,8047,'additional_options',0,1635,54,1664,1382613725,1,1660),(208,19,137,0,8048,'additional_options',0,1662,55,1660,1382613725,1,1635),(208,19,137,0,8049,'additional_options',0,1663,56,1635,1382613725,1,1662),(208,19,137,0,8050,'additional_options',0,1647,57,1662,1382613725,1,1663),(208,19,137,0,8051,'additional_options',0,1640,58,1663,1382613725,1,1647),(208,19,137,0,8052,'additional_options',0,1653,59,1647,1382613725,1,1640),(208,19,137,0,8053,'additional_options',0,1647,60,1640,1382613725,1,1653),(208,19,137,0,8054,'additional_options',0,1640,61,1653,1382613725,1,1647),(208,19,137,0,8055,'additional_options',0,1652,62,1647,1382613725,1,1640),(208,19,137,0,8056,'additional_options',0,1647,63,1640,1382613725,1,1652),(208,19,137,0,8057,'additional_options',0,1640,64,1652,1382613725,1,1647),(208,19,137,0,8058,'additional_options',0,1648,65,1647,1382613725,1,1640),(208,19,137,0,8059,'additional_options',0,1647,66,1640,1382613725,1,1648),(208,19,137,0,8060,'additional_options',0,0,67,1648,1382613725,1,1647),(201,19,138,0,8061,'name',0,1666,0,0,1382613863,1,1546),(201,19,138,0,8062,'name',0,1689,1,1546,1382613863,1,1666),(201,19,138,0,8063,'name',0,1689,2,1666,1382613863,1,1689),(304,19,138,0,8064,'type',0,1640,3,1689,1382613863,1,1689),(208,19,138,0,8065,'additional_options',0,1641,4,1689,1382613863,1,1640),(208,19,138,0,8066,'additional_options',0,1642,5,1640,1382613863,1,1641),(208,19,138,0,8067,'additional_options',0,1643,6,1641,1382613863,1,1642),(208,19,138,0,8068,'additional_options',0,1644,7,1642,1382613863,1,1643),(208,19,138,0,8069,'additional_options',0,1645,8,1643,1382613863,1,1644),(208,19,138,0,8070,'additional_options',0,1646,9,1644,1382613863,1,1645),(208,19,138,0,8071,'additional_options',0,1647,10,1645,1382613863,1,1646),(208,19,138,0,8072,'additional_options',0,1640,11,1646,1382613863,1,1647),(208,19,138,0,8073,'additional_options',0,1648,12,1647,1382613863,1,1640),(208,19,138,0,8074,'additional_options',0,1649,13,1640,1382613863,1,1648),(208,19,138,0,8075,'additional_options',0,1664,14,1648,1382613863,1,1649),(208,19,138,0,8076,'additional_options',0,1647,15,1649,1382613863,1,1664),(208,19,138,0,8077,'additional_options',0,1640,16,1664,1382613863,1,1647),(208,19,138,0,8078,'additional_options',0,1435,17,1647,1382613863,1,1640),(208,19,138,0,8079,'additional_options',0,1647,18,1640,1382613863,1,1435),(208,19,138,0,8080,'additional_options',0,1671,19,1435,1382613863,1,1647),(208,19,138,0,8081,'additional_options',0,1640,20,1647,1382613863,1,1671),(208,19,138,0,8082,'additional_options',0,1435,21,1671,1382613863,1,1640),(208,19,138,0,8083,'additional_options',0,1647,22,1640,1382613863,1,1435),(208,19,138,0,8084,'additional_options',0,1640,23,1435,1382613863,1,1647),(208,19,138,0,8085,'additional_options',0,1652,24,1647,1382613863,1,1640),(208,19,138,0,8086,'additional_options',0,1647,25,1640,1382613863,1,1652),(208,19,138,0,8087,'additional_options',0,1640,26,1652,1382613863,1,1647),(208,19,138,0,8088,'additional_options',0,1653,27,1647,1382613863,1,1640),(208,19,138,0,8089,'additional_options',0,1654,28,1640,1382613863,1,1653),(208,19,138,0,8090,'additional_options',0,1655,29,1653,1382613863,1,1654),(208,19,138,0,8091,'additional_options',0,1435,30,1654,1382613863,1,1655),(208,19,138,0,8092,'additional_options',0,1671,31,1655,1382613863,1,1435),(208,19,138,0,8093,'additional_options',0,1656,32,1435,1382613863,1,1671),(208,19,138,0,8094,'additional_options',0,1655,33,1671,1382613863,1,1656),(208,19,138,0,8095,'additional_options',0,1657,34,1656,1382613863,1,1655),(208,19,138,0,8096,'additional_options',0,1647,35,1655,1382613863,1,1657),(208,19,138,0,8097,'additional_options',0,1640,36,1657,1382613863,1,1647),(208,19,138,0,8098,'additional_options',0,1658,37,1647,1382613863,1,1640),(208,19,138,0,8099,'additional_options',0,1654,38,1640,1382613863,1,1658),(208,19,138,0,8100,'additional_options',0,1655,39,1658,1382613863,1,1654),(208,19,138,0,8101,'additional_options',0,1659,40,1654,1382613863,1,1655),(208,19,138,0,8102,'additional_options',0,1655,41,1655,1382613863,1,1659),(208,19,138,0,8103,'additional_options',0,1660,42,1659,1382613863,1,1655),(208,19,138,0,8104,'additional_options',0,1661,43,1655,1382613863,1,1660),(208,19,138,0,8105,'additional_options',0,1662,44,1660,1382613863,1,1661),(208,19,138,0,8106,'additional_options',0,1690,45,1661,1382613863,1,1662),(208,19,138,0,8107,'additional_options',0,1647,46,1662,1382613863,1,1690),(208,19,138,0,8108,'additional_options',0,1640,47,1690,1382613863,1,1647),(208,19,138,0,8109,'additional_options',0,1658,48,1647,1382613863,1,1640),(208,19,138,0,8110,'additional_options',0,1654,49,1640,1382613863,1,1658),(208,19,138,0,8111,'additional_options',0,1664,50,1658,1382613863,1,1654),(208,19,138,0,8112,'additional_options',0,1659,51,1654,1382613863,1,1664),(208,19,138,0,8113,'additional_options',0,1664,52,1664,1382613863,1,1659),(208,19,138,0,8114,'additional_options',0,1660,53,1659,1382613863,1,1664),(208,19,138,0,8115,'additional_options',0,1635,54,1664,1382613863,1,1660),(208,19,138,0,8116,'additional_options',0,1662,55,1660,1382613863,1,1635),(208,19,138,0,8117,'additional_options',0,1690,56,1635,1382613863,1,1662),(208,19,138,0,8118,'additional_options',0,1647,57,1662,1382613863,1,1690),(208,19,138,0,8119,'additional_options',0,1640,58,1690,1382613863,1,1647),(208,19,138,0,8120,'additional_options',0,1653,59,1647,1382613863,1,1640),(208,19,138,0,8121,'additional_options',0,1647,60,1640,1382613863,1,1653),(208,19,138,0,8122,'additional_options',0,1640,61,1653,1382613863,1,1647),(208,19,138,0,8123,'additional_options',0,1652,62,1647,1382613863,1,1640),(208,19,138,0,8124,'additional_options',0,1647,63,1640,1382613863,1,1652),(208,19,138,0,8125,'additional_options',0,1640,64,1652,1382613863,1,1647),(208,19,138,0,8126,'additional_options',0,1648,65,1647,1382613863,1,1640),(208,19,138,0,8127,'additional_options',0,1647,66,1640,1382613863,1,1648),(208,19,138,0,8128,'additional_options',0,0,67,1648,1382613863,1,1647),(181,16,133,0,8129,'title',0,1691,0,0,1382070975,1,1691),(184,16,133,0,8130,'intro',0,1692,1,1691,1382070975,1,1691),(188,16,133,0,8131,'publish_date',0,0,2,1691,1382070975,1,1692),(236,25,145,0,8132,'name',0,1679,0,0,1382742363,1,1679),(237,25,145,0,8133,'caption',0,0,1,1679,1382742363,1,1679),(236,25,146,0,8134,'name',0,1679,0,0,1382742386,1,1679),(237,25,146,0,8135,'caption',0,0,1,1679,1382742386,1,1679),(301,39,148,0,8142,'name',0,1666,0,0,1382743436,1,1546),(301,39,148,0,8143,'name',0,1667,1,1546,1382743436,1,1666),(303,39,148,0,8144,'description',0,1635,2,1666,1382743436,1,1667),(303,39,148,0,8145,'description',0,1668,3,1667,1382743436,1,1635),(303,39,148,0,8146,'description',0,1669,4,1635,1382743436,1,1668),(303,39,148,0,8147,'description',0,0,5,1668,1382743436,1,1669),(301,39,149,0,8148,'name',0,1666,0,0,1382743456,1,1546),(301,39,149,0,8149,'name',0,1667,1,1546,1382743456,1,1666),(303,39,149,0,8150,'description',0,1635,2,1666,1382743456,1,1667),(303,39,149,0,8151,'description',0,1668,3,1667,1382743456,1,1635),(303,39,149,0,8152,'description',0,1669,4,1635,1382743456,1,1668),(303,39,149,0,8153,'description',0,0,5,1668,1382743456,1,1669),(301,39,147,0,8154,'name',0,1693,0,0,1382743416,1,1546),(301,39,147,0,8155,'name',0,1694,1,1546,1382743416,1,1693),(303,39,147,0,8156,'description',0,1695,2,1693,1382743416,1,1694),(303,39,147,0,8157,'description',0,1696,3,1694,1382743416,1,1695),(303,39,147,0,8158,'description',0,1697,4,1695,1382743416,1,1696),(303,39,147,0,8159,'description',0,0,5,1696,1382743416,1,1697),(236,25,150,0,8160,'name',0,0,0,0,1382751527,1,1698),(300,38,126,0,8162,'name',0,0,0,0,1382029414,1,1700),(201,19,152,0,8192,'name',0,1703,0,0,1382950931,1,1701),(202,19,152,0,8193,'product_number',501,1701,1,1701,1382950931,1,1703),(304,19,152,0,8194,'type',0,1640,2,1703,1382950931,1,1701),(208,19,152,0,8195,'additional_options',0,1641,3,1701,1382950931,1,1640),(208,19,152,0,8196,'additional_options',0,1642,4,1640,1382950931,1,1641),(208,19,152,0,8197,'additional_options',0,1643,5,1641,1382950931,1,1642),(208,19,152,0,8198,'additional_options',0,1644,6,1642,1382950931,1,1643),(208,19,152,0,8199,'additional_options',0,1645,7,1643,1382950931,1,1644),(208,19,152,0,8200,'additional_options',0,1646,8,1644,1382950931,1,1645),(208,19,152,0,8201,'additional_options',0,1647,9,1645,1382950931,1,1646),(208,19,152,0,8202,'additional_options',0,1640,10,1646,1382950931,1,1647),(208,19,152,0,8203,'additional_options',0,1648,11,1647,1382950931,1,1640),(208,19,152,0,8204,'additional_options',0,1649,12,1640,1382950931,1,1648),(208,19,152,0,8205,'additional_options',0,1692,13,1648,1382950931,1,1649),(208,19,152,0,8206,'additional_options',0,1647,14,1649,1382950931,1,1692),(208,19,152,0,8207,'additional_options',0,1640,15,1692,1382950931,1,1647),(208,19,152,0,8208,'additional_options',0,1435,16,1647,1382950931,1,1640),(208,19,152,0,8209,'additional_options',0,1647,17,1640,1382950931,1,1435),(208,19,152,0,8210,'additional_options',0,1640,18,1435,1382950931,1,1647),(208,19,152,0,8211,'additional_options',0,1435,19,1647,1382950931,1,1640),(208,19,152,0,8212,'additional_options',0,1647,20,1640,1382950931,1,1435),(208,19,152,0,8213,'additional_options',0,1640,21,1435,1382950931,1,1647),(208,19,152,0,8214,'additional_options',0,1652,22,1647,1382950931,1,1640),(208,19,152,0,8215,'additional_options',0,1647,23,1640,1382950931,1,1652),(208,19,152,0,8216,'additional_options',0,1640,24,1652,1382950931,1,1647),(208,19,152,0,8217,'additional_options',0,1648,25,1647,1382950931,1,1640),(208,19,152,0,8218,'additional_options',0,1647,26,1640,1382950931,1,1648),(208,19,152,0,8219,'additional_options',0,0,27,1648,1382950931,1,1647),(301,39,151,0,8220,'name',0,1704,0,0,1382950781,1,1701),(303,39,151,0,8221,'description',0,1705,1,1701,1382950781,1,1704),(303,39,151,0,8222,'description',0,1706,2,1704,1382950781,1,1705),(303,39,151,0,8223,'description',0,1635,3,1705,1382950781,1,1706),(303,39,151,0,8224,'description',0,0,4,1706,1382950781,1,1635);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_return_count`
--

DROP TABLE IF EXISTS `ezsearch_return_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_return_count` (
  `count` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsearch_return_cnt_ph_id_cnt` (`phrase_id`,`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_return_count`
--

LOCK TABLES `ezsearch_return_count` WRITE;
/*!40000 ALTER TABLE `ezsearch_return_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_return_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=1707 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (801,1,'to'),(812,1,'setup'),(814,2,'the'),(816,1,'for'),(819,1,'please'),(825,1,'at'),(843,1,'can'),(848,1,'from'),(863,1,'in'),(877,1,'common'),(882,1,'also'),(894,1,'you'),(927,1,'ez.no'),(930,3,'users'),(951,1,'main'),(952,2,'group'),(953,2,'anonymous'),(954,2,'user'),(955,1,'nospam'),(958,1,'administrator'),(959,1,'editors'),(961,1,'media'),(962,1,'images'),(963,1,'files'),(964,1,'multimedia'),(965,1,'ini'),(966,1,'settings'),(967,1,'sitestyle_identifier'),(968,1,'design'),(1138,1,'city'),(1210,1,'reach'),(1435,5,'name'),(1528,1,'below'),(1531,1,'contact'),(1532,1,'us'),(1533,1,'fill'),(1534,1,'form'),(1535,1,'company'),(1536,1,'address'),(1537,1,'country'),(1538,1,'amir'),(1539,1,'koklan'),(1540,1,'admin'),(1541,1,'amirkoklan'),(1542,1,'gmail.com'),(1543,1,'partners'),(1544,1,'members'),(1546,9,'pizza'),(1548,1,'baguette'),(1549,1,'salate'),(1552,1,'wrap'),(1553,1,'spezial'),(1554,1,'extras'),(1555,1,'dessert'),(1556,1,'getranke'),(1628,1,'italy'),(1629,1,'footer'),(1631,1,'hollywood'),(1632,1,'foods'),(1635,7,'tomaten'),(1640,4,'lt'),(1641,4,'xml'),(1642,4,'version'),(1643,4,'1.0'),(1644,4,'encoding'),(1645,4,'utf'),(1646,4,'8'),(1647,4,'gt'),(1648,4,'ezmultioption'),(1649,4,'option_counter'),(1652,4,'multioptions'),(1653,3,'multioption'),(1654,3,'id'),(1655,3,'1'),(1656,3,'priority'),(1657,3,'default_option_id'),(1658,3,'option'),(1659,3,'option_id'),(1660,3,'value'),(1661,3,'kase'),(1662,3,'additional_price'),(1663,2,'0.8'),(1664,3,'2'),(1666,6,'l.a'),(1667,3,'frischen'),(1668,3,'mozzarella'),(1669,3,'basilikum'),(1671,2,'zutaten'),(1679,4,'banner'),(1682,1,'cl'),(1683,1,'100'),(1684,1,'classic'),(1685,1,'3'),(1686,1,'zusatze'),(1687,1,'mais'),(1688,1,'american'),(1689,1,'jumbo'),(1690,1,'1.60'),(1691,1,'impressum'),(1692,2,'0'),(1693,1,'california'),(1694,1,'creme'),(1695,1,'fraiche'),(1696,1,'schinken'),(1697,1,'broccoli.knoblauch'),(1698,1,'somer'),(1700,1,'burger'),(1701,2,'hamburger'),(1703,1,'501'),(1704,1,'salat'),(1705,1,'gurken'),(1706,1,'zwiebeln');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart'),(4,'setup','','Setup','ezsetupnavigationpart'),(5,'design','','Design','ezvisualnavigationpart'),(6,'','','Restricted','ezcontentnavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezdemo','2.0'),('ezpublish-release','1'),('ezpublish-version','5.0.0alpha1');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`,`session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`,`requested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT '',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (1381794977,23,1,0,1381794977,'5e4edc0469a80872c6d1155725231d7b','http://doc.ez.no/Tutorials/Developing-eZ-Publish-extensions'),(1381794977,24,1,0,1381794977,'d9ade3653cd9072da08834b2ec893457','http://doc.ez.no/Tutorials/Building-mobile-browser-and-hybrid-applications-with-eZ-Publish'),(1381794977,25,1,0,1381794977,'ddefdee73d6d8108510290804f481790','http://doc.ez.no/eZ-Publish/User-manual/4.6/The-administration-interface'),(1381794977,26,1,0,1381794977,'03b44c74805d6552bab24dd297d2654d','http://doc.ez.no/eZ-Publish/User-manual/4.6/Daily-tasks'),(1381794977,27,1,0,1381794977,'50218469dc48332c4d0cd64097c2194a','http://doc.ez.no/content/download/22884/95262/version/4/file/ezwebin_userguide-1.3.pdf'),(1381794977,28,1,0,1381794977,'adb2ff0588a2f6e26d532a27c39da9ef','http://doc.ez.no/eZ-Publish/Technical-manual/4.6/Concepts-and-basics'),(1381794977,29,1,0,1381794977,'d38018510827e031a420eb16d52dba54','http://doc.ez.no/eZ-Publish/Technical-manual/4.6/Templates/Template-basics'),(1381794977,30,1,0,1381794977,'1dd53a33fc75fa93f4f43c258176d636','http://doc.ez.no/eZ-Publish/Technical-manual/4.5/Features/Rest-API'),(1381794978,31,1,0,1381794978,'3a7665995284aa8e59b6226b710271e3','http://ez.no/Products/Demos-Videos/eZ-Publish-Multichannel-Content-Management-Video-Tutorial'),(1381794978,32,1,0,1381794978,'979693c53f31cefbbc706ab0770134f6','http://ez.no/Products/Demos-Videos/eZ-Flow-Video-Tutorial'),(1381794978,33,1,0,1381794978,'d0907aebf174927c3a0ed9bfbfbc239d','http://ez.no/Products/Demos-Videos'),(1381794978,34,1,0,1381794978,'79894c8f570974cde11be7d0334339f8','http://www.ez.no.'),(1381794979,35,1,0,1381794979,'38f9be34fd04160fd1c05baa7ec68653','http://www.ez.no./'),(1381794980,36,1,0,1381794980,'37d26c60cb676a53ddd3c5f64ea3a851','http://www.ez.no'),(1381794980,37,1,0,1381794980,'ba55ac8a1ebe1cd6eedbb5fc073feb4e','http://doc.ez.no'),(1381794980,38,1,0,1381794980,'265d537bfba0e5ed4e85fbcd7f30ea84','http://share.ez.no'),(1381794980,39,1,0,1381794980,'d6d4d14833b8b5de7ad0bf6a2743a235','http://www.flickr.com/photos/vermazeren/'),(1381794984,40,1,0,1381794984,'a3673913bea75bed57003140e9291384','http://en.wikipedia.org/wiki/Peruvian_rainforest'),(1381794984,41,1,0,1381794984,'2a5451cb71781968a33946c230be1192','http://en.wikipedia.org/wiki/Loreto_Region'),(1381794984,42,1,0,1381794984,'6abe77908ae51f59afdff7112f0cb65e','http://en.wikipedia.org/wiki/Maynas_Province'),(1381794984,43,1,0,1381794984,'77698588a1ed1915fcd035887fd1fb6e','http://en.wikipedia.org/wiki/Amazon_River'),(1381794984,44,1,0,1381794984,'baed9deaadccaadb917f64b0c26b559e','http://en.wikipedia.org/wiki/Bel%C3%A9m'),(1381794984,45,1,0,1381794984,'db4a06b5f658019ab48d5ee2d4594606','http://en.wikipedia.org/wiki/Ucayali_River'),(1381794984,46,1,0,1381794984,'d57244f37ffd60979722b1517b114bcf','http://en.wikipedia.org/wiki/Mara%C3%B1%C3%B3n_River_(Peru)'),(1381794984,47,1,0,1381794984,'cbebb68114ed9ec66852227b6a77c2e9','http://en.wikipedia.org/wiki/Amazon_Basin'),(1381794984,48,1,0,1381794984,'263bd61ce48c728f49114537655aaeed','http://en.wikipedia.org/wiki/Nanay'),(1381794984,49,1,0,1381794984,'118430dad9632d485dad002b8f3e80e8','http://en.wikipedia.org/w/index.php?title=Itaya_(river)&action=edit&redlink=1'),(1381794984,50,1,0,1381794984,'b21980e8dfb5483ccf0264b1d83451e5','http://en.wikipedia.org/wiki/Nauta'),(1381794984,51,1,0,1381794984,'ef2f7aae0bdafb345e9799afc213c21e','http://en.wikipedia.org/wiki/Iquitos'),(1381794984,52,1,0,1381794984,'eb5d122600153160b4fe5583b336e044','http://en.wikipedia.org/wiki/Draft_(hull)'),(1381794984,53,1,0,1381794984,'5f4eea90f9a483be27375193b1a714f0','http://en.wikipedia.org/wiki/Auto_rickshaw'),(1381794984,54,1,0,1381794984,'61d825dc1b841be5781ea084d0367124','http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License'),(1381794984,55,1,0,1381794984,'0a5d8f898c3b09edf1ab191cc93a731e','http://wikimediafoundation.org/wiki/Terms_of_use'),(1381794984,56,1,0,1381794984,'93f544f502bafcf3277eea6ad82ac980','http://en.wikipedia.org/wiki/Tropical_and_subtropical_moist_broadleaf_forests'),(1381794984,57,1,0,1381794984,'6e4503d7b1f6769322dfcaab904eba80','http://en.wikipedia.org/wiki/Brazilian_Amazon'),(1381794984,58,1,0,1381794984,'f4509cbe804df80630a81cd4ac34b872','http://en.wikipedia.org/wiki/Peruvian_Amazon'),(1381794985,59,1,0,1381794985,'87449e3583ef30f44391172dac8926e2','http://en.wikipedia.org/wiki/Amazon_Region_of_Colombia'),(1381794985,60,1,0,1381794985,'ecbaa67019f9379446be882955ab5713','http://en.wikipedia.org/wiki/Venezuela'),(1381794985,61,1,0,1381794985,'9e0f783448ef6d0e87b4eead72de56c6','http://en.wikipedia.org/wiki/Ecuador'),(1381794985,62,1,0,1381794985,'1add87bf2780c4a3b83b067a0b5cf6dc','http://en.wikipedia.org/wiki/Bolivia'),(1381794985,63,1,0,1381794985,'9c6a47723db7e1528a3a21333d46b5df','http://en.wikipedia.org/wiki/Guyana'),(1381794985,64,1,0,1381794985,'d54fc5aac904cb6dad3f83064f0f1f03','http://en.wikipedia.org/wiki/Suriname'),(1381794985,65,1,0,1381794985,'a32c6b6e2e4a7f884d9f01b4880809d7','http://en.wikipedia.org/wiki/French_Guiana'),(1381794985,66,1,0,1381794985,'baafad5f6f2abfff09cd1a94ae868184','http://en.wikipedia.org/wiki/Amazonas_(disambiguation)'),(1381794985,67,1,0,1381794985,'870edf37b69ace4d924dc3aea7cc2a65','http://en.wikipedia.org/wiki/Rainforest'),(1381794985,68,1,0,1381794985,'78d6b8d8ac8519b655c961396fd5ec20','http://en.wikipedia.org/wiki/Tropical_rainforest'),(1381794985,69,1,0,1381794985,'f8bfa832e29be6b9561b11db65459c90','http://en.wikipedia.org/wiki/Amazon_jungle'),(1381794985,70,1,0,1381794985,'3242eaea9af6c3ce80131867c981b612','http://en.wikipedia.org/wiki/Peru'),(1381794985,71,1,0,1381794985,'c218038a86c0ce081777da66d115a54e','http://en.wikipedia.org/wiki/Regions_of_Peru'),(1381794985,72,1,0,1381794985,'08367ef84e7840b3e5e98ef86c4868cf','http://en.wikipedia.org/wiki/Amazon_Rainforest'),(1381794985,73,1,0,1381794985,'9dc3dc90cb67b54bd58d86cc05517539','http://en.wikipedia.org/wiki/Vegetation'),(1381794985,74,1,0,1381794985,'d5351ada717306d51e05eec150d63eff','http://en.wikipedia.org/wiki/Lagoon'),(1381794985,75,1,0,1381794985,'dc6c35c0a095fcb091537804b31ea09b','http://en.wikipedia.org/wiki/Yavari_River'),(1381794985,76,1,0,1381794985,'329ad3a1340cec8abbb2b2795b91c8f3','http://en.wikipedia.org/wiki/I%C3%A7%C3%A1_River'),(1381794985,77,1,0,1381794985,'673cf838e845dc852c90d47e7b2c0676','http://en.wikipedia.org/wiki/Ucayali'),(1381794985,78,1,0,1381794985,'262f9fd6b1a55a94cd4459b1e6e570b9','http://en.wikipedia.org/wiki/Mara%C3%B1%C3%B3n_River'),(1381794985,79,1,0,1381794985,'b08b48462362f02401e891f539f97333','http://en.wikipedia.org/wiki/Pongo_de_Manseriche'),(1381794987,80,1,0,1381794987,'58f29415789883998703ec287f31eea3','http://en.wikipedia.org/wiki/List_of_United_States_cities_by_population'),(1381794987,81,1,0,1381794987,'3f2cfa0cc2dbbd4402840cc5a778ad1c','http://en.wikipedia.org/wiki/United_States'),(1381794987,82,1,0,1381794987,'8cad1e842cb9deb61683604e0522590e','http://en.wikipedia.org/wiki/New_York_Metropolitan_Area'),(1381794987,83,1,0,1381794987,'fdf44412caeead8226d7ed252f1058cb','http://en.wikipedia.org/wiki/List_of_metropolitan_areas_by_population'),(1381794987,84,1,0,1381794987,'9ccc47b6aeb02b3045c4b68b386d6735','http://en.wikipedia.org/wiki/United_Nations_Headquarters'),(1381794987,85,1,0,1381794987,'f3ccf6574ddeaacdd99bd583523e7001','http://en.wikipedia.org/wiki/Diplomacy'),(1381794987,86,1,0,1381794987,'cf758a54f6a1b3d4642cca61f10b2338','http://en.wikipedia.org/wiki/New_York'),(1381794987,87,1,0,1381794987,'4ff5047fe9872548da12804c1cd06813','http://en.wikipedia.org/wiki/New_York_City'),(1381794991,88,1,0,1381794991,'9b492048041e95b32de08bafc86d759b','/content/view/sitemap/2'),(1381794991,89,1,0,1381794991,'c86bcb109d8e70f9db65c803baafd550','/content/view/tagcloud/2');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (198,1,23),(198,1,24),(210,1,25),(210,1,26),(210,1,27),(222,1,28),(222,1,29),(222,1,30),(234,1,31),(234,1,32),(234,1,33),(252,1,34),(264,1,35),(276,1,35),(288,1,34),(300,1,36),(300,1,37),(300,1,38),(302,1,39),(368,1,40),(368,1,41),(368,1,42),(369,1,43),(369,1,44),(369,1,45),(369,1,46),(369,1,47),(369,1,48),(369,1,49),(369,1,50),(369,1,51),(369,1,52),(369,1,53),(369,1,54),(369,1,55),(380,1,56),(380,1,47),(381,1,57),(381,1,58),(381,1,59),(381,1,60),(381,1,61),(381,1,62),(381,1,63),(381,1,64),(381,1,65),(381,1,66),(381,1,67),(381,1,68),(381,1,69),(381,1,54),(381,1,55),(393,1,70),(393,1,71),(393,1,72),(393,1,51),(393,1,73),(393,1,74),(393,1,43),(393,1,75),(393,1,76),(393,1,77),(393,1,78),(393,1,79),(393,1,41),(393,1,54),(393,1,55),(449,1,80),(449,1,81),(449,1,82),(449,1,83),(450,1,84),(450,1,85),(450,1,86),(450,1,87),(450,1,54),(450,1,55),(501,2,88),(502,2,89);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES ('content/view/full/2',0,12,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),('content/view/full/5',0,13,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),('content/view/full/12',0,15,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),('content/view/full/13',0,16,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),('content/view/full/14',0,17,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),('content/view/full/15',0,18,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),('content/view/full/43',0,20,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),('content/view/full/44',0,21,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),('content/view/full/45',0,22,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),('content/view/full/48',0,25,1,1,0,'a0f848942ce863cf53c0fa6cc684007d','setup'),('content/view/full/50',0,27,1,1,0,'c60212835de76414f9bfd21eecb8f221','foo_bar_folder/images/vbanner'),('content/view/full/51',0,28,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),('content/view/full/52',0,29,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),('content/view/full/53',0,30,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia'),('content/view/full/54',0,31,1,1,0,'e501fe6c81ed14a5af2b322d248102d8','setup/common_ini_settings'),('content/view/full/56',0,32,1,1,0,'2dd3db5dc7122ea5f3ee539bb18fe97d','design/ez_publish'),('content/view/full/58',0,33,1,1,0,'31c13f47ad87dd7baa2d558a91e0fbb9','design');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_action` (`action`(32),`id`,`link`),
  KEY `ezurlalias_ml_actt` (`action_type`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`parent`,`action`(32),`id`,`link`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`link`,`text`(32)),
  KEY `ezurlalias_ml_par_txt` (`parent`,`text`(32)),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES ('nop:','nop',1,14,0,0,1,14,0,'foo_bar_folder','0288b6883046492fa92e4a84eb67acc9'),('eznode:101','eznode',1,80,0,0,2,120,0,'Contact-Us','03f2197d47a602c679c5f667e3482855'),('eznode:59','eznode',1,38,0,1,3,38,0,'eZ-Publish','10e4c3cb527fb9963258469986c16240'),('eznode:142','eznode',1,139,0,1,3,139,0,'Banner','12df53fea8b3adfa6c2ec456dd22e204'),('eznode:134','eznode',1,119,0,1,3,119,0,'Footer','251d164643533a527361dbe1a7b9235d'),('eznode:58','eznode',1,25,0,1,3,25,0,'Design','31c13f47ad87dd7baa2d558a91e0fbb9'),('eznode:48','eznode',1,13,0,1,3,13,0,'Setup2','475e97c0146bfb1c490339546d9e72ee'),('nop:','nop',1,17,0,0,1,17,0,'media2','50e2736330de124f6edea9b008556fe6'),('eznode:136','eznode',1,122,0,1,3,122,0,'Foods','5d5b2441309f11dabc5c6298b125c779'),('eznode:43','eznode',1,9,0,1,3,9,0,'Media','62933a2951ef01f4eafd9bdf4d3cd2f0'),('nop:','nop',1,21,0,0,1,21,0,'setup3','732cefcf28bf4547540609fb1a786a30'),('nop:','nop',1,3,0,0,1,3,0,'users2','86425c35a33507d479f71ade53a669aa'),('eznode:5','eznode',1,2,0,1,3,2,0,'Users','9bc65c2abec141778ffaa729489f3e87'),('eznode:2','eznode',1,1,0,1,3,1,0,'','d41d8cd98f00b204e9800998ecf8427e'),('eznode:102','eznode',1,83,0,1,3,83,2,'Partners','7896f8fa69398c56d86a65357615c41f'),('eznode:14','eznode',1,6,0,1,3,6,2,'Editors','a147e136bfa717592f2bd70bd4b53b17'),('eznode:44','eznode',1,10,0,1,3,10,2,'Anonymous-Users','c2803c3fa1b0b5423237b4e018cae755'),('eznode:12','eznode',1,4,0,1,3,4,2,'Members','d2e3083420929d8bfae81f58fa4594cb'),('eznode:12','eznode',1,84,0,0,3,4,2,'Guest-accounts','e57843d836e3af8ab611fde9e2139b3a'),('eznode:13','eznode',1,5,0,1,3,5,2,'Administrator-users','f89fad7f8a3abc8c09e1deb46a420007'),('nop:','nop',1,11,0,0,1,11,3,'anonymous_users2','505e93077a6dde9034ad97a14ab022b1'),('eznode:12','eznode',1,26,0,0,0,4,3,'guest_accounts','70bb992820e73638731aa8de79b3329e'),('eznode:14','eznode',1,29,0,0,1,6,3,'editors','a147e136bfa717592f2bd70bd4b53b17'),('nop:','nop',1,7,0,0,1,7,3,'administrator_users2','a7da338c20bf65f9f789c87296379c2a'),('eznode:13','eznode',1,27,0,0,1,5,3,'administrator_users','aeb8609aa933b0899aa012c71139c58c'),('eznode:44','eznode',1,30,0,0,1,10,3,'anonymous_users','e9e5ad0c05ee1a43715572e5cc545926'),('eznode:15','eznode',1,81,0,0,3,8,5,'Administrator-User','5a9d7b0ec93173ef4fedee023209cb61'),('eznode:15','eznode',1,8,0,1,3,8,5,'Amir-Koklan','90c93d9d0307a665c281e060c7d55368'),('eznode:15','eznode',1,28,0,0,0,8,7,'administrator_user','a3cca2de936df1e2f805710399989971'),('eznode:53','eznode',1,20,0,1,3,20,9,'Multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,19,0,1,3,19,9,'Files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,18,0,1,3,18,9,'Images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:45','eznode',1,12,0,1,3,12,10,'Anonymous-User','ccb62ebca03a31272430bc414bd5cd5b'),('eznode:45','eznode',1,31,0,0,1,12,11,'anonymous_user','c593ec85293ecb0e02d50d4c5c6c20eb'),('eznode:54','eznode',1,22,0,1,2,22,13,'Common-INI-settings','4434993ac013ae4d54bb1f51034d6401'),('nop:','nop',1,15,0,0,1,15,14,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:50','eznode',1,16,0,1,2,16,15,'vbanner','c54e2d1b93642e280bdc5d99eab2827d'),('eznode:53','eznode',1,34,0,0,1,20,17,'multimedia','2e5bc8831f7ae6a29530e7f1bbf2de9c'),('eznode:52','eznode',1,33,0,0,1,19,17,'files','45b963397aa40d4a0063e0d85e4fe7a1'),('eznode:51','eznode',1,32,0,0,1,18,17,'images','59b514174bffe4ae402b3d63aad79fe0'),('eznode:54','eznode',1,35,0,0,1,22,21,'common_ini_settings','e59d6834e86cee752ed841f9cd8d5baf'),('eznode:56','eznode',1,37,0,0,2,24,25,'eZ-publish','10e4c3cb527fb9963258469986c16240'),('eznode:56','eznode',1,24,0,1,2,24,25,'Plain-site','49a39d99a955d95aa5d636275656a07a'),('eznode:131','eznode',1,116,0,0,2,130,85,'Dessert2','11942f1eb3b456d538da8125aed09d25'),('eznode:133','eznode',1,118,0,0,2,132,85,'Extras','27353006cfd751d26221e04a7928034d'),('eznode:124','eznode',1,109,0,0,2,123,85,'Pizza2','41e234c745bb909ea142727d704787f6'),('eznode:132','eznode',1,117,0,0,2,131,85,'Getraenke2','676e380f937da407d0355269110c593f'),('eznode:126','eznode',1,111,0,0,2,125,85,'Baguette2','6cfadd45b8cbeee992c1ef825d7f6bff'),('eznode:129','eznode',1,114,0,0,2,128,85,'Wrap2','860a141d62254f67599f265d703b5965'),('eznode:127','eznode',1,112,0,0,2,126,85,'Salate2','8cf9b7e3178a61eb167ef498282c0a6f'),('eznode:125','eznode',1,110,0,0,2,124,85,'From-Italy','9288553a56040da31fdae1d4ad69eb2b'),('eznode:128','eznode',1,113,0,0,2,127,85,'Burger2','c12829e6ad370df0308606b8088ac62f'),('eznode:130','eznode',1,115,0,0,2,129,85,'Spezial2','e911e9cacdcf7c99cf894dd64d3bfa46'),('eznode:101','eznode',1,120,0,1,2,120,119,'Contact-Us','03f2197d47a602c679c5f667e3482855'),('eznode:135','eznode',1,121,0,1,2,121,119,'Impressum','c3be4d4b41c11a55dd69ae16a96b51c6'),('eznode:133','eznode',1,132,0,1,2,132,122,'Extras','27353006cfd751d26221e04a7928034d'),('eznode:127','eznode',1,126,0,1,2,126,122,'Salate','2e38987e8a98dccce4145cbfe0b38e21'),('eznode:124','eznode',1,144,0,0,2,123,122,'Pizza-Klassiker','31f4e1b89453f9c8e0f2e468218f8439'),('eznode:126','eznode',1,125,0,1,2,125,122,'Baguette','69801a4ccce0e5179a027cce35f58ab2'),('eznode:128','eznode',1,127,0,1,2,127,122,'Burger','6e69685d22c94ffd42ccd7e70e246bd9'),('eznode:132','eznode',1,131,0,1,2,131,122,'Getraenke','770bec4c67bb52735dc571977f3f0770'),('eznode:124','eznode',1,123,0,1,2,123,122,'Pizza','7cf2db5ec261a0fa27a502d3196a6f60'),('eznode:125','eznode',1,124,0,1,2,124,122,'From-Italy','9288553a56040da31fdae1d4ad69eb2b'),('eznode:130','eznode',1,129,0,1,2,129,122,'Spezial','c89541d22866e9dabaeacb92c155e232'),('eznode:129','eznode',1,128,0,1,2,128,122,'Wrap','ccfc59a528a109fa4204e8ea06e8b68b'),('eznode:131','eznode',1,130,0,1,2,130,122,'Dessert','eabbf14ccc6150d9122050d27bc43c7c'),('eznode:148','eznode',1,153,0,0,2,150,123,'Pizza-L.A2','4a2ffdf870040047329897cf6188cad3'),('eznode:148','eznode',1,150,0,1,2,150,123,'Pizza-California','9328052929a3dbb1d872db8a35571dd3'),('eznode:149','eznode',1,151,0,1,2,151,123,'Pizza-L.A3','bd0cd4796120b75f3d182f629854286f'),('eznode:137','eznode',1,133,0,1,2,133,123,'Pizza-L.A','cf552099e99fb647eabb26be35716794'),('eznode:150','eznode',1,152,0,1,2,152,123,'Pizza-L.A4','feee2bf2a0caf1176025d488d0a2ee34'),('eznode:152','eznode',1,155,0,1,2,155,127,'Hamburger','140d3ea2b0c7a720b8fcc236deedd04f'),('eznode:138','eznode',1,134,0,1,2,134,133,'Pizza-L.A-CL','07ce563eca0f26324ebaeccdda4e0a4b'),('eznode:138','eznode',1,145,0,0,2,134,133,'Pizza-L.A2','4a2ffdf870040047329897cf6188cad3'),('eznode:139','eznode',1,135,0,1,2,135,133,'Pizza-L.A-American','85d27b1816c40aea8110610e85face83'),('eznode:140','eznode',1,137,0,1,2,137,133,'Pizza-L.A-Jumbo','aadaffbb6afa04c5d93d6ea764380312'),('eznode:140','eznode',1,147,0,0,2,137,133,'Pizza-L.A3','bd0cd4796120b75f3d182f629854286f'),('eznode:139','eznode',1,146,0,0,2,135,133,'Pizza-L.A','cf552099e99fb647eabb26be35716794'),('eznode:138','eznode',1,136,0,0,2,134,133,'Classic','f3d64714d1f6e7f71558d4252e84ab58'),('eznode:144','eznode',1,141,0,1,2,141,139,'banner','12df53fea8b3adfa6c2ec456dd22e204'),('eznode:147','eznode',1,149,0,1,2,149,139,'banner3','8c5b413b64b97d1f5c875881bd4c6a2f'),('eznode:146','eznode',1,148,0,1,2,148,139,'banner2','d0c57a75e4fbb302e2f3774d76a8d0ad'),('eznode:151','eznode',1,154,0,1,2,154,139,'Somer','fdd2a0f90ff7ce0be27b305716c030a1'),('eznode:153','eznode',1,156,0,1,2,156,155,'Hamburger','140d3ea2b0c7a720b8fcc236deedd04f');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(50) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentobject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','4e6f6184135228ccd45f8233d72a0363',2),(14,'amirkoklan@gmail.com','admin','bc5eb0bd81d014c5f341f96a83c4db15',2),(153,'','','',1);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12,25,'','',2),(11,28,'','',1),(42,31,'','',1),(13,32,'Subtree','/1/2/',3),(13,33,'Subtree','/1/43/',3),(11,34,'','',5),(100,35,'','',4),(100,36,'','',5),(100,37,'','',1),(13,38,'','',5);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1,1000,10),(1,10,14),(1,0,153);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit` DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1382972948,0,1382961732,54,14);
/*!40000 ALTER TABLE `ezuservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vatrule_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype` DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1,'Std',0);
/*!40000 ALTER TABLE `ezvattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `wid_version_placement` (`workflow_id`,`version`,`placement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group` DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098,14,1,1024392098,14,'Standard');
/*!40000 ALTER TABLE `ezworkflow_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-28 19:11:19
