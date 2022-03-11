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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-02-24 22:40:14','2022-02-24 22:40:14','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','The best university in the world','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','rmonterrosa@lji.org','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:140:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=43&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:99:\"/Users/ljiuser/Local Sites/fictional-university/app/public/wp-content/themes/twentytwenty/style.css\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','51917','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','45','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','43','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1661294414','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','51917','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:7:\"block-2\";i:3;s:7:\"block-3\";i:4;s:7:\"block-4\";i:5;s:7:\"block-5\";i:6;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:8:{i:1646786415;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1646822415;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1646865615;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1646865689;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1646865690;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1646865700;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647038415;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','C:ui4*.kl28:H*}!}VjhVzn</_1~UrutHa>W(1-6jD#|LZ6xL=5d/vCFH`4RD)+ ','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','B/Pe1H?S3K./D<B_m>P$OGd h[Lmw$U_:NpZuJiHoL$di9yx#Pazwhs*NCxhto{>','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1645745182;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (127,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.1\";s:7:\"version\";s:5:\"5.9.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1646784168;s:15:\"version_checked\";s:5:\"5.9.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1646784168;s:7:\"checked\";a:4:{s:26:\"fictional-university-theme\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (134,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (139,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_twentytwenty','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1645745368;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (158,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (165,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (166,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (170,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:18:\"headerMenuLocation\";i:4;s:10:\"headerMenu\";i:4;s:17:\"footerLocationOne\";i:5;s:17:\"footerLocationTwo\";i:6;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (174,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (175,'new_admin_email','rmonterrosa@lji.org','yes');
INSERT INTO `wp_options` VALUES (184,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (206,'recovery_mode_email_last_sent','1646253848','yes');
INSERT INTO `wp_options` VALUES (224,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":5,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (390,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (529,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (730,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (735,'acf_version','5.12','yes');
INSERT INTO `wp_options` VALUES (740,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1646784168;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:4:\"5.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:13:\"cmb2/init.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:18:\"w.org/plugins/cmb2\";s:4:\"slug\";s:4:\"cmb2\";s:6:\"plugin\";s:13:\"cmb2/init.php\";s:11:\"new_version\";s:6:\"2.10.1\";s:3:\"url\";s:35:\"https://wordpress.org/plugins/cmb2/\";s:7:\"package\";s:47:\"https://downloads.wordpress.org/plugin/cmb2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:57:\"https://ps.w.org/cmb2/assets/icon-256x256.png?rev=1081087\";s:2:\"1x\";s:57:\"https://ps.w.org/cmb2/assets/icon-128x128.png?rev=1081087\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/cmb2/assets/banner-1544x500.png?rev=1081087\";s:2:\"1x\";s:59:\"https://ps.w.org/cmb2/assets/banner-772x250.png?rev=1081087\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.8.0\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:4:\"5.12\";s:13:\"cmb2/init.php\";s:6:\"2.10.1\";}}','no');
INSERT INTO `wp_options` VALUES (749,'_site_transient_timeout_browser_0837dcc42cb71539def59222396174b2','1646935124','no');
INSERT INTO `wp_options` VALUES (750,'_site_transient_browser_0837dcc42cb71539def59222396174b2','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.51\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (812,'_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce','1647021904','no');
INSERT INTO `wp_options` VALUES (813,'_site_transient_php_check_12edeb5890095749089987982a1404ce','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (991,'_site_transient_timeout_theme_roots','1646785968','no');
INSERT INTO `wp_options` VALUES (992,'_site_transient_theme_roots','a:4:{s:26:\"fictional-university-theme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (995,'_transient_timeout_global_styles_fictional-university-theme','1646784364','no');
INSERT INTO `wp_options` VALUES (996,'_transient_global_styles_fictional-university-theme','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (16,12,'_edit_lock','1645749386:1');
INSERT INTO `wp_postmeta` VALUES (19,15,'_edit_lock','1646266883:1');
INSERT INTO `wp_postmeta` VALUES (22,17,'_edit_lock','1645749988:1');
INSERT INTO `wp_postmeta` VALUES (23,19,'_edit_lock','1646077936:1');
INSERT INTO `wp_postmeta` VALUES (24,3,'_edit_lock','1646075558:1');
INSERT INTO `wp_postmeta` VALUES (25,22,'_edit_lock','1646085799:1');
INSERT INTO `wp_postmeta` VALUES (26,24,'_edit_lock','1646085810:1');
INSERT INTO `wp_postmeta` VALUES (27,26,'_edit_lock','1646081699:1');
INSERT INTO `wp_postmeta` VALUES (28,28,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (29,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,28,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (31,28,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (32,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,28,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (46,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (47,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (48,30,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (49,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (50,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (51,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (52,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (53,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,30,'_menu_item_orphaned','1646087810');
INSERT INTO `wp_postmeta` VALUES (55,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,31,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (58,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (64,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,32,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (67,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (72,32,'_menu_item_orphaned','1646087810');
INSERT INTO `wp_postmeta` VALUES (73,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,33,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (76,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,33,'_menu_item_orphaned','1646087810');
INSERT INTO `wp_postmeta` VALUES (82,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (83,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (84,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (85,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (86,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (87,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (88,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (89,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,34,'_menu_item_orphaned','1646087810');
INSERT INTO `wp_postmeta` VALUES (91,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (92,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (93,35,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (94,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (95,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (96,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (97,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (98,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (99,35,'_menu_item_orphaned','1646087810');
INSERT INTO `wp_postmeta` VALUES (100,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (102,36,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (103,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (106,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (109,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (110,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (111,37,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (112,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (113,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (114,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (115,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (116,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (118,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (120,38,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (121,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (127,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (128,39,'_menu_item_menu_item_parent','38');
INSERT INTO `wp_postmeta` VALUES (129,39,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (130,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (131,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (132,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (133,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (134,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (136,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (137,40,'_menu_item_menu_item_parent','38');
INSERT INTO `wp_postmeta` VALUES (138,40,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (139,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (140,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (141,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (142,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (143,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (145,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (146,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (147,41,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (148,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (149,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (150,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (151,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (152,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (154,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (155,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (156,42,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (157,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (158,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (159,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (160,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (161,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (163,43,'_edit_lock','1646155864:1');
INSERT INTO `wp_postmeta` VALUES (164,45,'_edit_lock','1646155878:1');
INSERT INTO `wp_postmeta` VALUES (165,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (166,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (167,47,'_menu_item_object_id','45');
INSERT INTO `wp_postmeta` VALUES (168,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (169,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (170,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (171,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (172,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (174,28,'_wp_old_date','2022-02-28');
INSERT INTO `wp_postmeta` VALUES (175,31,'_wp_old_date','2022-02-28');
INSERT INTO `wp_postmeta` VALUES (177,48,'_edit_lock','1646162670:1');
INSERT INTO `wp_postmeta` VALUES (178,48,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (179,48,'_wp_trash_meta_time','1646162688');
INSERT INTO `wp_postmeta` VALUES (180,48,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (181,50,'_edit_lock','1646266708:1');
INSERT INTO `wp_postmeta` VALUES (184,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,52,'_edit_lock','1646417190:1');
INSERT INTO `wp_postmeta` VALUES (186,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,53,'_edit_lock','1646693045:1');
INSERT INTO `wp_postmeta` VALUES (188,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,54,'_edit_lock','1646329999:1');
INSERT INTO `wp_postmeta` VALUES (194,58,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (195,58,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (196,58,'_menu_item_object_id','-27');
INSERT INTO `wp_postmeta` VALUES (197,58,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (198,58,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (199,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (200,58,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (201,58,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (203,28,'_wp_old_date','2022-03-01');
INSERT INTO `wp_postmeta` VALUES (204,47,'_wp_old_date','2022-03-01');
INSERT INTO `wp_postmeta` VALUES (205,31,'_wp_old_date','2022-03-01');
INSERT INTO `wp_postmeta` VALUES (207,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (208,59,'_edit_lock','1646329421:1');
INSERT INTO `wp_postmeta` VALUES (209,54,'event_date','20220415');
INSERT INTO `wp_postmeta` VALUES (210,54,'_event_date','field_6220fe1da1bfd');
INSERT INTO `wp_postmeta` VALUES (211,53,'event_date','20220603');
INSERT INTO `wp_postmeta` VALUES (212,53,'_event_date','field_6220fe1da1bfd');
INSERT INTO `wp_postmeta` VALUES (213,52,'event_date','20220106');
INSERT INTO `wp_postmeta` VALUES (214,52,'_event_date','field_6220fe1da1bfd');
INSERT INTO `wp_postmeta` VALUES (215,62,'_edit_lock','1646417542:1');
INSERT INTO `wp_postmeta` VALUES (216,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (217,62,'event_date','20221216');
INSERT INTO `wp_postmeta` VALUES (218,62,'_event_date','field_6220fe1da1bfd');
INSERT INTO `wp_postmeta` VALUES (219,63,'_edit_lock','1646436985:1');
INSERT INTO `wp_postmeta` VALUES (220,65,'_edit_lock','1646438150:1');
INSERT INTO `wp_postmeta` VALUES (221,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (222,65,'event_date','20220101');
INSERT INTO `wp_postmeta` VALUES (223,65,'_event_date','field_6220fe1da1bfd');
INSERT INTO `wp_postmeta` VALUES (224,66,'_edit_lock','1646677718:1');
INSERT INTO `wp_postmeta` VALUES (225,67,'_edit_lock','1646677740:1');
INSERT INTO `wp_postmeta` VALUES (226,68,'_edit_lock','1646677773:1');
INSERT INTO `wp_postmeta` VALUES (227,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (228,69,'_edit_lock','1646680183:1');
INSERT INTO `wp_postmeta` VALUES (229,53,'related_programs','a:2:{i:0;s:2:\"67\";i:1;s:2:\"66\";}');
INSERT INTO `wp_postmeta` VALUES (230,53,'_related_programs','field_622658904f50d');
INSERT INTO `wp_postmeta` VALUES (231,71,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (232,71,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (233,71,'_menu_item_object_id','-41');
INSERT INTO `wp_postmeta` VALUES (234,71,'_menu_item_object','program');
INSERT INTO `wp_postmeta` VALUES (235,71,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (236,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (237,71,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (238,71,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (240,28,'_wp_old_date','2022-03-03');
INSERT INTO `wp_postmeta` VALUES (241,47,'_wp_old_date','2022-03-03');
INSERT INTO `wp_postmeta` VALUES (242,58,'_wp_old_date','2022-03-03');
INSERT INTO `wp_postmeta` VALUES (243,31,'_wp_old_date','2022-03-03');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-02-24 22:40:14','2022-02-24 22:40:14','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-02-24 22:40:14','2022-02-24 22:40:14','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-02-24 22:40:14','2022-02-24 22:40:14','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-02-24 22:40:14','2022-02-24 22:40:14','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-02-24 22:40:14','2022-02-24 22:40:14','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2022-02-28 19:07:56','2022-02-28 19:07:56','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-02-24 23:25:19','2022-02-24 23:25:19','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentytwo','','','2022-02-24 23:25:19','2022-02-24 23:25:19','',0,'http://fictional-university.local/wp-global-styles-twentytwentytwo/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-02-25 00:35:52','2022-02-25 00:35:52','<!-- wp:paragraph -->\n<p>Lorem Impsum Dolor Simet</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2022-02-25 00:35:52','2022-02-25 00:35:52','',0,'http://fictional-university.local/?p=12',0,'post','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-02-25 00:35:25','2022-02-25 00:35:25','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-fictional-university-theme','','','2022-02-25 00:35:25','2022-02-25 00:35:25','',0,'http://fictional-university.local/wp-global-styles-fictional-university-theme/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-02-25 00:35:52','2022-02-25 00:35:52','<!-- wp:paragraph -->\n<p>Lorem Impsum Dolor Simet</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','12-revision-v1','','','2022-02-25 00:35:52','2022-02-25 00:35:52','',12,'http://fictional-university.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-02-25 00:36:46','2022-02-25 00:36:46','<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Amet placeat, doloremque obcaecati debitis nam fuga mollitia. Laudantium cum incidunt optio, iste fugit quia sit delectus pariatur ab consequuntur nemo quas esse ut sint harum repellendus praesentium voluptatem nobis! Et alias quisquam repellendus deserunt enim ipsa ut voluptates officia aut autem.</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2022-03-03 00:23:45','2022-03-03 00:23:45','',0,'http://fictional-university.local/?p=15',0,'post','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-02-25 00:36:46','2022-02-25 00:36:46','<!-- wp:paragraph -->\n<p>sadf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>Ipsum</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','15-revision-v1','','','2022-02-25 00:36:46','2022-02-25 00:36:46','',15,'http://fictional-university.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-02-25 00:48:40','2022-02-25 00:48:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor samet</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2022-02-25 00:48:40','2022-02-25 00:48:40','',0,'http://fictional-university.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-02-25 00:48:40','2022-02-25 00:48:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor samet</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','17-revision-v1','','','2022-02-25 00:48:40','2022-02-25 00:48:40','',17,'http://fictional-university.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-02-28 19:07:35','2022-02-28 19:07:35','<!-- wp:paragraph -->\n<p>About page content</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2022-02-28 19:07:35','2022-02-28 19:07:35','',0,'http://fictional-university.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-02-28 19:07:35','2022-02-28 19:07:35','<!-- wp:paragraph -->\n<p>About page content</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','19-revision-v1','','','2022-02-28 19:07:35','2022-02-28 19:07:35','',19,'http://fictional-university.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-02-28 19:07:56','2022-02-28 19:07:56','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-02-28 19:07:56','2022-02-28 19:07:56','',3,'http://fictional-university.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-02-28 19:46:21','2022-02-28 19:46:21','<!-- wp:paragraph -->\n<p>a brief description about our history</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2022-02-28 22:05:40','2022-02-28 22:05:40','',19,'http://fictional-university.local/?page_id=22',1,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-02-28 19:46:21','2022-02-28 19:46:21','<!-- wp:paragraph -->\n<p>a brief description about our history</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','22-revision-v1','','','2022-02-28 19:46:21','2022-02-28 19:46:21','',22,'http://fictional-university.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-02-28 19:47:08','2022-02-28 19:47:08','<!-- wp:paragraph -->\n<p>A list of our goals</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2022-02-28 22:05:52','2022-02-28 22:05:52','',19,'http://fictional-university.local/?page_id=24',2,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-02-28 19:47:08','2022-02-28 19:47:08','<!-- wp:paragraph -->\n<p>A list of our goals</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','24-revision-v1','','','2022-02-28 19:47:08','2022-02-28 19:47:08','',24,'http://fictional-university.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-02-28 20:57:17','2022-02-28 20:57:17','<!-- wp:paragraph -->\n<p>A few words about cookie usage on this site</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2022-02-28 20:57:17','2022-02-28 20:57:17','',3,'http://fictional-university.local/?page_id=26',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-02-28 20:57:17','2022-02-28 20:57:17','<!-- wp:paragraph -->\n<p>A few words about cookie usage on this site</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','26-revision-v1','','','2022-02-28 20:57:17','2022-02-28 20:57:17','',26,'http://fictional-university.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-03-07 21:09:45','2022-02-28 22:38:05','','Home','','publish','closed','closed','','home','','','2022-03-07 21:09:45','2022-03-07 21:09:45','',0,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-02-28 22:36:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-02-28 22:36:50','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-03-07 21:09:45','2022-02-28 22:38:05',' ','','','publish','closed','closed','','31','','','2022-03-07 21:09:45','2022-03-07 21:09:45','',0,'http://fictional-university.local/?p=31',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-02-28 22:36:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-02-28 22:36:50','0000-00-00 00:00:00','',19,'http://fictional-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-02-28 22:36:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-02-28 22:36:50','0000-00-00 00:00:00','',19,'http://fictional-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-02-28 22:36:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-02-28 22:36:50','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-02-28 22:36:50','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-02-28 22:36:50','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-02-28 22:52:11','2022-02-28 22:52:11',' ','','','publish','closed','closed','','36','','','2022-02-28 22:52:11','2022-02-28 22:52:11','',0,'http://fictional-university.local/?p=36',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-02-28 22:52:11','2022-02-28 22:52:11',' ','','','publish','closed','closed','','37','','','2022-02-28 22:52:11','2022-02-28 22:52:11','',3,'http://fictional-university.local/?p=37',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-02-28 22:52:11','2022-02-28 22:52:11',' ','','','publish','closed','closed','','38','','','2022-02-28 22:52:11','2022-02-28 22:52:11','',0,'http://fictional-university.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-02-28 22:52:11','2022-02-28 22:52:11',' ','','','publish','closed','closed','','39','','','2022-02-28 22:52:11','2022-02-28 22:52:11','',19,'http://fictional-university.local/?p=39',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-02-28 22:52:11','2022-02-28 22:52:11',' ','','','publish','closed','closed','','40','','','2022-02-28 22:52:11','2022-02-28 22:52:11','',19,'http://fictional-university.local/?p=40',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-02-28 22:52:54','2022-02-28 22:52:54',' ','','','publish','closed','closed','','41','','','2022-02-28 22:52:54','2022-02-28 22:52:54','',0,'http://fictional-university.local/?p=41',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-02-28 22:52:54','2022-02-28 22:52:54',' ','','','publish','closed','closed','','42','','','2022-02-28 22:52:54','2022-02-28 22:52:54','',0,'http://fictional-university.local/?p=42',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-03-01 17:33:25','2022-03-01 17:33:25','','Home','','publish','closed','closed','','home','','','2022-03-01 17:33:25','2022-03-01 17:33:25','',0,'http://fictional-university.local/?page_id=43',0,'page','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-03-01 17:33:25','2022-03-01 17:33:25','','Home','','inherit','closed','closed','','43-revision-v1','','','2022-03-01 17:33:25','2022-03-01 17:33:25','',43,'http://fictional-university.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-03-01 17:33:38','2022-03-01 17:33:38','','Blog','','publish','closed','closed','','blog','','','2022-03-01 17:33:38','2022-03-01 17:33:38','',0,'http://fictional-university.local/?page_id=45',0,'page','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-03-01 17:33:38','2022-03-01 17:33:38','','Blog','','inherit','closed','closed','','45-revision-v1','','','2022-03-01 17:33:38','2022-03-01 17:33:38','',45,'http://fictional-university.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-03-07 21:09:45','2022-03-01 17:35:43',' ','','','publish','closed','closed','','47','','','2022-03-07 21:09:45','2022-03-07 21:09:45','',0,'http://fictional-university.local/?p=47',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-03-01 19:24:48','2022-03-01 19:24:48','<!-- wp:paragraph -->\n<p>we won an award for best new page</p>\n<!-- /wp:paragraph -->','We won an award!','','trash','closed','closed','','__trashed','','','2022-03-01 19:24:48','2022-03-01 19:24:48','',0,'http://fictional-university.local/?page_id=48',0,'page','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-03-01 19:24:48','2022-03-01 19:24:48','<!-- wp:paragraph -->\n<p>we won an award for best new page</p>\n<!-- /wp:paragraph -->','We won an award!','','inherit','closed','closed','','48-revision-v1','','','2022-03-01 19:24:48','2022-03-01 19:24:48','',48,'http://fictional-university.local/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-03-01 19:25:51','2022-03-01 19:25:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nec docendi mandamus consectetuer eu, sit et appetere officiis. Eu diceret similique liberavisse vis. Te suas copiosae eum. Eius graeco conceptam an quo. Omnium adolescens in vim, eum nemore reformidans in. Per suas dicam efficiendi ex, graeci suscipiantur eu nec. Ut qui idque ponderum, voluptua neglegentur te nec, nec velit quodsi indoctum et.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year.','publish','open','open','','we-won-an-award','','','2022-03-03 00:20:56','2022-03-03 00:20:56','',0,'http://fictional-university.local/?p=50',0,'post','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-03-01 19:25:51','2022-03-01 19:25:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nec docendi mandamus consectetuer eu, sit et appetere officiis. Eu diceret similique liberavisse vis. Te suas copiosae eum. Eius graeco conceptam an quo. Omnium adolescens in vim, eum nemore reformidans in. Per suas dicam efficiendi ex, graeci suscipiantur eu nec. Ut qui idque ponderum, voluptua neglegentur te nec, nec velit quodsi indoctum et.</p>\n<!-- /wp:paragraph -->','We Won An Award!','','inherit','closed','closed','','50-revision-v1','','','2022-03-01 19:25:51','2022-03-01 19:25:51','',50,'http://fictional-university.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-03-02 20:48:30','2022-03-02 20:48:30','<div>\n<div>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium veniam eos atque amet voluptas, dolores sint quisquam sunt commodi delectus.</div>\n</div>','Math Meetup','','publish','closed','closed','','math-meetup','','','2022-03-04 18:06:30','2022-03-04 18:06:30','',0,'http://fictional-university.local/?post_type=event&#038;p=52',0,'event','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-03-02 20:49:05','2022-03-02 20:49:05','<div>\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis excepturi reiciendis, accusantium vitae nulla molestias, quod, temporibus illo dolor minima dicta distinctio! Qui temporibus facere quia sapiente quisquam! Rem, laboriosam!</div>\n</div>','The science of dogs','','publish','closed','closed','','the-science-of-dogs','','','2022-03-07 20:46:43','2022-03-07 20:46:43','',0,'http://fictional-university.local/?post_type=event&#038;p=53',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-03-02 20:49:18','2022-03-02 20:49:18','<div>\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis excepturi reiciendis, accusantium vitae nulla molestias, quod, temporibus illo dolor minima dicta distinctio! Qui temporibus facere quia sapiente quisquam! Rem, laboriosam!</div>\n</div>','Poetry Day','Poetry day is going to be amazing!','publish','closed','closed','','poetry-day','','','2022-03-03 17:51:27','2022-03-03 17:51:27','',0,'http://fictional-university.local/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-03-02 20:57:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2022-03-02 20:57:31','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=event&p=55',0,'event','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-03-03 00:20:56','2022-03-03 00:20:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, nec docendi mandamus consectetuer eu, sit et appetere officiis. Eu diceret similique liberavisse vis. Te suas copiosae eum. Eius graeco conceptam an quo. Omnium adolescens in vim, eum nemore reformidans in. Per suas dicam efficiendi ex, graeci suscipiantur eu nec. Ut qui idque ponderum, voluptua neglegentur te nec, nec velit quodsi indoctum et.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year.','inherit','closed','closed','','50-revision-v1','','','2022-03-03 00:20:56','2022-03-03 00:20:56','',50,'http://fictional-university.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-03-03 00:23:45','2022-03-03 00:23:45','<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Amet placeat, doloremque obcaecati debitis nam fuga mollitia. Laudantium cum incidunt optio, iste fugit quia sit delectus pariatur ab consequuntur nemo quas esse ut sint harum repellendus praesentium voluptatem nobis! Et alias quisquam repellendus deserunt enim ipsa ut voluptates officia aut autem.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','15-revision-v1','','','2022-03-03 00:23:45','2022-03-03 00:23:45','',15,'http://fictional-university.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-03-07 21:09:45','2022-03-03 01:08:27','','Events','','publish','closed','closed','','events','','','2022-03-07 21:09:45','2022-03-07 21:09:45','',0,'http://fictional-university.local/?p=58',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-03-03 17:45:06','2022-03-03 17:45:06','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_6220fe000eb13','','','2022-03-03 17:46:02','2022-03-03 17:46:02','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=59',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-03-03 17:45:06','2022-03-03 17:45:06','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_6220fe1da1bfd','','','2022-03-03 17:46:02','2022-03-03 17:46:02','',59,'http://fictional-university.local/?post_type=acf-field&#038;p=60',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-03-04 18:05:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-03-04 18:05:04','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=61',0,'post','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-03-04 18:12:21','2022-03-04 18:12:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Harum laudantium ut quas excepturi. Temporibus fugit at eos eius magni nostrum odio hic sunt, ipsam deserunt iusto nihil in rerum a odit voluptates dicta. Atque, est voluptatibus! Accusamus hic, dolor obcaecati ex optio aspernatur minus quibusdam sunt reprehenderit! Consequuntur dolor molestiae nulla maiores, atque incidunt voluptatum! Consequatur a ut necessitatibus vel!</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2022-03-04 18:12:21','2022-03-04 18:12:21','',0,'http://fictional-university.local/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-03-04 23:36:39','2022-03-04 23:36:39','','Past Events','','publish','closed','closed','','past-events','','','2022-03-04 23:36:39','2022-03-04 23:36:39','',0,'http://fictional-university.local/?page_id=63',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-03-04 23:36:39','2022-03-04 23:36:39','','Past Events','','inherit','closed','closed','','63-revision-v1','','','2022-03-04 23:36:39','2022-03-04 23:36:39','',63,'http://fictional-university.local/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-03-04 23:55:49','2022-03-04 23:55:49','','New Year Gathering','','publish','closed','closed','','new-year-gathering','','','2022-03-04 23:55:50','2022-03-04 23:55:50','',0,'http://fictional-university.local/?post_type=event&#038;p=65',0,'event','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-03-07 18:31:00','2022-03-07 18:31:00','<!-- wp:paragraph -->\n<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Recusandae eos cupiditate in, labore modi impedit ratione alias? Reprehenderit officiis sunt aut perspiciatis repellendus nisi ipsum numquam error natus consequatur possimus velit nulla nobis sequi sint, expedita debitis necessitatibus nostrum voluptas sed earum quae non voluptates? Asperiores aspernatur a minus placeat.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2022-03-07 18:31:00','2022-03-07 18:31:00','',0,'http://fictional-university.local/?post_type=program&#038;p=66',0,'program','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-03-07 18:31:24','2022-03-07 18:31:24','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint quidem dignissimos quaerat itaque aliquam nisi nobis! Aliquid, odio modi? Hic ipsam praesentium aut sint similique repellat quas cum incidunt. Dolorum voluptatibus voluptas dignissimos placeat necessitatibus provident ducimus recusandae quod vitae? Placeat laudantium adipisci debitis corrupti earum, perspiciatis perferendis fugiat repudiandae?</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2022-03-07 18:31:24','2022-03-07 18:31:24','',0,'http://fictional-university.local/?post_type=program&#038;p=67',0,'program','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-03-07 18:31:49','2022-03-07 18:31:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam atque, consequuntur est veritatis ex voluptatibus, aut ducimus quas itaque quo molestiae fuga laudantium eveniet earum unde, magnam impedit. Minus rem libero aperiam, explicabo corrupti vero eum veniam nihil. Aut, minima totam fuga officia dignissimos dolores sapiente deserunt. Quia, earum delectus.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2022-03-07 18:31:49','2022-03-07 18:31:49','',0,'http://fictional-university.local/?post_type=program&#038;p=68',0,'program','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-03-07 19:12:02','2022-03-07 19:12:02','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_62265886b7a14','','','2022-03-07 19:12:04','2022-03-07 19:12:04','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=69',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-03-07 19:12:02','2022-03-07 19:12:02','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_622658904f50d','','','2022-03-07 19:12:02','2022-03-07 19:12:02','',69,'http://fictional-university.local/?post_type=acf-field&p=70',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-03-07 21:09:45','2022-03-07 21:09:45','','Programs','','publish','closed','closed','','programs','','','2022-03-07 21:09:45','2022-03-07 21:09:45','',0,'http://fictional-university.local/?p=71',4,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,2,0);
INSERT INTO `wp_term_relationships` VALUES (12,1,0);
INSERT INTO `wp_term_relationships` VALUES (13,3,0);
INSERT INTO `wp_term_relationships` VALUES (15,1,0);
INSERT INTO `wp_term_relationships` VALUES (28,4,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (36,6,0);
INSERT INTO `wp_term_relationships` VALUES (37,6,0);
INSERT INTO `wp_term_relationships` VALUES (38,6,0);
INSERT INTO `wp_term_relationships` VALUES (39,6,0);
INSERT INTO `wp_term_relationships` VALUES (40,6,0);
INSERT INTO `wp_term_relationships` VALUES (41,5,0);
INSERT INTO `wp_term_relationships` VALUES (42,5,0);
INSERT INTO `wp_term_relationships` VALUES (47,4,0);
INSERT INTO `wp_term_relationships` VALUES (50,7,0);
INSERT INTO `wp_term_relationships` VALUES (58,4,0);
INSERT INTO `wp_term_relationships` VALUES (71,4,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','We love to blog about our awards.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentytwo','twentytwentytwo',0);
INSERT INTO `wp_terms` VALUES (3,'fictional-university-theme','fictional-university-theme',0);
INSERT INTO `wp_terms` VALUES (4,'Main Header Menu','main-header-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Footer Menu 1','footer-menu-1',0);
INSERT INTO `wp_terms` VALUES (6,'Footer Menu 2','footer-menu-2',0);
INSERT INTO `wp_terms` VALUES (7,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Ricardo');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Here is a short biography about me.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"5d9c5973c6dfe584420bd865e53560dcfffb79c0c0a356e21ce5c55c37422df4\";a:4:{s:10:\"expiration\";i:1646952089;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109 Safari/537.36\";s:5:\"login\";i:1645742489;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','61');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_event','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'enable_custom_fields','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BxZN5ygA0CBjuGAhBn3kGTurvMHH.F/','admin','rmonterrosa@lji.org','http://fictional-university.local','2022-02-24 22:40:14','',0,'Ricardo');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 16:06:43
