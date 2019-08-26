-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5559
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_simplewap.banned
CREATE TABLE IF NOT EXISTS `banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `expired` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `text` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.banned: 0 rows
/*!40000 ALTER TABLE `banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `banned` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `text` longtext NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `id_blog` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.blog: 1 rows
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `time`, `title`, `url`, `text`, `view`, `id_blog`) VALUES
	(1, 1212121, 'Test', 'test-article', 'test etst tes', 4, 1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.blog_file
CREATE TABLE IF NOT EXISTS `blog_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `id_blog` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_blog` (`id_blog`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.blog_file: 0 rows
/*!40000 ALTER TABLE `blog_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_file` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.blog_list
CREATE TABLE IF NOT EXISTS `blog_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `url` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.blog_list: 0 rows
/*!40000 ALTER TABLE `blog_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_list` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mail` varchar(32) DEFAULT NULL,
  `url` varchar(32) NOT NULL,
  `text` varchar(500) NOT NULL,
  `ua` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `type` enum('blog','loads','news') NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `id_type` (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.comment: 0 rows
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.counter
CREATE TABLE IF NOT EXISTS `counter` (
  `date` varchar(10) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `ua` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `page` varchar(64) NOT NULL,
  KEY `date` (`date`),
  KEY `ip` (`ip`),
  KEY `ua` (`ua`),
  KEY `phone` (`phone`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.counter: 16 rows
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` (`date`, `ip`, `ua`, `phone`, `page`) VALUES
	('24-08-2019', '::1', '', '', ''),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36', 'Unknown', '/simplewap-final/index.php'),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36', 'Unknown', '/simplewap-final/shoutbox/index.php'),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36', 'Unknown', '/simplewap-final/news/index.php'),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36', 'Unknown', '/simplewap-final/loads/index.php'),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36', 'Unknown', '/simplewap-final/guestbook/index.php'),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/index.php'),
	('24-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/shoutbox/index.php'),
	('25-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/index.php'),
	('25-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/news/index.php'),
	('25-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/shoutbox/index.php'),
	('25-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/blog/index.php'),
	('25-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/blog/article.php'),
	('26-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/index.php'),
	('26-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/guestbook/index.php'),
	('26-08-2019', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/guestbook/add.php');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.favicon
CREATE TABLE IF NOT EXISTS `favicon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.favicon: 0 rows
/*!40000 ALTER TABLE `favicon` DISABLE KEYS */;
/*!40000 ALTER TABLE `favicon` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.guest
CREATE TABLE IF NOT EXISTS `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` varchar(32) NOT NULL,
  `mail` varchar(32) NOT NULL,
  `text` varchar(500) NOT NULL,
  `ua` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `pm` enum('0','1') NOT NULL DEFAULT '0',
  `reply` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.guest: 0 rows
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.loads
CREATE TABLE IF NOT EXISTS `loads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `text` text DEFAULT NULL,
  `url` text NOT NULL,
  `size` int(11) DEFAULT NULL,
  `img` longblob DEFAULT NULL,
  `type` enum('file','folder') NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `yes` int(11) NOT NULL DEFAULT 0,
  `no` int(11) NOT NULL DEFAULT 0,
  `recent` int(11) DEFAULT NULL,
  `id_loads` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id_loads` (`id_loads`),
  KEY `type` (`type`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.loads: 0 rows
/*!40000 ALTER TABLE `loads` DISABLE KEYS */;
/*!40000 ALTER TABLE `loads` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('link','text') NOT NULL DEFAULT 'link',
  `name` varchar(64) NOT NULL,
  `url` varchar(64) NOT NULL,
  `count` varchar(64) NOT NULL,
  `position` int(11) NOT NULL,
  `icon` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Main Menu';

-- Dumping data for table db_simplewap.menu: 10 rows
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `type`, `name`, `url`, `count`, `position`, `icon`) VALUES
	(1, 'text', 'Comments', '', '', 1, 'default.png'),
	(2, 'link', 'News', '/news/', 'news/count.php', 2, 'news.png'),
	(3, 'link', 'Shoutbox', '/shoutbox/', 'shoutbox/count.php', 3, 'shoutbox.png'),
	(4, 'link', 'Guestbook', '/guestbook/', 'guestbook/count.php', 4, 'guestbook.png'),
	(5, 'link', 'Blog', '/blog/', 'blog/count.php', 5, 'blog.png'),
	(6, 'text', 'Bookmarks', '', '', 6, 'default.png'),
	(7, 'link', 'Download', '/loads/', 'loads/count.php', 7, 'loads.png'),
	(8, 'link', 'Favicon Maker', '/favicon/', 'favicon/count.php', 8, 'favicon.png'),
	(9, 'link', 'Polling', '/votes/', 'votes/count.php', 9, 'votes.png'),
	(10, 'link', 'My Partner', '/partner/', 'partner/count.php', 10, 'partner.png');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_simplewap.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `text` varchar(1024) NOT NULL,
  `show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.news: 1 rows
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `time`, `title`, `text`, `show`) VALUES
	(1, 123123, 'tetetet', 'tetete', 1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.online
CREATE TABLE IF NOT EXISTS `online` (
  `time` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `ua` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `url` varchar(64) NOT NULL,
  `visit` int(11) NOT NULL DEFAULT 1,
  KEY `time` (`time`),
  KEY `name` (`name`),
  KEY `ip` (`ip`),
  KEY `ua` (`ua`),
  KEY `phone` (`phone`),
  KEY `visit` (`visit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.online: 1 rows
/*!40000 ALTER TABLE `online` DISABLE KEYS */;
INSERT INTO `online` (`time`, `name`, `ip`, `ua`, `phone`, `url`, `visit`) VALUES
	(1566808678, 'nama', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Unknown', '/simplewap-final/index.php', 79);
/*!40000 ALTER TABLE `online` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.partner
CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` varchar(32) NOT NULL,
  `text` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.partner: 0 rows
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_simplewap.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.referer
CREATE TABLE IF NOT EXISTS `referer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `count` (`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.referer: 0 rows
/*!40000 ALTER TABLE `referer` DISABLE KEYS */;
/*!40000 ALTER TABLE `referer` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.shout
CREATE TABLE IF NOT EXISTS `shout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` varchar(32) NOT NULL,
  `text` varchar(500) NOT NULL,
  `icon` int(11) NOT NULL DEFAULT 0,
  `ua` varchar(250) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.shout: 21 rows
/*!40000 ALTER TABLE `shout` DISABLE KEYS */;
INSERT INTO `shout` (`id`, `time`, `name`, `url`, `text`, `icon`, `ua`, `ip`) VALUES
	(23, 1566749608, 'nama', 'http://', 'pesan', 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(24, 1566750716, 'nama', 'http://', 'pesan', 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(25, 1566750727, 'nama', 'http://', 'pesan', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(26, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(27, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(28, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(29, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(30, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(31, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(32, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(33, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(34, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(35, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(36, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(37, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(38, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(39, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(40, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(41, 1566751759, 'Asep Kurniawan', 'http://', 'Test saja', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(42, 1566788696, 'Lord Kurniawan', 'http://lord.id', 'Kurnaiwan wuz here', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL),
	(43, 1566789787, 'Lord Kurniawan', 'http://lord.id', 'Kurnaiwan wuz here', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL);
/*!40000 ALTER TABLE `shout` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.smiles
CREATE TABLE IF NOT EXISTS `smiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` varchar(64) NOT NULL,
  `img` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.smiles: 47 rows
/*!40000 ALTER TABLE `smiles` DISABLE KEYS */;
INSERT INTO `smiles` (`id`, `txt`, `img`) VALUES
	(1, ':hehe', 'hehe.gif'),
	(2, ':haha', 'haha.gif'),
	(3, ':ngakak', 'ngakak.gif'),
	(4, ':D', 'D.gif'),
	(5, ':tidur', 'tidur.gif'),
	(6, ':nyengir', 'nyengir.gif'),
	(7, ':muach', 'muach.gif'),
	(8, ':oh', 'oh.gif'),
	(9, ':huh', 'huh.gif'),
	(10, ':mewek', 'mewek.gif'),
	(11, ':ting', 'ting.gif'),
	(12, ':wek', 'wek.gif'),
	(13, ':waw', 'waw.gif'),
	(14, ':payah', 'payah.gif'),
	(15, ':keprok', 'keprok.gif'),
	(16, ':ngintip', 'ngintip.gif'),
	(17, ':tau', 'tau.gif'),
	(18, ':no', 'no.gif'),
	(19, ':mantap', 'mantap.gif'),
	(20, ':bingung', 'bingung.gif'),
	(21, ':nguli', 'nguli.gif'),
	(22, ':gitar', 'gitar.gif'),
	(23, ':mancing', 'mancing.gif'),
	(24, ':ujan', 'ujan.gif'),
	(25, ':vis', 'vis.gif'),
	(26, ':tembak', 'tembak.gif'),
	(27, ':bom', 'bom.gif'),
	(28, ':wakakak', 'wakakak.gif'),
	(29, ':mikir', 'mikir.gif'),
	(30, ':malu', 'malu.gif'),
	(31, ':anu', 'anu.gif'),
	(32, ':welcome', 'welcome.gif'),
	(33, ':ngopi', 'ngopi.gif'),
	(34, ':fokus', 'fokus.gif'),
	(35, ':marah', 'marah.gif'),
	(36, ':salaman', 'salaman.gif'),
	(37, ':cape', 'cape.gif'),
	(38, ':sip', 'sip.gif'),
	(39, ':hihi', 'hihi.gif'),
	(40, ':help', 'help.gif'),
	(41, ':pentung', 'pentung.gif'),
	(42, ':pusing', 'pusing.gif'),
	(43, ':palu', 'palu.gif'),
	(44, ':bokong', 'bokong.gif'),
	(45, ':goodluck', 'goodluck.gif'),
	(46, ':udud', 'udud.gif'),
	(47, ':sun', 'sun.gif');
/*!40000 ALTER TABLE `smiles` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_simplewap.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.votes
CREATE TABLE IF NOT EXISTS `votes` (
  `id_quote` int(11) NOT NULL,
  `id_answer` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  KEY `id_quote` (`id_answer`,`id_quote`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.votes: 0 rows
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.votes_answer
CREATE TABLE IF NOT EXISTS `votes_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_votes` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_votes` (`id_votes`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.votes_answer: 0 rows
/*!40000 ALTER TABLE `votes_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes_answer` ENABLE KEYS */;

-- Dumping structure for table db_simplewap.votes_question
CREATE TABLE IF NOT EXISTS `votes_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1024) NOT NULL,
  `time` int(11) NOT NULL,
  `expired` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expired` (`expired`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table db_simplewap.votes_question: 0 rows
/*!40000 ALTER TABLE `votes_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes_question` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
