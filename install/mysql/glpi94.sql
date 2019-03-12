-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: glpi94
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `glpi_alerts`
--

DROP TABLE IF EXISTS `glpi_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php ALERT_* constant',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_alerts`
--

LOCK TABLES `glpi_alerts` WRITE;
/*!40000 ALTER TABLE `glpi_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_apiclients`
--

DROP TABLE IF EXISTS `glpi_apiclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_apiclients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `ipv4_range_start` bigint(20) DEFAULT NULL,
  `ipv4_range_end` bigint(20) DEFAULT NULL,
  `ipv6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_token_date` datetime DEFAULT NULL,
  `dolog_method` tinyint(4) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_apiclients`
--

LOCK TABLES `glpi_apiclients` WRITE;
/*!40000 ALTER TABLE `glpi_apiclients` DISABLE KEYS */;
INSERT INTO `glpi_apiclients` VALUES (1,0,1,'full access from localhost',NULL,1,2130706433,2130706433,'::1','',NULL,0,NULL);
/*!40000 ALTER TABLE `glpi_apiclients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_authldapreplicates`
--

DROP TABLE IF EXISTS `glpi_authldapreplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_authldapreplicates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authldaps_id` (`authldaps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_authldapreplicates`
--

LOCK TABLES `glpi_authldapreplicates` WRITE;
/*!40000 ALTER TABLE `glpi_authldapreplicates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_authldapreplicates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_authldaps`
--

DROP TABLE IF EXISTS `glpi_authldaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_authldaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rootdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT '389',
  `condition` text COLLATE utf8_unicode_ci,
  `login_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'uid',
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_tls` tinyint(1) NOT NULL DEFAULT '0',
  `group_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_condition` text COLLATE utf8_unicode_ci,
  `group_search_type` int(11) NOT NULL DEFAULT '0',
  `group_member_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_dn` tinyint(1) NOT NULL DEFAULT '1',
  `time_offset` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT '0',
  `title_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_condition` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rootdn_passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email3_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email4_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsible_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `ldap_maxlimit` int(11) NOT NULL DEFAULT '0',
  `can_support_pagesize` tinyint(1) NOT NULL DEFAULT '0',
  `picture_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `inventory_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_default` (`is_default`),
  KEY `is_active` (`is_active`),
  KEY `date_creation` (`date_creation`),
  KEY `sync_field` (`sync_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_authldaps`
--

LOCK TABLES `glpi_authldaps` WRITE;
/*!40000 ALTER TABLE `glpi_authldaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_authldaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_authmails`
--

DROP TABLE IF EXISTS `glpi_authmails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_authmails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_authmails`
--

LOCK TABLES `glpi_authmails` WRITE;
/*!40000 ALTER TABLE `glpi_authmails` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_authmails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_autoupdatesystems`
--

DROP TABLE IF EXISTS `glpi_autoupdatesystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_autoupdatesystems`
--

LOCK TABLES `glpi_autoupdatesystems` WRITE;
/*!40000 ALTER TABLE `glpi_autoupdatesystems` DISABLE KEYS */;
INSERT INTO `glpi_autoupdatesystems` VALUES (1,'apt',''),(2,'rpm',''),(3,'win upd','');
/*!40000 ALTER TABLE `glpi_autoupdatesystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_blacklistedmailcontents`
--

DROP TABLE IF EXISTS `glpi_blacklistedmailcontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_blacklistedmailcontents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_blacklistedmailcontents`
--

LOCK TABLES `glpi_blacklistedmailcontents` WRITE;
/*!40000 ALTER TABLE `glpi_blacklistedmailcontents` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_blacklistedmailcontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_blacklists`
--

DROP TABLE IF EXISTS `glpi_blacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_blacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_blacklists`
--

LOCK TABLES `glpi_blacklists` WRITE;
/*!40000 ALTER TABLE `glpi_blacklists` DISABLE KEYS */;
INSERT INTO `glpi_blacklists` VALUES (1,1,'empty IP','',NULL,NULL,NULL),(2,1,'localhost','127.0.0.1',NULL,NULL,NULL),(3,1,'zero IP','0.0.0.0',NULL,NULL,NULL),(4,2,'empty MAC','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_blacklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_budgets`
--

DROP TABLE IF EXISTS `glpi_budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `budgettypes_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_template` (`is_template`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `locations_id` (`locations_id`),
  KEY `budgettypes_id` (`budgettypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_budgets`
--

LOCK TABLES `glpi_budgets` WRITE;
/*!40000 ALTER TABLE `glpi_budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_budgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_budgettypes`
--

DROP TABLE IF EXISTS `glpi_budgettypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_budgettypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_budgettypes`
--

LOCK TABLES `glpi_budgettypes` WRITE;
/*!40000 ALTER TABLE `glpi_budgettypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_budgettypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_businesscriticities`
--

DROP TABLE IF EXISTS `glpi_businesscriticities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_businesscriticities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`businesscriticities_id`,`name`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_businesscriticities`
--

LOCK TABLES `glpi_businesscriticities` WRITE;
/*!40000 ALTER TABLE `glpi_businesscriticities` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_businesscriticities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_calendars`
--

DROP TABLE IF EXISTS `glpi_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `cache_duration` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_calendars`
--

LOCK TABLES `glpi_calendars` WRITE;
/*!40000 ALTER TABLE `glpi_calendars` DISABLE KEYS */;
INSERT INTO `glpi_calendars` VALUES (1,'Default',0,1,'Default calendar',NULL,'[0,43200,43200,43200,43200,43200,0]',NULL);
/*!40000 ALTER TABLE `glpi_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_calendars_holidays`
--

DROP TABLE IF EXISTS `glpi_calendars_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_calendars_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `holidays_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  KEY `holidays_id` (`holidays_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_calendars_holidays`
--

LOCK TABLES `glpi_calendars_holidays` WRITE;
/*!40000 ALTER TABLE `glpi_calendars_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_calendars_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_calendarsegments`
--

DROP TABLE IF EXISTS `glpi_calendarsegments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_calendarsegments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendars_id` (`calendars_id`),
  KEY `day` (`day`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_calendarsegments`
--

LOCK TABLES `glpi_calendarsegments` WRITE;
/*!40000 ALTER TABLE `glpi_calendarsegments` DISABLE KEYS */;
INSERT INTO `glpi_calendarsegments` VALUES (1,1,0,0,1,'08:00:00','20:00:00'),(2,1,0,0,2,'08:00:00','20:00:00'),(3,1,0,0,3,'08:00:00','20:00:00'),(4,1,0,0,4,'08:00:00','20:00:00'),(5,1,0,0,5,'08:00:00','20:00:00');
/*!40000 ALTER TABLE `glpi_calendarsegments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridgeitems`
--

DROP TABLE IF EXISTS `glpi_cartridgeitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridgeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridgeitems`
--

LOCK TABLES `glpi_cartridgeitems` WRITE;
/*!40000 ALTER TABLE `glpi_cartridgeitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridgeitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridgeitems_printermodels`
--

DROP TABLE IF EXISTS `glpi_cartridgeitems_printermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridgeitems_printermodels`
--

LOCK TABLES `glpi_cartridgeitems_printermodels` WRITE;
/*!40000 ALTER TABLE `glpi_cartridgeitems_printermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridgeitems_printermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridgeitemtypes`
--

DROP TABLE IF EXISTS `glpi_cartridgeitemtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridgeitemtypes`
--

LOCK TABLES `glpi_cartridgeitemtypes` WRITE;
/*!40000 ALTER TABLE `glpi_cartridgeitemtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridgeitemtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_cartridges`
--

DROP TABLE IF EXISTS `glpi_cartridges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_cartridges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `cartridgeitems_id` int(11) NOT NULL DEFAULT '0',
  `printers_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`),
  KEY `printers_id` (`printers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_cartridges`
--

LOCK TABLES `glpi_cartridges` WRITE;
/*!40000 ALTER TABLE `glpi_cartridges` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_cartridges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_certificates`
--

DROP TABLE IF EXISTS `glpi_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificatetypes_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_certificatetypes (id)',
  `dns_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dns_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_locations (id)',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to glpi_manufacturers (id)',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_autosign` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` date DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `command` text COLLATE utf8_unicode_ci,
  `certificate_request` text COLLATE utf8_unicode_ci,
  `certificate_item` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `certificatetypes_id` (`certificatetypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `states_id` (`states_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_certificates`
--

LOCK TABLES `glpi_certificates` WRITE;
/*!40000 ALTER TABLE `glpi_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_certificates_items`
--

DROP TABLE IF EXISTS `glpi_certificates_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_certificates_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificates_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'see .class.php file',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`certificates_id`,`itemtype`,`items_id`),
  KEY `device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_certificates_items`
--

LOCK TABLES `glpi_certificates_items` WRITE;
/*!40000 ALTER TABLE `glpi_certificates_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_certificates_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_certificatetypes`
--

DROP TABLE IF EXISTS `glpi_certificatetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_certificatetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_certificatetypes`
--

LOCK TABLES `glpi_certificatetypes` WRITE;
/*!40000 ALTER TABLE `glpi_certificatetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_certificatetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changecosts`
--

DROP TABLE IF EXISTS `glpi_changecosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changecosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `changes_id` (`changes_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changecosts`
--

LOCK TABLES `glpi_changecosts` WRITE;
/*!40000 ALTER TABLE `glpi_changecosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changecosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes`
--

DROP TABLE IF EXISTS `glpi_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `controlistcontent` longtext COLLATE utf8_unicode_ci,
  `rolloutplancontent` longtext COLLATE utf8_unicode_ci,
  `backoutplancontent` longtext COLLATE utf8_unicode_ci,
  `checklistcontent` longtext COLLATE utf8_unicode_ci,
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `global_validation` (`global_validation`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes`
--

LOCK TABLES `glpi_changes` WRITE;
/*!40000 ALTER TABLE `glpi_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes_groups`
--

DROP TABLE IF EXISTS `glpi_changes_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes_groups`
--

LOCK TABLES `glpi_changes_groups` WRITE;
/*!40000 ALTER TABLE `glpi_changes_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes_items`
--

DROP TABLE IF EXISTS `glpi_changes_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes_items`
--

LOCK TABLES `glpi_changes_items` WRITE;
/*!40000 ALTER TABLE `glpi_changes_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes_problems`
--

DROP TABLE IF EXISTS `glpi_changes_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `problems_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`problems_id`),
  KEY `problems_id` (`problems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes_problems`
--

LOCK TABLES `glpi_changes_problems` WRITE;
/*!40000 ALTER TABLE `glpi_changes_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes_suppliers`
--

DROP TABLE IF EXISTS `glpi_changes_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes_suppliers`
--

LOCK TABLES `glpi_changes_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_changes_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes_tickets`
--

DROP TABLE IF EXISTS `glpi_changes_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes_tickets`
--

LOCK TABLES `glpi_changes_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_changes_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changes_users`
--

DROP TABLE IF EXISTS `glpi_changes_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changes_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changes_users`
--

LOCK TABLES `glpi_changes_users` WRITE;
/*!40000 ALTER TABLE `glpi_changes_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changes_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changetasks`
--

DROP TABLE IF EXISTS `glpi_changetasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changetasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `changes_id` (`changes_id`),
  KEY `state` (`state`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `tasktemplates_id` (`tasktemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changetasks`
--

LOCK TABLES `glpi_changetasks` WRITE;
/*!40000 ALTER TABLE `glpi_changetasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changetasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_changevalidations`
--

DROP TABLE IF EXISTS `glpi_changevalidations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_changevalidations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `changes_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `changes_id` (`changes_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_changevalidations`
--

LOCK TABLES `glpi_changevalidations` WRITE;
/*!40000 ALTER TABLE `glpi_changevalidations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_changevalidations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computerantiviruses`
--

DROP TABLE IF EXISTS `glpi_computerantiviruses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computerantiviruses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `antivirus_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_uptodate` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_expiration` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `antivirus_version` (`antivirus_version`),
  KEY `signature_version` (`signature_version`),
  KEY `is_active` (`is_active`),
  KEY `is_uptodate` (`is_uptodate`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `is_deleted` (`is_deleted`),
  KEY `computers_id` (`computers_id`),
  KEY `date_expiration` (`date_expiration`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computerantiviruses`
--

LOCK TABLES `glpi_computerantiviruses` WRITE;
/*!40000 ALTER TABLE `glpi_computerantiviruses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computerantiviruses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computermodels`
--

DROP TABLE IF EXISTS `glpi_computermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computermodels`
--

LOCK TABLES `glpi_computermodels` WRITE;
/*!40000 ALTER TABLE `glpi_computermodels` DISABLE KEYS */;
INSERT INTO `glpi_computermodels` VALUES (1,'HP DL380','','HPDL380',10,2,1,2,500,0,NULL,NULL,'2019-03-04 06:27:44','2019-03-04 06:27:44');
/*!40000 ALTER TABLE `glpi_computermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers`
--

DROP TABLE IF EXISTS `glpi_computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `autoupdatesystems_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `computermodels_id` int(11) NOT NULL DEFAULT '0',
  `computertypes_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `computermodels_id` (`computermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `computertypes_id` (`computertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers`
--

LOCK TABLES `glpi_computers` WRITE;
/*!40000 ALTER TABLE `glpi_computers` DISABLE KEYS */;
INSERT INTO `glpi_computers` VALUES (1,0,'hp-proliant6110','04F4673294','0136','Осимов Арнур','8-7471090908',2,2,'Это проверка','2019-03-12 11:04:22',1,1,1,1,1,1,0,NULL,3,0,0,4,2,1,0.0000,'987984359835р1','2019-03-04 06:28:46',0),(2,0,'win10','','','','',2,3,'','2019-03-06 04:12:05',2,2,2,1,0,1,0,NULL,3,0,0,0,0,1,0.0000,'','2019-03-06 04:12:05',0);
/*!40000 ALTER TABLE `glpi_computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_items`
--

DROP TABLE IF EXISTS `glpi_computers_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_items`
--

LOCK TABLES `glpi_computers_items` WRITE;
/*!40000 ALTER TABLE `glpi_computers_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_softwarelicenses`
--

DROP TABLE IF EXISTS `glpi_computers_softwarelicenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `softwarelicenses_id` (`softwarelicenses_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_softwarelicenses`
--

LOCK TABLES `glpi_computers_softwarelicenses` WRITE;
/*!40000 ALTER TABLE `glpi_computers_softwarelicenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_softwarelicenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computers_softwareversions`
--

DROP TABLE IF EXISTS `glpi_computers_softwareversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computers_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted_computer` tinyint(1) NOT NULL DEFAULT '0',
  `is_template_computer` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_install` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  KEY `softwareversions_id` (`softwareversions_id`),
  KEY `computers_info` (`entities_id`,`is_template_computer`,`is_deleted_computer`),
  KEY `is_template` (`is_template_computer`),
  KEY `is_deleted` (`is_deleted_computer`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_install` (`date_install`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computers_softwareversions`
--

LOCK TABLES `glpi_computers_softwareversions` WRITE;
/*!40000 ALTER TABLE `glpi_computers_softwareversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_computers_softwareversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computertypes`
--

DROP TABLE IF EXISTS `glpi_computertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computertypes`
--

LOCK TABLES `glpi_computertypes` WRITE;
/*!40000 ALTER TABLE `glpi_computertypes` DISABLE KEYS */;
INSERT INTO `glpi_computertypes` VALUES (1,'server','','2019-03-04 06:25:26','2019-03-04 06:25:26'),(2,'client','','2019-03-04 06:25:32','2019-03-04 06:25:32');
/*!40000 ALTER TABLE `glpi_computertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_computervirtualmachines`
--

DROP TABLE IF EXISTS `glpi_computervirtualmachines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinesystems_id` int(11) NOT NULL DEFAULT '0',
  `virtualmachinetypes_id` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT '0',
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  KEY `vcpu` (`vcpu`),
  KEY `ram` (`ram`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `uuid` (`uuid`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_computervirtualmachines`
--

LOCK TABLES `glpi_computervirtualmachines` WRITE;
/*!40000 ALTER TABLE `glpi_computervirtualmachines` DISABLE KEYS */;
INSERT INTO `glpi_computervirtualmachines` VALUES (1,0,1,'vps01',1,1,2,'004H6628',2,'512',0,0,'Проверка Виртуалки','2019-03-04 06:30:37','2019-03-04 06:30:37');
/*!40000 ALTER TABLE `glpi_computervirtualmachines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_configs`
--

DROP TABLE IF EXISTS `glpi_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`context`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_configs`
--

LOCK TABLES `glpi_configs` WRITE;
/*!40000 ALTER TABLE `glpi_configs` DISABLE KEYS */;
INSERT INTO `glpi_configs` VALUES (1,'core','version','9.4.0'),(2,'core','show_jobs_at_login','0'),(3,'core','cut','250'),(4,'core','list_limit','15'),(5,'core','list_limit_max','50'),(6,'core','url_maxlength','30'),(7,'core','event_loglevel','5'),(8,'core','notifications_mailing','0'),(9,'core','admin_email','admsys@localhost'),(10,'core','admin_email_name',''),(11,'core','admin_reply',''),(12,'core','admin_reply_name',''),(13,'core','mailing_signature','SIGNATURE'),(14,'core','use_anonymous_helpdesk','0'),(15,'core','use_anonymous_followups','0'),(16,'core','language','ru_RU'),(17,'core','priority_1','#fff2f2'),(18,'core','priority_2','#ffe0e0'),(19,'core','priority_3','#ffcece'),(20,'core','priority_4','#ffbfbf'),(21,'core','priority_5','#ffadad'),(22,'core','priority_6','#ff5555'),(23,'core','date_tax','2019-12-31'),(24,'core','cas_host',''),(25,'core','cas_port','443'),(26,'core','cas_uri',''),(27,'core','cas_logout',''),(28,'core','existing_auth_server_field_clean_domain','0'),(29,'core','planning_begin','08:00:00'),(30,'core','planning_end','20:00:00'),(31,'core','utf8_conv','1'),(32,'core','use_public_faq','0'),(33,'core','url_base','https://hras.mycloud.kz'),(34,'core','show_link_in_mail','0'),(35,'core','text_login',''),(36,'core','founded_new_version',''),(37,'core','dropdown_max','100'),(38,'core','ajax_wildcard','*'),(42,'core','ajax_limit_count','10'),(43,'core','use_ajax_autocompletion','1'),(44,'core','is_users_auto_add','1'),(45,'core','date_format','0'),(46,'core','number_format','0'),(47,'core','csv_delimiter',';'),(48,'core','is_ids_visible','0'),(50,'core','smtp_mode','0'),(51,'core','smtp_host',''),(52,'core','smtp_port','25'),(53,'core','smtp_username',''),(54,'core','proxy_name',''),(55,'core','proxy_port','8080'),(56,'core','proxy_user',''),(57,'core','add_followup_on_update_ticket','1'),(58,'core','keep_tickets_on_delete','0'),(59,'core','time_step','5'),(60,'core','decimal_number','2'),(61,'core','helpdesk_doc_url',''),(62,'core','central_doc_url',''),(63,'core','documentcategories_id_forticket','0'),(64,'core','monitors_management_restrict','2'),(65,'core','phones_management_restrict','2'),(66,'core','peripherals_management_restrict','2'),(67,'core','printers_management_restrict','2'),(68,'core','use_log_in_files','1'),(69,'core','time_offset','0'),(70,'core','is_contact_autoupdate','1'),(71,'core','is_user_autoupdate','1'),(72,'core','is_group_autoupdate','1'),(73,'core','is_location_autoupdate','1'),(74,'core','state_autoupdate_mode','0'),(75,'core','is_contact_autoclean','0'),(76,'core','is_user_autoclean','0'),(77,'core','is_group_autoclean','0'),(78,'core','is_location_autoclean','0'),(79,'core','state_autoclean_mode','0'),(80,'core','use_flat_dropdowntree','0'),(81,'core','use_autoname_by_entity','1'),(84,'core','softwarecategories_id_ondelete','1'),(85,'core','x509_email_field',''),(86,'core','x509_cn_restrict',''),(87,'core','x509_o_restrict',''),(88,'core','x509_ou_restrict',''),(89,'core','default_mailcollector_filesize_max','2097152'),(90,'core','followup_private','0'),(91,'core','task_private','0'),(92,'core','default_software_helpdesk_visible','1'),(93,'core','names_format','0'),(95,'core','default_requesttypes_id','1'),(96,'core','use_noright_users_add','1'),(97,'core','cron_limit','5'),(98,'core','priority_matrix','{\"1\":{\"1\":1,\"2\":1,\"3\":2,\"4\":2,\"5\":2},\"2\":{\"1\":1,\"2\":2,\"3\":2,\"4\":3,\"5\":3},\"3\":{\"1\":2,\"2\":2,\"3\":3,\"4\":4,\"5\":4},\"4\":{\"1\":2,\"2\":3,\"3\":4,\"4\":4,\"5\":5},\"5\":{\"1\":2,\"2\":3,\"3\":4,\"4\":5,\"5\":5}}'),(99,'core','urgency_mask','62'),(100,'core','impact_mask','62'),(101,'core','user_deleted_ldap','0'),(102,'core','auto_create_infocoms','0'),(103,'core','use_slave_for_search','0'),(104,'core','proxy_passwd',''),(105,'core','smtp_passwd',''),(106,'core','transfers_id_auto','0'),(107,'core','show_count_on_tabs','1'),(108,'core','refresh_ticket_list','0'),(109,'core','set_default_tech','1'),(110,'core','allow_search_view','2'),(111,'core','allow_search_all','0'),(112,'core','allow_search_global','1'),(113,'core','display_count_on_home','5'),(114,'core','use_password_security','0'),(115,'core','password_min_length','8'),(116,'core','password_need_number','1'),(117,'core','password_need_letter','1'),(118,'core','password_need_caps','1'),(119,'core','password_need_symbol','1'),(120,'core','use_check_pref','0'),(121,'core','notification_to_myself','1'),(122,'core','duedateok_color','#06ff00'),(123,'core','duedatewarning_color','#ffb800'),(124,'core','duedatecritical_color','#ff0000'),(125,'core','duedatewarning_less','20'),(126,'core','duedatecritical_less','5'),(127,'core','duedatewarning_unit','%'),(128,'core','duedatecritical_unit','%'),(129,'core','realname_ssofield',''),(130,'core','firstname_ssofield',''),(131,'core','email1_ssofield',''),(132,'core','email2_ssofield',''),(133,'core','email3_ssofield',''),(134,'core','email4_ssofield',''),(135,'core','phone_ssofield',''),(136,'core','phone2_ssofield',''),(137,'core','mobile_ssofield',''),(138,'core','comment_ssofield',''),(139,'core','title_ssofield',''),(140,'core','category_ssofield',''),(141,'core','language_ssofield',''),(142,'core','entity_ssofield',''),(143,'core','registration_number_ssofield',''),(144,'core','ssovariables_id','0'),(145,'core','translate_kb','0'),(146,'core','translate_dropdowns','0'),(147,'core','pdffont','dejavusans'),(148,'core','keep_devices_when_purging_item','0'),(149,'core','maintenance_mode','0'),(150,'core','maintenance_text',''),(152,'core','attach_ticket_documents_to_mail','0'),(153,'core','backcreated','0'),(154,'core','task_state','1'),(155,'core','layout','lefttab'),(158,'core','palette','auror'),(159,'core','lock_use_lock_item','0'),(160,'core','lock_autolock_mode','1'),(161,'core','lock_directunlock_notification','0'),(162,'core','lock_item_list','[]'),(163,'core','lock_lockprofile_id','8'),(164,'core','set_default_requester','1'),(165,'core','highcontrast_css','0'),(166,'core','smtp_check_certificate','1'),(167,'core','enable_api','0'),(168,'core','enable_api_login_credentials','0'),(169,'core','enable_api_login_external_token','1'),(170,'core','url_base_api','https://hras.mycloud.kz/apirest.php/'),(171,'core','login_remember_time','604800'),(172,'core','login_remember_default','1'),(173,'core','use_notifications','0'),(174,'core','notifications_ajax','0'),(175,'core','notifications_ajax_check_interval','5'),(176,'core','notifications_ajax_sound',NULL),(177,'core','notifications_ajax_icon_url','/pics/glpi.png'),(178,'core','dbversion','9.4'),(179,'core','smtp_max_retries','5'),(180,'core','smtp_sender',NULL),(181,'core','from_email',NULL),(182,'core','from_email_name',NULL),(183,'core','instance_uuid',NULL),(184,'core','registration_uuid','fcsGpNMoQc7LNcMu4G2fK5fGcmyQ3tyvveVALFoS'),(185,'core','smtp_retry_time','5'),(186,'core','purge_addrelation','0'),(187,'core','purge_deleterelation','0'),(188,'core','purge_createitem','0'),(189,'core','purge_deleteitem','0'),(190,'core','purge_restoreitem','0'),(191,'core','purge_updateitem','0'),(192,'core','purge_computer_software_install','0'),(193,'core','purge_software_computer_install','0'),(194,'core','purge_software_version_install','0'),(195,'core','purge_infocom_creation','0'),(196,'core','purge_profile_user','0'),(197,'core','purge_group_user','0'),(198,'core','purge_adddevice','0'),(199,'core','purge_updatedevice','0'),(200,'core','purge_deletedevice','0'),(201,'core','purge_connectdevice','0'),(202,'core','purge_disconnectdevice','0'),(203,'core','purge_userdeletedfromldap','0'),(204,'core','purge_comments','0'),(205,'core','purge_datemod','0'),(206,'core','purge_all','0'),(207,'core','purge_user_auth_changes','0'),(208,'core','purge_plugins','0'),(209,'core','display_login_source','1'),(210,'core','_no_history',''),(211,'core','_date_tax','12-31');
/*!40000 ALTER TABLE `glpi_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_consumableitems`
--

DROP TABLE IF EXISTS `glpi_consumableitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_consumableitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `consumableitemtypes_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `alarm_threshold` int(11) NOT NULL DEFAULT '10',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_consumableitems`
--

LOCK TABLES `glpi_consumableitems` WRITE;
/*!40000 ALTER TABLE `glpi_consumableitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_consumableitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_consumableitemtypes`
--

DROP TABLE IF EXISTS `glpi_consumableitemtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_consumableitemtypes`
--

LOCK TABLES `glpi_consumableitemtypes` WRITE;
/*!40000 ALTER TABLE `glpi_consumableitemtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_consumableitemtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_consumables`
--

DROP TABLE IF EXISTS `glpi_consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_consumables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `consumableitems_id` int(11) NOT NULL DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_in` (`date_in`),
  KEY `date_out` (`date_out`),
  KEY `consumableitems_id` (`consumableitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_consumables`
--

LOCK TABLES `glpi_consumables` WRITE;
/*!40000 ALTER TABLE `glpi_consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contacts`
--

DROP TABLE IF EXISTS `glpi_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacttypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `contacttypes_id` (`contacttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contacts`
--

LOCK TABLES `glpi_contacts` WRITE;
/*!40000 ALTER TABLE `glpi_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contacts_suppliers`
--

DROP TABLE IF EXISTS `glpi_contacts_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contacts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  KEY `contacts_id` (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contacts_suppliers`
--

LOCK TABLES `glpi_contacts_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_contacts_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contacts_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contacttypes`
--

DROP TABLE IF EXISTS `glpi_contacttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contacttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contacttypes`
--

LOCK TABLES `glpi_contacttypes` WRITE;
/*!40000 ALTER TABLE `glpi_contacttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contacttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contractcosts`
--

DROP TABLE IF EXISTS `glpi_contractcosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contractcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `contracts_id` (`contracts_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contractcosts`
--

LOCK TABLES `glpi_contractcosts` WRITE;
/*!40000 ALTER TABLE `glpi_contractcosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contractcosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracts`
--

DROP TABLE IF EXISTS `glpi_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contracttypes_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `notice` int(11) NOT NULL DEFAULT '0',
  `periodicity` int(11) NOT NULL DEFAULT '0',
  `billing` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `accounting_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `monday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `monday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_monday` tinyint(1) NOT NULL DEFAULT '0',
  `max_links_allowed` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `renewal` int(11) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `begin_date` (`begin_date`),
  KEY `name` (`name`),
  KEY `contracttypes_id` (`contracttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `use_monday` (`use_monday`),
  KEY `use_saturday` (`use_saturday`),
  KEY `alert` (`alert`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracts`
--

LOCK TABLES `glpi_contracts` WRITE;
/*!40000 ALTER TABLE `glpi_contracts` DISABLE KEYS */;
INSERT INTO `glpi_contracts` VALUES (1,0,0,'112/2','112/2',1,'2019-03-01',12,1,12,12,'','',0,'00:00:00','00:00:00','00:00:00','00:00:00',0,'00:00:00','00:00:00',0,1,0,1,NULL,0,'2019-03-05 08:17:54','2019-03-05 08:17:54'),(2,0,0,'113.2','',1,'2019-03-01',12,1,12,12,'','',0,'00:00:00','00:00:00','00:00:00','00:00:00',0,'00:00:00','00:00:00',0,1,0,1,NULL,0,'2019-03-06 04:25:17','2019-03-06 04:25:17');
/*!40000 ALTER TABLE `glpi_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracts_items`
--

DROP TABLE IF EXISTS `glpi_contracts_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracts_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  KEY `FK_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracts_items`
--

LOCK TABLES `glpi_contracts_items` WRITE;
/*!40000 ALTER TABLE `glpi_contracts_items` DISABLE KEYS */;
INSERT INTO `glpi_contracts_items` VALUES (2,1,1,'PluginGenericobjectVpscomp'),(3,2,2,'PluginGenericobjectVpscomp');
/*!40000 ALTER TABLE `glpi_contracts_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracts_suppliers`
--

DROP TABLE IF EXISTS `glpi_contracts_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `contracts_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  KEY `contracts_id` (`contracts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracts_suppliers`
--

LOCK TABLES `glpi_contracts_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_contracts_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_contracts_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_contracttypes`
--

DROP TABLE IF EXISTS `glpi_contracttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_contracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_contracttypes`
--

LOCK TABLES `glpi_contracttypes` WRITE;
/*!40000 ALTER TABLE `glpi_contracttypes` DISABLE KEYS */;
INSERT INTO `glpi_contracttypes` VALUES (1,'типовой','','2019-03-05 08:17:37','2019-03-05 08:17:37');
/*!40000 ALTER TABLE `glpi_contracttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_crontasklogs`
--

DROP TABLE IF EXISTS `glpi_crontasklogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_crontasklogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crontasks_id` int(11) NOT NULL,
  `crontasklogs_id` int(11) NOT NULL COMMENT 'id of ''start'' event',
  `date` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'message',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `crontasks_id` (`crontasks_id`),
  KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_crontasklogs`
--

LOCK TABLES `glpi_crontasklogs` WRITE;
/*!40000 ALTER TABLE `glpi_crontasklogs` DISABLE KEYS */;
INSERT INTO `glpi_crontasklogs` VALUES (1,18,0,'2019-03-02 06:32:36',0,0,0,'Run mode: GLPI'),(2,18,1,'2019-03-02 06:32:36',2,0.0172551,0,'Action completed, no processing required'),(3,19,0,'2019-03-02 06:40:46',0,0,0,'Run mode: GLPI'),(4,19,3,'2019-03-02 06:40:46',2,0.00839806,0,'Action completed, fully processed'),(5,20,0,'2019-03-02 06:49:49',0,0,0,'Run mode: GLPI'),(6,20,5,'2019-03-02 06:49:49',2,0.00711203,0,'Action completed, no processing required'),(7,21,0,'2019-03-02 07:04:18',0,0,0,'Run mode: GLPI'),(8,21,7,'2019-03-02 07:04:18',2,0.00656891,0,'Action completed, no processing required'),(9,22,0,'2019-03-02 07:09:29',0,0,0,'Run mode: GLPI'),(10,22,9,'2019-03-02 07:09:29',2,0.010175,0,'Action completed, no processing required'),(11,23,0,'2019-03-02 07:12:40',0,0,0,'Run mode: GLPI'),(12,23,11,'2019-03-02 07:12:40',2,0.013438,0,'Action completed, no processing required'),(13,24,0,'2019-03-02 07:18:51',0,0,0,'Run mode: GLPI'),(14,24,13,'2019-03-02 07:18:51',1,0.00480819,1,'Очистить 1 временный файл созданный больше чем 3600 секунд\n'),(15,24,13,'2019-03-02 07:18:51',2,0.0145671,1,'Action completed, fully processed'),(16,25,0,'2019-03-02 07:23:52',0,0,0,'Run mode: GLPI'),(17,25,16,'2019-03-02 07:23:52',2,0.00824189,0,'Action completed, no processing required'),(18,5,0,'2019-03-02 07:29:51',0,0,0,'Run mode: GLPI'),(19,5,18,'2019-03-02 07:29:51',2,0.00777102,0,'Action completed, no processing required'),(20,6,0,'2019-03-02 08:29:29',0,0,0,'Run mode: GLPI'),(21,6,20,'2019-03-02 08:29:29',2,0.00859499,0,'Action completed, no processing required'),(22,9,0,'2019-03-02 08:47:30',0,0,0,'Run mode: GLPI'),(23,9,22,'2019-03-02 08:47:30',2,0.0335131,0,'Action completed, no processing required'),(24,12,0,'2019-03-02 09:19:36',0,0,0,'Run mode: GLPI'),(25,12,24,'2019-03-02 09:19:36',1,0.00559902,32,'Очистить 32 файлы сеансов созданные больше чем 1440 секунд\n'),(26,12,24,'2019-03-02 09:19:36',2,0.0149059,32,'Action completed, fully processed'),(27,13,0,'2019-03-02 09:24:56',0,0,0,'Run mode: GLPI'),(28,13,27,'2019-03-02 09:24:56',2,0.00776196,0,'Action completed, no processing required'),(29,14,0,'2019-03-02 09:40:37',0,0,0,'Run mode: GLPI'),(30,14,29,'2019-03-02 09:40:37',2,0.00968003,0,'Action completed, no processing required'),(31,15,0,'2019-03-02 09:45:38',0,0,0,'Run mode: GLPI'),(32,15,31,'2019-03-02 09:45:38',2,0.00885701,0,'Action completed, no processing required'),(33,16,0,'2019-03-02 09:53:35',0,0,0,'Run mode: GLPI'),(34,16,33,'2019-03-02 09:53:35',2,0.00832486,0,'Action completed, no processing required'),(35,17,0,'2019-03-02 10:02:32',0,0,0,'Run mode: GLPI'),(36,17,35,'2019-03-02 10:02:32',2,0.00799298,0,'Action completed, no processing required'),(37,32,0,'2019-03-02 10:23:51',0,0,0,'Run mode: GLPI'),(38,32,37,'2019-03-02 10:23:51',2,0.00784302,0,'Action completed, no processing required'),(39,21,0,'2019-03-04 02:26:49',0,0,0,'Run mode: GLPI'),(40,21,39,'2019-03-04 02:26:49',2,0.00942183,0,'Action completed, no processing required'),(41,22,0,'2019-03-04 02:26:54',0,0,0,'Run mode: GLPI'),(42,22,41,'2019-03-04 02:26:54',2,0.00768614,0,'Action completed, no processing required'),(43,20,0,'2019-03-04 02:33:07',0,0,0,'Run mode: GLPI'),(44,20,43,'2019-03-04 02:33:07',2,0.00849319,0,'Action completed, no processing required'),(45,24,0,'2019-03-04 02:57:35',0,0,0,'Run mode: GLPI'),(46,24,45,'2019-03-04 02:57:35',2,0.013706,0,'Action completed, no processing required'),(47,9,0,'2019-03-04 03:10:37',0,0,0,'Run mode: GLPI'),(48,9,47,'2019-03-04 03:10:37',2,0.032917,0,'Action completed, no processing required'),(49,17,0,'2019-03-04 03:59:08',0,0,0,'Run mode: GLPI'),(50,17,49,'2019-03-04 03:59:08',2,0.00825787,0,'Action completed, no processing required'),(51,13,0,'2019-03-04 05:00:51',0,0,0,'Run mode: GLPI'),(52,13,51,'2019-03-04 05:00:51',2,0.0085659,0,'Action completed, no processing required'),(53,32,0,'2019-03-04 05:12:14',0,0,0,'Run mode: GLPI'),(54,32,53,'2019-03-04 05:12:14',2,0.00916004,0,'Action completed, no processing required'),(55,14,0,'2019-03-04 05:20:39',0,0,0,'Run mode: GLPI'),(56,14,55,'2019-03-04 05:20:39',2,0.010143,0,'Action completed, no processing required'),(57,15,0,'2019-03-04 05:30:46',0,0,0,'Run mode: GLPI'),(58,15,57,'2019-03-04 05:30:46',2,0.00875592,0,'Action completed, no processing required'),(59,16,0,'2019-03-04 05:40:32',0,0,0,'Run mode: GLPI'),(60,16,59,'2019-03-04 05:40:32',2,0.00841403,0,'Action completed, no processing required'),(61,18,0,'2019-03-04 05:48:55',0,0,0,'Run mode: GLPI'),(62,18,61,'2019-03-04 05:48:55',2,0.00983191,0,'Action completed, no processing required'),(63,19,0,'2019-03-04 05:54:49',0,0,0,'Run mode: GLPI'),(64,19,63,'2019-03-04 05:54:49',2,0.00843,0,'Action completed, fully processed'),(65,23,0,'2019-03-04 06:00:35',0,0,0,'Run mode: GLPI'),(66,23,65,'2019-03-04 06:00:35',2,0.00924301,0,'Action completed, no processing required'),(67,25,0,'2019-03-04 06:09:01',0,0,0,'Run mode: GLPI'),(68,25,67,'2019-03-04 06:09:01',2,0.0110779,0,'Action completed, no processing required'),(69,5,0,'2019-03-04 06:11:31',0,0,0,'Run mode: GLPI'),(70,5,69,'2019-03-04 06:11:31',2,0.00795293,0,'Action completed, no processing required'),(71,6,0,'2019-03-04 06:19:06',0,0,0,'Run mode: GLPI'),(72,6,71,'2019-03-04 06:19:06',2,0.00781298,0,'Action completed, no processing required'),(73,12,0,'2019-03-04 06:28:46',0,0,0,'Run mode: GLPI'),(74,12,73,'2019-03-04 06:28:46',1,0.00719905,65,'Очистить 65 файлы сеансов созданные больше чем 1440 секунд\n'),(75,12,73,'2019-03-04 06:28:46',2,0.0148542,65,'Action completed, fully processed'),(76,22,0,'2019-03-04 08:04:36',0,0,0,'Run mode: GLPI'),(77,22,76,'2019-03-04 08:04:36',2,0.0106292,0,'Action completed, no processing required'),(78,21,0,'2019-03-04 08:09:43',0,0,0,'Run mode: GLPI'),(79,21,78,'2019-03-04 08:09:43',2,0.00800014,0,'Action completed, no processing required'),(80,9,0,'2019-03-04 08:58:16',0,0,0,'Run mode: GLPI'),(81,9,80,'2019-03-04 08:58:16',2,0.0298769,0,'Action completed, no processing required'),(82,20,0,'2019-03-04 09:03:23',0,0,0,'Run mode: GLPI'),(83,20,82,'2019-03-04 09:03:23',2,0.00812411,0,'Action completed, no processing required'),(84,24,0,'2019-03-04 09:16:15',0,0,0,'Run mode: GLPI'),(85,24,84,'2019-03-04 09:16:15',2,0.00808692,0,'Action completed, no processing required'),(86,17,0,'2019-03-04 09:21:50',0,0,0,'Run mode: GLPI'),(87,17,86,'2019-03-04 09:21:50',2,0.00882077,0,'Action completed, no processing required'),(88,32,0,'2019-03-04 09:26:51',0,0,0,'Run mode: GLPI'),(89,32,88,'2019-03-04 09:26:51',2,0.00849104,0,'Action completed, no processing required'),(90,13,0,'2019-03-04 09:33:27',0,0,0,'Run mode: GLPI'),(91,13,90,'2019-03-04 09:33:27',2,0.00777912,0,'Action completed, no processing required'),(92,14,0,'2019-03-04 09:43:13',0,0,0,'Run mode: GLPI'),(93,14,92,'2019-03-04 09:43:13',2,0.00768495,0,'Action completed, no processing required'),(94,22,0,'2019-03-04 09:52:39',0,0,0,'Run mode: GLPI'),(95,22,94,'2019-03-04 09:52:39',2,0.00900006,0,'Action completed, no processing required'),(96,21,0,'2019-03-04 09:57:48',0,0,0,'Run mode: GLPI'),(97,21,96,'2019-03-04 09:57:48',2,0.00737095,0,'Action completed, no processing required'),(98,9,0,'2019-03-04 10:05:55',0,0,0,'Run mode: GLPI'),(99,9,98,'2019-03-04 10:05:55',2,0.031826,0,'Action completed, no processing required'),(100,17,0,'2019-03-04 10:11:06',0,0,0,'Run mode: GLPI'),(101,17,100,'2019-03-04 10:11:06',2,0.00832915,0,'Action completed, no processing required'),(102,32,0,'2019-03-04 10:18:46',0,0,0,'Run mode: GLPI'),(103,32,102,'2019-03-04 10:18:46',2,0.00844717,0,'Action completed, no processing required'),(104,22,0,'2019-03-04 10:25:07',0,0,0,'Run mode: GLPI'),(105,22,104,'2019-03-04 10:25:07',2,0.00635695,0,'Action completed, no processing required'),(106,21,0,'2019-03-04 10:31:37',0,0,0,'Run mode: GLPI'),(107,21,106,'2019-03-04 10:31:37',2,0.00733399,0,'Action completed, no processing required'),(108,20,0,'2019-03-04 10:39:57',0,0,0,'Run mode: GLPI'),(109,20,108,'2019-03-04 10:39:57',2,0.00842214,0,'Action completed, no processing required'),(110,9,0,'2019-03-04 10:45:52',0,0,0,'Run mode: GLPI'),(111,9,110,'2019-03-04 10:45:52',2,0.060704,0,'Action completed, no processing required'),(112,17,0,'2019-03-04 10:57:20',0,0,0,'Run mode: GLPI'),(113,17,112,'2019-03-04 10:57:20',2,0.00894284,0,'Action completed, no processing required'),(114,24,0,'2019-03-04 10:59:23',0,0,0,'Run mode: GLPI'),(115,24,114,'2019-03-04 10:59:23',2,0.0178878,0,'Action completed, no processing required'),(116,32,0,'2019-03-04 11:09:35',0,0,0,'Run mode: GLPI'),(117,32,116,'2019-03-04 11:09:35',2,0.00828815,0,'Action completed, no processing required'),(118,22,0,'2019-03-04 11:18:33',0,0,0,'Run mode: GLPI'),(119,22,118,'2019-03-04 11:18:33',2,0.0083952,0,'Action completed, no processing required'),(120,13,0,'2019-03-04 11:24:32',0,0,0,'Run mode: GLPI'),(121,13,120,'2019-03-04 11:24:32',2,0.00735784,0,'Action completed, no processing required'),(122,21,0,'2019-03-04 11:29:37',0,0,0,'Run mode: GLPI'),(123,21,122,'2019-03-04 11:29:37',2,0.00759888,0,'Action completed, no processing required'),(124,14,0,'2019-03-05 02:10:50',0,0,0,'Run mode: GLPI'),(125,14,124,'2019-03-05 02:10:50',2,0.00715995,0,'Action completed, no processing required'),(126,9,0,'2019-03-05 02:18:00',0,0,0,'Run mode: GLPI'),(127,9,126,'2019-03-05 02:18:00',2,0.0297461,0,'Action completed, no processing required'),(128,17,0,'2019-03-05 02:45:10',0,0,0,'Run mode: GLPI'),(129,17,128,'2019-03-05 02:45:10',2,0.00744605,0,'Action completed, no processing required'),(130,32,0,'2019-03-05 02:55:56',0,0,0,'Run mode: GLPI'),(131,32,130,'2019-03-05 02:55:56',2,0.00920486,0,'Action completed, no processing required'),(132,22,0,'2019-03-05 03:01:01',0,0,0,'Run mode: GLPI'),(133,22,132,'2019-03-05 03:01:01',2,0.006459,0,'Action completed, no processing required'),(134,21,0,'2019-03-05 03:06:02',0,0,0,'Run mode: GLPI'),(135,21,134,'2019-03-05 03:06:02',2,0.0165451,0,'Action completed, no processing required'),(136,20,0,'2019-03-05 03:12:08',0,0,0,'Run mode: GLPI'),(137,20,136,'2019-03-05 03:12:08',2,0.00896907,0,'Action completed, no processing required'),(138,24,0,'2019-03-05 03:19:04',0,0,0,'Run mode: GLPI'),(139,24,138,'2019-03-05 03:19:04',2,0.00874305,0,'Action completed, no processing required'),(140,13,0,'2019-03-05 03:29:28',0,0,0,'Run mode: GLPI'),(141,13,140,'2019-03-05 03:29:28',2,0.010596,0,'Action completed, no processing required'),(142,15,0,'2019-03-05 03:33:03',0,0,0,'Run mode: GLPI'),(143,15,142,'2019-03-05 03:33:03',2,0.00838518,0,'Action completed, no processing required'),(144,16,0,'2019-03-05 03:38:36',0,0,0,'Run mode: GLPI'),(145,16,144,'2019-03-05 03:38:36',2,0.00806499,0,'Action completed, no processing required'),(146,9,0,'2019-03-05 03:43:47',0,0,0,'Run mode: GLPI'),(147,9,146,'2019-03-05 03:43:47',2,0.0344169,0,'Action completed, no processing required'),(148,17,0,'2019-03-05 03:50:06',0,0,0,'Run mode: GLPI'),(149,17,148,'2019-03-05 03:50:06',2,0.00794196,0,'Action completed, no processing required'),(150,32,0,'2019-03-05 03:56:17',0,0,0,'Run mode: GLPI'),(151,32,150,'2019-03-05 03:56:17',2,0.00843596,0,'Action completed, no processing required'),(152,22,0,'2019-03-05 04:02:08',0,0,0,'Run mode: GLPI'),(153,22,152,'2019-03-05 04:02:08',2,0.00896311,0,'Action completed, no processing required'),(154,14,0,'2019-03-05 04:11:25',0,0,0,'Run mode: GLPI'),(155,14,154,'2019-03-05 04:11:25',2,0.00855899,0,'Action completed, no processing required'),(156,21,0,'2019-03-05 04:19:33',0,0,0,'Run mode: GLPI'),(157,21,156,'2019-03-05 04:19:33',2,0.0261068,0,'Action completed, no processing required'),(158,9,0,'2019-03-05 04:35:58',0,0,0,'Run mode: GLPI'),(159,9,158,'2019-03-05 04:35:58',2,0.0300419,0,'Action completed, no processing required'),(160,17,0,'2019-03-05 04:46:24',0,0,0,'Run mode: GLPI'),(161,17,160,'2019-03-05 04:46:24',2,0.00897598,0,'Action completed, no processing required'),(162,32,0,'2019-03-05 04:54:50',0,0,0,'Run mode: GLPI'),(163,32,162,'2019-03-05 04:54:50',2,0.0108659,0,'Action completed, no processing required'),(164,22,0,'2019-03-05 05:01:09',0,0,0,'Run mode: GLPI'),(165,22,164,'2019-03-05 05:01:09',2,0.0078299,0,'Action completed, no processing required'),(166,20,0,'2019-03-05 05:17:25',0,0,0,'Run mode: GLPI'),(167,20,166,'2019-03-05 05:17:25',2,0.007797,0,'Action completed, no processing required'),(168,24,0,'2019-03-05 05:39:17',0,0,0,'Run mode: GLPI'),(169,24,168,'2019-03-05 05:39:17',2,0.00835085,0,'Action completed, no processing required'),(170,21,0,'2019-03-05 05:44:21',0,0,0,'Run mode: GLPI'),(171,21,170,'2019-03-05 05:44:21',2,0.0079689,0,'Action completed, no processing required'),(172,13,0,'2019-03-05 05:51:11',0,0,0,'Run mode: GLPI'),(173,13,172,'2019-03-05 05:51:11',2,0.0083971,0,'Action completed, no processing required'),(174,9,0,'2019-03-05 05:56:18',0,0,0,'Run mode: GLPI'),(175,9,174,'2019-03-05 05:56:18',2,0.038419,0,'Action completed, no processing required'),(176,17,0,'2019-03-05 06:01:26',0,0,0,'Run mode: GLPI'),(177,17,176,'2019-03-05 06:01:26',2,0.00896502,0,'Action completed, no processing required'),(178,32,0,'2019-03-05 06:09:23',0,0,0,'Run mode: GLPI'),(179,32,178,'2019-03-05 06:09:23',2,0.00634217,0,'Action completed, no processing required'),(180,22,0,'2019-03-05 06:15:57',0,0,0,'Run mode: GLPI'),(181,22,180,'2019-03-05 06:15:57',2,0.00823188,0,'Action completed, no processing required'),(182,14,0,'2019-03-05 06:26:20',0,0,0,'Run mode: GLPI'),(183,14,182,'2019-03-05 06:26:20',2,0.00762105,0,'Action completed, no processing required'),(184,18,0,'2019-03-05 06:31:26',0,0,0,'Run mode: GLPI'),(185,18,184,'2019-03-05 06:31:26',2,0.011322,0,'Action completed, no processing required'),(186,21,0,'2019-03-05 06:43:02',0,0,0,'Run mode: GLPI'),(187,21,186,'2019-03-05 06:43:02',2,0.00855494,0,'Action completed, no processing required'),(188,19,0,'2019-03-05 06:48:09',0,0,0,'Run mode: GLPI'),(189,19,188,'2019-03-05 06:48:09',2,0.0084641,0,'Action completed, fully processed'),(190,23,0,'2019-03-05 06:54:53',0,0,0,'Run mode: GLPI'),(191,23,190,'2019-03-05 06:54:53',2,0.00862718,0,'Action completed, no processing required'),(192,9,0,'2019-03-05 07:00:34',0,0,0,'Run mode: GLPI'),(193,9,192,'2019-03-05 07:00:34',2,0.0339432,0,'Action completed, no processing required'),(194,17,0,'2019-03-05 07:06:47',0,0,0,'Run mode: GLPI'),(195,17,194,'2019-03-05 07:06:47',2,0.00848222,0,'Action completed, no processing required'),(196,25,0,'2019-03-05 08:06:03',0,0,0,'Run mode: GLPI'),(197,25,196,'2019-03-05 08:06:03',2,0.00934196,0,'Action completed, no processing required'),(198,5,0,'2019-03-05 08:11:04',0,0,0,'Run mode: GLPI'),(199,5,198,'2019-03-05 08:11:04',2,0.00866294,0,'Action completed, no processing required'),(200,32,0,'2019-03-05 08:16:19',0,0,0,'Run mode: GLPI'),(201,32,200,'2019-03-05 08:16:19',2,0.00846815,0,'Action completed, no processing required'),(202,22,0,'2019-03-05 08:35:04',0,0,0,'Run mode: GLPI'),(203,22,202,'2019-03-05 08:35:04',2,0.00899506,0,'Action completed, no processing required'),(204,20,0,'2019-03-05 08:40:19',0,0,0,'Run mode: GLPI'),(205,20,204,'2019-03-05 08:40:19',2,0.00914812,0,'Action completed, no processing required'),(206,6,0,'2019-03-05 08:46:04',0,0,0,'Run mode: GLPI'),(207,6,206,'2019-03-05 08:46:04',2,0.00815487,0,'Action completed, no processing required'),(208,12,0,'2019-03-05 08:51:18',0,0,0,'Run mode: GLPI'),(209,12,208,'2019-03-05 08:51:18',1,0.00574112,24,'Очистить 24 файлы сеансов созданные больше чем 1440 секунд\n'),(210,12,208,'2019-03-05 08:51:18',2,0.0139701,24,'Action completed, fully processed'),(211,24,0,'2019-03-05 08:53:36',0,0,0,'Run mode: GLPI'),(212,24,211,'2019-03-05 08:53:36',2,0.00877309,0,'Action completed, no processing required'),(213,21,0,'2019-03-05 09:06:41',0,0,0,'Run mode: GLPI'),(214,21,213,'2019-03-05 09:06:41',2,0.00612307,0,'Action completed, no processing required'),(215,13,0,'2019-03-05 09:16:27',0,0,0,'Run mode: GLPI'),(216,13,215,'2019-03-05 09:16:27',2,0.00829601,0,'Action completed, no processing required'),(217,9,0,'2019-03-05 09:25:53',0,0,0,'Run mode: GLPI'),(218,9,217,'2019-03-05 09:25:53',2,0.031642,0,'Action completed, no processing required'),(219,17,0,'2019-03-05 09:32:19',0,0,0,'Run mode: GLPI'),(220,17,219,'2019-03-05 09:32:19',2,0.00878,0,'Action completed, no processing required'),(221,14,0,'2019-03-05 09:37:48',0,0,0,'Run mode: GLPI'),(222,14,221,'2019-03-05 09:37:48',2,0.00796008,0,'Action completed, no processing required'),(223,32,0,'2019-03-05 09:38:15',0,0,0,'Run mode: GLPI'),(224,32,223,'2019-03-05 09:38:15',2,0.00834608,0,'Action completed, no processing required'),(225,22,0,'2019-03-05 09:38:24',0,0,0,'Run mode: GLPI'),(226,22,225,'2019-03-05 09:38:24',2,0.00770807,0,'Action completed, no processing required'),(227,21,0,'2019-03-05 09:39:43',0,0,0,'Run mode: GLPI'),(228,21,227,'2019-03-05 09:39:43',2,0.00866318,0,'Action completed, no processing required'),(229,9,0,'2019-03-05 09:40:02',0,0,0,'Run mode: GLPI'),(230,9,229,'2019-03-05 09:40:02',2,0.0317621,0,'Action completed, no processing required'),(231,17,0,'2019-03-05 09:41:49',0,0,0,'Run mode: GLPI'),(232,17,231,'2019-03-05 09:41:49',2,0.00779486,0,'Action completed, no processing required'),(233,22,0,'2019-03-05 09:43:09',0,0,0,'Run mode: GLPI'),(234,22,233,'2019-03-05 09:43:09',2,0.00923181,0,'Action completed, no processing required'),(235,20,0,'2019-03-05 09:51:10',0,0,0,'Run mode: GLPI'),(236,20,235,'2019-03-05 09:51:10',2,0.00949812,0,'Action completed, no processing required'),(237,32,0,'2019-03-05 09:54:43',0,0,0,'Run mode: GLPI'),(238,32,237,'2019-03-05 09:54:43',2,0.00866079,0,'Action completed, no processing required'),(239,21,0,'2019-03-05 09:56:12',0,0,0,'Run mode: GLPI'),(240,21,239,'2019-03-05 09:56:12',2,0.00737906,0,'Action completed, no processing required'),(241,22,0,'2019-03-05 10:02:46',0,0,0,'Run mode: GLPI'),(242,22,241,'2019-03-05 10:02:46',2,0.00893092,0,'Action completed, no processing required'),(243,17,0,'2019-03-05 10:09:16',0,0,0,'Run mode: GLPI'),(244,17,243,'2019-03-05 10:09:16',2,0.00859189,0,'Action completed, no processing required'),(245,9,0,'2019-03-05 10:16:56',0,0,0,'Run mode: GLPI'),(246,9,245,'2019-03-05 10:16:56',2,0.0315251,0,'Action completed, no processing required'),(247,24,0,'2019-03-05 10:20:13',0,0,0,'Run mode: GLPI'),(248,24,247,'2019-03-05 10:20:13',2,0.00885105,0,'Action completed, no processing required'),(249,32,0,'2019-03-05 10:23:43',0,0,0,'Run mode: GLPI'),(250,32,249,'2019-03-05 10:23:43',2,0.00895691,0,'Action completed, no processing required'),(251,21,0,'2019-03-05 10:28:47',0,0,0,'Run mode: GLPI'),(252,21,251,'2019-03-05 10:28:47',2,0.00612402,0,'Action completed, no processing required'),(253,22,0,'2019-03-05 10:34:23',0,0,0,'Run mode: GLPI'),(254,22,253,'2019-03-05 10:34:23',2,0.00810003,0,'Action completed, no processing required'),(255,17,0,'2019-03-05 10:36:49',0,0,0,'Run mode: GLPI'),(256,17,255,'2019-03-05 10:36:49',2,0.0104511,0,'Action completed, no processing required'),(257,13,0,'2019-03-05 10:41:18',0,0,0,'Run mode: GLPI'),(258,13,257,'2019-03-05 10:41:18',2,0.00841713,0,'Action completed, no processing required'),(259,9,0,'2019-03-05 10:48:27',0,0,0,'Run mode: GLPI'),(260,9,259,'2019-03-05 10:48:27',2,0.030618,0,'Action completed, no processing required'),(261,32,0,'2019-03-05 10:54:03',0,0,0,'Run mode: GLPI'),(262,32,261,'2019-03-05 10:54:03',2,0.0144641,0,'Action completed, no processing required'),(263,21,0,'2019-03-05 10:58:52',0,0,0,'Run mode: GLPI'),(264,21,263,'2019-03-05 10:58:52',2,0.00800705,0,'Action completed, no processing required'),(265,22,0,'2019-03-05 11:00:04',0,0,0,'Run mode: GLPI'),(266,22,265,'2019-03-05 11:00:04',2,0.00876498,0,'Action completed, no processing required'),(267,14,0,'2019-03-05 11:04:00',0,0,0,'Run mode: GLPI'),(268,14,267,'2019-03-05 11:04:00',2,0.00853896,0,'Action completed, no processing required'),(269,17,0,'2019-03-05 11:05:57',0,0,0,'Run mode: GLPI'),(270,17,269,'2019-03-05 11:05:57',2,0.00836587,0,'Action completed, no processing required'),(271,20,0,'2019-03-05 11:06:48',0,0,0,'Run mode: GLPI'),(272,20,271,'2019-03-05 11:06:48',2,0.00868487,0,'Action completed, no processing required'),(273,9,0,'2019-03-05 11:12:09',0,0,0,'Run mode: GLPI'),(274,9,273,'2019-03-05 11:12:09',2,0.0369549,0,'Action completed, no processing required'),(275,32,0,'2019-03-05 11:17:28',0,0,0,'Run mode: GLPI'),(276,32,275,'2019-03-05 11:17:28',2,0.012625,0,'Action completed, no processing required'),(277,22,0,'2019-03-05 11:22:50',0,0,0,'Run mode: GLPI'),(278,22,277,'2019-03-05 11:22:50',2,0.00861502,0,'Action completed, no processing required'),(279,21,0,'2019-03-05 11:24:00',0,0,0,'Run mode: GLPI'),(280,21,279,'2019-03-05 11:24:00',2,0.00821495,0,'Action completed, no processing required'),(281,17,0,'2019-03-06 02:09:00',0,0,0,'Run mode: GLPI'),(282,17,281,'2019-03-06 02:09:00',2,0.0122471,0,'Action completed, no processing required'),(283,24,0,'2019-03-06 02:50:08',0,0,0,'Run mode: GLPI'),(284,24,283,'2019-03-06 02:50:08',2,0.0117741,0,'Action completed, no processing required'),(285,9,0,'2019-03-06 03:38:50',0,0,0,'Run mode: GLPI'),(286,9,285,'2019-03-06 03:38:50',2,0.042156,0,'Action completed, no processing required'),(287,32,0,'2019-03-06 03:38:53',0,0,0,'Run mode: GLPI'),(288,32,287,'2019-03-06 03:38:53',2,0.00845599,0,'Action completed, no processing required'),(289,22,0,'2019-03-06 03:46:40',0,0,0,'Run mode: GLPI'),(290,22,289,'2019-03-06 03:46:40',2,0.00847411,0,'Action completed, no processing required'),(291,21,0,'2019-03-06 03:47:46',0,0,0,'Run mode: GLPI'),(292,21,291,'2019-03-06 03:47:46',2,0.00748897,0,'Action completed, no processing required'),(293,13,0,'2019-03-06 03:53:24',0,0,0,'Run mode: GLPI'),(294,13,293,'2019-03-06 03:53:24',2,0.00892901,0,'Action completed, no processing required'),(295,14,0,'2019-03-06 03:55:57',0,0,0,'Run mode: GLPI'),(296,14,295,'2019-03-06 03:55:57',2,0.00837493,0,'Action completed, no processing required'),(297,20,0,'2019-03-06 03:56:04',0,0,0,'Run mode: GLPI'),(298,20,297,'2019-03-06 03:56:04',2,0.0123088,0,'Action completed, no processing required'),(299,15,0,'2019-03-06 03:58:38',0,0,0,'Run mode: GLPI'),(300,15,299,'2019-03-06 03:58:38',2,0.00895,0,'Action completed, no processing required'),(301,16,0,'2019-03-06 04:01:02',0,0,0,'Run mode: GLPI'),(302,16,301,'2019-03-06 04:01:02',2,0.00896215,0,'Action completed, no processing required'),(303,17,0,'2019-03-06 04:01:57',0,0,0,'Run mode: GLPI'),(304,17,303,'2019-03-06 04:01:57',2,0.008219,0,'Action completed, no processing required'),(305,32,0,'2019-03-06 04:02:19',0,0,0,'Run mode: GLPI'),(306,32,305,'2019-03-06 04:02:19',2,0.00969696,0,'Action completed, no processing required'),(307,22,0,'2019-03-06 04:02:50',0,0,0,'Run mode: GLPI'),(308,22,307,'2019-03-06 04:02:50',2,0.00871897,0,'Action completed, no processing required'),(309,9,0,'2019-03-06 04:05:46',0,0,0,'Run mode: GLPI'),(310,9,309,'2019-03-06 04:05:46',2,0.0287681,0,'Action completed, no processing required'),(311,24,0,'2019-03-06 04:07:18',0,0,0,'Run mode: GLPI'),(312,24,311,'2019-03-06 04:07:18',2,0.00833702,0,'Action completed, no processing required'),(313,21,0,'2019-03-06 04:09:35',0,0,0,'Run mode: GLPI'),(314,21,313,'2019-03-06 04:09:35',2,0.00937104,0,'Action completed, no processing required'),(315,22,0,'2019-03-06 04:09:57',0,0,0,'Run mode: GLPI'),(316,22,315,'2019-03-06 04:09:57',2,0.00810909,0,'Action completed, no processing required'),(317,17,0,'2019-03-06 04:11:12',0,0,0,'Run mode: GLPI'),(318,17,317,'2019-03-06 04:11:12',2,0.00850201,0,'Action completed, no processing required'),(319,32,0,'2019-03-06 04:13:17',0,0,0,'Run mode: GLPI'),(320,32,319,'2019-03-06 04:13:17',2,0.00819016,0,'Action completed, no processing required'),(321,22,0,'2019-03-06 04:16:15',0,0,0,'Run mode: GLPI'),(322,22,321,'2019-03-06 04:16:15',2,0.00833321,0,'Action completed, no processing required'),(323,21,0,'2019-03-06 04:19:19',0,0,0,'Run mode: GLPI'),(324,21,323,'2019-03-06 04:19:19',2,0.00768685,0,'Action completed, no processing required'),(325,9,0,'2019-03-06 04:24:22',0,0,0,'Run mode: GLPI'),(326,9,325,'2019-03-06 04:24:22',2,0.03141,0,'Action completed, no processing required'),(327,17,0,'2019-03-06 05:13:04',0,0,0,'Run mode: GLPI'),(328,17,327,'2019-03-06 05:13:04',2,0.00900507,0,'Action completed, no processing required'),(329,22,0,'2019-03-06 05:13:05',0,0,0,'Run mode: GLPI'),(330,22,329,'2019-03-06 05:13:05',2,0.008641,0,'Action completed, no processing required'),(331,32,0,'2019-03-06 05:20:01',0,0,0,'Run mode: GLPI'),(332,32,331,'2019-03-06 05:20:01',2,0.010237,0,'Action completed, no processing required'),(333,21,0,'2019-03-06 05:20:40',0,0,0,'Run mode: GLPI'),(334,21,333,'2019-03-06 05:20:40',2,0.021421,0,'Action completed, no processing required'),(335,9,0,'2019-03-06 05:24:53',0,0,0,'Run mode: GLPI'),(336,9,335,'2019-03-06 05:24:53',2,0.0307178,0,'Action completed, no processing required'),(337,13,0,'2019-03-06 05:25:11',0,0,0,'Run mode: GLPI'),(338,13,337,'2019-03-06 05:25:11',2,0.00827599,0,'Action completed, no processing required'),(339,14,0,'2019-03-06 05:26:35',0,0,0,'Run mode: GLPI'),(340,14,339,'2019-03-06 05:26:35',2,0.00816393,0,'Action completed, no processing required'),(341,20,0,'2019-03-06 05:39:12',0,0,0,'Run mode: GLPI'),(342,20,341,'2019-03-06 05:39:12',2,0.00811505,0,'Action completed, no processing required'),(343,24,0,'2019-03-06 07:28:31',0,0,0,'Run mode: GLPI'),(344,24,343,'2019-03-06 07:28:31',2,0.00883102,0,'Action completed, no processing required'),(345,22,0,'2019-03-06 07:38:49',0,0,0,'Run mode: GLPI'),(346,22,345,'2019-03-06 07:38:49',2,0.00902796,0,'Action completed, no processing required'),(347,17,0,'2019-03-06 08:16:47',0,0,0,'Run mode: GLPI'),(348,17,347,'2019-03-06 08:16:47',2,0.00868201,0,'Action completed, no processing required'),(349,21,0,'2019-03-06 08:35:48',0,0,0,'Run mode: GLPI'),(350,21,349,'2019-03-06 08:35:48',2,0.00793314,0,'Action completed, no processing required'),(351,32,0,'2019-03-06 09:22:41',0,0,0,'Run mode: GLPI'),(352,32,351,'2019-03-06 09:22:41',2,0.00922394,0,'Action completed, no processing required'),(353,9,0,'2019-03-06 09:29:33',0,0,0,'Run mode: GLPI'),(354,9,353,'2019-03-06 09:29:33',2,0.0266271,0,'Action completed, no processing required'),(355,13,0,'2019-03-06 09:35:12',0,0,0,'Run mode: GLPI'),(356,13,355,'2019-03-06 09:35:12',2,0.00838304,0,'Action completed, no processing required'),(357,14,0,'2019-03-06 09:40:35',0,0,0,'Run mode: GLPI'),(358,14,357,'2019-03-06 09:40:35',2,0.00783801,0,'Action completed, no processing required'),(359,18,0,'2019-03-06 09:52:03',0,0,0,'Run mode: GLPI'),(360,18,359,'2019-03-06 09:52:03',2,0.0112672,0,'Action completed, no processing required'),(361,20,0,'2019-03-06 09:53:50',0,0,0,'Run mode: GLPI'),(362,20,361,'2019-03-06 09:53:50',2,0.00869489,0,'Action completed, no processing required'),(363,19,0,'2019-03-06 10:04:43',0,0,0,'Run mode: GLPI'),(364,19,363,'2019-03-06 10:04:43',2,0.0279601,0,'Action completed, fully processed'),(365,23,0,'2019-03-06 10:10:28',0,0,0,'Run mode: GLPI'),(366,23,365,'2019-03-06 10:10:28',2,0.015497,0,'Action completed, no processing required'),(367,22,0,'2019-03-06 10:10:44',0,0,0,'Run mode: GLPI'),(368,22,367,'2019-03-06 10:10:44',2,0.00933099,0,'Action completed, no processing required'),(369,25,0,'2019-03-06 10:53:19',0,0,0,'Run mode: GLPI'),(370,25,369,'2019-03-06 10:53:19',2,0.00806189,0,'Action completed, no processing required'),(371,5,0,'2019-03-06 11:03:39',0,0,0,'Run mode: GLPI'),(372,5,371,'2019-03-06 11:03:39',2,0.00858116,0,'Action completed, no processing required'),(373,17,0,'2019-03-06 11:08:56',0,0,0,'Run mode: GLPI'),(374,17,373,'2019-03-06 11:08:56',2,0.0309329,0,'Action completed, no processing required'),(375,24,0,'2019-03-06 11:11:10',0,0,0,'Run mode: GLPI'),(376,24,375,'2019-03-06 11:11:10',2,0.00831389,0,'Action completed, no processing required'),(377,21,0,'2019-03-06 11:19:32',0,0,0,'Run mode: GLPI'),(378,21,377,'2019-03-06 11:19:32',2,0.00800395,0,'Action completed, no processing required'),(379,6,0,'2019-03-06 11:26:34',0,0,0,'Run mode: GLPI'),(380,6,379,'2019-03-06 11:26:34',2,0.00750709,0,'Action completed, no processing required'),(381,12,0,'2019-03-11 07:46:33',0,0,0,'Run mode: GLPI'),(382,12,381,'2019-03-11 07:46:33',1,0.00527692,18,'Очистить 18 файлы сеансов созданные больше чем 1440 секунд\n'),(383,12,381,'2019-03-11 07:46:33',2,0.0104311,18,'Action completed, fully processed'),(384,32,0,'2019-03-11 07:52:05',0,0,0,'Run mode: GLPI'),(385,32,384,'2019-03-11 07:52:05',2,0.0103891,0,'Action completed, no processing required'),(386,9,0,'2019-03-11 09:17:08',0,0,0,'Run mode: GLPI'),(387,9,386,'2019-03-11 09:17:08',2,0.0306761,0,'Action completed, no processing required'),(388,22,0,'2019-03-11 09:27:54',0,0,0,'Run mode: GLPI'),(389,22,388,'2019-03-11 09:27:54',2,0.00805283,0,'Action completed, no processing required'),(390,13,0,'2019-03-11 09:28:08',0,0,0,'Run mode: GLPI'),(391,13,390,'2019-03-11 09:28:08',2,0.00912595,0,'Action completed, no processing required'),(392,14,0,'2019-03-11 11:27:42',0,0,0,'Run mode: GLPI'),(393,14,392,'2019-03-11 11:27:42',2,0.0080452,0,'Action completed, no processing required'),(394,20,0,'2019-03-11 11:28:58',0,0,0,'Run mode: GLPI'),(395,20,394,'2019-03-11 11:28:58',2,0.00831008,0,'Action completed, no processing required'),(396,17,0,'2019-03-11 11:38:49',0,0,0,'Run mode: GLPI'),(397,17,396,'2019-03-11 11:38:49',2,0.00926685,0,'Action completed, no processing required'),(398,21,0,'2019-03-11 11:40:30',0,0,0,'Run mode: GLPI'),(399,21,398,'2019-03-11 11:40:30',2,0.00882792,0,'Action completed, no processing required'),(400,24,0,'2019-03-11 11:54:24',0,0,0,'Run mode: GLPI'),(401,24,400,'2019-03-11 11:54:24',2,0.00847006,0,'Action completed, no processing required'),(402,15,0,'2019-03-12 02:04:58',0,0,0,'Run mode: GLPI'),(403,15,402,'2019-03-12 02:04:58',2,0.00860405,0,'Action completed, no processing required'),(404,16,0,'2019-03-12 02:05:06',0,0,0,'Run mode: GLPI'),(405,16,404,'2019-03-12 02:05:06',2,0.0093739,0,'Action completed, no processing required'),(406,18,0,'2019-03-12 02:20:10',0,0,0,'Run mode: GLPI'),(407,18,406,'2019-03-12 02:20:10',2,0.010937,0,'Action completed, no processing required'),(408,19,0,'2019-03-12 02:25:38',0,0,0,'Run mode: GLPI'),(409,19,408,'2019-03-12 02:25:38',2,0.00884485,0,'Action completed, fully processed'),(410,23,0,'2019-03-12 02:39:41',0,0,0,'Run mode: GLPI'),(411,23,410,'2019-03-12 02:39:41',2,0.00862002,0,'Action completed, no processing required'),(412,25,0,'2019-03-12 02:46:06',0,0,0,'Run mode: GLPI'),(413,25,412,'2019-03-12 02:46:06',2,0.00917983,0,'Action completed, no processing required'),(414,5,0,'2019-03-12 02:52:12',0,0,0,'Run mode: GLPI'),(415,5,414,'2019-03-12 02:52:12',2,0.00798607,0,'Action completed, no processing required'),(416,6,0,'2019-03-12 03:09:00',0,0,0,'Run mode: GLPI'),(417,6,416,'2019-03-12 03:09:00',2,0.00824308,0,'Action completed, no processing required'),(418,32,0,'2019-03-12 03:57:40',0,0,0,'Run mode: GLPI'),(419,32,418,'2019-03-12 03:57:40',2,0.00817299,0,'Action completed, no processing required'),(420,9,0,'2019-03-12 04:47:44',0,0,0,'Run mode: GLPI'),(421,9,420,'2019-03-12 04:47:44',2,0.0341759,0,'Action completed, no processing required'),(422,22,0,'2019-03-12 04:48:26',0,0,0,'Run mode: GLPI'),(423,22,422,'2019-03-12 04:48:26',2,0.008111,0,'Action completed, no processing required'),(424,13,0,'2019-03-12 04:53:46',0,0,0,'Run mode: GLPI'),(425,13,424,'2019-03-12 04:53:46',2,0.00837803,0,'Action completed, no processing required'),(426,17,0,'2019-03-12 04:58:10',0,0,0,'Run mode: GLPI'),(427,17,426,'2019-03-12 04:58:10',2,0.00848293,0,'Action completed, no processing required'),(428,21,0,'2019-03-12 05:03:16',0,0,0,'Run mode: GLPI'),(429,21,428,'2019-03-12 05:03:16',2,0.00863695,0,'Action completed, no processing required'),(430,14,0,'2019-03-12 05:08:16',0,0,0,'Run mode: GLPI'),(431,14,430,'2019-03-12 05:08:16',2,0.00818586,0,'Action completed, no processing required'),(432,20,0,'2019-03-12 05:14:52',0,0,0,'Run mode: GLPI'),(433,20,432,'2019-03-12 05:14:52',2,0.00879192,0,'Action completed, no processing required'),(434,24,0,'2019-03-12 05:42:55',0,0,0,'Run mode: GLPI'),(435,24,434,'2019-03-12 05:42:55',2,0.00901198,0,'Action completed, no processing required'),(436,32,0,'2019-03-12 06:02:55',0,0,0,'Run mode: GLPI'),(437,32,436,'2019-03-12 06:02:55',2,0.00831604,0,'Action completed, no processing required'),(438,22,0,'2019-03-12 08:03:43',0,0,0,'Run mode: GLPI'),(439,22,438,'2019-03-12 08:03:43',2,0.00777793,0,'Action completed, no processing required'),(440,9,0,'2019-03-12 09:07:33',0,0,0,'Run mode: GLPI'),(441,9,440,'2019-03-12 09:07:33',2,0.032016,0,'Action completed, no processing required'),(442,17,0,'2019-03-12 09:13:47',0,0,0,'Run mode: GLPI'),(443,17,442,'2019-03-12 09:13:47',2,0.00864506,0,'Action completed, no processing required'),(444,21,0,'2019-03-12 10:56:12',0,0,0,'Run mode: GLPI'),(445,21,444,'2019-03-12 10:56:12',2,0.00847292,0,'Action completed, no processing required'),(446,13,0,'2019-03-12 10:57:13',0,0,0,'Run mode: GLPI'),(447,13,446,'2019-03-12 10:57:13',2,0.00857019,0,'Action completed, no processing required'),(448,32,0,'2019-03-12 10:58:01',0,0,0,'Run mode: GLPI'),(449,32,448,'2019-03-12 10:58:01',2,0.00927782,0,'Action completed, no processing required'),(450,14,0,'2019-03-12 11:02:08',0,0,0,'Run mode: GLPI'),(451,14,450,'2019-03-12 11:02:08',2,0.0083952,0,'Action completed, no processing required'),(452,20,0,'2019-03-12 11:02:25',0,0,0,'Run mode: GLPI'),(453,20,452,'2019-03-12 11:02:25',2,0.00813103,0,'Action completed, no processing required'),(454,24,0,'2019-03-12 11:03:30',0,0,0,'Run mode: GLPI'),(455,24,454,'2019-03-12 11:03:30',2,0.00928593,0,'Action completed, no processing required'),(456,12,0,'2019-03-12 11:08:03',0,0,0,'Run mode: GLPI'),(457,12,456,'2019-03-12 11:08:03',1,0.00741386,78,'Очистить 78 файлы сеансов созданные больше чем 1440 секунд\n'),(458,12,456,'2019-03-12 11:08:03',2,0.0150909,78,'Action completed, fully processed'),(459,22,0,'2019-03-12 11:08:36',0,0,0,'Run mode: GLPI'),(460,22,459,'2019-03-12 11:08:36',2,0.00864792,0,'Action completed, no processing required'),(461,9,0,'2019-03-12 11:12:18',0,0,0,'Run mode: GLPI'),(462,9,461,'2019-03-12 11:12:18',2,0.0332482,0,'Action completed, no processing required'),(463,17,0,'2019-03-12 11:14:19',0,0,0,'Run mode: GLPI'),(464,17,463,'2019-03-12 11:14:19',2,0.00781488,0,'Action completed, no processing required');
/*!40000 ALTER TABLE `glpi_crontasklogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_crontasks`
--

DROP TABLE IF EXISTS `glpi_crontasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_crontasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT '1' COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT '3' COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT '0',
  `hourmax` int(11) NOT NULL DEFAULT '24',
  `logs_lifetime` int(11) NOT NULL DEFAULT '30' COMMENT 'number of days',
  `lastrun` datetime DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`name`),
  KEY `mode` (`mode`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Task run by internal / external cron.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_crontasks`
--

LOCK TABLES `glpi_crontasks` WRITE;
/*!40000 ALTER TABLE `glpi_crontasks` DISABLE KEYS */;
INSERT INTO `glpi_crontasks` VALUES (2,'CartridgeItem','cartridge',86400,10,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(3,'ConsumableItem','consumable',86400,10,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(4,'SoftwareLicense','software',86400,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(5,'Contract','contract',86400,NULL,1,1,3,0,24,30,'2019-03-12 08:52:00',NULL,NULL,NULL,NULL),(6,'InfoCom','infocom',86400,NULL,1,1,3,0,24,30,'2019-03-12 09:09:00',NULL,NULL,NULL,NULL),(7,'CronTask','logs',86400,30,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(9,'MailCollector','mailgate',600,10,1,1,3,0,24,30,'2019-03-12 17:12:00',NULL,NULL,NULL,NULL),(10,'DBconnection','checkdbreplicate',300,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(11,'CronTask','checkupdate',604800,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(12,'CronTask','session',86400,NULL,1,1,3,0,24,30,'2019-03-12 17:08:00',NULL,NULL,NULL,NULL),(13,'CronTask','graph',3600,NULL,1,1,3,0,24,30,'2019-03-12 16:57:00',NULL,NULL,NULL,NULL),(14,'ReservationItem','reservation',3600,NULL,1,1,3,0,24,30,'2019-03-12 17:02:00',NULL,NULL,NULL,NULL),(15,'Ticket','closeticket',43200,NULL,1,1,3,0,24,30,'2019-03-12 08:04:00',NULL,NULL,NULL,NULL),(16,'Ticket','alertnotclosed',43200,NULL,1,1,3,0,24,30,'2019-03-12 08:05:00',NULL,NULL,NULL,NULL),(17,'SlaLevel_Ticket','slaticket',300,NULL,1,1,3,0,24,30,'2019-03-12 17:14:00',NULL,NULL,NULL,NULL),(18,'Ticket','createinquest',86400,NULL,1,1,3,0,24,30,'2019-03-12 08:20:00',NULL,NULL,NULL,NULL),(19,'Crontask','watcher',86400,NULL,1,1,3,0,24,30,'2019-03-12 08:25:00',NULL,NULL,NULL,NULL),(20,'TicketRecurrent','ticketrecurrent',3600,NULL,1,1,3,0,24,30,'2019-03-12 17:02:00',NULL,NULL,NULL,NULL),(21,'PlanningRecall','planningrecall',300,NULL,1,1,3,0,24,30,'2019-03-12 16:56:00',NULL,NULL,NULL,NULL),(22,'QueuedNotification','queuednotification',60,50,1,1,3,0,24,30,'2019-03-12 17:08:00',NULL,NULL,NULL,NULL),(23,'QueuedNotification','queuednotificationclean',86400,30,1,1,3,0,24,30,'2019-03-12 08:39:00',NULL,NULL,NULL,NULL),(24,'Crontask','temp',3600,NULL,1,1,3,0,24,30,'2019-03-12 17:03:00',NULL,NULL,NULL,NULL),(25,'MailCollector','mailgateerror',86400,NULL,1,1,3,0,24,30,'2019-03-12 08:46:00',NULL,NULL,NULL,NULL),(26,'Crontask','circularlogs',86400,4,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(27,'ObjectLock','unlockobject',86400,4,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),(28,'SavedSearch','countAll',604800,NULL,0,1,3,0,24,10,NULL,NULL,NULL,NULL,NULL),(29,'SavedSearch_Alert','savedsearchesalerts',86400,NULL,0,1,3,0,24,10,NULL,NULL,NULL,NULL,NULL),(30,'Telemetry','telemetry',2592000,NULL,0,1,3,0,24,10,NULL,NULL,NULL,NULL,NULL),(31,'Certificate','certificate',86400,NULL,0,1,3,0,24,10,NULL,NULL,NULL,NULL,NULL),(32,'OlaLevel_Ticket','olaticket',300,NULL,1,1,3,0,24,30,'2019-03-12 16:58:00',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_crontasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_datacenters`
--

DROP TABLE IF EXISTS `glpi_datacenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_datacenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_datacenters`
--

LOCK TABLES `glpi_datacenters` WRITE;
/*!40000 ALTER TABLE `glpi_datacenters` DISABLE KEYS */;
INSERT INTO `glpi_datacenters` VALUES (1,'ЦОД KTCL п.Алатау',0,0,3,0,'2019-03-12 05:06:25','2019-03-12 05:06:25');
/*!40000 ALTER TABLE `glpi_datacenters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_dcrooms`
--

DROP TABLE IF EXISTS `glpi_dcrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_dcrooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `vis_cols` int(11) DEFAULT NULL,
  `vis_rows` int(11) DEFAULT NULL,
  `blueprint` text COLLATE utf8_unicode_ci,
  `datacenters_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `datacenters_id` (`datacenters_id`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_dcrooms`
--

LOCK TABLES `glpi_dcrooms` WRITE;
/*!40000 ALTER TABLE `glpi_dcrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_dcrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicebatteries`
--

DROP TABLE IF EXISTS `glpi_devicebatteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicebatteries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `devicebatterytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicebatterymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicebatterymodels_id` (`devicebatterymodels_id`),
  KEY `devicebatterytypes_id` (`devicebatterytypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicebatteries`
--

LOCK TABLES `glpi_devicebatteries` WRITE;
/*!40000 ALTER TABLE `glpi_devicebatteries` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicebatteries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicebatterymodels`
--

DROP TABLE IF EXISTS `glpi_devicebatterymodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicebatterymodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicebatterymodels`
--

LOCK TABLES `glpi_devicebatterymodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicebatterymodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicebatterymodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicebatterytypes`
--

DROP TABLE IF EXISTS `glpi_devicebatterytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicebatterytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicebatterytypes`
--

LOCK TABLES `glpi_devicebatterytypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicebatterytypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicebatterytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecasemodels`
--

DROP TABLE IF EXISTS `glpi_devicecasemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecasemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecasemodels`
--

LOCK TABLES `glpi_devicecasemodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicecasemodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecasemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecases`
--

DROP TABLE IF EXISTS `glpi_devicecases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecasetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecasemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicecasetypes_id` (`devicecasetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicecasemodels_id` (`devicecasemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecases`
--

LOCK TABLES `glpi_devicecases` WRITE;
/*!40000 ALTER TABLE `glpi_devicecases` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecasetypes`
--

DROP TABLE IF EXISTS `glpi_devicecasetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecasetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecasetypes`
--

LOCK TABLES `glpi_devicecasetypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicecasetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecasetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecontrolmodels`
--

DROP TABLE IF EXISTS `glpi_devicecontrolmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecontrolmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecontrolmodels`
--

LOCK TABLES `glpi_devicecontrolmodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicecontrolmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecontrolmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicecontrols`
--

DROP TABLE IF EXISTS `glpi_devicecontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_raid` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicecontrolmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicecontrolmodels_id` (`devicecontrolmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicecontrols`
--

LOCK TABLES `glpi_devicecontrols` WRITE;
/*!40000 ALTER TABLE `glpi_devicecontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicecontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicedrivemodels`
--

DROP TABLE IF EXISTS `glpi_devicedrivemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicedrivemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicedrivemodels`
--

LOCK TABLES `glpi_devicedrivemodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicedrivemodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicedrivemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicedrives`
--

DROP TABLE IF EXISTS `glpi_devicedrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_writer` tinyint(1) NOT NULL DEFAULT '1',
  `speed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicedrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicedrivemodels_id` (`devicedrivemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicedrives`
--

LOCK TABLES `glpi_devicedrives` WRITE;
/*!40000 ALTER TABLE `glpi_devicedrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicedrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicefirmwaremodels`
--

DROP TABLE IF EXISTS `glpi_devicefirmwaremodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicefirmwaremodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicefirmwaremodels`
--

LOCK TABLES `glpi_devicefirmwaremodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicefirmwaremodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicefirmwaremodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicefirmwares`
--

DROP TABLE IF EXISTS `glpi_devicefirmwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicefirmwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicefirmwaretypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicefirmwaremodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicefirmwaremodels_id` (`devicefirmwaremodels_id`),
  KEY `devicefirmwaretypes_id` (`devicefirmwaretypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicefirmwares`
--

LOCK TABLES `glpi_devicefirmwares` WRITE;
/*!40000 ALTER TABLE `glpi_devicefirmwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicefirmwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicefirmwaretypes`
--

DROP TABLE IF EXISTS `glpi_devicefirmwaretypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicefirmwaretypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicefirmwaretypes`
--

LOCK TABLES `glpi_devicefirmwaretypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicefirmwaretypes` DISABLE KEYS */;
INSERT INTO `glpi_devicefirmwaretypes` VALUES (1,'BIOS',NULL,NULL,NULL),(2,'UEFI',NULL,NULL,NULL),(3,'Firmware',NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_devicefirmwaretypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicegenericmodels`
--

DROP TABLE IF EXISTS `glpi_devicegenericmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicegenericmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicegenericmodels`
--

LOCK TABLES `glpi_devicegenericmodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicegenericmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicegenericmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicegenerics`
--

DROP TABLE IF EXISTS `glpi_devicegenerics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicegenerics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegenerictypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `devicegenericmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicegenerictypes_id` (`devicegenerictypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicegenericmodels_id` (`devicegenericmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicegenerics`
--

LOCK TABLES `glpi_devicegenerics` WRITE;
/*!40000 ALTER TABLE `glpi_devicegenerics` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicegenerics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicegenerictypes`
--

DROP TABLE IF EXISTS `glpi_devicegenerictypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicegenerictypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicegenerictypes`
--

LOCK TABLES `glpi_devicegenerictypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicegenerictypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicegenerictypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicegraphiccardmodels`
--

DROP TABLE IF EXISTS `glpi_devicegraphiccardmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicegraphiccardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicegraphiccardmodels`
--

LOCK TABLES `glpi_devicegraphiccardmodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicegraphiccardmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicegraphiccardmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicegraphiccards`
--

DROP TABLE IF EXISTS `glpi_devicegraphiccards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `memory_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicegraphiccardmodels_id` int(11) DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `chipset` (`chipset`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicegraphiccardmodels_id` (`devicegraphiccardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicegraphiccards`
--

LOCK TABLES `glpi_devicegraphiccards` WRITE;
/*!40000 ALTER TABLE `glpi_devicegraphiccards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicegraphiccards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_deviceharddrivemodels`
--

DROP TABLE IF EXISTS `glpi_deviceharddrivemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_deviceharddrivemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_deviceharddrivemodels`
--

LOCK TABLES `glpi_deviceharddrivemodels` WRITE;
/*!40000 ALTER TABLE `glpi_deviceharddrivemodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_deviceharddrivemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_deviceharddrives`
--

DROP TABLE IF EXISTS `glpi_deviceharddrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interfacetypes_id` int(11) NOT NULL DEFAULT '0',
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `capacity_default` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceharddrivemodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `deviceharddrivemodels_id` (`deviceharddrivemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_deviceharddrives`
--

LOCK TABLES `glpi_deviceharddrives` WRITE;
/*!40000 ALTER TABLE `glpi_deviceharddrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_deviceharddrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicememories`
--

DROP TABLE IF EXISTS `glpi_devicememories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `size_default` int(11) NOT NULL DEFAULT '0',
  `devicememorytypes_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicememorymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicememorytypes_id` (`devicememorytypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicememorymodels_id` (`devicememorymodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicememories`
--

LOCK TABLES `glpi_devicememories` WRITE;
/*!40000 ALTER TABLE `glpi_devicememories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicememories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicememorymodels`
--

DROP TABLE IF EXISTS `glpi_devicememorymodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicememorymodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicememorymodels`
--

LOCK TABLES `glpi_devicememorymodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicememorymodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicememorymodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicememorytypes`
--

DROP TABLE IF EXISTS `glpi_devicememorytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicememorytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicememorytypes`
--

LOCK TABLES `glpi_devicememorytypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicememorytypes` DISABLE KEYS */;
INSERT INTO `glpi_devicememorytypes` VALUES (1,'EDO',NULL,NULL,NULL),(2,'DDR',NULL,NULL,NULL),(3,'SDRAM',NULL,NULL,NULL),(4,'SDRAM-2',NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_devicememorytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicemotherboardmodels`
--

DROP TABLE IF EXISTS `glpi_devicemotherboardmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicemotherboardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicemotherboardmodels`
--

LOCK TABLES `glpi_devicemotherboardmodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicemotherboardmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicemotherboardmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicemotherboards`
--

DROP TABLE IF EXISTS `glpi_devicemotherboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicemotherboardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicemotherboardmodels_id` (`devicemotherboardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicemotherboards`
--

LOCK TABLES `glpi_devicemotherboards` WRITE;
/*!40000 ALTER TABLE `glpi_devicemotherboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicemotherboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicenetworkcardmodels`
--

DROP TABLE IF EXISTS `glpi_devicenetworkcardmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicenetworkcardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicenetworkcardmodels`
--

LOCK TABLES `glpi_devicenetworkcardmodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicenetworkcardmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicenetworkcardmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicenetworkcards`
--

DROP TABLE IF EXISTS `glpi_devicenetworkcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `mac_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicenetworkcards`
--

LOCK TABLES `glpi_devicenetworkcards` WRITE;
/*!40000 ALTER TABLE `glpi_devicenetworkcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicenetworkcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicepcimodels`
--

DROP TABLE IF EXISTS `glpi_devicepcimodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicepcimodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicepcimodels`
--

LOCK TABLES `glpi_devicepcimodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicepcimodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicepcimodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicepcis`
--

DROP TABLE IF EXISTS `glpi_devicepcis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `devicenetworkcardmodels_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepcimodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicepcimodels_id` (`devicepcimodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicepcis`
--

LOCK TABLES `glpi_devicepcis` WRITE;
/*!40000 ALTER TABLE `glpi_devicepcis` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicepcis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicepowersupplies`
--

DROP TABLE IF EXISTS `glpi_devicepowersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_atx` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicepowersupplymodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicepowersupplymodels_id` (`devicepowersupplymodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicepowersupplies`
--

LOCK TABLES `glpi_devicepowersupplies` WRITE;
/*!40000 ALTER TABLE `glpi_devicepowersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicepowersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicepowersupplymodels`
--

DROP TABLE IF EXISTS `glpi_devicepowersupplymodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicepowersupplymodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicepowersupplymodels`
--

LOCK TABLES `glpi_devicepowersupplymodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicepowersupplymodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicepowersupplymodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_deviceprocessormodels`
--

DROP TABLE IF EXISTS `glpi_deviceprocessormodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_deviceprocessormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_deviceprocessormodels`
--

LOCK TABLES `glpi_deviceprocessormodels` WRITE;
/*!40000 ALTER TABLE `glpi_deviceprocessormodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_deviceprocessormodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_deviceprocessors`
--

DROP TABLE IF EXISTS `glpi_deviceprocessors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `frequency_default` int(11) NOT NULL DEFAULT '0',
  `nbcores_default` int(11) DEFAULT NULL,
  `nbthreads_default` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `deviceprocessormodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `deviceprocessormodels_id` (`deviceprocessormodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_deviceprocessors`
--

LOCK TABLES `glpi_deviceprocessors` WRITE;
/*!40000 ALTER TABLE `glpi_deviceprocessors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_deviceprocessors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesensormodels`
--

DROP TABLE IF EXISTS `glpi_devicesensormodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesensormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesensormodels`
--

LOCK TABLES `glpi_devicesensormodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicesensormodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesensormodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesensors`
--

DROP TABLE IF EXISTS `glpi_devicesensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesensortypes_id` int(11) NOT NULL DEFAULT '0',
  `devicesensormodels_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicesensortypes_id` (`devicesensortypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesensors`
--

LOCK TABLES `glpi_devicesensors` WRITE;
/*!40000 ALTER TABLE `glpi_devicesensors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesensors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesensortypes`
--

DROP TABLE IF EXISTS `glpi_devicesensortypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesensortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesensortypes`
--

LOCK TABLES `glpi_devicesensortypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicesensortypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesensortypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesimcards`
--

DROP TABLE IF EXISTS `glpi_devicesimcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesimcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `voltage` int(11) DEFAULT NULL,
  `devicesimcardtypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `allow_voip` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `devicesimcardtypes_id` (`devicesimcardtypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesimcards`
--

LOCK TABLES `glpi_devicesimcards` WRITE;
/*!40000 ALTER TABLE `glpi_devicesimcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesimcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesimcardtypes`
--

DROP TABLE IF EXISTS `glpi_devicesimcardtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesimcardtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesimcardtypes`
--

LOCK TABLES `glpi_devicesimcardtypes` WRITE;
/*!40000 ALTER TABLE `glpi_devicesimcardtypes` DISABLE KEYS */;
INSERT INTO `glpi_devicesimcardtypes` VALUES (1,'Full SIM',NULL,NULL,NULL),(2,'Mini SIM',NULL,NULL,NULL),(3,'Micro SIM',NULL,NULL,NULL),(4,'Nano SIM',NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_devicesimcardtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesoundcardmodels`
--

DROP TABLE IF EXISTS `glpi_devicesoundcardmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesoundcardmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesoundcardmodels`
--

LOCK TABLES `glpi_devicesoundcardmodels` WRITE;
/*!40000 ALTER TABLE `glpi_devicesoundcardmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesoundcardmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_devicesoundcards`
--

DROP TABLE IF EXISTS `glpi_devicesoundcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `devicesoundcardmodels_id` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicesoundcardmodels_id` (`devicesoundcardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_devicesoundcards`
--

LOCK TABLES `glpi_devicesoundcards` WRITE;
/*!40000 ALTER TABLE `glpi_devicesoundcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_devicesoundcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_displaypreferences`
--

DROP TABLE IF EXISTS `glpi_displaypreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_displaypreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  KEY `rank` (`rank`),
  KEY `num` (`num`),
  KEY `itemtype` (`itemtype`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_displaypreferences`
--

LOCK TABLES `glpi_displaypreferences` WRITE;
/*!40000 ALTER TABLE `glpi_displaypreferences` DISABLE KEYS */;
INSERT INTO `glpi_displaypreferences` VALUES (29,'Computer',31,2,0),(30,'Computer',23,3,0),(31,'Computer',5,4,0),(32,'Computer',4,5,0),(33,'Computer',40,6,0),(34,'Computer',45,7,0),(35,'Computer',3,8,0),(36,'Computer',19,9,0),(37,'Computer',17,10,0),(38,'NetworkEquipment',31,1,0),(39,'NetworkEquipment',23,2,0),(40,'NetworkEquipment',3,3,0),(41,'NetworkEquipment',4,4,0),(42,'NetworkEquipment',11,6,0),(43,'NetworkEquipment',19,7,0),(44,'Printer',31,1,0),(45,'Printer',23,2,0),(46,'Printer',3,3,0),(47,'Printer',4,4,0),(48,'Printer',19,6,0),(49,'Monitor',31,1,0),(50,'Monitor',23,2,0),(51,'Monitor',3,3,0),(52,'Monitor',4,4,0),(53,'Monitor',19,6,0),(54,'Monitor',7,7,0),(55,'Peripheral',31,1,0),(56,'Peripheral',23,2,0),(57,'Peripheral',3,3,0),(58,'Peripheral',4,4,0),(59,'Peripheral',19,6,0),(60,'Peripheral',7,7,0),(61,'Software',23,1,0),(62,'Software',5,2,0),(63,'Software',4,3,0),(64,'Contact',3,1,0),(65,'Contact',4,2,0),(66,'Contact',5,3,0),(67,'Contact',6,4,0),(68,'Contact',9,5,0),(69,'Supplier',9,1,0),(70,'Supplier',3,2,0),(71,'Supplier',4,3,0),(72,'Supplier',5,4,0),(73,'Supplier',10,5,0),(74,'Supplier',6,6,0),(75,'Contract',4,1,0),(76,'Contract',3,2,0),(77,'Contract',5,3,0),(78,'Contract',6,4,0),(79,'Contract',7,5,0),(80,'Contract',11,6,0),(82,'CartridgeItem',34,1,0),(83,'CartridgeItem',4,2,0),(84,'CartridgeItem',23,3,0),(85,'CartridgeItem',3,4,0),(86,'DocumentType',3,1,0),(88,'DocumentType',6,2,0),(89,'DocumentType',4,3,0),(90,'DocumentType',5,4,0),(91,'Document',3,1,0),(92,'Document',4,2,0),(93,'Document',7,3,0),(94,'Document',5,4,0),(95,'Document',16,5,0),(96,'User',34,1,0),(98,'User',5,3,0),(99,'User',6,4,0),(100,'User',3,5,0),(101,'ConsumableItem',34,1,0),(102,'ConsumableItem',4,2,0),(103,'ConsumableItem',23,3,0),(104,'ConsumableItem',3,4,0),(105,'NetworkEquipment',40,5,0),(106,'Printer',40,5,0),(107,'Monitor',40,5,0),(108,'Peripheral',40,5,0),(109,'User',8,6,0),(110,'Phone',31,1,0),(111,'Phone',23,2,0),(112,'Phone',3,3,0),(113,'Phone',4,4,0),(114,'Phone',40,5,0),(115,'Phone',19,6,0),(116,'Phone',7,7,0),(117,'Group',16,1,0),(118,'AllAssets',31,1,0),(119,'ReservationItem',4,1,0),(120,'ReservationItem',3,2,0),(122,'Software',72,4,0),(123,'Software',163,5,0),(124,'Budget',5,1,0),(125,'Budget',3,2,0),(126,'Budget',4,3,0),(127,'Budget',19,4,0),(128,'Crontask',8,1,0),(129,'Crontask',3,2,0),(130,'Crontask',4,3,0),(131,'Crontask',7,4,0),(132,'RequestType',14,1,0),(133,'RequestType',15,2,0),(134,'NotificationTemplate',4,1,0),(135,'NotificationTemplate',16,2,0),(136,'Notification',5,1,0),(137,'Notification',6,2,0),(138,'Notification',2,3,0),(139,'Notification',4,4,0),(140,'Notification',80,5,0),(141,'Notification',86,6,0),(142,'MailCollector',2,1,0),(143,'MailCollector',19,2,0),(144,'AuthLDAP',3,1,0),(145,'AuthLDAP',19,2,0),(146,'AuthMail',3,1,0),(147,'AuthMail',19,2,0),(150,'Profile',2,1,0),(151,'Profile',3,2,0),(152,'Profile',19,3,0),(153,'Transfer',19,1,0),(154,'TicketValidation',3,1,0),(155,'TicketValidation',2,2,0),(156,'TicketValidation',8,3,0),(157,'TicketValidation',4,4,0),(158,'TicketValidation',9,5,0),(159,'TicketValidation',7,6,0),(160,'NotImportedEmail',2,1,0),(161,'NotImportedEmail',5,2,0),(162,'NotImportedEmail',4,3,0),(163,'NotImportedEmail',6,4,0),(164,'NotImportedEmail',16,5,0),(165,'NotImportedEmail',19,6,0),(166,'RuleRightParameter',11,1,0),(167,'Ticket',12,1,0),(168,'Ticket',19,2,0),(169,'Ticket',15,3,0),(170,'Ticket',3,4,0),(171,'Ticket',4,5,0),(172,'Ticket',5,6,0),(173,'Ticket',7,7,0),(174,'Calendar',19,1,0),(175,'Holiday',11,1,0),(176,'Holiday',12,2,0),(177,'Holiday',13,3,0),(178,'SLA',4,1,0),(179,'Ticket',18,8,0),(180,'AuthLdap',30,3,0),(181,'AuthMail',6,3,0),(183,'FieldUnicity',1,1,0),(184,'FieldUnicity',80,2,0),(185,'FieldUnicity',4,3,0),(186,'FieldUnicity',3,4,0),(187,'FieldUnicity',86,5,0),(188,'FieldUnicity',30,6,0),(189,'Problem',21,1,0),(190,'Problem',12,2,0),(191,'Problem',19,3,0),(192,'Problem',15,4,0),(193,'Problem',3,5,0),(194,'Problem',7,6,0),(195,'Problem',18,7,0),(196,'Vlan',11,1,0),(197,'TicketRecurrent',11,1,0),(198,'TicketRecurrent',12,2,0),(199,'TicketRecurrent',13,3,0),(200,'TicketRecurrent',15,4,0),(201,'TicketRecurrent',14,5,0),(202,'Reminder',2,1,0),(203,'Reminder',3,2,0),(204,'Reminder',4,3,0),(205,'Reminder',5,4,0),(206,'Reminder',6,5,0),(207,'Reminder',7,6,0),(208,'FQDN',11,1,0),(209,'WifiNetwork',10,1,0),(210,'IPNetwork',18,1,0),(211,'IPNetwork',10,2,0),(212,'IPNetwork',11,3,0),(213,'IPNetwork',12,4,0),(214,'IPNetwork',17,5,0),(215,'NetworkName',12,1,0),(216,'NetworkName',13,2,0),(217,'RSSFeed',2,1,0),(218,'RSSFeed',4,2,0),(219,'RSSFeed',5,3,0),(220,'RSSFeed',19,4,0),(221,'RSSFeed',6,5,0),(222,'RSSFeed',7,6,0),(223,'Blacklist',12,1,0),(224,'Blacklist',11,2,0),(225,'ReservationItem',5,3,0),(226,'QueueMail',16,1,0),(227,'QueueMail',7,2,0),(228,'QueueMail',20,3,0),(229,'QueueMail',21,4,0),(230,'QueueMail',22,5,0),(231,'QueueMail',15,6,0),(232,'Change',12,1,0),(233,'Change',19,2,0),(234,'Change',15,3,0),(235,'Change',7,4,0),(236,'Change',18,5,0),(237,'Project',3,1,0),(238,'Project',4,2,0),(239,'Project',12,3,0),(240,'Project',5,4,0),(241,'Project',15,5,0),(242,'Project',21,6,0),(243,'ProjectState',12,1,0),(244,'ProjectState',11,2,0),(245,'ProjectTask',2,1,0),(246,'ProjectTask',12,2,0),(247,'ProjectTask',14,3,0),(248,'ProjectTask',5,4,0),(249,'ProjectTask',7,5,0),(250,'ProjectTask',8,6,0),(251,'ProjectTask',13,7,0),(252,'CartridgeItem',9,5,0),(253,'ConsumableItem',9,5,0),(254,'ReservationItem',9,4,0),(255,'SoftwareLicense',1,1,0),(256,'SoftwareLicense',3,2,0),(257,'SoftwareLicense',10,3,0),(258,'SoftwareLicense',162,4,0),(259,'SoftwareLicense',5,5,0),(260,'SavedSearch',8,1,0),(261,'SavedSearch',9,1,0),(262,'SavedSearch',3,1,0),(263,'SavedSearch',10,1,0),(264,'SavedSearch',11,1,0),(265,'Plugin',2,1,0),(266,'Plugin',3,2,0),(267,'Plugin',4,3,0),(268,'Plugin',5,4,0),(269,'Plugin',6,5,0),(270,'Plugin',7,6,0),(271,'Plugin',8,7,0),(272,'PluginGenericobjectType',10,1,0),(273,'PluginGenericobjectType',9,2,0),(274,'PluginGenericobjectType',8,3,0),(275,'PluginGenericobjectType',7,4,0),(276,'PluginGenericobjectType',6,5,0),(277,'PluginGenericobjectType',2,6,0),(278,'PluginGenericobjectType',4,7,0),(279,'PluginGenericobjectType',11,8,0),(280,'PluginGenericobjectType',12,9,0),(281,'PluginGenericobjectType',14,10,0),(282,'PluginGenericobjectType',15,11,0),(308,'PluginGenericobjectVpscomp',3,1,0),(309,'PluginGenericobjectVpscomp',136,3,0),(310,'PluginGenericobjectVpscomp',91,2,0),(311,'PluginGenericobjectVpscomp',122,4,0),(317,'PluginGenericobjectVpscomp',133,5,0),(320,'PluginGenericobjectVpscomp',126,7,0),(321,'PluginGenericobjectVpscomp',130,8,0),(322,'PluginGenericobjectVpscomp',123,10,0),(323,'PluginGenericobjectVpscomp',125,11,0),(324,'PluginGenericobjectVpscomp',127,12,0),(325,'PluginGenericobjectVpscomp',128,9,0),(326,'PluginGenericobjectVpscomp',134,13,0),(328,'PluginGenericobjectVpscomp',19,15,0),(330,'Computer',32,11,0),(332,'Computer',24,12,0),(333,'Computer',7,13,0),(334,'Computer',8,14,0),(335,'PluginGenericobjectVpscomp',88,17,0),(336,'PluginGenericobjectVpscomp',129,18,0),(337,'PluginGenericobjectVpscomp',121,19,0),(338,'PluginGenericobjectVpscomp',139,20,0),(339,'PluginGenericobjectVpscomp',87,21,0),(341,'PluginGenericobjectVpscomp',131,22,0),(344,'PluginGenericobjectVpscomp',135,23,0),(345,'PluginGenericobjectVpscomp',137,24,0);
/*!40000 ALTER TABLE `glpi_displaypreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documentcategories`
--

DROP TABLE IF EXISTS `glpi_documentcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documentcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documentcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documentcategories`
--

LOCK TABLES `glpi_documentcategories` WRITE;
/*!40000 ALTER TABLE `glpi_documentcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_documentcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documents`
--

DROP TABLE IF EXISTS `glpi_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(11) NOT NULL DEFAULT '0',
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `sha1sum` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_blacklisted` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `users_id` (`users_id`),
  KEY `documentcategories_id` (`documentcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `sha1sum` (`sha1sum`),
  KEY `tag` (`tag`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documents`
--

LOCK TABLES `glpi_documents` WRITE;
/*!40000 ALTER TABLE `glpi_documents` DISABLE KEYS */;
INSERT INTO `glpi_documents` VALUES (1,0,0,'Документ: Пользователь - Аипов  Тлек','9w0jh0MDNKg.jpg','JPG/0a/4a23ee6e61909a209c071d3cf742cd7bf93baf.JPG',0,'image/jpeg','2019-03-12 06:04:43',NULL,0,NULL,2,0,'0a4a23ee6e61909a209c071d3cf742cd7bf93baf',0,'749a0a43-e5de59b9-5c874bf4e6f548.85314892','2019-03-12 06:04:43');
/*!40000 ALTER TABLE `glpi_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documents_items`
--

DROP TABLE IF EXISTS `glpi_documents_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documents_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documents_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documents_items`
--

LOCK TABLES `glpi_documents_items` WRITE;
/*!40000 ALTER TABLE `glpi_documents_items` DISABLE KEYS */;
INSERT INTO `glpi_documents_items` VALUES (1,1,4,'User',0,0,'2019-03-12 06:04:43',2,0);
/*!40000 ALTER TABLE `glpi_documents_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_documenttypes`
--

DROP TABLE IF EXISTS `glpi_documenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_documenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_uploadable` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ext`),
  KEY `name` (`name`),
  KEY `is_uploadable` (`is_uploadable`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_documenttypes`
--

LOCK TABLES `glpi_documenttypes` WRITE;
/*!40000 ALTER TABLE `glpi_documenttypes` DISABLE KEYS */;
INSERT INTO `glpi_documenttypes` VALUES (1,'JPEG','jpg','jpg-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(2,'PNG','png','png-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(3,'GIF','gif','gif-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(4,'BMP','bmp','bmp-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(5,'Photoshop','psd','psd-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(6,'TIFF','tif','tif-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(7,'AIFF','aiff','aiff-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(8,'Windows Media','asf','asf-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(9,'Windows Media','avi','avi-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(10,'BZip','bz2','bz2-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(11,'Word','doc','doc-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(12,'DjVu','djvu','','',1,'2004-12-13 19:47:21',NULL,NULL),(13,'PostScript','eps','ps-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(14,'GZ','gz','gz-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(15,'HTML','html','html-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(16,'Midi','mid','mid-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(17,'QuickTime','mov','mov-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(18,'MP3','mp3','mp3-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(19,'MPEG','mpg','mpg-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(20,'Ogg Vorbis','ogg','ogg-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(21,'PDF','pdf','pdf-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(22,'PowerPoint','ppt','ppt-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(23,'PostScript','ps','ps-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(24,'QuickTime','qt','qt-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(25,'RealAudio','ra','ra-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(26,'RealAudio','ram','ram-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(27,'RealAudio','rm','rm-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(28,'RTF','rtf','rtf-dist.png','',1,'2004-12-13 19:47:21',NULL,NULL),(29,'StarOffice','sdd','sdd-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(30,'StarOffice','sdw','sdw-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(31,'Stuffit','sit','sit-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(32,'OpenOffice Impress','sxi','sxi-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(33,'OpenOffice','sxw','sxw-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(34,'Flash','swf','swf-dist.png','',1,'2011-12-06 09:48:34',NULL,NULL),(35,'TGZ','tgz','tgz-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(36,'texte','txt','txt-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(37,'WAV','wav','wav-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(38,'Excel','xls','xls-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(39,'XML','xml','xml-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(40,'Windows Media','wmv','wmv-dist.png','',1,'2011-12-06 09:48:34',NULL,NULL),(41,'Zip','zip','zip-dist.png','',1,'2011-12-06 09:48:34',NULL,NULL),(42,'MNG','mng','','',1,'2004-12-13 19:47:22',NULL,NULL),(43,'Adobe Illustrator','ai','ai-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(44,'C source','c','c-dist.png','',1,'2011-12-06 09:48:34',NULL,NULL),(45,'Debian','deb','deb-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(46,'DVI','dvi','dvi-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(47,'C header','h','h-dist.png','',1,'2011-12-06 09:48:34',NULL,NULL),(48,'Pascal','pas','pas-dist.png','',1,'2011-12-06 09:48:34',NULL,NULL),(49,'RedHat/Mandrake/SuSE','rpm','rpm-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(50,'OpenOffice Calc','sxc','sxc-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(51,'LaTeX','tex','tex-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(52,'GIMP multi-layer','xcf','xcf-dist.png','',1,'2004-12-13 19:47:22',NULL,NULL),(53,'JPEG','jpeg','jpg-dist.png','',1,'2005-03-07 22:23:17',NULL,NULL),(54,'Oasis Open Office Writer','odt','odt-dist.png','',1,'2006-01-21 17:41:13',NULL,NULL),(55,'Oasis Open Office Calc','ods','ods-dist.png','',1,'2006-01-21 17:41:31',NULL,NULL),(56,'Oasis Open Office Impress','odp','odp-dist.png','',1,'2006-01-21 17:42:54',NULL,NULL),(57,'Oasis Open Office Impress Template','otp','odp-dist.png','',1,'2006-01-21 17:43:58',NULL,NULL),(58,'Oasis Open Office Writer Template','ott','odt-dist.png','',1,'2006-01-21 17:44:41',NULL,NULL),(59,'Oasis Open Office Calc Template','ots','ods-dist.png','',1,'2006-01-21 17:45:30',NULL,NULL),(60,'Oasis Open Office Math','odf','odf-dist.png','',1,'2006-01-21 17:48:05',NULL,NULL),(61,'Oasis Open Office Draw','odg','odg-dist.png','',1,'2006-01-21 17:48:31',NULL,NULL),(62,'Oasis Open Office Draw Template','otg','odg-dist.png','',1,'2006-01-21 17:49:46',NULL,NULL),(63,'Oasis Open Office Base','odb','odb-dist.png','',1,'2006-01-21 18:03:34',NULL,NULL),(64,'Oasis Open Office HTML','oth','oth-dist.png','',1,'2006-01-21 18:05:27',NULL,NULL),(65,'Oasis Open Office Writer Master','odm','odm-dist.png','',1,'2006-01-21 18:06:34',NULL,NULL),(66,'Oasis Open Office Chart','odc','','',1,'2006-01-21 18:07:48',NULL,NULL),(67,'Oasis Open Office Image','odi','','',1,'2006-01-21 18:08:18',NULL,NULL),(68,'Word XML','docx','doc-dist.png',NULL,1,'2011-01-18 11:40:42',NULL,NULL),(69,'Excel XML','xlsx','xls-dist.png',NULL,1,'2011-01-18 11:40:42',NULL,NULL),(70,'PowerPoint XML','pptx','ppt-dist.png',NULL,1,'2011-01-18 11:40:42',NULL,NULL),(71,'Comma-Separated Values','csv','csv-dist.png',NULL,1,'2011-12-06 09:48:34',NULL,NULL),(72,'Scalable Vector Graphics','svg','svg-dist.png',NULL,1,'2011-12-06 09:48:34',NULL,NULL);
/*!40000 ALTER TABLE `glpi_documenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_domains`
--

DROP TABLE IF EXISTS `glpi_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_domains`
--

LOCK TABLES `glpi_domains` WRITE;
/*!40000 ALTER TABLE `glpi_domains` DISABLE KEYS */;
INSERT INTO `glpi_domains` VALUES (1,'mycloud.kz',0,0,'','2019-03-04 02:32:21','2019-03-04 02:32:21'),(2,'ktcl.kz',0,0,'','2019-03-04 02:32:28','2019-03-04 02:32:28');
/*!40000 ALTER TABLE `glpi_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_dropdowntranslations`
--

DROP TABLE IF EXISTS `glpi_dropdowntranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_dropdowntranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`language`,`field`),
  KEY `typeid` (`itemtype`,`items_id`),
  KEY `language` (`language`),
  KEY `field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_dropdowntranslations`
--

LOCK TABLES `glpi_dropdowntranslations` WRITE;
/*!40000 ALTER TABLE `glpi_dropdowntranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_dropdowntranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_enclosuremodels`
--

DROP TABLE IF EXISTS `glpi_enclosuremodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_enclosuremodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_enclosuremodels`
--

LOCK TABLES `glpi_enclosuremodels` WRITE;
/*!40000 ALTER TABLE `glpi_enclosuremodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_enclosuremodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_enclosures`
--

DROP TABLE IF EXISTS `glpi_enclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_enclosures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enclosuremodels_id` int(11) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `orientation` tinyint(1) DEFAULT NULL,
  `power_supplies` tinyint(1) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `enclosuremodels_id` (`enclosuremodels_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_enclosures`
--

LOCK TABLES `glpi_enclosures` WRITE;
/*!40000 ALTER TABLE `glpi_enclosures` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_enclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities`
--

DROP TABLE IF EXISTS `glpi_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_reply_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_subject_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authldaps_id` int(11) NOT NULL DEFAULT '0',
  `mail_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_ldapfilter` text COLLATE utf8_unicode_ci,
  `mailing_signature` text COLLATE utf8_unicode_ci,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT '-2',
  `use_licenses_alert` int(11) NOT NULL DEFAULT '-2',
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_certificates_alert` int(11) NOT NULL DEFAULT '-2',
  `send_certificates_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_contracts_alert` int(11) NOT NULL DEFAULT '-2',
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_infocoms_alert` int(11) NOT NULL DEFAULT '-2',
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT '-2',
  `use_reservations_alert` int(11) NOT NULL DEFAULT '-2',
  `autoclose_delay` int(11) NOT NULL DEFAULT '-2',
  `notclosed_delay` int(11) NOT NULL DEFAULT '-2',
  `calendars_id` int(11) NOT NULL DEFAULT '-2',
  `auto_assign_mode` int(11) NOT NULL DEFAULT '-2',
  `tickettype` int(11) NOT NULL DEFAULT '-2',
  `max_closedate` datetime DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT '-2',
  `inquest_rate` int(11) NOT NULL DEFAULT '0',
  `inquest_delay` int(11) NOT NULL DEFAULT '-10',
  `inquest_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autofill_warranty_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '-2',
  `entities_id_software` int(11) NOT NULL DEFAULT '-2',
  `default_contract_alert` int(11) NOT NULL DEFAULT '-2',
  `default_infocom_alert` int(11) NOT NULL DEFAULT '-2',
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT '-2',
  `delay_send_emails` int(11) NOT NULL DEFAULT '-2',
  `is_notif_enable_default` int(11) NOT NULL DEFAULT '-2',
  `inquest_duration` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `autofill_decommission_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`name`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities`
--

LOCK TABLES `glpi_entities` WRITE;
/*!40000 ALTER TABLE `glpi_entities` DISABLE KEYS */;
INSERT INTO `glpi_entities` VALUES (0,'ТОО KTCL',-1,'ТОО KTCL',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,-10,0,0,-10,1,NULL,1,0,0,NULL,'0','0','0','0','0',1,-10,0,0,10,10,0,1,0,'2019-03-05 04:21:29',NULL,'0'),(1,'Mycloud',0,'ТОО KTCL > Mycloud',NULL,2,'{\"1\":\"1\"}','[\"0\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,'2019-03-05 04:21:58',-2,0,-10,NULL,'-2','-2','-2','-2','-2',-2,-2,-2,-2,-2,-2,-2,-2,0,'2019-03-05 04:21:58','2019-03-05 04:21:58','-2');
/*!40000 ALTER TABLE `glpi_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities_knowbaseitems`
--

DROP TABLE IF EXISTS `glpi_entities_knowbaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities_knowbaseitems`
--

LOCK TABLES `glpi_entities_knowbaseitems` WRITE;
/*!40000 ALTER TABLE `glpi_entities_knowbaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_entities_knowbaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities_reminders`
--

DROP TABLE IF EXISTS `glpi_entities_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities_reminders`
--

LOCK TABLES `glpi_entities_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_entities_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_entities_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_entities_rssfeeds`
--

DROP TABLE IF EXISTS `glpi_entities_rssfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_entities_rssfeeds`
--

LOCK TABLES `glpi_entities_rssfeeds` WRITE;
/*!40000 ALTER TABLE `glpi_entities_rssfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_entities_rssfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_events`
--

DROP TABLE IF EXISTS `glpi_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `level` (`level`),
  KEY `item` (`type`,`items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_events`
--

LOCK TABLES `glpi_events` WRITE;
/*!40000 ALTER TABLE `glpi_events` DISABLE KEYS */;
INSERT INTO `glpi_events` VALUES (1,-1,'system','2019-03-02 06:32:15','login',3,'Неудачная попытка входа пользователя  с IP 178.88.175.252'),(2,-1,'system','2019-03-02 06:32:43','login',3,'glpi вошел в систему с IP 178.88.175.252'),(3,2,'users','2019-03-02 06:34:26','setup',5,'glpi обновил объект'),(4,5,'users','2019-03-02 06:41:23','setup',5,'glpi обновил объект'),(5,3,'users','2019-03-02 06:42:15','setup',5,'glpi обновил объект'),(6,4,'users','2019-03-02 06:42:59','setup',5,'glpi обновил объект'),(7,3,'users','2019-03-02 06:43:23','setup',5,'glpi обновил объект'),(8,1,'PluginGenericobjectTypeFamily','2019-03-02 06:52:18','setup',4,'glpi добавил объект VPS'),(9,-1,'system','2019-03-02 07:12:49','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(10,1,'Location','2019-03-02 09:59:00','setup',4,'dixon добавил объект АО \\\"Coca-cola\\\"'),(11,1,'State','2019-03-02 10:01:47','setup',4,'dixon добавил объект on'),(12,2,'State','2019-03-02 10:01:59','setup',4,'dixon добавил объект off'),(13,-1,'system','2019-03-04 02:26:30','login',3,'Неудачная попытка входа пользователя  с IP 178.88.175.252'),(14,-1,'system','2019-03-04 02:26:52','login',3,'Неудачная попытка входа пользователя dixon с IP 178.88.175.252'),(15,-1,'system','2019-03-04 02:27:06','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(16,1,'PluginGenericobjectVpso','2019-03-04 02:30:43','setup',4,'d_tailakov добавил объект Ubuntu 18.04'),(17,2,'PluginGenericobjectVpso','2019-03-04 02:31:01','setup',4,'d_tailakov добавил объект Ms Windows 10 64x'),(18,1,'Domain','2019-03-04 02:32:21','setup',4,'d_tailakov добавил объект mycloud.kz'),(19,2,'Domain','2019-03-04 02:32:28','setup',4,'d_tailakov добавил объект ktcl.kz'),(20,0,'networkport','2019-03-04 02:33:34','inventory',5,'d_tailakov добавил несколько сетевых портов'),(21,-1,'system','2019-03-04 06:11:34','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(22,1,'groups','2019-03-04 06:23:23','setup',4,'d_tailakov добавил объект Генеральный директор'),(23,2,'groups','2019-03-04 06:23:44','setup',4,'d_tailakov добавил объект ОРБП'),(24,1,'AutoUpdateSystem','2019-03-04 06:24:56','setup',4,'d_tailakov добавил объект apt'),(25,2,'AutoUpdateSystem','2019-03-04 06:25:01','setup',4,'d_tailakov добавил объект rpm'),(26,3,'AutoUpdateSystem','2019-03-04 06:25:09','setup',4,'d_tailakov добавил объект win upd'),(27,1,'ComputerType','2019-03-04 06:25:26','setup',4,'d_tailakov добавил объект server'),(28,2,'ComputerType','2019-03-04 06:25:32','setup',4,'d_tailakov добавил объект client'),(29,1,'Manufacturer','2019-03-04 06:25:43','setup',4,'d_tailakov добавил объект HP'),(30,2,'Manufacturer','2019-03-04 06:25:49','setup',4,'d_tailakov добавил объект Dell'),(31,3,'Manufacturer','2019-03-04 06:25:57','setup',4,'d_tailakov добавил объект Supermicro'),(32,4,'Manufacturer','2019-03-04 06:26:03','setup',4,'d_tailakov добавил объект Huawei'),(33,1,'ComputerModel','2019-03-04 06:27:44','setup',4,'d_tailakov добавил объект HP DL380'),(34,1,'Network','2019-03-04 06:28:35','setup',4,'d_tailakov добавил объект Zhumalieva_lan1'),(35,1,'computers','2019-03-04 06:28:46','inventory',4,'d_tailakov добавил объект hp-proliant6110'),(36,1,'VirtualMachineType','2019-03-04 06:29:15','setup',4,'d_tailakov добавил объект wmware'),(37,1,'VirtualMachineSystem','2019-03-04 06:29:34','setup',4,'d_tailakov добавил объект kvm'),(38,2,'VirtualMachineType','2019-03-04 06:29:43','setup',4,'d_tailakov добавил объект proxmox'),(39,1,'VirtualMachineState','2019-03-04 06:29:57','setup',4,'d_tailakov добавил объект on'),(40,2,'VirtualMachineState','2019-03-04 06:30:02','setup',4,'d_tailakov добавил объект off'),(41,1,'computers','2019-03-04 06:30:37','inventory',4,'d_tailakov добавил виртуальную машину'),(42,1,'PluginGenericobjectVpso','2019-03-04 09:03:59','setup',4,'d_tailakov добавил объект MS Windows'),(43,1,'PluginGenericobjectRam','2019-03-04 09:44:31','setup',4,'d_tailakov добавил объект 512Mb'),(44,2,'PluginGenericobjectRam','2019-03-04 09:44:35','setup',4,'d_tailakov добавил объект 1Gb'),(45,1,'PluginGenericobjectVpso','2019-03-04 10:50:05','setup',4,'d_tailakov добавил объект MS Windows 10 64x ru'),(46,-1,'system','2019-03-04 10:59:26','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(47,1,'PluginGenericobjectVpslogi','2019-03-04 11:00:03','setup',4,'d_tailakov добавил объект root'),(48,1,'PluginGenericobjectVpspswd','2019-03-04 11:00:34','setup',4,'d_tailakov добавил объект D123f456Z'),(49,1,'PluginGenericobjectVpsmail','2019-03-04 11:26:26','setup',4,'d_tailakov добавил объект d.tailakov@mycloud.kz'),(50,1,'PluginGenericobjectRam','2019-03-04 11:26:54','setup',4,'d_tailakov добавил объект 1Gb'),(51,1,'PluginGenericobjectVpshd','2019-03-04 11:27:34','setup',4,'d_tailakov добавил объект 20Gb'),(52,2,'PluginGenericobjectVpshd','2019-03-04 11:27:39','setup',4,'d_tailakov добавил объект 30Gb'),(53,3,'PluginGenericobjectVpshd','2019-03-04 11:27:45','setup',4,'d_tailakov добавил объект 40Gb'),(54,4,'PluginGenericobjectVpshd','2019-03-04 11:27:50','setup',4,'d_tailakov добавил объект 50Gb'),(55,5,'PluginGenericobjectVpshd','2019-03-04 11:27:55','setup',4,'d_tailakov добавил объект 60Gb'),(56,6,'PluginGenericobjectVpshd','2019-03-04 11:27:59','setup',4,'d_tailakov добавил объект 70Gb'),(57,7,'PluginGenericobjectVpshd','2019-03-04 11:28:03','setup',4,'d_tailakov добавил объект 80Gb'),(58,8,'PluginGenericobjectVpshd','2019-03-04 11:28:08','setup',4,'d_tailakov добавил объект 90Gb'),(59,9,'PluginGenericobjectVpshd','2019-03-04 11:28:12','setup',4,'d_tailakov добавил объект 100Gb'),(60,10,'PluginGenericobjectVpshd','2019-03-04 11:28:16','setup',4,'d_tailakov добавил объект 110Gb'),(61,11,'PluginGenericobjectVpshd','2019-03-04 11:28:21','setup',4,'d_tailakov добавил объект 120Gb'),(62,12,'PluginGenericobjectVpshd','2019-03-04 11:28:26','setup',4,'d_tailakov добавил объект 130Gb'),(63,13,'PluginGenericobjectVpshd','2019-03-04 11:28:31','setup',4,'d_tailakov добавил объект 140Gb'),(64,14,'PluginGenericobjectVpshd','2019-03-04 11:28:36','setup',4,'d_tailakov добавил объект 150Gb'),(65,1,'PluginGenericobjectVpslogi','2019-03-04 11:31:23','setup',4,'d_tailakov добавил объект root'),(66,1,'PluginGenericobjectVpspaswd','2019-03-04 11:32:05','setup',4,'d_tailakov добавил объект Aa123456'),(67,-1,'system','2019-03-05 01:58:42','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(68,1,'PluginGenericobjectVpso','2019-03-05 02:06:34','setup',4,'d_tailakov добавил объект ubuntu18.04'),(69,2,'PluginGenericobjectVpso','2019-03-05 02:07:04','setup',4,'d_tailakov добавил объект M$ Windows10 64x ru'),(70,1,'Entity','2019-03-05 03:03:17','setup',4,'d_tailakov добавил объект ТОО KTCL'),(71,0,'Entity','2019-03-05 03:07:03','setup',4,'d_tailakov обновил объект'),(72,-1,'system','2019-03-05 03:33:06','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(73,0,'Entity','2019-03-05 04:21:29','setup',4,'d_tailakov обновил объект'),(74,1,'Entity','2019-03-05 04:21:58','setup',4,'d_tailakov добавил объект Mycloud'),(75,2,'PluginGenericobjectTypeFamily','2019-03-05 04:47:29','setup',4,'d_tailakov добавил объект VPS'),(76,0,'networkport','2019-03-05 05:57:08','inventory',5,'d_tailakov добавил несколько сетевых портов'),(77,1,'notepad','2019-03-05 05:57:52','tools',4,'d_tailakov добавил объект 1'),(78,1,'PluginGenericobjectVpemail','2019-03-05 06:47:08','setup',4,'d_tailakov добавил объект d.taylakov@ktcl.kz'),(79,1,'PluginGenericobjectVpso','2019-03-05 06:50:17','setup',4,'d_tailakov добавил объект Ubuntu 18.04 64x'),(80,2,'PluginGenericobjectVpso','2019-03-05 06:50:34','setup',4,'d_tailakov добавил объект MS Windows 10 64x ru'),(81,1,'PluginGenericobjectVppasword','2019-03-05 06:50:53','setup',4,'d_tailakov добавил объект Стандартный'),(82,1,'PluginGenericobjectVplogin','2019-03-05 06:51:06','setup',4,'d_tailakov добавил объект root'),(83,1,'KnowbaseItemCategory','2019-03-05 06:59:21','setup',4,'d_tailakov добавил объект Срочное реагирование'),(84,1,'ITILCategory','2019-03-05 07:00:02','setup',4,'d_tailakov добавил объект Срочно!'),(85,1,'problem','2019-03-05 07:00:34','maintain',4,'d_tailakov добавил объект '),(86,1,'ticket','2019-03-05 07:03:12','tracking',4,'d_tailakov добавил объект 1'),(87,1,'FQDN','2019-03-05 07:06:38','setup',4,'d_tailakov добавил объект mycloud.kz'),(88,12,'networkport','2019-03-05 07:06:46','inventory',5,'d_tailakov добавляет элемент'),(89,1,'ContractType','2019-03-05 08:17:37','setup',4,'d_tailakov добавил объект типовой'),(90,1,'contracts','2019-03-05 08:17:54','financial',4,'d_tailakov добавил объект 112/2'),(91,1,'contracts','2019-03-05 08:19:48','financial',4,'d_tailakov добавил связь с объектом'),(92,1,'contracts','2019-03-05 08:40:50','financial',4,'d_tailakov добавил связь с объектом'),(93,-1,'system','2019-03-05 08:53:39','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(94,1,'UserTitle','2019-03-05 09:35:42','setup',4,'d_tailakov добавил объект Системный Администратор'),(95,1,'UserCategory','2019-03-05 09:36:10','setup',4,'d_tailakov добавил объект ЦОД'),(96,6,'users','2019-03-05 09:36:52','setup',4,'d_tailakov добавил объект e_raiys'),(97,-1,'system','2019-03-05 09:38:19','login',3,'Неудачная попытка входа пользователя r_erbol с IP 178.88.175.252'),(98,-1,'system','2019-03-05 09:40:00','login',3,'Неудачная попытка входа пользователя r_erbol с IP 178.88.175.252'),(99,6,'users','2019-03-05 09:41:23','setup',5,'d_tailakov обновил объект'),(100,-1,'system','2019-03-05 09:41:41','login',3,'erbol вошел в систему с IP 178.88.175.252'),(101,-1,'system','2019-03-05 09:42:42','login',3,'erbol вошел в систему с IP 178.88.175.252'),(102,6,'users','2019-03-05 09:45:06','setup',5,'erbol обновил объект'),(103,2,'UserTitle','2019-03-05 10:05:10','setup',4,'d_tailakov добавил объект Системный Аналитик'),(104,3,'UserTitle','2019-03-05 10:05:29','setup',4,'d_tailakov добавил объект Ведущий специалист'),(105,7,'users','2019-03-05 10:06:24','setup',4,'d_tailakov добавил объект t_muratkhanova'),(106,-1,'system','2019-03-05 10:10:42','login',3,'t_muratkhanova вошел в систему с IP 178.88.175.252'),(107,2,'Location','2019-03-05 10:14:18','setup',4,'t_muratkhanova добавил объект KTCL - центральный офис'),(108,3,'Location','2019-03-05 10:15:03','setup',4,'t_muratkhanova добавил объект ЦОД г. Алматы пос. Алатау'),(109,3,'groups','2019-03-05 10:16:25','setup',4,'t_muratkhanova добавил объект Сетевой отдел'),(110,1,'RackType','2019-03-05 10:16:50','setup',4,'t_muratkhanova добавил объект Сетевой шкаф'),(111,1,'RackModel','2019-03-05 10:18:48','setup',4,'t_muratkhanova добавил объект Серверный шкаф'),(112,1,'racks','2019-03-05 10:20:13','inventory',4,'t_muratkhanova добавил объект шкаф 1.1'),(113,2,'UserCategory','2019-03-05 10:24:53','setup',4,'d_tailakov добавил объект ОРБП'),(114,7,'users','2019-03-05 10:26:42','setup',4,'d_tailakov добавил пользователя в организацию'),(115,-1,'system','2019-03-05 10:36:51','login',3,'t_muratkhanova вошел в систему с IP 178.88.175.252'),(116,8,'users','2019-03-05 10:55:25','setup',4,'d_tailakov добавил объект a_dosmagambetov'),(117,8,'users','2019-03-05 10:56:27','setup',5,'d_tailakov обновил объект'),(118,-1,'system','2019-03-05 10:59:11','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(119,-1,'system','2019-03-05 11:04:02','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(120,1,'Computer','2019-03-05 11:05:17','inventory',4,'a_dosmagambetov добавил том'),(121,-1,'system','2019-03-05 11:06:50','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(122,-1,'system','2019-03-06 02:52:45','login',3,'t_muratkhanova вошел в систему с IP 178.88.175.252'),(123,-1,'system','2019-03-06 03:36:11','login',3,'t_muratkhanova вошел в систему с IP 178.88.175.252'),(124,-1,'system','2019-03-06 03:40:02','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(125,-1,'system','2019-03-06 03:47:50','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(126,-1,'system','2019-03-06 03:56:06','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(127,-1,'system','2019-03-06 03:58:41','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(128,-1,'system','2019-03-06 04:05:48','login',3,'a_dosmagambetov вошел в систему с IP 178.88.175.252'),(129,-1,'system','2019-03-06 04:09:55','login',3,'Неудачная попытка входа пользователя Ельдар с IP 178.88.175.252'),(130,2,'computers','2019-03-06 04:12:05','inventory',4,'a_dosmagambetov добавил объект win10'),(131,13,'networkport','2019-03-06 04:13:44','inventory',5,'a_dosmagambetov добавляет элемент'),(132,0,'networkport','2019-03-06 04:14:55','inventory',5,'a_dosmagambetov добавил несколько сетевых портов'),(133,1,'networkequipment','2019-03-06 04:15:54','inventory',4,'a_dosmagambetov добавил объект microtik-1'),(134,0,'networkport','2019-03-06 04:16:15','inventory',5,'a_dosmagambetov добавил несколько сетевых портов'),(135,15,'networkport','2019-03-06 04:17:19','inventory',4,'a_dosmagambetov обновил объект'),(136,2,'contracts','2019-03-06 04:25:17','financial',4,'d_tailakov добавил объект 113.2'),(137,2,'contracts','2019-03-06 04:25:28','financial',4,'d_tailakov добавил связь с объектом'),(138,3,'PluginGenericobjectVpso','2019-03-06 04:26:07','setup',4,'d_tailakov добавил объект Centos 7.1'),(139,-1,'system','2019-03-06 05:22:39','login',3,'raiys вошел в систему с IP 178.88.175.252'),(140,9,'users','2019-03-06 05:24:49','setup',4,'raiys добавил объект n_remizov'),(141,-1,'system','2019-03-06 05:25:09','login',3,'Неудачная попытка входа пользователя n.remizov с IP 178.88.175.252'),(142,-1,'system','2019-03-06 05:25:25','login',3,'n_remizov вошел в систему с IP 178.88.175.252'),(143,-1,'system','2019-03-06 05:26:40','login',3,'raiys вошел в систему с IP 178.88.175.252'),(144,-1,'system','2019-03-06 06:18:38','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(145,6,'users','2019-03-06 07:39:23','setup',4,'d_tailakov добавил пользователя в организацию'),(146,9,'users','2019-03-06 07:40:14','setup',4,'d_tailakov добавил пользователя в организацию'),(147,31,'networkport','2019-03-06 09:41:27','inventory',5,'d_tailakov добавляет элемент'),(148,31,'networkport','2019-03-06 09:41:54','inventory',4,'d_tailakov обновил объект'),(149,0,'networkport','2019-03-06 09:42:50','inventory',5,'d_tailakov добавил несколько сетевых портов'),(150,-1,'system','2019-03-06 09:53:52','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(151,-1,'system','2019-03-06 10:04:46','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(152,-1,'system','2019-03-06 10:10:47','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(153,-1,'system','2019-03-06 10:53:22','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(154,-1,'system','2019-03-06 11:08:59','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(155,-1,'system','2019-03-06 11:11:13','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(156,-1,'system','2019-03-11 07:46:36','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(157,-1,'system','2019-03-11 09:28:04','login',3,'Неудачная попытка входа пользователя d_tailakov с IP 178.88.175.252'),(158,-1,'system','2019-03-11 09:28:17','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(159,-1,'system','2019-03-11 11:29:01','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(160,-1,'system','2019-03-11 11:40:33','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(161,-1,'system','2019-03-12 02:04:55','login',3,'Неудачная попытка входа пользователя  с IP 178.88.175.252'),(162,-1,'system','2019-03-12 02:05:02','login',3,'Неудачная попытка входа пользователя t_lovazov с IP 178.88.175.252'),(163,-1,'system','2019-03-12 02:05:28','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(164,-1,'system','2019-03-12 04:48:22','login',3,'Неудачная попытка входа пользователя d_tailakov с IP 178.88.175.252'),(165,-1,'system','2019-03-12 04:48:41','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(166,7,'users','2019-03-12 04:49:25','setup',5,'d_tailakov обновил объект'),(167,7,'users','2019-03-12 04:49:43','setup',4,'d_tailakov добавил пользователя в организацию'),(168,4,'Location','2019-03-12 04:59:55','setup',4,'d_tailakov добавил объект Жумалиева 108'),(169,2,'users','2019-03-12 05:00:15','setup',5,'d_tailakov обновил объект'),(170,2,'users','2019-03-12 05:01:00','setup',5,'d_tailakov обновил объект'),(171,2,'users','2019-03-12 05:01:26','setup',4,'d_tailakov добавил пользователя в группу'),(172,1,'groups','2019-03-12 05:04:03','setup',4,'d_tailakov обновил объект'),(173,3,'groups','2019-03-12 05:05:06','setup',4,'d_tailakov обновил объект'),(174,1,'datacenters','2019-03-12 05:06:25','inventory',4,'d_tailakov добавил объект ЦОД KTCL п.Алатау'),(175,2,'State','2019-03-12 05:09:31','setup',4,'d_tailakov обновил объект'),(176,1,'State','2019-03-12 05:09:44','setup',4,'d_tailakov обновил объект'),(177,2,'State','2019-03-12 05:09:59','setup',4,'d_tailakov обновил объект'),(178,8,'users','2019-03-12 05:43:12','setup',5,'d_tailakov обновил объект'),(179,1,'documents','2019-03-12 06:04:43','document',4,'d_tailakov добавил связь с объектом'),(180,1,'documents','2019-03-12 06:04:43','login',4,'d_tailakov добавил объект Документ: Пользователь - Аипов  Тлек'),(181,9,'users','2019-03-12 09:08:21','setup',5,'d_tailakov обновил объект'),(182,9,'users','2019-03-12 09:08:37','setup',4,'d_tailakov добавил пользователя в группу'),(183,3,'groups','2019-03-12 09:10:31','setup',4,'d_tailakov обновил объект'),(184,-1,'system','2019-03-12 10:57:09','login',3,'d_tailakov вошел в систему с IP 178.88.175.252'),(185,-1,'system','2019-03-12 10:57:59','login',3,'Неудачная попытка входа пользователя t_aipov с IP 178.88.175.252'),(186,-1,'system','2019-03-12 10:58:25','login',3,'t_aipov вошел в систему с IP 178.88.175.252'),(187,-1,'system','2019-03-12 11:02:32','login',3,'t_aipov вошел в систему с IP 178.88.175.252'),(188,-1,'system','2019-03-12 11:03:33','login',3,'t_aipov вошел в систему с IP 178.88.175.252'),(189,1,'computers','2019-03-12 11:04:22','inventory',4,'t_aipov обновил объект'),(190,-1,'system','2019-03-12 11:12:21','login',3,'t_aipov вошел в систему с IP 178.88.175.252');
/*!40000 ALTER TABLE `glpi_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_fieldblacklists`
--

DROP TABLE IF EXISTS `glpi_fieldblacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_fieldblacklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_fieldblacklists`
--

LOCK TABLES `glpi_fieldblacklists` WRITE;
/*!40000 ALTER TABLE `glpi_fieldblacklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_fieldblacklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_fieldunicities`
--

DROP TABLE IF EXISTS `glpi_fieldunicities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_fieldunicities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `fields` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `action_refuse` tinyint(1) NOT NULL DEFAULT '0',
  `action_notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores field unicity criterias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_fieldunicities`
--

LOCK TABLES `glpi_fieldunicities` WRITE;
/*!40000 ALTER TABLE `glpi_fieldunicities` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_fieldunicities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_filesystems`
--

DROP TABLE IF EXISTS `glpi_filesystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_filesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_filesystems`
--

LOCK TABLES `glpi_filesystems` WRITE;
/*!40000 ALTER TABLE `glpi_filesystems` DISABLE KEYS */;
INSERT INTO `glpi_filesystems` VALUES (1,'ext',NULL,NULL,NULL),(2,'ext2',NULL,NULL,NULL),(3,'ext3',NULL,NULL,NULL),(4,'ext4',NULL,NULL,NULL),(5,'FAT',NULL,NULL,NULL),(6,'FAT32',NULL,NULL,NULL),(7,'VFAT',NULL,NULL,NULL),(8,'HFS',NULL,NULL,NULL),(9,'HPFS',NULL,NULL,NULL),(10,'HTFS',NULL,NULL,NULL),(11,'JFS',NULL,NULL,NULL),(12,'JFS2',NULL,NULL,NULL),(13,'NFS',NULL,NULL,NULL),(14,'NTFS',NULL,NULL,NULL),(15,'ReiserFS',NULL,NULL,NULL),(16,'SMBFS',NULL,NULL,NULL),(17,'UDF',NULL,NULL,NULL),(18,'UFS',NULL,NULL,NULL),(19,'XFS',NULL,NULL,NULL),(20,'ZFS',NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_filesystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_fqdns`
--

DROP TABLE IF EXISTS `glpi_fqdns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_fqdns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `fqdn` (`fqdn`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_fqdns`
--

LOCK TABLES `glpi_fqdns` WRITE;
/*!40000 ALTER TABLE `glpi_fqdns` DISABLE KEYS */;
INSERT INTO `glpi_fqdns` VALUES (1,0,0,'mycloud.kz','mycloud.kz','','2019-03-05 07:06:38','2019-03-05 07:06:38');
/*!40000 ALTER TABLE `glpi_fqdns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups`
--

DROP TABLE IF EXISTS `glpi_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ldap_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8_unicode_ci,
  `ldap_group_dn` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_requester` tinyint(1) NOT NULL DEFAULT '1',
  `is_watcher` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(1) NOT NULL DEFAULT '1',
  `is_task` tinyint(1) NOT NULL DEFAULT '1',
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `is_itemgroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_usergroup` tinyint(1) NOT NULL DEFAULT '1',
  `is_manager` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `ldap_field` (`ldap_field`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `ldap_value` (`ldap_value`(200)),
  KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  KEY `groups_id` (`groups_id`),
  KEY `is_requester` (`is_requester`),
  KEY `is_watcher` (`is_watcher`),
  KEY `is_assign` (`is_assign`),
  KEY `is_notify` (`is_notify`),
  KEY `is_itemgroup` (`is_itemgroup`),
  KEY `is_usergroup` (`is_usergroup`),
  KEY `is_manager` (`is_manager`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups`
--

LOCK TABLES `glpi_groups` WRITE;
/*!40000 ALTER TABLE `glpi_groups` DISABLE KEYS */;
INSERT INTO `glpi_groups` VALUES (1,0,0,'ТОО KTCL','Головной офис',NULL,NULL,NULL,'2019-03-12 05:04:03',0,'ТОО KTCL',1,'[]',NULL,1,1,1,0,1,1,1,1,'2019-03-04 06:23:23'),(2,0,0,'ОРБП','Отдел разработки',NULL,NULL,NULL,'2019-03-04 06:23:44',1,'ТОО KTCL > ОРБП',2,'{\"1\":\"1\"}',NULL,1,1,1,0,1,1,1,1,'2019-03-04 06:23:44'),(3,0,0,'СТП ЦОД','СТП ЦОД',NULL,NULL,NULL,'2019-03-12 05:05:06',1,'ТОО KTCL > СТП ЦОД',2,'{\"1\":\"1\"}','{\"3\":\"3\"}',1,1,1,0,1,1,1,1,'2019-03-05 10:16:25');
/*!40000 ALTER TABLE `glpi_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_knowbaseitems`
--

DROP TABLE IF EXISTS `glpi_groups_knowbaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_knowbaseitems`
--

LOCK TABLES `glpi_groups_knowbaseitems` WRITE;
/*!40000 ALTER TABLE `glpi_groups_knowbaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_knowbaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_problems`
--

DROP TABLE IF EXISTS `glpi_groups_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_problems`
--

LOCK TABLES `glpi_groups_problems` WRITE;
/*!40000 ALTER TABLE `glpi_groups_problems` DISABLE KEYS */;
INSERT INTO `glpi_groups_problems` VALUES (1,1,2,1);
/*!40000 ALTER TABLE `glpi_groups_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_reminders`
--

DROP TABLE IF EXISTS `glpi_groups_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_reminders`
--

LOCK TABLES `glpi_groups_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_groups_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_rssfeeds`
--

DROP TABLE IF EXISTS `glpi_groups_rssfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_rssfeeds`
--

LOCK TABLES `glpi_groups_rssfeeds` WRITE;
/*!40000 ALTER TABLE `glpi_groups_rssfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_groups_rssfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_tickets`
--

DROP TABLE IF EXISTS `glpi_groups_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_tickets`
--

LOCK TABLES `glpi_groups_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_groups_tickets` DISABLE KEYS */;
INSERT INTO `glpi_groups_tickets` VALUES (1,1,2,2),(2,1,2,3);
/*!40000 ALTER TABLE `glpi_groups_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_groups_users`
--

DROP TABLE IF EXISTS `glpi_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_groups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0',
  `is_userdelegate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_manager` (`is_manager`),
  KEY `is_userdelegate` (`is_userdelegate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_groups_users`
--

LOCK TABLES `glpi_groups_users` WRITE;
/*!40000 ALTER TABLE `glpi_groups_users` DISABLE KEYS */;
INSERT INTO `glpi_groups_users` VALUES (1,2,2,0,1,0),(2,9,3,0,1,0);
/*!40000 ALTER TABLE `glpi_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_holidays`
--

DROP TABLE IF EXISTS `glpi_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_perpetual` (`is_perpetual`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_holidays`
--

LOCK TABLES `glpi_holidays` WRITE;
/*!40000 ALTER TABLE `glpi_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_infocoms`
--

DROP TABLE IF EXISTS `glpi_infocoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_infocoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT '0',
  `warranty_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immo_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `warranty_value` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sink_time` int(11) NOT NULL DEFAULT '0',
  `sink_type` int(11) NOT NULL DEFAULT '0',
  `sink_coeff` float NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `bill` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `alert` int(11) NOT NULL DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `decommission_date` datetime DEFAULT NULL,
  `businesscriticities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `buy_date` (`buy_date`),
  KEY `alert` (`alert`),
  KEY `budgets_id` (`budgets_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `businesscriticities_id` (`businesscriticities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_infocoms`
--

LOCK TABLES `glpi_infocoms` WRITE;
/*!40000 ALTER TABLE `glpi_infocoms` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_infocoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_interfacetypes`
--

DROP TABLE IF EXISTS `glpi_interfacetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_interfacetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_interfacetypes`
--

LOCK TABLES `glpi_interfacetypes` WRITE;
/*!40000 ALTER TABLE `glpi_interfacetypes` DISABLE KEYS */;
INSERT INTO `glpi_interfacetypes` VALUES (1,'IDE',NULL,NULL,NULL),(2,'SATA',NULL,NULL,NULL),(3,'SCSI',NULL,NULL,NULL),(4,'USB',NULL,NULL,NULL),(5,'AGP','',NULL,NULL),(6,'PCI','',NULL,NULL),(7,'PCIe','',NULL,NULL),(8,'PCI-X','',NULL,NULL);
/*!40000 ALTER TABLE `glpi_interfacetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ipaddresses`
--

DROP TABLE IF EXISTS `glpi_ipaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ipaddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `version` tinyint(3) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_0` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_1` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_2` int(10) unsigned NOT NULL DEFAULT '0',
  `binary_3` int(10) unsigned NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `mainitems_id` int(11) NOT NULL DEFAULT '0',
  `mainitemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `textual` (`name`),
  KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  KEY `mainitem` (`mainitemtype`,`mainitems_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ipaddresses`
--

LOCK TABLES `glpi_ipaddresses` WRITE;
/*!40000 ALTER TABLE `glpi_ipaddresses` DISABLE KEYS */;
INSERT INTO `glpi_ipaddresses` VALUES (1,0,1,'NetworkName',4,'192.168.1.1',0,0,65535,3232235777,0,0,1,'PluginGenericobjectVpscomp'),(2,0,2,'NetworkName',4,'192.168.1.2',0,0,65535,3232235778,0,0,2,'PluginGenericobjectVpscomp');
/*!40000 ALTER TABLE `glpi_ipaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ipaddresses_ipnetworks`
--

DROP TABLE IF EXISTS `glpi_ipaddresses_ipnetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddresses_id` int(11) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ipaddresses_id`,`ipnetworks_id`),
  KEY `ipnetworks_id` (`ipnetworks_id`),
  KEY `ipaddresses_id` (`ipaddresses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ipaddresses_ipnetworks`
--

LOCK TABLES `glpi_ipaddresses_ipnetworks` WRITE;
/*!40000 ALTER TABLE `glpi_ipaddresses_ipnetworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ipaddresses_ipnetworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ipnetworks`
--

DROP TABLE IF EXISTS `glpi_ipnetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ipnetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `addressable` tinyint(1) NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_0` int(10) unsigned NOT NULL DEFAULT '0',
  `address_1` int(10) unsigned NOT NULL DEFAULT '0',
  `address_2` int(10) unsigned NOT NULL DEFAULT '0',
  `address_3` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `netmask_0` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_1` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_2` int(10) unsigned NOT NULL DEFAULT '0',
  `netmask_3` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_0` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_1` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_2` int(10) unsigned NOT NULL DEFAULT '0',
  `gateway_3` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `network_definition` (`entities_id`,`address`,`netmask`),
  KEY `address` (`address_0`,`address_1`,`address_2`,`address_3`),
  KEY `netmask` (`netmask_0`,`netmask_1`,`netmask_2`,`netmask_3`),
  KEY `gateway` (`gateway_0`,`gateway_1`,`gateway_2`,`gateway_3`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ipnetworks`
--

LOCK TABLES `glpi_ipnetworks` WRITE;
/*!40000 ALTER TABLE `glpi_ipnetworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ipnetworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ipnetworks_vlans`
--

DROP TABLE IF EXISTS `glpi_ipnetworks_vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipnetworks_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`ipnetworks_id`,`vlans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ipnetworks_vlans`
--

LOCK TABLES `glpi_ipnetworks_vlans` WRITE;
/*!40000 ALTER TABLE `glpi_ipnetworks_vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ipnetworks_vlans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicebatteries`
--

DROP TABLE IF EXISTS `glpi_items_devicebatteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicebatteries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicebatteries_id` int(11) NOT NULL DEFAULT '0',
  `manufacturing_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicebatteries_id` (`devicebatteries_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicebatteries`
--

LOCK TABLES `glpi_items_devicebatteries` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicebatteries` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicebatteries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicecases`
--

DROP TABLE IF EXISTS `glpi_items_devicecases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicecases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecases_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicecases_id` (`devicecases_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicecases`
--

LOCK TABLES `glpi_items_devicecases` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicecases` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicecases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicecontrols`
--

DROP TABLE IF EXISTS `glpi_items_devicecontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicecontrols_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicecontrols_id` (`devicecontrols_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicecontrols`
--

LOCK TABLES `glpi_items_devicecontrols` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicecontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicecontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicedrives`
--

DROP TABLE IF EXISTS `glpi_items_devicedrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicedrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicedrives_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicedrives_id` (`devicedrives_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicedrives`
--

LOCK TABLES `glpi_items_devicedrives` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicedrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicedrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicefirmwares`
--

DROP TABLE IF EXISTS `glpi_items_devicefirmwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicefirmwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicefirmwares_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicefirmwares_id` (`devicefirmwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicefirmwares`
--

LOCK TABLES `glpi_items_devicefirmwares` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicefirmwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicefirmwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicegenerics`
--

DROP TABLE IF EXISTS `glpi_items_devicegenerics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicegenerics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegenerics_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicegenerics_id` (`devicegenerics_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicegenerics`
--

LOCK TABLES `glpi_items_devicegenerics` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicegenerics` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicegenerics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicegraphiccards`
--

DROP TABLE IF EXISTS `glpi_items_devicegraphiccards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicegraphiccards_id` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  KEY `specificity` (`memory`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicegraphiccards`
--

LOCK TABLES `glpi_items_devicegraphiccards` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicegraphiccards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicegraphiccards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_deviceharddrives`
--

DROP TABLE IF EXISTS `glpi_items_deviceharddrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceharddrives_id` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `deviceharddrives_id` (`deviceharddrives_id`),
  KEY `specificity` (`capacity`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_deviceharddrives`
--

LOCK TABLES `glpi_items_deviceharddrives` WRITE;
/*!40000 ALTER TABLE `glpi_items_deviceharddrives` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_deviceharddrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicememories`
--

DROP TABLE IF EXISTS `glpi_items_devicememories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicememories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicememories_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicememories_id` (`devicememories_id`),
  KEY `specificity` (`size`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicememories`
--

LOCK TABLES `glpi_items_devicememories` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicememories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicememories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicemotherboards`
--

DROP TABLE IF EXISTS `glpi_items_devicemotherboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicemotherboards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicemotherboards_id` (`devicemotherboards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicemotherboards`
--

LOCK TABLES `glpi_items_devicemotherboards` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicemotherboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicemotherboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicenetworkcards`
--

DROP TABLE IF EXISTS `glpi_items_devicenetworkcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  KEY `specificity` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicenetworkcards`
--

LOCK TABLES `glpi_items_devicenetworkcards` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicenetworkcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicenetworkcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicepcis`
--

DROP TABLE IF EXISTS `glpi_items_devicepcis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicepcis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepcis_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicepcis_id` (`devicepcis_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicepcis`
--

LOCK TABLES `glpi_items_devicepcis` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicepcis` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicepcis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicepowersupplies`
--

DROP TABLE IF EXISTS `glpi_items_devicepowersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicepowersupplies_id` (`devicepowersupplies_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicepowersupplies`
--

LOCK TABLES `glpi_items_devicepowersupplies` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicepowersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicepowersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_deviceprocessors`
--

DROP TABLE IF EXISTS `glpi_items_deviceprocessors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceprocessors_id` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `deviceprocessors_id` (`deviceprocessors_id`),
  KEY `specificity` (`frequency`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `nbcores` (`nbcores`),
  KEY `nbthreads` (`nbthreads`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_deviceprocessors`
--

LOCK TABLES `glpi_items_deviceprocessors` WRITE;
/*!40000 ALTER TABLE `glpi_items_deviceprocessors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_deviceprocessors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicesensors`
--

DROP TABLE IF EXISTS `glpi_items_devicesensors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicesensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesensors_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicesensors_id` (`devicesensors_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicesensors`
--

LOCK TABLES `glpi_items_devicesensors` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicesensors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicesensors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicesimcards`
--

DROP TABLE IF EXISTS `glpi_items_devicesimcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicesimcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `devicesimcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `lines_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pin2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `puk` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `puk2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `devicesimcards_id` (`devicesimcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `states_id` (`states_id`),
  KEY `locations_id` (`locations_id`),
  KEY `lines_id` (`lines_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicesimcards`
--

LOCK TABLES `glpi_items_devicesimcards` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicesimcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicesimcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_devicesoundcards`
--

DROP TABLE IF EXISTS `glpi_items_devicesoundcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `devicesoundcards_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `busID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `computers_id` (`items_id`),
  KEY `devicesoundcards_id` (`devicesoundcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_devicesoundcards`
--

LOCK TABLES `glpi_items_devicesoundcards` WRITE;
/*!40000 ALTER TABLE `glpi_items_devicesoundcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_devicesoundcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_disks`
--

DROP TABLE IF EXISTS `glpi_items_disks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_disks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mountpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT '0',
  `totalsize` int(11) NOT NULL DEFAULT '0',
  `freesize` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `device` (`device`),
  KEY `mountpoint` (`mountpoint`),
  KEY `totalsize` (`totalsize`),
  KEY `freesize` (`freesize`),
  KEY `itemtype` (`itemtype`),
  KEY `items_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `filesystems_id` (`filesystems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_disks`
--

LOCK TABLES `glpi_items_disks` WRITE;
/*!40000 ALTER TABLE `glpi_items_disks` DISABLE KEYS */;
INSERT INTO `glpi_items_disks` VALUES (1,0,'Computer',1,'1Tb','/dev/sdb1','/dev/sdb1',4,1000000,500000,0,0,'2019-03-05 11:05:17','2019-03-05 11:05:17');
/*!40000 ALTER TABLE `glpi_items_disks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_enclosures`
--

DROP TABLE IF EXISTS `glpi_items_enclosures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_enclosures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enclosures_id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`),
  KEY `relation` (`enclosures_id`,`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_enclosures`
--

LOCK TABLES `glpi_items_enclosures` WRITE;
/*!40000 ALTER TABLE `glpi_items_enclosures` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_enclosures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_operatingsystems`
--

DROP TABLE IF EXISTS `glpi_items_operatingsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_operatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemservicepacks_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemarchitectures_id` int(11) NOT NULL DEFAULT '0',
  `operatingsystemkernelversions_id` int(11) NOT NULL DEFAULT '0',
  `license_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operatingsystemeditions_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`items_id`,`itemtype`,`operatingsystems_id`,`operatingsystemarchitectures_id`),
  KEY `items_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  KEY `operatingsystemarchitectures_id` (`operatingsystemarchitectures_id`),
  KEY `operatingsystemkernelversions_id` (`operatingsystemkernelversions_id`),
  KEY `operatingsystemeditions_id` (`operatingsystemeditions_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_operatingsystems`
--

LOCK TABLES `glpi_items_operatingsystems` WRITE;
/*!40000 ALTER TABLE `glpi_items_operatingsystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_operatingsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_problems`
--

DROP TABLE IF EXISTS `glpi_items_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_problems`
--

LOCK TABLES `glpi_items_problems` WRITE;
/*!40000 ALTER TABLE `glpi_items_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_projects`
--

DROP TABLE IF EXISTS `glpi_items_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_projects`
--

LOCK TABLES `glpi_items_projects` WRITE;
/*!40000 ALTER TABLE `glpi_items_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_racks`
--

DROP TABLE IF EXISTS `glpi_items_racks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `racks_id` int(11) NOT NULL,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `orientation` tinyint(1) DEFAULT NULL,
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hpos` tinyint(1) NOT NULL DEFAULT '0',
  `is_reserved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`,`is_reserved`),
  KEY `relation` (`racks_id`,`itemtype`,`items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_racks`
--

LOCK TABLES `glpi_items_racks` WRITE;
/*!40000 ALTER TABLE `glpi_items_racks` DISABLE KEYS */;
INSERT INTO `glpi_items_racks` VALUES (1,1,'Computer',1,30,0,'#dd6f47',0,0),(2,1,'NetworkEquipment',1,32,0,'#69ceba',0,0);
/*!40000 ALTER TABLE `glpi_items_racks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_items_tickets`
--

DROP TABLE IF EXISTS `glpi_items_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_items_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_items_tickets`
--

LOCK TABLES `glpi_items_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_items_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_items_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_itilcategories`
--

DROP TABLE IF EXISTS `glpi_itilcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_itilcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `tickettemplates_id_incident` int(11) NOT NULL DEFAULT '0',
  `tickettemplates_id_demand` int(11) NOT NULL DEFAULT '0',
  `is_incident` int(11) NOT NULL DEFAULT '1',
  `is_request` int(11) NOT NULL DEFAULT '1',
  `is_problem` int(11) NOT NULL DEFAULT '1',
  `is_change` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  KEY `is_incident` (`is_incident`),
  KEY `is_request` (`is_request`),
  KEY `is_problem` (`is_problem`),
  KEY `is_change` (`is_change`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_itilcategories`
--

LOCK TABLES `glpi_itilcategories` WRITE;
/*!40000 ALTER TABLE `glpi_itilcategories` DISABLE KEYS */;
INSERT INTO `glpi_itilcategories` VALUES (1,0,0,0,'Срочно!','Срочно!','',1,1,0,0,'[]',NULL,1,0,0,1,1,1,1,'2019-03-05 07:00:02','2019-03-05 07:00:02');
/*!40000 ALTER TABLE `glpi_itilcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_itilfollowups`
--

DROP TABLE IF EXISTS `glpi_itilfollowups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_itilfollowups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  `sourceitems_id` int(11) NOT NULL DEFAULT '0',
  `sourceof_items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `item_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `is_private` (`is_private`),
  KEY `requesttypes_id` (`requesttypes_id`),
  KEY `sourceitems_id` (`sourceitems_id`),
  KEY `sourceof_items_id` (`sourceof_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_itilfollowups`
--

LOCK TABLES `glpi_itilfollowups` WRITE;
/*!40000 ALTER TABLE `glpi_itilfollowups` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_itilfollowups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_itils_projects`
--

DROP TABLE IF EXISTS `glpi_itils_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_itils_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`projects_id`),
  KEY `projects_id` (`projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_itils_projects`
--

LOCK TABLES `glpi_itils_projects` WRITE;
/*!40000 ALTER TABLE `glpi_itils_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_itils_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_itilsolutions`
--

DROP TABLE IF EXISTS `glpi_itilsolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_itilsolutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `solutiontype_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_approval` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_approval` int(11) NOT NULL DEFAULT '0',
  `user_name_approval` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `itilfollowups_id` int(11) DEFAULT NULL COMMENT 'Followup reference on reject or approve a solution',
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `item_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_approval` (`users_id_approval`),
  KEY `status` (`status`),
  KEY `itilfollowups_id` (`itilfollowups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_itilsolutions`
--

LOCK TABLES `glpi_itilsolutions` WRITE;
/*!40000 ALTER TABLE `glpi_itilsolutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_itilsolutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitemcategories`
--

DROP TABLE IF EXISTS `glpi_knowbaseitemcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitemcategories`
--

LOCK TABLES `glpi_knowbaseitemcategories` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitemcategories` DISABLE KEYS */;
INSERT INTO `glpi_knowbaseitemcategories` VALUES (1,0,0,0,'Срочное реагирование','Срочное реагирование','',1,NULL,'[]','2019-03-05 06:59:21','2019-03-05 06:59:21');
/*!40000 ALTER TABLE `glpi_knowbaseitemcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `is_faq` (`is_faq`),
  KEY `date_mod` (`date_mod`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  FULLTEXT KEY `fulltext` (`name`,`answer`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `answer` (`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems`
--

LOCK TABLES `glpi_knowbaseitems` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_comments`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_comments`
--

LOCK TABLES `glpi_knowbaseitems_comments` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_items`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`knowbaseitems_id`),
  KEY `itemtype` (`itemtype`),
  KEY `item_id` (`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_items`
--

LOCK TABLES `glpi_knowbaseitems_items` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_profiles`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_profiles`
--

LOCK TABLES `glpi_knowbaseitems_profiles` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_revisions`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`knowbaseitems_id`,`revision`,`language`),
  KEY `revision` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_revisions`
--

LOCK TABLES `glpi_knowbaseitems_revisions` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitems_users`
--

DROP TABLE IF EXISTS `glpi_knowbaseitems_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitems_users`
--

LOCK TABLES `glpi_knowbaseitems_users` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitems_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitems_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_knowbaseitemtranslations`
--

DROP TABLE IF EXISTS `glpi_knowbaseitemtranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_knowbaseitemtranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `answer` longtext COLLATE utf8_unicode_ci,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`knowbaseitems_id`,`language`),
  KEY `users_id` (`users_id`),
  FULLTEXT KEY `fulltext` (`name`,`answer`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `answer` (`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_knowbaseitemtranslations`
--

LOCK TABLES `glpi_knowbaseitemtranslations` WRITE;
/*!40000 ALTER TABLE `glpi_knowbaseitemtranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_knowbaseitemtranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_lineoperators`
--

DROP TABLE IF EXISTS `glpi_lineoperators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_lineoperators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci,
  `mcc` int(11) DEFAULT NULL,
  `mnc` int(11) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`mcc`,`mnc`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_lineoperators`
--

LOCK TABLES `glpi_lineoperators` WRITE;
/*!40000 ALTER TABLE `glpi_lineoperators` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_lineoperators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_lines`
--

DROP TABLE IF EXISTS `glpi_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `caller_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `caller_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `lineoperators_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `linetypes_id` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `users_id` (`users_id`),
  KEY `lineoperators_id` (`lineoperators_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_lines`
--

LOCK TABLES `glpi_lines` WRITE;
/*!40000 ALTER TABLE `glpi_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_linetypes`
--

DROP TABLE IF EXISTS `glpi_linetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_linetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_linetypes`
--

LOCK TABLES `glpi_linetypes` WRITE;
/*!40000 ALTER TABLE `glpi_linetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_linetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_links`
--

DROP TABLE IF EXISTS `glpi_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `open_window` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_links`
--

LOCK TABLES `glpi_links` WRITE;
/*!40000 ALTER TABLE `glpi_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_links_itemtypes`
--

DROP TABLE IF EXISTS `glpi_links_itemtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_links_itemtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `links_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  KEY `links_id` (`links_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_links_itemtypes`
--

LOCK TABLES `glpi_links_itemtypes` WRITE;
/*!40000 ALTER TABLE `glpi_links_itemtypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_links_itemtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_locations`
--

DROP TABLE IF EXISTS `glpi_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  KEY `locations_id` (`locations_id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_locations`
--

LOCK TABLES `glpi_locations` WRITE;
/*!40000 ALTER TABLE `glpi_locations` DISABLE KEYS */;
INSERT INTO `glpi_locations` VALUES (1,0,0,'АО \"Coca-cola\"',0,'АО \"Coca-cola\"','',1,'[]','{\"1\":\"1\"}','Калдаякова','050036','Алматы','','Казахстан','36','','43.36312895068202','76.90050213407012','','2019-03-02 09:59:00','2019-03-02 09:59:00'),(2,0,0,'KTCL - центральный офис',0,'KTCL - центральный офис','',1,'[]','{\"2\":\"2\",\"4\":\"4\",\"3\":\"3\"}','Курмангазы','','','','','','','','','','2019-03-05 10:14:18','2019-03-05 10:14:18'),(3,0,0,'ЦОД г. Алматы пос. Алатау',2,'KTCL - центральный офис > ЦОД г. Алматы пос. Алатау','',2,'{\"2\":\"2\"}','{\"3\":\"3\"}','пос. Алатау','','','','','','','','','','2019-03-05 10:15:03','2019-03-05 10:15:03'),(4,0,0,'Жумалиева 108',2,'KTCL - центральный офис > Жумалиева 108','',2,'{\"2\":\"2\"}',NULL,'Жумалиева','','Алматы','','','108','','','','','2019-03-12 04:59:55','2019-03-12 04:59:55');
/*!40000 ALTER TABLE `glpi_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_logs`
--

DROP TABLE IF EXISTS `glpi_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT '0' COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `itemtype_link` (`itemtype_link`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `id_search_option` (`id_search_option`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_logs`
--

LOCK TABLES `glpi_logs` WRITE;
/*!40000 ALTER TABLE `glpi_logs` DISABLE KEYS */;
INSERT INTO `glpi_logs` VALUES (1,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-02 06:34:26',1,'glpi','d_tailakov'),(2,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-02 06:34:26',34,'','Dmitry'),(3,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-02 06:34:26',9,'','Tailakov'),(4,'User',5,'',0,'Dmitry Tailakov (2)','2019-03-02 06:41:23',1,'normal','a_kabylkhanov'),(5,'User',5,'',0,'Dmitry Tailakov (2)','2019-03-02 06:41:23',34,'','Kabylkhanov '),(6,'User',5,'',0,'Dmitry Tailakov (2)','2019-03-02 06:41:23',9,'','Adylzhan'),(7,'User',3,'',0,'Dmitry Tailakov (2)','2019-03-02 06:42:15',1,'post-only','t_lovazov'),(8,'User',3,'',0,'Dmitry Tailakov (2)','2019-03-02 06:42:15',34,'','Lovazov'),(9,'User',3,'',0,'Dmitry Tailakov (2)','2019-03-02 06:42:15',9,'','Takhir'),(10,'User',4,'',0,'Dmitry Tailakov (2)','2019-03-02 06:42:59',1,'tech','t_aipov'),(11,'User',4,'',0,'Dmitry Tailakov (2)','2019-03-02 06:42:59',34,'','Аипов '),(12,'User',4,'',0,'Dmitry Tailakov (2)','2019-03-02 06:42:59',9,'','Тлек'),(13,'Profile',1,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (893)'),(14,'ProfileRight',893,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(15,'Profile',2,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (894)'),(16,'ProfileRight',894,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(17,'Profile',3,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (895)'),(18,'ProfileRight',895,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(19,'Profile',4,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (896)'),(20,'ProfileRight',896,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(21,'Profile',5,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (897)'),(22,'ProfileRight',897,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(23,'Profile',6,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (898)'),(24,'ProfileRight',898,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(25,'Profile',7,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (899)'),(26,'ProfileRight',899,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(27,'Profile',8,'ProfileRight',17,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'','plugin_genericobject_types (900)'),(28,'ProfileRight',900,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:49:54',0,'',''),(33,'PluginGenericobjectTypeFamily',1,'0',20,'Dmitry Tailakov (2)','2019-03-02 06:52:18',0,'',''),(40,'Location',1,'0',20,'Dmitry Tailakov (2)','2019-03-02 09:59:00',0,'',''),(41,'State',1,'0',20,'Dmitry Tailakov (2)','2019-03-02 10:01:47',0,'',''),(42,'State',1,'State',17,'Dmitry Tailakov (2)','2019-03-02 10:01:59',0,'','off'),(43,'State',2,'0',20,'Dmitry Tailakov (2)','2019-03-02 10:01:59',0,'',''),(45,'PluginGenericobjectVpso',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 02:30:43',0,'',''),(46,'PluginGenericobjectVpso',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 02:31:01',0,'',''),(47,'Domain',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 02:32:21',0,'',''),(48,'Domain',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 02:32:28',0,'',''),(83,'Group',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:23:23',0,'',''),(84,'Group',1,'Group',17,'Dmitry Tailakov (2)','2019-03-04 06:23:44',0,'','ОРБП'),(85,'Group',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:23:44',0,'',''),(86,'AutoUpdateSystem',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:24:56',0,'',''),(87,'AutoUpdateSystem',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:01',0,'',''),(88,'AutoUpdateSystem',3,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:09',0,'',''),(89,'ComputerType',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:26',0,'',''),(90,'ComputerType',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:32',0,'',''),(91,'Manufacturer',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:43',0,'',''),(92,'Manufacturer',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:49',0,'',''),(93,'Manufacturer',3,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:25:57',0,'',''),(94,'Manufacturer',4,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:26:03',0,'',''),(95,'ComputerModel',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:27:44',0,'',''),(96,'Network',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:28:35',0,'',''),(97,'Computer',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:28:46',0,'',''),(98,'VirtualMachineType',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:29:15',0,'',''),(99,'VirtualMachineSystem',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:29:34',0,'',''),(100,'VirtualMachineType',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:29:43',0,'',''),(101,'VirtualMachineState',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:29:57',0,'',''),(102,'VirtualMachineState',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:30:02',0,'',''),(103,'Computer',1,'ComputerVirtualMachine',17,'Dmitry Tailakov (2)','2019-03-04 06:30:37',0,'','vps01 (1)'),(104,'ComputerVirtualMachine',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 06:30:37',0,'',''),(109,'PluginGenericobjectVpso',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 09:03:59',0,'',''),(118,'PluginGenericobjectRam',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 09:44:31',0,'',''),(119,'PluginGenericobjectRam',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 09:44:35',0,'',''),(140,'PluginGenericobjectVpso',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 10:50:05',0,'',''),(145,'PluginGenericobjectVpslogi',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:00:03',0,'',''),(146,'PluginGenericobjectVpspswd',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:00:34',0,'',''),(151,'PluginGenericobjectVpsmail',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:26:26',0,'',''),(152,'PluginGenericobjectRam',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:26:54',0,'',''),(153,'PluginGenericobjectVpshd',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:27:34',0,'',''),(154,'PluginGenericobjectVpshd',2,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:27:39',0,'',''),(155,'PluginGenericobjectVpshd',3,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:27:45',0,'',''),(156,'PluginGenericobjectVpshd',4,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:27:50',0,'',''),(157,'PluginGenericobjectVpshd',5,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:27:55',0,'',''),(158,'PluginGenericobjectVpshd',6,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:27:59',0,'',''),(159,'PluginGenericobjectVpshd',7,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:03',0,'',''),(160,'PluginGenericobjectVpshd',8,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:08',0,'',''),(161,'PluginGenericobjectVpshd',9,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:12',0,'',''),(162,'PluginGenericobjectVpshd',10,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:16',0,'',''),(163,'PluginGenericobjectVpshd',11,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:21',0,'',''),(164,'PluginGenericobjectVpshd',12,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:26',0,'',''),(165,'PluginGenericobjectVpshd',13,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:31',0,'',''),(166,'PluginGenericobjectVpshd',14,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:28:36',0,'',''),(167,'PluginGenericobjectVpslogi',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:31:23',0,'',''),(168,'PluginGenericobjectVpspaswd',1,'0',20,'Dmitry Tailakov (2)','2019-03-04 11:32:05',0,'',''),(169,'PluginGenericobjectVpso',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 02:06:34',0,'',''),(170,'PluginGenericobjectVpso',2,'0',20,'Dmitry Tailakov (2)','2019-03-05 02:07:04',0,'',''),(194,'Entity',0,'',0,'Dmitry Tailakov (2)','2019-03-05 04:21:29',14,'Root entity','ТОО KTCL'),(195,'Entity',0,'',0,'Dmitry Tailakov (2)','2019-03-05 04:21:29',1,'Root entity','ТОО KTCL'),(196,'Entity',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 04:21:58',0,'',''),(202,'PluginGenericobjectTypeFamily',2,'0',20,'Dmitry Tailakov (2)','2019-03-05 04:47:29',0,'',''),(223,'PluginGenericobjectType',27,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:43:19',0,'',''),(224,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-05 06:43:59',5,'0','1'),(225,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-05 06:43:59',6,'0','1'),(226,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-05 06:43:59',9,'0','1'),(227,'PluginGenericobjectVpscomp',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:45:22',0,'',''),(228,'PluginGenericobjectVpemail',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:47:08',0,'',''),(229,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:47:26',127,'&nbsp; (0)','d.taylakov@ktcl.kz (1)'),(230,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:47:26',128,'&nbsp; ()','&nbsp; (4Gb)'),(231,'PluginGenericobjectVpso',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:50:17',0,'',''),(232,'PluginGenericobjectVpso',2,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:50:34',0,'',''),(233,'PluginGenericobjectVppasword',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:50:53',0,'',''),(234,'PluginGenericobjectVplogin',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:51:06',0,'',''),(235,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',129,'','https://lotus.ktcl.kz/RSProj%5CPublic%5CBRD%5Cbrd_orbp.nsf/%24%24OpenDominoDocument.xsp?documentId=A5010136A5ABCB61462583B3001510EF&action=readDocument'),(236,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',130,'&nbsp; ()','&nbsp; (40Gb)'),(237,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',131,'','2019-03-01'),(238,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',132,'','2020-04-01'),(239,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',133,'&nbsp; (0)','d_tailakov (2)'),(240,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',134,'&nbsp; (0)','Ubuntu 18.04 64x (1)'),(241,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',135,'&nbsp; (0)','root (1)'),(242,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',136,'&nbsp; (0)','Стандартный (1)'),(243,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 06:51:37',137,'&nbsp; (0)','on (1)'),(244,'KnowbaseItemCategory',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 06:59:21',0,'',''),(245,'ITILCategory',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 07:00:02',0,'',''),(246,'Problem',1,'User',15,'Dmitry Tailakov (2)','2019-03-05 07:00:34',0,'','Dmitry Tailakov (2)'),(247,'Problem',1,'User',15,'Dmitry Tailakov (2)','2019-03-05 07:00:34',0,'','Lovazov Takhir (3)'),(248,'Problem',1,'User',15,'Dmitry Tailakov (2)','2019-03-05 07:00:34',0,'','Аипов  Тлек (4)'),(249,'Problem',1,'Group',15,'Dmitry Tailakov (2)','2019-03-05 07:00:34',0,'','ОРБП (2)'),(250,'Problem',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 07:00:34',0,'',''),(251,'Ticket',1,'',0,'Dmitry Tailakov (2)','2019-03-05 07:03:12',150,'0','25392'),(252,'Ticket',1,'TicketTask',17,'Dmitry Tailakov (2)','2019-03-05 07:03:12',0,'','1'),(253,'Ticket',1,'User',15,'Dmitry Tailakov (2)','2019-03-05 07:03:12',4,'','Dmitry Tailakov (2)'),(254,'Ticket',1,'User',15,'Dmitry Tailakov (2)','2019-03-05 07:03:12',66,'','Kabylkhanov  Adylzhan (5)'),(255,'Ticket',1,'User',15,'Dmitry Tailakov (2)','2019-03-05 07:03:12',5,'','Dmitry Tailakov (2)'),(256,'Ticket',1,'Group',15,'Dmitry Tailakov (2)','2019-03-05 07:03:12',8,'','ОРБП (2)'),(257,'Ticket',1,'Group',15,'Dmitry Tailakov (2)','2019-03-05 07:03:12',65,'','ОРБП (2)'),(258,'Ticket',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 07:03:12',0,'',''),(259,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-05 07:04:52',6,'1','0'),(260,'FQDN',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 07:06:38',0,'',''),(261,'NetworkName',1,'IPAddress',17,'Dmitry Tailakov (2)','2019-03-05 07:06:46',0,'','192.168.1.1 (1)'),(262,'NetworkPort',12,'NetworkName',17,'Dmitry Tailakov (2)','2019-03-05 07:06:46',0,'','N/A (1)'),(263,'NetworkName',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 07:06:46',0,'',''),(264,'NetworkPort',12,'0',20,'Dmitry Tailakov (2)','2019-03-05 07:06:46',0,'',''),(265,'PluginGenericobjectVpscomp',1,'',0,'Dmitry Tailakov (2)','2019-03-05 08:06:02',129,'https://lotus.ktcl.kz/RSProj%5CPublic%5CBRD%5Cbrd_orbp.nsf/%24%24OpenDominoDocument.xsp?documentId=A5010136A5ABCB61462583B3001510EF&action=readDocument','lotus.ktcl.kz/RSProj%5CPublic%5CBRD%5Cbrd_orbp.nsf/%24%24OpenDominoDocument.xsp?documentId=A5010136A5ABCB61462583B3001510EF&action=readDocument'),(266,'ContractType',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 08:17:37',0,'',''),(267,'Contract',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 08:17:54',0,'',''),(268,'Contract',1,'Computer',15,'Dmitry Tailakov (2)','2019-03-05 08:19:48',0,'','hp-proliant6110 (1)'),(269,'Computer',1,'Contract',15,'Dmitry Tailakov (2)','2019-03-05 08:19:48',0,'','112/2 (1)'),(270,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-05 08:40:19',16,'0','1'),(271,'Contract',1,'Computer',16,'Dmitry Tailakov (2)','2019-03-05 08:40:39',0,'hp-proliant6110 (1)',''),(272,'Computer',1,'Contract',16,'Dmitry Tailakov (2)','2019-03-05 08:40:39',0,'112/2 (1)',''),(273,'Contract',1,'PluginGenericobjectVpscomp',15,'Dmitry Tailakov (2)','2019-03-05 08:40:50',0,'','test1 (1)'),(274,'PluginGenericobjectVpscomp',1,'Contract',15,'Dmitry Tailakov (2)','2019-03-05 08:40:50',0,'','112/2 (1)'),(275,'UserTitle',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 09:35:42',0,'',''),(276,'UserCategory',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 09:36:10',0,'',''),(277,'User',6,'UserEmail',17,'Dmitry Tailakov (2)','2019-03-05 09:36:52',0,'','e.raiys@ktcl.kz (1)'),(278,'UserEmail',1,'0',20,'Dmitry Tailakov (2)','2019-03-05 09:36:52',0,'',''),(279,'User',6,'Profile',17,'Dmitry Tailakov (2)','2019-03-05 09:36:52',0,'','Super-Admin (4)'),(280,'User',6,'0',20,'Dmitry Tailakov (2)','2019-03-05 09:36:52',0,'',''),(281,'User',6,'',0,'Dmitry Tailakov (2)','2019-03-05 09:41:23',1,'e_raiys','erbol'),(282,'User',6,'',0,'Райыс Ербол (6)','2019-03-05 09:45:06',1,'erbol','raiys'),(283,'UserTitle',2,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:05:10',0,'',''),(284,'UserTitle',3,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:05:29',0,'',''),(285,'User',7,'UserEmail',17,'Dmitry Tailakov (2)','2019-03-05 10:06:24',0,'','t.muratkhanova@mycloud.kz (2)'),(286,'UserEmail',2,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:06:24',0,'',''),(287,'User',7,'Profile',17,'Dmitry Tailakov (2)','2019-03-05 10:06:24',0,'','Admin (3)'),(288,'User',7,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:06:24',0,'',''),(289,'Location',2,'0',20,'Муратханова  Толганай (7)','2019-03-05 10:14:18',0,'',''),(290,'Location',2,'Location',17,'Муратханова  Толганай (7)','2019-03-05 10:15:03',0,'','ЦОД г. Алматы пос. Алатау'),(291,'Location',3,'0',20,'Муратханова  Толганай (7)','2019-03-05 10:15:03',0,'',''),(292,'Group',1,'Group',17,'Муратханова  Толганай (7)','2019-03-05 10:16:25',0,'','Сетевой отдел'),(293,'Group',3,'0',20,'Муратханова  Толганай (7)','2019-03-05 10:16:25',0,'',''),(294,'RackType',1,'0',20,'Муратханова  Толганай (7)','2019-03-05 10:16:50',0,'',''),(295,'RackModel',1,'0',20,'Муратханова  Толганай (7)','2019-03-05 10:18:48',0,'',''),(296,'Rack',1,'0',20,'Муратханова  Толганай (7)','2019-03-05 10:20:13',0,'',''),(297,'UserCategory',2,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:24:53',0,'',''),(298,'User',7,'Profile',17,'Dmitry Tailakov (2)','2019-03-05 10:26:42',0,'','Technician (6)'),(299,'User',7,'Profile',19,'Dmitry Tailakov (2)','2019-03-05 10:27:43',0,'Admin (3)',''),(300,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',26,'127','0'),(301,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',27,'127','0'),(302,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',129,'31','0'),(303,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',21,'127','0'),(304,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',25,'127','0'),(305,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',28,'127','0'),(306,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',24,'127','0'),(307,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:28:47',22,'127','0'),(308,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:29:48',1,'Technician','Сетевой Администратор'),(309,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:29:58',129,'0','31'),(310,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',87,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\",\"Line\",\"DCRoom\",\"Rack\",\"Enclosure\"]'),(311,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',115,'1151','0'),(312,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',79,'1','0'),(313,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',112,'1121','0'),(314,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',85,'1','0'),(315,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',102,'166919','0'),(316,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',119,'23','0'),(317,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:32:01',103,'1','0'),(318,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:33:35',86,'3','0'),(319,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:34:23',32,'96','127'),(320,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:34:23',31,'127','0'),(321,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 10:36:16',42,'0','7'),(322,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:45:17',1,'Observer','Администратор VPS'),(323,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:48:27',87,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\",\"SoftwareLicense\",\"Certificate\",\"Line\",\"DCRoom\",\"Rack\",\"Enclosure\"]'),(324,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:48:27',115,'1057','1143'),(325,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:48:27',79,'1','0'),(326,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:48:27',112,'1057','1151'),(327,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:48:27',85,'1','0'),(328,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:48:27',102,'168989','177181'),(329,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:19',101,'33','32'),(330,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:19',32,'33','127'),(331,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:19',31,'33','32'),(332,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:19',33,'1','0'),(333,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:59',64,'0','23'),(334,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:59',34,'10241','15383'),(335,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:59',63,'1','23'),(336,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:59',36,'1025','1055'),(337,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:49:59',120,'1','23'),(338,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:51:45',107,'0','23'),(339,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:51:45',42,'0','3'),(340,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:51:45',46,'1','23'),(341,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 10:51:45',106,'0','23'),(342,'User',8,'UserEmail',17,'Dmitry Tailakov (2)','2019-03-05 10:55:25',0,'','a.dosmagambetov@mycloud.kz (3)'),(343,'UserEmail',3,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:55:25',0,'',''),(344,'User',8,'Profile',17,'Dmitry Tailakov (2)','2019-03-05 10:55:25',0,'','Администратор VPS (2)'),(345,'User',8,'0',20,'Dmitry Tailakov (2)','2019-03-05 10:55:25',0,'',''),(346,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',26,'33','0'),(347,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',20,'33','127'),(348,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',27,'33','0'),(349,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',129,'1','0'),(350,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',21,'33','0'),(351,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',23,'33','127'),(352,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',25,'33','0'),(353,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',28,'33','0'),(354,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',24,'33','0'),(355,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:01:05',22,'33','127'),(356,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:06',86,'1','0'),(357,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:06',115,'1143','0'),(358,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:06',112,'1151','0'),(359,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:06',102,'177181','0'),(360,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:06',119,'1','0'),(361,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:38',36,'1055','0'),(362,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:02:38',120,'23','0'),(363,'Computer',1,'Item_Disk',17,'Dosmagambetov  Anuar (8)','2019-03-05 11:05:17',0,'','1Tb (1)'),(364,'Item_Disk',1,'0',20,'Dosmagambetov  Anuar (8)','2019-03-05 11:05:17',0,'',''),(365,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-05 11:06:43',31,'32','0'),(366,'PluginGenericobjectVpscomp',2,'0',20,'Dosmagambetov  Anuar (8)','2019-03-05 11:09:28',0,'',''),(367,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:19:43',129,'31','0'),(368,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:20:50',36,'1055','0'),(369,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:20:50',120,'23','0'),(370,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:21:46',107,'0','23'),(371,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:21:46',44,'0','1'),(372,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:21:46',46,'0','23'),(373,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:21:46',106,'0','23'),(374,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:21:46',45,'0','23'),(375,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-05 11:22:49',112,'0','1151'),(376,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:51:05',64,'23','0'),(377,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:51:33',59,'0','3191'),(378,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:52:13',91,'0','23'),(379,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:53:56',44,'0','23'),(380,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:53:56',42,'3','23'),(381,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:58:01',49,'0','23'),(382,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:58:01',50,'0','23'),(383,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:58:01',105,'0','23'),(384,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:58:01',51,'0','23'),(385,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:58:01',48,'0','1047'),(386,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 03:58:01',60,'0','23'),(387,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-06 04:01:57',56,'2049','6159'),(388,'Computer',2,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:12:05',0,'',''),(389,'NetworkPort',13,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:13:44',0,'','N/A (2)'),(390,'NetworkPort',13,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:13:44',0,'',''),(391,'NetworkPort',14,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'','N/A (3)'),(392,'NetworkPort',14,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'',''),(393,'NetworkPort',15,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'','N/A (4)'),(394,'NetworkPort',15,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'',''),(395,'NetworkPort',16,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'','N/A (5)'),(396,'NetworkPort',16,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'',''),(397,'NetworkPort',17,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'','N/A (6)'),(398,'NetworkPort',17,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'',''),(399,'NetworkPort',18,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'','N/A (7)'),(400,'NetworkPort',18,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'',''),(401,'NetworkPort',19,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'','N/A (8)'),(402,'NetworkPort',19,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:14:55',0,'',''),(403,'NetworkEquipment',1,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:15:54',0,'',''),(404,'NetworkPort',20,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (9)'),(405,'NetworkPort',20,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(406,'NetworkPort',21,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (10)'),(407,'NetworkPort',21,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(408,'NetworkPort',22,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (11)'),(409,'NetworkPort',22,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(410,'NetworkPort',23,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (12)'),(411,'NetworkPort',23,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(412,'NetworkPort',24,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (13)'),(413,'NetworkPort',24,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(414,'NetworkPort',25,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (14)'),(415,'NetworkPort',25,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(416,'NetworkPort',26,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (15)'),(417,'NetworkPort',26,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(418,'NetworkPort',27,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (16)'),(419,'NetworkPort',27,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(420,'NetworkPort',28,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (17)'),(421,'NetworkPort',28,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(422,'NetworkPort',29,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (18)'),(423,'NetworkPort',29,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(424,'NetworkPort',30,'NetworkPortEthernet',17,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'','N/A (19)'),(425,'NetworkPort',30,'0',20,'Dosmagambetov  Anuar (8)','2019-03-06 04:16:15',0,'',''),(426,'NetworkPort',15,'NetworkPort',7,'Dosmagambetov  Anuar (8)','2019-03-06 04:17:19',0,'','microtik-1 - 01 (21)'),(427,'NetworkPort',21,'NetworkPort',7,'Dosmagambetov  Anuar (8)','2019-03-06 04:17:19',0,'','ubuntu8.04 Coca-Cola - eth-01 (15)'),(428,'Rack',1,'Computer',15,'Dmitry Tailakov (2)','2019-03-06 04:20:50',0,'','hp-proliant6110 (1)'),(429,'Computer',1,'Rack',15,'Dmitry Tailakov (2)','2019-03-06 04:20:50',0,'','шкаф 1.1 (1)'),(430,'Rack',1,'Item_Rack#position',21,'Dmitry Tailakov (2)','2019-03-06 04:20:54',0,'12','24'),(431,'Computer',1,'Item_Rack#position',21,'Dmitry Tailakov (2)','2019-03-06 04:20:54',0,'12','24'),(432,'Rack',1,'Item_Rack#position',21,'Dmitry Tailakov (2)','2019-03-06 04:20:55',0,'24','30'),(433,'Computer',1,'Item_Rack#position',21,'Dmitry Tailakov (2)','2019-03-06 04:20:55',0,'24','30'),(434,'Rack',1,'NetworkEquipment',15,'Dmitry Tailakov (2)','2019-03-06 04:21:30',0,'','microtik-1 (1)'),(435,'NetworkEquipment',1,'Rack',15,'Dmitry Tailakov (2)','2019-03-06 04:21:30',0,'','шкаф 1.1 (1)'),(436,'Contract',2,'0',20,'Dmitry Tailakov (2)','2019-03-06 04:25:17',0,'',''),(437,'Contract',2,'PluginGenericobjectVpscomp',15,'Dmitry Tailakov (2)','2019-03-06 04:25:28',0,'','ubuntu8.04 Coca-Cola (2)'),(438,'PluginGenericobjectVpscomp',2,'Contract',15,'Dmitry Tailakov (2)','2019-03-06 04:25:28',0,'','113.2 (2)'),(439,'PluginGenericobjectVpso',3,'0',20,'Dmitry Tailakov (2)','2019-03-06 04:26:07',0,'',''),(440,'PluginGenericobjectVpscomp',2,'',0,'Dmitry Tailakov (2)','2019-03-06 04:26:24',134,'Ubuntu 18.04 64x (1)','Centos 7.1 (3)'),(441,'PluginGenericobjectVpscomp',2,'',0,'Dmitry Tailakov (2)','2019-03-06 04:26:24',16,'','Комент1'),(442,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-06 04:27:06',6,'0','1'),(443,'User',9,'UserEmail',17,'Райыс Ербол (6)','2019-03-06 05:24:49',0,'','n.remizov@ktcl.kz (4)'),(444,'UserEmail',4,'0',20,'Райыс Ербол (6)','2019-03-06 05:24:49',0,'',''),(445,'User',9,'Profile',17,'Райыс Ербол (6)','2019-03-06 05:24:49',0,'','Supervisor (7)'),(446,'User',9,'0',20,'Райыс Ербол (6)','2019-03-06 05:24:49',0,'',''),(447,'PluginGenericobjectVpscomp',3,'0',20,'Dmitry Tailakov (2)','2019-03-06 07:32:05',0,'',''),(448,'User',6,'Profile',17,'Dmitry Tailakov (2)','2019-03-06 07:39:23',0,'','Администратор VPS (2)'),(449,'User',6,'Profile',19,'Dmitry Tailakov (2)','2019-03-06 07:39:34',0,'Super-Admin (4)',''),(450,'User',9,'Profile',17,'Dmitry Tailakov (2)','2019-03-06 07:40:14',0,'','Администратор VPS (2)'),(451,'User',9,'Profile',19,'Dmitry Tailakov (2)','2019-03-06 07:40:23',0,'Supervisor (7)',''),(452,'NetworkPort',31,'NetworkPortAggregate',17,'Dmitry Tailakov (2)','2019-03-06 09:41:27',0,'','N/A (1)'),(453,'NetworkName',2,'IPAddress',17,'Dmitry Tailakov (2)','2019-03-06 09:41:27',0,'','192.168.1.2 (2)'),(454,'NetworkPort',31,'NetworkName',17,'Dmitry Tailakov (2)','2019-03-06 09:41:27',0,'','N/A (2)'),(455,'NetworkName',2,'0',20,'Dmitry Tailakov (2)','2019-03-06 09:41:27',0,'',''),(456,'NetworkPort',31,'0',20,'Dmitry Tailakov (2)','2019-03-06 09:41:27',0,'',''),(457,'NetworkPort',31,'',0,'Dmitry Tailakov (2)','2019-03-06 09:41:54',3,'-2','2'),(458,'NetworkPort',31,'',0,'Dmitry Tailakov (2)','2019-03-06 09:41:54',1,'2','VLAN-2'),(459,'PluginGenericobjectVpscomp',2,'NetworkPort',18,'Dmitry Tailakov (2)','2019-03-06 09:41:54',0,'-2','2'),(460,'PluginGenericobjectVpscomp',2,'NetworkPort',18,'Dmitry Tailakov (2)','2019-03-06 09:41:54',0,'2','VLAN-2'),(461,'NetworkPort',31,'NetworkPortAggregate',18,'Dmitry Tailakov (2)','2019-03-06 09:41:54',0,'[\"14\"]','[\"14\"]'),(462,'NetworkPort',32,'0',20,'Dmitry Tailakov (2)','2019-03-06 09:42:50',0,'',''),(463,'NetworkPort',33,'0',20,'Dmitry Tailakov (2)','2019-03-06 09:42:50',0,'',''),(464,'NetworkPort',34,'0',20,'Dmitry Tailakov (2)','2019-03-06 09:42:50',0,'',''),(465,'NetworkPort',35,'0',20,'Dmitry Tailakov (2)','2019-03-06 09:42:50',0,'',''),(466,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-11 11:30:33',6,'1','0'),(467,'PluginGenericobjectType',27,'',0,'Dmitry Tailakov (2)','2019-03-11 11:30:33',16,'1','0'),(468,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-12 02:56:57',47,'0','3'),(469,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-12 02:56:57',52,'1024','3072'),(470,'Profile',2,'',0,'Dmitry Tailakov (2)','2019-03-12 02:56:57',45,'1','23'),(471,'User',7,'Profile',17,'Dmitry Tailakov (2)','2019-03-12 04:49:43',0,'','Super-Admin (4)'),(472,'User',7,'Profile',19,'Dmitry Tailakov (2)','2019-03-12 04:49:53',0,'Сетевой Администратор (6)',''),(473,'Location',2,'Location',17,'Dmitry Tailakov (2)','2019-03-12 04:59:55',0,'','Жумалиева 108'),(474,'Location',4,'0',20,'Dmitry Tailakov (2)','2019-03-12 04:59:55',0,'',''),(475,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:01:00',82,'&nbsp; (0)','ОРБП (2)'),(476,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:01:00',81,'&nbsp; (0)','Ведущий специалист (3)'),(477,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:01:00',3,'&nbsp; (0)','KTCL - центральный офис > Жумалиева 108 (4)'),(478,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:01:00',20,'&nbsp; (0)','Super-Admin (4)'),(479,'User',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:01:00',80,'ТОО KTCL (0)','ТОО KTCL > Mycloud (1)'),(480,'User',2,'UserEmail',17,'Dmitry Tailakov (2)','2019-03-12 05:01:00',0,'','d.tailakov@mycloud.kz (5)'),(481,'UserEmail',5,'0',20,'Dmitry Tailakov (2)','2019-03-12 05:01:00',0,'',''),(482,'User',2,'Group',15,'Dmitry Tailakov (2)','2019-03-12 05:01:26',0,'','ОРБП (2)'),(483,'Group',2,'User',15,'Dmitry Tailakov (2)','2019-03-12 05:01:26',0,'','Dmitry Tailakov (2)'),(484,'Group',1,'',0,'Dmitry Tailakov (2)','2019-03-12 05:04:03',14,'Генеральный директор','ТОО KTCL'),(485,'Group',1,'',0,'Dmitry Tailakov (2)','2019-03-12 05:04:03',16,'Нуркатов Арнур Арыстанович','Головной офис'),(486,'Group',1,'',0,'Dmitry Tailakov (2)','2019-03-12 05:04:03',1,'Генеральный директор','ТОО KTCL'),(487,'Group',3,'',0,'Dmitry Tailakov (2)','2019-03-12 05:05:06',14,'Сетевой отдел','СТП ЦОД'),(488,'Group',3,'',0,'Dmitry Tailakov (2)','2019-03-12 05:05:06',16,'','СТП ЦОД'),(489,'Group',3,'',0,'Dmitry Tailakov (2)','2019-03-12 05:05:06',1,'ТОО KTCL > Сетевой отдел','ТОО KTCL > СТП ЦОД'),(490,'Datacenter',1,'0',20,'Dmitry Tailakov (2)','2019-03-12 05:06:25',0,'',''),(491,'State',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:09:31',16,'','Выкл.'),(492,'State',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:09:31',13,'1','0'),(493,'State',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:09:31',1,'on > off','off'),(494,'State',1,'State',19,'Dmitry Tailakov (2)','2019-03-12 05:09:31',0,'off',''),(495,'State',2,'State',18,'Dmitry Tailakov (2)','2019-03-12 05:09:31',0,'on',''),(496,'State',1,'',0,'Dmitry Tailakov (2)','2019-03-12 05:09:44',16,'','ВКЛ.'),(497,'State',2,'',0,'Dmitry Tailakov (2)','2019-03-12 05:09:59',16,'Выкл.','ВЫКЛ.'),(498,'Document',1,'User',15,'Dmitry Tailakov (2)','2019-03-12 06:04:43',0,'','Аипов  Тлек (4)'),(499,'User',4,'Document',15,'Dmitry Tailakov (2)','2019-03-12 06:04:43',0,'','Документ: Пользователь - Аипов  Тлек (1)'),(500,'Document',1,'0',20,'Dmitry Tailakov (2)','2019-03-12 06:04:43',0,'',''),(501,'User',9,'',0,'Dmitry Tailakov (2)','2019-03-12 09:08:21',3,'&nbsp; (0)','KTCL - центральный офис > ЦОД г. Алматы пос. Алатау (3)'),(502,'User',9,'',0,'Dmitry Tailakov (2)','2019-03-12 09:08:21',20,'&nbsp; (0)','Администратор VPS (2)'),(503,'User',9,'Group',15,'Dmitry Tailakov (2)','2019-03-12 09:08:37',0,'','СТП ЦОД (3)'),(504,'Group',3,'User',15,'Dmitry Tailakov (2)','2019-03-12 09:08:37',0,'','Ремизов  Николай (9)'),(505,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-12 11:02:08',101,'96','0'),(506,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-12 11:02:08',32,'127','0'),(507,'Computer',1,'',0,'Аипов  Тлек (4)','2019-03-12 11:04:22',70,'d_tailakov (2)','t_aipov (4)'),(508,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-12 11:08:03',87,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\",\"Line\",\"DCRoom\",\"Rack\",\"Enclosure\"]','[\"Computer\",\"NetworkEquipment\",\"Rack\"]'),(509,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-12 11:08:03',112,'1151','0'),(510,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-12 11:15:25',60,'1','0'),(511,'Profile',6,'',0,'Dmitry Tailakov (2)','2019-03-12 11:15:35',34,'14359','0');
/*!40000 ALTER TABLE `glpi_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_mailcollectors`
--

DROP TABLE IF EXISTS `glpi_mailcollectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_mailcollectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT '2097152',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `passwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refused` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_kerberos` tinyint(1) NOT NULL DEFAULT '0',
  `errors` int(11) NOT NULL DEFAULT '0',
  `use_mail_date` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `requester_field` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_mailcollectors`
--

LOCK TABLES `glpi_mailcollectors` WRITE;
/*!40000 ALTER TABLE `glpi_mailcollectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_mailcollectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_manufacturers`
--

DROP TABLE IF EXISTS `glpi_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_manufacturers`
--

LOCK TABLES `glpi_manufacturers` WRITE;
/*!40000 ALTER TABLE `glpi_manufacturers` DISABLE KEYS */;
INSERT INTO `glpi_manufacturers` VALUES (1,'HP','','2019-03-04 06:25:43','2019-03-04 06:25:43'),(2,'Dell','','2019-03-04 06:25:49','2019-03-04 06:25:49'),(3,'Supermicro','','2019-03-04 06:25:57','2019-03-04 06:25:57'),(4,'Huawei','','2019-03-04 06:26:03','2019-03-04 06:26:03');
/*!40000 ALTER TABLE `glpi_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_monitormodels`
--

DROP TABLE IF EXISTS `glpi_monitormodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_monitormodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_monitormodels`
--

LOCK TABLES `glpi_monitormodels` WRITE;
/*!40000 ALTER TABLE `glpi_monitormodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_monitormodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_monitors`
--

DROP TABLE IF EXISTS `glpi_monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_monitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` decimal(5,2) NOT NULL DEFAULT '0.00',
  `have_micro` tinyint(1) NOT NULL DEFAULT '0',
  `have_speaker` tinyint(1) NOT NULL DEFAULT '0',
  `have_subd` tinyint(1) NOT NULL DEFAULT '0',
  `have_bnc` tinyint(1) NOT NULL DEFAULT '0',
  `have_dvi` tinyint(1) NOT NULL DEFAULT '0',
  `have_pivot` tinyint(1) NOT NULL DEFAULT '0',
  `have_hdmi` tinyint(1) NOT NULL DEFAULT '0',
  `have_displayport` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `monitortypes_id` int(11) NOT NULL DEFAULT '0',
  `monitormodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `monitormodels_id` (`monitormodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `monitortypes_id` (`monitortypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_monitors`
--

LOCK TABLES `glpi_monitors` WRITE;
/*!40000 ALTER TABLE `glpi_monitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_monitortypes`
--

DROP TABLE IF EXISTS `glpi_monitortypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_monitortypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_monitortypes`
--

LOCK TABLES `glpi_monitortypes` WRITE;
/*!40000 ALTER TABLE `glpi_monitortypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_monitortypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_netpoints`
--

DROP TABLE IF EXISTS `glpi_netpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_netpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `complete` (`entities_id`,`locations_id`,`name`),
  KEY `location_name` (`locations_id`,`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_netpoints`
--

LOCK TABLES `glpi_netpoints` WRITE;
/*!40000 ALTER TABLE `glpi_netpoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_netpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkaliases`
--

DROP TABLE IF EXISTS `glpi_networkaliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `networknames_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `networknames_id` (`networknames_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkaliases`
--

LOCK TABLES `glpi_networkaliases` WRITE;
/*!40000 ALTER TABLE `glpi_networkaliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkaliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipmentmodels`
--

DROP TABLE IF EXISTS `glpi_networkequipmentmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipmentmodels`
--

LOCK TABLES `glpi_networkequipmentmodels` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipmentmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkequipmentmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipments`
--

DROP TABLE IF EXISTS `glpi_networkequipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT '0',
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipments`
--

LOCK TABLES `glpi_networkequipments` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipments` DISABLE KEYS */;
INSERT INTO `glpi_networkequipments` VALUES (1,0,0,'microtik-1','','','','','',0,0,'2019-03-06 04:15:54','',3,0,1,0,0,0,0,0,NULL,0,0,1,0.0000,0,'2019-03-06 04:15:54');
/*!40000 ALTER TABLE `glpi_networkequipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkequipmenttypes`
--

DROP TABLE IF EXISTS `glpi_networkequipmenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkequipmenttypes`
--

LOCK TABLES `glpi_networkequipmenttypes` WRITE;
/*!40000 ALTER TABLE `glpi_networkequipmenttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkequipmenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkinterfaces`
--

DROP TABLE IF EXISTS `glpi_networkinterfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkinterfaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkinterfaces`
--

LOCK TABLES `glpi_networkinterfaces` WRITE;
/*!40000 ALTER TABLE `glpi_networkinterfaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkinterfaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networknames`
--

DROP TABLE IF EXISTS `glpi_networknames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networknames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `fqdns_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `FQDN` (`name`,`fqdns_id`),
  KEY `name` (`name`),
  KEY `fqdns_id` (`fqdns_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networknames`
--

LOCK TABLES `glpi_networknames` WRITE;
/*!40000 ALTER TABLE `glpi_networknames` DISABLE KEYS */;
INSERT INTO `glpi_networknames` VALUES (1,0,12,'NetworkPort','',NULL,1,0,0,'2019-03-05 07:06:46','2019-03-05 07:06:46'),(2,0,31,'NetworkPort','',NULL,1,0,0,'2019-03-06 09:41:27','2019-03-06 09:41:27');
/*!40000 ALTER TABLE `glpi_networknames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportaggregates`
--

DROP TABLE IF EXISTS `glpi_networkportaggregates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportaggregates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_list` text COLLATE utf8_unicode_ci COMMENT 'array of associated networkports_id',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportaggregates`
--

LOCK TABLES `glpi_networkportaggregates` WRITE;
/*!40000 ALTER TABLE `glpi_networkportaggregates` DISABLE KEYS */;
INSERT INTO `glpi_networkportaggregates` VALUES (1,31,'[\"14\"]','2019-03-06 09:41:54','2019-03-06 09:41:27');
/*!40000 ALTER TABLE `glpi_networkportaggregates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportaliases`
--

DROP TABLE IF EXISTS `glpi_networkportaliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `networkports_id_alias` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `networkports_id_alias` (`networkports_id_alias`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportaliases`
--

LOCK TABLES `glpi_networkportaliases` WRITE;
/*!40000 ALTER TABLE `glpi_networkportaliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkportaliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportdialups`
--

DROP TABLE IF EXISTS `glpi_networkportdialups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportdialups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportdialups`
--

LOCK TABLES `glpi_networkportdialups` WRITE;
/*!40000 ALTER TABLE `glpi_networkportdialups` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkportdialups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportethernets`
--

DROP TABLE IF EXISTS `glpi_networkportethernets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportethernets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `netpoint` (`netpoints_id`),
  KEY `type` (`type`),
  KEY `speed` (`speed`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportethernets`
--

LOCK TABLES `glpi_networkportethernets` WRITE;
/*!40000 ALTER TABLE `glpi_networkportethernets` DISABLE KEYS */;
INSERT INTO `glpi_networkportethernets` VALUES (2,13,0,0,'T',0,'2019-03-06 04:13:44','2019-03-06 04:13:44'),(3,14,0,0,'T',100,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(4,15,0,0,'T',100,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(5,16,0,0,'T',100,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(6,17,0,0,'T',100,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(7,18,0,0,'T',100,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(8,19,0,0,'T',100,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(9,20,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(10,21,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(11,22,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(12,23,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(13,24,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(14,25,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(15,26,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(16,27,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(17,28,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(18,29,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(19,30,0,0,'',0,'2019-03-06 04:16:15','2019-03-06 04:16:15');
/*!40000 ALTER TABLE `glpi_networkportethernets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportfiberchannels`
--

DROP TABLE IF EXISTS `glpi_networkportfiberchannels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportfiberchannels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `netpoints_id` int(11) NOT NULL DEFAULT '0',
  `wwn` varchar(16) COLLATE utf8_unicode_ci DEFAULT '',
  `speed` int(11) NOT NULL DEFAULT '10' COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `netpoint` (`netpoints_id`),
  KEY `wwn` (`wwn`),
  KEY `speed` (`speed`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportfiberchannels`
--

LOCK TABLES `glpi_networkportfiberchannels` WRITE;
/*!40000 ALTER TABLE `glpi_networkportfiberchannels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkportfiberchannels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportlocals`
--

DROP TABLE IF EXISTS `glpi_networkportlocals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportlocals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportlocals`
--

LOCK TABLES `glpi_networkportlocals` WRITE;
/*!40000 ALTER TABLE `glpi_networkportlocals` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkportlocals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkports`
--

DROP TABLE IF EXISTS `glpi_networkports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `logical_number` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instantiation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `on_device` (`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `mac` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkports`
--

LOCK TABLES `glpi_networkports` WRITE;
/*!40000 ALTER TABLE `glpi_networkports` DISABLE KEYS */;
INSERT INTO `glpi_networkports` VALUES (12,1,'PluginGenericobjectVpscomp',0,0,1,'VLAN01','NetworkPortAggregate','','',0,0,'2019-03-05 07:06:46','2019-03-05 07:06:46'),(13,2,'Computer',0,0,0,'eth-0','NetworkPortEthernet','','',0,0,'2019-03-06 04:13:44','2019-03-06 04:13:44'),(14,2,'PluginGenericobjectVpscomp',0,0,0,'eth-00','NetworkPortEthernet','','',0,0,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(15,2,'PluginGenericobjectVpscomp',0,0,1,'eth-01','NetworkPortEthernet','','',0,0,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(16,2,'PluginGenericobjectVpscomp',0,0,2,'eth-02','NetworkPortEthernet','','',0,0,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(17,2,'PluginGenericobjectVpscomp',0,0,3,'eth-03','NetworkPortEthernet','','',0,0,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(18,2,'PluginGenericobjectVpscomp',0,0,4,'eth-04','NetworkPortEthernet','','',0,0,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(19,2,'PluginGenericobjectVpscomp',0,0,5,'eth-05','NetworkPortEthernet','','',0,0,'2019-03-06 04:14:55','2019-03-06 04:14:55'),(20,1,'NetworkEquipment',0,0,0,'00','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(21,1,'NetworkEquipment',0,0,1,'01','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(22,1,'NetworkEquipment',0,0,2,'02','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(23,1,'NetworkEquipment',0,0,3,'03','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(24,1,'NetworkEquipment',0,0,4,'04','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(25,1,'NetworkEquipment',0,0,5,'05','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(26,1,'NetworkEquipment',0,0,6,'06','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(27,1,'NetworkEquipment',0,0,7,'07','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(28,1,'NetworkEquipment',0,0,8,'08','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(29,1,'NetworkEquipment',0,0,9,'09','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(30,1,'NetworkEquipment',0,0,10,'10','NetworkPortEthernet','','',0,0,'2019-03-06 04:16:15','2019-03-06 04:16:15'),(31,2,'PluginGenericobjectVpscomp',0,0,2,'VLAN-2','NetworkPortAggregate','','',0,0,'2019-03-06 09:41:54','2019-03-06 09:41:27'),(32,3,'PluginGenericobjectVpscomp',0,0,1,'VLAN-01','NetworkPortAggregate','','',0,0,'2019-03-06 09:42:50','2019-03-06 09:42:50'),(33,3,'PluginGenericobjectVpscomp',0,0,2,'VLAN-02','NetworkPortAggregate','','',0,0,'2019-03-06 09:42:50','2019-03-06 09:42:50'),(34,3,'PluginGenericobjectVpscomp',0,0,3,'VLAN-03','NetworkPortAggregate','','',0,0,'2019-03-06 09:42:50','2019-03-06 09:42:50'),(35,3,'PluginGenericobjectVpscomp',0,0,4,'VLAN-04','NetworkPortAggregate','','',0,0,'2019-03-06 09:42:50','2019-03-06 09:42:50');
/*!40000 ALTER TABLE `glpi_networkports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkports_networkports`
--

DROP TABLE IF EXISTS `glpi_networkports_networkports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkports_networkports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id_1` int(11) NOT NULL DEFAULT '0',
  `networkports_id_2` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  KEY `networkports_id_2` (`networkports_id_2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkports_networkports`
--

LOCK TABLES `glpi_networkports_networkports` WRITE;
/*!40000 ALTER TABLE `glpi_networkports_networkports` DISABLE KEYS */;
INSERT INTO `glpi_networkports_networkports` VALUES (1,15,21);
/*!40000 ALTER TABLE `glpi_networkports_networkports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkports_vlans`
--

DROP TABLE IF EXISTS `glpi_networkports_vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkports_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `vlans_id` int(11) NOT NULL DEFAULT '0',
  `tagged` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkports_vlans`
--

LOCK TABLES `glpi_networkports_vlans` WRITE;
/*!40000 ALTER TABLE `glpi_networkports_vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkports_vlans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networkportwifis`
--

DROP TABLE IF EXISTS `glpi_networkportwifis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networkportwifis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkports_id` int(11) NOT NULL DEFAULT '0',
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT '0',
  `wifinetworks_id` int(11) NOT NULL DEFAULT '0',
  `networkportwifis_id` int(11) NOT NULL DEFAULT '0' COMMENT 'only useful in case of Managed node',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `essid` (`wifinetworks_id`),
  KEY `version` (`version`),
  KEY `mode` (`mode`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networkportwifis`
--

LOCK TABLES `glpi_networkportwifis` WRITE;
/*!40000 ALTER TABLE `glpi_networkportwifis` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_networkportwifis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_networks`
--

DROP TABLE IF EXISTS `glpi_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_networks`
--

LOCK TABLES `glpi_networks` WRITE;
/*!40000 ALTER TABLE `glpi_networks` DISABLE KEYS */;
INSERT INTO `glpi_networks` VALUES (1,'Zhumalieva_lan1','','2019-03-04 06:28:35','2019-03-04 06:28:35');
/*!40000 ALTER TABLE `glpi_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notepads`
--

DROP TABLE IF EXISTS `glpi_notepads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notepads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date` (`date`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notepads`
--

LOCK TABLES `glpi_notepads` WRITE;
/*!40000 ALTER TABLE `glpi_notepads` DISABLE KEYS */;
INSERT INTO `glpi_notepads` VALUES (1,'PluginGenericobjectVpscomp',1,'2019-03-05 05:57:52','2019-03-05 05:57:52',2,2,'Звонить в крайнем случае');
/*!40000 ALTER TABLE `glpi_notepads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notifications`
--

DROP TABLE IF EXISTS `glpi_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notifications`
--

LOCK TABLES `glpi_notifications` WRITE;
/*!40000 ALTER TABLE `glpi_notifications` DISABLE KEYS */;
INSERT INTO `glpi_notifications` VALUES (1,'Alert Tickets not closed',0,'Ticket','alertnotclosed','',1,1,'2010-02-16 16:41:39',NULL),(2,'New Ticket',0,'Ticket','new','',1,1,'2010-02-16 16:41:39',NULL),(3,'Update Ticket',0,'Ticket','update','',1,0,'2010-02-16 16:41:39',NULL),(4,'Close Ticket',0,'Ticket','closed','',1,1,'2010-02-16 16:41:39',NULL),(5,'Add Followup',0,'Ticket','add_followup','',1,1,'2010-02-16 16:41:39',NULL),(6,'Add Task',0,'Ticket','add_task','',1,1,'2010-02-16 16:41:39',NULL),(7,'Update Followup',0,'Ticket','update_followup','',1,1,'2010-02-16 16:41:39',NULL),(8,'Update Task',0,'Ticket','update_task','',1,1,'2010-02-16 16:41:39',NULL),(9,'Delete Followup',0,'Ticket','delete_followup','',1,1,'2010-02-16 16:41:39',NULL),(10,'Delete Task',0,'Ticket','delete_task','',1,1,'2010-02-16 16:41:39',NULL),(11,'Resolve ticket',0,'Ticket','solved','',1,1,'2010-02-16 16:41:39',NULL),(12,'Ticket Validation',0,'Ticket','validation','',1,1,'2010-02-16 16:41:39',NULL),(13,'New Reservation',0,'Reservation','new','',1,1,'2010-02-16 16:41:39',NULL),(14,'Update Reservation',0,'Reservation','update','',1,1,'2010-02-16 16:41:39',NULL),(15,'Delete Reservation',0,'Reservation','delete','',1,1,'2010-02-16 16:41:39',NULL),(16,'Alert Reservation',0,'Reservation','alert','',1,1,'2010-02-16 16:41:39',NULL),(17,'Contract Notice',0,'Contract','notice','',1,1,'2010-02-16 16:41:39',NULL),(18,'Contract End',0,'Contract','end','',1,1,'2010-02-16 16:41:39',NULL),(19,'MySQL Synchronization',0,'DBConnection','desynchronization','',1,1,'2010-02-16 16:41:39',NULL),(20,'Cartridges',0,'CartridgeItem','alert','',1,1,'2010-02-16 16:41:39',NULL),(21,'Consumables',0,'ConsumableItem','alert','',1,1,'2010-02-16 16:41:39',NULL),(22,'Infocoms',0,'Infocom','alert','',1,1,'2010-02-16 16:41:39',NULL),(23,'Software Licenses',0,'SoftwareLicense','alert','',1,1,'2010-02-16 16:41:39',NULL),(24,'Ticket Recall',0,'Ticket','recall','',1,1,'2011-03-04 11:35:13',NULL),(25,'Password Forget',0,'User','passwordforget','',1,1,'2011-03-04 11:35:13',NULL),(26,'Ticket Satisfaction',0,'Ticket','satisfaction','',1,1,'2011-03-04 11:35:15',NULL),(27,'Item not unique',0,'FieldUnicity','refuse','',1,1,'2011-03-04 11:35:16',NULL),(28,'Crontask Watcher',0,'Crontask','alert','',1,1,'2011-03-04 11:35:16',NULL),(29,'New Problem',0,'Problem','new','',1,1,'2011-12-06 09:48:33',NULL),(30,'Update Problem',0,'Problem','update','',1,1,'2011-12-06 09:48:33',NULL),(31,'Resolve Problem',0,'Problem','solved','',1,1,'2011-12-06 09:48:33',NULL),(32,'Add Task',0,'Problem','add_task','',1,1,'2011-12-06 09:48:33',NULL),(33,'Update Task',0,'Problem','update_task','',1,1,'2011-12-06 09:48:33',NULL),(34,'Delete Task',0,'Problem','delete_task','',1,1,'2011-12-06 09:48:33',NULL),(35,'Close Problem',0,'Problem','closed','',1,1,'2011-12-06 09:48:33',NULL),(36,'Delete Problem',0,'Problem','delete','',1,1,'2011-12-06 09:48:33',NULL),(37,'Ticket Validation Answer',0,'Ticket','validation_answer','',1,1,'2014-01-15 14:35:24',NULL),(38,'Contract End Periodicity',0,'Contract','periodicity','',1,1,'2014-01-15 14:35:24',NULL),(39,'Contract Notice Periodicity',0,'Contract','periodicitynotice','',1,1,'2014-01-15 14:35:24',NULL),(40,'Planning recall',0,'PlanningRecall','planningrecall','',1,1,'2014-01-15 14:35:24',NULL),(41,'Delete Ticket',0,'Ticket','delete','',1,1,'2014-01-15 14:35:26',NULL),(42,'New Change',0,'Change','new','',1,1,'2014-06-18 08:02:07',NULL),(43,'Update Change',0,'Change','update','',1,1,'2014-06-18 08:02:07',NULL),(44,'Resolve Change',0,'Change','solved','',1,1,'2014-06-18 08:02:07',NULL),(45,'Add Task',0,'Change','add_task','',1,1,'2014-06-18 08:02:07',NULL),(46,'Update Task',0,'Change','update_task','',1,1,'2014-06-18 08:02:07',NULL),(47,'Delete Task',0,'Change','delete_task','',1,1,'2014-06-18 08:02:07',NULL),(48,'Close Change',0,'Change','closed','',1,1,'2014-06-18 08:02:07',NULL),(49,'Delete Change',0,'Change','delete','',1,1,'2014-06-18 08:02:07',NULL),(50,'Ticket Satisfaction Answer',0,'Ticket','replysatisfaction','',1,1,'2014-06-18 08:02:08',NULL),(51,'Receiver errors',0,'MailCollector','error','',1,1,'2014-06-18 08:02:08',NULL),(52,'New Project',0,'Project','new','',1,1,'2014-06-18 08:02:09',NULL),(53,'Update Project',0,'Project','update','',1,1,'2014-06-18 08:02:09',NULL),(54,'Delete Project',0,'Project','delete','',1,1,'2014-06-18 08:02:09',NULL),(55,'New Project Task',0,'ProjectTask','new','',1,1,'2014-06-18 08:02:09',NULL),(56,'Update Project Task',0,'ProjectTask','update','',1,1,'2014-06-18 08:02:09',NULL),(57,'Delete Project Task',0,'ProjectTask','delete','',1,1,'2014-06-18 08:02:09',NULL),(58,'Request Unlock Items',0,'ObjectLock','unlock','',1,1,'2016-02-08 16:57:46',NULL),(59,'New user in requesters',0,'Ticket','requester_user','',1,1,'2016-02-08 16:57:46',NULL),(60,'New group in requesters',0,'Ticket','requester_group','',1,1,'2016-02-08 16:57:46',NULL),(61,'New user in observers',0,'Ticket','observer_user','',1,1,'2016-02-08 16:57:46',NULL),(62,'New group in observers',0,'Ticket','observer_group','',1,1,'2016-02-08 16:57:46',NULL),(63,'New user in assignees',0,'Ticket','assign_user','',1,1,'2016-02-08 16:57:46',NULL),(64,'New group in assignees',0,'Ticket','assign_group','',1,1,'2016-02-08 16:57:46',NULL),(65,'New supplier in assignees',0,'Ticket','assign_supplier','',1,1,'2016-02-08 16:57:46',NULL),(66,'Saved searches',0,'SavedSearch_Alert','alert','',1,1,'2016-02-08 16:57:46',NULL),(67,'Certificates',0,'Certificate','alert','',1,1,NULL,NULL);
/*!40000 ALTER TABLE `glpi_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notifications_notificationtemplates`
--

DROP TABLE IF EXISTS `glpi_notifications_notificationtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notifications_notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifications_id` int(11) NOT NULL DEFAULT '0',
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`notifications_id`,`mode`,`notificationtemplates_id`),
  KEY `notifications_id` (`notifications_id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`),
  KEY `mode` (`mode`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notifications_notificationtemplates`
--

LOCK TABLES `glpi_notifications_notificationtemplates` WRITE;
/*!40000 ALTER TABLE `glpi_notifications_notificationtemplates` DISABLE KEYS */;
INSERT INTO `glpi_notifications_notificationtemplates` VALUES (1,1,'mailing',6),(2,2,'mailing',4),(3,3,'mailing',4),(4,4,'mailing',4),(5,5,'mailing',4),(6,6,'mailing',4),(7,7,'mailing',4),(8,8,'mailing',4),(9,9,'mailing',4),(10,10,'mailing',4),(11,11,'mailing',4),(12,12,'mailing',7),(13,13,'mailing',2),(14,14,'mailing',2),(15,15,'mailing',2),(16,16,'mailing',3),(17,17,'mailing',12),(18,18,'mailing',12),(19,19,'mailing',1),(20,20,'mailing',8),(21,21,'mailing',9),(22,22,'mailing',10),(23,23,'mailing',11),(24,24,'mailing',4),(25,25,'mailing',13),(26,26,'mailing',14),(27,27,'mailing',15),(28,28,'mailing',16),(29,29,'mailing',17),(30,30,'mailing',17),(31,31,'mailing',17),(32,32,'mailing',17),(33,33,'mailing',17),(34,34,'mailing',17),(35,35,'mailing',17),(36,36,'mailing',17),(37,37,'mailing',7),(38,38,'mailing',12),(39,39,'mailing',12),(40,40,'mailing',18),(41,41,'mailing',4),(42,42,'mailing',19),(43,43,'mailing',19),(44,44,'mailing',19),(45,45,'mailing',19),(46,46,'mailing',19),(47,47,'mailing',19),(48,48,'mailing',19),(49,49,'mailing',19),(50,50,'mailing',14),(51,51,'mailing',20),(52,52,'mailing',21),(53,53,'mailing',21),(54,54,'mailing',21),(55,55,'mailing',22),(56,56,'mailing',22),(57,57,'mailing',22),(58,58,'mailing',23),(59,59,'mailing',4),(60,60,'mailing',4),(61,61,'mailing',4),(62,62,'mailing',4),(63,63,'mailing',4),(64,64,'mailing',4),(65,65,'mailing',4),(66,66,'mailing',24),(67,67,'mailing',25);
/*!40000 ALTER TABLE `glpi_notifications_notificationtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notificationtargets`
--

DROP TABLE IF EXISTS `glpi_notificationtargets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notificationtargets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `notifications_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `items` (`type`,`items_id`),
  KEY `notifications_id` (`notifications_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notificationtargets`
--

LOCK TABLES `glpi_notificationtargets` WRITE;
/*!40000 ALTER TABLE `glpi_notificationtargets` DISABLE KEYS */;
INSERT INTO `glpi_notificationtargets` VALUES (1,3,1,13),(2,1,1,13),(3,3,2,2),(4,1,1,2),(5,1,1,3),(6,1,1,5),(7,1,1,4),(8,2,1,3),(9,4,1,3),(10,3,1,2),(11,3,1,3),(12,3,1,5),(13,3,1,4),(14,1,1,19),(15,14,1,12),(16,3,1,14),(17,1,1,14),(18,3,1,15),(19,1,1,15),(20,1,1,6),(21,3,1,6),(22,1,1,7),(23,3,1,7),(24,1,1,8),(25,3,1,8),(26,1,1,9),(27,3,1,9),(28,1,1,10),(29,3,1,10),(30,1,1,11),(31,3,1,11),(32,19,1,25),(33,3,1,26),(34,21,1,2),(35,21,1,3),(36,21,1,5),(37,21,1,4),(38,21,1,6),(39,21,1,7),(40,21,1,8),(41,21,1,9),(42,21,1,10),(43,21,1,11),(46,1,1,28),(47,3,1,29),(48,1,1,29),(49,21,1,29),(50,2,1,30),(51,4,1,30),(52,3,1,30),(53,1,1,30),(54,21,1,30),(55,3,1,31),(56,1,1,31),(57,21,1,31),(58,3,1,32),(59,1,1,32),(60,21,1,32),(61,3,1,33),(62,1,1,33),(63,21,1,33),(64,3,1,34),(65,1,1,34),(66,21,1,34),(67,3,1,35),(68,1,1,35),(69,21,1,35),(70,3,1,36),(71,1,1,36),(72,21,1,36),(73,14,1,37),(74,3,1,40),(75,1,1,41),(76,3,1,42),(77,1,1,42),(78,21,1,42),(79,2,1,43),(80,4,1,43),(81,3,1,43),(82,1,1,43),(83,21,1,43),(84,3,1,44),(85,1,1,44),(86,21,1,44),(87,3,1,45),(88,1,1,45),(89,21,1,45),(90,3,1,46),(91,1,1,46),(92,21,1,46),(93,3,1,47),(94,1,1,47),(95,21,1,47),(96,3,1,48),(97,1,1,48),(98,21,1,48),(99,3,1,49),(100,1,1,49),(101,21,1,49),(102,3,1,50),(103,2,1,50),(104,1,1,51),(105,27,1,52),(106,1,1,52),(107,28,1,52),(108,27,1,53),(109,1,1,53),(110,28,1,53),(111,27,1,54),(112,1,1,54),(113,28,1,54),(114,31,1,55),(115,1,1,55),(116,32,1,55),(117,31,1,56),(118,1,1,56),(119,32,1,56),(120,31,1,57),(121,1,1,57),(122,32,1,57),(123,19,1,58),(124,3,1,59),(125,13,1,60),(126,21,1,61),(127,20,1,62),(128,2,1,63),(129,23,1,64),(130,8,1,65),(131,19,1,66);
/*!40000 ALTER TABLE `glpi_notificationtargets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notificationtemplates`
--

DROP TABLE IF EXISTS `glpi_notificationtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notificationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notificationtemplates`
--

LOCK TABLES `glpi_notificationtemplates` WRITE;
/*!40000 ALTER TABLE `glpi_notificationtemplates` DISABLE KEYS */;
INSERT INTO `glpi_notificationtemplates` VALUES (1,'MySQL Synchronization','DBConnection','2010-02-01 15:51:46','',NULL,NULL),(2,'Reservations','Reservation','2010-02-03 14:03:45','',NULL,NULL),(3,'Alert Reservation','Reservation','2010-02-03 14:03:45','',NULL,NULL),(4,'Tickets','Ticket','2010-02-07 21:39:15','',NULL,NULL),(5,'Tickets (Simple)','Ticket','2010-02-07 21:39:15','',NULL,NULL),(6,'Alert Tickets not closed','Ticket','2010-02-07 21:39:15','',NULL,NULL),(7,'Tickets Validation','Ticket','2010-02-26 21:39:15','',NULL,NULL),(8,'Cartridges','CartridgeItem','2010-02-16 13:17:24','',NULL,NULL),(9,'Consumables','ConsumableItem','2010-02-16 13:17:38','',NULL,NULL),(10,'Infocoms','Infocom','2010-02-16 13:17:55','',NULL,NULL),(11,'Licenses','SoftwareLicense','2010-02-16 13:18:12','',NULL,NULL),(12,'Contracts','Contract','2010-02-16 13:18:12','',NULL,NULL),(13,'Password Forget','User','2011-03-04 11:35:13',NULL,NULL,NULL),(14,'Ticket Satisfaction','Ticket','2011-03-04 11:35:15',NULL,NULL,NULL),(15,'Item not unique','FieldUnicity','2011-03-04 11:35:16',NULL,NULL,NULL),(16,'Crontask','Crontask','2011-03-04 11:35:16',NULL,NULL,NULL),(17,'Problems','Problem','2011-12-06 09:48:33',NULL,NULL,NULL),(18,'Planning recall','PlanningRecall','2014-01-15 14:35:24',NULL,NULL,NULL),(19,'Changes','Change','2014-06-18 08:02:07',NULL,NULL,NULL),(20,'Receiver errors','MailCollector','2014-06-18 08:02:08',NULL,NULL,NULL),(21,'Projects','Project','2014-06-18 08:02:09',NULL,NULL,NULL),(22,'Project Tasks','ProjectTask','2014-06-18 08:02:09',NULL,NULL,NULL),(23,'Unlock Item request','ObjectLock','2016-02-08 16:57:46',NULL,NULL,NULL),(24,'Saved searches alerts','SavedSearch_Alert','2017-04-05 14:57:34',NULL,NULL,NULL),(25,'Certificates','Certificate',NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `glpi_notificationtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notificationtemplatetranslations`
--

DROP TABLE IF EXISTS `glpi_notificationtemplatetranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `language` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notificationtemplatetranslations`
--

LOCK TABLES `glpi_notificationtemplatetranslations` WRITE;
/*!40000 ALTER TABLE `glpi_notificationtemplatetranslations` DISABLE KEYS */;
INSERT INTO `glpi_notificationtemplatetranslations` VALUES (1,1,'','##lang.dbconnection.title##','##lang.dbconnection.delay## : ##dbconnection.delay##\n','&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;'),(2,2,'','##reservation.action##','======================================================================\n##lang.reservation.user##: ##reservation.user##\n##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##\n##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##\n##lang.reservation.begin##: ##reservation.begin##\n##lang.reservation.end##: ##reservation.end##\n##lang.reservation.comment##: ##reservation.comment##\n======================================================================\n','&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;'),(3,3,'','##reservation.action##  ##reservation.entity##','##lang.reservation.entity## : ##reservation.entity##\n\n\n##FOREACHreservations##\n##lang.reservation.itemtype## : ##reservation.itemtype##\n\n ##lang.reservation.item## : ##reservation.item##\n\n ##reservation.url##\n\n ##ENDFOREACHreservations##','&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;\n##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;\n ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;\n &lt;a href=\"##reservation.url##\"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;\n ##ENDFOREACHreservations##&lt;/p&gt;'),(4,4,'','##ticket.action## ##ticket.title##',' ##IFticket.storestatus=5##\n ##lang.ticket.url## : ##ticket.urlapprove##\n ##lang.ticket.autoclosewarning##\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##\n ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##\n\n ##lang.ticket.description##\n\n ##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##\n ##lang.ticket.creationdate## : ##ticket.creationdate##\n ##lang.ticket.closedate## : ##ticket.closedate##\n ##lang.ticket.requesttype## : ##ticket.requesttype##\n##lang.ticket.item.name## :\n\n##FOREACHitems##\n\n ##IFticket.itemtype##\n  ##ticket.itemtype## - ##ticket.item.name##\n  ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model##\n  ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial##\n  ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial##\n ##ENDIFticket.itemtype##\n\n##ENDFOREACHitems##\n##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##\n ##lang.ticket.status## : ##ticket.status##\n##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##\n ##lang.ticket.urgency## : ##ticket.urgency##\n ##lang.ticket.impact## : ##ticket.impact##\n ##lang.ticket.priority## : ##ticket.priority##\n##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##\n##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n ##lang.ticket.content## : ##ticket.content##\n ##IFticket.storestatus=6##\n\n ##lang.ticket.solvedate## : ##ticket.solvedate##\n ##lang.ticket.solution.type## : ##ticket.solution.type##\n ##lang.ticket.solution.description## : ##ticket.solution.description##\n ##ENDIFticket.storestatus##\n ##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.ticket.numberoftasks## : ##ticket.numberoftasks##\n\n##FOREACHtasks##\n\n [##task.date##] ##lang.task.isprivate## : ##task.isprivate##\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##','<!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    -->\n<div>##IFticket.storestatus=5##</div>\n<div>##lang.ticket.url## : <a href=\"##ticket.urlapprove##\">##ticket.urlapprove##</a> <strong>&#160;</strong></div>\n<div><strong>##lang.ticket.autoclosewarning##</strong></div>\n<div><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.type##</strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description## ##ENDIFticket.storestatus##</div>\n<div>##ELSEticket.storestatus## ##lang.ticket.url## : <a href=\"##ticket.url##\">##ticket.url##</a> ##ENDELSEticket.storestatus##</div>\n<p class=\"description b\"><strong>##lang.ticket.description##</strong></p>\n<p><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.title##</span>&#160;:##ticket.title## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.authors##</span>&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.creationdate##</span>&#160;:##ticket.creationdate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.closedate##</span>&#160;:##ticket.closedate## <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.requesttype##</span>&#160;:##ticket.requesttype##<br />\n<br /><span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.item.name##</span>&#160;:\n<p>##FOREACHitems##</p>\n<div class=\"description b\">##IFticket.itemtype## ##ticket.itemtype##&#160;- ##ticket.item.name## ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial## ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## </div><br />\n<p>##ENDFOREACHitems##</p>\n##IFticket.assigntousers## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntousers##</span>&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.status## </span>&#160;: ##ticket.status##<br /> ##IFticket.assigntogroups## <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.assigntogroups##</span>&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.urgency##</span>&#160;: ##ticket.urgency##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.impact##</span>&#160;: ##ticket.impact##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.priority##</span>&#160;: ##ticket.priority## <br /> ##IFticket.user.email##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.user.email##</span>&#160;: ##ticket.user.email ##ENDIFticket.user.email##    <br /> ##IFticket.category##<span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\">##lang.ticket.category## </span>&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    <br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.ticket.content##</span>&#160;: ##ticket.content##</p>\n<br />##IFticket.storestatus=6##<br /><span style=\"text-decoration: underline;\"><strong><span style=\"color: #888888;\">##lang.ticket.solvedate##</span></strong></span> : ##ticket.solvedate##<br /><span style=\"color: #888888;\"><strong><span style=\"text-decoration: underline;\">##lang.ticket.solution.type##</span></strong></span> : ##ticket.solution.type##<br /><span style=\"text-decoration: underline; color: #888888;\"><strong>##lang.ticket.solution.description##</strong></span> : ##ticket.solution.description##<br />##ENDIFticket.storestatus##</p>\n<div class=\"description b\">##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n<div class=\"description b\">##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##</div>\n<p>##FOREACHtasks##</p>\n<div class=\"description b\"><br /> <strong> [##task.date##] <em>##lang.task.isprivate## : ##task.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.author##</span> ##task.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.description##</span> ##task.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.time##</span> ##task.time##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.task.category##</span> ##task.category##</div>\n<p>##ENDFOREACHtasks##</p>'),(5,12,'','##contract.action##  ##contract.entity##','##lang.contract.entity## : ##contract.entity##\n\n##FOREACHcontracts##\n##lang.contract.name## : ##contract.name##\n##lang.contract.number## : ##contract.number##\n##lang.contract.time## : ##contract.time##\n##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##\n##contract.url##\n##ENDFOREACHcontracts##','&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;\n&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :\n##contract.name##&lt;br /&gt;\n##lang.contract.number## : ##contract.number##&lt;br /&gt;\n##lang.contract.time## : ##contract.time##&lt;br /&gt;\n##IFcontract.type####lang.contract.type## : ##contract.type##\n##ENDIFcontract.type##&lt;br /&gt;\n&lt;a href=\"##contract.url##\"&gt;\n##contract.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcontracts##&lt;/p&gt;'),(6,5,'','##ticket.action## ##ticket.title##','##lang.ticket.url## : ##ticket.url##\n\n##lang.ticket.description##\n\n\n##lang.ticket.title##  :##ticket.title##\n\n##lang.ticket.authors##  :##IFticket.authors##\n##ticket.authors## ##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n\n##IFticket.category## ##lang.ticket.category##  :##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n\n##lang.ticket.content##  : ##ticket.content##\n##IFticket.itemtype##\n##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##','&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.url##\"&gt;\n##ticket.url##&lt;/a&gt;&lt;/div&gt;\n&lt;div class=\"description b\"&gt;\n##lang.ticket.description##&lt;/div&gt;\n&lt;p&gt;&lt;span\nstyle=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.authors##&lt;/span&gt;\n##IFticket.authors## ##ticket.authors##\n##ENDIFticket.authors##\n##ELSEticket.authors##--##ENDELSEticket.authors##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;&#160\n;&lt;/span&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;\n##IFticket.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##\n##ENDIFticket.category## ##ELSEticket.category##\n##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##\n&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.content##&lt;/span&gt;&#160;:\n##ticket.content##&lt;br /&gt;##IFticket.itemtype##\n&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;\n##lang.ticket.item.name##&lt;/span&gt;&#160;:\n##ticket.itemtype## - ##ticket.item.name##\n##ENDIFticket.itemtype##&lt;/p&gt;'),(7,7,'','##ticket.action## ##ticket.title##','##FOREACHvalidations##\n\n##IFvalidation.storestatus=2##\n##validation.submission.title##\n##lang.validation.commentsubmission## : ##validation.commentsubmission##\n##ENDIFvalidation.storestatus##\n##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##\n\n##lang.ticket.url## : ##ticket.urlvalidation##\n\n##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n##IFvalidation.commentvalidation##\n##lang.validation.commentvalidation## : ##validation.commentvalidation##\n##ENDIFvalidation.commentvalidation##\n##ENDFOREACHvalidations##','&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;\n&lt;p&gt;##IFvalidation.storestatus=2##&lt;/p&gt;\n&lt;div&gt;##validation.submission.title##&lt;/div&gt;\n&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;\n&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;\n&lt;div&gt;&lt;/div&gt;\n&lt;div&gt;\n&lt;div&gt;##lang.ticket.url## : &lt;a href=\"##ticket.urlvalidation##\"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##\n&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :\n&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##\n&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;'),(8,6,'','##ticket.action## ##ticket.entity##','##lang.ticket.entity## : ##ticket.entity##\n\n##FOREACHtickets##\n\n##lang.ticket.title## : ##ticket.title##\n ##lang.ticket.status## : ##ticket.status##\n\n ##ticket.url##\n ##ENDFOREACHtickets##','&lt;table class=\"tab_cadre\" border=\"1\" cellspacing=\"2\" cellpadding=\"3\"&gt;\n&lt;tbody&gt;\n&lt;tr&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td style=\"text-align: left;\" width=\"auto\" bgcolor=\"#cccccc\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##lang.ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##FOREACHtickets##\n&lt;tr&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;&lt;a href=\"##ticket.url##\"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;\n&lt;td width=\"auto\"&gt;&lt;span style=\"font-size: 11px; text-align: left;\"&gt;##ticket.content##&lt;/span&gt;&lt;/td&gt;\n&lt;/tr&gt;\n##ENDFOREACHtickets##\n&lt;/tbody&gt;\n&lt;/table&gt;'),(9,9,'','##consumable.action##  ##consumable.entity##','##lang.consumable.entity## : ##consumable.entity##\n\n\n##FOREACHconsumables##\n##lang.consumable.item## : ##consumable.item##\n\n\n##lang.consumable.reference## : ##consumable.reference##\n\n##lang.consumable.remaining## : ##consumable.remaining##\n\n##consumable.url##\n\n##ENDFOREACHconsumables##','&lt;p&gt;\n##lang.consumable.entity## : ##consumable.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##\n&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;\n&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;\n##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;\n&lt;a href=\"##consumable.url##\"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;\n   ##ENDFOREACHconsumables##&lt;/p&gt;'),(10,8,'','##cartridge.action##  ##cartridge.entity##','##lang.cartridge.entity## : ##cartridge.entity##\n\n\n##FOREACHcartridges##\n##lang.cartridge.item## : ##cartridge.item##\n\n\n##lang.cartridge.reference## : ##cartridge.reference##\n\n##lang.cartridge.remaining## : ##cartridge.remaining##\n\n##cartridge.url##\n ##ENDFOREACHcartridges##','&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##\n&lt;br /&gt;##lang.cartridge.item## :\n##cartridge.item##&lt;br /&gt; &lt;br /&gt;\n##lang.cartridge.reference## :\n##cartridge.reference##&lt;br /&gt;\n##lang.cartridge.remaining## :\n##cartridge.remaining##&lt;br /&gt;\n&lt;a href=\"##cartridge.url##\"&gt;\n##cartridge.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHcartridges##&lt;/p&gt;'),(11,10,'','##infocom.action##  ##infocom.entity##','##lang.infocom.entity## : ##infocom.entity##\n\n\n##FOREACHinfocoms##\n\n##lang.infocom.itemtype## : ##infocom.itemtype##\n\n##lang.infocom.item## : ##infocom.item##\n\n\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n\n##infocom.url##\n ##ENDFOREACHinfocoms##','&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##\n&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##\n&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;\n##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;\n##lang.infocom.expirationdate## : ##infocom.expirationdate##\n&lt;br /&gt; &lt;a href=\"##infocom.url##\"&gt;\n##infocom.url##&lt;/a&gt;&lt;br /&gt;\n##ENDFOREACHinfocoms##&lt;/p&gt;'),(12,11,'','##license.action##  ##license.entity##','##lang.license.entity## : ##license.entity##\n\n##FOREACHlicenses##\n\n##lang.license.item## : ##license.item##\n\n##lang.license.serial## : ##license.serial##\n\n##lang.license.expirationdate## : ##license.expirationdate##\n\n##license.url##\n ##ENDFOREACHlicenses##','&lt;p&gt;\n##lang.license.entity## : ##license.entity##&lt;br /&gt;\n##FOREACHlicenses##\n&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;\n##lang.license.serial## : ##license.serial##&lt;br /&gt;\n##lang.license.expirationdate## : ##license.expirationdate##\n&lt;br /&gt; &lt;a href=\"##license.url##\"&gt; ##license.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;'),(13,13,'','##user.action##','##user.realname## ##user.firstname##\n\n##lang.passwordforget.information##\n\n##lang.passwordforget.link## ##user.passwordforgeturl##','&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;\n&lt;p&gt;##lang.passwordforget.link## &lt;a title=\"##user.passwordforgeturl##\" href=\"##user.passwordforgeturl##\"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;'),(14,14,'','##ticket.action## ##ticket.title##','##lang.ticket.title## : ##ticket.title##\n\n##lang.ticket.closedate## : ##ticket.closedate##\n\n##lang.satisfaction.text## ##ticket.urlsatisfaction##','&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;\n&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;\n&lt;p&gt;##lang.satisfaction.text## &lt;a href=\"##ticket.urlsatisfaction##\"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;'),(15,15,'','##lang.unicity.action##','##lang.unicity.entity## : ##unicity.entity##\n\n##lang.unicity.itemtype## : ##unicity.itemtype##\n\n##lang.unicity.message## : ##unicity.message##\n\n##lang.unicity.action_user## : ##unicity.action_user##\n\n##lang.unicity.action_type## : ##unicity.action_type##\n\n##lang.unicity.date## : ##unicity.date##','&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;\n&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;'),(16,16,'','##crontask.action##','##lang.crontask.warning##\n\n##FOREACHcrontasks##\n ##crontask.name## : ##crontask.description##\n\n##ENDFOREACHcrontasks##','&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;\n&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href=\"##crontask.url##\"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;'),(17,17,'','##problem.action## ##problem.title##','##IFproblem.storestatus=5##\n ##lang.problem.url## : ##problem.urlapprove##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##\n ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##\n\n ##lang.problem.description##\n\n ##lang.problem.title##  :##problem.title##\n ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##\n ##lang.problem.creationdate##  :##problem.creationdate##\n ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##\n ##lang.problem.status##  : ##problem.status##\n ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##\n ##lang.problem.urgency##  : ##problem.urgency##\n ##lang.problem.impact##  : ##problem.impact##\n ##lang.problem.priority## : ##problem.priority##\n##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##\n ##lang.problem.content##  : ##problem.content##\n\n##IFproblem.storestatus=6##\n ##lang.problem.solvedate## : ##problem.solvedate##\n ##lang.problem.solution.type## : ##problem.solution.type##\n ##lang.problem.solution.description## : ##problem.solution.description##\n##ENDIFproblem.storestatus##\n ##lang.problem.numberoffollowups## : ##problem.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.problem.numberoftickets## : ##problem.numberoftickets##\n\n##FOREACHtickets##\n [##ticket.date##] ##lang.problem.title## : ##ticket.title##\n ##lang.problem.content## ##ticket.content##\n\n##ENDFOREACHtickets##\n ##lang.problem.numberoftasks## : ##problem.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n','&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.problem.url## : &lt;a href=\"##problem.urlapprove##\"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href=\"##problem.url##\"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;\n&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;\n<div class=\"description b\">##lang.problem.numberoffollowups##&#160;: ##problem.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;\n&lt;p&gt;##FOREACHtickets##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href=\"##ticket.url##\"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##\n&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),(18,18,'','##recall.action##: ##recall.item.name##','##recall.action##: ##recall.item.name##\n\n##recall.item.content##\n\n##lang.recall.planning.begin##: ##recall.planning.begin##\n##lang.recall.planning.end##: ##recall.planning.end##\n##lang.recall.planning.state##: ##recall.planning.state##\n##lang.recall.item.private##: ##recall.item.private##','&lt;p&gt;##recall.action##: &lt;a href=\"##recall.item.url##\"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;##recall.item.content##&lt;/p&gt;\n&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;'),(19,19,'','##change.action## ##change.title##','##IFchange.storestatus=5##\n ##lang.change.url## : ##change.urlapprove##\n ##lang.change.solvedate## : ##change.solvedate##\n ##lang.change.solution.type## : ##change.solution.type##\n ##lang.change.solution.description## : ##change.solution.description## ##ENDIFchange.storestatus##\n ##ELSEchange.storestatus## ##lang.change.url## : ##change.url## ##ENDELSEchange.storestatus##\n\n ##lang.change.description##\n\n ##lang.change.title##  :##change.title##\n ##lang.change.authors##  :##IFchange.authors## ##change.authors## ##ENDIFchange.authors## ##ELSEchange.authors##--##ENDELSEchange.authors##\n ##lang.change.creationdate##  :##change.creationdate##\n ##IFchange.assigntousers## ##lang.change.assigntousers##  : ##change.assigntousers## ##ENDIFchange.assigntousers##\n ##lang.change.status##  : ##change.status##\n ##IFchange.assigntogroups## ##lang.change.assigntogroups##  : ##change.assigntogroups## ##ENDIFchange.assigntogroups##\n ##lang.change.urgency##  : ##change.urgency##\n ##lang.change.impact##  : ##change.impact##\n ##lang.change.priority## : ##change.priority##\n##IFchange.category## ##lang.change.category##  :##change.category## ##ENDIFchange.category## ##ELSEchange.category## ##lang.change.nocategoryassigned## ##ENDELSEchange.category##\n ##lang.change.content##  : ##change.content##\n\n##IFchange.storestatus=6##\n ##lang.change.solvedate## : ##change.solvedate##\n ##lang.change.solution.type## : ##change.solution.type##\n ##lang.change.solution.description## : ##change.solution.description##\n##ENDIFchange.storestatus##\n ##lang.change.numberoffollowups## : ##change.numberoffollowups##\n\n##FOREACHfollowups##\n\n [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##\n ##lang.followup.author## ##followup.author##\n ##lang.followup.description## ##followup.description##\n ##lang.followup.date## ##followup.date##\n ##lang.followup.requesttype## ##followup.requesttype##\n\n##ENDFOREACHfollowups##\n ##lang.change.numberofproblems## : ##change.numberofproblems##\n\n##FOREACHproblems##\n [##problem.date##] ##lang.change.title## : ##problem.title##\n ##lang.change.content## ##problem.content##\n\n##ENDFOREACHproblems##\n ##lang.change.numberoftasks## : ##change.numberoftasks##\n\n##FOREACHtasks##\n [##task.date##]\n ##lang.task.author## ##task.author##\n ##lang.task.description## ##task.description##\n ##lang.task.time## ##task.time##\n ##lang.task.category## ##task.category##\n\n##ENDFOREACHtasks##\n','&lt;p&gt;##IFchange.storestatus=5##&lt;/p&gt;\n&lt;div&gt;##lang.change.url## : &lt;a href=\"##change.urlapprove##\"&gt;##change.urlapprove##&lt;/a&gt;&lt;/div&gt;\n&lt;div&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description## ##ENDIFchange.storestatus##&lt;/div&gt;\n&lt;div&gt;##ELSEchange.storestatus## ##lang.change.url## : &lt;a href=\"##change.url##\"&gt;##change.url##&lt;/a&gt; ##ENDELSEchange.storestatus##&lt;/div&gt;\n&lt;p class=\"description b\"&gt;&lt;strong&gt;##lang.change.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.title##&lt;/span&gt;&#160;:##change.title## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.authors##&lt;/span&gt;&#160;:##IFchange.authors## ##change.authors## ##ENDIFchange.authors##    ##ELSEchange.authors##--##ENDELSEchange.authors## &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.creationdate##&lt;/span&gt;&#160;:##change.creationdate## &lt;br /&gt; ##IFchange.assigntousers## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntousers##&lt;/span&gt;&#160;: ##change.assigntousers## ##ENDIFchange.assigntousers##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.status## &lt;/span&gt;&#160;: ##change.status##&lt;br /&gt; ##IFchange.assigntogroups## &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.assigntogroups##&lt;/span&gt;&#160;: ##change.assigntogroups## ##ENDIFchange.assigntogroups##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.urgency##&lt;/span&gt;&#160;: ##change.urgency##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.impact##&lt;/span&gt;&#160;: ##change.impact##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.priority##&lt;/span&gt; : ##change.priority## &lt;br /&gt;##IFchange.category##&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.category## &lt;/span&gt;&#160;:##change.category##  ##ENDIFchange.category## ##ELSEchange.category##  ##lang.change.nocategoryassigned## ##ENDELSEchange.category##    &lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.change.content##&lt;/span&gt;&#160;: ##change.content##&lt;/p&gt;\n&lt;p&gt;##IFchange.storestatus=6##&lt;br /&gt;&lt;span style=\"text-decoration: underline;\"&gt;&lt;strong&gt;&lt;span style=\"color: #888888;\"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style=\"color: #888888;\"&gt;&lt;strong&gt;&lt;span style=\"text-decoration: underline;\"&gt;##lang.change.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style=\"text-decoration: underline; color: #888888;\"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description##&lt;br /&gt;##ENDIFchange.storestatus##&lt;/p&gt;\n<div class=\"description b\">##lang.change.numberoffollowups##&#160;: ##change.numberoffollowups##</div>\n<p>##FOREACHfollowups##</p>\n<div class=\"description b\"><br /> <strong> [##followup.date##] <em>##lang.followup.isprivate## : ##followup.isprivate## </em></strong><br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.author## </span> ##followup.author##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.description## </span> ##followup.description##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.date## </span> ##followup.date##<br /> <span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"> ##lang.followup.requesttype## </span> ##followup.requesttype##</div>\n<p>##ENDFOREACHfollowups##</p>\n&lt;div class=\"description b\"&gt;##lang.change.numberofproblems##&#160;: ##change.numberofproblems##&lt;/div&gt;\n&lt;p&gt;##FOREACHproblems##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt; [##problem.date##] &lt;em&gt;##lang.change.title## : &lt;a href=\"##problem.url##\"&gt;##problem.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; &lt;/span&gt;&lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt;##lang.change.content## &lt;/span&gt; ##problem.content##\n&lt;p&gt;##ENDFOREACHproblems##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;##lang.change.numberoftasks##&#160;: ##change.numberoftasks##&lt;/div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div class=\"description b\"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style=\"color: #8b8c8f; font-weight: bold; text-decoration: underline;\"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),(20,20,'','##mailcollector.action##','##FOREACHmailcollectors##\n##lang.mailcollector.name## : ##mailcollector.name##\n##lang.mailcollector.errors## : ##mailcollector.errors##\n##mailcollector.url##\n##ENDFOREACHmailcollectors##','&lt;p&gt;##FOREACHmailcollectors##&lt;br /&gt;##lang.mailcollector.name## : ##mailcollector.name##&lt;br /&gt; ##lang.mailcollector.errors## : ##mailcollector.errors##&lt;br /&gt;&lt;a href=\"##mailcollector.url##\"&gt;##mailcollector.url##&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHmailcollectors##&lt;/p&gt;\n&lt;p&gt;&lt;/p&gt;'),(21,21,'','##project.action## ##project.name## ##project.code##','##lang.project.url## : ##project.url##\n\n##lang.project.description##\n\n##lang.project.name## : ##project.name##\n##lang.project.code## : ##project.code##\n##lang.project.manager## : ##project.manager##\n##lang.project.managergroup## : ##project.managergroup##\n##lang.project.creationdate## : ##project.creationdate##\n##lang.project.priority## : ##project.priority##\n##lang.project.state## : ##project.state##\n##lang.project.type## : ##project.type##\n##lang.project.description## : ##project.description##\n\n##lang.project.numberoftasks## : ##project.numberoftasks##\n\n\n\n##FOREACHtasks##\n\n[##task.creationdate##]\n##lang.task.name## : ##task.name##\n##lang.task.state## : ##task.state##\n##lang.task.type## : ##task.type##\n##lang.task.percent## : ##task.percent##\n##lang.task.description## : ##task.description##\n\n##ENDFOREACHtasks##','&lt;p&gt;##lang.project.url## : &lt;a href=\"##project.url##\"&gt;##project.url##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;##lang.project.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.project.name## : ##project.name##&lt;br /&gt;##lang.project.code## : ##project.code##&lt;br /&gt; ##lang.project.manager## : ##project.manager##&lt;br /&gt;##lang.project.managergroup## : ##project.managergroup##&lt;br /&gt; ##lang.project.creationdate## : ##project.creationdate##&lt;br /&gt;##lang.project.priority## : ##project.priority## &lt;br /&gt;##lang.project.state## : ##project.state##&lt;br /&gt;##lang.project.type## : ##project.type##&lt;br /&gt;##lang.project.description## : ##project.description##&lt;/p&gt;\n&lt;p&gt;##lang.project.numberoftasks## : ##project.numberoftasks##&lt;/p&gt;\n&lt;div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt; ##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),(22,22,'','##projecttask.action## ##projecttask.name##','##lang.projecttask.url## : ##projecttask.url##\n\n##lang.projecttask.description##\n\n##lang.projecttask.name## : ##projecttask.name##\n##lang.projecttask.project## : ##projecttask.project##\n##lang.projecttask.creationdate## : ##projecttask.creationdate##\n##lang.projecttask.state## : ##projecttask.state##\n##lang.projecttask.type## : ##projecttask.type##\n##lang.projecttask.description## : ##projecttask.description##\n\n##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##\n\n\n\n##FOREACHtasks##\n\n[##task.creationdate##]\n##lang.task.name## : ##task.name##\n##lang.task.state## : ##task.state##\n##lang.task.type## : ##task.type##\n##lang.task.percent## : ##task.percent##\n##lang.task.description## : ##task.description##\n\n##ENDFOREACHtasks##','&lt;p&gt;##lang.projecttask.url## : &lt;a href=\"##projecttask.url##\"&gt;##projecttask.url##&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;##lang.projecttask.description##&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;##lang.projecttask.name## : ##projecttask.name##&lt;br /&gt;##lang.projecttask.project## : &lt;a href=\"##projecttask.projecturl##\"&gt;##projecttask.project##&lt;/a&gt;&lt;br /&gt;##lang.projecttask.creationdate## : ##projecttask.creationdate##&lt;br /&gt;##lang.projecttask.state## : ##projecttask.state##&lt;br /&gt;##lang.projecttask.type## : ##projecttask.type##&lt;br /&gt;##lang.projecttask.description## : ##projecttask.description##&lt;/p&gt;\n&lt;p&gt;##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##&lt;/p&gt;\n&lt;div&gt;\n&lt;p&gt;##FOREACHtasks##&lt;/p&gt;\n&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt;##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;\n&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;\n&lt;/div&gt;'),(23,23,'','##objectlock.action##','##objectlock.type## ###objectlock.id## - ##objectlock.name##\n\n      ##lang.objectlock.url##\n      ##objectlock.url##\n\n      ##lang.objectlock.date_mod##\n      ##objectlock.date_mod##\n\n      Hello ##objectlock.lockedby.firstname##,\n      Could go to this item and unlock it for me?\n      Thank you,\n      Regards,\n      ##objectlock.requester.firstname##','&lt;table&gt;\n      &lt;tbody&gt;\n      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##objectlock.url##\"&gt;##objectlock.type## ###objectlock.id## - ##objectlock.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.objectlock.url##&lt;/td&gt;\n      &lt;td&gt;##objectlock.url##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.objectlock.date_mod##&lt;/td&gt;\n      &lt;td&gt;##objectlock.date_mod##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/tbody&gt;\n      &lt;/table&gt;\n      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello ##objectlock.lockedby.firstname##,&lt;br /&gt;Could go to this item and unlock it for me?&lt;br /&gt;Thank you,&lt;br /&gt;Regards,&lt;br /&gt;##objectlock.requester.firstname## ##objectlock.requester.lastname##&lt;/span&gt;&lt;/p&gt;'),(24,24,'','##savedsearch.action## ##savedsearch.name##','##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##\n\n      ##savedsearch.message##\n\n      ##lang.savedsearch.url##\n      ##savedsearch.url##\n\n      Regards,','&lt;table&gt;\n      &lt;tbody&gt;\n      &lt;tr&gt;&lt;th colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;\n      &lt;tr&gt;&lt;td colspan=\"2\"&gt;&lt;a href=\"##savedsearch.url##\"&gt;##savedsearch.message##&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;\n      &lt;tr&gt;\n      &lt;td&gt;##lang.savedsearch.url##&lt;/td&gt;\n      &lt;td&gt;##savedsearch.url##&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/tbody&gt;\n      &lt;/table&gt;\n      &lt;p&gt;&lt;span style=\"font-size: small;\"&gt;Hello &lt;br /&gt;Regards,&lt;/span&gt;&lt;/p&gt;'),(25,25,'','##certificate.action##  ##certificate.entity##','##lang.certificate.entity## : ##certificate.entity##\n\n##FOREACHcertificates##\n\n##lang.certificate.serial## : ##certificate.serial##\n\n##lang.certificate.expirationdate## : ##certificate.expirationdate##\n\n##certificate.url##\n ##ENDFOREACHcertificates##','&lt;p&gt;\n##lang.certificate.entity## : ##certificate.entity##&lt;br /&gt;\n##FOREACHcertificates##\n&lt;br /&gt;##lang.certificate.name## : ##certificate.name##&lt;br /&gt;\n##lang.certificate.serial## : ##certificate.serial##&lt;br /&gt;\n##lang.certificate.expirationdate## : ##certificate.expirationdate##\n&lt;br /&gt; &lt;a href=\"##certificate.url##\"&gt; ##certificate.url##\n&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHcertificates##&lt;/p&gt;');
/*!40000 ALTER TABLE `glpi_notificationtemplatetranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_notimportedemails`
--

DROP TABLE IF EXISTS `glpi_notimportedemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_notimportedemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `subject` text,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `mailcollectors_id` (`mailcollectors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_notimportedemails`
--

LOCK TABLES `glpi_notimportedemails` WRITE;
/*!40000 ALTER TABLE `glpi_notimportedemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_notimportedemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_objectlocks`
--

DROP TABLE IF EXISTS `glpi_objectlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_objectlocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Type of locked object',
  `items_id` int(11) NOT NULL COMMENT 'RELATION to various tables, according to itemtype (ID)',
  `users_id` int(11) NOT NULL COMMENT 'id of the locker',
  `date_mod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp of the lock',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_objectlocks`
--

LOCK TABLES `glpi_objectlocks` WRITE;
/*!40000 ALTER TABLE `glpi_objectlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_objectlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_olalevelactions`
--

DROP TABLE IF EXISTS `glpi_olalevelactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_olalevelactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `olalevels_id` (`olalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_olalevelactions`
--

LOCK TABLES `glpi_olalevelactions` WRITE;
/*!40000 ALTER TABLE `glpi_olalevelactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_olalevelactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_olalevelcriterias`
--

DROP TABLE IF EXISTS `glpi_olalevelcriterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_olalevelcriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `olalevels_id` (`olalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_olalevelcriterias`
--

LOCK TABLES `glpi_olalevelcriterias` WRITE;
/*!40000 ALTER TABLE `glpi_olalevelcriterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_olalevelcriterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_olalevels`
--

DROP TABLE IF EXISTS `glpi_olalevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_olalevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `olas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `olas_id` (`olas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_olalevels`
--

LOCK TABLES `glpi_olalevels` WRITE;
/*!40000 ALTER TABLE `glpi_olalevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_olalevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_olalevels_tickets`
--

DROP TABLE IF EXISTS `glpi_olalevels_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_olalevels_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `olalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`olalevels_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `olalevels_id` (`olalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_olalevels_tickets`
--

LOCK TABLES `glpi_olalevels_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_olalevels_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_olalevels_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_olas`
--

DROP TABLE IF EXISTS `glpi_olas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_olas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_olas`
--

LOCK TABLES `glpi_olas` WRITE;
/*!40000 ALTER TABLE `glpi_olas` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_olas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemarchitectures`
--

DROP TABLE IF EXISTS `glpi_operatingsystemarchitectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemarchitectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemarchitectures`
--

LOCK TABLES `glpi_operatingsystemarchitectures` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemarchitectures` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemarchitectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemeditions`
--

DROP TABLE IF EXISTS `glpi_operatingsystemeditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemeditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemeditions`
--

LOCK TABLES `glpi_operatingsystemeditions` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemeditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemeditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemkernels`
--

DROP TABLE IF EXISTS `glpi_operatingsystemkernels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemkernels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemkernels`
--

LOCK TABLES `glpi_operatingsystemkernels` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemkernels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemkernels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemkernelversions`
--

DROP TABLE IF EXISTS `glpi_operatingsystemkernelversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemkernelversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operatingsystemkernels_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `operatingsystemkernels_id` (`operatingsystemkernels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemkernelversions`
--

LOCK TABLES `glpi_operatingsystemkernelversions` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemkernelversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemkernelversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystems`
--

DROP TABLE IF EXISTS `glpi_operatingsystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystems`
--

LOCK TABLES `glpi_operatingsystems` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemservicepacks`
--

DROP TABLE IF EXISTS `glpi_operatingsystemservicepacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemservicepacks`
--

LOCK TABLES `glpi_operatingsystemservicepacks` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemservicepacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemservicepacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_operatingsystemversions`
--

DROP TABLE IF EXISTS `glpi_operatingsystemversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_operatingsystemversions`
--

LOCK TABLES `glpi_operatingsystemversions` WRITE;
/*!40000 ALTER TABLE `glpi_operatingsystemversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_operatingsystemversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_pdumodels`
--

DROP TABLE IF EXISTS `glpi_pdumodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_pdumodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `max_power` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `is_rackable` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_rackable` (`is_rackable`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_pdumodels`
--

LOCK TABLES `glpi_pdumodels` WRITE;
/*!40000 ALTER TABLE `glpi_pdumodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_pdumodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_pdus`
--

DROP TABLE IF EXISTS `glpi_pdus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_pdus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdumodels_id` int(11) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0' COMMENT 'RELATION to states (id)',
  `comment` text COLLATE utf8_unicode_ci,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `pdutypes_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `pdumodels_id` (`pdumodels_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `pdutypes_id` (`pdutypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_pdus`
--

LOCK TABLES `glpi_pdus` WRITE;
/*!40000 ALTER TABLE `glpi_pdus` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_pdus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_pdus_plugs`
--

DROP TABLE IF EXISTS `glpi_pdus_plugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_pdus_plugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugs_id` int(11) NOT NULL DEFAULT '0',
  `pdus_id` int(11) NOT NULL DEFAULT '0',
  `number_plugs` int(11) DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugs_id` (`plugs_id`),
  KEY `pdus_id` (`pdus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_pdus_plugs`
--

LOCK TABLES `glpi_pdus_plugs` WRITE;
/*!40000 ALTER TABLE `glpi_pdus_plugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_pdus_plugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_pdus_racks`
--

DROP TABLE IF EXISTS `glpi_pdus_racks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_pdus_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `racks_id` int(11) NOT NULL DEFAULT '0',
  `pdus_id` int(11) NOT NULL DEFAULT '0',
  `side` int(11) DEFAULT '0',
  `position` int(11) NOT NULL,
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `racks_id` (`racks_id`),
  KEY `pdus_id` (`pdus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_pdus_racks`
--

LOCK TABLES `glpi_pdus_racks` WRITE;
/*!40000 ALTER TABLE `glpi_pdus_racks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_pdus_racks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_pdutypes`
--

DROP TABLE IF EXISTS `glpi_pdutypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_pdutypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_pdutypes`
--

LOCK TABLES `glpi_pdutypes` WRITE;
/*!40000 ALTER TABLE `glpi_pdutypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_pdutypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_peripheralmodels`
--

DROP TABLE IF EXISTS `glpi_peripheralmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_peripheralmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `required_units` int(11) NOT NULL DEFAULT '1',
  `depth` float NOT NULL DEFAULT '1',
  `power_connections` int(11) NOT NULL DEFAULT '0',
  `power_consumption` int(11) NOT NULL DEFAULT '0',
  `is_half_rack` tinyint(1) NOT NULL DEFAULT '0',
  `picture_front` text COLLATE utf8_unicode_ci,
  `picture_rear` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_peripheralmodels`
--

LOCK TABLES `glpi_peripheralmodels` WRITE;
/*!40000 ALTER TABLE `glpi_peripheralmodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_peripheralmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_peripherals`
--

DROP TABLE IF EXISTS `glpi_peripherals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_peripherals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `peripheraltypes_id` int(11) NOT NULL DEFAULT '0',
  `peripheralmodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `peripheralmodels_id` (`peripheralmodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `peripheraltypes_id` (`peripheraltypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_peripherals`
--

LOCK TABLES `glpi_peripherals` WRITE;
/*!40000 ALTER TABLE `glpi_peripherals` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_peripherals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_peripheraltypes`
--

DROP TABLE IF EXISTS `glpi_peripheraltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_peripheraltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_peripheraltypes`
--

LOCK TABLES `glpi_peripheraltypes` WRITE;
/*!40000 ALTER TABLE `glpi_peripheraltypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_peripheraltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phonemodels`
--

DROP TABLE IF EXISTS `glpi_phonemodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phonemodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phonemodels`
--

LOCK TABLES `glpi_phonemodels` WRITE;
/*!40000 ALTER TABLE `glpi_phonemodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phonemodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phonepowersupplies`
--

DROP TABLE IF EXISTS `glpi_phonepowersupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phonepowersupplies`
--

LOCK TABLES `glpi_phonepowersupplies` WRITE;
/*!40000 ALTER TABLE `glpi_phonepowersupplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phonepowersupplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phones`
--

DROP TABLE IF EXISTS `glpi_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `phonetypes_id` int(11) NOT NULL DEFAULT '0',
  `phonemodels_id` int(11) NOT NULL DEFAULT '0',
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonepowersupplies_id` int(11) NOT NULL DEFAULT '0',
  `number_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_headset` tinyint(1) NOT NULL DEFAULT '0',
  `have_hp` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `phonemodels_id` (`phonemodels_id`),
  KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `phonetypes_id` (`phonetypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phones`
--

LOCK TABLES `glpi_phones` WRITE;
/*!40000 ALTER TABLE `glpi_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_phonetypes`
--

DROP TABLE IF EXISTS `glpi_phonetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_phonetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_phonetypes`
--

LOCK TABLES `glpi_phonetypes` WRITE;
/*!40000 ALTER TABLE `glpi_phonetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_phonetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_planningrecalls`
--

DROP TABLE IF EXISTS `glpi_planningrecalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_planningrecalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `before_time` int(11) NOT NULL DEFAULT '-10',
  `when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  KEY `users_id` (`users_id`),
  KEY `before_time` (`before_time`),
  KEY `when` (`when`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_planningrecalls`
--

LOCK TABLES `glpi_planningrecalls` WRITE;
/*!40000 ALTER TABLE `glpi_planningrecalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_planningrecalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_contracts`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_contracts`
--

LOCK TABLES `glpi_plugin_genericobject_contracts` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_glpis_vcpuses`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_glpis_vcpuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_glpis_vcpuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_glpis_vcpuses`
--

LOCK TABLES `glpi_plugin_genericobject_glpis_vcpuses` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_glpis_vcpuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_glpis_vcpuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_rams`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_rams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_rams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_rams`
--

LOCK TABLES `glpi_plugin_genericobject_rams` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_rams` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_rams` VALUES (1,'1Gb','','2019-03-04 11:26:54','2019-03-04 11:26:54');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_rams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_typefamilies`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_typefamilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_typefamilies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_typefamilies`
--

LOCK TABLES `glpi_plugin_genericobject_typefamilies` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_typefamilies` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_typefamilies` VALUES (1,'VPS','','2019-03-02 06:52:18','2019-03-02 06:52:18'),(2,'VPS','','2019-03-05 04:47:29','2019-03-05 04:47:29');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_typefamilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_types`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `use_global_search` tinyint(1) NOT NULL DEFAULT '0',
  `use_unicity` tinyint(1) NOT NULL DEFAULT '0',
  `use_history` tinyint(1) NOT NULL DEFAULT '0',
  `use_infocoms` tinyint(1) NOT NULL DEFAULT '0',
  `use_contracts` tinyint(1) NOT NULL DEFAULT '0',
  `use_documents` tinyint(1) NOT NULL DEFAULT '0',
  `use_tickets` tinyint(1) NOT NULL DEFAULT '0',
  `use_links` tinyint(1) NOT NULL DEFAULT '0',
  `use_loans` tinyint(1) NOT NULL DEFAULT '0',
  `use_network_ports` tinyint(1) NOT NULL DEFAULT '0',
  `use_direct_connections` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_datainjection` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_pdf` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_order` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_uninstall` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_geninventorynumber` tinyint(1) NOT NULL DEFAULT '0',
  `use_menu_entry` tinyint(1) NOT NULL DEFAULT '0',
  `use_projects` tinyint(1) NOT NULL DEFAULT '0',
  `linked_itemtypes` text COLLATE utf8_unicode_ci,
  `plugin_genericobject_typefamilies_id` int(11) NOT NULL DEFAULT '0',
  `use_notepad` tinyint(1) NOT NULL DEFAULT '0',
  `use_plugin_simcard` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Object types definition table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_types`
--

LOCK TABLES `glpi_plugin_genericobject_types` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_types` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_types` VALUES (27,0,'PluginGenericobjectVpscomp',1,'vpscomp','','2019-03-11 11:30:33','2019-03-05 06:43:19',0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `glpi_plugin_genericobject_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vcpus`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vcpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vcpus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vcpus`
--

LOCK TABLES `glpi_plugin_genericobject_vcpus` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vcpus` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vcpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpcpus`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpcpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpcpus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpcpus`
--

LOCK TABLES `glpi_plugin_genericobject_vpcpus` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpcpus` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_vpcpus` VALUES (1,'vpscups',NULL,'2019-03-05 06:51:06','2019-03-05 06:51:06');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpcpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpcpuses`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpcpuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpcpuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpcpuses`
--

LOCK TABLES `glpi_plugin_genericobject_vpcpuses` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpcpuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpcpuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpemails`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpemails`
--

LOCK TABLES `glpi_plugin_genericobject_vpemails` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpemails` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_vpemails` VALUES (1,'d.taylakov@ktcl.kz','','2019-03-05 06:47:08','2019-03-05 06:47:08');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vphdds`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vphdds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vphdds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vphdds`
--

LOCK TABLES `glpi_plugin_genericobject_vphdds` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vphdds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vphdds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vplogins`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vplogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vplogins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vplogins`
--

LOCK TABLES `glpi_plugin_genericobject_vplogins` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vplogins` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_vplogins` VALUES (1,'root','','2019-03-05 06:51:06','2019-03-05 06:51:06');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vplogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vppaswords`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vppaswords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vppaswords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vppaswords`
--

LOCK TABLES `glpi_plugin_genericobject_vppaswords` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vppaswords` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_vppaswords` VALUES (1,'Стандартный','','2019-03-05 06:50:53','2019-03-05 06:50:53');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vppaswords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vprams`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vprams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vprams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vprams`
--

LOCK TABLES `glpi_plugin_genericobject_vprams` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vprams` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vprams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpscomps`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpscomps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpscomps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `computers_id` int(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `domains_id` int(11) DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugin_genericobject_vpcpus_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugin_genericobject_vpemails_id` int(11) NOT NULL DEFAULT '0',
  `plugin_genericobject_vprams_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `plugin_genericobject_vphdds_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creationdate` date DEFAULT NULL,
  `users_id_tech` int(11) DEFAULT NULL,
  `expirationdate` date DEFAULT NULL,
  `plugin_genericobject_vpsos_id` int(11) NOT NULL DEFAULT '0',
  `plugin_genericobject_vplogins_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) DEFAULT NULL,
  `plugin_genericobject_vppaswords_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='PluginGenericobjectVpscomp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpscomps`
--

LOCK TABLES `glpi_plugin_genericobject_vpscomps` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpscomps` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_vpscomps` VALUES (1,0,0,'test1','2019-03-05 08:06:02','2019-03-05 06:45:22',1,'Смирнов',2,'2879742424','2',1,'4Gb','lotus.ktcl.kz/RSProj%5CPublic%5CBRD%5Cbrd_orbp.nsf/%24%24OpenDominoDocument.xsp?documentId=A5010136A5ABCB61462583B3001510EF&action=readDocument','40Gb','2019-03-01',2,'2020-04-01',1,1,1,1,''),(2,0,0,'ubuntu8.04 Coca-Cola','2019-03-06 04:26:24','2019-03-05 11:09:28',1,'Кашаров Борис',2,'+774782348793','2',1,'1Gb','mail.ru','25Gb','2019-03-05',6,'2020-03-01',3,1,1,1,'Комент1'),(3,0,0,'test2','2019-03-06 07:32:05','2019-03-06 07:32:05',2,'',1,'','2',1,'2Gb','','40Gb','2019-03-06',2,'2020-03-31',3,1,1,1,'');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpscomps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpsemails`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpsemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpsemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpsemails`
--

LOCK TABLES `glpi_plugin_genericobject_vpsemails` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpshdds`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpshdds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpshdds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpshdds`
--

LOCK TABLES `glpi_plugin_genericobject_vpshdds` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpshdds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpshdds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpslogins`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpslogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpslogins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpslogins`
--

LOCK TABLES `glpi_plugin_genericobject_vpslogins` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpslogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpslogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpsmemories`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpsmemories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpsmemories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpsmemories`
--

LOCK TABLES `glpi_plugin_genericobject_vpsmemories` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsmemories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsmemories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpsos`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpsos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpsos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpsos`
--

LOCK TABLES `glpi_plugin_genericobject_vpsos` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsos` DISABLE KEYS */;
INSERT INTO `glpi_plugin_genericobject_vpsos` VALUES (1,'Ubuntu 18.04 64x','','2019-03-05 06:50:17','2019-03-05 06:50:17'),(2,'MS Windows 10 64x ru','','2019-03-05 06:50:34','2019-03-05 06:50:34'),(3,'Centos 7.1','','2019-03-06 04:26:07','2019-03-06 04:26:07');
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpspasswords`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpspasswords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpspasswords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpspasswords`
--

LOCK TABLES `glpi_plugin_genericobject_vpspasswords` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpspasswords` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpspasswords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpsrams`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpsrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpsrams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpsrams`
--

LOCK TABLES `glpi_plugin_genericobject_vpsrams` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpsrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugin_genericobject_vpssrvs`
--

DROP TABLE IF EXISTS `glpi_plugin_genericobject_vpssrvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_genericobject_vpssrvs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_genericobject_vpssrvs`
--

LOCK TABLES `glpi_plugin_genericobject_vpssrvs` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpssrvs` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugin_genericobject_vpssrvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugins`
--

DROP TABLE IF EXISTS `glpi_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`directory`),
  KEY `state` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugins`
--

LOCK TABLES `glpi_plugins` WRITE;
/*!40000 ALTER TABLE `glpi_plugins` DISABLE KEYS */;
INSERT INTO `glpi_plugins` VALUES (1,'genericobject','Управление объектами','2.7.0',1,'<a href=\"mailto:contact@teclib.com\">Teclib\'</a> & siprossii','https://github.com/pluginsGLPI/genericobject','GPLv2+'),(2,'example','Plugin Example','7.1',2,'GLPI developer team','https://github.com/pluginsGLPI/example','GPLv2+'),(3,'fields','Дополнительные поля','1.9.1',2,'Teclib\', Olivier Moron','teclib.com','GPLv2+'),(4,'uninstall','Item\'s Lifecycle (uninstall)','2.6.0',2,'Walid Nouh, François Legastelois, Remi Collet','https://github.com/pluginsGLPI/uninstall','GPLv2+'),(5,'telegrambot','TelegramBot','2.0.0',2,'<a href=\"http://trulymanager.com\" target=\"_blank\">Truly Systems</a>','https://github.com/pluginsGLPI/telegrambot','GPLv2+'),(6,'datainjection','Вложить файл','2.7.0',2,'Walid Nouh, Remi Collet, Nelly Mahu-Lasson, Xavier Caillaud','https://github.com/pluginsGLPI/datainjection','GPLv2+'),(7,'satisfaction','Больше вопросов для оценки удовлетворения','1.4.0',2,'<a href=\'www.teclib.com\'>TECLIB\'</a>, <a href=\'http://infotel.com/services/expertise-technique/glpi/\'>Infotel</a>','https://github.com/pluginsGLPI/satisfaction','GPLv2+'),(8,'formcreator','Формы','2.7.0',2,'<a href=\"http://www.teclib.com\">Teclib\'</a>','https://github.com/pluginsGLPI/formcreator','<a href=\"../plugins/formcreator/LICENSE\" target=\"_blank\">GPLv2</a>'),(9,'dashboard','Панель отчетов','0.9.5',2,'<a href=\"mailto:stevenesdonato@gmail.com\"> Stevenes Donato </b> </a>','https://forge.glpi-project.org/projects/dashboard','GPLv2+'),(10,'useditemsexport','Used items export','2.2.0',2,'TECLIB','https://github.com/pluginsGLPI/useditemsexport','GPLv2+');
/*!40000 ALTER TABLE `glpi_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_plugs`
--

DROP TABLE IF EXISTS `glpi_plugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugs`
--

LOCK TABLES `glpi_plugs` WRITE;
/*!40000 ALTER TABLE `glpi_plugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_plugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_printermodels`
--

DROP TABLE IF EXISTS `glpi_printermodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_printermodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_printermodels`
--

LOCK TABLES `glpi_printermodels` WRITE;
/*!40000 ALTER TABLE `glpi_printermodels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_printermodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_printers`
--

DROP TABLE IF EXISTS `glpi_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_printers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT '0',
  `have_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `have_usb` tinyint(1) NOT NULL DEFAULT '0',
  `have_wifi` tinyint(1) NOT NULL DEFAULT '0',
  `have_ethernet` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `memory_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `domains_id` int(11) NOT NULL DEFAULT '0',
  `networks_id` int(11) NOT NULL DEFAULT '0',
  `printertypes_id` int(11) NOT NULL DEFAULT '0',
  `printermodels_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT '0',
  `last_pages_counter` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `domains_id` (`domains_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `printermodels_id` (`printermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `printertypes_id` (`printertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `last_pages_counter` (`last_pages_counter`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_printers`
--

LOCK TABLES `glpi_printers` WRITE;
/*!40000 ALTER TABLE `glpi_printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_printertypes`
--

DROP TABLE IF EXISTS `glpi_printertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_printertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_printertypes`
--

LOCK TABLES `glpi_printertypes` WRITE;
/*!40000 ALTER TABLE `glpi_printertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_printertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problemcosts`
--

DROP TABLE IF EXISTS `glpi_problemcosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problemcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `problems_id` (`problems_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problemcosts`
--

LOCK TABLES `glpi_problemcosts` WRITE;
/*!40000 ALTER TABLE `glpi_problemcosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problemcosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems`
--

DROP TABLE IF EXISTS `glpi_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `content` longtext COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `time_to_resolve` datetime DEFAULT NULL,
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `impactcontent` longtext COLLATE utf8_unicode_ci,
  `causecontent` longtext COLLATE utf8_unicode_ci,
  `symptomcontent` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin_waiting_date` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems`
--

LOCK TABLES `glpi_problems` WRITE;
/*!40000 ALTER TABLE `glpi_problems` DISABLE KEYS */;
INSERT INTO `glpi_problems` VALUES (1,'',0,0,0,2,'','2019-03-05 07:00:34','2019-03-05 06:58:23',NULL,NULL,'2019-03-06 00:00:00',2,2,4,3,4,1,NULL,NULL,NULL,0,NULL,0,0,0,'2019-03-05 07:00:34');
/*!40000 ALTER TABLE `glpi_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems_suppliers`
--

DROP TABLE IF EXISTS `glpi_problems_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems_suppliers`
--

LOCK TABLES `glpi_problems_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_problems_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problems_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems_tickets`
--

DROP TABLE IF EXISTS `glpi_problems_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems_tickets`
--

LOCK TABLES `glpi_problems_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_problems_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problems_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problems_users`
--

DROP TABLE IF EXISTS `glpi_problems_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problems_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '0',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problems_users`
--

LOCK TABLES `glpi_problems_users` WRITE;
/*!40000 ALTER TABLE `glpi_problems_users` DISABLE KEYS */;
INSERT INTO `glpi_problems_users` VALUES (1,1,2,1,0,''),(2,1,3,3,0,''),(3,1,4,2,0,'');
/*!40000 ALTER TABLE `glpi_problems_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_problemtasks`
--

DROP TABLE IF EXISTS `glpi_problemtasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_problemtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problems_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `problems_id` (`problems_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `state` (`state`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `tasktemplates_id` (`tasktemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_problemtasks`
--

LOCK TABLES `glpi_problemtasks` WRITE;
/*!40000 ALTER TABLE `glpi_problemtasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_problemtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profilerights`
--

DROP TABLE IF EXISTS `glpi_profilerights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profilerights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rights` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`profiles_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profilerights`
--

LOCK TABLES `glpi_profilerights` WRITE;
/*!40000 ALTER TABLE `glpi_profilerights` DISABLE KEYS */;
INSERT INTO `glpi_profilerights` VALUES (1,1,'computer',0),(2,1,'monitor',0),(3,1,'software',0),(4,1,'networking',0),(5,1,'internet',0),(6,1,'printer',0),(7,1,'peripheral',0),(8,1,'cartridge',0),(9,1,'consumable',0),(10,1,'phone',0),(12,1,'contact_enterprise',0),(13,1,'document',0),(14,1,'contract',0),(15,1,'infocom',0),(16,1,'knowbase',2048),(20,1,'reservation',1024),(21,1,'reports',0),(22,1,'dropdown',0),(24,1,'device',0),(25,1,'typedoc',0),(26,1,'link',0),(27,1,'config',0),(29,1,'rule_ticket',0),(30,1,'rule_import',0),(31,1,'rule_ldap',0),(32,1,'rule_softwarecategories',0),(33,1,'search_config',0),(36,1,'profile',0),(37,1,'user',0),(39,1,'group',0),(40,1,'entity',0),(41,1,'transfer',0),(42,1,'logs',0),(43,1,'reminder_public',1),(44,1,'rssfeed_public',1),(45,1,'bookmark_public',0),(46,1,'backup',0),(47,1,'ticket',5),(51,1,'followup',5),(52,1,'task',1),(64,1,'planning',0),(67,1,'statistic',0),(68,1,'password_update',1),(70,1,'show_group_hardware',0),(71,1,'rule_dictionnary_software',0),(72,1,'rule_dictionnary_dropdown',0),(73,1,'budget',0),(75,1,'notification',0),(76,1,'rule_mailcollector',0),(79,1,'calendar',0),(80,1,'slm',0),(81,1,'rule_dictionnary_printer',0),(85,1,'problem',0),(89,1,'tickettemplate',0),(90,1,'ticketrecurrent',0),(91,1,'ticketcost',0),(94,1,'ticketvalidation',0),(95,2,'computer',127),(96,2,'monitor',0),(97,2,'software',127),(98,2,'networking',127),(99,2,'internet',0),(100,2,'printer',0),(101,2,'peripheral',0),(102,2,'cartridge',0),(103,2,'consumable',0),(104,2,'phone',0),(106,2,'contact_enterprise',127),(107,2,'document',0),(108,2,'contract',127),(109,2,'infocom',0),(110,2,'knowbase',15383),(114,2,'reservation',0),(115,2,'reports',1),(116,2,'dropdown',23),(118,2,'device',23),(119,2,'typedoc',23),(120,2,'link',23),(121,2,'config',3),(123,2,'rule_ticket',1047),(124,2,'rule_import',23),(125,2,'rule_ldap',23),(126,2,'rule_softwarecategories',23),(127,2,'search_config',3072),(130,2,'profile',0),(131,2,'user',6159),(133,2,'group',33),(134,2,'entity',3191),(135,2,'transfer',23),(136,2,'logs',0),(137,2,'reminder_public',23),(138,2,'rssfeed_public',0),(139,2,'bookmark_public',0),(140,2,'backup',0),(141,2,'ticket',0),(145,2,'followup',0),(146,2,'task',0),(158,2,'planning',0),(161,2,'statistic',0),(162,2,'password_update',1),(164,2,'show_group_hardware',0),(165,2,'rule_dictionnary_software',0),(166,2,'rule_dictionnary_dropdown',23),(167,2,'budget',32),(169,2,'notification',23),(170,2,'rule_mailcollector',23),(173,2,'calendar',23),(174,2,'slm',0),(175,2,'rule_dictionnary_printer',0),(179,2,'problem',0),(183,2,'tickettemplate',0),(184,2,'ticketrecurrent',0),(185,2,'ticketcost',0),(188,2,'ticketvalidation',0),(189,3,'computer',127),(190,3,'monitor',127),(191,3,'software',127),(192,3,'networking',127),(193,3,'internet',31),(194,3,'printer',127),(195,3,'peripheral',127),(196,3,'cartridge',127),(197,3,'consumable',127),(198,3,'phone',127),(200,3,'contact_enterprise',127),(201,3,'document',127),(202,3,'contract',127),(203,3,'infocom',23),(204,3,'knowbase',14359),(208,3,'reservation',1055),(209,3,'reports',1),(210,3,'dropdown',23),(212,3,'device',23),(213,3,'typedoc',23),(214,3,'link',23),(215,3,'config',0),(217,3,'rule_ticket',1047),(218,3,'rule_import',0),(219,3,'rule_ldap',0),(220,3,'rule_softwarecategories',0),(221,3,'search_config',3072),(224,3,'profile',1),(225,3,'user',7199),(227,3,'group',119),(228,3,'entity',33),(229,3,'transfer',1),(230,3,'logs',1),(231,3,'reminder_public',23),(232,3,'rssfeed_public',23),(233,3,'bookmark_public',23),(234,3,'backup',1024),(235,3,'ticket',261151),(239,3,'followup',15383),(240,3,'task',13329),(252,3,'planning',3073),(255,3,'statistic',1),(256,3,'password_update',1),(258,3,'show_group_hardware',0),(259,3,'rule_dictionnary_software',0),(260,3,'rule_dictionnary_dropdown',0),(261,3,'budget',127),(263,3,'notification',0),(264,3,'rule_mailcollector',23),(267,3,'calendar',23),(268,3,'slm',23),(269,3,'rule_dictionnary_printer',0),(273,3,'problem',1151),(277,3,'tickettemplate',23),(278,3,'ticketrecurrent',1),(279,3,'ticketcost',23),(282,3,'ticketvalidation',15376),(283,4,'computer',255),(284,4,'monitor',255),(285,4,'software',255),(286,4,'networking',255),(287,4,'internet',159),(288,4,'printer',255),(289,4,'peripheral',255),(290,4,'cartridge',255),(291,4,'consumable',255),(292,4,'phone',255),(294,4,'contact_enterprise',255),(295,4,'document',255),(296,4,'contract',255),(297,4,'infocom',23),(298,4,'knowbase',15383),(302,4,'reservation',1055),(303,4,'reports',1),(304,4,'dropdown',23),(306,4,'device',23),(307,4,'typedoc',23),(308,4,'link',159),(309,4,'config',3),(311,4,'rule_ticket',1047),(312,4,'rule_import',23),(313,4,'rule_ldap',23),(314,4,'rule_softwarecategories',23),(315,4,'search_config',3072),(318,4,'profile',23),(319,4,'user',7327),(321,4,'group',119),(322,4,'entity',3327),(323,4,'transfer',23),(324,4,'logs',1),(325,4,'reminder_public',159),(326,4,'rssfeed_public',159),(327,4,'bookmark_public',23),(328,4,'backup',1045),(329,4,'ticket',261151),(333,4,'followup',15383),(334,4,'task',13329),(346,4,'planning',3073),(349,4,'statistic',1),(350,4,'password_update',1),(352,4,'show_group_hardware',1),(353,4,'rule_dictionnary_software',23),(354,4,'rule_dictionnary_dropdown',23),(355,4,'budget',127),(357,4,'notification',23),(358,4,'rule_mailcollector',23),(361,4,'calendar',23),(362,4,'slm',23),(363,4,'rule_dictionnary_printer',23),(367,4,'problem',1151),(371,4,'tickettemplate',23),(372,4,'ticketrecurrent',23),(373,4,'ticketcost',23),(376,4,'ticketvalidation',15376),(377,5,'computer',0),(378,5,'monitor',0),(379,5,'software',0),(380,5,'networking',0),(381,5,'internet',0),(382,5,'printer',0),(383,5,'peripheral',0),(384,5,'cartridge',0),(385,5,'consumable',0),(386,5,'phone',0),(388,5,'contact_enterprise',0),(389,5,'document',0),(390,5,'contract',0),(391,5,'infocom',0),(392,5,'knowbase',10240),(396,5,'reservation',0),(397,5,'reports',0),(398,5,'dropdown',0),(400,5,'device',0),(401,5,'typedoc',0),(402,5,'link',0),(403,5,'config',0),(405,5,'rule_ticket',0),(406,5,'rule_import',0),(407,5,'rule_ldap',0),(408,5,'rule_softwarecategories',0),(409,5,'search_config',0),(412,5,'profile',0),(413,5,'user',1025),(415,5,'group',0),(416,5,'entity',0),(417,5,'transfer',0),(418,5,'logs',0),(419,5,'reminder_public',0),(420,5,'rssfeed_public',0),(421,5,'bookmark_public',0),(422,5,'backup',0),(423,5,'ticket',140295),(427,5,'followup',12295),(428,5,'task',8193),(440,5,'planning',1),(443,5,'statistic',1),(444,5,'password_update',1),(446,5,'show_group_hardware',0),(447,5,'rule_dictionnary_software',0),(448,5,'rule_dictionnary_dropdown',0),(449,5,'budget',0),(451,5,'notification',0),(452,5,'rule_mailcollector',0),(455,5,'calendar',0),(456,5,'slm',0),(457,5,'rule_dictionnary_printer',0),(461,5,'problem',1024),(465,5,'tickettemplate',0),(466,5,'ticketrecurrent',0),(467,5,'ticketcost',23),(470,5,'ticketvalidation',3088),(471,6,'computer',127),(472,6,'monitor',0),(473,6,'software',0),(474,6,'networking',127),(475,6,'internet',0),(476,6,'printer',0),(477,6,'peripheral',0),(478,6,'cartridge',0),(479,6,'consumable',0),(480,6,'phone',0),(482,6,'contact_enterprise',103),(483,6,'document',0),(484,6,'contract',0),(485,6,'infocom',0),(486,6,'knowbase',0),(490,6,'reservation',0),(491,6,'reports',1),(492,6,'dropdown',7),(494,6,'device',1),(495,6,'typedoc',23),(496,6,'link',23),(497,6,'config',0),(499,6,'rule_ticket',0),(500,6,'rule_import',0),(501,6,'rule_ldap',0),(502,6,'rule_softwarecategories',0),(503,6,'search_config',0),(506,6,'profile',0),(507,6,'user',1055),(509,6,'group',1),(510,6,'entity',33),(511,6,'transfer',0),(512,6,'logs',0),(513,6,'reminder_public',23),(514,6,'rssfeed_public',0),(515,6,'bookmark_public',0),(516,6,'backup',0),(517,6,'ticket',0),(521,6,'followup',0),(522,6,'task',0),(534,6,'planning',0),(537,6,'statistic',0),(538,6,'password_update',1),(540,6,'show_group_hardware',0),(541,6,'rule_dictionnary_software',0),(542,6,'rule_dictionnary_dropdown',0),(543,6,'budget',0),(545,6,'notification',23),(546,6,'rule_mailcollector',0),(549,6,'calendar',23),(550,6,'slm',0),(551,6,'rule_dictionnary_printer',0),(555,6,'problem',0),(559,6,'tickettemplate',0),(560,6,'ticketrecurrent',0),(561,6,'ticketcost',0),(564,6,'ticketvalidation',0),(565,7,'computer',127),(566,7,'monitor',127),(567,7,'software',127),(568,7,'networking',127),(569,7,'internet',31),(570,7,'printer',127),(571,7,'peripheral',127),(572,7,'cartridge',127),(573,7,'consumable',127),(574,7,'phone',127),(576,7,'contact_enterprise',96),(577,7,'document',127),(578,7,'contract',96),(579,7,'infocom',0),(580,7,'knowbase',14359),(584,7,'reservation',1055),(585,7,'reports',1),(586,7,'dropdown',0),(588,7,'device',0),(589,7,'typedoc',0),(590,7,'link',0),(591,7,'config',0),(593,7,'rule_ticket',1047),(594,7,'rule_import',0),(595,7,'rule_ldap',0),(596,7,'rule_softwarecategories',0),(597,7,'search_config',0),(600,7,'profile',0),(601,7,'user',1055),(603,7,'group',1),(604,7,'entity',33),(605,7,'transfer',1),(606,7,'logs',1),(607,7,'reminder_public',23),(608,7,'rssfeed_public',23),(609,7,'bookmark_public',0),(610,7,'backup',0),(611,7,'ticket',261151),(615,7,'followup',15383),(616,7,'task',13329),(628,7,'planning',3073),(631,7,'statistic',1),(632,7,'password_update',1),(634,7,'show_group_hardware',0),(635,7,'rule_dictionnary_software',0),(636,7,'rule_dictionnary_dropdown',0),(637,7,'budget',96),(639,7,'notification',0),(640,7,'rule_mailcollector',23),(643,7,'calendar',23),(644,7,'slm',23),(645,7,'rule_dictionnary_printer',0),(649,7,'problem',1151),(653,7,'tickettemplate',23),(654,7,'ticketrecurrent',1),(655,7,'ticketcost',23),(658,7,'ticketvalidation',15376),(659,1,'change',0),(660,2,'change',0),(661,3,'change',1151),(662,4,'change',1151),(663,5,'change',1054),(664,6,'change',0),(665,7,'change',1151),(666,1,'changevalidation',0),(667,2,'changevalidation',0),(668,3,'changevalidation',1044),(669,4,'changevalidation',1044),(670,5,'changevalidation',20),(671,6,'changevalidation',0),(672,7,'changevalidation',1044),(673,1,'domain',0),(674,2,'domain',23),(675,3,'domain',23),(676,4,'domain',23),(677,5,'domain',0),(678,6,'domain',23),(679,7,'domain',23),(680,1,'location',0),(681,2,'location',23),(682,3,'location',23),(683,4,'location',23),(684,5,'location',0),(685,6,'location',23),(686,7,'location',23),(687,1,'itilcategory',0),(688,2,'itilcategory',23),(689,3,'itilcategory',23),(690,4,'itilcategory',23),(691,5,'itilcategory',0),(692,6,'itilcategory',23),(693,7,'itilcategory',23),(694,1,'knowbasecategory',0),(695,2,'knowbasecategory',23),(696,3,'knowbasecategory',23),(697,4,'knowbasecategory',23),(698,5,'knowbasecategory',0),(699,6,'knowbasecategory',23),(700,7,'knowbasecategory',23),(701,1,'netpoint',0),(702,2,'netpoint',23),(703,3,'netpoint',23),(704,4,'netpoint',23),(705,5,'netpoint',0),(706,6,'netpoint',23),(707,7,'netpoint',23),(708,1,'taskcategory',0),(709,2,'taskcategory',23),(710,3,'taskcategory',23),(711,4,'taskcategory',23),(712,5,'taskcategory',0),(713,6,'taskcategory',23),(714,7,'taskcategory',23),(715,1,'state',0),(716,2,'state',23),(717,3,'state',23),(718,4,'state',23),(719,5,'state',0),(720,6,'state',23),(721,7,'state',23),(722,1,'solutiontemplate',0),(723,2,'solutiontemplate',23),(724,3,'solutiontemplate',23),(725,4,'solutiontemplate',23),(726,5,'solutiontemplate',0),(727,6,'solutiontemplate',0),(728,7,'solutiontemplate',23),(729,1,'queuednotification',0),(730,2,'queuednotification',0),(731,3,'queuednotification',0),(732,4,'queuednotification',31),(733,5,'queuednotification',0),(734,6,'queuednotification',0),(735,7,'queuednotification',0),(736,1,'project',0),(737,2,'project',0),(738,3,'project',1151),(739,4,'project',1151),(740,5,'project',1151),(741,6,'project',0),(742,7,'project',1151),(743,1,'projecttask',0),(744,2,'projecttask',0),(745,3,'projecttask',1121),(746,4,'projecttask',1121),(747,5,'projecttask',0),(748,6,'projecttask',0),(749,7,'projecttask',1025),(750,8,'backup',1),(751,8,'bookmark_public',1),(752,8,'budget',33),(753,8,'calendar',1),(754,8,'cartridge',33),(755,8,'change',1057),(756,8,'changevalidation',0),(757,8,'computer',33),(758,8,'config',1),(759,8,'consumable',33),(760,8,'contact_enterprise',33),(761,8,'contract',33),(762,8,'device',1),(763,8,'document',33),(764,8,'domain',1),(765,8,'dropdown',1),(766,8,'entity',33),(767,8,'followup',8193),(768,8,'global_validation',0),(769,8,'group',33),(770,8,'infocom',1),(771,8,'internet',1),(772,8,'itilcategory',1),(773,8,'knowbase',10241),(774,8,'knowbasecategory',1),(775,8,'link',1),(776,8,'location',1),(777,8,'logs',1),(778,8,'monitor',33),(779,8,'netpoint',1),(780,8,'networking',33),(781,8,'notification',1),(782,8,'password_update',0),(783,8,'peripheral',33),(784,8,'phone',33),(785,8,'planning',3073),(786,8,'printer',33),(787,8,'problem',1057),(788,8,'profile',1),(789,8,'project',1057),(790,8,'projecttask',33),(791,8,'queuednotification',1),(792,8,'reminder_public',1),(793,8,'reports',1),(794,8,'reservation',1),(795,8,'rssfeed_public',1),(796,8,'rule_dictionnary_dropdown',1),(797,8,'rule_dictionnary_printer',1),(798,8,'rule_dictionnary_software',1),(799,8,'rule_import',1),(800,8,'rule_ldap',1),(801,8,'rule_mailcollector',1),(802,8,'rule_softwarecategories',1),(803,8,'rule_ticket',1),(804,8,'search_config',0),(805,8,'show_group_hardware',1),(806,8,'slm',1),(807,8,'software',33),(808,8,'solutiontemplate',1),(809,8,'state',1),(810,8,'statistic',1),(811,8,'task',8193),(812,8,'taskcategory',1),(813,8,'ticket',138241),(814,8,'ticketcost',1),(815,8,'ticketrecurrent',1),(816,8,'tickettemplate',1),(817,8,'ticketvalidation',0),(818,8,'transfer',1),(819,8,'typedoc',1),(820,8,'user',1),(821,1,'license',0),(822,2,'license',0),(823,3,'license',127),(824,4,'license',255),(825,5,'license',0),(826,6,'license',0),(827,7,'license',127),(828,8,'license',33),(829,1,'line',0),(830,2,'line',32),(831,3,'line',127),(832,4,'line',255),(833,5,'line',0),(834,6,'line',0),(835,7,'line',127),(836,8,'line',33),(837,1,'lineoperator',0),(838,2,'lineoperator',0),(839,3,'lineoperator',23),(840,4,'lineoperator',23),(841,5,'lineoperator',0),(842,6,'lineoperator',0),(843,7,'lineoperator',23),(844,8,'lineoperator',1),(845,1,'devicesimcard_pinpuk',0),(846,2,'devicesimcard_pinpuk',0),(847,3,'devicesimcard_pinpuk',3),(848,4,'devicesimcard_pinpuk',3),(849,5,'devicesimcard_pinpuk',0),(850,6,'devicesimcard_pinpuk',0),(851,7,'devicesimcard_pinpuk',3),(852,8,'devicesimcard_pinpuk',1),(853,1,'certificate',0),(854,2,'certificate',32),(855,3,'certificate',127),(856,4,'certificate',255),(857,5,'certificate',0),(858,6,'certificate',0),(859,7,'certificate',127),(860,8,'certificate',33),(861,1,'datacenter',0),(862,2,'datacenter',31),(863,3,'datacenter',31),(864,4,'datacenter',31),(865,5,'datacenter',0),(866,6,'datacenter',0),(867,7,'datacenter',31),(868,8,'datacenter',1),(870,4,'rule_asset',1047),(871,1,'personalization',3),(872,2,'personalization',3),(873,3,'personalization',3),(874,4,'personalization',3),(875,5,'personalization',3),(876,6,'personalization',3),(877,7,'personalization',3),(878,8,'personalization',3),(879,1,'rule_asset',0),(880,2,'rule_asset',1047),(881,3,'rule_asset',0),(882,5,'rule_asset',0),(883,6,'rule_asset',0),(884,7,'rule_asset',0),(885,8,'rule_asset',0),(886,1,'global_validation',0),(887,2,'global_validation',0),(888,3,'global_validation',0),(889,4,'global_validation',0),(890,5,'global_validation',0),(891,6,'global_validation',0),(892,7,'global_validation',0),(893,1,'plugin_genericobject_types',0),(894,2,'plugin_genericobject_types',23),(895,3,'plugin_genericobject_types',0),(896,4,'plugin_genericobject_types',127),(897,5,'plugin_genericobject_types',0),(898,6,'plugin_genericobject_types',0),(899,7,'plugin_genericobject_types',0),(900,8,'plugin_genericobject_types',0),(1093,2,'plugin_genericobject_vpscomps',31),(1094,3,'plugin_genericobject_vpscomps',0),(1095,4,'plugin_genericobject_vpscomps',31),(1096,5,'plugin_genericobject_vpscomps',0),(1097,6,'plugin_genericobject_vpscomps',0),(1098,7,'plugin_genericobject_vpscomps',0),(1099,8,'plugin_genericobject_vpscomps',0),(1100,1,'plugin_genericobject_vpscomps',0);
/*!40000 ALTER TABLE `glpi_profilerights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles`
--

DROP TABLE IF EXISTS `glpi_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'helpdesk',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `helpdesk_hardware` int(11) NOT NULL DEFAULT '0',
  `helpdesk_item_type` text COLLATE utf8_unicode_ci,
  `ticket_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `problem_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `change_status` text COLLATE utf8_unicode_ci COMMENT 'json encoded array of from/dest allowed status change',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interface` (`interface`),
  KEY `is_default` (`is_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles`
--

LOCK TABLES `glpi_profiles` WRITE;
/*!40000 ALTER TABLE `glpi_profiles` DISABLE KEYS */;
INSERT INTO `glpi_profiles` VALUES (1,'Self-Service','helpdesk',1,1,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0},\"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}',NULL,NULL,'[]',0,0,NULL,NULL),(2,'Администратор VPS','central',0,0,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\",\"SoftwareLicense\",\"Certificate\",\"Line\",\"DCRoom\",\"Rack\",\"Enclosure\"]','[]','2019-03-05 11:02:06',NULL,'[]',0,0,NULL,NULL),(3,'Admin','central',0,3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]',0,0,NULL,NULL),(4,'Super-Admin','central',0,3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]',0,0,NULL,NULL),(5,'Hotliner','central',0,3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]',1,0,NULL,NULL),(6,'Сетевой Администратор','central',0,0,'[\"Computer\",\"NetworkEquipment\",\"Rack\"]','[]','2019-03-12 11:08:03',NULL,'[]',0,0,NULL,NULL),(7,'Supervisor','central',0,3,'[\"Computer\",\"Monitor\",\"NetworkEquipment\",\"Peripheral\",\"Phone\",\"Printer\",\"Software\", \"DCRoom\", \"Rack\", \"Enclosure\"]','[]',NULL,NULL,'[]',0,0,NULL,NULL),(8,'Read-Only','central',0,0,'[]','{\"1\":{\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"2\":{\"1\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"3\":{\"1\":0,\"2\":0,\"4\":0,\"5\":0,\"6\":0},\n                       \"4\":{\"1\":0,\"2\":0,\"3\":0,\"5\":0,\"6\":0},\n                       \"5\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"6\":0},\n                       \"6\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0}}',NULL,'This profile defines read-only access. It is used when objects are locked. It can also be used to give to users rights to unlock objects.','{\"1\":{\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"7\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"2\":{\"1\":0,\"7\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"3\":{\"1\":0,\"7\":0,\"2\":0,\"4\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"4\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"5\":0,\"8\":0,\"6\":0},\n                      \"5\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"8\":0,\"6\":0},\n                      \"8\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"6\":0},\n                      \"6\":{\"1\":0,\"7\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0,\"8\":0}}',0,0,'{\"1\":{\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"9\":{\"1\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"10\":{\"1\":0,\"9\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"7\":{\"1\":0,\"9\":0,\"10\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"4\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"11\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"12\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"12\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"5\":0,\"8\":0,\"6\":0},\n                       \"5\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"8\":0,\"6\":0},\n                       \"8\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"6\":0},\n                       \"6\":{\"1\":0,\"9\":0,\"10\":0,\"7\":0,\"4\":0,\"11\":0,\"12\":0,\"5\":0,\"8\":0}}','2016-02-08 16:57:46');
/*!40000 ALTER TABLE `glpi_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles_reminders`
--

DROP TABLE IF EXISTS `glpi_profiles_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles_reminders`
--

LOCK TABLES `glpi_profiles_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_profiles_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_profiles_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles_rssfeeds`
--

DROP TABLE IF EXISTS `glpi_profiles_rssfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles_rssfeeds`
--

LOCK TABLES `glpi_profiles_rssfeeds` WRITE;
/*!40000 ALTER TABLE `glpi_profiles_rssfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_profiles_rssfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_profiles_users`
--

DROP TABLE IF EXISTS `glpi_profiles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_profiles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `users_id` (`users_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_profiles_users`
--

LOCK TABLES `glpi_profiles_users` WRITE;
/*!40000 ALTER TABLE `glpi_profiles_users` DISABLE KEYS */;
INSERT INTO `glpi_profiles_users` VALUES (2,2,4,0,1,0),(3,3,1,0,1,0),(4,4,6,0,1,0),(5,5,2,0,1,0),(9,8,2,0,0,0),(11,6,2,0,0,0),(12,9,2,0,0,0),(13,7,4,0,0,0);
/*!40000 ALTER TABLE `glpi_profiles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projectcosts`
--

DROP TABLE IF EXISTS `glpi_projectcosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projectcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `projects_id` (`projects_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projectcosts`
--

LOCK TABLES `glpi_projectcosts` WRITE;
/*!40000 ALTER TABLE `glpi_projectcosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projectcosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projects`
--

DROP TABLE IF EXISTS `glpi_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttypes_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `show_on_global_gantt` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `projecttemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttypes_id` (`projecttypes_id`),
  KEY `priority` (`priority`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `show_on_global_gantt` (`show_on_global_gantt`),
  KEY `date_creation` (`date_creation`),
  KEY `projecttemplates_id` (`projecttemplates_id`),
  KEY `is_template` (`is_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projects`
--

LOCK TABLES `glpi_projects` WRITE;
/*!40000 ALTER TABLE `glpi_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projectstates`
--

DROP TABLE IF EXISTS `glpi_projectstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projectstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_finished` (`is_finished`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projectstates`
--

LOCK TABLES `glpi_projectstates` WRITE;
/*!40000 ALTER TABLE `glpi_projectstates` DISABLE KEYS */;
INSERT INTO `glpi_projectstates` VALUES (1,'New',NULL,'#06ff00',0,NULL,NULL),(2,'Processing',NULL,'#ffb800',0,NULL,NULL),(3,'Closed',NULL,'#ff0000',1,NULL,NULL);
/*!40000 ALTER TABLE `glpi_projectstates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projecttasks`
--

DROP TABLE IF EXISTS `glpi_projecttasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projecttasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `projecttasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projecttasks_id` (`projecttasks_id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttasktypes_id` (`projecttasktypes_id`),
  KEY `projecttasktemplates_id` (`projecttasktemplates_id`),
  KEY `is_template` (`is_template`),
  KEY `is_milestone` (`is_milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projecttasks`
--

LOCK TABLES `glpi_projecttasks` WRITE;
/*!40000 ALTER TABLE `glpi_projecttasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projecttasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projecttasks_tickets`
--

DROP TABLE IF EXISTS `glpi_projecttasks_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projecttasks_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`projecttasks_id`),
  KEY `projects_id` (`projecttasks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projecttasks_tickets`
--

LOCK TABLES `glpi_projecttasks_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_projecttasks_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projecttasks_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projecttaskteams`
--

DROP TABLE IF EXISTS `glpi_projecttaskteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projecttaskteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projecttasks_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projecttaskteams`
--

LOCK TABLES `glpi_projecttaskteams` WRITE;
/*!40000 ALTER TABLE `glpi_projecttaskteams` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projecttaskteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projecttasktemplates`
--

DROP TABLE IF EXISTS `glpi_projecttasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projecttasktemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `comment` longtext COLLATE utf8_unicode_ci,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `projecttasks_id` int(11) NOT NULL DEFAULT '0',
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `real_start_date` datetime DEFAULT NULL,
  `real_end_date` datetime DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT '0',
  `effective_duration` int(11) NOT NULL DEFAULT '0',
  `projectstates_id` int(11) NOT NULL DEFAULT '0',
  `projecttasktypes_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `percent_done` int(11) NOT NULL DEFAULT '0',
  `is_milestone` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projecttasks_id` (`projecttasks_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttasktypes_id` (`projecttasktypes_id`),
  KEY `is_milestone` (`is_milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projecttasktemplates`
--

LOCK TABLES `glpi_projecttasktemplates` WRITE;
/*!40000 ALTER TABLE `glpi_projecttasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projecttasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projecttasktypes`
--

DROP TABLE IF EXISTS `glpi_projecttasktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projecttasktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projecttasktypes`
--

LOCK TABLES `glpi_projecttasktypes` WRITE;
/*!40000 ALTER TABLE `glpi_projecttasktypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projecttasktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projectteams`
--

DROP TABLE IF EXISTS `glpi_projectteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projectteams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projectteams`
--

LOCK TABLES `glpi_projectteams` WRITE;
/*!40000 ALTER TABLE `glpi_projectteams` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projectteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_projecttypes`
--

DROP TABLE IF EXISTS `glpi_projecttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_projecttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_projecttypes`
--

LOCK TABLES `glpi_projecttypes` WRITE;
/*!40000 ALTER TABLE `glpi_projecttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_projecttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_queuednotifications`
--

DROP TABLE IF EXISTS `glpi_queuednotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_queuednotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `notificationtemplates_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `sent_try` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `sender` text COLLATE utf8_unicode_ci,
  `sendername` text COLLATE utf8_unicode_ci,
  `recipient` text COLLATE utf8_unicode_ci,
  `recipientname` text COLLATE utf8_unicode_ci,
  `replyto` text COLLATE utf8_unicode_ci,
  `replytoname` text COLLATE utf8_unicode_ci,
  `headers` text COLLATE utf8_unicode_ci,
  `body_html` longtext COLLATE utf8_unicode_ci,
  `body_text` longtext COLLATE utf8_unicode_ci,
  `messageid` text COLLATE utf8_unicode_ci,
  `documents` text COLLATE utf8_unicode_ci,
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`,`notificationtemplates_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `entities_id` (`entities_id`),
  KEY `sent_try` (`sent_try`),
  KEY `create_time` (`create_time`),
  KEY `send_time` (`send_time`),
  KEY `sent_time` (`sent_time`),
  KEY `mode` (`mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_queuednotifications`
--

LOCK TABLES `glpi_queuednotifications` WRITE;
/*!40000 ALTER TABLE `glpi_queuednotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_queuednotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rackmodels`
--

DROP TABLE IF EXISTS `glpi_rackmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rackmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `product_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rackmodels`
--

LOCK TABLES `glpi_rackmodels` WRITE;
/*!40000 ALTER TABLE `glpi_rackmodels` DISABLE KEYS */;
INSERT INTO `glpi_rackmodels` VALUES (1,'Серверный шкаф','','','2019-03-05 10:18:48','2019-03-05 10:18:48');
/*!40000 ALTER TABLE `glpi_rackmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_racks`
--

DROP TABLE IF EXISTS `glpi_racks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_racks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rackmodels_id` int(11) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `racktypes_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `number_units` int(11) DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `dcrooms_id` int(11) NOT NULL DEFAULT '0',
  `room_orientation` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_power` int(11) NOT NULL DEFAULT '0',
  `mesured_power` int(11) NOT NULL DEFAULT '0',
  `max_weight` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `rackmodels_id` (`rackmodels_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `racktypes_id` (`racktypes_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `dcrooms_id` (`dcrooms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_racks`
--

LOCK TABLES `glpi_racks` WRITE;
/*!40000 ALTER TABLE `glpi_racks` DISABLE KEYS */;
INSERT INTO `glpi_racks` VALUES (1,'шкаф 1.1','',0,0,2,'','',1,2,1,1,6,3,600,0,900,42,0,NULL,0,0,0,NULL,'#3d53f4',0,10000,0,'2019-03-05 10:20:13','2019-03-05 10:20:13');
/*!40000 ALTER TABLE `glpi_racks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_racktypes`
--

DROP TABLE IF EXISTS `glpi_racktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_racktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_racktypes`
--

LOCK TABLES `glpi_racktypes` WRITE;
/*!40000 ALTER TABLE `glpi_racktypes` DISABLE KEYS */;
INSERT INTO `glpi_racktypes` VALUES (1,0,0,'Сетевой шкаф','','2019-03-05 10:16:50','2019-03-05 10:16:50');
/*!40000 ALTER TABLE `glpi_racktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_registeredids`
--

DROP TABLE IF EXISTS `glpi_registeredids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_registeredids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'USB, PCI ...',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `item` (`items_id`,`itemtype`),
  KEY `device_type` (`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_registeredids`
--

LOCK TABLES `glpi_registeredids` WRITE;
/*!40000 ALTER TABLE `glpi_registeredids` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_registeredids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reminders`
--

DROP TABLE IF EXISTS `glpi_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `is_planned` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `begin_view_date` datetime DEFAULT NULL,
  `end_view_date` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `is_planned` (`is_planned`),
  KEY `state` (`state`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reminders`
--

LOCK TABLES `glpi_reminders` WRITE;
/*!40000 ALTER TABLE `glpi_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reminders_users`
--

DROP TABLE IF EXISTS `glpi_reminders_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reminders_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminders_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reminders_users`
--

LOCK TABLES `glpi_reminders_users` WRITE;
/*!40000 ALTER TABLE `glpi_reminders_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reminders_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_requesttypes`
--

DROP TABLE IF EXISTS `glpi_requesttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_requesttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_helpdesk_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_followup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mail_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_mailfollowup_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_ticketheader` tinyint(1) NOT NULL DEFAULT '1',
  `is_itilfollowup` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_helpdesk_default` (`is_helpdesk_default`),
  KEY `is_followup_default` (`is_followup_default`),
  KEY `is_mail_default` (`is_mail_default`),
  KEY `is_mailfollowup_default` (`is_mailfollowup_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_active` (`is_active`),
  KEY `is_ticketheader` (`is_ticketheader`),
  KEY `is_itilfollowup` (`is_itilfollowup`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_requesttypes`
--

LOCK TABLES `glpi_requesttypes` WRITE;
/*!40000 ALTER TABLE `glpi_requesttypes` DISABLE KEYS */;
INSERT INTO `glpi_requesttypes` VALUES (1,'Helpdesk',1,1,0,0,1,1,1,NULL,NULL,NULL),(2,'E-Mail',0,0,1,1,1,1,1,NULL,NULL,NULL),(3,'Phone',0,0,0,0,1,1,1,NULL,NULL,NULL),(4,'Direct',0,0,0,0,1,1,1,NULL,NULL,NULL),(5,'Written',0,0,0,0,1,1,1,NULL,NULL,NULL),(6,'Other',0,0,0,0,1,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `glpi_requesttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reservationitems`
--

DROP TABLE IF EXISTS `glpi_reservationitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reservationitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `items_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reservationitems`
--

LOCK TABLES `glpi_reservationitems` WRITE;
/*!40000 ALTER TABLE `glpi_reservationitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reservationitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_reservations`
--

DROP TABLE IF EXISTS `glpi_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservationitems_id` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `reservationitems_id` (`reservationitems_id`),
  KEY `users_id` (`users_id`),
  KEY `resagroup` (`reservationitems_id`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_reservations`
--

LOCK TABLES `glpi_reservations` WRITE;
/*!40000 ALTER TABLE `glpi_reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rssfeeds`
--

DROP TABLE IF EXISTS `glpi_rssfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rssfeeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `refresh_rate` int(11) NOT NULL DEFAULT '86400',
  `max_items` int(11) NOT NULL DEFAULT '20',
  `have_error` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `users_id` (`users_id`),
  KEY `date_mod` (`date_mod`),
  KEY `have_error` (`have_error`),
  KEY `is_active` (`is_active`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rssfeeds`
--

LOCK TABLES `glpi_rssfeeds` WRITE;
/*!40000 ALTER TABLE `glpi_rssfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rssfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rssfeeds_users`
--

DROP TABLE IF EXISTS `glpi_rssfeeds_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rssfeeds_users`
--

LOCK TABLES `glpi_rssfeeds_users` WRITE;
/*!40000 ALTER TABLE `glpi_rssfeeds_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_rssfeeds_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ruleactions`
--

DROP TABLE IF EXISTS `glpi_ruleactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ruleactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `field_value` (`field`(50),`value`(50))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ruleactions`
--

LOCK TABLES `glpi_ruleactions` WRITE;
/*!40000 ALTER TABLE `glpi_ruleactions` DISABLE KEYS */;
INSERT INTO `glpi_ruleactions` VALUES (2,2,'assign','entities_id','0'),(3,3,'assign','entities_id','0'),(4,4,'assign','_refuse_email_no_response','1'),(5,5,'assign','_refuse_email_no_response','1'),(6,6,'fromitem','locations_id','1'),(7,7,'fromuser','locations_id','1'),(8,8,'assign','_import_category','1'),(9,9,'regex_result','_affect_user_by_regex','#0'),(10,10,'regex_result','_affect_user_by_regex','#0'),(11,11,'regex_result','_affect_user_by_regex','#0');
/*!40000 ALTER TABLE `glpi_ruleactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulecriterias`
--

DROP TABLE IF EXISTS `glpi_rulecriterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulecriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulecriterias`
--

LOCK TABLES `glpi_rulecriterias` WRITE;
/*!40000 ALTER TABLE `glpi_rulecriterias` DISABLE KEYS */;
INSERT INTO `glpi_rulecriterias` VALUES (2,2,'uid',0,'*'),(3,2,'samaccountname',0,'*'),(4,2,'MAIL_EMAIL',0,'*'),(5,3,'subject',6,'/.*/'),(6,4,'x-auto-response-suppress',6,'/\\S+/'),(7,5,'auto-submitted',6,'/^(?!.*no).+$/i'),(9,6,'locations_id',9,'1'),(10,6,'items_locations',8,'1'),(11,7,'locations_id',9,'1'),(12,7,'users_locations',8,'1'),(13,8,'name',0,'*'),(14,9,'_itemtype',0,'Computer'),(15,9,'_auto',0,'1'),(16,9,'contact',6,'/(.*)@/'),(17,10,'_itemtype',0,'Computer'),(18,10,'_auto',0,'1'),(19,10,'contact',6,'/(.*),/'),(20,11,'_itemtype',0,'Computer'),(21,11,'_auto',0,'1'),(22,11,'contact',6,'/(.*)/');
/*!40000 ALTER TABLE `glpi_rulecriterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rulerightparameters`
--

DROP TABLE IF EXISTS `glpi_rulerightparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rulerightparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rulerightparameters`
--

LOCK TABLES `glpi_rulerightparameters` WRITE;
/*!40000 ALTER TABLE `glpi_rulerightparameters` DISABLE KEYS */;
INSERT INTO `glpi_rulerightparameters` VALUES (1,'(LDAP)Organization','o','',NULL,NULL),(2,'(LDAP)Common Name','cn','',NULL,NULL),(3,'(LDAP)Department Number','departmentnumber','',NULL,NULL),(4,'(LDAP)Email','mail','',NULL,NULL),(5,'Object Class','objectclass','',NULL,NULL),(6,'(LDAP)User ID','uid','',NULL,NULL),(7,'(LDAP)Telephone Number','phone','',NULL,NULL),(8,'(LDAP)Employee Number','employeenumber','',NULL,NULL),(9,'(LDAP)Manager','manager','',NULL,NULL),(10,'(LDAP)DistinguishedName','dn','',NULL,NULL),(12,'(AD)User ID','samaccountname','',NULL,NULL),(13,'(LDAP) Title','title','',NULL,NULL),(14,'(LDAP) MemberOf','memberof','',NULL,NULL);
/*!40000 ALTER TABLE `glpi_rulerightparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_rules`
--

DROP TABLE IF EXISTS `glpi_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `sub_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `sub_type` (`sub_type`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `condition` (`condition`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_rules`
--

LOCK TABLES `glpi_rules` WRITE;
/*!40000 ALTER TABLE `glpi_rules` DISABLE KEYS */;
INSERT INTO `glpi_rules` VALUES (2,0,'RuleRight',1,'Root','','OR',1,NULL,NULL,0,'500717c8-2bd6e957-53a12b5fd35745.02608131',0,NULL),(3,0,'RuleMailCollector',3,'Root','','OR',1,NULL,NULL,0,'500717c8-2bd6e957-53a12b5fd36404.54713349',0,NULL),(4,0,'RuleMailCollector',1,'X-Auto-Response-Suppress','Exclude Auto-Reply emails using X-Auto-Response-Suppress header','AND',0,NULL,'2011-01-18 11:40:42',1,'500717c8-2bd6e957-53a12b5fd36d97.94503423',0,NULL),(5,0,'RuleMailCollector',2,'Auto-Reply Auto-Submitted','Exclude Auto-Reply emails using Auto-Submitted header','OR',1,NULL,'2011-01-18 11:40:42',1,'500717c8-2bd6e957-53a12b5fd376c2.87642651',0,NULL),(6,0,'RuleTicket',1,'Ticket location from item','','AND',0,'Automatically generated by GLPI 0.84',NULL,1,'500717c8-2bd6e957-53a12b5fd37f94.10365341',1,NULL),(7,0,'RuleTicket',2,'Ticket location from user','','AND',0,'Automatically generated by GLPI 0.84',NULL,1,'500717c8-2bd6e957-53a12b5fd38869.86002585',1,NULL),(8,0,'RuleSoftwareCategory',1,'Import category from inventory tool','','AND',0,'Automatically generated by GLPI 9.2',NULL,1,'500717c8-2bd6e957-53a12b5fd38869.86003425',1,NULL),(9,0,'RuleAsset',1,'Domain user assignation','','AND',1,'Automatically generated by GLPI 9.3',NULL,1,'fbeb1115-7a37b143-5a3a6fc1afdc17.92779763',3,NULL),(10,0,'RuleAsset',2,'Multiple users: assign to the first','','AND',1,'Automatically generated by GLPI 9.3',NULL,1,'fbeb1115-7a37b143-5a3a6fc1b03762.88595154',3,NULL),(11,0,'RuleAsset',3,'One user assignation','','AND',1,'Automatically generated by GLPI 9.3',NULL,1,'fbeb1115-7a37b143-5a3a6fc1b073e1.16257440',3,NULL);
/*!40000 ALTER TABLE `glpi_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_savedsearches`
--

DROP TABLE IF EXISTS `glpi_savedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_savedsearches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'see SavedSearch:: constants',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '-1',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query` text COLLATE utf8_unicode_ci,
  `last_execution_time` int(11) DEFAULT NULL,
  `do_count` tinyint(1) NOT NULL DEFAULT '2' COMMENT 'Do or do not count results on list display see SavedSearch::COUNT_* constants',
  `last_execution_date` datetime DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `is_private` (`is_private`),
  KEY `is_recursive` (`is_recursive`),
  KEY `last_execution_time` (`last_execution_time`),
  KEY `last_execution_date` (`last_execution_date`),
  KEY `do_count` (`do_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_savedsearches`
--

LOCK TABLES `glpi_savedsearches` WRITE;
/*!40000 ALTER TABLE `glpi_savedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_savedsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_savedsearches_alerts`
--

DROP TABLE IF EXISTS `glpi_savedsearches_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_savedsearches_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `operator` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`savedsearches_id`,`operator`,`value`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_savedsearches_alerts`
--

LOCK TABLES `glpi_savedsearches_alerts` WRITE;
/*!40000 ALTER TABLE `glpi_savedsearches_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_savedsearches_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_savedsearches_users`
--

DROP TABLE IF EXISTS `glpi_savedsearches_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_savedsearches_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `itemtype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `savedsearches_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  KEY `savedsearches_id` (`savedsearches_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_savedsearches_users`
--

LOCK TABLES `glpi_savedsearches_users` WRITE;
/*!40000 ALTER TABLE `glpi_savedsearches_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_savedsearches_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevelactions`
--

DROP TABLE IF EXISTS `glpi_slalevelactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevelactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevelactions`
--

LOCK TABLES `glpi_slalevelactions` WRITE;
/*!40000 ALTER TABLE `glpi_slalevelactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevelactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevelcriterias`
--

DROP TABLE IF EXISTS `glpi_slalevelcriterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT '0' COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevelcriterias`
--

LOCK TABLES `glpi_slalevelcriterias` WRITE;
/*!40000 ALTER TABLE `glpi_slalevelcriterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevelcriterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevels`
--

DROP TABLE IF EXISTS `glpi_slalevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slas_id` int(11) NOT NULL DEFAULT '0',
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `match` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `slas_id` (`slas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevels`
--

LOCK TABLES `glpi_slalevels` WRITE;
/*!40000 ALTER TABLE `glpi_slalevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slalevels_tickets`
--

DROP TABLE IF EXISTS `glpi_slalevels_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `slalevels_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`slalevels_id`),
  KEY `tickets_id` (`tickets_id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slalevels_tickets`
--

LOCK TABLES `glpi_slalevels_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_slalevels_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slalevels_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slas`
--

DROP TABLE IF EXISTS `glpi_slas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `number_time` int(11) NOT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `definition_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_of_working_day` tinyint(1) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `slms_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slas`
--

LOCK TABLES `glpi_slas` WRITE;
/*!40000 ALTER TABLE `glpi_slas` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_slms`
--

DROP TABLE IF EXISTS `glpi_slms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_slms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `calendars_id` (`calendars_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_slms`
--

LOCK TABLES `glpi_slms` WRITE;
/*!40000 ALTER TABLE `glpi_slms` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_slms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwarecategories`
--

DROP TABLE IF EXISTS `glpi_softwarecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwarecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `softwarecategories_id` (`softwarecategories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwarecategories`
--

LOCK TABLES `glpi_softwarecategories` WRITE;
/*!40000 ALTER TABLE `glpi_softwarecategories` DISABLE KEYS */;
INSERT INTO `glpi_softwarecategories` VALUES (1,'FUSION',NULL,0,'FUSION',1,NULL,NULL);
/*!40000 ALTER TABLE `glpi_softwarecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwarelicenses`
--

DROP TABLE IF EXISTS `glpi_softwarelicenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwarelicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `softwarelicenses_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherserial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT '0',
  `softwareversions_id_use` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `expire` (`expire`),
  KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  KEY `entities_id` (`entities_id`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  KEY `softwareversions_id_use` (`softwareversions_id_use`),
  KEY `date_mod` (`date_mod`),
  KEY `softwares_id_expire` (`softwares_id`,`expire`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `users_id` (`users_id`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_creation` (`date_creation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwarelicenses`
--

LOCK TABLES `glpi_softwarelicenses` WRITE;
/*!40000 ALTER TABLE `glpi_softwarelicenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_softwarelicenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwarelicensetypes`
--

DROP TABLE IF EXISTS `glpi_softwarelicensetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwarelicensetypes`
--

LOCK TABLES `glpi_softwarelicensetypes` WRITE;
/*!40000 ALTER TABLE `glpi_softwarelicensetypes` DISABLE KEYS */;
INSERT INTO `glpi_softwarelicensetypes` VALUES (1,'OEM','',NULL,NULL,0,0,NULL,NULL,0,1,'OEM');
/*!40000 ALTER TABLE `glpi_softwarelicensetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwares`
--

DROP TABLE IF EXISTS `glpi_softwares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `is_update` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_template` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `ticket_tco` decimal(20,4) DEFAULT '0.0000',
  `is_helpdesk_visible` tinyint(1) NOT NULL DEFAULT '1',
  `softwarecategories_id` int(11) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_update` (`is_update`),
  KEY `softwarecategories_id` (`softwarecategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `softwares_id` (`softwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwares`
--

LOCK TABLES `glpi_softwares` WRITE;
/*!40000 ALTER TABLE `glpi_softwares` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_softwares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_softwareversions`
--

DROP TABLE IF EXISTS `glpi_softwareversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_softwareversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `softwares_id` int(11) NOT NULL DEFAULT '0',
  `states_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `operatingsystems_id` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `softwares_id` (`softwares_id`),
  KEY `states_id` (`states_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_softwareversions`
--

LOCK TABLES `glpi_softwareversions` WRITE;
/*!40000 ALTER TABLE `glpi_softwareversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_softwareversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_solutiontemplates`
--

DROP TABLE IF EXISTS `glpi_solutiontemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_solutiontemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `solutiontypes_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_solutiontemplates`
--

LOCK TABLES `glpi_solutiontemplates` WRITE;
/*!40000 ALTER TABLE `glpi_solutiontemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_solutiontemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_solutiontypes`
--

DROP TABLE IF EXISTS `glpi_solutiontypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_solutiontypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_solutiontypes`
--

LOCK TABLES `glpi_solutiontypes` WRITE;
/*!40000 ALTER TABLE `glpi_solutiontypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_solutiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ssovariables`
--

DROP TABLE IF EXISTS `glpi_ssovariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ssovariables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ssovariables`
--

LOCK TABLES `glpi_ssovariables` WRITE;
/*!40000 ALTER TABLE `glpi_ssovariables` DISABLE KEYS */;
INSERT INTO `glpi_ssovariables` VALUES (1,'HTTP_AUTH_USER','',NULL,NULL),(2,'REMOTE_USER','',NULL,NULL),(3,'PHP_AUTH_USER','',NULL,NULL),(4,'USERNAME','',NULL,NULL),(5,'REDIRECT_REMOTE_USER','',NULL,NULL),(6,'HTTP_REMOTE_USER','',NULL,NULL);
/*!40000 ALTER TABLE `glpi_ssovariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_states`
--

DROP TABLE IF EXISTS `glpi_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `states_id` int(11) NOT NULL DEFAULT '0',
  `completename` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_visible_computer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_monitor` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_networkequipment` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_peripheral` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_phone` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_printer` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwareversion` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_softwarelicense` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_line` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_certificate` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_rack` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_enclosure` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_pdu` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`states_id`,`name`),
  KEY `name` (`name`),
  KEY `is_visible_computer` (`is_visible_computer`),
  KEY `is_visible_monitor` (`is_visible_monitor`),
  KEY `is_visible_networkequipment` (`is_visible_networkequipment`),
  KEY `is_visible_peripheral` (`is_visible_peripheral`),
  KEY `is_visible_phone` (`is_visible_phone`),
  KEY `is_visible_printer` (`is_visible_printer`),
  KEY `is_visible_softwareversion` (`is_visible_softwareversion`),
  KEY `is_visible_softwarelicense` (`is_visible_softwarelicense`),
  KEY `is_visible_line` (`is_visible_line`),
  KEY `is_visible_certificate` (`is_visible_certificate`),
  KEY `is_visible_rack` (`is_visible_rack`),
  KEY `is_visible_enclosure` (`is_visible_enclosure`),
  KEY `is_visible_pdu` (`is_visible_pdu`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_states`
--

LOCK TABLES `glpi_states` WRITE;
/*!40000 ALTER TABLE `glpi_states` DISABLE KEYS */;
INSERT INTO `glpi_states` VALUES (1,'on',0,0,'ВКЛ.',0,'on',1,'[]','{\"1\":\"1\"}',1,1,1,1,1,1,1,1,1,1,1,1,1,'2019-03-12 05:09:44','2019-03-02 10:01:47'),(2,'off',0,0,'ВЫКЛ.',0,'off',1,'[]','{\"2\":\"2\"}',1,1,1,1,1,1,1,1,1,1,1,1,1,'2019-03-12 05:09:59','2019-03-02 10:01:59');
/*!40000 ALTER TABLE `glpi_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_suppliers`
--

DROP TABLE IF EXISTS `glpi_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `suppliertypes_id` (`suppliertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_suppliers`
--

LOCK TABLES `glpi_suppliers` WRITE;
/*!40000 ALTER TABLE `glpi_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_suppliers_tickets`
--

DROP TABLE IF EXISTS `glpi_suppliers_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `suppliers_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_suppliers_tickets`
--

LOCK TABLES `glpi_suppliers_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_suppliers_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_suppliers_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_suppliertypes`
--

DROP TABLE IF EXISTS `glpi_suppliertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_suppliertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_suppliertypes`
--

LOCK TABLES `glpi_suppliertypes` WRITE;
/*!40000 ALTER TABLE `glpi_suppliertypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_suppliertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_taskcategories`
--

DROP TABLE IF EXISTS `glpi_taskcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_taskcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completename` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '0',
  `ancestors_cache` longtext COLLATE utf8_unicode_ci,
  `sons_cache` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_helpdeskvisible` tinyint(1) NOT NULL DEFAULT '1',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `knowbaseitemcategories_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_taskcategories`
--

LOCK TABLES `glpi_taskcategories` WRITE;
/*!40000 ALTER TABLE `glpi_taskcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_taskcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tasktemplates`
--

DROP TABLE IF EXISTS `glpi_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tasktemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_private` (`is_private`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tasktemplates`
--

LOCK TABLES `glpi_tasktemplates` WRITE;
/*!40000 ALTER TABLE `glpi_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketcosts`
--

DROP TABLE IF EXISTS `glpi_ticketcosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketcosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `cost_time` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `cost_material` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `budgets_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `tickets_id` (`tickets_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketcosts`
--

LOCK TABLES `glpi_ticketcosts` WRITE;
/*!40000 ALTER TABLE `glpi_ticketcosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketcosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketrecurrents`
--

DROP TABLE IF EXISTS `glpi_ticketrecurrents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `begin_date` datetime DEFAULT NULL,
  `periodicity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT '0',
  `next_creation_date` datetime DEFAULT NULL,
  `calendars_id` int(11) NOT NULL DEFAULT '0',
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `next_creation_date` (`next_creation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketrecurrents`
--

LOCK TABLES `glpi_ticketrecurrents` WRITE;
/*!40000 ALTER TABLE `glpi_ticketrecurrents` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketrecurrents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickets`
--

DROP TABLE IF EXISTS `glpi_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `closedate` datetime DEFAULT NULL,
  `solvedate` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `users_id_lastupdater` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `users_id_recipient` int(11) NOT NULL DEFAULT '0',
  `requesttypes_id` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `urgency` int(11) NOT NULL DEFAULT '1',
  `impact` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '1',
  `itilcategories_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `global_validation` int(11) NOT NULL DEFAULT '1',
  `slas_id_ttr` int(11) NOT NULL DEFAULT '0',
  `slas_id_tto` int(11) NOT NULL DEFAULT '0',
  `slalevels_id_ttr` int(11) NOT NULL DEFAULT '0',
  `time_to_resolve` datetime DEFAULT NULL,
  `time_to_own` datetime DEFAULT NULL,
  `begin_waiting_date` datetime DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `ola_waiting_duration` int(11) NOT NULL DEFAULT '0',
  `olas_id_tto` int(11) NOT NULL DEFAULT '0',
  `olas_id_ttr` int(11) NOT NULL DEFAULT '0',
  `olalevels_id_ttr` int(11) NOT NULL DEFAULT '0',
  `internal_time_to_resolve` datetime DEFAULT NULL,
  `internal_time_to_own` datetime DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT '0',
  `close_delay_stat` int(11) NOT NULL DEFAULT '0',
  `solve_delay_stat` int(11) NOT NULL DEFAULT '0',
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `validation_percent` int(11) NOT NULL DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `request_type` (`requesttypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `global_validation` (`global_validation`),
  KEY `slas_id_tto` (`slas_id_tto`),
  KEY `slas_id_ttr` (`slas_id_ttr`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `time_to_own` (`time_to_own`),
  KEY `olas_id_tto` (`olas_id_tto`),
  KEY `olas_id_ttr` (`olas_id_ttr`),
  KEY `slalevels_id_ttr` (`slalevels_id_ttr`),
  KEY `internal_time_to_resolve` (`internal_time_to_resolve`),
  KEY `internal_time_to_own` (`internal_time_to_own`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `type` (`type`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`),
  KEY `locations_id` (`locations_id`),
  KEY `date_creation` (`date_creation`),
  KEY `ola_waiting_duration` (`ola_waiting_duration`),
  KEY `olalevels_id_ttr` (`olalevels_id_ttr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickets`
--

LOCK TABLES `glpi_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_tickets` DISABLE KEYS */;
INSERT INTO `glpi_tickets` VALUES (1,0,'Проблема с сервером','2019-03-05 00:00:00',NULL,NULL,'2019-03-05 07:03:12',2,2,2,1,'&lt;p&gt;Переустановить гипервизор.&lt;/p&gt;&lt;p&gt;Это тест.&lt;/p&gt;',3,3,3,0,1,1,0,0,0,'2019-03-31 00:00:00',NULL,NULL,0,0,0,0,0,NULL,NULL,0,0,0,25392,72000,0,0,0,'2019-03-05 07:03:12');
/*!40000 ALTER TABLE `glpi_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickets_tickets`
--

DROP TABLE IF EXISTS `glpi_tickets_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickets_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id_1` int(11) NOT NULL DEFAULT '0',
  `tickets_id_2` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id_1`,`tickets_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickets_tickets`
--

LOCK TABLES `glpi_tickets_tickets` WRITE;
/*!40000 ALTER TABLE `glpi_tickets_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickets_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickets_users`
--

DROP TABLE IF EXISTS `glpi_tickets_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickets_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `use_notification` tinyint(1) NOT NULL DEFAULT '1',
  `alternative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickets_users`
--

LOCK TABLES `glpi_tickets_users` WRITE;
/*!40000 ALTER TABLE `glpi_tickets_users` DISABLE KEYS */;
INSERT INTO `glpi_tickets_users` VALUES (1,1,2,1,1,''),(2,1,5,3,1,''),(3,1,2,2,1,'');
/*!40000 ALTER TABLE `glpi_tickets_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketsatisfactions`
--

DROP TABLE IF EXISTS `glpi_ticketsatisfactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '1',
  `date_begin` datetime DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketsatisfactions`
--

LOCK TABLES `glpi_ticketsatisfactions` WRITE;
/*!40000 ALTER TABLE `glpi_ticketsatisfactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketsatisfactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettasks`
--

DROP TABLE IF EXISTS `glpi_tickettasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `taskcategories_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `users_id_editor` int(11) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `actiontime` int(11) NOT NULL DEFAULT '0',
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `users_id_tech` int(11) NOT NULL DEFAULT '0',
  `groups_id_tech` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `tasktemplates_id` int(11) NOT NULL DEFAULT '0',
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `state` (`state`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `tasktemplates_id` (`tasktemplates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettasks`
--

LOCK TABLES `glpi_tickettasks` WRITE;
/*!40000 ALTER TABLE `glpi_tickettasks` DISABLE KEYS */;
INSERT INTO `glpi_tickettasks` VALUES (1,1,0,'2019-03-05 07:03:12',2,0,NULL,0,72000,NULL,NULL,1,0,0,'2019-03-05 07:03:12','2019-03-05 07:03:12',0,1);
/*!40000 ALTER TABLE `glpi_tickettasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplatehiddenfields`
--

DROP TABLE IF EXISTS `glpi_tickettemplatehiddenfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplatehiddenfields`
--

LOCK TABLES `glpi_tickettemplatehiddenfields` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplatehiddenfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickettemplatehiddenfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplatemandatoryfields`
--

DROP TABLE IF EXISTS `glpi_tickettemplatemandatoryfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplatemandatoryfields`
--

LOCK TABLES `glpi_tickettemplatemandatoryfields` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplatemandatoryfields` DISABLE KEYS */;
INSERT INTO `glpi_tickettemplatemandatoryfields` VALUES (1,1,21);
/*!40000 ALTER TABLE `glpi_tickettemplatemandatoryfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplatepredefinedfields`
--

DROP TABLE IF EXISTS `glpi_tickettemplatepredefinedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `tickettemplates_id_id_num` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplatepredefinedfields`
--

LOCK TABLES `glpi_tickettemplatepredefinedfields` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplatepredefinedfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_tickettemplatepredefinedfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_tickettemplates`
--

DROP TABLE IF EXISTS `glpi_tickettemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_tickettemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_tickettemplates`
--

LOCK TABLES `glpi_tickettemplates` WRITE;
/*!40000 ALTER TABLE `glpi_tickettemplates` DISABLE KEYS */;
INSERT INTO `glpi_tickettemplates` VALUES (1,'Default',0,1,NULL);
/*!40000 ALTER TABLE `glpi_tickettemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_ticketvalidations`
--

DROP TABLE IF EXISTS `glpi_ticketvalidations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_ticketvalidations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `users_id` int(11) NOT NULL DEFAULT '0',
  `tickets_id` int(11) NOT NULL DEFAULT '0',
  `users_id_validate` int(11) NOT NULL DEFAULT '0',
  `comment_submission` text COLLATE utf8_unicode_ci,
  `comment_validation` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '2',
  `submission_date` datetime DEFAULT NULL,
  `validation_date` datetime DEFAULT NULL,
  `timeline_position` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `tickets_id` (`tickets_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_ticketvalidations`
--

LOCK TABLES `glpi_ticketvalidations` WRITE;
/*!40000 ALTER TABLE `glpi_ticketvalidations` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_ticketvalidations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_transfers`
--

DROP TABLE IF EXISTS `glpi_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT '0',
  `keep_networklink` int(11) NOT NULL DEFAULT '0',
  `keep_reservation` int(11) NOT NULL DEFAULT '0',
  `keep_history` int(11) NOT NULL DEFAULT '0',
  `keep_device` int(11) NOT NULL DEFAULT '0',
  `keep_infocom` int(11) NOT NULL DEFAULT '0',
  `keep_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `clean_dc_monitor` int(11) NOT NULL DEFAULT '0',
  `keep_dc_phone` int(11) NOT NULL DEFAULT '0',
  `clean_dc_phone` int(11) NOT NULL DEFAULT '0',
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT '0',
  `keep_dc_printer` int(11) NOT NULL DEFAULT '0',
  `clean_dc_printer` int(11) NOT NULL DEFAULT '0',
  `keep_supplier` int(11) NOT NULL DEFAULT '0',
  `clean_supplier` int(11) NOT NULL DEFAULT '0',
  `keep_contact` int(11) NOT NULL DEFAULT '0',
  `clean_contact` int(11) NOT NULL DEFAULT '0',
  `keep_contract` int(11) NOT NULL DEFAULT '0',
  `clean_contract` int(11) NOT NULL DEFAULT '0',
  `keep_software` int(11) NOT NULL DEFAULT '0',
  `clean_software` int(11) NOT NULL DEFAULT '0',
  `keep_document` int(11) NOT NULL DEFAULT '0',
  `clean_document` int(11) NOT NULL DEFAULT '0',
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT '0',
  `keep_cartridge` int(11) NOT NULL DEFAULT '0',
  `keep_consumable` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `keep_disk` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_transfers`
--

LOCK TABLES `glpi_transfers` WRITE;
/*!40000 ALTER TABLE `glpi_transfers` DISABLE KEYS */;
INSERT INTO `glpi_transfers` VALUES (1,'complete',2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,NULL,NULL,1);
/*!40000 ALTER TABLE `glpi_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_usercategories`
--

DROP TABLE IF EXISTS `glpi_usercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_usercategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_usercategories`
--

LOCK TABLES `glpi_usercategories` WRITE;
/*!40000 ALTER TABLE `glpi_usercategories` DISABLE KEYS */;
INSERT INTO `glpi_usercategories` VALUES (1,'ЦОД','','2019-03-05 09:36:10','2019-03-05 09:36:10'),(2,'ОРБП','','2019-03-05 10:24:53','2019-03-05 10:24:53');
/*!40000 ALTER TABLE `glpi_usercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_useremails`
--

DROP TABLE IF EXISTS `glpi_useremails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_useremails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_dynamic` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`email`),
  KEY `email` (`email`),
  KEY `is_default` (`is_default`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_useremails`
--

LOCK TABLES `glpi_useremails` WRITE;
/*!40000 ALTER TABLE `glpi_useremails` DISABLE KEYS */;
INSERT INTO `glpi_useremails` VALUES (1,6,1,0,'e.raiys@ktcl.kz'),(2,7,1,0,'t.muratkhanova@mycloud.kz'),(3,8,1,0,'a.dosmagambetov@mycloud.kz'),(4,9,1,0,'n.remizov@ktcl.kz'),(5,2,1,0,'d.tailakov@mycloud.kz');
/*!40000 ALTER TABLE `glpi_useremails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_users`
--

DROP TABLE IF EXISTS `glpi_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT '0',
  `language` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT '0',
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8_unicode_ci,
  `auths_id` int(11) NOT NULL DEFAULT '0',
  `authtype` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_sync` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `profiles_id` int(11) NOT NULL DEFAULT '0',
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `usertitles_id` int(11) NOT NULL DEFAULT '0',
  `usercategories_id` int(11) NOT NULL DEFAULT '0',
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(1) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(1) DEFAULT NULL,
  `show_jobs_at_login` tinyint(1) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `followup_private` tinyint(1) DEFAULT NULL,
  `task_private` tinyint(1) DEFAULT NULL,
  `default_requesttypes_id` int(11) DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_forget_token_date` datetime DEFAULT NULL,
  `user_dn` text COLLATE utf8_unicode_ci,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(1) DEFAULT NULL,
  `refresh_ticket_list` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(1) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_token_date` datetime DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token_date` datetime DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(1) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8_unicode_ci,
  `is_deleted_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `pdffont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `keep_devices_when_purging_item` tinyint(1) DEFAULT NULL,
  `privatebookmarkorder` longtext COLLATE utf8_unicode_ci,
  `backcreated` tinyint(1) DEFAULT NULL,
  `task_state` int(11) DEFAULT NULL,
  `layout` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `palette` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default_requester` tinyint(1) DEFAULT NULL,
  `lock_autolock_mode` tinyint(1) DEFAULT NULL,
  `lock_directunlock_notification` tinyint(1) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `highcontrast_css` tinyint(1) DEFAULT '0',
  `plannings` text COLLATE utf8_unicode_ci,
  `sync_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups_id` int(11) NOT NULL DEFAULT '0',
  `users_id_supervisor` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicityloginauth` (`name`,`authtype`,`auths_id`),
  KEY `firstname` (`firstname`),
  KEY `realname` (`realname`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `locations_id` (`locations_id`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `usercategories_id` (`usercategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `authitem` (`authtype`,`auths_id`),
  KEY `is_deleted_ldap` (`is_deleted_ldap`),
  KEY `date_creation` (`date_creation`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `sync_field` (`sync_field`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id_supervisor` (`users_id_supervisor`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_users`
--

LOCK TABLES `glpi_users` WRITE;
/*!40000 ALTER TABLE `glpi_users` DISABLE KEYS */;
INSERT INTO `glpi_users` VALUES (2,'d_tailakov','$2y$10$CvFZ49nAdfBIlzn63zobbOXZ1RCN5ckG9.0a83kPRR0U0KS4PN0M6',NULL,NULL,NULL,'Dmitry','Tailakov',4,NULL,2,20,1,NULL,0,1,'2019-03-12 10:57:09','2019-03-12 05:01:00',NULL,0,4,1,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'udP0bNt0dic0Fly3FXqu531jh9JskrSTwnnHguZg','2019-03-02 06:32:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2),(3,'t_lovazov','$2y$10$hUN1oRHv/O01Uu8UdZH1pesNRY/LzEsAGw5HdVyfoW23eiIKnwCSu',NULL,NULL,NULL,'Lovazov','Takhir',0,'en_GB',0,20,1,NULL,0,1,NULL,'2019-03-12 02:04:55',NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sXdVrfFasa58K8tYhuFEZHOuW21qAJSYn9vfnARC','2019-03-12 02:04:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0),(4,'t_aipov','$2y$10$QWLsZJj1bDmjMlXDhvTVLuo4J02hMuygQMYpGrf7nkwtuQutdz3Ma',NULL,NULL,NULL,'Аипов ','Тлек',0,'en_GB',0,20,1,NULL,0,1,'2019-03-12 11:12:21','2019-03-12 10:58:25',NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'d6BVp55doZoCh3EcGrU3JCpMBUdkhkFtYFZo7aUH','2019-03-12 10:58:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(5,'a_kabylkhanov','$2y$10$Js5LSI/VCj9mUqI/qLdLW.2H.nKG6a0qE7/B30gMAL9z2LLY0KUJa',NULL,NULL,NULL,'Kabylkhanov ','Adylzhan',0,'en_GB',0,20,1,NULL,0,1,NULL,'2019-03-02 06:41:23',NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0),(6,'raiys','$2y$10$.5CKWOJA2Yb0Ty4aa7.OmuSsu1F3NPEeDjVIioxekGc7lyVBdRPce','+7 700 104 1991','','','Райыс','Ербол',0,NULL,0,NULL,1,'',0,1,'2019-03-06 05:26:40','2019-03-05 09:45:06',NULL,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'sdFioeHVe15WxxpCJQN0iL1WF3qpt52H3gBM76cL','2019-03-05 09:41:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2019-03-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-05 09:36:52',NULL,NULL,NULL,0,0),(7,'t_muratkhanova','$2y$10$xn3iuZBMBXm.nf6u.P4aCO.WGwUzZr7FOzQYbdUFPGA2/j9qKWWWG','','','','Муратханова ','Толганай',0,NULL,0,NULL,1,'',0,1,'2019-03-06 03:36:11','2019-03-12 04:49:25',NULL,0,0,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'5UQVbphSOFTttWyHXGcGXjVjRbnMYfwETNVOh4Rz','2019-03-05 10:10:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2019-03-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-05 10:06:24',NULL,NULL,NULL,0,0),(8,'a_dosmagambetov','$2y$10$kc5qp1lHpntsbOqk0KpdcuKGMXyf76w/8ia7bJEUsA67bT68Lr2Ui','','','','Dosmagambetov ','Anuar',0,NULL,0,NULL,1,'',0,1,'2019-03-06 04:05:48','2019-03-12 05:43:12',NULL,0,0,0,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'xLXmh34huJZrZlk6CASpQ6Stro3GKEevrRp0snJS','2019-03-05 10:59:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2019-03-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-05 10:55:25',NULL,NULL,NULL,0,0),(9,'n_remizov','$2y$10$DkREMzAXaAHbwjiGyGp0be62UjaXPyJEoY/XZbwvtcUxEYgiv8zLW','','','','Ремизов ','Николай',3,NULL,0,NULL,1,'',0,1,'2019-03-06 05:25:25','2019-03-12 09:08:21',NULL,0,2,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2019-03-01 00:00:00','2025-03-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-03-06 05:24:49',NULL,NULL,NULL,0,9);
/*!40000 ALTER TABLE `glpi_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_usertitles`
--

DROP TABLE IF EXISTS `glpi_usertitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_usertitles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_usertitles`
--

LOCK TABLES `glpi_usertitles` WRITE;
/*!40000 ALTER TABLE `glpi_usertitles` DISABLE KEYS */;
INSERT INTO `glpi_usertitles` VALUES (1,'Системный Администратор','','2019-03-05 09:35:42','2019-03-05 09:35:42'),(2,'Системный Аналитик','','2019-03-05 10:05:10','2019-03-05 10:05:10'),(3,'Ведущий специалист','','2019-03-05 10:05:29','2019-03-05 10:05:29');
/*!40000 ALTER TABLE `glpi_usertitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_virtualmachinestates`
--

DROP TABLE IF EXISTS `glpi_virtualmachinestates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_virtualmachinestates`
--

LOCK TABLES `glpi_virtualmachinestates` WRITE;
/*!40000 ALTER TABLE `glpi_virtualmachinestates` DISABLE KEYS */;
INSERT INTO `glpi_virtualmachinestates` VALUES (1,'on','','2019-03-04 06:29:57','2019-03-04 06:29:57'),(2,'off','','2019-03-04 06:30:02','2019-03-04 06:30:02');
/*!40000 ALTER TABLE `glpi_virtualmachinestates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_virtualmachinesystems`
--

DROP TABLE IF EXISTS `glpi_virtualmachinesystems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_virtualmachinesystems`
--

LOCK TABLES `glpi_virtualmachinesystems` WRITE;
/*!40000 ALTER TABLE `glpi_virtualmachinesystems` DISABLE KEYS */;
INSERT INTO `glpi_virtualmachinesystems` VALUES (1,'kvm','','2019-03-04 06:29:34','2019-03-04 06:29:34');
/*!40000 ALTER TABLE `glpi_virtualmachinesystems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_virtualmachinetypes`
--

DROP TABLE IF EXISTS `glpi_virtualmachinetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_virtualmachinetypes`
--

LOCK TABLES `glpi_virtualmachinetypes` WRITE;
/*!40000 ALTER TABLE `glpi_virtualmachinetypes` DISABLE KEYS */;
INSERT INTO `glpi_virtualmachinetypes` VALUES (1,'wmware','','2019-03-04 06:29:15','2019-03-04 06:29:15'),(2,'proxmox','','2019-03-04 06:29:43','2019-03-04 06:29:43');
/*!40000 ALTER TABLE `glpi_virtualmachinetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_vlans`
--

DROP TABLE IF EXISTS `glpi_vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_vlans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `tag` int(11) NOT NULL DEFAULT '0',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `tag` (`tag`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_vlans`
--

LOCK TABLES `glpi_vlans` WRITE;
/*!40000 ALTER TABLE `glpi_vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_vlans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glpi_wifinetworks`
--

DROP TABLE IF EXISTS `glpi_wifinetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_wifinetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entities_id` int(11) NOT NULL DEFAULT '0',
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text COLLATE utf8_unicode_ci,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `essid` (`essid`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_wifinetworks`
--

LOCK TABLES `glpi_wifinetworks` WRITE;
/*!40000 ALTER TABLE `glpi_wifinetworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `glpi_wifinetworks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12 17:17:09
