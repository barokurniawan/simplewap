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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.articles: ~0 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `slug`, `category_id`, `title`, `created_at`, `updated_at`, `description`, `read_count`) VALUES
	(2, 'test-test', 1, 'test test', '2019-09-07 04:39:41', '2019-09-07 04:39:41', 'test test test', 0),
	(3, 'resr-resr', 2, 'resr resr', '2019-09-07 04:40:54', '2019-09-07 04:40:54', 'sadasdsad a dsadsadd adsd', 0),
	(4, 'test', 3, 'test', '2019-09-07 05:04:00', '2019-09-07 05:04:00', 'tset', 0),
	(5, 'jajajaj', 4, 'jajajaj', '2019-09-07 05:05:10', '2019-09-07 05:05:10', 'Jahahahah', 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.article_category: ~4 rows (approximately)
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` (`category_id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
	(1, 'Programming', 'programming', '2019-09-07', '2019-09-07'),
	(2, 'General', 'general', '2019-09-07', '2019-09-07'),
	(3, 'PHP', 'php', '2019-09-07', '2019-09-07'),
	(4, 'Java', 'java', '2019-09-07', '2019-09-07'),
	(5, 'Golang', 'golang', '2019-09-07', '2019-09-07');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.article_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `article_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_comments` ENABLE KEYS */;

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
/*!40000 ALTER TABLE `blog_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_file` ENABLE KEYS */;

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
/*!40000 ALTER TABLE `loads` DISABLE KEYS */;
/*!40000 ALTER TABLE `loads` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('link','text') COLLATE utf8_bin NOT NULL DEFAULT 'link',
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `url` varchar(64) COLLATE utf8_bin NOT NULL,
  `position` int(11) NOT NULL,
  `icon` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Main Menu';

-- Dumping data for table db_simplewap.menu: ~4 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `type`, `name`, `url`, `position`, `icon`, `created_at`, `updated_at`) VALUES
	(11, 'text', 'Navigation', '#', 1, '0', NULL, '2019-09-07'),
	(12, 'link', 'Download', '/loads', 2, '1', NULL, NULL),
	(13, 'link', 'Shoutbox', '/shoutbox', 3, '1', NULL, NULL),
	(14, 'link', 'Blog', '/blog', 4, '1', NULL, NULL);
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
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(190) COLLATE utf8_bin NOT NULL,
  `token` varchar(190) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.shout: ~0 rows (approximately)
/*!40000 ALTER TABLE `shout` DISABLE KEYS */;
/*!40000 ALTER TABLE `shout` ENABLE KEYS */;

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

-- Dumping data for table db_simplewap.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Asep Kurniawan', 'asep.kurniawan@indocyber.co.id', NULL, '$2y$10$5TyBa5kKSeq14W.4WYh4TOvSsZF6jjlHrknJ/yfivfuWz2nkAakOm', 'JhwV5qNMtCGFd5iJds5X3ANtrb8jJ4XqBIWaOGnoT50PkGSUgOc2bArh5gy2', '2019-09-01 08:51:19', '2019-09-01 08:51:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
