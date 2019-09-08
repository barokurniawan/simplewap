-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.27 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_simplewap.articles
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.articles: ~3 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `slug`, `category_id`, `title`, `created_at`, `updated_at`, `description`, `read_count`) VALUES
	(5, 'jajajaj', 3, 'jajajaj', '2019-09-07 05:05:10', '2019-09-08 09:12:05', 'Jahahahah <strong>12323</strong>', 0),
	(9, 'docker-container', 2, 'Docker container', '2019-09-07 10:02:13', '2019-09-08 09:12:15', '<p>test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;</p><p>test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;</p><p>test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;</p><p>test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;</p><p>test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;<br></p>', 0),
	(10, 'test-test-test-123', 1, 'test test test 123', '2019-09-08 01:29:29', '2019-09-08 09:11:47', 'asdsa a<u>sdasd asd</u>dad asdsd <strong>dfgdfg dcbvb df </strong>g<em>dfc xcvcxv s</em>dwer tyytu bnmbm zxcxc', 0);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.article_category
CREATE TABLE IF NOT EXISTS `article_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(32) COLLATE utf8_bin NOT NULL,
  `category_slug` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.article_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` (`category_id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
	(1, 'Java', 'java', '2019-09-08', '2019-09-08'),
	(2, 'PHP', 'php', '2019-09-08', '2019-09-08'),
	(3, 'Docker', 'docker', '2019-09-08', '2019-09-08');
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.article_comments
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.article_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `article_comments` DISABLE KEYS */;
INSERT INTO `article_comments` (`id`, `article_id`, `name`, `url`, `comment`, `created_at`, `updated_at`) VALUES
	(4, 10, 'Asep Kurniawan', '', 'iyess', '2019-09-08', '2019-09-08');
/*!40000 ALTER TABLE `article_comments` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.blog_file
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

-- Dumping structure for table db_simplewap.master_role
CREATE TABLE IF NOT EXISTS `master_role` (
  `role` varchar(25) COLLATE utf8_bin NOT NULL,
  `Description` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.master_role: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_role` DISABLE KEYS */;
INSERT INTO `master_role` (`role`, `Description`) VALUES
	('ADMIN', 'Administrator'),
	('MEMBER', 'Member'),
	('MOD', 'Moderator');
/*!40000 ALTER TABLE `master_role` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.menu
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Main Menu';

-- Dumping data for table db_simplewap.menu: ~5 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `type`, `name`, `url`, `position`, `icon`, `created_at`, `updated_at`) VALUES
	(11, 'text', 'Navigation', '#', 1, '0', NULL, '2019-09-07'),
	(12, 'link', 'Download', '/loads', 2, '1', NULL, NULL),
	(13, 'link', 'Shoutbox', '/shoutbox', 3, '1', NULL, NULL),
	(14, 'link', 'Blog', '/blog', 4, '1', NULL, NULL),
	(15, 'link', 'Convert Youtube Video to Audio', '/youtube-to-audio', 5, NULL, '2019-09-07', '2019-09-07');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.migrations
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
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_bin NOT NULL,
  `email` varchar(120) COLLATE utf8_bin NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `role` (`role`),
  CONSTRAINT `FK_users_master_role` FOREIGN KEY (`role`) REFERENCES `master_role` (`role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table db_simplewap.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
	(1, 'Asep Kurniawan', 'asep.kurniawan@indocyber.co.id', NULL, '$2y$10$5TyBa5kKSeq14W.4WYh4TOvSsZF6jjlHrknJ/yfivfuWz2nkAakOm', 'eJQqS4JhBoPkRs9HmCgoOYghOsqIA1oAIjPSUcn5fCInWG2TnsHrGUkR6ahJ', '2019-09-01 08:51:19', '2019-09-01 08:51:19', 'ADMIN');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.wap_setting
CREATE TABLE IF NOT EXISTS `wap_setting` (
  `confkey` varchar(25) NOT NULL,
  `confvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`confkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_simplewap.wap_setting: ~0 rows (approximately)
/*!40000 ALTER TABLE `wap_setting` DISABLE KEYS */;
INSERT INTO `wap_setting` (`confkey`, `confvalue`) VALUES
	('SITE_AUTHOR', NULL),
	('SITE_DESCRIPTION', NULL),
	('SITE_NAME', 'SimpleWap'),
	('SITE_REGISTRATION', 'CLOSE');
/*!40000 ALTER TABLE `wap_setting` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
