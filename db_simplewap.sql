-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.45 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_simplewap.articles
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `slug` varchar(180) COLLATE utf8_bin NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `read_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.articles: ~11 rows (approximately)
DELETE FROM `articles`;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `slug`, `category_id`, `title`, `created_at`, `updated_at`, `description`, `read_count`) VALUES
	(2, 'lorem-ipsum-dolor-sit-amet', 1, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(3, 'lorem-ipsum-dolor-sit-amet-3', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(5, 'lorem-ipsum-dolor-sit-amet-4', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(6, 'lorem-ipsum-dolor-sit-amet-5', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(7, 'lorem-ipsum-dolor-sit-amet-6', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(8, 'lorem-ipsum-dolor-sit-amet-7', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(9, 'lorem-ipsum-dolor-sit-amet-8', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(10, 'lorem-ipsum-dolor-sit-amet-9', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(11, 'lorem-ipsum-dolor-sit-amet-10', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(12, 'lorem-ipsum-dolor-sit-amet-11', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 16:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1),
	(13, 'lorem-ipsum-dolor-sit-amet-12', 2, 'Lorem ipsum dolor sit amet', '2019-09-01 20:35:55', '2019-09-01 12:03:45', 'Cras eu rutrum dolor. In hac habitasse platea dictumst. Donec volutpat, libero hendrerit mattis ullamcorper, leo sapien auctor nunc, et porttitor risus libero quis lectus. Fusce viverra nunc vulputate, maximus nunc ac, consequat arcu. Vestibulum sollicitudin, quam quis dapibus aliquet, metus lorem vestibulum eros, a cursus neque erat sed turpis. Donec iaculis, nulla interdum sollicitudin suscipit, turpis augue vestibulum urna, maximus efficitur lorem ex accumsan est. Pellentesque eget sapien eget eros eleifend fringilla. Phasellus consequat diam quis ex hendrerit, ut pulvinar lacus euismod. Phasellus a volutpat nisi. Integer eget feugiat dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum eros non risus hendrerit, fermentum ultricies ligula aliquet. Suspendisse eu scelerisque risus, et bibendum mauris.', 1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.article_category
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE IF NOT EXISTS `article_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(32) COLLATE utf8_bin NOT NULL,
  `category_slug` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.article_category: ~11 rows (approximately)
DELETE FROM `article_category`;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` (`category_id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
	(1, 'General', 'general', '0000-00-00', '0000-00-00'),
	(2, 'Programming', 'programming', '0000-00-00', '0000-00-00'),
	(3, 'Database', 'database', '2019-09-04', '2019-09-04'),
	(4, 'Java', 'java', '2019-09-04', '2019-09-04'),
	(5, 'kesehatan', 'kesehatan', '2019-09-04', '2019-09-04'),
	(6, 'Gaya Hidup', 'gaya-hidup', '2019-09-04', '2019-09-04'),
	(7, 'Sport', 'sport', '2019-09-04', '2019-09-04'),
	(8, 'Mancanegara', 'mancanegara', '2019-09-04', '2019-09-04'),
	(9, 'seputar bola', 'seputar-bola', '2019-09-04', '2019-09-04'),
	(10, 'Fakta Menarik', 'fakta-menarik', '2019-09-04', '2019-09-04'),
	(11, 'Kabar Dunia', 'kabar-dunia', '2019-09-04', '2019-09-04');
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.article_comments
DROP TABLE IF EXISTS `article_comments`;
CREATE TABLE IF NOT EXISTS `article_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(90) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `FK_article_comments_articles` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.article_comments: ~3 rows (approximately)
DELETE FROM `article_comments`;
/*!40000 ALTER TABLE `article_comments` DISABLE KEYS */;
INSERT INTO `article_comments` (`id`, `article_id`, `name`, `url`, `comment`, `created_at`, `updated_at`) VALUES
	(7, 2, 'Asep Kurniawan', '', 'Ini hanya contoh komentar saja gan. :)', '2019-09-01', '2019-09-01'),
	(8, 2, 'Asep Kurniawan', '', 'test lagi ah', '2019-09-01', '2019-09-01'),
	(9, 13, 'Asep Kurniawan', '', 'hanya mencoba pesan sajah', '2019-09-01', '2019-09-01');
/*!40000 ALTER TABLE `article_comments` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.banned
DROP TABLE IF EXISTS `banned`;
CREATE TABLE IF NOT EXISTS `banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `expired` int(11) NOT NULL,
  `ip` varchar(100) COLLATE utf8_bin NOT NULL,
  `text` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.banned: ~0 rows (approximately)
