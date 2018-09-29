-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2018 at 03:16 PM
-- Server version: 10.2.12-MariaDB-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reonco5_wp907`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-28 15:47:10', '2018-09-28 15:47:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://film-codeline.reoncoin.io', 'yes'),
(2, 'home', 'http://film-codeline.reoncoin.io', 'yes'),
(3, 'blogname', 'CodeLine Movie', 'yes'),
(4, 'blogdescription', 'This WordPress site is the First task From Codeline', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dagogodboss@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:127:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:41:\"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:22:\"genre/([^/]+)/embed/?$\";s:38:\"index.php?genre=$matches[1]&embed=true\";s:34:\"genre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?genre=$matches[1]&paged=$matches[2]\";s:16:\"genre/([^/]+)/?$\";s:27:\"index.php?genre=$matches[1]\";s:48:\"country/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?country=$matches[1]&feed=$matches[2]\";s:43:\"country/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?country=$matches[1]&feed=$matches[2]\";s:24:\"country/([^/]+)/embed/?$\";s:40:\"index.php?country=$matches[1]&embed=true\";s:36:\"country/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?country=$matches[1]&paged=$matches[2]\";s:18:\"country/([^/]+)/?$\";s:29:\"index.php?country=$matches[1]\";s:47:\"actors/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?actors=$matches[1]&feed=$matches[2]\";s:42:\"actors/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?actors=$matches[1]&feed=$matches[2]\";s:23:\"actors/([^/]+)/embed/?$\";s:39:\"index.php?actors=$matches[1]&embed=true\";s:35:\"actors/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?actors=$matches[1]&paged=$matches[2]\";s:17:\"actors/([^/]+)/?$\";s:28:\"index.php?actors=$matches[1]\";s:53:\"created_year/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?created_year=$matches[1]&feed=$matches[2]\";s:48:\"created_year/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?created_year=$matches[1]&feed=$matches[2]\";s:29:\"created_year/([^/]+)/embed/?$\";s:45:\"index.php?created_year=$matches[1]&embed=true\";s:41:\"created_year/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?created_year=$matches[1]&paged=$matches[2]\";s:23:\"created_year/([^/]+)/?$\";s:34:\"index.php?created_year=$matches[1]\";s:32:\"film/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"film/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"film/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"film/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"film/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"film/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"film/([^/]+)/embed/?$\";s:37:\"index.php?film=$matches[1]&embed=true\";s:25:\"film/([^/]+)/trackback/?$\";s:31:\"index.php?film=$matches[1]&tb=1\";s:33:\"film/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?film=$matches[1]&paged=$matches[2]\";s:40:\"film/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?film=$matches[1]&cpage=$matches[2]\";s:29:\"film/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?film=$matches[1]&page=$matches[2]\";s:21:\"film/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"film/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"film/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"film/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"film/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"film/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:1;s:21:\"meta-box/meta-box.php\";i:2;s:47:\"ultimate-posts-widget/ultimate-posts-widget.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'unite', 'yes'),
(41, 'stylesheet', 'codeline', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:14:\"sticky-posts-2\";}s:5:\"home1\";a:0:{}s:5:\"home2\";a:0:{}s:5:\"home3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1538261230;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538263290;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"8ed56e6c25286330953b4891a51c25d9\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:17;}}}}i:1538279230;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538322474;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538324267;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538149920;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538258697;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(156, 'cptui_new_install', 'false', 'yes'),
(157, 'cptui_post_types', 'a:1:{s:4:\"film\";a:28:{s:4:\"name\";s:4:\"film\";s:5:\"label\";s:5:\"Films\";s:14:\"singular_label\";s:4:\"Film\";s:11:\"description\";s:28:\"Add a new type of post Film.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";i:4;s:8:\"comments\";}s:10:\"taxonomies\";a:4:{i:0;s:5:\"genre\";i:1;s:7:\"country\";i:2;s:6:\"actors\";i:3;s:12:\"created_year\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:5:\"Films\";s:9:\"all_items\";s:9:\"All Films\";s:7:\"add_new\";s:8:\"Add Film\";s:12:\"add_new_item\";s:12:\"Add New Film\";s:9:\"edit_item\";s:9:\"Edit Film\";s:8:\"new_item\";s:8:\"New Film\";s:9:\"view_item\";s:9:\"View Film\";s:10:\"view_items\";s:10:\"View Films\";s:12:\"search_items\";s:11:\"Search Film\";s:9:\"not_found\";s:13:\"No Film Found\";s:18:\"not_found_in_trash\";s:22:\"No Film Found in Trash\";s:6:\"parent\";s:11:\"Parent Film\";s:14:\"featured_image\";s:28:\"Featured Image for this Film\";s:18:\"set_featured_image\";s:32:\"Set featured image for this film\";s:21:\"remove_featured_image\";s:35:\"Remove featured image for this film\";s:18:\"use_featured_image\";s:35:\"Use as featured image for this Film\";s:8:\"archives\";s:12:\"Film Archive\";s:16:\"insert_into_item\";s:16:\"Insert into Film\";s:21:\"uploaded_to_this_item\";s:21:\"Uploaded to this Film\";s:17:\"filter_items_list\";s:16:\"Filter film list\";s:21:\"items_list_navigation\";s:21:\"Films List Navigation\";s:10:\"items_list\";s:10:\"Films List\";s:10:\"attributes\";s:16:\"Films Attributes\";s:17:\"parent_item_colon\";s:11:\"Parent Film\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(214, '_site_transient_timeout_theme_roots', '1538260019', 'no'),
(215, '_site_transient_theme_roots', 'a:5:{s:8:\"codeline\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:5:\"unite\";s:7:\"/themes\";}', 'no'),
(216, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1538269226', 'no'),
(217, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4510;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3022;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2591;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2449;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1884;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1681;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1674;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1460;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1404;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1404;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1399;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1334;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1284;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1246;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1116;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1075;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1043;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1040;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:926;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:894;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:835;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:817;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:809;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:736;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:705;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:696;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:685;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:668;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:661;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:659;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:648;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:645;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:618;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:617;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:616;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:607;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:601;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:599;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:573;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:555;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:547;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:543;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:533;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:527;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:522;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:517;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:515;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:511;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:497;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:492;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:488;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:482;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:480;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:460;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:459;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:454;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:448;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:444;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:438;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:422;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:422;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:421;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:416;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:409;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:390;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:378;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:371;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:367;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:366;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:364;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:362;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:354;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:349;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:348;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:343;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:339;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:339;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:330;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:309;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:302;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:301;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:301;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:293;}}', 'no'),
(123, '_site_transient_timeout_browser_4d90fb766c3b51de57fa42e860c03217', '1538754476', 'no'),
(124, '_site_transient_browser_4d90fb766c3b51de57fa42e860c03217', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"60.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(221, '_transient_plugin_slugs', 'a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:9:\"hello.php\";i:3;s:21:\"meta-box/meta-box.php\";i:4;s:47:\"ultimate-posts-widget/ultimate-posts-widget.php\";}', 'no'),
(222, 'widget_sticky-posts', 'a:2:{i:2;a:32:{s:5:\"title\";s:12:\"Recent Films\";s:5:\"class\";s:0:\"\";s:10:\"title_link\";s:0:\"\";s:6:\"number\";s:1:\"5\";s:5:\"types\";s:4:\"film\";s:4:\"cats\";s:0:\"\";s:4:\"tags\";s:0:\"\";s:5:\"atcat\";b:0;s:5:\"attag\";b:0;s:12:\"show_excerpt\";b:1;s:12:\"show_content\";b:0;s:14:\"show_thumbnail\";b:1;s:9:\"show_date\";b:1;s:11:\"date_format\";s:12:\"F j, Y g:i a\";s:10:\"show_title\";b:1;s:11:\"show_author\";b:1;s:13:\"show_comments\";b:0;s:10:\"thumb_size\";s:9:\"thumbnail\";s:13:\"show_readmore\";b:1;s:14:\"excerpt_length\";s:2:\"10\";s:16:\"excerpt_readmore\";s:13:\"Read more →\";s:6:\"sticky\";s:4:\"show\";s:5:\"order\";s:4:\"DESC\";s:7:\"orderby\";s:4:\"date\";s:8:\"meta_key\";s:0:\"\";s:9:\"show_cats\";b:0;s:9:\"show_tags\";b:0;s:13:\"custom_fields\";s:0:\"\";s:8:\"template\";s:8:\"standard\";s:15:\"template_custom\";s:0:\"\";s:12:\"before_posts\";s:0:\"\";s:11:\"after_posts\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'codeline', 'yes'),
(141, 'theme_mods_unite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:21;s:12:\"footer-links\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538256325;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:5:\"home1\";a:0:{}s:5:\"home2\";a:0:{}s:5:\"home3\";a:0:{}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'widget_unite_tabbed_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_unite-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'cptui_taxonomies', 'a:4:{s:5:\"genre\";a:21:{s:4:\"name\";s:5:\"genre\";s:5:\"label\";s:6:\"Genres\";s:14:\"singular_label\";s:5:\"Genre\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:4:\"film\";}}s:7:\"country\";a:21:{s:4:\"name\";s:7:\"country\";s:5:\"label\";s:9:\"Countries\";s:14:\"singular_label\";s:7:\"Country\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:4:\"film\";}}s:6:\"actors\";a:21:{s:4:\"name\";s:6:\"actors\";s:5:\"label\";s:6:\"Actors\";s:14:\"singular_label\";s:5:\"Actor\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:4:\"film\";}}s:12:\"created_year\";a:21:{s:4:\"name\";s:12:\"created_year\";s:5:\"label\";s:13:\"Created Years\";s:14:\"singular_label\";s:12:\"Created Year\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:4:\"film\";}}}', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(219, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538258706;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.7\";s:21:\"meta-box/meta-box.php\";s:6:\"4.15.5\";s:47:\"ultimate-posts-widget/ultimate-posts-widget.php\";s:5:\"2.0.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"meta-box/meta-box.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/meta-box\";s:4:\"slug\";s:8:\"meta-box\";s:6:\"plugin\";s:21:\"meta-box/meta-box.php\";s:11:\"new_version\";s:6:\"4.15.5\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/meta-box/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/meta-box.4.15.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/meta-box/assets/icon-128x128.png?rev=1100915\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/meta-box/assets/banner-772x250.png?rev=1929588\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"ultimate-posts-widget/ultimate-posts-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/ultimate-posts-widget\";s:4:\"slug\";s:21:\"ultimate-posts-widget\";s:6:\"plugin\";s:47:\"ultimate-posts-widget/ultimate-posts-widget.php\";s:11:\"new_version\";s:5:\"2.0.7\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/ultimate-posts-widget/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/ultimate-posts-widget.2.0.7.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:72:\"https://s.w.org/plugins/geopattern-icon/ultimate-posts-widget_5b9f2b.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/ultimate-posts-widget/assets/banner-772x250.png?rev=960451\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(220, '_transient_timeout_plugin_slugs', '1538345108', 'no'),
(182, 'category_children', 'a:0:{}', 'yes'),
(199, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:21;}}', 'yes'),
(207, 'theme_switch_menu_locations', 'a:2:{s:7:\"primary\";i:21;s:12:\"footer-links\";i:0;}', 'yes'),
(208, 'theme_switched_via_customizer', '', 'yes'),
(209, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(211, '_transient_is_multi_author', '0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(212, '_transient_all_the_cool_cats', '0', 'yes'),
(210, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538258698;s:7:\"checked\";a:5:{s:8:\"codeline\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";s:5:\"unite\";s:5:\"2.0.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(206, 'theme_mods_codeline', 'a:3:{s:18:\"custom_css_post_id\";i:19;s:16:\"header_textcolor\";s:6:\"000000\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:21;s:12:\"footer-links\";i:0;}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(6, 7, '_edit_lock', '1538257885:1'),
(5, 7, '_edit_last', '1'),
(7, 7, '', ''),
(8, 1, '_wp_trash_meta_status', 'publish'),
(9, 1, '_wp_trash_meta_time', '1538164152'),
(10, 1, '_wp_desired_post_slug', 'hello-world'),
(11, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1538257826:1'),
(14, 7, 'ticket_price', '$3.50'),
(15, 7, 'release_date', '10 November 2016'),
(16, 7, 'post_views_count', '2'),
(17, 9, 'post_views_count', '3'),
(18, 9, 'release_date', '2018'),
(19, 9, 'ticket_price', '$5'),
(20, 10, '_edit_last', '1'),
(21, 10, '_edit_lock', '1538259141:1'),
(22, 10, 'release_date', '7 August 2018'),
(23, 10, 'ticket_price', '$2.20'),
(24, 10, 'post_views_count', '20'),
(25, 11, '_edit_lock', '1538252748:1'),
(26, 12, '_menu_item_type', 'post_type'),
(27, 12, '_menu_item_menu_item_parent', '0'),
(28, 12, '_menu_item_object_id', '10'),
(29, 12, '_menu_item_object', 'film'),
(30, 12, '_menu_item_target', ''),
(31, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 12, '_menu_item_xfn', ''),
(33, 12, '_menu_item_url', ''),
(34, 13, '_menu_item_type', 'post_type'),
(35, 13, '_menu_item_menu_item_parent', '0'),
(36, 13, '_menu_item_object_id', '9'),
(37, 13, '_menu_item_object', 'film'),
(38, 13, '_menu_item_target', ''),
(39, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 13, '_menu_item_xfn', ''),
(41, 13, '_menu_item_url', ''),
(42, 14, '_menu_item_type', 'post_type'),
(43, 14, '_menu_item_menu_item_parent', '0'),
(44, 14, '_menu_item_object_id', '7'),
(45, 14, '_menu_item_object', 'film'),
(46, 14, '_menu_item_target', ''),
(47, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 14, '_menu_item_xfn', ''),
(49, 14, '_menu_item_url', ''),
(50, 15, '_menu_item_type', 'taxonomy'),
(51, 15, '_menu_item_menu_item_parent', '0'),
(52, 15, '_menu_item_object_id', '9'),
(53, 15, '_menu_item_object', 'genre'),
(54, 15, '_menu_item_target', ''),
(55, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 15, '_menu_item_xfn', ''),
(57, 15, '_menu_item_url', ''),
(58, 16, '_menu_item_type', 'taxonomy'),
(59, 16, '_menu_item_menu_item_parent', '0'),
(60, 16, '_menu_item_object_id', '2'),
(61, 16, '_menu_item_object', 'genre'),
(62, 16, '_menu_item_target', ''),
(63, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 16, '_menu_item_xfn', ''),
(65, 16, '_menu_item_url', ''),
(66, 11, '_wp_trash_meta_status', 'publish'),
(67, 11, '_wp_trash_meta_time', '1538252769'),
(71, 18, '_wp_trash_meta_status', 'publish'),
(70, 18, '_edit_lock', '1538256293:1'),
(72, 18, '_wp_trash_meta_time', '1538256325');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-28 15:47:10', '2018-09-28 15:47:10', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-09-28 19:49:12', '2018-09-28 19:49:12', '', 0, 'http://film-codeline.reoncoin.io/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-28 15:47:10', '2018-09-28 15:47:10', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://film-codeline.reoncoin.io/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-28 15:47:10', '2018-09-28 15:47:10', '', 0, 'http://film-codeline.reoncoin.io/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-28 15:47:10', '2018-09-28 15:47:10', '<h2>Who we are</h2><p>Our website address is: http://film-codeline.reoncoin.io.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-28 15:47:10', '2018-09-28 15:47:10', '', 0, 'http://film-codeline.reoncoin.io/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-28 15:47:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-28 15:47:57', '0000-00-00 00:00:00', '', 0, 'http://film-codeline.reoncoin.io/?p=4', 0, 'post', '', 0),
(6, 1, '2018-09-28 16:17:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-28 16:17:47', '0000-00-00 00:00:00', '', 0, 'http://film-codeline.reoncoin.io/?post_type=film&p=6', 0, 'film', '', 0),
(7, 1, '2018-09-28 17:00:32', '2018-09-28 17:00:32', '[caption id=\"\" align=\"aligncenter\" width=\"506\"]<img class=\"\" src=\"http://codecenema.herokuapp.com/uploads/5ba39ff7e93be.jpg\" alt=\"Fantastic Beasts: The Crimes of Grindelwald\" width=\"506\" height=\"759\" /> Fantastic Beasts: The Crimes of Grindelwald[/caption]\r\n\r\nMagizoologist Newt Scamander joins forces with young Albus Dumbledore to prevent the devious Gellert Grindelwald from raising pure-blood wizards to rule over all non-magical beings.', 'Fantastic Beasts: The Crimes of Grindelwald', '', 'publish', 'open', 'closed', '', 'fantastic-beasts', '', '', '2018-09-28 20:40:10', '2018-09-28 20:40:10', '', 0, 'http://film-codeline.reoncoin.io/?post_type=film&#038;p=7', 0, 'film', '', 0),
(8, 1, '2018-09-28 19:49:12', '2018-09-28 19:49:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-28 19:49:12', '2018-09-28 19:49:12', '', 1, 'http://film-codeline.reoncoin.io/2018/09/28/1-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-28 20:30:18', '2018-09-28 20:30:18', '[caption id=\"\" align=\"aligncenter\" width=\"484\"]<img class=\"\" src=\"http://codecenema.herokuapp.com/uploads/5ba39ff83d89e.jpg\" alt=\"the_nun\" width=\"484\" height=\"577\" /> The Nun[/caption]\r\n\r\n&nbsp;\r\n\r\nWhen a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate. Together, they uncover the order\'s unholy secret. Risking not only their lives but their faith and their very souls, they confront a malevolent force in the form of a demonic nun', 'The Nun', '', 'publish', 'closed', 'closed', '', 'the_nun', '', '', '2018-09-28 20:38:26', '2018-09-28 20:38:26', '', 0, 'http://film-codeline.reoncoin.io/?post_type=film&#038;p=9', 0, 'film', '', 0),
(10, 1, '2018-09-28 20:46:11', '2018-09-28 20:46:11', '[caption id=\"\" align=\"aligncenter\" width=\"960\"]<img class=\"size-medium\" src=\"http://codecenema.herokuapp.com/uploads/5ba39ff8618cc.jpg\" alt=\"Slender Man\" width=\"960\" height=\"1440\" /> Slender Man[/caption]\r\n\r\n&nbsp;\r\n\r\nSmall-town best friends Hallie, Chloe, Wren and Katie go online to try and conjure up the Slender Man -- a tall, thin, horrifying figure whose face has no discernible features. Two weeks later, Katie mysteriously disappears during a class trip to a historic graveyard. Determined to find her, the girls soon suspect that the legend of the Slender Man may be all too real.', 'Slender Man', '', 'publish', 'open', 'closed', '', 'slender_man', '', '', '2018-09-28 20:46:11', '2018-09-28 20:46:11', '', 0, 'http://film-codeline.reoncoin.io/?post_type=film&#038;p=10', 0, 'film', '', 0),
(11, 1, '2018-09-29 20:26:09', '2018-09-29 20:26:09', '{\n    \"unite::nav_menu_locations[primary]\": {\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:25:48\"\n    },\n    \"unite::nav_menu_locations[footer-links]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:23:48\"\n    },\n    \"nav_menu_item[-803183316084922400]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"film\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Slender Man\",\n            \"url\": \"http://film-codeline.reoncoin.io/film/slender_man/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Slender Man\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Film\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:23:48\"\n    },\n    \"nav_menu_item[-6322002589868533000]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"film\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"The Nun\",\n            \"url\": \"http://film-codeline.reoncoin.io/film/the_nun/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"The Nun\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Film\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:23:48\"\n    },\n    \"nav_menu_item[-6944269612383394000]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"film\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Fantastic Beasts: The Crimes of Grindelwald\",\n            \"url\": \"http://film-codeline.reoncoin.io/film/fantastic-beasts/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Fantastic Beasts: The Crimes of Grindelwald\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Film\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:23:48\"\n    },\n    \"nav_menu[21]\": {\n        \"value\": {\n            \"name\": \"Movies\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:24:48\"\n    },\n    \"nav_menu_item[-1886722953259049000]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"genre\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"taxonomy\",\n            \"title\": \"Horror\",\n            \"url\": \"http://film-codeline.reoncoin.io/genre/horror/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Horror\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Genre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:24:48\"\n    },\n    \"nav_menu_item[-8003411630432872000]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"genre\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"Drama\",\n            \"url\": \"http://film-codeline.reoncoin.io/genre/drama/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Drama\",\n            \"nav_menu_term_id\": 21,\n            \"_invalid\": false,\n            \"type_label\": \"Genre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 20:24:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7bf8201-f4be-4e34-be13-9d602bdf2961', '', '', '2018-09-29 20:26:09', '2018-09-29 20:26:09', '', 0, 'http://film-codeline.reoncoin.io/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2018-09-29 20:26:09', '2018-09-29 20:26:09', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2018-09-29 20:26:09', '2018-09-29 20:26:09', '', 0, 'http://film-codeline.reoncoin.io/2018/09/29/12/', 1, 'nav_menu_item', '', 0),
(13, 1, '2018-09-29 20:26:09', '2018-09-29 20:26:09', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-09-29 20:26:09', '2018-09-29 20:26:09', '', 0, 'http://film-codeline.reoncoin.io/2018/09/29/13/', 2, 'nav_menu_item', '', 0),
(14, 1, '2018-09-29 20:26:09', '2018-09-29 20:26:09', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-09-29 20:26:09', '2018-09-29 20:26:09', '', 0, 'http://film-codeline.reoncoin.io/2018/09/29/14/', 3, 'nav_menu_item', '', 0),
(15, 1, '2018-09-29 20:26:09', '2018-09-29 20:26:09', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-09-29 20:26:09', '2018-09-29 20:26:09', '', 0, 'http://film-codeline.reoncoin.io/2018/09/29/15/', 5, 'nav_menu_item', '', 0),
(16, 1, '2018-09-29 20:26:09', '2018-09-29 20:26:09', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-09-29 20:26:09', '2018-09-29 20:26:09', '', 0, 'http://film-codeline.reoncoin.io/2018/09/29/16/', 4, 'nav_menu_item', '', 0),
(18, 1, '2018-09-29 21:25:25', '2018-09-29 21:25:25', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"home1\": [],\n            \"home2\": [],\n            \"home3\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 21:23:52\"\n    },\n    \"codeline::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 21:23:52\"\n    },\n    \"codeline::nav_menu_locations[primary]\": {\n        \"value\": 21,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 21:23:52\"\n    },\n    \"codeline::nav_menu_locations[footer-links]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 21:23:52\"\n    },\n    \"custom_css[codeline]\": {\n        \"value\": \".navbar-default .navbar-nav > li > a {\\n    color: #fff;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-29 21:25:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '470d9b50-03a9-4b05-be4d-2f51fd3ce5da', '', '', '2018-09-29 21:25:25', '2018-09-29 21:25:25', '', 0, 'http://film-codeline.reoncoin.io/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2018-09-29 21:25:25', '2018-09-29 21:25:25', '.navbar-default .navbar-nav > li > a {\n    color: #fff;\n}', 'codeline', '', 'publish', 'closed', 'closed', '', 'codeline', '', '', '2018-09-29 21:25:25', '2018-09-29 21:25:25', '', 0, 'http://film-codeline.reoncoin.io/2018/09/29/codeline/', 0, 'custom_css', '', 0),
(20, 1, '2018-09-29 21:25:25', '2018-09-29 21:25:25', '.navbar-default .navbar-nav > li > a {\n    color: #fff;\n}', 'codeline', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-09-29 21:25:25', '2018-09-29 21:25:25', '', 19, 'http://film-codeline.reoncoin.io/2018/09/29/19-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Drama', 'drama', 0),
(3, 'United Kingdom', 'united-kingdom', 0),
(4, 'United States', 'united-states', 0),
(5, 'Eddie Redmayne', 'eddie-redmayne', 0),
(6, 'Katherine Waterston', 'katherine-waterston', 0),
(7, 'Colin Farrell', 'colin-farrell', 0),
(8, '10 November 2016', '10-november-2016', 0),
(9, 'Horror', 'horror', 0),
(10, 'USA', 'usa', 0),
(11, 'Taissa Farmiga', 'taissa-farmiga', 0),
(12, 'Bonnie Aarons', 'bonnie-aarons', 0),
(13, 'Demián Bichir', 'demian-bichir', 0),
(14, '2018', '2018', 0),
(15, 'Joey King', 'joey-king', 0),
(16, 'Javier Botet', 'javier-botet', 0),
(17, 'Julia Goldani Telles', 'julia-goldani-telles', 0),
(18, 'Jaz Sinclair', 'jaz-sinclair', 0),
(19, 'Annalise Basso', 'annalise-basso', 0),
(20, '7 August 2018', '7-august-2018', 0),
(21, 'Movies', 'movies', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(7, 3, 0),
(7, 4, 0),
(7, 5, 0),
(7, 6, 0),
(7, 7, 0),
(7, 8, 0),
(9, 9, 0),
(9, 10, 0),
(9, 11, 0),
(9, 12, 0),
(9, 13, 0),
(9, 14, 0),
(10, 9, 0),
(10, 10, 0),
(10, 15, 0),
(10, 16, 0),
(10, 17, 0),
(10, 18, 0),
(10, 19, 0),
(10, 20, 0),
(12, 21, 0),
(13, 21, 0),
(14, 21, 0),
(15, 21, 0),
(16, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'genre', '', 0, 1),
(3, 3, 'country', '', 0, 1),
(4, 4, 'country', '', 0, 1),
(5, 5, 'actors', '', 0, 1),
(6, 6, 'actors', '', 0, 1),
(7, 7, 'actors', '', 0, 1),
(8, 8, 'created_year', '', 0, 1),
(9, 9, 'genre', '', 0, 2),
(10, 10, 'country', '', 0, 2),
(11, 11, 'actors', '', 0, 1),
(12, 12, 'actors', '', 0, 1),
(13, 13, 'actors', '', 0, 1),
(14, 14, 'created_year', '', 0, 1),
(15, 15, 'actors', '', 0, 1),
(16, 16, 'actors', '', 0, 1),
(17, 17, 'actors', '', 0, 1),
(18, 18, 'actors', '', 0, 1),
(19, 19, 'actors', '', 0, 1),
(20, 20, 'created_year', '', 0, 1),
(21, 21, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'codeline'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b066213d6ff565ec5e8903990c9125a5829f82969f51702d0c4761430778b775\";a:4:{s:10:\"expiration\";i:1538322473;s:2:\"ip\";s:13:\"45.56.194.125\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1538149673;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"45.56.194.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1538151383'),
(21, 1, 'closedpostboxes_film', 'a:1:{i:0;s:16:\"commentstatusdiv\";}'),
(22, 1, 'metaboxhidden_film', 'a:0:{}'),
(23, 1, 'meta-box-order_film', 'a:7:{s:8:\"form_top\";s:0:\"\";s:16:\"before_permalink\";s:0:\"\";s:11:\"after_title\";s:0:\"\";s:12:\"after_editor\";s:0:\"\";s:4:\"side\";s:88:\"submitdiv,tagsdiv-genre,tagsdiv-country,tagsdiv-actors,tagsdiv-created_year,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_film', '2'),
(25, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:18:\"add-post-type-film\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:9:\"add-genre\";i:4;s:11:\"add-country\";i:5;s:10:\"add-actors\";i:6;s:16:\"add-created_year\";}'),
(27, 1, 'nav_menu_recently_edited', '21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'codeline', '$P$BTqcBPtlN7G3Z.AU3mVCsChcR75pks.', 'codeline', 'dagogodboss@gmail.com', '', '2018-09-28 15:47:10', '', 0, 'codeline');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
