-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_r6aazm11aj_commentmeta`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_commentmeta`
--

LOCK TABLES `wp_r6aazm11aj_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_r6aazm11aj_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_comments`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_comments`
--

LOCK TABLES `wp_r6aazm11aj_comments` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_comments` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-08-15 19:42:52','2019-08-15 19:42:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_r6aazm11aj_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_links`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_links`
--

LOCK TABLES `wp_r6aazm11aj_links` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_r6aazm11aj_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_options`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1975 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_options`
--

LOCK TABLES `wp_r6aazm11aj_options` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_options` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_options` VALUES (1,'siteurl','https://livinonwheels.local','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (2,'home','https://livinonwheels.local','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (3,'blogname','Livinonwheels','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (6,'admin_email','ryan@nalumedia.com','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (28,'permalink_structure','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (29,'rewrite_rules','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (40,'template','twentynineteen','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (41,'stylesheet','twentynineteen','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (48,'db_version','48748','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (53,'show_on_front','posts','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (84,'page_on_front','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (93,'initial_db_version','44719','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (94,'wp_r6aazm11aj_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (95,'fresh_site','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (101,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (102,'cron','a:5:{i:1607118196;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607154196;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607176233;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1607197396;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (109,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (110,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (111,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (115,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (118,'theme_mods_twentynineteen','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (134,'category_children','a:0:{}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (138,'limit_login_retries','a:163:{s:14:\"101.78.151.178\";i:6;s:13:\"51.15.109.142\";i:3;s:12:\"51.77.200.62\";i:3;s:14:\"148.66.142.161\";i:2;s:13:\"165.22.223.82\";i:3;s:14:\"74.208.159.145\";i:6;s:14:\"35.198.197.139\";i:6;s:13:\"216.10.242.46\";i:3;s:13:\"166.62.39.236\";i:4;s:13:\"185.221.216.3\";i:4;s:14:\"52.187.106.144\";i:4;s:12:\"54.37.36.124\";i:3;s:13:\"83.150.212.28\";i:6;s:13:\"217.160.43.98\";i:6;s:15:\"134.209.106.176\";i:4;s:12:\"69.64.85.167\";i:4;s:14:\"163.172.227.14\";i:2;s:14:\"185.50.198.121\";i:4;s:12:\"162.244.95.2\";i:5;s:15:\"132.148.135.229\";i:3;s:13:\"132.148.23.27\";i:2;s:13:\"217.160.94.78\";i:2;s:14:\"178.62.235.116\";i:4;s:12:\"34.94.208.18\";i:3;s:15:\"178.128.170.140\";i:2;s:15:\"167.114.253.182\";i:1;s:14:\"35.187.236.212\";i:3;s:14:\"167.71.231.150\";i:4;s:13:\"139.59.46.165\";i:1;s:12:\"94.23.201.37\";i:1;s:12:\"54.37.136.76\";i:2;s:14:\"123.30.139.114\";i:1;s:14:\"52.225.129.107\";i:4;s:14:\"212.35.203.217\";i:2;s:13:\"132.148.106.5\";i:5;s:15:\"192.169.197.250\";i:1;s:14:\"104.248.16.130\";i:1;s:14:\"165.22.209.251\";i:1;s:12:\"52.165.80.86\";i:1;s:13:\"95.173.165.19\";i:2;s:15:\"157.175.109.200\";i:4;s:14:\"51.143.179.206\";i:1;s:13:\"51.75.200.210\";i:3;s:13:\"139.59.77.168\";i:2;s:11:\"5.196.68.74\";i:3;s:12:\"70.35.207.85\";i:4;s:14:\"92.222.180.182\";i:3;s:12:\"54.93.138.29\";i:2;s:12:\"3.82.145.253\";i:1;s:12:\"80.88.92.212\";i:2;s:10:\"139.99.8.3\";i:4;s:14:\"103.36.125.225\";i:4;s:15:\"217.182.140.117\";i:2;s:13:\"167.71.236.40\";i:1;s:14:\"165.22.246.219\";i:2;s:13:\"178.128.56.22\";i:2;s:11:\"35.244.5.76\";i:4;s:15:\"163.172.164.135\";i:3;s:12:\"51.68.127.10\";i:2;s:15:\"157.230.116.114\";i:2;s:12:\"45.117.170.8\";i:2;s:12:\"166.62.45.39\";i:3;s:14:\"209.97.188.148\";i:2;s:13:\"40.71.101.253\";i:2;s:13:\"195.110.35.83\";i:2;s:11:\"50.62.22.60\";i:1;s:12:\"166.62.46.44\";i:4;s:13:\"68.183.73.185\";i:2;s:13:\"172.93.122.85\";i:2;s:14:\"171.244.23.102\";i:4;s:13:\"51.255.79.108\";i:1;s:12:\"74.208.227.7\";i:1;s:12:\"123.31.31.12\";i:1;s:14:\"91.134.248.211\";i:1;s:12:\"144.76.41.81\";i:1;s:15:\"104.155.105.249\";i:4;s:13:\"94.124.16.106\";i:1;s:15:\"153.126.154.136\";i:1;s:14:\"151.80.102.151\";i:3;s:14:\"62.210.247.112\";i:1;s:11:\"14.225.17.7\";i:4;s:13:\"92.222.21.103\";i:1;s:10:\"5.58.56.27\";i:3;s:12:\"103.74.54.25\";i:1;s:14:\"118.70.182.235\";i:2;s:12:\"91.132.85.23\";i:4;s:14:\"142.44.240.254\";i:2;s:12:\"139.99.57.14\";i:2;s:14:\"203.162.79.194\";i:1;s:14:\"209.97.129.231\";i:3;s:14:\"141.85.216.237\";i:1;s:15:\"188.165.228.180\";i:4;s:12:\"61.244.88.81\";i:4;s:13:\"148.66.133.55\";i:3;s:11:\"42.1.60.231\";i:1;s:13:\"198.245.51.20\";i:1;s:12:\"139.59.75.53\";i:2;s:14:\"213.202.101.46\";i:3;s:14:\"188.165.223.47\";i:2;s:12:\"34.84.11.220\";i:2;s:14:\"122.155.184.57\";i:1;s:12:\"68.183.187.9\";i:2;s:13:\"15.185.90.141\";i:2;s:13:\"92.222.83.160\";i:2;s:13:\"123.31.43.246\";i:4;s:13:\"103.1.239.135\";i:1;s:13:\"37.59.147.187\";i:1;s:15:\"104.248.195.110\";i:1;s:14:\"203.186.107.86\";i:1;s:12:\"35.244.17.58\";i:1;s:14:\"133.167.76.185\";i:1;s:12:\"14.225.16.21\";i:1;s:14:\"157.245.104.64\";i:1;s:13:\"150.95.105.63\";i:2;s:15:\"185.229.112.169\";i:2;s:13:\"52.164.224.11\";i:2;s:13:\"212.68.42.177\";i:4;s:14:\"157.245.96.139\";i:3;s:13:\"178.62.86.214\";i:1;s:12:\"34.94.97.175\";i:1;s:12:\"3.10.174.160\";i:1;s:13:\"104.45.25.155\";i:2;s:12:\"149.56.129.8\";i:1;s:15:\"148.251.207.201\";i:1;s:13:\"165.22.54.236\";i:1;s:13:\"103.27.61.222\";i:1;s:15:\"157.245.198.203\";i:1;s:12:\"103.9.79.179\";i:1;s:12:\"77.68.21.117\";i:1;s:12:\"165.22.86.58\";i:1;s:13:\"18.217.169.48\";i:2;s:13:\"54.36.120.197\";i:2;s:12:\"46.37.31.195\";i:2;s:13:\"168.63.250.90\";i:2;s:13:\"206.81.29.166\";i:1;s:14:\"160.16.198.198\";i:1;s:11:\"95.85.34.10\";i:2;s:13:\"42.112.21.203\";i:1;s:12:\"52.28.113.73\";i:2;s:13:\"171.244.21.74\";i:2;s:13:\"34.92.133.142\";i:2;s:15:\"154.120.217.253\";i:2;s:13:\"51.136.49.111\";i:1;s:12:\"103.17.76.52\";i:1;s:12:\"103.17.76.53\";i:1;s:12:\"54.93.85.225\";i:2;s:12:\"176.9.151.51\";i:2;s:13:\"78.110.50.131\";i:1;s:15:\"125.212.250.163\";i:1;s:13:\"185.60.170.65\";i:2;s:14:\"149.202.81.101\";i:2;s:13:\"52.225.132.84\";i:2;s:13:\"51.91.108.183\";i:2;s:14:\"52.187.181.133\";i:2;s:14:\"35.200.150.248\";i:2;s:13:\"104.248.146.1\";i:1;s:14:\"104.248.88.100\";i:1;s:13:\"54.154.89.222\";i:1;s:13:\"5.196.204.173\";i:1;s:14:\"111.90.144.200\";i:1;s:14:\"213.202.100.91\";i:1;s:14:\"216.244.65.162\";i:1;s:11:\"34.230.3.11\";i:1;}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (139,'limit_login_retries_valid','a:163:{s:14:\"101.78.151.178\";i:1573752364;s:13:\"51.15.109.142\";i:1573740071;s:12:\"51.77.200.62\";i:1573737857;s:14:\"148.66.142.161\";i:1573746513;s:13:\"165.22.223.82\";i:1573750211;s:14:\"74.208.159.145\";i:1573723398;s:14:\"35.198.197.139\";i:1573742888;s:13:\"216.10.242.46\";i:1573730464;s:13:\"166.62.39.236\";i:1573755598;s:13:\"185.221.216.3\";i:1573757070;s:14:\"52.187.106.144\";i:1573746315;s:12:\"54.37.36.124\";i:1573720844;s:13:\"83.150.212.28\";i:1573759240;s:13:\"217.160.43.98\";i:1573759757;s:15:\"134.209.106.176\";i:1573733775;s:12:\"69.64.85.167\";i:1573752864;s:14:\"163.172.227.14\";i:1573750792;s:14:\"185.50.198.121\";i:1573742704;s:12:\"162.244.95.2\";i:1573745593;s:15:\"132.148.135.229\";i:1573739898;s:13:\"132.148.23.27\";i:1573717501;s:13:\"217.160.94.78\";i:1573717817;s:14:\"178.62.235.116\";i:1573760633;s:12:\"34.94.208.18\";i:1573748236;s:15:\"178.128.170.140\";i:1573718378;s:15:\"167.114.253.182\";i:1573718868;s:14:\"35.187.236.212\";i:1573731762;s:14:\"167.71.231.150\";i:1573754724;s:13:\"139.59.46.165\";i:1573719177;s:12:\"94.23.201.37\";i:1573719360;s:12:\"54.37.136.76\";i:1573719516;s:14:\"123.30.139.114\";i:1573719698;s:14:\"52.225.129.107\";i:1573728474;s:14:\"212.35.203.217\";i:1573721449;s:13:\"132.148.106.5\";i:1573749817;s:15:\"192.169.197.250\";i:1573720598;s:14:\"104.248.16.130\";i:1573720618;s:14:\"165.22.209.251\";i:1573721211;s:12:\"52.165.80.86\";i:1573721311;s:13:\"95.173.165.19\";i:1573721639;s:15:\"157.175.109.200\";i:1573736628;s:14:\"51.143.179.206\";i:1573722268;s:13:\"51.75.200.210\";i:1573746094;s:13:\"139.59.77.168\";i:1573728173;s:11:\"5.196.68.74\";i:1573734417;s:12:\"70.35.207.85\";i:1573738352;s:14:\"92.222.180.182\";i:1573735432;s:12:\"54.93.138.29\";i:1573756875;s:12:\"3.82.145.253\";i:1573723754;s:12:\"80.88.92.212\";i:1573724165;s:10:\"139.99.8.3\";i:1573752016;s:14:\"103.36.125.225\";i:1573756162;s:15:\"217.182.140.117\";i:1573724829;s:13:\"167.71.236.40\";i:1573725001;s:14:\"165.22.246.219\";i:1573725177;s:13:\"178.128.56.22\";i:1573725322;s:11:\"35.244.5.76\";i:1573755034;s:15:\"163.172.164.135\";i:1573735956;s:12:\"51.68.127.10\";i:1573725733;s:15:\"157.230.116.114\";i:1573725954;s:12:\"45.117.170.8\";i:1573734271;s:12:\"166.62.45.39\";i:1573727182;s:14:\"209.97.188.148\";i:1573730276;s:13:\"40.71.101.253\";i:1573729289;s:13:\"195.110.35.83\";i:1573726738;s:11:\"50.62.22.60\";i:1573726850;s:12:\"166.62.46.44\";i:1573750550;s:13:\"68.183.73.185\";i:1573741537;s:13:\"172.93.122.85\";i:1573731259;s:14:\"171.244.23.102\";i:1573731614;s:13:\"51.255.79.108\";i:1573727979;s:12:\"74.208.227.7\";i:1573728276;s:12:\"123.31.31.12\";i:1573728663;s:14:\"91.134.248.211\";i:1573728708;s:12:\"144.76.41.81\";i:1573729105;s:15:\"104.155.105.249\";i:1573737142;s:13:\"94.124.16.106\";i:1573729720;s:15:\"153.126.154.136\";i:1573729760;s:14:\"151.80.102.151\";i:1573738866;s:14:\"62.210.247.112\";i:1573730128;s:11:\"14.225.17.7\";i:1573753979;s:13:\"92.222.21.103\";i:1573732091;s:10:\"5.58.56.27\";i:1573757626;s:12:\"103.74.54.25\";i:1573732438;s:14:\"118.70.182.235\";i:1573741181;s:12:\"91.132.85.23\";i:1573759404;s:14:\"142.44.240.254\";i:1573732952;s:12:\"139.99.57.14\";i:1573733095;s:14:\"203.162.79.194\";i:1573733288;s:14:\"209.97.129.231\";i:1573759611;s:14:\"141.85.216.237\";i:1573733600;s:15:\"188.165.228.180\";i:1573755415;s:12:\"61.244.88.81\";i:1573750029;s:13:\"148.66.133.55\";i:1573758140;s:11:\"42.1.60.231\";i:1573735090;s:13:\"198.245.51.20\";i:1573735265;s:12:\"139.59.75.53\";i:1573735654;s:14:\"213.202.101.46\";i:1573746949;s:14:\"188.165.223.47\";i:1573736286;s:12:\"34.84.11.220\";i:1573736781;s:14:\"122.155.184.57\";i:1573737091;s:12:\"68.183.187.9\";i:1573737395;s:13:\"15.185.90.141\";i:1573737488;s:13:\"92.222.83.160\";i:1573738021;s:13:\"123.31.43.246\";i:1573751783;s:13:\"103.1.239.135\";i:1573739415;s:13:\"37.59.147.187\";i:1573739545;s:15:\"104.248.195.110\";i:1573739842;s:14:\"203.186.107.86\";i:1573740524;s:12:\"35.244.17.58\";i:1573740600;s:14:\"133.167.76.185\";i:1573740800;s:12:\"14.225.16.21\";i:1573741016;s:14:\"157.245.104.64\";i:1573741325;s:13:\"150.95.105.63\";i:1573741682;s:15:\"185.229.112.169\";i:1573742033;s:13:\"52.164.224.11\";i:1573745446;s:13:\"212.68.42.177\";i:1573753053;s:14:\"157.245.96.139\";i:1573748091;s:13:\"178.62.86.214\";i:1573743288;s:12:\"34.94.97.175\";i:1573743406;s:12:\"3.10.174.160\";i:1573743637;s:13:\"104.45.25.155\";i:1573758886;s:12:\"149.56.129.8\";i:1573744313;s:15:\"148.251.207.201\";i:1573744640;s:13:\"165.22.54.236\";i:1573744863;s:13:\"103.27.61.222\";i:1573745218;s:15:\"157.245.198.203\";i:1573745953;s:12:\"103.9.79.179\";i:1573746648;s:12:\"77.68.21.117\";i:1573747382;s:12:\"165.22.86.58\";i:1573748123;s:13:\"18.217.169.48\";i:1573748322;s:13:\"54.36.120.197\";i:1573749176;s:12:\"46.37.31.195\";i:1573749477;s:13:\"168.63.250.90\";i:1573750392;s:13:\"206.81.29.166\";i:1573750935;s:14:\"160.16.198.198\";i:1573751085;s:11:\"95.85.34.10\";i:1573751587;s:13:\"42.112.21.203\";i:1573751660;s:12:\"52.28.113.73\";i:1573752524;s:13:\"171.244.21.74\";i:1573753260;s:13:\"34.92.133.142\";i:1573753457;s:15:\"154.120.217.253\";i:1573753625;s:13:\"51.136.49.111\";i:1573753806;s:12:\"103.17.76.52\";i:1573754127;s:12:\"103.17.76.53\";i:1573754129;s:12:\"54.93.85.225\";i:1573754294;s:12:\"176.9.151.51\";i:1573754515;s:13:\"78.110.50.131\";i:1573754881;s:15:\"125.212.250.163\";i:1573755268;s:13:\"185.60.170.65\";i:1573755790;s:14:\"149.202.81.101\";i:1573755963;s:13:\"52.225.132.84\";i:1573756318;s:13:\"51.91.108.183\";i:1573756699;s:14:\"52.187.181.133\";i:1573757218;s:14:\"35.200.150.248\";i:1573757433;s:13:\"104.248.146.1\";i:1573757813;s:14:\"104.248.88.100\";i:1573758348;s:13:\"54.154.89.222\";i:1573758506;s:13:\"5.196.204.173\";i:1573758704;s:14:\"111.90.144.200\";i:1573759986;s:14:\"213.202.100.91\";i:1573760152;s:14:\"216.244.65.162\";i:1573760315;s:11:\"34.230.3.11\";i:1573760421;}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (174,'limit_login_lockouts','a:1:{s:14:\"178.62.235.116\";i:1573718633;}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (175,'limit_login_logged','a:257:{s:15:\"185.122.203.164\";a:1:{s:7:\"[login]\";i:1;}s:14:\"23.227.137.210\";a:1:{s:7:\"[login]\";i:1;}s:11:\"45.76.32.45\";a:1:{s:7:\"[login]\";i:1;}s:15:\"188.165.169.143\";a:1:{s:7:\"[login]\";i:1;}s:15:\"157.230.112.101\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"178.128.52.126\";a:1:{s:7:\"[login]\";i:1;}s:14:\"18.214.105.148\";a:1:{s:7:\"[login]\";i:1;}s:13:\"159.65.48.171\";a:1:{s:7:\"[login]\";i:1;}s:13:\"192.99.35.149\";a:1:{s:13:\"livinonwheels\";i:4;}s:11:\"34.66.26.76\";a:1:{s:7:\"[login]\";i:1;}s:13:\"41.222.227.98\";a:1:{s:7:\"[login]\";i:1;}s:14:\"162.144.83.250\";a:1:{s:7:\"[login]\";i:1;}s:12:\"78.46.146.65\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:1;}s:12:\"206.81.21.47\";a:1:{s:7:\"[login]\";i:1;}s:14:\"13.250.101.198\";a:1:{s:7:\"[login]\";i:1;}s:14:\"132.148.25.146\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"51.68.41.91\";a:1:{s:7:\"[login]\";i:1;}s:12:\"159.65.54.48\";a:1:{s:7:\"[login]\";i:1;}s:14:\"207.154.224.55\";a:1:{s:7:\"[login]\";i:1;}s:15:\"206.189.136.156\";a:1:{s:7:\"[login]\";i:1;}s:12:\"198.27.70.61\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"134.209.15.177\";a:1:{s:7:\"[login]\";i:1;}s:13:\"192.99.15.141\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"72.52.169.207\";a:1:{s:7:\"[login]\";i:1;}s:13:\"67.205.12.193\";a:1:{s:7:\"[login]\";i:1;}s:13:\"46.105.99.163\";a:1:{s:13:\"livinonwheels\";i:3;}s:14:\"46.105.127.166\";a:1:{s:13:\"livinonwheels\";i:3;}s:14:\"51.254.102.160\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"46.105.99.212\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"46.101.63.219\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"192.99.15.139\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"166.62.118.66\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"88.99.33.18\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"192.162.68.207\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"45.40.134.20\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"157.112.176.40\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"37.59.57.175\";a:1:{s:7:\"[login]\";i:1;}s:12:\"197.85.7.159\";a:1:{s:7:\"[login]\";i:1;}s:12:\"107.189.6.94\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"51.38.98.233\";a:1:{s:7:\"[login]\";i:1;}s:15:\"188.166.175.190\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"203.162.123.89\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"54.39.196.33\";a:1:{s:7:\"[login]\";i:1;}s:13:\"103.78.195.10\";a:1:{s:7:\"[login]\";i:2;}s:14:\"188.225.76.252\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"109.109.120.103\";a:1:{s:7:\"[login]\";i:1;}s:14:\"195.154.29.107\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"162.144.42.147\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"5.189.167.191\";a:1:{s:7:\"[login]\";i:1;}s:14:\"35.187.227.157\";a:1:{s:7:\"[login]\";i:1;}s:15:\"112.140.160.254\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"35.156.70.95\";a:1:{s:7:\"[login]\";i:1;}s:12:\"67.207.94.61\";a:1:{s:7:\"[login]\";i:1;}s:13:\"183.181.84.44\";a:1:{s:7:\"[login]\";i:1;}s:14:\"146.185.145.40\";a:1:{s:7:\"[login]\";i:1;}s:13:\"183.181.97.81\";a:1:{s:7:\"[login]\";i:1;}s:13:\"51.68.170.178\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"52.51.225.142\";a:1:{s:7:\"[login]\";i:1;}s:13:\"51.75.160.132\";a:1:{s:7:\"[login]\";i:1;}s:14:\"206.189.93.149\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"120.138.30.228\";a:1:{s:7:\"[login]\";i:1;}s:14:\"108.60.222.170\";a:1:{s:7:\"[login]\";i:1;}s:14:\"139.59.164.196\";a:1:{s:7:\"[login]\";i:1;}s:15:\"134.209.175.155\";a:1:{s:7:\"[login]\";i:1;}s:14:\"87.106.195.219\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"194.39.84.11\";a:1:{s:7:\"[login]\";i:1;}s:13:\"62.116.165.86\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"203.151.83.160\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"80.241.246.8\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"213.14.116.235\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"178.32.211.153\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:1;}s:13:\"162.243.7.171\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"192.254.133.72\";a:1:{s:7:\"[login]\";i:1;}s:14:\"150.95.109.136\";a:1:{s:7:\"[login]\";i:1;}s:13:\"167.71.105.41\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"213.32.71.156\";a:1:{s:7:\"[login]\";i:1;}s:13:\"178.128.91.60\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:2;}s:14:\"142.44.240.254\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:3;}s:12:\"45.76.186.88\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"51.77.158.252\";a:1:{s:13:\"livinonwheels\";i:2;}s:15:\"208.113.153.227\";a:1:{s:7:\"[login]\";i:1;}s:14:\"148.66.142.161\";a:2:{s:7:\"[login]\";i:2;s:13:\"livinonwheels\";i:1;}s:14:\"45.119.212.158\";a:1:{s:13:\"livinonwheels\";i:2;}s:13:\"165.22.250.44\";a:1:{s:7:\"[login]\";i:1;}s:12:\"103.83.192.6\";a:2:{s:13:\"livinonwheels\";i:2;s:7:\"[login]\";i:1;}s:15:\"116.203.116.152\";a:1:{s:7:\"[login]\";i:1;}s:13:\"165.22.62.126\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"157.230.34.254\";a:1:{s:13:\"livinonwheels\";i:2;}s:15:\"108.167.139.245\";a:1:{s:7:\"[login]\";i:1;}s:12:\"79.137.33.73\";a:1:{s:7:\"[login]\";i:1;}s:10:\"61.41.4.26\";a:1:{s:7:\"[login]\";i:1;}s:12:\"165.22.50.69\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"107.189.3.81\";a:1:{s:13:\"livinonwheels\";i:2;}s:12:\"123.31.20.81\";a:1:{s:7:\"[login]\";i:1;}s:14:\"123.30.139.114\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"35.198.31.101\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"104.236.75.186\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"54.174.92.169\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"103.221.220.200\";a:1:{s:13:\"livinonwheels\";i:2;}s:11:\"40.118.7.54\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"157.245.166.183\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"137.74.201.15\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"103.130.218.108\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:1;}s:13:\"94.124.16.106\";a:1:{s:7:\"[login]\";i:1;}s:13:\"46.21.198.186\";a:1:{s:7:\"[login]\";i:1;}s:14:\"101.78.168.202\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"185.50.197.15\";a:1:{s:13:\"livinonwheels\";i:2;}s:14:\"106.14.117.152\";a:2:{s:13:\"livinonwheels\";i:1;s:7:\"[login]\";i:2;}s:14:\"203.138.98.164\";a:1:{s:13:\"livinonwheels\";i:2;}s:14:\"18.139.163.135\";a:1:{s:7:\"[login]\";i:1;}s:13:\"35.228.209.46\";a:1:{s:7:\"[login]\";i:1;}s:13:\"151.14.59.210\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"51.77.200.62\";a:1:{s:7:\"[login]\";i:1;}s:14:\"35.239.243.107\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:2;}s:13:\"142.93.149.34\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"166.62.45.39\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"5.135.129.180\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:1;}s:13:\"5.196.204.173\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"185.73.113.55\";a:1:{s:7:\"[login]\";i:1;}s:13:\"216.10.242.46\";a:2:{s:13:\"livinonwheels\";i:1;s:7:\"[login]\";i:1;}s:14:\"167.71.241.174\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"165.22.34.8\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"107.189.2.3\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"35.200.255.72\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"103.48.116.35\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"210.180.118.189\";a:1:{s:7:\"[login]\";i:1;}s:14:\"163.172.227.14\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"112.197.2.11\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"200.194.38.114\";a:1:{s:7:\"[login]\";i:1;}s:12:\"50.63.15.171\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"163.44.198.61\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"112.78.3.73\";a:1:{s:13:\"livinonwheels\";i:2;}s:12:\"68.183.34.87\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"35.240.222.249\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"165.22.232.131\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"157.230.235.238\";a:2:{s:13:\"livinonwheels\";i:1;s:7:\"[login]\";i:1;}s:13:\"172.81.243.66\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"118.25.79.17\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"149.56.129.8\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"85.145.225.178\";a:1:{s:13:\"livinonwheels\";i:2;}s:11:\"50.62.22.61\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"195.154.173.27\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"166.62.103.202\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"49.164.52.237\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"167.71.45.56\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"193.112.124.31\";a:1:{s:7:\"[login]\";i:1;}s:12:\"51.75.243.74\";a:1:{s:7:\"[login]\";i:1;}s:13:\"213.32.22.228\";a:1:{s:13:\"livinonwheels\";i:2;}s:15:\"104.248.195.110\";a:1:{s:13:\"livinonwheels\";i:2;}s:14:\"104.248.88.100\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"39.107.14.121\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"112.78.1.99\";a:2:{s:7:\"[login]\";i:1;s:13:\"livinonwheels\";i:1;}s:12:\"37.187.72.67\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"51.68.215.199\";a:1:{s:13:\"livinonwheels\";i:1;}s:10:\"165.22.2.4\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"112.78.3.232\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"191.101.12.135\";a:1:{s:7:\"[login]\";i:1;}s:14:\"165.22.182.183\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"103.74.117.195\";a:1:{s:7:\"[login]\";i:1;}s:13:\"95.173.165.19\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"66.85.47.62\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"51.38.36.15\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"201.20.50.202\";a:1:{s:13:\"livinonwheels\";i:2;}s:14:\"209.97.155.122\";a:1:{s:13:\"livinonwheels\";i:2;}s:14:\"31.210.159.162\";a:1:{s:7:\"[login]\";i:1;}s:12:\"202.79.170.2\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"192.99.47.10\";a:1:{s:13:\"livinonwheels\";i:3;}s:14:\"123.30.249.121\";a:1:{s:13:\"livinonwheels\";i:2;}s:13:\"78.142.208.30\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"181.119.65.47\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"54.37.36.124\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"13.127.208.96\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"132.148.23.27\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"37.59.47.80\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"51.75.207.20\";a:1:{s:13:\"livinonwheels\";i:2;}s:12:\"104.41.41.14\";a:1:{s:7:\"[login]\";i:1;}s:15:\"178.128.110.195\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"139.59.5.114\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"165.22.58.37\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"46.101.1.19\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"139.59.248.89\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"47.74.137.101\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"176.9.136.175\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"23.91.65.93\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"35.198.236.110\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"103.74.54.25\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"137.74.109.231\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"45.125.239.116\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"142.93.113.182\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"162.144.48.229\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"195.154.182.201\";a:1:{s:13:\"livinonwheels\";i:2;}s:14:\"167.71.214.140\";a:1:{s:7:\"[login]\";i:1;}s:13:\"45.122.223.61\";a:1:{s:13:\"livinonwheels\";i:1;}s:11:\"49.50.70.67\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"62.212.130.211\";a:1:{s:13:\"livinonwheels\";i:2;}s:12:\"50.112.60.54\";a:2:{s:13:\"livinonwheels\";i:1;s:7:\"[login]\";i:1;}s:15:\"138.201.157.128\";a:1:{s:7:\"[login]\";i:1;}s:12:\"123.31.31.12\";a:1:{s:7:\"[login]\";i:1;}s:15:\"193.112.223.243\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"103.81.87.174\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"104.46.51.127\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"51.15.242.148\";a:1:{s:7:\"[login]\";i:1;}s:13:\"132.148.68.12\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"54.37.198.243\";a:1:{s:7:\"[login]\";i:1;}s:11:\"36.91.91.50\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"83.238.71.88\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"39.105.160.239\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"104.41.5.236\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"153.122.144.62\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"116.203.218.12\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"212.64.6.121\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"103.27.61.222\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"103.74.120.201\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"35.240.196.150\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"46.45.187.49\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"18.191.133.212\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"35.202.30.10\";a:1:{s:7:\"[login]\";i:1;}s:13:\"182.74.15.230\";a:1:{s:7:\"[login]\";i:1;}s:13:\"212.112.92.17\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"146.185.183.107\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"176.241.48.171\";a:1:{s:7:\"[login]\";i:1;}s:13:\"46.101.119.30\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"103.22.250.194\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"149.202.43.72\";a:1:{s:7:\"[login]\";i:1;}s:13:\"167.71.111.16\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"74.208.159.145\";a:1:{s:7:\"[login]\";i:1;}s:12:\"35.221.62.12\";a:1:{s:7:\"[login]\";i:1;}s:14:\"45.252.248.244\";a:1:{s:7:\"[login]\";i:1;}s:13:\"83.150.212.28\";a:1:{s:7:\"[login]\";i:1;}s:12:\"162.244.95.2\";a:1:{s:7:\"[login]\";i:1;}s:13:\"217.160.43.98\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"52.225.129.107\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"171.244.23.102\";a:1:{s:7:\"[login]\";i:1;}s:15:\"134.209.106.176\";a:1:{s:7:\"[login]\";i:1;}s:15:\"157.175.109.200\";a:1:{s:13:\"livinonwheels\";i:1;}s:15:\"104.155.105.249\";a:1:{s:7:\"[login]\";i:1;}s:12:\"70.35.207.85\";a:1:{s:7:\"[login]\";i:1;}s:14:\"35.198.197.139\";a:1:{s:7:\"[login]\";i:1;}s:13:\"132.148.106.5\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"185.50.198.121\";a:1:{s:7:\"[login]\";i:1;}s:14:\"52.187.106.144\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"101.78.151.178\";a:1:{s:7:\"[login]\";i:1;}s:12:\"61.244.88.81\";a:1:{s:7:\"[login]\";i:1;}s:12:\"166.62.46.44\";a:1:{s:7:\"[login]\";i:1;}s:13:\"123.31.43.246\";a:1:{s:13:\"livinonwheels\";i:1;}s:10:\"139.99.8.3\";a:1:{s:7:\"[login]\";i:1;}s:12:\"69.64.85.167\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"212.68.42.177\";a:1:{s:7:\"[login]\";i:1;}s:11:\"14.225.17.7\";a:1:{s:7:\"[login]\";i:1;}s:14:\"167.71.231.150\";a:1:{s:7:\"[login]\";i:1;}s:11:\"35.244.5.76\";a:1:{s:7:\"[login]\";i:1;}s:15:\"188.165.228.180\";a:1:{s:7:\"[login]\";i:1;}s:13:\"166.62.39.236\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"103.36.125.225\";a:1:{s:13:\"livinonwheels\";i:1;}s:13:\"185.221.216.3\";a:1:{s:13:\"livinonwheels\";i:1;}s:12:\"91.132.85.23\";a:1:{s:13:\"livinonwheels\";i:1;}s:14:\"178.62.235.116\";a:1:{s:13:\"livinonwheels\";i:1;}}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (176,'limit_login_lockouts_total','305','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1947,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1607116480;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1948,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"ryan@nalumedia.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1607116483;}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1957,'_site_transient_timeout_theme_roots','1607118280','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1958,'_site_transient_theme_roots','a:6:{s:13:\"livinonwheels\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1961,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607116483;s:7:\"checked\";a:6:{s:13:\"livinonwheels\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.1\";s:14:\"twentynineteen\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.8\";s:13:\"twentysixteen\";s:3:\"1.6\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:5:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.2.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1962,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1607721284','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1963,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1964,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":8,\"critical\":1}','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1965,'admin_email_lifespan','0','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1966,'disallowed_keys','','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1967,'comment_previously_approved','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1968,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1969,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_r6aazm11aj_options` VALUES (1970,'db_upgraded','','yes');
/*!40000 ALTER TABLE `wp_r6aazm11aj_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_postmeta`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_postmeta`
--

LOCK TABLES `wp_r6aazm11aj_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_postmeta` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_r6aazm11aj_postmeta` VALUES (2,3,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_r6aazm11aj_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_posts`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_posts`
--

LOCK TABLES `wp_r6aazm11aj_posts` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_posts` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_posts` VALUES (1,1,'2019-08-15 19:42:52','2019-08-15 19:42:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-08-15 19:42:52','2019-08-15 19:42:52','',0,'http://livinonwheels.flywheelsites.com/?p=1',0,'post','',1);
INSERT INTO `wp_r6aazm11aj_posts` VALUES (2,1,'2019-08-15 19:42:52','2019-08-15 19:42:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://livinonwheels.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2019-08-15 19:42:52','2019-08-15 19:42:52','',0,'http://livinonwheels.flywheelsites.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_r6aazm11aj_posts` VALUES (3,1,'2019-08-15 19:42:52','2019-08-15 19:42:52','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://livinonwheels.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-08-15 19:42:52','2019-08-15 19:42:52','',0,'http://livinonwheels.flywheelsites.com/?page_id=3',0,'page','',0);
/*!40000 ALTER TABLE `wp_r6aazm11aj_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_term_relationships`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_term_relationships`
--

LOCK TABLES `wp_r6aazm11aj_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_r6aazm11aj_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_term_taxonomy`
--

LOCK TABLES `wp_r6aazm11aj_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_r6aazm11aj_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_termmeta`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_termmeta`
--

LOCK TABLES `wp_r6aazm11aj_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_r6aazm11aj_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_terms`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_terms`
--

LOCK TABLES `wp_r6aazm11aj_terms` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_terms` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_r6aazm11aj_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_usermeta`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_usermeta`
--

LOCK TABLES `wp_r6aazm11aj_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_usermeta` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (1,1,'nickname','livinonwheels');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (12,1,'wp_r6aazm11aj_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (13,1,'wp_r6aazm11aj_user_level','10');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_r6aazm11aj_usermeta` VALUES (15,1,'show_welcome_panel','1');
/*!40000 ALTER TABLE `wp_r6aazm11aj_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_r6aazm11aj_users`
--

DROP TABLE IF EXISTS `wp_r6aazm11aj_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_r6aazm11aj_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_r6aazm11aj_users`
--

LOCK TABLES `wp_r6aazm11aj_users` WRITE;
/*!40000 ALTER TABLE `wp_r6aazm11aj_users` DISABLE KEYS */;
INSERT INTO `wp_r6aazm11aj_users` VALUES (1,'livinonwheels','$P$FNCUbarnMIeKSt8fPyYxqny6modIhG/','livinonwheels','ryan@nalumedia.com','','2019-08-15 19:42:52','1607116555:$P$B8HFXKQrPdCS4WPmIZfFvFzh.QTlU0/',0,'livinonwheels');
/*!40000 ALTER TABLE `wp_r6aazm11aj_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 13:19:36