DELETE FROM `banned`;
/*!40000 ALTER TABLE `banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `banned` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.blog_file
DROP TABLE IF EXISTS `blog_file`;
CREATE TABLE IF NOT EXISTS `blog_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL,
  `type` varchar(12) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_blog` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.blog_file: ~0 rows (approximately)
DELETE FROM `blog_file`;
/*!40000 ALTER TABLE `blog_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_file` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.comment
DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `mail` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(32) COLLATE utf8_bin NOT NULL,
  `text` varchar(500) COLLATE utf8_bin NOT NULL,
  `ua` varchar(250) COLLATE utf8_bin NOT NULL,
  `phone` varchar(100) COLLATE utf8_bin NOT NULL,
  `ip` varchar(100) COLLATE utf8_bin NOT NULL,
  `type` enum('blog','loads','news') COLLATE utf8_bin NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `id_type` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.comment: ~0 rows (approximately)
DELETE FROM `comment`;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.favicon
DROP TABLE IF EXISTS `favicon`;
CREATE TABLE IF NOT EXISTS `favicon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.favicon: ~0 rows (approximately)
DELETE FROM `favicon`;
/*!40000 ALTER TABLE `favicon` DISABLE KEYS */;
/*!40000 ALTER TABLE `favicon` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.loads
DROP TABLE IF EXISTS `loads`;
CREATE TABLE IF NOT EXISTS `loads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin NOT NULL,
  `size` int(11) DEFAULT NULL,
  `img` longblob,
  `type` enum('file','folder') COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `yes` int(11) NOT NULL DEFAULT '0',
  `no` int(11) NOT NULL DEFAULT '0',
  `recent` int(11) DEFAULT NULL,
  `id_loads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_loads` (`id_loads`),
  KEY `type` (`type`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.loads: ~0 rows (approximately)
DELETE FROM `loads`;
/*!40000 ALTER TABLE `loads` DISABLE KEYS */;
/*!40000 ALTER TABLE `loads` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('link','text') COLLATE utf8_bin NOT NULL DEFAULT 'link',
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `url` varchar(64) COLLATE utf8_bin NOT NULL,
  `count` varchar(64) COLLATE utf8_bin NOT NULL,
  `position` int(11) NOT NULL,
  `icon` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Main Menu';

-- Dumping data for table db_simplewap.menu: ~4 rows (approximately)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `type`, `name`, `url`, `count`, `position`, `icon`) VALUES
	(11, 'text', 'Navigation', '#', '3', 1, '0'),
	(12, 'link', 'Download', '/loads', '0', 2, '1'),
	(13, 'link', 'Shoutbox', '/shoutbox', '0', 3, '1'),
	(14, 'link', 'Blog', '/blog', '0', 4, '1');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_bin NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.news
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL,
  `text` varchar(1024) COLLATE utf8_bin NOT NULL,
  `show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.news: ~0 rows (approximately)
DELETE FROM `news`;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.partner
DROP TABLE IF EXISTS `partner`;
CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `url` varchar(32) COLLATE utf8_bin NOT NULL,
  `text` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.partner: ~0 rows (approximately)
DELETE FROM `partner`;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(190) COLLATE utf8_bin NOT NULL,
  `token` varchar(190) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.referer
DROP TABLE IF EXISTS `referer`;
CREATE TABLE IF NOT EXISTS `referer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `count` (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.referer: ~0 rows (approximately)
DELETE FROM `referer`;
/*!40000 ALTER TABLE `referer` DISABLE KEYS */;
/*!40000 ALTER TABLE `referer` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.shout
DROP TABLE IF EXISTS `shout`;
CREATE TABLE IF NOT EXISTS `shout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `url` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(500) COLLATE utf8_bin NOT NULL,
  `icon` int(11) NOT NULL DEFAULT '0',
  `ua` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.shout: ~5 rows (approximately)
DELETE FROM `shout`;
/*!40000 ALTER TABLE `shout` DISABLE KEYS */;
INSERT INTO `shout` (`id`, `time`, `name`, `url`, `text`, `icon`, `ua`, `ip`) VALUES
	(73, 1567221582, 'qwer', '', 'test sajah ah gan', 1, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL),
	(74, 1567221616, 'Asep', 'test', 'asep sajah', 1, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL),
	(75, 1567311700, 'Ettet', '', 'Ettet', 1, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL),
	(76, 1567330002, 'Asep Kurniawan', '', 'Hari ini ada apa aja gan ya', 1, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL),
	(77, 1567332174, 'Asep Kurniawan', '', 'Mantap jiwa', 1, 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL);
/*!40000 ALTER TABLE `shout` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.smiles
DROP TABLE IF EXISTS `smiles`;
CREATE TABLE IF NOT EXISTS `smiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` varchar(64) COLLATE utf8_bin NOT NULL,
  `img` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.smiles: ~0 rows (approximately)
DELETE FROM `smiles`;
/*!40000 ALTER TABLE `smiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `smiles` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_bin NOT NULL,
  `email` varchar(120) COLLATE utf8_bin NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.users: ~1 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Asep Kurniawan', 'asep.kurniawan@indocyber.co.id', NULL, '$2y$10$5TyBa5kKSeq14W.4WYh4TOvSsZF6jjlHrknJ/yfivfuWz2nkAakOm', 'dWdu3j9DwuoaueEmYyEPmqvVcW7clRH3aorFqOpm0VoaUkxL8dTAOsrdEsfz', '2019-09-01 08:51:19', '2019-09-01 08:51:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.votes
DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id_quote` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL,
  `ip` varchar(100) COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL,
  KEY `id_quote` (`id_answer`,`id_quote`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.votes: ~0 rows (approximately)
DELETE FROM `votes`;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.votes_answer
DROP TABLE IF EXISTS `votes_answer`;
CREATE TABLE IF NOT EXISTS `votes_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_votes` int(11) NOT NULL,
  `text` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_votes` (`id_votes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.votes_answer: ~0 rows (approximately)
DELETE FROM `votes_answer`;
/*!40000 ALTER TABLE `votes_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes_answer` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.votes_question
DROP TABLE IF EXISTS `votes_question`;
CREATE TABLE IF NOT EXISTS `votes_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1024) COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL,
  `expired` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expired` (`expired`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.votes_question: ~0 rows (approximately)
DELETE FROM `votes_question`;
/*!40000 ALTER TABLE `votes_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes_question` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
