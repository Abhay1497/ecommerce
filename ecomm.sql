-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2019 at 08:14 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-12 05:48:59', '2019-01-12 05:48:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 84, 'WooCommerce', '', '', '', '2019-01-12 12:29:05', '2019-01-12 12:29:05', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/shop', 'yes'),
(2, 'home', 'http://localhost/shop', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abhayofcl97@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:159:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=17&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:31:\"popup-builder/popup-builder.php\";i:1;s:23:\"post-grid/post-grid.php\";i:2;s:41:\"sassy-social-share/sassy-social-share.php\";i:3;s:80:\"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:33:\"yith-woocommerce-compare/init.php\";i:6;s:36:\"yith-woocommerce-quick-view/init.php\";i:7;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:60:\"C:\\xampp\\htdocs\\Shop/wp-content/themes/storevilla/single.php\";i:1;s:61:\"C:\\xampp\\htdocs\\Shop/wp-content/themes/storevilla/sidebar.php\";i:2;s:67:\"C:\\xampp\\htdocs\\Shop/wp-content/themes/storevilla/template-home.php\";i:4;s:58:\"C:\\xampp\\htdocs\\Shop/wp-content/themes/storevilla/page.php\";i:5;s:59:\"C:\\xampp\\htdocs\\Shop/wp-content/themes/storevilla/index.php\";}', 'no'),
(40, 'template', 'storevilla', 'yes'),
(41, 'stylesheet', 'storevilla', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:8:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:11:\"QUICK LINKS\";s:4:\"text\";s:158:\"<ul>\r\n 	<li>My Account</li>\r\n 	<li>Order History</li>\r\n 	<li>My Wishlist</li>\r\n 	<li>Order Tracking</li>\r\n 	<li>Gift Vouchers</li>\r\n 	<li>Checkout</li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"STYLE ADVISOR\";s:4:\"text\";s:97:\"<ul>\r\n 	<li>Additional Information</li>\r\n 	<li>Addresses</li>\r\n 	<li>Shipping details</li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:11:\"INFORMATION\";s:4:\"text\";s:149:\"<ul>\r\n 	<li>About Us</li>\r\n 	<li>Delivery Information</li>\r\n 	<li>Terms &amp; Condition</li>\r\n 	<li>Privacy Policy</li>\r\n 	<li>Contact Us</li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:170:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '17', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:129:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:9:\"read_post\";b:1;s:24:\"read_private_sgpb_popups\";b:1;s:15:\"edit_sgpb_popup\";b:1;s:16:\"edit_sgpb_popups\";b:1;s:23:\"edit_others_sgpb_popups\";b:1;s:26:\"edit_published_sgpb_popups\";b:1;s:19:\"publish_sgpb_popups\";b:1;s:18:\"delete_sgpb_popups\";b:1;s:25:\"delete_others_sgpb_popups\";b:1;s:26:\"delete_private_sgpb_popups\";b:1;s:25:\"delete_private_sgpb_popup\";b:1;s:28:\"delete_published_sgpb_popups\";b:1;s:19:\"sgpb_manage_options\";b:1;s:18:\"manage_popup_terms\";b:1;s:29:\"manage_popup_categories_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:20:\"storevillasidebarone\";a:2:{i:0;s:25:\"woocommerce_widget_cart-2\";i:1;s:38:\"woocommerce_recently_viewed_products-2\";}s:20:\"storevillasidebartwo\";a:1:{i:0;s:26:\"woocommerce_price_filter-2\";}s:19:\"storevillaheaderone\";a:0:{}s:20:\"storevillamainwidget\";a:7:{i:0;s:28:\"storevilla_cat_widget_area-2\";i:1;s:32:\"storevilla_product_widget_area-2\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:41:\"storevilla_cat_with_product_widget_area-2\";i:5;s:36:\"storevilla_testimonial_widget_area-2\";i:6;s:39:\"storevilla_column_product_widget_area-2\";}s:18:\"storevillafooter-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:20:\"heateor_sss_follow-2\";}s:18:\"storevillafooter-2\";a:1:{i:0;s:6:\"text-4\";}s:18:\"storevillafooter-3\";a:1:{i:0;s:6:\"text-5\";}s:18:\"storevillafooter-4\";a:1:{i:0;s:6:\"text-6\";}s:18:\"storevillafooter-5\";a:1:{i:0;s:6:\"text-7\";}s:19:\"storevillaquickinfo\";a:1:{i:0;s:30:\"storevilla_contact_info_area-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:\"attachment_id\";i:75;s:3:\"url\";s:81:\"http://localhost/shop/wp-content/uploads/2019/01/want53294-1g1dR21501518886-1.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:200;s:6:\"height\";i:59;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:22:\"http://localhost/shop/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:14:{i:1547733259;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1547733459;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1547736541;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1547747341;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1547769600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547770467;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1547790559;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547792066;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547792077;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547792331;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547802867;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547812290;a:1:{s:20:\"sgpbGetBannerContent\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1549324800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547272298;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_timeout_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', '1547876961', 'no'),
(123, '_site_transient_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1547725751;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(126, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"abhayofcl97@gmail.com\";s:7:\"version\";s:5:\"5.0.3\";s:9:\"timestamp\";i:1547272165;}', 'no'),
(142, 'current_theme', 'StoreVilla', 'yes'),
(143, 'theme_mods_storevilla', 'a:28:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:17:\"storevillaprimary\";i:38;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:6;s:20:\"storevilla_tpl_color\";s:7:\"#65bcbc\";s:27:\"storevilla_top_left_options\";s:9:\"quickinfo\";s:22:\"storevilla_email_title\";s:19:\"abhayofcl@gmail.com\";s:23:\"storevilla_phone_number\";s:17:\"+91-999-99-99-999\";s:22:\"storevilla_map_address\";s:35:\"Housing Board Colony Sanquelim Goa \";s:21:\"storevilla_email_icon\";s:11:\"fa-envelope\";s:21:\"storevilla_phone_icon\";s:15:\"fa-phone-square\";s:23:\"storevilla_address_icon\";s:13:\"fa-map-marker\";s:25:\"storevilla_slider_team_id\";i:39;s:31:\"storevilla_promo_area_one_image\";s:90:\"http://localhost/shop/wp-content/uploads/2019/01/responsive-ecommerce-websites-14-Copy.jpg\";s:30:\"storevilla_promo_area_one_link\";s:130:\"http://localhost/shop/product-category/women/?customize_changeset_uuid=96c092ce-077c-420a-9184-875e8dba2e24&customize_autosaved=on\";s:31:\"storevilla_promo_area_two_image\";s:85:\"http://localhost/shop/wp-content/uploads/2019/01/responsive-ecommerce-websites-14.jpg\";s:30:\"storevilla_promo_area_two_link\";s:128:\"http://localhost/shop/product-category/men/?customize_changeset_uuid=96c092ce-077c-420a-9184-875e8dba2e24&customize_autosaved=on\";s:12:\"header_image\";s:13:\"remove-header\";s:17:\"background_preset\";s:4:\"fill\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"background_image\";s:0:\"\";s:21:\"paymentlogo_image_one\";s:138:\"http://localhost/shop/wp-content/uploads/2019/01/38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration.jpg\";s:27:\"storevilla_footer_copyright\";s:41:\" All Rights Reserved | 2019 © Shoppr.com\";s:21:\"paymentlogo_image_two\";s:94:\"http://localhost/shop/wp-content/uploads/2019/01/bank-check-icon-banking-check-checkbook-2.jpg\";}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'widget_storevilla_contact_info_area', 'a:2:{i:2;a:4:{s:30:\"storevilla_quick_contact_title\";s:10:\"SHOPPR.COM\";s:24:\"storevilla_quick_address\";s:35:\"Housing Board Colony\r\nSanquelim-Goa\";s:22:\"storevilla_quick_phone\";s:17:\"+91-999-99-99-999\";s:22:\"storevilla_quick_email\";s:21:\"abhayofcl97@gmail.com\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_storevilla_aboutus_info_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_storevilla_blog_widget_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_storevilla_testimonial_widget_area', 'a:2:{i:2;a:4:{s:32:\"storevilla_testimonial_top_title\";s:19:\"WHAT OUR CLIENT SAY\";s:33:\"storevilla_testimonial_main_title\";s:11:\"TESTIMONIAL\";s:25:\"testimonial_category_list\";a:1:{i:40;s:1:\"1\";}s:31:\"storevilla_testimonial_bg_image\";s:64:\"http://localhost/shop/wp-content/uploads/2019/01/testimonial.jpg\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'recently_activated', 'a:4:{s:29:\"metro-share-widget/plugin.php\";i:1547295514;s:53:\"accesspress-social-share/accesspress-social-share.php\";i:1547293641;s:49:\"woo-variation-swatches/woo-variation-swatches.php\";i:1547280264;s:21:\"wishlist/wishlist.php\";i:1547273585;}', 'yes'),
(165, 'woocommerce_store_address', 'housing board colony', 'yes'),
(166, 'woocommerce_store_address_2', '', 'yes'),
(167, 'woocommerce_store_city', 'sanquelim', 'yes'),
(168, 'woocommerce_default_country', 'IN:GA', 'yes'),
(169, 'woocommerce_store_postcode', '403505', 'yes'),
(170, 'woocommerce_allowed_countries', 'all', 'yes'),
(171, 'woocommerce_all_except_countries', '', 'yes'),
(172, 'woocommerce_specific_allowed_countries', '', 'yes'),
(173, 'woocommerce_ship_to_countries', '', 'yes'),
(174, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(175, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(176, 'woocommerce_calc_taxes', 'no', 'yes'),
(177, 'woocommerce_enable_coupons', 'yes', 'yes'),
(178, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(179, 'woocommerce_currency', 'INR', 'yes'),
(180, 'woocommerce_currency_pos', 'left', 'yes'),
(181, 'woocommerce_price_thousand_sep', ',', 'yes'),
(182, 'woocommerce_price_decimal_sep', '.', 'yes'),
(183, 'woocommerce_price_num_decimals', '2', 'yes'),
(184, 'woocommerce_shop_page_id', '13', 'yes'),
(185, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(186, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(187, 'woocommerce_placeholder_image', '', 'yes'),
(188, 'woocommerce_weight_unit', 'kg', 'yes'),
(189, 'woocommerce_dimension_unit', 'cm', 'yes'),
(190, 'woocommerce_enable_reviews', 'yes', 'yes'),
(191, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(192, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(193, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(194, 'woocommerce_review_rating_required', 'yes', 'no'),
(195, 'woocommerce_manage_stock', 'yes', 'yes'),
(196, 'woocommerce_hold_stock_minutes', '60', 'no'),
(197, 'woocommerce_notify_low_stock', 'yes', 'no'),
(198, 'woocommerce_notify_no_stock', 'yes', 'no'),
(199, 'woocommerce_stock_email_recipient', 'abhayofcl97@gmail.com', 'no'),
(200, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(201, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(202, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(203, 'woocommerce_stock_format', '', 'yes'),
(204, 'woocommerce_file_download_method', 'force', 'no'),
(205, 'woocommerce_downloads_require_login', 'no', 'no'),
(206, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(207, 'woocommerce_prices_include_tax', 'no', 'yes'),
(208, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(209, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(210, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(211, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(212, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(213, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(214, 'woocommerce_price_display_suffix', '', 'yes'),
(215, 'woocommerce_tax_total_display', 'itemized', 'no'),
(216, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(217, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(218, 'woocommerce_ship_to_destination', 'billing', 'no'),
(219, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(220, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(222, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(223, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(224, 'woocommerce_registration_generate_username', 'yes', 'no'),
(225, 'woocommerce_registration_generate_password', 'no', 'no'),
(226, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(227, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(228, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(229, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(230, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(231, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(232, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(233, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(234, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(235, 'woocommerce_email_from_name', '', 'no'),
(236, 'woocommerce_email_from_address', 'abhayofcl97@gmail.com', 'no'),
(237, 'woocommerce_email_header_image', '', 'no'),
(238, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(239, 'woocommerce_email_base_color', '#96588a', 'no'),
(240, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(241, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(242, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(243, 'woocommerce_cart_page_id', '14', 'yes'),
(244, 'woocommerce_checkout_page_id', '15', 'yes'),
(245, 'woocommerce_myaccount_page_id', '16', 'yes'),
(246, 'woocommerce_terms_page_id', '', 'no'),
(247, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(249, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(250, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(251, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(252, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(253, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(254, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(255, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(256, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(257, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(258, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(259, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(260, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(261, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(262, 'woocommerce_api_enabled', 'no', 'yes'),
(263, 'woocommerce_single_image_width', '600', 'yes'),
(264, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(265, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(266, 'woocommerce_demo_store', 'no', 'no'),
(267, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(270, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(271, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:\"title\";s:4:\"Cart\";s:13:\"hide_if_empty\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Filter by price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, '_transient_timeout_external_ip_address_::1', '1547877911', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(276, '_transient_external_ip_address_::1', '117.204.140.229', 'no'),
(277, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:2;a:2:{s:5:\"title\";s:24:\"Recently Viewed Products\";s:6:\"number\";i:10;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_storevilla_latest_product_cat_widget_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_storevilla_cat_with_product_widget_area', 'a:2:{i:2;a:4:{s:33:\"storevilla_cat_main_product_title\";s:12:\"Now Trending\";s:29:\"storevilla_cat_image_aligment\";s:10:\"left_align\";s:23:\"storevilla_woo_category\";s:2:\"20\";s:29:\"storevilla_cat_product_number\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_storevilla_cat_widget_area', 'a:2:{i:2;a:4:{s:27:\"storevilla_top_cat_bg_image\";s:59:\"http://localhost/shop/wp-content/uploads/2019/01/4IlThL.jpg\";s:24:\"storevilla_top_cat_title\";s:24:\"ANYTHING AND EVERYTHING \";s:25:\"storevilla_main_cat_title\";s:16:\"PRODUCT CATEGORY\";s:26:\"storevilla_select_category\";a:4:{i:16;s:1:\"1\";i:20;s:1:\"1\";i:19;s:1:\"1\";i:21;s:1:\"1\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_storevilla_product_widget_area', 'a:2:{i:2;a:4:{s:28:\"storevilla_top_product_title\";s:16:\"Trending Fashion\";s:29:\"storevilla_main_product_title\";s:15:\"LATEST PRODUCTS\";s:23:\"storevilla_product_type\";s:14:\"latest_product\";s:25:\"storevilla_product_number\";i:4;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_storevilla_column_product_widget_area', 'a:2:{i:2;a:21:{s:27:\"banner_start_group_left_one\";s:0:\"\";s:29:\"storevilla_column_one_display\";s:1:\"1\";s:35:\"storevilla_column_one_product_title\";s:15:\"LATEST PRODUCTS\";s:34:\"storevilla_column_one_product_type\";s:14:\"latest_product\";s:30:\"storevilla_column_one_category\";s:0:\"\";s:36:\"storevilla_column_one_product_number\";i:3;s:25:\"banner_end_group_left_one\";s:0:\"\";s:27:\"banner_start_group_left_two\";s:0:\"\";s:29:\"storevilla_column_two_display\";s:1:\"1\";s:35:\"storevilla_column_two_product_title\";s:16:\"FEATURE PRODUCTS\";s:34:\"storevilla_column_two_product_type\";s:15:\"feature_product\";s:30:\"storevilla_column_two_category\";s:0:\"\";s:36:\"storevilla_column_two_product_number\";i:3;s:25:\"banner_end_group_left_two\";s:0:\"\";s:29:\"banner_start_group_left_three\";s:0:\"\";s:31:\"storevilla_column_three_display\";s:1:\"1\";s:37:\"storevilla_column_three_product_title\";s:16:\"ON SALE PRODUCTS\";s:36:\"storevilla_column_three_product_type\";s:7:\"on_sale\";s:32:\"storevilla_column_three_category\";s:0:\"\";s:38:\"storevilla_column_three_product_number\";i:3;s:27:\"banner_end_group_left_three\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(296, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(298, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(302, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(304, 'yit_recently_activated', 'a:0:{}', 'yes'),
(305, 'yith-wcqv-enable', 'yes', 'yes'),
(306, 'yith-wcqv-enable-mobile', 'yes', 'yes'),
(307, 'yith-wcqv-button-label', 'Quick View', 'yes'),
(308, 'yith-wcqv-enable-lightbox', 'yes', 'yes'),
(309, 'yith-wcqv-background-modal', '#ffffff', 'yes'),
(310, 'yith-wcqv-close-color', '#cdcdcd', 'yes'),
(311, 'yith-wcqv-close-color-hover', '#ff0000', 'yes'),
(312, 'yit_plugin_fw_panel_wc_default_options_set', 'a:3:{s:15:\"yith_wcqv_panel\";b:1;s:15:\"yith_wcwl_panel\";b:1;s:21:\"yith_woocompare_panel\";b:1;}', 'yes'),
(323, 'pickplugins_wl_default_wishlist_id', '12', 'yes'),
(325, '_site_transient_timeout_yith_promo_message', '3094633374', 'no'),
(326, '_site_transient_yith_promo_message', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";s:29:\"Sat, 12 Jan 2019 06:11:29 GMT\";s:12:\"content-type\";s:15:\"application/xml\";s:10:\"set-cookie\";s:137:\"__cfduid=dd7312ae84c5f158ecb769789e4c49d691547273488; expires=Sun, 12-Jan-20 06:11:28 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\";s:13:\"last-modified\";s:29:\"Fri, 07 Dec 2018 08:48:51 GMT\";s:9:\"expect-ct\";s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";s:6:\"server\";s:10:\"cloudflare\";s:6:\"cf-ray\";s:20:\"497d77460a5088ae-BOM\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:4:\"body\";s:1566:\"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2018-12-15</expiry_date>\n    <promo>\n        <promo_id>yithblackfridaydeal2018</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <banner>black.jpg</banner>\n        <description>30% discount on any of our products! Valid from 22nd November to 25th November.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n        </style>\n        <start_date>2018-11-22 00:00:00</start_date>\n        <end_date>2018-11-25 23:59:59</end_date>\n    </promo>\n    <promo>\n        <promo_id>yithcybermonday2018</promo_id>\n        <title><![CDATA[<strong>YITH Cyber Monday</strong>]]></title>\n        <banner>cyber.jpg</banner>\n        <description>30% discount on any of our products! Valid only on November 26th.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#12fdd4</image_bg_color>\n        </style>\n        <start_date>2018-11-26 00:00:00</start_date>\n        <end_date>2018-11-27 07:00:00</end_date>\n    </promo>\n</promotions>\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:1:{i:0;O:14:\"WP_Http_Cookie\":5:{s:4:\"name\";s:8:\"__cfduid\";s:5:\"value\";s:43:\"dd7312ae84c5f158ecb769789e4c49d691547273488\";s:7:\"expires\";i:1578809488;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:12:\"yithemes.com\";}}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:1566:\"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2018-12-15</expiry_date>\n    <promo>\n        <promo_id>yithblackfridaydeal2018</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <banner>black.jpg</banner>\n        <description>30% discount on any of our products! Valid from 22nd November to 25th November.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n        </style>\n        <start_date>2018-11-22 00:00:00</start_date>\n        <end_date>2018-11-25 23:59:59</end_date>\n    </promo>\n    <promo>\n        <promo_id>yithcybermonday2018</promo_id>\n        <title><![CDATA[<strong>YITH Cyber Monday</strong>]]></title>\n        <banner>cyber.jpg</banner>\n        <description>30% discount on any of our products! Valid only on November 26th.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#12fdd4</image_bg_color>\n        </style>\n        <start_date>2018-11-26 00:00:00</start_date>\n        <end_date>2018-11-27 07:00:00</end_date>\n    </promo>\n</promotions>\";s:3:\"raw\";s:2071:\"HTTP/1.1 200 OK\r\nDate: Sat, 12 Jan 2019 06:11:29 GMT\r\nContent-Type: application/xml\r\nTransfer-Encoding: chunked\r\nConnection: close\r\nSet-Cookie: __cfduid=dd7312ae84c5f158ecb769789e4c49d691547273488; expires=Sun, 12-Jan-20 06:11:28 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\r\nLast-Modified: Fri, 07 Dec 2018 08:48:51 GMT\r\nExpect-CT: max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\r\nServer: cloudflare\r\nCF-RAY: 497d77460a5088ae-BOM\r\nContent-Encoding: gzip\r\n\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2018-12-15</expiry_date>\n    <promo>\n        <promo_id>yithblackfridaydeal2018</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <banner>black.jpg</banner>\n        <description>30% discount on any of our products! Valid from 22nd November to 25th November.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n        </style>\n        <start_date>2018-11-22 00:00:00</start_date>\n        <end_date>2018-11-25 23:59:59</end_date>\n    </promo>\n    <promo>\n        <promo_id>yithcybermonday2018</promo_id>\n        <title><![CDATA[<strong>YITH Cyber Monday</strong>]]></title>\n        <banner>cyber.jpg</banner>\n        <description>30% discount on any of our products! Valid only on November 26th.</description>\n        <link>\n            <label><![CDATA[Don\'t miss it and <strong>INCREASE YOUR E-COMMERCE CONVERSIONS NOW!!!</strong>]]></label>\n            <url>https://yithemes.com/?refer_id=1072986</url>\n        </link>\n        <style>\n            <image_bg_color>#12fdd4</image_bg_color>\n        </style>\n        <start_date>2018-11-26 00:00:00</start_date>\n        <end_date>2018-11-27 07:00:00</end_date>\n    </promo>\n</promotions>\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";a:1:{i:0;s:29:\"Sat, 12 Jan 2019 06:11:29 GMT\";}s:12:\"content-type\";a:1:{i:0;s:15:\"application/xml\";}s:10:\"set-cookie\";a:1:{i:0;s:137:\"__cfduid=dd7312ae84c5f158ecb769789e4c49d691547273488; expires=Sun, 12-Jan-20 06:11:28 GMT; path=/; domain=.yithemes.com; HttpOnly; Secure\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Fri, 07 Dec 2018 08:48:51 GMT\";}s:9:\"expect-ct\";a:1:{i:0;s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";}s:6:\"server\";a:1:{i:0;s:10:\"cloudflare\";}s:6:\"cf-ray\";a:1:{i:0;s:20:\"497d77460a5088ae-BOM\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:1;s:3:\"url\";s:59:\"https://update.yithemes.com/promo/hotlink-ok/yith-promo.xml\";s:7:\"history\";a:1:{i:0;O:17:\"Requests_Response\":10:{s:4:\"body\";s:0:\"\";s:3:\"raw\";s:431:\"HTTP/1.1 301 Moved Permanently\r\nDate: Sat, 12 Jan 2019 06:11:27 GMT\r\nTransfer-Encoding: chunked\r\nConnection: close\r\nCache-Control: max-age=3600\r\nExpires: Sat, 12 Jan 2019 07:11:27 GMT\r\nLocation: https://update.yithemes.com/promo/hotlink-ok/yith-promo.xml\r\nExpect-CT: max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\r\nVary: Accept-Encoding\r\nServer: cloudflare\r\nCF-RAY: 497d77414c678872-BOM\r\n\r\n\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";a:1:{i:0;s:29:\"Sat, 12 Jan 2019 06:11:27 GMT\";}s:13:\"cache-control\";a:1:{i:0;s:12:\"max-age=3600\";}s:7:\"expires\";a:1:{i:0;s:29:\"Sat, 12 Jan 2019 07:11:27 GMT\";}s:8:\"location\";a:1:{i:0;s:59:\"https://update.yithemes.com/promo/hotlink-ok/yith-promo.xml\";}s:9:\"expect-ct\";a:1:{i:0;s:87:\"max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"\";}s:4:\"vary\";a:1:{i:0;s:15:\"Accept-Encoding\";}s:6:\"server\";a:1:{i:0;s:10:\"cloudflare\";}s:6:\"cf-ray\";a:1:{i:0;s:20:\"497d77414c678872-BOM\";}}}s:11:\"status_code\";i:301;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:0;s:9:\"redirects\";i:0;s:3:\"url\";s:58:\"https://update.yithemes.com/promo/hotlink-okyith-promo.xml\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:1:{s:8:\"__cfduid\";O:15:\"Requests_Cookie\":5:{s:4:\"name\";s:8:\"__cfduid\";s:5:\"value\";s:43:\"dd7312ae84c5f158ecb769789e4c49d691547273488\";s:10:\"attributes\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:5:{s:7:\"expires\";i:1578809488;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:12:\"yithemes.com\";s:8:\"httponly\";b:1;s:6:\"secure\";b:1;}}s:5:\"flags\";a:4:{s:8:\"creation\";i:1547273487;s:11:\"last-access\";i:1547273487;s:10:\"persistent\";b:0;s:9:\"host-only\";b:0;}s:14:\"reference_time\";i:1547273487;}}}}}s:7:\"cookies\";r:79;}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no'),
(330, 'yith_wcwl_frontend_css_colors', 's:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";', 'yes'),
(331, 'yith_wcwl_wishlist_title', 'My wishlist', 'yes'),
(332, 'yith_wcwl_version', '2.2.7', 'yes'),
(333, 'yith_wcwl_db_version', '2.2.0', 'yes'),
(334, 'yith_wcwl_general_videobox', 'a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:97:\"http://localhost/shop/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:79:\"https://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(335, 'yith_wcwl_enabled', 'yes', 'yes'),
(336, 'yith_wcwl_wishlist_page_id', '81', 'yes'),
(337, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(338, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(339, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(340, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(341, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(342, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(343, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(344, 'yith_wcwl_price_show', 'yes', 'yes'),
(345, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(346, 'yith_wcwl_stock_show', 'yes', 'yes'),
(347, 'yith_wcwl_show_dateadded', 'yes', 'yes'),
(348, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(349, 'yith_wcwl_share_fb', 'yes', 'yes'),
(350, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(351, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(352, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(353, 'yith_wcwl_share_email', 'yes', 'yes'),
(354, 'yith_wcwl_socials_title', 'My wishlist on', 'yes'),
(355, 'yith_wcwl_socials_text', '', 'yes'),
(356, 'yith_wcwl_socials_image_url', '', 'yes'),
(357, 'yith_wfbt_enable_integration', 'no', 'yes'),
(358, 'yith_wcwl_use_button', 'no', 'yes'),
(359, 'yith_wcwl_custom_css', '', 'yes'),
(360, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(361, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(362, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(363, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(368, 'default_product_cat', '15', 'yes'),
(371, 'woocommerce_version', '3.5.3', 'yes'),
(372, 'woocommerce_db_version', '3.5.3', 'yes'),
(380, 'wpo_wcpdf_settings_general', 'a:11:{s:10:\"paper_size\";s:2:\"a4\";s:11:\"header_logo\";s:1:\"6\";s:9:\"shop_name\";a:1:{s:7:\"default\";s:10:\"shoppr.com\";}s:12:\"shop_address\";a:1:{s:7:\"default\";s:34:\"Housing Board Colony Sanquelim Goa\";}s:16:\"download_display\";s:7:\"display\";s:13:\"template_path\";s:74:\"wp-content/plugins/woocommerce-pdf-invoices-packing-slips/templates/Simple\";s:13:\"currency_font\";s:1:\"1\";s:6:\"footer\";a:1:{s:7:\"default\";s:13:\"© Shoppr.com\";}s:7:\"extra_1\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_2\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_3\";a:1:{s:7:\"default\";s:0:\"\";}}', 'yes'),
(381, 'wpo_wcpdf_documents_settings_invoice', 'a:9:{s:24:\"display_shipping_address\";s:1:\"1\";s:13:\"display_email\";s:1:\"1\";s:13:\"display_phone\";s:0:\"\";s:12:\"display_date\";s:12:\"invoice_date\";s:14:\"display_number\";s:14:\"invoice_number\";s:19:\"attach_to_email_ids\";a:8:{s:9:\"new_order\";s:1:\"1\";s:15:\"cancelled_order\";s:1:\"1\";s:12:\"failed_order\";s:0:\"\";s:22:\"customer_on_hold_order\";s:0:\"\";s:25:\"customer_processing_order\";s:0:\"\";s:24:\"customer_completed_order\";s:1:\"1\";s:23:\"customer_refunded_order\";s:1:\"1\";s:16:\"customer_invoice\";s:1:\"1\";}s:7:\"enabled\";s:1:\"1\";s:13:\"number_format\";a:3:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:7:\"padding\";s:0:\"\";}s:18:\"my_account_buttons\";s:9:\"available\";}', 'yes'),
(382, 'wpo_wcpdf_documents_settings_packing-slip', 'a:1:{s:7:\"enabled\";i:1;}', 'yes'),
(383, 'wpo_wcpdf_settings_debug', 'a:2:{s:14:\"enable_cleanup\";i:1;s:12:\"cleanup_days\";i:7;}', 'yes'),
(386, 'wpo_wcpdf_version', '2.2.5', 'yes'),
(389, 'woocommerce_product_type', 'both', 'yes'),
(390, 'woocommerce_allow_tracking', 'yes', 'yes'),
(393, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(394, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(395, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(396, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(397, 'woocommerce_tracker_last_send', '1547273816', 'yes'),
(398, '_transient_shipping-transient-version', '1547273835', 'yes'),
(399, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"20\";}', 'yes'),
(415, '_transient_timeout_wc_shipping_method_count_1_1547273835', '1549865940', 'no'),
(416, '_transient_wc_shipping_method_count_1_1547273835', '2', 'no'),
(442, 'widget_yith-woocompare-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(444, 'yith_woocompare_is_button', 'button', 'yes'),
(445, 'yith_woocompare_button_text', 'Compare', 'yes'),
(446, 'yith_woocompare_compare_button_in_product_page', 'yes', 'yes'),
(447, 'yith_woocompare_compare_button_in_products_list', 'no', 'yes'),
(448, 'yith_woocompare_auto_open', 'yes', 'yes'),
(449, 'yith_woocompare_table_text', 'Compare products', 'yes'),
(450, 'yith_woocompare_fields_attrs', 'all', 'yes'),
(451, 'yith_woocompare_price_end', 'yes', 'yes'),
(452, 'yith_woocompare_add_to_cart_end', 'no', 'yes'),
(453, 'yith_woocompare_image_size', 'a:3:{s:5:\"width\";i:220;s:6:\"height\";i:154;s:4:\"crop\";i:1;}', 'yes'),
(454, 'yith_woocompare_fields', 'a:11:{s:5:\"image\";b:1;s:5:\"title\";b:1;s:5:\"price\";b:1;s:11:\"add-to-cart\";b:1;s:11:\"description\";b:1;s:3:\"sku\";b:1;s:5:\"stock\";b:1;s:6:\"weight\";b:1;s:10:\"dimensions\";b:1;s:8:\"pa_color\";b:1;s:8:\"pa_sizes\";b:1;}', 'yes'),
(488, '_transient_product_query-transient-version', '1547724390', 'yes'),
(497, '_transient_product-transient-version', '1547724390', 'yes'),
(568, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(569, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(570, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(744, 'apss_share_settings', 'a:18:{s:13:\"share_options\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:15:\"social_icon_set\";s:1:\"1\";s:15:\"share_positions\";s:13:\"below_content\";s:15:\"social_networks\";a:8:{s:8:\"facebook\";s:1:\"1\";s:7:\"twitter\";s:1:\"1\";s:11:\"google-plus\";s:1:\"1\";s:9:\"pinterest\";s:1:\"1\";s:8:\"linkedin\";s:1:\"1\";s:4:\"digg\";s:1:\"1\";s:5:\"email\";s:1:\"0\";s:5:\"print\";s:1:\"0\";}s:23:\"disable_frontend_assets\";s:1:\"0\";s:10:\"share_text\";s:0:\"\";s:16:\"twitter_username\";s:0:\"\";s:22:\"counter_enable_options\";s:1:\"0\";s:19:\"twitter_counter_api\";s:1:\"1\";s:17:\"api_configuration\";a:1:{s:8:\"facebook\";a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}}s:28:\"total_counter_enable_options\";s:1:\"0\";s:17:\"enable_http_count\";s:1:\"0\";s:12:\"enable_cache\";s:1:\"1\";s:12:\"cache_period\";s:2:\"24\";s:29:\"apss_social_counts_transients\";a:0:{}s:18:\"dialog_box_options\";s:1:\"1\";s:18:\"apss_email_subject\";s:30:\"Please visit this link %%url%%\";s:15:\"apss_email_body\";s:110:\"Hey Buddy!, I found this information for you: \"%%title%%\". Here is the website link: %%permalink%%. Thank you.\";}', 'yes'),
(745, 'apss_social_counts_transients', 'a:60:{i:0;s:35:\"fb_8c54a8a992014bec5acd3dfee4b2b434\";i:1;s:40:\"twitter_8c54a8a992014bec5acd3dfee4b2b434\";i:2;s:35:\"gp_8c54a8a992014bec5acd3dfee4b2b434\";i:3;s:42:\"pinterest_8c54a8a992014bec5acd3dfee4b2b434\";i:4;s:41:\"linkedin_8c54a8a992014bec5acd3dfee4b2b434\";i:5;s:35:\"fb_993cf2d062760bdbd64555ad0a24f1b4\";i:6;s:40:\"twitter_993cf2d062760bdbd64555ad0a24f1b4\";i:7;s:35:\"gp_993cf2d062760bdbd64555ad0a24f1b4\";i:8;s:42:\"pinterest_993cf2d062760bdbd64555ad0a24f1b4\";i:9;s:41:\"linkedin_993cf2d062760bdbd64555ad0a24f1b4\";i:10;s:35:\"fb_0618984b6efaa64e4e19ca4b19890d29\";i:11;s:40:\"twitter_0618984b6efaa64e4e19ca4b19890d29\";i:12;s:35:\"gp_0618984b6efaa64e4e19ca4b19890d29\";i:13;s:42:\"pinterest_0618984b6efaa64e4e19ca4b19890d29\";i:14;s:41:\"linkedin_0618984b6efaa64e4e19ca4b19890d29\";i:15;s:35:\"fb_4a8e18c9c28e2009c190c14f6cdb546b\";i:16;s:40:\"twitter_4a8e18c9c28e2009c190c14f6cdb546b\";i:17;s:35:\"gp_4a8e18c9c28e2009c190c14f6cdb546b\";i:18;s:42:\"pinterest_4a8e18c9c28e2009c190c14f6cdb546b\";i:19;s:41:\"linkedin_4a8e18c9c28e2009c190c14f6cdb546b\";i:20;s:35:\"fb_30f376444caa4409bf6482cd1e2b811a\";i:21;s:40:\"twitter_30f376444caa4409bf6482cd1e2b811a\";i:22;s:35:\"gp_30f376444caa4409bf6482cd1e2b811a\";i:23;s:42:\"pinterest_30f376444caa4409bf6482cd1e2b811a\";i:24;s:41:\"linkedin_30f376444caa4409bf6482cd1e2b811a\";i:25;s:35:\"fb_e145bff14075551c5d0dad0c1a346e0c\";i:26;s:40:\"twitter_e145bff14075551c5d0dad0c1a346e0c\";i:27;s:35:\"gp_e145bff14075551c5d0dad0c1a346e0c\";i:28;s:42:\"pinterest_e145bff14075551c5d0dad0c1a346e0c\";i:29;s:41:\"linkedin_e145bff14075551c5d0dad0c1a346e0c\";i:30;s:35:\"fb_13d8d67258556329d9e41d09f9c74d45\";i:31;s:40:\"twitter_13d8d67258556329d9e41d09f9c74d45\";i:32;s:35:\"gp_13d8d67258556329d9e41d09f9c74d45\";i:33;s:42:\"pinterest_13d8d67258556329d9e41d09f9c74d45\";i:34;s:41:\"linkedin_13d8d67258556329d9e41d09f9c74d45\";i:35;s:35:\"fb_d48164aadd793763c958b8f43b31ce91\";i:36;s:40:\"twitter_d48164aadd793763c958b8f43b31ce91\";i:37;s:35:\"gp_d48164aadd793763c958b8f43b31ce91\";i:38;s:42:\"pinterest_d48164aadd793763c958b8f43b31ce91\";i:39;s:41:\"linkedin_d48164aadd793763c958b8f43b31ce91\";i:40;s:35:\"fb_e673b79f98e7e536d981ff53aa16b70f\";i:41;s:40:\"twitter_e673b79f98e7e536d981ff53aa16b70f\";i:42;s:35:\"gp_e673b79f98e7e536d981ff53aa16b70f\";i:43;s:42:\"pinterest_e673b79f98e7e536d981ff53aa16b70f\";i:44;s:41:\"linkedin_e673b79f98e7e536d981ff53aa16b70f\";i:45;s:35:\"fb_f32213f16aeccc44f26788b0ff09b74d\";i:46;s:40:\"twitter_f32213f16aeccc44f26788b0ff09b74d\";i:47;s:35:\"gp_f32213f16aeccc44f26788b0ff09b74d\";i:48;s:42:\"pinterest_f32213f16aeccc44f26788b0ff09b74d\";i:49;s:41:\"linkedin_f32213f16aeccc44f26788b0ff09b74d\";i:50;s:35:\"fb_cc56e0e4a2eac23d4cbdb4e0068764a9\";i:51;s:40:\"twitter_cc56e0e4a2eac23d4cbdb4e0068764a9\";i:52;s:35:\"gp_cc56e0e4a2eac23d4cbdb4e0068764a9\";i:53;s:42:\"pinterest_cc56e0e4a2eac23d4cbdb4e0068764a9\";i:54;s:41:\"linkedin_cc56e0e4a2eac23d4cbdb4e0068764a9\";i:55;s:35:\"fb_edcb4941202569d1cb5d3e893831d397\";i:56;s:40:\"twitter_edcb4941202569d1cb5d3e893831d397\";i:57;s:35:\"gp_edcb4941202569d1cb5d3e893831d397\";i:58;s:42:\"pinterest_edcb4941202569d1cb5d3e893831d397\";i:59;s:41:\"linkedin_edcb4941202569d1cb5d3e893831d397\";}', 'yes'),
(755, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(862, 'product_cat_children', 'a:4:{i:16;a:2:{i:0;i:17;i:1;i:18;}i:21;a:1:{i:0;i:22;}i:19;a:1:{i:0;i:32;}i:20;a:1:{i:0;i:33;}}', 'yes'),
(999, 'widget_metro-share-widget', 'a:2:{i:2;a:4:{s:5:\"title\";s:8:\"Share Me\";s:12:\"show_on_home\";s:2:\"on\";s:13:\"show_on_posts\";s:2:\"on\";s:13:\"show_on_pages\";s:2:\"on\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1035, '_transient_timeout_wc_shipping_method_count_0_1547273835', '1549887585', 'no'),
(1036, '_transient_wc_shipping_method_count_0_1547273835', '2', 'no'),
(1039, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(1041, '_transient_timeout_yith_wcwl_user_default_count_1', '1547900536', 'no'),
(1042, '_transient_yith_wcwl_user_default_count_1', '1', 'no'),
(1054, '_transient_timeout_yith_wcwl_wishlist_count_LDWBDWEFX13O', '1547900742', 'no'),
(1055, '_transient_yith_wcwl_wishlist_count_LDWBDWEFX13O', '1', 'no'),
(1058, '_transient_orders-transient-version', '1547296323', 'yes'),
(1063, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:12:\"post-trashed\";s:1:\"1\";s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(1081, 'heateor_sss', 'a:74:{s:24:\"horizontal_sharing_shape\";s:5:\"round\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:15:\"Spread the love\";s:18:\"instagram_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:4:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"whatsapp\";}s:21:\"hor_sharing_alignment\";s:6:\"center\";s:6:\"bottom\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:15:\"horizontal_more\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:21:\"vertical_re_providers\";a:8:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:6:\"reddit\";i:6;s:3:\"mix\";i:7;s:8:\"whatsapp\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:13:\"vertical_more\";s:1:\"1\";s:19:\"hide_mobile_sharing\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:21:\"bottom_mobile_sharing\";s:1:\"1\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:13:\"footer_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:8:\"language\";s:5:\"en_US\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";s:10:\"amp_enable\";s:1:\"1\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(1082, 'heateor_sss_version', '3.2.10', 'yes'),
(1083, 'widget_heateor_sss_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1084, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1085, 'widget_heateor_sss_follow', 'a:2:{i:2;a:25:{s:5:\"title\";s:0:\"\";s:4:\"size\";i:32;s:10:\"icon_shape\";s:6:\"square\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:9:\"instagram\";s:1:\"#\";s:9:\"pinterest\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:10:\"foursquare\";s:0:\"\";s:6:\"github\";s:0:\"\";s:6:\"google\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:16:\"linkedin_company\";s:0:\"\";s:6:\"medium\";s:0:\"\";s:13:\"odnoklassniki\";s:0:\"\";s:8:\"snapchat\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:9:\"vkontakte\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:15:\"youtube_channel\";s:1:\"#\";s:8:\"rss_feed\";s:0:\"\";s:21:\"before_widget_content\";s:0:\"\";s:20:\"after_widget_content\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1087, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(1116, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1547725754;s:7:\"checked\";a:4:{s:10:\"storevilla\";s:5:\"1.3.1\";s:14:\"twentynineteen\";s:3:\"1.1\";s:15:\"twentyseventeen\";s:3:\"1.9\";s:13:\"twentysixteen\";s:3:\"1.7\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.2.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.0.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.8.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1125, 'woocommerce_tracker_ua', 'a:1:{i:0;s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";}', 'yes'),
(1126, '_transient_timeout_wc_report_sales_by_date', '1547813233', 'no'),
(1127, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"c6e460475a19ab3929a047dd7f56b608\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"ee25db4837effe99486b82d91208fc30\";a:0:{}s:32:\"8849e7b8a05f796075d538128da52f6b\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"5339e4bbc25e0cdb243c192d7e2be857\";N;s:32:\"c7e75add6f8b4062fa50e7d4126c24dc\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"1250\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"01db65ffff65290d956648c3cddab3c9\";a:0:{}s:32:\"ce98259c46a111cded31dc1e3a0e10fe\";a:0:{}s:32:\"435d33938bc871ff4864a33a933fb815\";a:0:{}s:32:\"b0edb03511b93cfe4a7a0f513ba47275\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"0e2888dc05f9e9095c1235ff405892b6\";a:0:{}s:32:\"bb0f7cf8d479ed609102e279b79db42e\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"5fe634cacd683ec3e4825d0b2cdb3ef6\";N;s:32:\"f0b6ef87fb663518cd27651aaa0813a0\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"1250\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"4c9d1fd53247130522ecfc57a4543f27\";a:0:{}s:32:\"08f9cb93a0bd99ff0ed9e1b1977858d2\";a:0:{}s:32:\"02d49ed042f8e714f345b02a3444c494\";a:0:{}}', 'no'),
(1128, '_transient_timeout_wc_admin_report', '1547794036', 'no'),
(1129, '_transient_wc_admin_report', 'a:2:{s:32:\"9c768a8bc9896bafa32a186decc1c0c0\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:4:\"1250\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}s:32:\"4662e0c88d642927bebaeaf11c3b42c1\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"45\";s:15:\"sparkline_value\";s:1:\"1\";s:9:\"post_date\";s:19:\"2019-01-12 12:28:53\";}}}', 'no'),
(1131, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1547770043', 'no'),
(1132, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Pune\";s:3:\"url\";s:30:\"https://2019.pune.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-02-16 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:24:\"Pune, Maharashtra, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:18.5408513;s:9:\"longitude\";d:73.8066679;}}}}', 'no'),
(1204, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:5:\"sizes\";s:15:\"attribute_label\";s:5:\"Sizes\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(1317, '_transient_timeout_wc_product_children_90', '1550315642', 'no'),
(1318, '_transient_wc_product_children_90', 'a:2:{s:3:\"all\";a:20:{i:0;i:95;i:1;i:96;i:2;i:97;i:3;i:98;i:4;i:99;i:5;i:100;i:6;i:101;i:7;i:102;i:8;i:103;i:9;i:104;i:10;i:105;i:11;i:106;i:12;i:107;i:13;i:108;i:14;i:109;i:15;i:110;i:16;i:111;i:17;i:112;i:18;i:113;i:19;i:114;}s:7:\"visible\";a:20:{i:0;i:95;i:1;i:96;i:2;i:97;i:3;i:98;i:4;i:99;i:5;i:100;i:6;i:101;i:7;i:102;i:8;i:103;i:9;i:104;i:10;i:105;i:11;i:106;i:12;i:107;i:13;i:108;i:14;i:109;i:15;i:110;i:16;i:111;i:17;i:112;i:18;i:113;i:19;i:114;}}', 'no'),
(1319, '_transient_timeout_wc_var_prices_90', '1550316400', 'no'),
(1320, '_transient_wc_var_prices_90', '{\"version\":\"1547724390\",\"736a3d6db5c39e0409817d11d25d75a7\":{\"price\":{\"95\":\"1200.00\",\"96\":\"1200.00\",\"97\":\"1200.00\",\"98\":\"1200.00\",\"99\":\"1200.00\",\"100\":\"1200.00\",\"101\":\"1200.00\",\"102\":\"1200.00\",\"103\":\"1390.00\",\"104\":\"1200.00\",\"105\":\"1390.00\",\"106\":\"1390.00\",\"107\":\"1200.00\",\"108\":\"1200.00\",\"109\":\"1200.00\"},\"regular_price\":{\"95\":\"1200.00\",\"96\":\"1200.00\",\"97\":\"1200.00\",\"98\":\"1200.00\",\"99\":\"1200.00\",\"100\":\"1200.00\",\"101\":\"1200.00\",\"102\":\"1200.00\",\"103\":\"1390.00\",\"104\":\"1200.00\",\"105\":\"1390.00\",\"106\":\"1390.00\",\"107\":\"1200.00\",\"108\":\"1200.00\",\"109\":\"1200.00\"},\"sale_price\":{\"95\":\"1200.00\",\"96\":\"1200.00\",\"97\":\"1200.00\",\"98\":\"1200.00\",\"99\":\"1200.00\",\"100\":\"1200.00\",\"101\":\"1200.00\",\"102\":\"1200.00\",\"103\":\"1390.00\",\"104\":\"1200.00\",\"105\":\"1390.00\",\"106\":\"1390.00\",\"107\":\"1200.00\",\"108\":\"1200.00\",\"109\":\"1200.00\"}}}', 'no'),
(1321, '_transient_timeout_wc_child_has_weight_90', '1550315642', 'no'),
(1322, '_transient_wc_child_has_weight_90', '0', 'no'),
(1323, '_transient_timeout_wc_child_has_dimensions_90', '1550315642', 'no'),
(1324, '_transient_wc_child_has_dimensions_90', '0', 'no'),
(1325, '_transient_timeout_wc_related_90', '1547819547', 'no'),
(1326, '_transient_wc_related_90', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=90\";a:3:{i:0;s:2:\"42\";i:1;s:2:\"45\";i:2;s:3:\"115\";}}', 'no'),
(1363, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(1365, '_transient_timeout_wc_term_counts', '1550316411', 'no'),
(1366, '_transient_wc_term_counts', 'a:15:{i:32;s:1:\"2\";i:33;s:1:\"2\";i:16;s:1:\"2\";i:18;s:1:\"1\";i:17;s:1:\"1\";i:20;s:1:\"2\";i:19;s:1:\"2\";i:21;s:1:\"1\";i:22;s:1:\"1\";i:34;s:1:\"4\";i:37;s:1:\"2\";i:35;s:1:\"1\";i:36;s:1:\"1\";i:42;s:1:\"2\";i:41;s:1:\"1\";}', 'no'),
(1367, '_transient_timeout_wc_product_children_115', '1550316400', 'no'),
(1368, '_transient_wc_product_children_115', 'a:2:{s:3:\"all\";a:4:{i:0;i:116;i:1;i:117;i:2;i:118;i:3;i:119;}s:7:\"visible\";a:4:{i:0;i:116;i:1;i:117;i:2;i:118;i:3;i:119;}}', 'no'),
(1369, '_transient_timeout_wc_var_prices_115', '1550316400', 'no'),
(1370, '_transient_wc_var_prices_115', '{\"version\":\"1547724390\",\"736a3d6db5c39e0409817d11d25d75a7\":{\"price\":{\"116\":\"1000.00\",\"117\":\"879.00\",\"118\":\"879.00\",\"119\":\"1000.00\"},\"regular_price\":{\"116\":\"1000.00\",\"117\":\"879.00\",\"118\":\"879.00\",\"119\":\"1000.00\"},\"sale_price\":{\"116\":\"1000.00\",\"117\":\"879.00\",\"118\":\"879.00\",\"119\":\"1000.00\"}}}', 'no'),
(1371, '_transient_timeout_wc_child_has_weight_115', '1550316410', 'no'),
(1372, '_transient_wc_child_has_weight_115', '0', 'no'),
(1373, '_transient_timeout_wc_child_has_dimensions_115', '1550316410', 'no'),
(1374, '_transient_wc_child_has_dimensions_115', '0', 'no'),
(1375, '_transient_timeout_wc_related_115', '1547810811', 'no'),
(1376, '_transient_wc_related_115', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=115\";a:3:{i:0;s:2:\"45\";i:1;s:2:\"42\";i:2;s:2:\"90\";}}', 'no'),
(1379, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1547735328', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1380, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4543;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3226;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2605;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2467;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1900;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1710;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1697;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1464;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1420;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1420;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1420;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1350;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1287;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1278;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1128;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1086;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1070;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1045;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:969;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:910;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:841;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:828;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:816;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:753;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:721;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:711;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:704;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:700;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:693;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:683;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:676;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:673;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:655;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:649;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:637;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:633;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:622;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:612;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:612;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:608;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:576;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:561;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:554;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:552;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:551;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:543;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:529;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:523;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:521;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:521;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:517;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:506;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:500;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:491;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:490;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:486;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:469;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:468;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:462;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:455;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:452;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:450;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:449;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:430;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:429;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:422;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:419;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:412;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:399;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:393;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:393;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:382;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:377;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:376;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:375;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:373;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:373;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:360;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:359;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:357;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:350;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:347;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:343;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:341;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:339;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:336;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:321;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:318;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:317;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:315;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:314;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:311;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:310;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:306;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}}', 'no'),
(1386, '_site_transient_timeout_theme_roots', '1547726536', 'no'),
(1387, '_site_transient_theme_roots', 'a:4:{s:10:\"storevilla\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1388, '_transient_timeout__woocommerce_helper_updates', '1547767936', 'no'),
(1389, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1547724736;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1393, 'post_grid_layout_content', 'a:6:{s:4:\"flat\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:86:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:66:\"display: block;font-size: 12px;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:82:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}}s:11:\"flat-center\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:84:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}s:10:\"flat-right\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:87:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:67:\"display: block;font-size: 12px;padding: 5px 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:83:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}}s:9:\"flat-left\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:86:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:66:\"display: block;font-size: 12px;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:82:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}}s:15:\"wc-center-price\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:4:{s:3:\"key\";s:13:\"wc_full_price\";s:4:\"name\";s:5:\"Price\";s:3:\"css\";s:122:\"background:#f9b013;color:#fff;display: inline-block;font-size: 20px;line-height:normal;padding: 0 17px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}s:14:\"wc-center-cart\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:4:{s:3:\"key\";s:10:\"wc_gallery\";s:4:\"name\";s:11:\"Add to Cart\";s:3:\"css\";s:103:\"color:#555;display: inline-block;font-size: 13px;line-height:normal;padding: 0 17px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}}', 'yes'),
(1394, '_transient_timeout_plugin_slugs', '1547812292', 'no'),
(1395, '_transient_plugin_slugs', 'a:8:{i:0;s:31:\"popup-builder/popup-builder.php\";i:1;s:23:\"post-grid/post-grid.php\";i:2;s:41:\"sassy-social-share/sassy-social-share.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:80:\"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php\";i:5;s:33:\"yith-woocommerce-compare/init.php\";i:6;s:36:\"yith-woocommerce-quick-view/init.php\";i:7;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'no'),
(1398, 'category_children', 'a:0:{}', 'yes'),
(1412, '_transient_timeout_settings_errors', '1547725623', 'no'),
(1413, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:15:\"Settings saved.\";s:4:\"type\";s:7:\"updated\";}}', 'no'),
(1423, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1547725884;s:7:\"checked\";a:8:{s:31:\"popup-builder/popup-builder.php\";s:7:\"3.1.5.2\";s:23:\"post-grid/post-grid.php\";s:6:\"2.0.29\";s:41:\"sassy-social-share/sassy-social-share.php\";s:6:\"3.2.10\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.5.3\";s:80:\"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php\";s:5:\"2.2.5\";s:33:\"yith-woocommerce-compare/init.php\";s:5:\"2.3.7\";s:36:\"yith-woocommerce-quick-view/init.php\";s:5:\"1.3.6\";s:34:\"yith-woocommerce-wishlist/init.php\";s:5:\"2.2.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:31:\"popup-builder/popup-builder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/popup-builder\";s:4:\"slug\";s:13:\"popup-builder\";s:6:\"plugin\";s:31:\"popup-builder/popup-builder.php\";s:11:\"new_version\";s:7:\"3.1.5.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/popup-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/popup-builder.3.1.5.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/popup-builder/assets/icon-128x128.jpg?rev=1908745\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/popup-builder/assets/banner-772x250.jpg?rev=1908745\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"post-grid/post-grid.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/post-grid\";s:4:\"slug\";s:9:\"post-grid\";s:6:\"plugin\";s:23:\"post-grid/post-grid.php\";s:11:\"new_version\";s:6:\"2.0.29\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/post-grid/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/post-grid.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/post-grid/assets/icon-256x256.png?rev=1623779\";s:2:\"1x\";s:62:\"https://ps.w.org/post-grid/assets/icon-128x128.png?rev=1623779\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/post-grid/assets/banner-1544x500.png?rev=1637891\";s:2:\"1x\";s:64:\"https://ps.w.org/post-grid/assets/banner-772x250.png?rev=1637891\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"sassy-social-share/sassy-social-share.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/sassy-social-share\";s:4:\"slug\";s:18:\"sassy-social-share\";s:6:\"plugin\";s:41:\"sassy-social-share/sassy-social-share.php\";s:11:\"new_version\";s:6:\"3.2.10\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/sassy-social-share/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/sassy-social-share.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:80:\"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:52:\"w.org/plugins/woocommerce-pdf-invoices-packing-slips\";s:4:\"slug\";s:38:\"woocommerce-pdf-invoices-packing-slips\";s:6:\"plugin\";s:80:\"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php\";s:11:\"new_version\";s:5:\"2.2.5\";s:3:\"url\";s:69:\"https://wordpress.org/plugins/woocommerce-pdf-invoices-packing-slips/\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/plugin/woocommerce-pdf-invoices-packing-slips.2.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/woocommerce-pdf-invoices-packing-slips/assets/icon-256x256.png?rev=983013\";s:2:\"1x\";s:90:\"https://ps.w.org/woocommerce-pdf-invoices-packing-slips/assets/icon-128x128.png?rev=983013\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:92:\"https://ps.w.org/woocommerce-pdf-invoices-packing-slips/assets/banner-772x250.png?rev=840317\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"yith-woocommerce-compare/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/yith-woocommerce-compare\";s:4:\"slug\";s:24:\"yith-woocommerce-compare\";s:6:\"plugin\";s:33:\"yith-woocommerce-compare/init.php\";s:11:\"new_version\";s:5:\"2.3.7\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/yith-woocommerce-compare/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/yith-woocommerce-compare.2.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";s:2:\"1x\";s:79:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-772x250.jpg?rev=1460909\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"yith-woocommerce-quick-view/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/yith-woocommerce-quick-view\";s:4:\"slug\";s:27:\"yith-woocommerce-quick-view\";s:6:\"plugin\";s:36:\"yith-woocommerce-quick-view/init.php\";s:11:\"new_version\";s:5:\"1.3.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/yith-woocommerce-quick-view/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/yith-woocommerce-quick-view.1.3.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-quick-view/assets/icon-128x128.jpg?rev=1460911\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-1544x500.jpg?rev=1460911\";s:2:\"1x\";s:82:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-772x250.jpg?rev=1460911\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:5:\"2.2.7\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1427, 'sgpb-dont-delete-data', '1', 'yes'),
(1428, 'sgpbUnsubscribeColumnFixed', '1', 'yes'),
(1429, 'SGPBUsageDays', '0', 'yes'),
(1430, 'SGPBInstallDate', '1547725887', 'yes'),
(1431, 'SGPBOpenNextTime', '1550317887', 'yes'),
(1432, 'SGPBMaxOpenCount', '80', 'yes'),
(1433, 'SG_POPUP_BUILDER_REGISTERED_PLUGINS', '{\"popup-builder\\/popup-builder.php\":{\"classPath\":\"C:\\\\xampp\\\\htdocs\\\\Shop\\/wp-content\\/plugins\\/popup-builder\\/com\\/classes\\/extension\\/\\/SgpbPopupExtension.php\",\"className\":\"SgpbPopupExtension\",\"options\":[]}}', 'yes'),
(1435, 'sgpb-banner-cron-once', '1', 'yes'),
(1436, 'sgpb-banner-remote-get', '<head /><div style=\"text-align: center;margin: 15px 0;\"><p class=\"elementor-heading-title elementor-size-medium\" style=\"color: #ffffff;font-size: 22px;\"><span style=\"font-family: Lato, Arial, sans-serif; font-size: 23px; white-space: normal;\">Create and deploy&nbsp;Powerful and Unique WordPress Popups in 5 minutes.</span><br><span style=\"font-weight: 700;  font-size: 23px;\">100.000+</span> users can\'t be wrong!</p></div>\n<div style=\"text-align: center;\">\n<a href=\"https://popup-builder.com#extensions\" target=\"_blank\" style=\"background-color: #f12184;border-color: #f12184;font-weight: 500;border-radius: 0;min-width: 200px;\" class=\"btn btn-md btn-success sgpb-power-up-btn\">POWER-UP</a>\n<style>.sgpb-power-up-btn:hover{background-color:#f561a9!important;border-color:#f561a9!important}</style>\n</div>', 'yes'),
(1437, 'sgpb-metabox-banner-remote-get', '<head /><div class=\"sgpb-right-banner-wrapper\"><div class=\"sgpb-first-row\" style=\"background-image:url(https://popup-builder.com/wp-content/uploads/2018/12/xsubsciption-plus-banner-wordpress.jpg.pagespeed.ic.UzPZT_BO_d.jpg)\"></div><div class=\"sgpb-second-row\"></div></div>\nCustomize Your Subscription Fields and Email Templates with our new <a target=\"_blank\" href=\"https://popup-builder.com/downloads/subscription-plus-popup/\">Subscription Plus </a> extension.\n<style>.sgpb-first-row{background-size:100%;min-height:310px;background-repeat:no-repeat}</style>', 'yes'),
(1446, 'SgpbCounter', 'a:1:{i:140;i:9;}', 'yes'),
(1451, '_transient_is_multi_author', '0', 'yes'),
(1455, '_transient_timeout_wc_low_stock_count', '1550318833', 'no'),
(1456, '_transient_wc_low_stock_count', '0', 'no'),
(1457, '_transient_timeout_wc_outofstock_count', '1550318833', 'no'),
(1458, '_transient_wc_outofstock_count', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pickplugins_wl_data`
--

CREATE TABLE `wp_pickplugins_wl_data` (
  `id` int(100) NOT NULL,
  `wishlist_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', '2019/01/want53294-1g1dR21501518886.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:701;s:6:\"height\";i:198;s:4:\"file\";s:38:\"2019/01/want53294-1g1dR21501518886.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"want53294-1g1dR21501518886-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"want53294-1g1dR21501518886-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"want53294-1g1dR21501518886-600x169.png\";s:5:\"width\";i:600;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"want53294-1g1dR21501518886-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"want53294-1g1dR21501518886-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:38:\"want53294-1g1dR21501518886-275x198.png\";s:5:\"width\";i:275;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:38:\"want53294-1g1dR21501518886-255x160.png\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:37:\"want53294-1g1dR21501518886-350x99.png\";s:5:\"width\";i:350;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2019/01/ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:52:\"2019/01/ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-512x470.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-512x510.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:52:\"ea470241088173a13f9ced8bab0f4ecdb41eac4e-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2019/01/cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg'),
(10, 8, '_wp_attachment_context', 'site-icon'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:60:\"2019/01/cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-512x470.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-512x510.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:60:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:58:\"cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_wp_trash_meta_status', 'publish'),
(13, 9, '_wp_trash_meta_time', '1547272721'),
(14, 10, '_edit_lock', '1547272749:1'),
(15, 10, '_wp_trash_meta_status', 'publish'),
(16, 10, '_wp_trash_meta_time', '1547272773'),
(17, 11, '_wp_trash_meta_status', 'publish'),
(18, 11, '_wp_trash_meta_time', '1547272855'),
(19, 12, 'wishlist_status', 'public'),
(20, 17, '_edit_lock', '1547276674:1'),
(21, 17, '_wp_page_template', 'template-home.php'),
(22, 17, '_edit_last', '1'),
(23, 17, 'storevilla_page_layouts', 'rightsidebar'),
(24, 20, '_wp_attached_file', '2019/01/business-camera-contemporary-325153.jpg'),
(25, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1422;s:6:\"height\";i:768;s:4:\"file\";s:47:\"2019/01/business-camera-contemporary-325153.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-768x415.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"business-camera-contemporary-325153-1024x553.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:48:\"business-camera-contemporary-325153-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-324x175.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-600x324.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-600x324.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"business-camera-contemporary-325153-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(26, 21, '_wp_attached_file', '2019/01/poco-f1.jpg'),
(27, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:780;s:6:\"height\";i:488;s:4:\"file\";s:19:\"2019/01/poco-f1.jpg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"poco-f1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"poco-f1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"poco-f1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:19:\"poco-f1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:19:\"poco-f1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:19:\"poco-f1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:19:\"poco-f1-780x470.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:19:\"poco-f1-760x488.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:19:\"poco-f1-280x175.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"poco-f1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"poco-f1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"poco-f1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"poco-f1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"poco-f1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"poco-f1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 22, '_wp_attached_file', '2019/01/hp-spectre-x360-main-2.jpg'),
(29, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:805;s:6:\"height\";i:456;s:4:\"file\";s:34:\"2019/01/hp-spectre-x360-main-2.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-768x435.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-760x456.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-309x175.jpg\";s:5:\"width\";i:309;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-600x340.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-600x340.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"hp-spectre-x360-main-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 23, '_wp_attached_file', '2019/01/adult-autumn-autumn-leaves-1518489.jpg'),
(31, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:513;s:6:\"height\";i:768;s:4:\"file\";s:46:\"2019/01/adult-autumn-autumn-leaves-1518489.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-513x470.jpg\";s:5:\"width\";i:513;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-513x510.jpg\";s:5:\"width\";i:513;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-117x175.jpg\";s:5:\"width\";i:117;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"adult-autumn-autumn-leaves-1518489-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(32, 24, '_wp_attached_file', '2019/01/adult-autumn-blur-1751600.jpg'),
(33, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:768;s:4:\"file\";s:37:\"2019/01/adult-autumn-blur-1751600.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-512x470.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-512x510.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-117x175.jpg\";s:5:\"width\";i:117;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"adult-autumn-blur-1751600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(34, 25, '_wp_attached_file', '2019/01/app-apple-business-38295.jpg'),
(35, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4288;s:6:\"height\";i:2848;s:4:\"file\";s:36:\"2019/01/app-apple-business-38295.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"app-apple-business-38295-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:37:\"app-apple-business-38295-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-263x175.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"app-apple-business-38295-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"app-apple-business-38295-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"app-apple-business-38295-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 27, '_wp_attached_file', '2019/01/antique-art-bookcase-1301585.jpg'),
(39, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1137;s:6:\"height\";i:640;s:4:\"file\";s:40:\"2019/01/antique-art-bookcase-1301585.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"antique-art-bookcase-1301585-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:41:\"antique-art-bookcase-1301585-1137x470.jpg\";s:5:\"width\";i:1137;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-311x175.jpg\";s:5:\"width\";i:311;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"antique-art-bookcase-1301585-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(40, 28, '_wp_attached_file', '2019/01/10-books-to-read-from-indian-authors-6.jpg'),
(41, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1028;s:6:\"height\";i:1600;s:4:\"file\";s:50:\"2019/01/10-books-to-read-from-indian-authors-6.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-193x300.jpg\";s:5:\"width\";i:193;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"10-books-to-read-from-indian-authors-6-768x1195.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"10-books-to-read-from-indian-authors-6-658x1024.jpg\";s:5:\"width\";i:658;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:51:\"10-books-to-read-from-indian-authors-6-1028x470.jpg\";s:5:\"width\";i:1028;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-112x175.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-600x934.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:934;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-600x934.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:934;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"10-books-to-read-from-indian-authors-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 29, '_wc_review_count', '0'),
(43, 29, '_wc_rating_count', 'a:0:{}'),
(44, 29, '_wc_average_rating', '0'),
(45, 29, '_edit_last', '1'),
(46, 29, '_edit_lock', '1547280544:1'),
(47, 30, '_wp_attached_file', '2019/01/xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta.jpeg'),
(48, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:152;s:6:\"height\";i:312;s:4:\"file\";s:61:\"2019/01/xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta.jpeg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-146x300.jpeg\";s:5:\"width\";i:146;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-152x154.jpeg\";s:5:\"width\";i:152;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-152x160.jpeg\";s:5:\"width\";i:152;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:60:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-85x175.jpeg\";s:5:\"width\";i:85;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-152x300.jpeg\";s:5:\"width\";i:152;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-152x300.jpeg\";s:5:\"width\";i:152;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:61:\"xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 31, '_wp_attached_file', '2019/01/poco-f1-1.jpg'),
(50, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:780;s:6:\"height\";i:488;s:4:\"file\";s:21:\"2019/01/poco-f1-1.jpg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-780x470.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-760x488.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-280x175.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"poco-f1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"poco-f1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"poco-f1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 32, '_wp_attached_file', '2019/01/PocoF1-770x462.jpg'),
(52, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:462;s:4:\"file\";s:26:\"2019/01/PocoF1-770x462.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-760x462.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:462;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-292x175.jpg\";s:5:\"width\";i:292;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"PocoF1-770x462-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"PocoF1-770x462-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"PocoF1-770x462-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 33, '_wp_attached_file', '2019/01/poco-f1-main_uqd7.640.jpg'),
(54, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:430;s:4:\"file\";s:33:\"2019/01/poco-f1-main_uqd7.640.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-260x175.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-600x403.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-600x403.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"poco-f1-main_uqd7.640-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 29, '_thumbnail_id', '31'),
(56, 29, '_sku', ''),
(57, 29, '_regular_price', '21999.00'),
(58, 29, '_sale_price', '19999.00'),
(59, 29, '_sale_price_dates_from', ''),
(60, 29, '_sale_price_dates_to', ''),
(61, 29, 'total_sales', '0'),
(62, 29, '_tax_status', 'taxable'),
(63, 29, '_tax_class', ''),
(64, 29, '_manage_stock', 'no'),
(65, 29, '_backorders', 'no'),
(66, 29, '_low_stock_amount', ''),
(67, 29, '_sold_individually', 'yes'),
(68, 29, '_weight', ''),
(69, 29, '_length', ''),
(70, 29, '_width', ''),
(71, 29, '_height', ''),
(72, 29, '_upsell_ids', 'a:0:{}'),
(73, 29, '_crosssell_ids', 'a:0:{}'),
(74, 29, '_purchase_note', ''),
(75, 29, '_default_attributes', 'a:0:{}'),
(76, 29, '_virtual', 'no'),
(77, 29, '_downloadable', 'no'),
(78, 29, '_product_image_gallery', '31,32,33,30'),
(79, 29, '_download_limit', '-1'),
(80, 29, '_download_expiry', '-1'),
(81, 29, '_stock', NULL),
(82, 29, '_stock_status', 'instock'),
(83, 29, '_product_version', '3.5.3'),
(84, 29, '_price', '19999.00'),
(85, 34, '_wc_review_count', '0'),
(86, 34, '_wc_rating_count', 'a:0:{}'),
(87, 34, '_wc_average_rating', '0'),
(88, 34, '_edit_last', '1'),
(89, 34, '_edit_lock', '1547278869:1'),
(90, 35, '_wp_attached_file', '2019/01/71zovGdItTL._SX425_.jpg'),
(91, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:260;s:4:\"file\";s:31:\"2019/01/71zovGdItTL._SX425_.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-275x260.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-286x175.jpg\";s:5:\"width\";i:286;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"71zovGdItTL._SX425_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 36, '_wp_attached_file', '2019/01/ge73-raider-5_1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(93, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:27:\"2019/01/ge73-raider-5_1.jpg\";s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-640x470.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-233x175.jpg\";s:5:\"width\";i:233;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"ge73-raider-5_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"ge73-raider-5_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"ge73-raider-5_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 34, '_thumbnail_id', '35'),
(95, 34, '_sku', ''),
(96, 34, '_regular_price', '79257.00'),
(97, 34, '_sale_price', ''),
(98, 34, '_sale_price_dates_from', ''),
(99, 34, '_sale_price_dates_to', ''),
(100, 34, 'total_sales', '0'),
(101, 34, '_tax_status', 'taxable'),
(102, 34, '_tax_class', ''),
(103, 34, '_manage_stock', 'no'),
(104, 34, '_backorders', 'no'),
(105, 34, '_low_stock_amount', ''),
(106, 34, '_sold_individually', 'yes'),
(107, 34, '_weight', ''),
(108, 34, '_length', ''),
(109, 34, '_width', ''),
(110, 34, '_height', ''),
(111, 34, '_upsell_ids', 'a:0:{}'),
(112, 34, '_crosssell_ids', 'a:0:{}'),
(113, 34, '_purchase_note', ''),
(114, 34, '_default_attributes', 'a:0:{}'),
(115, 34, '_virtual', 'no'),
(116, 34, '_downloadable', 'no'),
(117, 34, '_product_image_gallery', '35,36'),
(118, 34, '_download_limit', '-1'),
(119, 34, '_download_expiry', '-1'),
(120, 34, '_stock', NULL),
(121, 34, '_stock_status', 'instock'),
(122, 34, '_product_version', '3.5.3'),
(123, 34, '_price', '79257.00'),
(124, 37, '_wc_review_count', '0'),
(125, 37, '_wc_rating_count', 'a:0:{}'),
(126, 37, '_wc_average_rating', '0'),
(127, 38, '_wp_attached_file', '2019/01/set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys.jpeg'),
(128, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:832;s:6:\"height\";i:812;s:4:\"file\";s:66:\"2019/01/set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys.jpeg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-300x293.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:293;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-768x750.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-220x154.jpeg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-275x370.jpeg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-255x160.jpeg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-832x470.jpeg\";s:5:\"width\";i:832;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-760x510.jpeg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-179x175.jpeg\";s:5:\"width\";i:179;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-600x586.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:586;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-600x586.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:586;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:66:\"set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 37, '_edit_last', '1'),
(130, 37, '_edit_lock', '1547279243:1'),
(131, 37, '_thumbnail_id', '38'),
(132, 37, '_sku', ''),
(133, 37, '_regular_price', '1800.00'),
(134, 37, '_sale_price', '1500.00'),
(135, 37, '_sale_price_dates_from', ''),
(136, 37, '_sale_price_dates_to', ''),
(137, 37, 'total_sales', '0'),
(138, 37, '_tax_status', 'taxable'),
(139, 37, '_tax_class', ''),
(140, 37, '_manage_stock', 'no'),
(141, 37, '_backorders', 'no'),
(142, 37, '_low_stock_amount', ''),
(143, 37, '_sold_individually', 'no'),
(144, 37, '_weight', ''),
(145, 37, '_length', ''),
(146, 37, '_width', ''),
(147, 37, '_height', ''),
(148, 37, '_upsell_ids', 'a:0:{}'),
(149, 37, '_crosssell_ids', 'a:0:{}'),
(150, 37, '_purchase_note', ''),
(151, 37, '_default_attributes', 'a:0:{}'),
(152, 37, '_virtual', 'no'),
(153, 37, '_downloadable', 'no'),
(154, 37, '_product_image_gallery', ''),
(155, 37, '_download_limit', '-1'),
(156, 37, '_download_expiry', '-1'),
(157, 37, '_stock', NULL),
(158, 37, '_stock_status', 'instock'),
(159, 37, '_product_version', '3.5.3'),
(160, 37, '_price', '1500.00'),
(161, 39, '_wc_review_count', '0'),
(162, 39, '_wc_rating_count', 'a:0:{}'),
(163, 39, '_wc_average_rating', '0'),
(164, 40, '_wp_attached_file', '2019/01/005a2e598a91a254b5c95e90cb8f8b8c.jpg'),
(165, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:986;s:4:\"file\";s:44:\"2019/01/005a2e598a91a254b5c95e90cb8f8b8c.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-172x300.jpg\";s:5:\"width\";i:172;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-564x470.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-564x510.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-100x175.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"005a2e598a91a254b5c95e90cb8f8b8c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 41, '_wp_attached_file', '2019/01/main.original.700x0c.jpg'),
(167, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:32:\"2019/01/main.original.700x0c.jpg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-700x470.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-700x510.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"main.original.700x0c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"main.original.700x0c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"main.original.700x0c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 42, '_wc_review_count', '0'),
(169, 42, '_wc_rating_count', 'a:0:{}'),
(170, 42, '_wc_average_rating', '0'),
(171, 43, '_wp_attached_file', '2019/01/b0cbabb6fb6b26157788f53c9c13cc1e_350x350.jpg'),
(172, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:52:\"2019/01/b0cbabb6fb6b26157788f53c9c13cc1e_350x350.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-275x350.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"b0cbabb6fb6b26157788f53c9c13cc1e_350x350-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 42, '_edit_last', '1'),
(174, 42, '_edit_lock', '1547279894:1'),
(175, 42, '_thumbnail_id', '43'),
(176, 42, '_sku', ''),
(177, 42, '_regular_price', '674.00'),
(178, 42, '_sale_price', ''),
(179, 42, '_sale_price_dates_from', ''),
(180, 42, '_sale_price_dates_to', ''),
(181, 42, 'total_sales', '0'),
(182, 42, '_tax_status', 'taxable'),
(183, 42, '_tax_class', ''),
(184, 42, '_manage_stock', 'no'),
(185, 42, '_backorders', 'no'),
(186, 42, '_low_stock_amount', ''),
(187, 42, '_sold_individually', 'no'),
(188, 42, '_weight', ''),
(189, 42, '_length', ''),
(190, 42, '_width', ''),
(191, 42, '_height', ''),
(192, 42, '_upsell_ids', 'a:0:{}'),
(193, 42, '_crosssell_ids', 'a:0:{}'),
(194, 42, '_purchase_note', ''),
(195, 42, '_default_attributes', 'a:0:{}'),
(196, 42, '_virtual', 'no'),
(197, 42, '_downloadable', 'no'),
(198, 42, '_product_image_gallery', ''),
(199, 42, '_download_limit', '-1'),
(200, 42, '_download_expiry', '-1'),
(201, 42, '_stock', NULL),
(202, 42, '_stock_status', 'instock'),
(203, 42, '_product_version', '3.5.3'),
(204, 42, '_price', '674.00'),
(205, 44, '_wp_trash_meta_status', 'publish'),
(206, 44, '_wp_trash_meta_time', '1547280121'),
(207, 45, '_wc_review_count', '0'),
(208, 45, '_wc_rating_count', 'a:0:{}'),
(209, 45, '_wc_average_rating', '0'),
(210, 46, '_wp_attached_file', '2019/01/8a1b9d4e7fabad2f553a706c84c9ac74.jpg'),
(211, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:427;s:6:\"height\";i:640;s:4:\"file\";s:44:\"2019/01/8a1b9d4e7fabad2f553a706c84c9ac74.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-427x470.jpg\";s:5:\"width\";i:427;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-427x510.jpg\";s:5:\"width\";i:427;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-117x175.jpg\";s:5:\"width\";i:117;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"8a1b9d4e7fabad2f553a706c84c9ac74-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 45, '_edit_last', '1'),
(213, 45, '_edit_lock', '1547287250:1'),
(214, 45, '_thumbnail_id', '46'),
(215, 45, '_sku', ''),
(216, 45, '_regular_price', '1500.00'),
(217, 45, '_sale_price', '1250.00'),
(218, 45, '_sale_price_dates_from', ''),
(219, 45, '_sale_price_dates_to', ''),
(220, 45, 'total_sales', '1'),
(221, 45, '_tax_status', 'taxable'),
(222, 45, '_tax_class', ''),
(223, 45, '_manage_stock', 'no'),
(224, 45, '_backorders', 'no'),
(225, 45, '_low_stock_amount', ''),
(226, 45, '_sold_individually', 'no'),
(227, 45, '_weight', ''),
(228, 45, '_length', ''),
(229, 45, '_width', ''),
(230, 45, '_height', ''),
(231, 45, '_upsell_ids', 'a:0:{}'),
(232, 45, '_crosssell_ids', 'a:0:{}'),
(233, 45, '_purchase_note', ''),
(234, 45, '_default_attributes', 'a:0:{}'),
(235, 45, '_virtual', 'no'),
(236, 45, '_downloadable', 'no'),
(237, 45, '_product_image_gallery', ''),
(238, 45, '_download_limit', '-1'),
(239, 45, '_download_expiry', '-1'),
(240, 45, '_stock', NULL),
(241, 45, '_stock_status', 'instock'),
(242, 45, '_product_version', '3.5.3'),
(243, 45, '_price', '1250.00'),
(244, 47, '_menu_item_type', 'post_type'),
(245, 47, '_menu_item_menu_item_parent', '0'),
(246, 47, '_menu_item_object_id', '17'),
(247, 47, '_menu_item_object', 'page'),
(248, 47, '_menu_item_target', ''),
(249, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 47, '_menu_item_xfn', ''),
(251, 47, '_menu_item_url', ''),
(253, 48, '_menu_item_type', 'post_type'),
(254, 48, '_menu_item_menu_item_parent', '0'),
(255, 48, '_menu_item_object_id', '16'),
(256, 48, '_menu_item_object', 'page'),
(257, 48, '_menu_item_target', ''),
(258, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 48, '_menu_item_xfn', ''),
(260, 48, '_menu_item_url', ''),
(262, 49, '_menu_item_type', 'post_type'),
(263, 49, '_menu_item_menu_item_parent', '0'),
(264, 49, '_menu_item_object_id', '15'),
(265, 49, '_menu_item_object', 'page'),
(266, 49, '_menu_item_target', ''),
(267, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 49, '_menu_item_xfn', ''),
(269, 49, '_menu_item_url', ''),
(271, 50, '_menu_item_type', 'post_type'),
(272, 50, '_menu_item_menu_item_parent', '0'),
(273, 50, '_menu_item_object_id', '14'),
(274, 50, '_menu_item_object', 'page'),
(275, 50, '_menu_item_target', ''),
(276, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 50, '_menu_item_xfn', ''),
(278, 50, '_menu_item_url', ''),
(280, 51, '_menu_item_type', 'post_type'),
(281, 51, '_menu_item_menu_item_parent', '0'),
(282, 51, '_menu_item_object_id', '13'),
(283, 51, '_menu_item_object', 'page'),
(284, 51, '_menu_item_target', ''),
(285, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 51, '_menu_item_xfn', ''),
(287, 51, '_menu_item_url', ''),
(289, 52, '_edit_lock', '1547288607:1'),
(290, 52, '_wp_trash_meta_status', 'publish'),
(291, 52, '_wp_trash_meta_time', '1547288641'),
(292, 53, '_wp_trash_meta_status', 'publish'),
(293, 53, '_wp_trash_meta_time', '1547288700'),
(294, 1, '_edit_lock', '1547288769:1'),
(295, 1, '_wp_trash_meta_status', 'publish'),
(296, 1, '_wp_trash_meta_time', '1547288771'),
(297, 1, '_wp_desired_post_slug', 'hello-world'),
(298, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(299, 55, '_edit_lock', '1547289101:1'),
(300, 56, '_wp_attached_file', '2019/01/black-friday-fashion-friends-1345082.jpg'),
(301, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:48:\"2019/01/black-friday-fashion-friends-1345082.jpg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-960x470.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-263x175.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"black-friday-fashion-friends-1345082-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(304, 55, '_thumbnail_id', '56'),
(305, 55, '_edit_last', '1'),
(308, 55, 'apss_content_flag', '0'),
(309, 55, 'storevilla_page_layouts', 'rightsidebar'),
(310, 58, '_wp_trash_meta_status', 'publish'),
(311, 58, '_wp_trash_meta_time', '1547289042'),
(312, 59, '_wp_attached_file', '2019/01/responsive-ecommerce-websites-14-Copy.jpg'),
(313, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:489;s:6:\"height\";i:401;s:4:\"file\";s:49:\"2019/01/responsive-ecommerce-websites-14-Copy.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-300x246.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-213x175.jpg\";s:5:\"width\";i:213;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"responsive-ecommerce-websites-14-Copy-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(314, 60, '_edit_lock', '1547289126:1'),
(315, 61, '_wp_attached_file', '2019/01/responsive-ecommerce-websites-14.jpg'),
(316, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:484;s:6:\"height\";i:404;s:4:\"file\";s:44:\"2019/01/responsive-ecommerce-websites-14.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-210x175.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"responsive-ecommerce-websites-14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(317, 60, '_wp_trash_meta_status', 'publish'),
(318, 60, '_wp_trash_meta_time', '1547289132'),
(319, 62, '_wp_attached_file', '2019/01/4IlThL.jpg'),
(320, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2019/01/4IlThL.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"4IlThL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"4IlThL-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"4IlThL-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"4IlThL-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:18:\"4IlThL-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:18:\"4IlThL-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:18:\"4IlThL-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:19:\"4IlThL-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:18:\"4IlThL-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:18:\"4IlThL-280x175.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"4IlThL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"4IlThL-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"4IlThL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"4IlThL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"4IlThL-600x375.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"4IlThL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 64, '_wp_attached_file', '2019/01/cropped-young-man-woman-shopping-flat-450w-1226850274.jpg'),
(324, 64, '_wp_attachment_context', 'custom-header'),
(325, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:264;s:6:\"height\";i:180;s:4:\"file\";s:65:\"2019/01/cropped-young-man-woman-shopping-flat-450w-1226850274.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"cropped-young-man-woman-shopping-flat-450w-1226850274-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:65:\"cropped-young-man-woman-shopping-flat-450w-1226850274-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:65:\"cropped-young-man-woman-shopping-flat-450w-1226850274-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:65:\"cropped-young-man-woman-shopping-flat-450w-1226850274-257x175.jpg\";s:5:\"width\";i:257;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"cropped-young-man-woman-shopping-flat-450w-1226850274-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"cropped-young-man-woman-shopping-flat-450w-1226850274-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:63;}'),
(329, 65, '_edit_lock', '1547290180:1'),
(333, 65, '_wp_trash_meta_status', 'publish'),
(334, 65, '_wp_trash_meta_time', '1547290188'),
(335, 67, '_edit_lock', '1547291808:1'),
(336, 68, '_wp_attached_file', '2019/01/pexels-photo-974911.jpeg'),
(337, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:32:\"2019/01/pexels-photo-974911.jpeg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-220x154.jpeg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-275x333.jpeg\";s:5:\"width\";i:275;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-255x160.jpeg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-263x175.jpeg\";s:5:\"width\";i:263;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"pexels-photo-974911-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-974911-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 67, '_thumbnail_id', '68'),
(341, 67, '_edit_last', '1'),
(344, 67, 'apss_content_flag', '0'),
(345, 67, 'storevilla_page_layouts', 'rightsidebar'),
(353, 67, '_encloseme', '1'),
(354, 71, '_wp_attached_file', '2019/01/testimonial.jpg'),
(355, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:597;s:4:\"file\";s:23:\"2019/01/testimonial.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"testimonial-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"testimonial-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"testimonial-768x306.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"testimonial-1024x408.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:23:\"testimonial-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:23:\"testimonial-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:23:\"testimonial-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:24:\"testimonial-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:23:\"testimonial-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:23:\"testimonial-350x139.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"testimonial-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"testimonial-600x239.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"testimonial-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"testimonial-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"testimonial-600x239.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:239;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"testimonial-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 73, '_edit_lock', '1547291585:1'),
(360, 73, '_wp_trash_meta_status', 'publish'),
(361, 73, '_wp_trash_meta_time', '1547291601'),
(364, 75, '_wp_attached_file', '2019/01/want53294-1g1dR21501518886-1.png'),
(365, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:59;s:4:\"file\";s:40:\"2019/01/want53294-1g1dR21501518886-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"want53294-1g1dR21501518886-1-150x59.png\";s:5:\"width\";i:150;s:6:\"height\";i:59;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"want53294-1g1dR21501518886-1-100x59.png\";s:5:\"width\";i:100;s:6:\"height\";i:59;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"want53294-1g1dR21501518886-1-100x59.png\";s:5:\"width\";i:100;s:6:\"height\";i:59;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 77, '_edit_lock', '1547293503:1'),
(373, 77, '_wp_trash_meta_status', 'publish'),
(374, 77, '_wp_trash_meta_time', '1547293505'),
(375, 80, '_edit_lock', '1547293596:1'),
(376, 80, '_wp_trash_meta_status', 'publish'),
(377, 80, '_wp_trash_meta_time', '1547293603'),
(378, 81, '_edit_lock', '1547296097:1'),
(379, 81, '_edit_last', '1'),
(380, 81, 'storevilla_page_layouts', 'rightsidebar'),
(381, 84, '_order_key', 'wc_order_5c39dd85edd20'),
(382, 84, '_customer_user', '1'),
(383, 84, '_payment_method', 'cod'),
(384, 84, '_payment_method_title', 'Cash on delivery'),
(385, 84, '_transaction_id', ''),
(386, 84, '_customer_ip_address', '::1'),
(387, 84, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'),
(388, 84, '_created_via', 'checkout'),
(389, 84, '_date_completed', ''),
(390, 84, '_completed_date', ''),
(391, 84, '_date_paid', ''),
(392, 84, '_paid_date', ''),
(393, 84, '_cart_hash', '795c1fcaaf96566ab4c1a6f0064ad20d'),
(394, 84, '_billing_first_name', 'abhay'),
(395, 84, '_billing_last_name', 'naik'),
(396, 84, '_billing_company', ''),
(397, 84, '_billing_address_1', 'housing board colony'),
(398, 84, '_billing_address_2', ''),
(399, 84, '_billing_city', 'sanquelim'),
(400, 84, '_billing_state', 'GA'),
(401, 84, '_billing_postcode', '403505'),
(402, 84, '_billing_country', 'IN'),
(403, 84, '_billing_email', 'abhayofcl97@gmail.com'),
(404, 84, '_billing_phone', '7507309469'),
(405, 84, '_shipping_first_name', 'abhay'),
(406, 84, '_shipping_last_name', 'naik'),
(407, 84, '_shipping_company', ''),
(408, 84, '_shipping_address_1', 'housing board colony'),
(409, 84, '_shipping_address_2', ''),
(410, 84, '_shipping_city', 'sanquelim'),
(411, 84, '_shipping_state', 'GA'),
(412, 84, '_shipping_postcode', '403505'),
(413, 84, '_shipping_country', 'IN'),
(414, 84, '_order_currency', 'INR'),
(415, 84, '_cart_discount', '0'),
(416, 84, '_cart_discount_tax', '0'),
(417, 84, '_order_shipping', '0.00'),
(418, 84, '_order_shipping_tax', '0'),
(419, 84, '_order_tax', '0'),
(420, 84, '_order_total', '1250.00'),
(421, 84, '_order_version', '3.5.3'),
(422, 84, '_prices_include_tax', 'no'),
(423, 84, '_billing_address_index', 'abhay naik  housing board colony  sanquelim GA 403505 IN abhayofcl97@gmail.com 7507309469'),
(424, 84, '_shipping_address_index', 'abhay naik  housing board colony  sanquelim GA 403505 IN'),
(425, 84, '_download_permissions_granted', 'yes'),
(426, 84, '_recorded_sales', 'yes'),
(427, 84, '_recorded_coupon_usage_counts', 'yes'),
(428, 84, '_order_stock_reduced', 'yes'),
(429, 84, '_wcpdf_invoice_settings', 'a:18:{s:24:\"display_shipping_address\";s:1:\"1\";s:13:\"display_email\";s:1:\"1\";s:13:\"display_phone\";s:0:\"\";s:12:\"display_date\";s:12:\"invoice_date\";s:14:\"display_number\";s:14:\"invoice_number\";s:19:\"attach_to_email_ids\";a:8:{s:9:\"new_order\";s:1:\"1\";s:15:\"cancelled_order\";s:1:\"1\";s:12:\"failed_order\";s:0:\"\";s:22:\"customer_on_hold_order\";s:0:\"\";s:25:\"customer_processing_order\";s:0:\"\";s:24:\"customer_completed_order\";s:1:\"1\";s:23:\"customer_refunded_order\";s:1:\"1\";s:16:\"customer_invoice\";s:1:\"1\";}s:7:\"enabled\";s:1:\"1\";s:13:\"number_format\";a:3:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:7:\"padding\";s:0:\"\";}s:18:\"my_account_buttons\";s:9:\"available\";s:10:\"paper_size\";s:2:\"a4\";s:15:\"font_subsetting\";b:0;s:11:\"header_logo\";s:1:\"6\";s:9:\"shop_name\";a:1:{s:7:\"default\";s:10:\"shoppr.com\";}s:12:\"shop_address\";a:1:{s:7:\"default\";s:34:\"Housing Board Colony Sanquelim Goa\";}s:6:\"footer\";a:1:{s:7:\"default\";s:13:\"© Shoppr.com\";}s:7:\"extra_1\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_2\";a:1:{s:7:\"default\";s:0:\"\";}s:7:\"extra_3\";a:1:{s:7:\"default\";s:0:\"\";}}'),
(430, 84, '_wcpdf_invoice_date', '1547296138'),
(431, 84, '_wcpdf_invoice_date_formatted', '2019-01-12 12:28:58'),
(432, 84, '_wcpdf_invoice_number', '1'),
(433, 84, '_wcpdf_invoice_number_data', 'a:7:{s:6:\"number\";i:1;s:16:\"formatted_number\";s:1:\"1\";s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:13:\"document_type\";s:7:\"invoice\";s:8:\"order_id\";i:84;s:7:\"padding\";s:0:\"\";}'),
(434, 85, '_wp_attached_file', '2019/01/bank-check-icon-banking-check-checkbook-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(435, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:208;s:4:\"file\";s:53:\"2019/01/bank-check-icon-banking-check-checkbook-2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-275x208.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-252x175.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:53:\"bank-check-icon-banking-check-checkbook-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 86, '_wp_attached_file', '2019/01/38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration.jpg'),
(437, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:97:\"2019/01/38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:99:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:98:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:97:\"38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(438, 87, '_wp_trash_meta_status', 'publish'),
(439, 87, '_wp_trash_meta_time', '1547296335'),
(440, 88, '_wc_review_count', '0'),
(441, 88, '_wc_rating_count', 'a:0:{}'),
(442, 88, '_wc_average_rating', '0'),
(443, 88, '_edit_last', '1'),
(444, 88, '_edit_lock', '1547711160:1'),
(445, 89, '_wc_review_count', '0'),
(446, 89, '_wc_rating_count', 'a:0:{}'),
(447, 89, '_wc_average_rating', '0'),
(448, 89, '_edit_last', '1'),
(449, 89, '_edit_lock', '1547713159:1'),
(450, 90, '_wc_review_count', '0'),
(451, 90, '_wc_rating_count', 'a:0:{}'),
(452, 90, '_wc_average_rating', '0'),
(453, 90, '_edit_last', '1'),
(454, 90, '_edit_lock', '1547723535:1'),
(455, 90, '_sku', ''),
(458, 90, '_sale_price_dates_from', ''),
(459, 90, '_sale_price_dates_to', ''),
(460, 90, 'total_sales', '0'),
(461, 90, '_tax_status', 'taxable'),
(462, 90, '_tax_class', ''),
(463, 90, '_manage_stock', 'yes'),
(464, 90, '_backorders', 'no'),
(465, 90, '_low_stock_amount', '0'),
(466, 90, '_sold_individually', 'no'),
(467, 90, '_weight', ''),
(468, 90, '_length', ''),
(469, 90, '_width', ''),
(470, 90, '_height', ''),
(471, 90, '_upsell_ids', 'a:0:{}'),
(472, 90, '_crosssell_ids', 'a:0:{}'),
(473, 90, '_purchase_note', ''),
(474, 90, '_default_attributes', 'a:0:{}'),
(475, 90, '_virtual', 'no'),
(476, 90, '_downloadable', 'no'),
(477, 90, '_product_image_gallery', '91,92,93'),
(478, 90, '_download_limit', '-1'),
(479, 90, '_download_expiry', '-1'),
(480, 90, '_stock', '10'),
(481, 90, '_stock_status', 'instock'),
(482, 90, '_product_attributes', 'a:3:{s:5:\"brand\";a:6:{s:4:\"name\";s:5:\"Brand\";s:5:\"value\";s:14:\"Flying Machine\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_sizes\";a:6:{s:4:\"name\";s:8:\"pa_sizes\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(483, 90, '_product_version', '3.5.3'),
(485, 91, '_wp_attached_file', '2019/01/11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3.jpg'),
(486, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:87:\"2019/01/11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:88:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:88:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:88:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(487, 92, '_wp_attached_file', '2019/01/11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2.jpg'),
(488, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:87:\"2019/01/11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:88:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:88:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:88:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(489, 93, '_wp_attached_file', '2019/01/11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1.jpg'),
(490, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:87:\"2019/01/11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:88:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:88:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:88:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(491, 90, '_thumbnail_id', '93'),
(492, 90, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(493, 95, '_variation_description', ''),
(494, 95, '_sku', ''),
(495, 95, '_regular_price', '1200.00'),
(496, 95, '_sale_price', ''),
(497, 95, '_sale_price_dates_from', ''),
(498, 95, '_sale_price_dates_to', ''),
(499, 95, 'total_sales', '0'),
(500, 95, '_tax_status', 'taxable'),
(501, 95, '_tax_class', 'parent'),
(502, 95, '_manage_stock', 'no'),
(503, 95, '_backorders', 'no'),
(504, 95, '_low_stock_amount', ''),
(505, 95, '_sold_individually', 'no'),
(506, 95, '_weight', ''),
(507, 95, '_length', ''),
(508, 95, '_width', ''),
(509, 95, '_height', ''),
(510, 95, '_upsell_ids', 'a:0:{}'),
(511, 95, '_crosssell_ids', 'a:0:{}'),
(512, 95, '_purchase_note', ''),
(513, 95, '_default_attributes', 'a:0:{}'),
(514, 95, '_virtual', 'no'),
(515, 95, '_downloadable', 'no'),
(516, 95, '_product_image_gallery', ''),
(517, 95, '_download_limit', '-1'),
(518, 95, '_download_expiry', '-1'),
(519, 95, '_stock', '0'),
(520, 95, '_stock_status', 'instock'),
(521, 95, '_wc_average_rating', '0'),
(522, 95, '_wc_rating_count', 'a:0:{}'),
(523, 95, '_wc_review_count', '0'),
(524, 95, '_downloadable_files', 'a:0:{}'),
(525, 95, 'attribute_pa_sizes', 'large'),
(526, 95, 'attribute_pa_color', 'black'),
(527, 95, '_price', '1200.00'),
(528, 95, '_product_version', '3.5.3'),
(529, 96, '_variation_description', ''),
(530, 96, '_sku', ''),
(531, 96, '_regular_price', '1200.00'),
(532, 96, '_sale_price', ''),
(533, 96, '_sale_price_dates_from', ''),
(534, 96, '_sale_price_dates_to', ''),
(535, 96, 'total_sales', '0'),
(536, 96, '_tax_status', 'taxable'),
(537, 96, '_tax_class', 'parent'),
(538, 96, '_manage_stock', 'no'),
(539, 96, '_backorders', 'no'),
(540, 96, '_low_stock_amount', ''),
(541, 96, '_sold_individually', 'no'),
(542, 96, '_weight', ''),
(543, 96, '_length', ''),
(544, 96, '_width', ''),
(545, 96, '_height', ''),
(546, 96, '_upsell_ids', 'a:0:{}'),
(547, 96, '_crosssell_ids', 'a:0:{}'),
(548, 96, '_purchase_note', ''),
(549, 96, '_default_attributes', 'a:0:{}'),
(550, 96, '_virtual', 'no'),
(551, 96, '_downloadable', 'no'),
(552, 96, '_product_image_gallery', ''),
(553, 96, '_download_limit', '-1'),
(554, 96, '_download_expiry', '-1'),
(555, 96, '_stock', '0'),
(556, 96, '_stock_status', 'instock'),
(557, 96, '_wc_average_rating', '0'),
(558, 96, '_wc_rating_count', 'a:0:{}'),
(559, 96, '_wc_review_count', '0'),
(560, 96, '_downloadable_files', 'a:0:{}'),
(561, 96, 'attribute_pa_sizes', 'small'),
(562, 96, 'attribute_pa_color', 'black'),
(563, 96, '_price', '1200.00'),
(564, 96, '_product_version', '3.5.3'),
(565, 97, '_variation_description', ''),
(566, 97, '_sku', ''),
(567, 97, '_regular_price', '1200.00'),
(568, 97, '_sale_price', ''),
(569, 97, '_sale_price_dates_from', ''),
(570, 97, '_sale_price_dates_to', ''),
(571, 97, 'total_sales', '0'),
(572, 97, '_tax_status', 'taxable'),
(573, 97, '_tax_class', 'parent'),
(574, 97, '_manage_stock', 'no'),
(575, 97, '_backorders', 'no'),
(576, 97, '_low_stock_amount', ''),
(577, 97, '_sold_individually', 'no'),
(578, 97, '_weight', ''),
(579, 97, '_length', ''),
(580, 97, '_width', ''),
(581, 97, '_height', ''),
(582, 97, '_upsell_ids', 'a:0:{}'),
(583, 97, '_crosssell_ids', 'a:0:{}'),
(584, 97, '_purchase_note', ''),
(585, 97, '_default_attributes', 'a:0:{}'),
(586, 97, '_virtual', 'no'),
(587, 97, '_downloadable', 'no'),
(588, 97, '_product_image_gallery', ''),
(589, 97, '_download_limit', '-1'),
(590, 97, '_download_expiry', '-1'),
(591, 97, '_stock', '0'),
(592, 97, '_stock_status', 'instock'),
(593, 97, '_wc_average_rating', '0'),
(594, 97, '_wc_rating_count', 'a:0:{}'),
(595, 97, '_wc_review_count', '0'),
(596, 97, '_downloadable_files', 'a:0:{}'),
(597, 97, 'attribute_pa_sizes', 'medium'),
(598, 97, 'attribute_pa_color', 'black'),
(599, 97, '_price', '1200.00'),
(600, 97, '_product_version', '3.5.3'),
(601, 98, '_variation_description', ''),
(602, 98, '_sku', ''),
(603, 98, '_regular_price', '1200.00'),
(604, 98, '_sale_price', ''),
(605, 98, '_sale_price_dates_from', ''),
(606, 98, '_sale_price_dates_to', ''),
(607, 98, 'total_sales', '0'),
(608, 98, '_tax_status', 'taxable'),
(609, 98, '_tax_class', 'parent'),
(610, 98, '_manage_stock', 'no'),
(611, 98, '_backorders', 'no'),
(612, 98, '_low_stock_amount', ''),
(613, 98, '_sold_individually', 'no'),
(614, 98, '_weight', ''),
(615, 98, '_length', ''),
(616, 98, '_width', ''),
(617, 98, '_height', ''),
(618, 98, '_upsell_ids', 'a:0:{}'),
(619, 98, '_crosssell_ids', 'a:0:{}'),
(620, 98, '_purchase_note', ''),
(621, 98, '_default_attributes', 'a:0:{}'),
(622, 98, '_virtual', 'no'),
(623, 98, '_downloadable', 'no'),
(624, 98, '_product_image_gallery', ''),
(625, 98, '_download_limit', '-1'),
(626, 98, '_download_expiry', '-1'),
(627, 98, '_stock', '0'),
(628, 98, '_stock_status', 'instock'),
(629, 98, '_wc_average_rating', '0'),
(630, 98, '_wc_rating_count', 'a:0:{}'),
(631, 98, '_wc_review_count', '0'),
(632, 98, '_downloadable_files', 'a:0:{}'),
(633, 98, 'attribute_pa_sizes', 'xtra-large'),
(634, 98, 'attribute_pa_color', 'black'),
(635, 98, '_price', '1200.00'),
(636, 98, '_product_version', '3.5.3'),
(637, 99, '_variation_description', ''),
(638, 99, '_sku', ''),
(639, 99, '_regular_price', '1200.00'),
(640, 99, '_sale_price', ''),
(641, 99, '_sale_price_dates_from', ''),
(642, 99, '_sale_price_dates_to', ''),
(643, 99, 'total_sales', '0'),
(644, 99, '_tax_status', 'taxable'),
(645, 99, '_tax_class', 'parent'),
(646, 99, '_manage_stock', 'no'),
(647, 99, '_backorders', 'no'),
(648, 99, '_low_stock_amount', ''),
(649, 99, '_sold_individually', 'no'),
(650, 99, '_weight', ''),
(651, 99, '_length', ''),
(652, 99, '_width', ''),
(653, 99, '_height', ''),
(654, 99, '_upsell_ids', 'a:0:{}'),
(655, 99, '_crosssell_ids', 'a:0:{}'),
(656, 99, '_purchase_note', ''),
(657, 99, '_default_attributes', 'a:0:{}'),
(658, 99, '_virtual', 'no'),
(659, 99, '_downloadable', 'no'),
(660, 99, '_product_image_gallery', ''),
(661, 99, '_download_limit', '-1'),
(662, 99, '_download_expiry', '-1'),
(663, 99, '_stock', '0'),
(664, 99, '_stock_status', 'instock'),
(665, 99, '_wc_average_rating', '0'),
(666, 99, '_wc_rating_count', 'a:0:{}'),
(667, 99, '_wc_review_count', '0'),
(668, 99, '_downloadable_files', 'a:0:{}'),
(669, 99, 'attribute_pa_sizes', 'large'),
(670, 99, 'attribute_pa_color', 'blue'),
(671, 99, '_price', '1200.00'),
(672, 99, '_product_version', '3.5.3'),
(673, 100, '_variation_description', ''),
(674, 100, '_sku', ''),
(675, 100, '_regular_price', '1200.00'),
(676, 100, '_sale_price', ''),
(677, 100, '_sale_price_dates_from', ''),
(678, 100, '_sale_price_dates_to', ''),
(679, 100, 'total_sales', '0'),
(680, 100, '_tax_status', 'taxable'),
(681, 100, '_tax_class', 'parent'),
(682, 100, '_manage_stock', 'no'),
(683, 100, '_backorders', 'no'),
(684, 100, '_low_stock_amount', ''),
(685, 100, '_sold_individually', 'no'),
(686, 100, '_weight', ''),
(687, 100, '_length', ''),
(688, 100, '_width', ''),
(689, 100, '_height', ''),
(690, 100, '_upsell_ids', 'a:0:{}'),
(691, 100, '_crosssell_ids', 'a:0:{}'),
(692, 100, '_purchase_note', ''),
(693, 100, '_default_attributes', 'a:0:{}'),
(694, 100, '_virtual', 'no'),
(695, 100, '_downloadable', 'no'),
(696, 100, '_product_image_gallery', ''),
(697, 100, '_download_limit', '-1'),
(698, 100, '_download_expiry', '-1'),
(699, 100, '_stock', '0'),
(700, 100, '_stock_status', 'instock'),
(701, 100, '_wc_average_rating', '0'),
(702, 100, '_wc_rating_count', 'a:0:{}'),
(703, 100, '_wc_review_count', '0'),
(704, 100, '_downloadable_files', 'a:0:{}'),
(705, 100, 'attribute_pa_sizes', 'small'),
(706, 100, 'attribute_pa_color', 'blue'),
(707, 100, '_price', '1200.00'),
(708, 100, '_product_version', '3.5.3'),
(709, 101, '_variation_description', ''),
(710, 101, '_sku', ''),
(711, 101, '_regular_price', '1200.00'),
(712, 101, '_sale_price', ''),
(713, 101, '_sale_price_dates_from', ''),
(714, 101, '_sale_price_dates_to', ''),
(715, 101, 'total_sales', '0'),
(716, 101, '_tax_status', 'taxable'),
(717, 101, '_tax_class', 'parent'),
(718, 101, '_manage_stock', 'no'),
(719, 101, '_backorders', 'no'),
(720, 101, '_low_stock_amount', ''),
(721, 101, '_sold_individually', 'no'),
(722, 101, '_weight', ''),
(723, 101, '_length', ''),
(724, 101, '_width', ''),
(725, 101, '_height', ''),
(726, 101, '_upsell_ids', 'a:0:{}'),
(727, 101, '_crosssell_ids', 'a:0:{}'),
(728, 101, '_purchase_note', ''),
(729, 101, '_default_attributes', 'a:0:{}'),
(730, 101, '_virtual', 'no'),
(731, 101, '_downloadable', 'no'),
(732, 101, '_product_image_gallery', ''),
(733, 101, '_download_limit', '-1'),
(734, 101, '_download_expiry', '-1'),
(735, 101, '_stock', '0'),
(736, 101, '_stock_status', 'instock'),
(737, 101, '_wc_average_rating', '0'),
(738, 101, '_wc_rating_count', 'a:0:{}'),
(739, 101, '_wc_review_count', '0'),
(740, 101, '_downloadable_files', 'a:0:{}'),
(741, 101, 'attribute_pa_sizes', 'medium'),
(742, 101, 'attribute_pa_color', 'blue'),
(743, 101, '_price', '1200.00'),
(744, 101, '_product_version', '3.5.3'),
(745, 102, '_variation_description', ''),
(746, 102, '_sku', ''),
(747, 102, '_regular_price', '1200.00'),
(748, 102, '_sale_price', ''),
(749, 102, '_sale_price_dates_from', ''),
(750, 102, '_sale_price_dates_to', ''),
(751, 102, 'total_sales', '0'),
(752, 102, '_tax_status', 'taxable'),
(753, 102, '_tax_class', 'parent'),
(754, 102, '_manage_stock', 'no'),
(755, 102, '_backorders', 'no'),
(756, 102, '_low_stock_amount', ''),
(757, 102, '_sold_individually', 'no'),
(758, 102, '_weight', ''),
(759, 102, '_length', ''),
(760, 102, '_width', ''),
(761, 102, '_height', ''),
(762, 102, '_upsell_ids', 'a:0:{}'),
(763, 102, '_crosssell_ids', 'a:0:{}'),
(764, 102, '_purchase_note', ''),
(765, 102, '_default_attributes', 'a:0:{}'),
(766, 102, '_virtual', 'no'),
(767, 102, '_downloadable', 'no'),
(768, 102, '_product_image_gallery', ''),
(769, 102, '_download_limit', '-1'),
(770, 102, '_download_expiry', '-1'),
(771, 102, '_stock', '0'),
(772, 102, '_stock_status', 'instock'),
(773, 102, '_wc_average_rating', '0'),
(774, 102, '_wc_rating_count', 'a:0:{}'),
(775, 102, '_wc_review_count', '0'),
(776, 102, '_downloadable_files', 'a:0:{}'),
(777, 102, 'attribute_pa_sizes', 'xtra-large'),
(778, 102, 'attribute_pa_color', 'blue'),
(779, 102, '_price', '1200.00'),
(780, 102, '_product_version', '3.5.3'),
(781, 103, '_variation_description', ''),
(782, 103, '_sku', ''),
(783, 103, '_regular_price', '1390.00'),
(784, 103, '_sale_price', ''),
(785, 103, '_sale_price_dates_from', ''),
(786, 103, '_sale_price_dates_to', ''),
(787, 103, 'total_sales', '0'),
(788, 103, '_tax_status', 'taxable'),
(789, 103, '_tax_class', 'parent'),
(790, 103, '_manage_stock', 'no'),
(791, 103, '_backorders', 'no'),
(792, 103, '_low_stock_amount', ''),
(793, 103, '_sold_individually', 'no'),
(794, 103, '_weight', ''),
(795, 103, '_length', ''),
(796, 103, '_width', ''),
(797, 103, '_height', ''),
(798, 103, '_upsell_ids', 'a:0:{}'),
(799, 103, '_crosssell_ids', 'a:0:{}'),
(800, 103, '_purchase_note', ''),
(801, 103, '_default_attributes', 'a:0:{}'),
(802, 103, '_virtual', 'no'),
(803, 103, '_downloadable', 'no'),
(804, 103, '_product_image_gallery', ''),
(805, 103, '_download_limit', '-1'),
(806, 103, '_download_expiry', '-1'),
(807, 103, '_stock', '0'),
(808, 103, '_stock_status', 'instock'),
(809, 103, '_wc_average_rating', '0'),
(810, 103, '_wc_rating_count', 'a:0:{}'),
(811, 103, '_wc_review_count', '0'),
(812, 103, '_downloadable_files', 'a:0:{}'),
(813, 103, 'attribute_pa_sizes', 'large'),
(814, 103, 'attribute_pa_color', 'red'),
(815, 103, '_price', '1390.00'),
(816, 103, '_product_version', '3.5.3'),
(817, 104, '_variation_description', ''),
(818, 104, '_sku', ''),
(819, 104, '_regular_price', '1200.00'),
(820, 104, '_sale_price', ''),
(821, 104, '_sale_price_dates_from', ''),
(822, 104, '_sale_price_dates_to', ''),
(823, 104, 'total_sales', '0'),
(824, 104, '_tax_status', 'taxable'),
(825, 104, '_tax_class', 'parent'),
(826, 104, '_manage_stock', 'no'),
(827, 104, '_backorders', 'no'),
(828, 104, '_low_stock_amount', ''),
(829, 104, '_sold_individually', 'no'),
(830, 104, '_weight', ''),
(831, 104, '_length', ''),
(832, 104, '_width', ''),
(833, 104, '_height', ''),
(834, 104, '_upsell_ids', 'a:0:{}'),
(835, 104, '_crosssell_ids', 'a:0:{}'),
(836, 104, '_purchase_note', ''),
(837, 104, '_default_attributes', 'a:0:{}'),
(838, 104, '_virtual', 'no'),
(839, 104, '_downloadable', 'no'),
(840, 104, '_product_image_gallery', ''),
(841, 104, '_download_limit', '-1'),
(842, 104, '_download_expiry', '-1'),
(843, 104, '_stock', '0'),
(844, 104, '_stock_status', 'instock'),
(845, 104, '_wc_average_rating', '0'),
(846, 104, '_wc_rating_count', 'a:0:{}'),
(847, 104, '_wc_review_count', '0'),
(848, 104, '_downloadable_files', 'a:0:{}'),
(849, 104, 'attribute_pa_sizes', 'small'),
(850, 104, 'attribute_pa_color', 'red'),
(851, 104, '_price', '1200.00'),
(852, 104, '_product_version', '3.5.3'),
(853, 105, '_variation_description', ''),
(854, 105, '_sku', ''),
(855, 105, '_regular_price', '1390.00'),
(856, 105, '_sale_price', ''),
(857, 105, '_sale_price_dates_from', ''),
(858, 105, '_sale_price_dates_to', ''),
(859, 105, 'total_sales', '0'),
(860, 105, '_tax_status', 'taxable'),
(861, 105, '_tax_class', 'parent'),
(862, 105, '_manage_stock', 'no'),
(863, 105, '_backorders', 'no'),
(864, 105, '_low_stock_amount', ''),
(865, 105, '_sold_individually', 'no'),
(866, 105, '_weight', ''),
(867, 105, '_length', ''),
(868, 105, '_width', ''),
(869, 105, '_height', ''),
(870, 105, '_upsell_ids', 'a:0:{}'),
(871, 105, '_crosssell_ids', 'a:0:{}'),
(872, 105, '_purchase_note', ''),
(873, 105, '_default_attributes', 'a:0:{}'),
(874, 105, '_virtual', 'no'),
(875, 105, '_downloadable', 'no'),
(876, 105, '_product_image_gallery', ''),
(877, 105, '_download_limit', '-1'),
(878, 105, '_download_expiry', '-1'),
(879, 105, '_stock', '0'),
(880, 105, '_stock_status', 'instock'),
(881, 105, '_wc_average_rating', '0'),
(882, 105, '_wc_rating_count', 'a:0:{}'),
(883, 105, '_wc_review_count', '0'),
(884, 105, '_downloadable_files', 'a:0:{}'),
(885, 105, 'attribute_pa_sizes', 'medium'),
(886, 105, 'attribute_pa_color', 'red'),
(887, 105, '_price', '1390.00'),
(888, 105, '_product_version', '3.5.3'),
(889, 106, '_variation_description', ''),
(890, 106, '_sku', ''),
(891, 106, '_regular_price', '1390.00'),
(892, 106, '_sale_price', ''),
(893, 106, '_sale_price_dates_from', ''),
(894, 106, '_sale_price_dates_to', ''),
(895, 106, 'total_sales', '0'),
(896, 106, '_tax_status', 'taxable'),
(897, 106, '_tax_class', 'parent'),
(898, 106, '_manage_stock', 'no'),
(899, 106, '_backorders', 'no'),
(900, 106, '_low_stock_amount', ''),
(901, 106, '_sold_individually', 'no'),
(902, 106, '_weight', ''),
(903, 106, '_length', ''),
(904, 106, '_width', ''),
(905, 106, '_height', ''),
(906, 106, '_upsell_ids', 'a:0:{}'),
(907, 106, '_crosssell_ids', 'a:0:{}'),
(908, 106, '_purchase_note', ''),
(909, 106, '_default_attributes', 'a:0:{}'),
(910, 106, '_virtual', 'no'),
(911, 106, '_downloadable', 'no'),
(912, 106, '_product_image_gallery', ''),
(913, 106, '_download_limit', '-1'),
(914, 106, '_download_expiry', '-1'),
(915, 106, '_stock', '0'),
(916, 106, '_stock_status', 'instock'),
(917, 106, '_wc_average_rating', '0'),
(918, 106, '_wc_rating_count', 'a:0:{}'),
(919, 106, '_wc_review_count', '0'),
(920, 106, '_downloadable_files', 'a:0:{}'),
(921, 106, 'attribute_pa_sizes', 'xtra-large'),
(922, 106, 'attribute_pa_color', 'red'),
(923, 106, '_price', '1390.00'),
(924, 106, '_product_version', '3.5.3'),
(925, 107, '_variation_description', ''),
(926, 107, '_sku', ''),
(927, 107, '_regular_price', '1200.00'),
(928, 107, '_sale_price', ''),
(929, 107, '_sale_price_dates_from', ''),
(930, 107, '_sale_price_dates_to', ''),
(931, 107, 'total_sales', '0'),
(932, 107, '_tax_status', 'taxable'),
(933, 107, '_tax_class', 'parent'),
(934, 107, '_manage_stock', 'no'),
(935, 107, '_backorders', 'no'),
(936, 107, '_low_stock_amount', ''),
(937, 107, '_sold_individually', 'no'),
(938, 107, '_weight', ''),
(939, 107, '_length', ''),
(940, 107, '_width', ''),
(941, 107, '_height', ''),
(942, 107, '_upsell_ids', 'a:0:{}'),
(943, 107, '_crosssell_ids', 'a:0:{}'),
(944, 107, '_purchase_note', ''),
(945, 107, '_default_attributes', 'a:0:{}'),
(946, 107, '_virtual', 'no'),
(947, 107, '_downloadable', 'no'),
(948, 107, '_product_image_gallery', ''),
(949, 107, '_download_limit', '-1'),
(950, 107, '_download_expiry', '-1'),
(951, 107, '_stock', '0'),
(952, 107, '_stock_status', 'instock'),
(953, 107, '_wc_average_rating', '0'),
(954, 107, '_wc_rating_count', 'a:0:{}'),
(955, 107, '_wc_review_count', '0'),
(956, 107, '_downloadable_files', 'a:0:{}'),
(957, 107, 'attribute_pa_sizes', 'large'),
(958, 107, 'attribute_pa_color', 'white'),
(959, 107, '_price', '1200.00'),
(960, 107, '_product_version', '3.5.3'),
(961, 108, '_variation_description', ''),
(962, 108, '_sku', ''),
(963, 108, '_regular_price', '1200.00'),
(964, 108, '_sale_price', ''),
(965, 108, '_sale_price_dates_from', ''),
(966, 108, '_sale_price_dates_to', ''),
(967, 108, 'total_sales', '0'),
(968, 108, '_tax_status', 'taxable'),
(969, 108, '_tax_class', 'parent'),
(970, 108, '_manage_stock', 'no'),
(971, 108, '_backorders', 'no'),
(972, 108, '_low_stock_amount', ''),
(973, 108, '_sold_individually', 'no'),
(974, 108, '_weight', ''),
(975, 108, '_length', ''),
(976, 108, '_width', ''),
(977, 108, '_height', ''),
(978, 108, '_upsell_ids', 'a:0:{}'),
(979, 108, '_crosssell_ids', 'a:0:{}'),
(980, 108, '_purchase_note', ''),
(981, 108, '_default_attributes', 'a:0:{}'),
(982, 108, '_virtual', 'no'),
(983, 108, '_downloadable', 'no'),
(984, 108, '_product_image_gallery', ''),
(985, 108, '_download_limit', '-1'),
(986, 108, '_download_expiry', '-1'),
(987, 108, '_stock', '0'),
(988, 108, '_stock_status', 'instock'),
(989, 108, '_wc_average_rating', '0'),
(990, 108, '_wc_rating_count', 'a:0:{}'),
(991, 108, '_wc_review_count', '0'),
(992, 108, '_downloadable_files', 'a:0:{}'),
(993, 108, 'attribute_pa_sizes', 'small'),
(994, 108, 'attribute_pa_color', 'white'),
(995, 108, '_price', '1200.00'),
(996, 108, '_product_version', '3.5.3'),
(997, 109, '_variation_description', ''),
(998, 109, '_sku', ''),
(999, 109, '_regular_price', '1200.00'),
(1000, 109, '_sale_price', ''),
(1001, 109, '_sale_price_dates_from', ''),
(1002, 109, '_sale_price_dates_to', ''),
(1003, 109, 'total_sales', '0'),
(1004, 109, '_tax_status', 'taxable'),
(1005, 109, '_tax_class', 'parent'),
(1006, 109, '_manage_stock', 'no'),
(1007, 109, '_backorders', 'no'),
(1008, 109, '_low_stock_amount', ''),
(1009, 109, '_sold_individually', 'no'),
(1010, 109, '_weight', ''),
(1011, 109, '_length', ''),
(1012, 109, '_width', ''),
(1013, 109, '_height', ''),
(1014, 109, '_upsell_ids', 'a:0:{}'),
(1015, 109, '_crosssell_ids', 'a:0:{}'),
(1016, 109, '_purchase_note', ''),
(1017, 109, '_default_attributes', 'a:0:{}'),
(1018, 109, '_virtual', 'no'),
(1019, 109, '_downloadable', 'no'),
(1020, 109, '_product_image_gallery', ''),
(1021, 109, '_download_limit', '-1'),
(1022, 109, '_download_expiry', '-1'),
(1023, 109, '_stock', '0'),
(1024, 109, '_stock_status', 'instock'),
(1025, 109, '_wc_average_rating', '0'),
(1026, 109, '_wc_rating_count', 'a:0:{}'),
(1027, 109, '_wc_review_count', '0'),
(1028, 109, '_downloadable_files', 'a:0:{}'),
(1029, 109, 'attribute_pa_sizes', 'medium'),
(1030, 109, 'attribute_pa_color', 'white'),
(1031, 109, '_price', '1200.00'),
(1032, 109, '_product_version', '3.5.3'),
(1033, 110, '_variation_description', ''),
(1034, 110, '_sku', ''),
(1035, 110, '_regular_price', ''),
(1036, 110, '_sale_price', ''),
(1037, 110, '_sale_price_dates_from', ''),
(1038, 110, '_sale_price_dates_to', ''),
(1039, 110, 'total_sales', '0'),
(1040, 110, '_tax_status', 'taxable'),
(1041, 110, '_tax_class', 'parent'),
(1042, 110, '_manage_stock', 'no'),
(1043, 110, '_backorders', 'no'),
(1044, 110, '_low_stock_amount', ''),
(1045, 110, '_sold_individually', 'no'),
(1046, 110, '_weight', ''),
(1047, 110, '_length', ''),
(1048, 110, '_width', ''),
(1049, 110, '_height', ''),
(1050, 110, '_upsell_ids', 'a:0:{}'),
(1051, 110, '_crosssell_ids', 'a:0:{}'),
(1052, 110, '_purchase_note', ''),
(1053, 110, '_default_attributes', 'a:0:{}'),
(1054, 110, '_virtual', 'no'),
(1055, 110, '_downloadable', 'no'),
(1056, 110, '_product_image_gallery', ''),
(1057, 110, '_download_limit', '-1'),
(1058, 110, '_download_expiry', '-1'),
(1059, 110, '_stock', NULL),
(1060, 110, '_stock_status', 'instock'),
(1061, 110, '_wc_average_rating', '0'),
(1062, 110, '_wc_rating_count', 'a:0:{}'),
(1063, 110, '_wc_review_count', '0'),
(1064, 110, '_downloadable_files', 'a:0:{}'),
(1065, 110, 'attribute_pa_sizes', 'xtra-large'),
(1066, 110, 'attribute_pa_color', 'white'),
(1067, 110, '_price', ''),
(1068, 110, '_product_version', '3.5.3'),
(1069, 111, '_variation_description', ''),
(1070, 111, '_sku', ''),
(1071, 111, '_regular_price', ''),
(1072, 111, '_sale_price', ''),
(1073, 111, '_sale_price_dates_from', ''),
(1074, 111, '_sale_price_dates_to', ''),
(1075, 111, 'total_sales', '0'),
(1076, 111, '_tax_status', 'taxable'),
(1077, 111, '_tax_class', 'parent'),
(1078, 111, '_manage_stock', 'no'),
(1079, 111, '_backorders', 'no'),
(1080, 111, '_low_stock_amount', ''),
(1081, 111, '_sold_individually', 'no'),
(1082, 111, '_weight', ''),
(1083, 111, '_length', ''),
(1084, 111, '_width', ''),
(1085, 111, '_height', ''),
(1086, 111, '_upsell_ids', 'a:0:{}'),
(1087, 111, '_crosssell_ids', 'a:0:{}'),
(1088, 111, '_purchase_note', ''),
(1089, 111, '_default_attributes', 'a:0:{}'),
(1090, 111, '_virtual', 'no'),
(1091, 111, '_downloadable', 'no'),
(1092, 111, '_product_image_gallery', ''),
(1093, 111, '_download_limit', '-1'),
(1094, 111, '_download_expiry', '-1'),
(1095, 111, '_stock', NULL),
(1096, 111, '_stock_status', 'instock'),
(1097, 111, '_wc_average_rating', '0'),
(1098, 111, '_wc_rating_count', 'a:0:{}'),
(1099, 111, '_wc_review_count', '0'),
(1100, 111, '_downloadable_files', 'a:0:{}'),
(1101, 111, 'attribute_pa_sizes', 'large'),
(1102, 111, 'attribute_pa_color', 'yellow'),
(1103, 111, '_price', ''),
(1104, 111, '_product_version', '3.5.3'),
(1105, 112, '_variation_description', ''),
(1106, 112, '_sku', ''),
(1107, 112, '_regular_price', ''),
(1108, 112, '_sale_price', ''),
(1109, 112, '_sale_price_dates_from', ''),
(1110, 112, '_sale_price_dates_to', ''),
(1111, 112, 'total_sales', '0'),
(1112, 112, '_tax_status', 'taxable'),
(1113, 112, '_tax_class', 'parent'),
(1114, 112, '_manage_stock', 'no'),
(1115, 112, '_backorders', 'no'),
(1116, 112, '_low_stock_amount', ''),
(1117, 112, '_sold_individually', 'no'),
(1118, 112, '_weight', ''),
(1119, 112, '_length', ''),
(1120, 112, '_width', ''),
(1121, 112, '_height', ''),
(1122, 112, '_upsell_ids', 'a:0:{}'),
(1123, 112, '_crosssell_ids', 'a:0:{}'),
(1124, 112, '_purchase_note', ''),
(1125, 112, '_default_attributes', 'a:0:{}'),
(1126, 112, '_virtual', 'no'),
(1127, 112, '_downloadable', 'no'),
(1128, 112, '_product_image_gallery', ''),
(1129, 112, '_download_limit', '-1'),
(1130, 112, '_download_expiry', '-1'),
(1131, 112, '_stock', NULL),
(1132, 112, '_stock_status', 'instock'),
(1133, 112, '_wc_average_rating', '0'),
(1134, 112, '_wc_rating_count', 'a:0:{}'),
(1135, 112, '_wc_review_count', '0'),
(1136, 112, '_downloadable_files', 'a:0:{}'),
(1137, 112, 'attribute_pa_sizes', 'small'),
(1138, 112, 'attribute_pa_color', 'yellow'),
(1139, 112, '_price', ''),
(1140, 112, '_product_version', '3.5.3'),
(1141, 113, '_variation_description', ''),
(1142, 113, '_sku', ''),
(1143, 113, '_regular_price', ''),
(1144, 113, '_sale_price', ''),
(1145, 113, '_sale_price_dates_from', ''),
(1146, 113, '_sale_price_dates_to', ''),
(1147, 113, 'total_sales', '0'),
(1148, 113, '_tax_status', 'taxable'),
(1149, 113, '_tax_class', 'parent'),
(1150, 113, '_manage_stock', 'no'),
(1151, 113, '_backorders', 'no'),
(1152, 113, '_low_stock_amount', ''),
(1153, 113, '_sold_individually', 'no'),
(1154, 113, '_weight', ''),
(1155, 113, '_length', ''),
(1156, 113, '_width', ''),
(1157, 113, '_height', ''),
(1158, 113, '_upsell_ids', 'a:0:{}'),
(1159, 113, '_crosssell_ids', 'a:0:{}'),
(1160, 113, '_purchase_note', ''),
(1161, 113, '_default_attributes', 'a:0:{}'),
(1162, 113, '_virtual', 'no'),
(1163, 113, '_downloadable', 'no'),
(1164, 113, '_product_image_gallery', ''),
(1165, 113, '_download_limit', '-1'),
(1166, 113, '_download_expiry', '-1'),
(1167, 113, '_stock', NULL),
(1168, 113, '_stock_status', 'instock'),
(1169, 113, '_wc_average_rating', '0'),
(1170, 113, '_wc_rating_count', 'a:0:{}'),
(1171, 113, '_wc_review_count', '0'),
(1172, 113, '_downloadable_files', 'a:0:{}'),
(1173, 113, 'attribute_pa_sizes', 'medium'),
(1174, 113, 'attribute_pa_color', 'yellow'),
(1175, 113, '_price', ''),
(1176, 113, '_product_version', '3.5.3'),
(1177, 114, '_variation_description', ''),
(1178, 114, '_sku', ''),
(1179, 114, '_regular_price', ''),
(1180, 114, '_sale_price', ''),
(1181, 114, '_sale_price_dates_from', ''),
(1182, 114, '_sale_price_dates_to', ''),
(1183, 114, 'total_sales', '0'),
(1184, 114, '_tax_status', 'taxable'),
(1185, 114, '_tax_class', 'parent'),
(1186, 114, '_manage_stock', 'no'),
(1187, 114, '_backorders', 'no'),
(1188, 114, '_low_stock_amount', ''),
(1189, 114, '_sold_individually', 'no'),
(1190, 114, '_weight', ''),
(1191, 114, '_length', ''),
(1192, 114, '_width', ''),
(1193, 114, '_height', ''),
(1194, 114, '_upsell_ids', 'a:0:{}'),
(1195, 114, '_crosssell_ids', 'a:0:{}'),
(1196, 114, '_purchase_note', ''),
(1197, 114, '_default_attributes', 'a:0:{}'),
(1198, 114, '_virtual', 'no'),
(1199, 114, '_downloadable', 'no'),
(1200, 114, '_product_image_gallery', ''),
(1201, 114, '_download_limit', '-1'),
(1202, 114, '_download_expiry', '-1'),
(1203, 114, '_stock', NULL),
(1204, 114, '_stock_status', 'instock'),
(1205, 114, '_wc_average_rating', '0'),
(1206, 114, '_wc_rating_count', 'a:0:{}'),
(1207, 114, '_wc_review_count', '0'),
(1208, 114, '_downloadable_files', 'a:0:{}'),
(1209, 114, 'attribute_pa_sizes', 'xtra-large'),
(1210, 114, 'attribute_pa_color', 'yellow'),
(1211, 114, '_price', ''),
(1212, 114, '_product_version', '3.5.3'),
(1217, 103, '_thumbnail_id', '93'),
(1218, 104, '_thumbnail_id', '93'),
(1219, 105, '_thumbnail_id', '93'),
(1220, 106, '_thumbnail_id', '93'),
(1221, 90, '_price', '1200.00'),
(1222, 90, '_price', '1390.00'),
(1223, 90, '_regular_price', ''),
(1224, 90, '_sale_price', ''),
(1225, 115, '_wc_review_count', '0'),
(1226, 115, '_wc_rating_count', 'a:0:{}'),
(1227, 115, '_wc_average_rating', '0'),
(1228, 115, '_edit_last', '1'),
(1229, 115, '_edit_lock', '1547724338:1'),
(1230, 115, '_sku', ''),
(1233, 115, '_sale_price_dates_from', ''),
(1234, 115, '_sale_price_dates_to', ''),
(1235, 115, 'total_sales', '0'),
(1236, 115, '_tax_status', 'taxable'),
(1237, 115, '_tax_class', ''),
(1238, 115, '_manage_stock', 'yes'),
(1239, 115, '_backorders', 'no'),
(1240, 115, '_low_stock_amount', '0'),
(1241, 115, '_sold_individually', 'no'),
(1242, 115, '_weight', ''),
(1243, 115, '_length', ''),
(1244, 115, '_width', ''),
(1245, 115, '_height', ''),
(1246, 115, '_upsell_ids', 'a:0:{}'),
(1247, 115, '_crosssell_ids', 'a:0:{}'),
(1248, 115, '_purchase_note', ''),
(1249, 115, '_default_attributes', 'a:0:{}'),
(1250, 115, '_virtual', 'no'),
(1251, 115, '_downloadable', 'no'),
(1252, 115, '_product_image_gallery', '121,122,123'),
(1253, 115, '_download_limit', '-1'),
(1254, 115, '_download_expiry', '-1'),
(1255, 115, '_stock', '10'),
(1256, 115, '_stock_status', 'instock'),
(1257, 115, '_product_attributes', 'a:1:{s:8:\"pa_sizes\";a:6:{s:4:\"name\";s:8:\"pa_sizes\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1258, 115, '_product_version', '3.5.3'),
(1259, 116, '_variation_description', ''),
(1260, 116, '_sku', ''),
(1261, 116, '_regular_price', '1000.00'),
(1262, 116, '_sale_price', ''),
(1263, 116, '_sale_price_dates_from', ''),
(1264, 116, '_sale_price_dates_to', ''),
(1265, 116, 'total_sales', '0'),
(1266, 116, '_tax_status', 'taxable'),
(1267, 116, '_tax_class', 'parent'),
(1268, 116, '_manage_stock', 'no'),
(1269, 116, '_backorders', 'no'),
(1270, 116, '_low_stock_amount', ''),
(1271, 116, '_sold_individually', 'no'),
(1272, 116, '_weight', ''),
(1273, 116, '_length', ''),
(1274, 116, '_width', ''),
(1275, 116, '_height', ''),
(1276, 116, '_upsell_ids', 'a:0:{}'),
(1277, 116, '_crosssell_ids', 'a:0:{}'),
(1278, 116, '_purchase_note', ''),
(1279, 116, '_default_attributes', 'a:0:{}'),
(1280, 116, '_virtual', 'no'),
(1281, 116, '_downloadable', 'no'),
(1282, 116, '_product_image_gallery', ''),
(1283, 116, '_download_limit', '-1'),
(1284, 116, '_download_expiry', '-1'),
(1285, 116, '_stock', NULL),
(1286, 116, '_stock_status', 'instock'),
(1287, 116, '_wc_average_rating', '0'),
(1288, 116, '_wc_rating_count', 'a:0:{}'),
(1289, 116, '_wc_review_count', '0'),
(1290, 116, '_downloadable_files', 'a:0:{}'),
(1291, 116, 'attribute_pa_sizes', 'large'),
(1292, 116, '_price', '1000.00'),
(1293, 116, '_product_version', '3.5.3'),
(1294, 117, '_variation_description', ''),
(1295, 117, '_sku', ''),
(1296, 117, '_regular_price', '879.00'),
(1297, 117, '_sale_price', ''),
(1298, 117, '_sale_price_dates_from', ''),
(1299, 117, '_sale_price_dates_to', ''),
(1300, 117, 'total_sales', '0'),
(1301, 117, '_tax_status', 'taxable'),
(1302, 117, '_tax_class', 'parent'),
(1303, 117, '_manage_stock', 'no'),
(1304, 117, '_backorders', 'no'),
(1305, 117, '_low_stock_amount', ''),
(1306, 117, '_sold_individually', 'no'),
(1307, 117, '_weight', ''),
(1308, 117, '_length', ''),
(1309, 117, '_width', ''),
(1310, 117, '_height', ''),
(1311, 117, '_upsell_ids', 'a:0:{}'),
(1312, 117, '_crosssell_ids', 'a:0:{}'),
(1313, 117, '_purchase_note', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1314, 117, '_default_attributes', 'a:0:{}'),
(1315, 117, '_virtual', 'no'),
(1316, 117, '_downloadable', 'no'),
(1317, 117, '_product_image_gallery', ''),
(1318, 117, '_download_limit', '-1'),
(1319, 117, '_download_expiry', '-1'),
(1320, 117, '_stock', NULL),
(1321, 117, '_stock_status', 'instock'),
(1322, 117, '_wc_average_rating', '0'),
(1323, 117, '_wc_rating_count', 'a:0:{}'),
(1324, 117, '_wc_review_count', '0'),
(1325, 117, '_downloadable_files', 'a:0:{}'),
(1326, 117, 'attribute_pa_sizes', 'small'),
(1327, 117, '_price', '879.00'),
(1328, 117, '_product_version', '3.5.3'),
(1329, 118, '_variation_description', ''),
(1330, 118, '_sku', ''),
(1331, 118, '_regular_price', '879.00'),
(1332, 118, '_sale_price', ''),
(1333, 118, '_sale_price_dates_from', ''),
(1334, 118, '_sale_price_dates_to', ''),
(1335, 118, 'total_sales', '0'),
(1336, 118, '_tax_status', 'taxable'),
(1337, 118, '_tax_class', 'parent'),
(1338, 118, '_manage_stock', 'no'),
(1339, 118, '_backorders', 'no'),
(1340, 118, '_low_stock_amount', ''),
(1341, 118, '_sold_individually', 'no'),
(1342, 118, '_weight', ''),
(1343, 118, '_length', ''),
(1344, 118, '_width', ''),
(1345, 118, '_height', ''),
(1346, 118, '_upsell_ids', 'a:0:{}'),
(1347, 118, '_crosssell_ids', 'a:0:{}'),
(1348, 118, '_purchase_note', ''),
(1349, 118, '_default_attributes', 'a:0:{}'),
(1350, 118, '_virtual', 'no'),
(1351, 118, '_downloadable', 'no'),
(1352, 118, '_product_image_gallery', ''),
(1353, 118, '_download_limit', '-1'),
(1354, 118, '_download_expiry', '-1'),
(1355, 118, '_stock', NULL),
(1356, 118, '_stock_status', 'instock'),
(1357, 118, '_wc_average_rating', '0'),
(1358, 118, '_wc_rating_count', 'a:0:{}'),
(1359, 118, '_wc_review_count', '0'),
(1360, 118, '_downloadable_files', 'a:0:{}'),
(1361, 118, 'attribute_pa_sizes', 'medium'),
(1362, 118, '_price', '879.00'),
(1363, 118, '_product_version', '3.5.3'),
(1364, 119, '_variation_description', ''),
(1365, 119, '_sku', ''),
(1366, 119, '_regular_price', '1000.00'),
(1367, 119, '_sale_price', ''),
(1368, 119, '_sale_price_dates_from', ''),
(1369, 119, '_sale_price_dates_to', ''),
(1370, 119, 'total_sales', '0'),
(1371, 119, '_tax_status', 'taxable'),
(1372, 119, '_tax_class', 'parent'),
(1373, 119, '_manage_stock', 'no'),
(1374, 119, '_backorders', 'no'),
(1375, 119, '_low_stock_amount', ''),
(1376, 119, '_sold_individually', 'no'),
(1377, 119, '_weight', ''),
(1378, 119, '_length', ''),
(1379, 119, '_width', ''),
(1380, 119, '_height', ''),
(1381, 119, '_upsell_ids', 'a:0:{}'),
(1382, 119, '_crosssell_ids', 'a:0:{}'),
(1383, 119, '_purchase_note', ''),
(1384, 119, '_default_attributes', 'a:0:{}'),
(1385, 119, '_virtual', 'no'),
(1386, 119, '_downloadable', 'no'),
(1387, 119, '_product_image_gallery', ''),
(1388, 119, '_download_limit', '-1'),
(1389, 119, '_download_expiry', '-1'),
(1390, 119, '_stock', NULL),
(1391, 119, '_stock_status', 'instock'),
(1392, 119, '_wc_average_rating', '0'),
(1393, 119, '_wc_rating_count', 'a:0:{}'),
(1394, 119, '_wc_review_count', '0'),
(1395, 119, '_downloadable_files', 'a:0:{}'),
(1396, 119, 'attribute_pa_sizes', 'xtra-large'),
(1397, 119, '_price', '1000.00'),
(1398, 119, '_product_version', '3.5.3'),
(1401, 120, '_wp_attached_file', '2019/01/dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1.jpg'),
(1402, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:114:\"2019/01/dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:115:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:115:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:115:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:114:\"dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1403, 121, '_wp_attached_file', '2019/01/8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6.jpg'),
(1404, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:114:\"2019/01/8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:115:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:115:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:115:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:114:\"8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1405, 122, '_wp_attached_file', '2019/01/0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2.jpg'),
(1406, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:114:\"2019/01/0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:115:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:115:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:115:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:114:\"0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1407, 123, '_wp_attached_file', '2019/01/788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5.jpg'),
(1408, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1440;s:4:\"file\";s:114:\"2019/01/788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:115:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:115:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:115:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-1080x470.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:114:\"788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1409, 115, '_price', '879.00'),
(1410, 115, '_price', '1000.00'),
(1411, 115, '_regular_price', ''),
(1412, 115, '_sale_price', ''),
(1413, 115, '_thumbnail_id', '120'),
(1414, 115, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(1415, 124, '_edit_lock', '1547725645:1'),
(1416, 125, '_wp_attached_file', '2019/01/want53294-1g1dR21501518886-Copy.png'),
(1417, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:701;s:6:\"height\";i:198;s:4:\"file\";s:43:\"2019/01/want53294-1g1dR21501518886-Copy.png\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"want53294-1g1dR21501518886-Copy-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-220x154.png\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-275x198.png\";s:5:\"width\";i:275;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-255x160.png\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:42:\"want53294-1g1dR21501518886-Copy-350x99.png\";s:5:\"width\";i:350;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-600x169.png\";s:5:\"width\";i:600;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-600x169.png\";s:5:\"width\";i:600;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"want53294-1g1dR21501518886-Copy-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1418, 124, '_thumbnail_id', '125'),
(1419, 124, '_edit_last', '1'),
(1420, 124, 'storevilla_page_layouts', 'nosidebar'),
(1421, 124, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(1422, 127, '_menu_item_type', 'post_type'),
(1423, 127, '_menu_item_menu_item_parent', '0'),
(1424, 127, '_menu_item_object_id', '124'),
(1425, 127, '_menu_item_object', 'page'),
(1426, 127, '_menu_item_target', ''),
(1427, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1428, 127, '_menu_item_xfn', ''),
(1429, 127, '_menu_item_url', ''),
(1431, 128, '_edit_last', '1'),
(1432, 128, '_edit_lock', '1547724781:1'),
(1433, 124, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:93:\"http://localhost/shop/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(1434, 130, '_edit_lock', '1547724704:1'),
(1435, 131, '_edit_lock', '1547726684:1'),
(1436, 132, '_edit_last', '1'),
(1437, 132, 'post_grid_meta_options', 'a:35:{s:10:\"post_types\";a:1:{i:0;s:4:\"post\";}s:10:\"categories\";a:1:{i:0;s:11:\"category,52\";}s:14:\"terms_relation\";s:2:\"IN\";s:19:\"categories_relation\";s:2:\"OR\";s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:14:\"posts_per_page\";s:2:\"10\";s:6:\"offset\";s:0:\"\";s:15:\"exclude_post_id\";s:0:\"\";s:11:\"query_order\";s:4:\"DESC\";s:13:\"query_orderby\";a:1:{i:0;s:4:\"rand\";}s:22:\"query_orderby_meta_key\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:22:\"enable_default_keyword\";s:2:\"no\";s:11:\"grid_layout\";a:1:{s:4:\"name\";s:11:\"layout_grid\";}s:6:\"layout\";a:2:{s:7:\"content\";s:11:\"flat-center\";s:5:\"hover\";s:4:\"flat\";}s:4:\"skin\";s:4:\"flat\";s:14:\"masonry_enable\";s:2:\"no\";s:16:\"lazy_load_enable\";s:2:\"no\";s:19:\"lazy_load_image_src\";s:0:\"\";s:5:\"width\";a:3:{s:7:\"desktop\";s:5:\"280px\";s:6:\"tablet\";s:5:\"280px\";s:6:\"mobile\";s:3:\"90%\";}s:19:\"items_bg_color_type\";s:5:\"fixed\";s:14:\"items_bg_color\";s:4:\"#fff\";s:11:\"item_height\";a:2:{s:5:\"style\";s:11:\"auto_height\";s:12:\"fixed_height\";s:5:\"220px\";}s:6:\"margin\";s:4:\"10px\";s:12:\"media_height\";a:2:{s:5:\"style\";s:11:\"auto_height\";s:12:\"fixed_height\";s:5:\"220px\";}s:17:\"featured_img_size\";s:6:\"medium\";s:12:\"thumb_linked\";s:3:\"yes\";s:12:\"media_source\";a:3:{s:14:\"featured_image\";a:3:{s:2:\"id\";s:14:\"featured_image\";s:5:\"title\";s:14:\"Featured Image\";s:7:\"checked\";s:3:\"yes\";}s:11:\"first_image\";a:3:{s:2:\"id\";s:11:\"first_image\";s:5:\"title\";s:25:\"First images from content\";s:7:\"checked\";s:3:\"yes\";}s:11:\"empty_thumb\";a:3:{s:2:\"id\";s:11:\"empty_thumb\";s:5:\"title\";s:15:\"Empty thumbnail\";s:7:\"checked\";s:3:\"yes\";}}s:9:\"container\";a:3:{s:7:\"padding\";s:4:\"10px\";s:8:\"bg_color\";s:4:\"#fff\";s:8:\"bg_image\";s:0:\"\";}s:9:\"grid_type\";s:4:\"grid\";s:10:\"nav_bottom\";a:2:{s:15:\"pagination_type\";s:6:\"normal\";s:16:\"pagination_theme\";s:4:\"dark\";}s:7:\"nav_top\";a:1:{s:6:\"search\";s:2:\"no\";}s:10:\"pagination\";a:3:{s:13:\"max_num_pages\";s:1:\"0\";s:9:\"prev_text\";s:11:\"« Previous\";s:9:\"next_text\";s:7:\"Next »\";}s:9:\"custom_js\";s:27:\"/*Write your js code here*/\";s:10:\"custom_css\";s:28:\"/*Write your CSS code here*/\";}'),
(1438, 132, '_edit_lock', '1547725152:1'),
(1439, 133, '_wp_attached_file', '2019/01/GC6A9302-3-1.jpg'),
(1440, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:1972;s:4:\"file\";s:24:\"2019/01/GC6A9302-3-1.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-207x300.jpg\";s:5:\"width\";i:207;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"GC6A9302-3-1-768x1114.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1114;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"GC6A9302-3-1-706x1024.jpg\";s:5:\"width\";i:706;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:25:\"GC6A9302-3-1-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-121x175.jpg\";s:5:\"width\";i:121;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"GC6A9302-3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-600x870.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:870;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-600x870.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:870;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"GC6A9302-3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1542996398\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:6:\"0.0008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1442, 131, '_encloseme', '1'),
(1443, 131, '_thumbnail_id', '133'),
(1444, 131, '_edit_last', '1'),
(1446, 131, '_encloseme', '1'),
(1447, 131, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:93:\"http://localhost/shop/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(1448, 131, 'storevilla_page_layouts', 'rightsidebar'),
(1449, 131, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(1450, 137, '_edit_lock', '1547725802:1'),
(1451, 137, '_edit_last', '1'),
(1452, 137, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:93:\"http://localhost/shop/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(1453, 137, 'storevilla_page_layouts', 'rightsidebar'),
(1454, 137, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(1455, 139, '_wp_attached_file', '2019/01/full-front-fly-side-of-water.jpg'),
(1456, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:1150;s:4:\"file\";s:40:\"2019/01/full-front-fly-side-of-water.jpg\";s:5:\"sizes\";a:16:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"full-front-fly-side-of-water-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"full-front-fly-side-of-water-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-220x154.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-768x470.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-117x175.jpg\";s:5:\"width\";i:117;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-600x898.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:898;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-600x898.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:898;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"full-front-fly-side-of-water-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:14:\"Akanksha Redhu\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:34:\"Processed with VSCO with c3 preset\";s:17:\"created_timestamp\";s:10:\"1543769801\";s:9:\"copyright\";s:36:\"Copyright 2019. All rights reserved.\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:34:\"Processed with VSCO with c3 preset\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1458, 137, '_encloseme', '1'),
(1459, 137, '_thumbnail_id', '139'),
(1461, 137, '_encloseme', '1'),
(1463, 131, '_encloseme', '1'),
(1464, 131, '_pingme', '1'),
(1465, 131, '_encloseme', '1'),
(1466, 140, '_edit_last', '1'),
(1467, 140, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:93:\"http://localhost/shop/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(1468, 140, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(1469, 140, 'sg_popup_target', 'a:2:{s:11:\"sgpb-target\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:13:\"page_selected\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";a:3:{i:124;s:4:\"Blog\";i:17;s:4:\"Home\";i:15;s:8:\"Checkout\";}}i:1;a:1:{s:5:\"param\";s:8:\"not_rule\";}}}s:15:\"sgpb-conditions\";N;}'),
(1470, 140, 'sg_popup_events', 'a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"load\";s:5:\"value\";s:1:\"4\";s:12:\"hiddenOption\";a:0:{}}}}'),
(1471, 140, 'sg_popup_options', 'a:84:{s:23:\"sgpb-subs-form-bg-color\";s:7:\"#FFFFFF\";s:25:\"sgpb-subs-form-bg-opacity\";s:3:\"0.8\";s:22:\"sgpb-subs-form-padding\";s:1:\"7\";s:27:\"sgpb-subs-email-placeholder\";s:7:\"Email *\";s:19:\"sgpb-subs-gdpr-text\";s:112:\" will use the information you provide on this form to be in touch with you and to provide updates and marketing.\";s:27:\"sgpb-subs-first-name-status\";s:2:\"on\";s:27:\"sgpb-subs-first-placeholder\";s:10:\"First name\";s:26:\"sgpb-subs-last-name-status\";s:2:\"on\";s:26:\"sgpb-subs-last-placeholder\";s:9:\"Last name\";s:28:\"sgpb-subs-validation-message\";s:23:\"This field is required.\";s:20:\"sgpb-subs-text-width\";s:5:\"300px\";s:21:\"sgpb-subs-text-height\";s:4:\"40px\";s:27:\"sgpb-subs-text-border-width\";s:3:\"2px\";s:23:\"sgpb-subs-text-bg-color\";s:7:\"#FFFFFF\";s:27:\"sgpb-subs-text-border-color\";s:7:\"#CCCCCC\";s:20:\"sgpb-subs-text-color\";s:7:\"#000000\";s:32:\"sgpb-subs-text-placeholder-color\";s:7:\"#CCCCCC\";s:19:\"sgpb-subs-btn-width\";s:5:\"300px\";s:20:\"sgpb-subs-btn-height\";s:4:\"40px\";s:19:\"sgpb-subs-btn-title\";s:24:\"Subscribe For Newsletter\";s:28:\"sgpb-subs-btn-progress-title\";s:14:\"Please wait...\";s:22:\"sgpb-subs-btn-bg-color\";s:7:\"#57bfae\";s:24:\"sgpb-subs-btn-text-color\";s:7:\"#FFFFFF\";s:23:\"sgpb-subs-error-message\";s:71:\"There was an error while trying to send your request. Please try again.\";s:25:\"sgpb-subs-invalid-message\";s:35:\"Please enter a valid email address.\";s:26:\"sgpb-subs-success-behavior\";s:11:\"showMessage\";s:25:\"sgpb-subs-success-message\";s:50:\"You have successfully subscribed to the newsletter\";s:30:\"sgpb-subs-success-redirect-URL\";s:0:\"\";s:15:\"sgpb-subs-email\";s:0:\"\";s:20:\"sgpb-subs-first-name\";s:0:\"\";s:19:\"sgpb-subs-last-name\";s:0:\"\";s:24:\"sgpb-subs-hidden-checker\";s:0:\"\";s:9:\"sgpb-type\";s:12:\"subscription\";s:15:\"sgpb-is-preview\";s:1:\"0\";s:14:\"sgpb-is-active\";s:7:\"checked\";s:34:\"sgpb-behavior-after-special-events\";a:1:{i:0;a:1:{i:0;a:1:{s:5:\"param\";s:12:\"select_event\";}}}s:20:\"sgpb-content-padding\";s:2:\"12\";s:18:\"sgpb-popup-z-index\";s:4:\"9999\";s:17:\"sgpb-popup-themes\";s:12:\"sgpb-theme-6\";s:25:\"sgpb-overlay-custom-class\";s:18:\"sgpb-popup-overlay\";s:18:\"sgpb-overlay-color\";s:0:\"\";s:20:\"sgpb-overlay-opacity\";s:3:\"0.8\";s:25:\"sgpb-content-custom-class\";s:16:\"sg-popup-content\";s:26:\"sgpb-background-image-mode\";s:9:\"no-repeat\";s:12:\"sgpb-esc-key\";s:2:\"on\";s:24:\"sgpb-enable-close-button\";s:2:\"on\";s:23:\"sgpb-close-button-delay\";s:1:\"0\";s:26:\"sgpb-close-button-position\";s:8:\"topRight\";s:17:\"sgpb-button-image\";s:0:\"\";s:23:\"sgpb-button-image-width\";s:2:\"30\";s:24:\"sgpb-button-image-height\";s:2:\"30\";s:17:\"sgpb-border-color\";s:7:\"#000000\";s:18:\"sgpb-border-radius\";s:1:\"0\";s:23:\"sgpb-border-radius-type\";s:1:\"%\";s:16:\"sgpb-button-text\";s:5:\"Close\";s:18:\"sgpb-overlay-click\";s:2:\"on\";s:25:\"sgpb-popup-dimension-mode\";s:14:\"responsiveMode\";s:33:\"sgpb-responsive-dimension-measure\";s:4:\"auto\";s:10:\"sgpb-width\";s:5:\"640px\";s:11:\"sgpb-height\";s:5:\"480px\";s:14:\"sgpb-max-width\";s:0:\"\";s:15:\"sgpb-max-height\";s:0:\"\";s:14:\"sgpb-min-width\";s:3:\"120\";s:15:\"sgpb-min-height\";s:0:\"\";s:18:\"sgpb-content-click\";s:2:\"on\";s:27:\"sgpb-content-click-behavior\";s:5:\"close\";s:26:\"sgpb-click-redirect-to-url\";s:0:\"\";s:27:\"sgpb-copy-to-clipboard-text\";s:0:\"\";s:34:\"sgpb-copy-to-clipboard-close-popup\";s:2:\"on\";s:28:\"sgpb-copy-to-clipboard-alert\";s:2:\"on\";s:30:\"sgpb-copy-to-clipboard-message\";s:20:\"Copied to Clipboard!\";s:19:\"sgpb-open-animation\";s:2:\"on\";s:26:\"sgpb-open-animation-effect\";s:18:\"sgpb-bounceInRight\";s:25:\"sgpb-open-animation-speed\";s:1:\"1\";s:27:\"sgpb-close-animation-effect\";s:9:\"No effect\";s:16:\"sgpb-popup-fixed\";s:2:\"on\";s:25:\"sgpb-popup-fixed-position\";s:1:\"6\";s:29:\"sgpb-enable-content-scrolling\";s:2:\"on\";s:16:\"sgpb-popup-order\";s:1:\"0\";s:16:\"sgpb-popup-delay\";s:1:\"0\";s:12:\"sgpb-post-id\";s:3:\"140\";s:16:\"sgpb-subs-fields\";a:6:{s:5:\"email\";a:4:{s:6:\"isShow\";s:1:\"1\";s:5:\"attrs\";a:6:{s:4:\"type\";s:5:\"email\";s:13:\"data-required\";s:1:\"1\";s:4:\"name\";s:15:\"sgpb-subs-email\";s:11:\"placeholder\";s:7:\"Email *\";s:5:\"class\";s:39:\"js-subs-text-inputs js-subs-email-input\";s:24:\"data-error-message-class\";s:29:\"sgpb-subs-email-error-message\";}s:5:\"style\";a:7:{s:5:\"width\";s:5:\"300px\";s:6:\"height\";s:4:\"40px\";s:12:\"border-width\";s:3:\"2px\";s:12:\"border-color\";s:7:\"#CCCCCC\";s:16:\"background-color\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#000000\";s:12:\"autocomplete\";s:3:\"off\";}s:21:\"errorMessageBoxStyles\";s:5:\"300px\";}s:10:\"first-name\";a:4:{s:6:\"isShow\";s:1:\"1\";s:5:\"attrs\";a:6:{s:4:\"type\";s:4:\"text\";s:13:\"data-required\";s:0:\"\";s:4:\"name\";s:20:\"sgpb-subs-first-name\";s:11:\"placeholder\";s:10:\"First name\";s:5:\"class\";s:44:\"js-subs-text-inputs js-subs-first-name-input\";s:24:\"data-error-message-class\";s:34:\"sgpb-subs-first-name-error-message\";}s:5:\"style\";a:7:{s:5:\"width\";s:5:\"300px\";s:6:\"height\";s:4:\"40px\";s:12:\"border-width\";s:3:\"2px\";s:12:\"border-color\";s:7:\"#CCCCCC\";s:16:\"background-color\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#000000\";s:12:\"autocomplete\";s:3:\"off\";}s:21:\"errorMessageBoxStyles\";s:5:\"300px\";}s:9:\"last-name\";a:4:{s:6:\"isShow\";s:1:\"1\";s:5:\"attrs\";a:6:{s:4:\"type\";s:4:\"text\";s:13:\"data-required\";s:0:\"\";s:4:\"name\";s:19:\"sgpb-subs-last-name\";s:11:\"placeholder\";s:9:\"Last name\";s:5:\"class\";s:43:\"js-subs-text-inputs js-subs-last-name-input\";s:24:\"data-error-message-class\";s:33:\"sgpb-subs-last-name-error-message\";}s:5:\"style\";a:7:{s:5:\"width\";s:5:\"300px\";s:6:\"height\";s:4:\"40px\";s:12:\"border-width\";s:3:\"2px\";s:12:\"border-color\";s:7:\"#CCCCCC\";s:16:\"background-color\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#000000\";s:12:\"autocomplete\";s:3:\"off\";}s:21:\"errorMessageBoxStyles\";s:5:\"300px\";}s:4:\"gdpr\";a:6:{s:6:\"isShow\";s:0:\"\";s:5:\"attrs\";a:6:{s:4:\"type\";s:14:\"customCheckbox\";s:13:\"data-required\";s:0:\"\";s:4:\"name\";s:14:\"sgpb-subs-gdpr\";s:5:\"class\";s:38:\"js-subs-gdpr-inputs js-subs-gdpr-label\";s:2:\"id\";s:21:\"sgpb-gdpr-field-label\";s:24:\"data-error-message-class\";s:23:\"sgpb-gdpr-error-message\";}s:5:\"style\";a:1:{s:5:\"width\";s:5:\"300px\";}s:5:\"label\";s:12:\"Accept Terms\";s:4:\"text\";s:112:\" will use the information you provide on this form to be in touch with you and to provide updates and marketing.\";s:21:\"errorMessageBoxStyles\";s:5:\"300px\";}s:14:\"hidden-checker\";a:3:{s:6:\"isShow\";s:0:\"\";s:5:\"attrs\";a:5:{s:4:\"type\";s:6:\"hidden\";s:13:\"data-required\";s:0:\"\";s:4:\"name\";s:24:\"sgpb-subs-hidden-checker\";s:5:\"value\";s:0:\"\";s:5:\"class\";s:43:\"js-subs-text-inputs js-subs-last-name-input\";}s:5:\"style\";a:3:{s:8:\"position\";s:8:\"absolute\";s:4:\"left\";s:7:\"-5000px\";s:7:\"padding\";s:1:\"0\";}}s:6:\"submit\";a:3:{s:6:\"isShow\";s:1:\"1\";s:5:\"attrs\";a:6:{s:4:\"type\";s:6:\"submit\";s:4:\"name\";s:16:\"sgpb-subs-submit\";s:5:\"value\";s:24:\"Subscribe For Newsletter\";s:10:\"data-title\";s:24:\"Subscribe For Newsletter\";s:19:\"data-progress-title\";s:14:\"Please wait...\";s:5:\"class\";s:18:\"js-subs-submit-btn\";}s:5:\"style\";a:5:{s:5:\"width\";s:5:\"300px\";s:6:\"height\";s:4:\"40px\";s:16:\"background-color\";s:7:\"#57bfae\";s:5:\"color\";s:7:\"#FFFFFF\";s:14:\"text-transform\";s:15:\"none !important\";}}}s:22:\"sgpb-button-image-data\";s:0:\"\";s:26:\"sgpb-background-image-data\";s:0:\"\";}'),
(1472, 140, '_edit_lock', '1547726539:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-12 05:48:59', '2019-01-12 05:48:59', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-01-12 10:26:11', '2019-01-12 10:26:11', '', 0, 'http://localhost/shop/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-12 05:48:59', '2019-01-12 05:48:59', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/shop/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-12 05:48:59', '2019-01-12 05:48:59', '', 0, 'http://localhost/shop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-12 05:48:59', '2019-01-12 05:48:59', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/shop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-12 05:48:59', '2019-01-12 05:48:59', '', 0, 'http://localhost/shop/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-12 05:49:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-12 05:49:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=4', 0, 'post', '', 0),
(6, 1, '2019-01-12 05:58:03', '2019-01-12 05:58:03', '', 'want53294-1g1dR21501518886', '', 'inherit', 'open', 'closed', '', 'want53294-1g1dr21501518886', '', '', '2019-01-12 05:58:03', '2019-01-12 05:58:03', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/want53294-1g1dR21501518886.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-01-12 05:58:29', '2019-01-12 05:58:29', '', 'ea470241088173a13f9ced8bab0f4ecdb41eac4e', '', 'inherit', 'open', 'closed', '', 'ea470241088173a13f9ced8bab0f4ecdb41eac4e', '', '', '2019-01-12 05:58:29', '2019-01-12 05:58:29', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-01-12 05:58:32', '2019-01-12 05:58:32', 'http://localhost/shop/wp-content/uploads/2019/01/cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg', 'cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e-jpg', '', '', '2019-01-12 05:58:32', '2019-01-12 05:58:32', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/cropped-ea470241088173a13f9ced8bab0f4ecdb41eac4e.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-01-12 05:58:40', '2019-01-12 05:58:40', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 05:58:40\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 05:58:40\"\n    },\n    \"site_icon\": {\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 05:58:40\"\n    },\n    \"storevilla::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 05:58:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a51233fb-da81-4818-a4a7-fc0ac6522ec3', '', '', '2019-01-12 05:58:40', '2019-01-12 05:58:40', '', 0, 'http://localhost/shop/2019/01/12/a51233fb-da81-4818-a4a7-fc0ac6522ec3/', 0, 'customize_changeset', '', 0),
(10, 1, '2019-01-12 05:59:32', '2019-01-12 05:59:32', '{\n    \"storevilla::storevilla_tpl_color\": {\n        \"value\": \"#65bcbc\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 05:59:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1d2b5ef3-c94f-4585-a159-bfff0740fa54', '', '', '2019-01-12 05:59:32', '2019-01-12 05:59:32', '', 0, 'http://localhost/shop/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2019-01-12 06:00:55', '2019-01-12 06:00:55', '{\n    \"storevilla::storevilla_top_left_options\": {\n        \"value\": \"quickinfo\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 06:00:55\"\n    },\n    \"storevilla::storevilla_email_title\": {\n        \"value\": \"abhayofcl@gmail.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 06:00:55\"\n    },\n    \"storevilla::storevilla_phone_number\": {\n        \"value\": \"+91-999-99-99-999\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 06:00:55\"\n    },\n    \"storevilla::storevilla_map_address\": {\n        \"value\": \"Housing Board Colony Sanquelim Goa \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 06:00:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d4cf449-3241-4d40-ba0b-4d08314979c4', '', '', '2019-01-12 06:00:55', '2019-01-12 06:00:55', '', 0, 'http://localhost/shop/2019/01/12/3d4cf449-3241-4d40-ba0b-4d08314979c4/', 0, 'customize_changeset', '', 0),
(12, 1, '2019-01-12 06:11:18', '2019-01-12 06:11:18', '', 'Products I Love', '', 'publish', 'closed', 'closed', '', 'products-i-love', '', '', '2019-01-12 06:11:18', '2019-01-12 06:11:18', '', 0, 'http://localhost/shop/2019/01/12/products-i-love/', 0, 'wishlist', '', 0),
(13, 1, '2019-01-12 06:16:32', '2019-01-12 06:16:32', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-01-12 06:16:32', '2019-01-12 06:16:32', '', 0, 'http://localhost/shop/shop/', 0, 'page', '', 0),
(14, 1, '2019-01-12 06:16:32', '2019-01-12 06:16:32', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-01-12 06:16:32', '2019-01-12 06:16:32', '', 0, 'http://localhost/shop/cart/', 0, 'page', '', 0),
(15, 1, '2019-01-12 06:16:33', '2019-01-12 06:16:33', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-01-12 06:16:33', '2019-01-12 06:16:33', '', 0, 'http://localhost/shop/checkout/', 0, 'page', '', 0),
(16, 1, '2019-01-12 06:16:33', '2019-01-12 06:16:33', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-01-12 06:16:33', '2019-01-12 06:16:33', '', 0, 'http://localhost/shop/my-account/', 0, 'page', '', 0),
(17, 1, '2019-01-12 06:19:24', '2019-01-12 06:19:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-12 06:26:50', '2019-01-12 06:26:50', '', 0, 'http://localhost/shop/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-01-12 06:19:24', '2019-01-12 06:19:24', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-12 06:19:24', '2019-01-12 06:19:24', '', 17, 'http://localhost/shop/2019/01/12/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-01-12 06:26:27', '2019-01-12 06:26:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-12 06:26:27', '2019-01-12 06:26:27', '', 17, 'http://localhost/shop/2019/01/12/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-01-12 07:13:05', '2019-01-12 07:13:05', '', 'business-camera-contemporary-325153', '', 'inherit', 'open', 'closed', '', 'business-camera-contemporary-325153', '', '', '2019-01-12 07:13:05', '2019-01-12 07:13:05', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/business-camera-contemporary-325153.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-01-12 07:14:01', '2019-01-12 07:14:01', '', 'poco-f1', '', 'inherit', 'open', 'closed', '', 'poco-f1', '', '', '2019-01-12 07:14:01', '2019-01-12 07:14:01', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/poco-f1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-01-12 07:14:47', '2019-01-12 07:14:47', '', 'hp-spectre-x360-main-2', '', 'inherit', 'open', 'closed', '', 'hp-spectre-x360-main-2', '', '', '2019-01-12 07:14:47', '2019-01-12 07:14:47', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/hp-spectre-x360-main-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-01-12 07:17:33', '2019-01-12 07:17:33', '', 'adult-autumn-autumn-leaves-1518489', '', 'inherit', 'open', 'closed', '', 'adult-autumn-autumn-leaves-1518489', '', '', '2019-01-12 07:17:33', '2019-01-12 07:17:33', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/adult-autumn-autumn-leaves-1518489.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-01-12 07:18:24', '2019-01-12 07:18:24', '', 'adult-autumn-blur-1751600', '', 'inherit', 'open', 'closed', '', 'adult-autumn-blur-1751600', '', '', '2019-01-12 07:18:24', '2019-01-12 07:18:24', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/adult-autumn-blur-1751600.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-01-12 07:18:47', '2019-01-12 07:18:47', '', 'app-apple-business-38295', '', 'inherit', 'open', 'closed', '', 'app-apple-business-38295', '', '', '2019-01-12 07:18:47', '2019-01-12 07:18:47', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/app-apple-business-38295.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-01-12 07:20:45', '2019-01-12 07:20:45', '', 'antique-art-bookcase-1301585', '', 'inherit', 'open', 'closed', '', 'antique-art-bookcase-1301585', '', '', '2019-01-12 07:20:45', '2019-01-12 07:20:45', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/antique-art-bookcase-1301585.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-01-12 07:21:30', '2019-01-12 07:21:30', '', '10 books to read from indian authors (6)', '', 'inherit', 'open', 'closed', '', '10-books-to-read-from-indian-authors-6', '', '', '2019-01-12 07:21:30', '2019-01-12 07:21:30', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/10-books-to-read-from-indian-authors-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-01-12 07:32:36', '2019-01-12 07:32:36', '<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">eneral</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">In The Box</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Handset, Adapter, USB Cable, Warranty Card, User Guide, SIM Insertion Tool, Back Case</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Model Number</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">MZB6645IN</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Model Name</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">F1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Color</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Graphite Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Browse Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Smartphones</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">SIM Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Dual Sim</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Hybrid Sim Slot</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Touchscreen</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">OTG Compatible</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Display Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Display Size</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">15.7 cm (6.18 inch)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Resolution</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2160 x 1080 pixels</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Resolution Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">FHD+</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Display Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">IPS</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Other Display Features</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">18.7:9 Notch Display</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Os &amp; Processor Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Operating System</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Android Oreo 8.1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Processor Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Qualcomm Snapdragon 845</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Processor Core</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Octa Core</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Primary Clock Speed</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2.8 GHz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Memory &amp; Storage Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Internal Storage</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">64 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">RAM</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">6 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Expandable Storage</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">256 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Supported Memory Card Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">microSD</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Memory Card Slot Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Hybrid Slot</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Camera Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Primary Camera Available</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Primary Camera</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">12MP + 5MP</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Primary Camera Features</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Dual Rear Camera with Primary 6p Lens and Secondary 4p Lens, f/1.9 Primary Aperture and f/2.0 Secondary Aperture, Dual Rear Camera with 6-element Primary Lens and 4-element Secondary Lens</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Secondary Camera Available</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Secondary Camera</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">20MP</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Secondary Camera Features</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">IR Front Camera with f/2.0 Aperture</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Dual Camera Lens</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Primary Camera</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Call Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Video Call Support</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Connectivity Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Network Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">4G VOLTE, 3G, 2G</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Supported Networks</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">4G VoLTE, 4G LTE, GSM</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Internet Connectivity</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">4G, 3G, Wi-Fi</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">3G</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Bluetooth Support</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Bluetooth Version</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">5</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Wi-Fi</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Wi-Fi Version</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">801.11b/g/n/ac</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Wi-Fi Hotspot</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Map Support</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Google Maps</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">GPS Support</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Other Details</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Smartphone</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">SIM Size</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Nano SIM and Nano SIM</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Removable Battery</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Graphics PPI</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">403 PPI</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Sensors</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Gyroscope, Proximity, Accelerometer, Ambient Light Sensor</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Upgradable Operating System</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Android 9 Pie</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Other Features</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">10 nm Architecture Processor, Battery Power Rating - 9V/2A</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Multimedia Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">FM Radio</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Battery &amp; Power Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Battery Capacity</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">4000 mAh</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Dimensions</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Width</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">75.3 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Height</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">155.5 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Depth</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">8.8 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Weight</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">180 g</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Warranty</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Warranty Summary</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'POCO F1 by Xiaomi (Graphite Black, 64 GB)  (6 GB RAM)', 'Meet the POCO F1 - the first flagship smartphone from POCO by Xiaomi. The POCO F1 sports Qualcomm flagship Snapdragon 845 processor, an octa-core CPU with a maximum clock speed of 2.8 GHz which is supported by 8 GB of LPDDR4X RAM. It is coupled with a LiquidCool Technology that allows the device to sustain peak performance for a longer period of time. On the back, it features a 12MP + 5MP Dual Pixel AI dual camera setup. The main camera sensor features 1.4 um pixels, Dual Pixel Autofocus, and Multi-frame noise reduction. On the front, it sports a 20 MP high-res front camera and IR Face unlock. POCO F1 also boasts of a massive 4000 mAh (typ) battery with Quick Charge 3.0 to keep you going all-day long.', 'publish', 'open', 'closed', '', 'poco-f1-by-xiaomi-graphite-black-64-gb-6-gb-ram', '', '', '2019-01-12 08:11:17', '2019-01-12 08:11:17', '', 0, 'http://localhost/shop/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2019-01-12 07:30:30', '2019-01-12 07:30:30', '', 'xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta', '', 'inherit', 'open', 'closed', '', 'xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta', '', '', '2019-01-12 07:30:30', '2019-01-12 07:30:30', '', 29, 'http://localhost/shop/wp-content/uploads/2019/01/xiaomi-pocophone-f1-na-original-imaf8afgrdbqtsta.jpeg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-01-12 07:30:52', '2019-01-12 07:30:52', '', 'poco-f1', '', 'inherit', 'open', 'closed', '', 'poco-f1-2', '', '', '2019-01-12 07:30:52', '2019-01-12 07:30:52', '', 29, 'http://localhost/shop/wp-content/uploads/2019/01/poco-f1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-01-12 07:30:54', '2019-01-12 07:30:54', '', 'PocoF1-770x462', '', 'inherit', 'open', 'closed', '', 'pocof1-770x462', '', '', '2019-01-12 07:30:54', '2019-01-12 07:30:54', '', 29, 'http://localhost/shop/wp-content/uploads/2019/01/PocoF1-770x462.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-01-12 07:30:57', '2019-01-12 07:30:57', '', 'poco-f1-main_uqd7.640', '', 'inherit', 'open', 'closed', '', 'poco-f1-main_uqd7-640', '', '', '2019-01-12 07:30:57', '2019-01-12 07:30:57', '', 29, 'http://localhost/shop/wp-content/uploads/2019/01/poco-f1-main_uqd7.640.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-01-12 07:39:20', '2019-01-12 07:39:20', '<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">General</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Sales Package</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Laptop, Battery, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Model Number</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">GL62M 7RDX-1878XIN</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Part Number</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">9S7-16J962-1878</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Series</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">GL</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Color</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Gaming Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Suitable For</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Processing &amp; Multitasking</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Battery Cell</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">6 cell</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Processor And Memory Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Dedicated Graphic Memory Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">GDDR5</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Dedicated Graphic Memory Capacity</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Processor Brand</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Intel</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Processor Name</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Core i7</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Processor Generation</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">7th Gen</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">SSD</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">RAM</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">8 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">RAM Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">DDR4</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">HDD Capacity</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">1 TB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Processor Variant</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">7700HQ</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Chipset</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Intel HM175</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Clock Speed</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2.8 GHz with Turbo Boost Upto 3.8 GHz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Memory Slots</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2 Slots</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Expandable Memory</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Upto 32 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">RAM Frequency</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2400 MHz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Cache</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">6 MB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Graphic Processor</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">NVIDIA Geforce GTX 1050</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Operating System</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Operating System</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">DOS</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Port And Slot Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Mic In</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">RJ45</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">USB Port</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">1 x USB 2.0, 2 x USB 3.0, 1 x USB 3.0 Type C</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">HDMI Port</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">1 x HDMI Port</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Multi Card Slot</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">3-in-1 Card Reader (SD, SDHC, SDXC)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Hardware Interface</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">SATA</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Display And Audio Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Touchscreen</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Screen Size</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">39.62 cm (15.6 inch)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Screen Resolution</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">1920 x 1080 Pixel</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Screen Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Full HD LED Backlit Anti-glare Wideview Display</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Speakers</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Built-in Quad Speakers</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Internal Mic</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Built-in Microphone</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Sound Properties</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Audio Boost, 4 x 2 W Speakers</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Connectivity Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Wireless LAN</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Intel 3168 Sandy Peak 1 (1x1 802.11ac)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Bluetooth</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">v4.2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Ethernet</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Gigabit LAN</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Dimensions</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Dimensions</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">383 x 260 x 29 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Weight</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2.2 kg</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Additional Features</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Disk Drive</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Not Available</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Web Camera</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">HD Webcam</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Keyboard</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Backlight Keyboard (Single Color)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Backlit Keyboard</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Pointer Device</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Touchpad</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Included Software</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Dragon Centre, Nahimic 2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Additional Features</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Li-ion Battery</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">Warranty</div>\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Warranty Summary</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2 Years Warranty</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Warranty Service Type</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Carry In</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Covered in Warranty</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Manufacturing Defects</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Not Covered in Warranty</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Physical Damage</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Domestic Warranty</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2 Year</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">International Warranty</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2 Year</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'MSI GL Core i7 7th Gen - (8 GB/1 TB HDD/DOS/2 GB Graphics) GL62M 7RDX-1878XIN Gaming Laptop  (15.6 inch, Black, 2.2 kg)', '', 'publish', 'open', 'closed', '', 'msi-gl-core-i7-7th-gen-8-gb-1-tb-hdd-dos-2-gb-graphics-gl62m-7rdx-1878xin-gaming-laptop-15-6-inch-black-2-2-kg', '', '', '2019-01-12 11:19:26', '2019-01-12 11:19:26', '', 0, 'http://localhost/shop/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2019-01-12 07:38:42', '2019-01-12 07:38:42', '', '71zovGdItTL._SX425_', '', 'inherit', 'open', 'closed', '', '71zovgdittl-_sx425_', '', '', '2019-01-12 07:38:42', '2019-01-12 07:38:42', '', 34, 'http://localhost/shop/wp-content/uploads/2019/01/71zovGdItTL._SX425_.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-01-12 07:38:56', '2019-01-12 07:38:56', '', 'ge73-raider-5_1', '', 'inherit', 'open', 'closed', '', 'ge73-raider-5_1', '', '', '2019-01-12 07:38:56', '2019-01-12 07:38:56', '', 34, 'http://localhost/shop/wp-content/uploads/2019/01/ge73-raider-5_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-01-12 07:49:06', '2019-01-12 07:49:06', '<div class=\"_2RngUh\">\r\n<table class=\"_3ENrHu\">\r\n<tbody>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Book</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Set Of 6(Six) Books -By Amish</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Author</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">AMISH</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Binding</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">Paperback</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Publishing Date</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2016</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Publisher</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">WESTLAND</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Edition</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">FIRST</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Number of Pages</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">2215</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_3_6Uyw row\">\r\n<td class=\"_3-wDH3 col col-3-12\">Language</td>\r\n<td class=\"_2k4JXJ col col-9-12\">\r\n<ul>\r\n 	<li class=\"_3YhLQA\">ENGLISH</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_2RngUh\">\r\n<div class=\"_2lzn0o\">More Details</div>\r\n<ul>\r\n 	<li class=\"_3_6Uyw row\">\r\n<div class=\"_3-wDH3 col col-3-12\">Generic Name</div>\r\n<ul class=\"_2k4JXJ col col-9-12\">\r\n 	<li class=\"_3YhLQA\">Regional Books</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>', 'Set Of 6(Six) Books -By Amish  (Paperback, AMISH)', '<ul>\r\n 	<li class=\"_2-riNZ\">Author: AMISH</li>\r\n 	<li class=\"_2-riNZ\">2215 Pages</li>\r\n 	<li class=\"_2-riNZ\">Language: ENGLISH</li>\r\n 	<li class=\"_2-riNZ\">Publisher: WESTLAND</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'set-of-6six-books-by-amish-paperback-amish', '', '', '2019-01-12 11:19:50', '2019-01-12 11:19:50', '', 0, 'http://localhost/shop/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2019-01-12 07:44:50', '2019-01-12 07:44:50', '', 'set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys', '', 'inherit', 'open', 'closed', '', 'set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys', '', '', '2019-01-12 07:44:50', '2019-01-12 07:44:50', '', 37, 'http://localhost/shop/wp-content/uploads/2019/01/set-of-6-six-books-by-amish-original-imaf7hgq4fkxpqys.jpeg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2019-01-12 07:49:44', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-01-12 07:49:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?post_type=product&p=39', 0, 'product', '', 0),
(40, 1, '2019-01-12 07:51:45', '2019-01-12 07:51:45', '', '005a2e598a91a254b5c95e90cb8f8b8c', '', 'inherit', 'open', 'closed', '', '005a2e598a91a254b5c95e90cb8f8b8c', '', '', '2019-01-12 07:51:45', '2019-01-12 07:51:45', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/005a2e598a91a254b5c95e90cb8f8b8c.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-01-12 07:52:18', '2019-01-12 07:52:18', '', 'main.original.700x0c', '', 'inherit', 'open', 'closed', '', 'main-original-700x0c', '', '', '2019-01-12 07:52:18', '2019-01-12 07:52:18', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/main.original.700x0c.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-01-12 07:54:10', '2019-01-12 07:54:10', '', 'Striped Round Neck Casual Men Multicolor Sweater', '', 'publish', 'open', 'closed', '', 'striped-round-neck-casual-men-multicolor-sweater', '', '', '2019-01-12 11:19:44', '2019-01-12 11:19:44', '', 0, 'http://localhost/shop/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2019-01-12 07:53:02', '2019-01-12 07:53:02', '', 'b0cbabb6fb6b26157788f53c9c13cc1e_350x350', '', 'inherit', 'open', 'closed', '', 'b0cbabb6fb6b26157788f53c9c13cc1e_350x350', '', '', '2019-01-12 07:53:02', '2019-01-12 07:53:02', '', 42, 'http://localhost/shop/wp-content/uploads/2019/01/b0cbabb6fb6b26157788f53c9c13cc1e_350x350.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-01-12 08:01:59', '2019-01-12 08:01:59', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 08:01:59\"\n    },\n    \"woocommerce_category_archive_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 08:01:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'da953c9a-4e2f-45c8-b45c-46d774b28319', '', '', '2019-01-12 08:01:59', '2019-01-12 08:01:59', '', 0, 'http://localhost/shop/2019/01/12/da953c9a-4e2f-45c8-b45c-46d774b28319/', 0, 'customize_changeset', '', 0),
(45, 1, '2019-01-12 08:12:57', '2019-01-12 08:12:57', '', 'Full Sleeve Solid Women\'s Jacket', '', 'publish', 'open', 'closed', '', 'full-sleeve-solid-womens-jacket', '', '', '2019-01-12 08:13:04', '2019-01-12 08:13:04', '', 0, 'http://localhost/shop/?post_type=product&#038;p=45', 0, 'product', '', 0),
(46, 1, '2019-01-12 08:11:44', '2019-01-12 08:11:44', '', '8a1b9d4e7fabad2f553a706c84c9ac74', '', 'inherit', 'open', 'closed', '', '8a1b9d4e7fabad2f553a706c84c9ac74', '', '', '2019-01-12 08:11:44', '2019-01-12 08:11:44', '', 45, 'http://localhost/shop/wp-content/uploads/2019/01/8a1b9d4e7fabad2f553a706c84c9ac74.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-01-12 10:19:48', '2019-01-12 10:19:48', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-01-17 11:31:48', '2019-01-17 11:31:48', '', 0, 'http://localhost/shop/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2019-01-12 10:19:49', '2019-01-12 10:19:49', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2019-01-17 11:31:48', '2019-01-17 11:31:48', '', 0, 'http://localhost/shop/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2019-01-12 10:19:49', '2019-01-12 10:19:49', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2019-01-17 11:31:49', '2019-01-17 11:31:49', '', 0, 'http://localhost/shop/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2019-01-12 10:19:50', '2019-01-12 10:19:50', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-01-17 11:31:49', '2019-01-17 11:31:49', '', 0, 'http://localhost/shop/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2019-01-12 10:19:48', '2019-01-12 10:19:48', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-01-17 11:31:48', '2019-01-17 11:31:48', '', 0, 'http://localhost/shop/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2019-01-12 10:24:01', '2019-01-12 10:24:01', '{\n    \"storevilla::storevilla_email_icon\": {\n        \"value\": \"fa-envelope-o\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:22:39\"\n    },\n    \"storevilla::storevilla_phone_icon\": {\n        \"value\": \"fa-phone-square\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:22:39\"\n    },\n    \"storevilla::storevilla_address_icon\": {\n        \"value\": \"fa-map-marker\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:24:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4958176-158c-4842-8cf5-63c4c82f884c', '', '', '2019-01-12 10:24:01', '2019-01-12 10:24:01', '', 0, 'http://localhost/shop/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2019-01-12 10:24:59', '2019-01-12 10:24:59', '{\n    \"storevilla::storevilla_email_icon\": {\n        \"value\": \"fa-envelope\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:24:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40ce049b-4fba-4470-9d7c-954abf5c9053', '', '', '2019-01-12 10:24:59', '2019-01-12 10:24:59', '', 0, 'http://localhost/shop/2019/01/12/40ce049b-4fba-4470-9d7c-954abf5c9053/', 0, 'customize_changeset', '', 0),
(54, 1, '2019-01-12 10:26:11', '2019-01-12 10:26:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-12 10:26:11', '2019-01-12 10:26:11', '', 1, 'http://localhost/shop/2019/01/12/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-01-12 10:29:34', '2019-01-12 10:29:34', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', '20% off on Winter collection', '', 'publish', 'open', 'open', '', '20-off-on-winter-collection', '', '', '2019-01-12 10:29:51', '2019-01-12 10:29:51', '', 0, 'http://localhost/shop/?p=55', 0, 'post', '', 0),
(56, 1, '2019-01-12 10:28:55', '2019-01-12 10:28:55', '', 'black-friday-fashion-friends-1345082', '', 'inherit', 'open', 'closed', '', 'black-friday-fashion-friends-1345082', '', '', '2019-01-12 10:28:55', '2019-01-12 10:28:55', '', 55, 'http://localhost/shop/wp-content/uploads/2019/01/black-friday-fashion-friends-1345082.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-01-12 10:29:34', '2019-01-12 10:29:34', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', '20% off on Winter collection', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-12 10:29:34', '2019-01-12 10:29:34', '', 55, 'http://localhost/shop/2019/01/12/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-01-12 10:30:41', '2019-01-12 10:30:41', '{\n    \"storevilla::storevilla_slider_team_id\": {\n        \"value\": \"39\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:30:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3448f322-3471-4390-8996-f4fb82e6f398', '', '', '2019-01-12 10:30:41', '2019-01-12 10:30:41', '', 0, 'http://localhost/shop/2019/01/12/3448f322-3471-4390-8996-f4fb82e6f398/', 0, 'customize_changeset', '', 0),
(59, 1, '2019-01-12 10:31:11', '2019-01-12 10:31:11', '', 'responsive-ecommerce-websites-14 - Copy', '', 'inherit', 'open', 'closed', '', 'responsive-ecommerce-websites-14-copy', '', '', '2019-01-12 10:31:11', '2019-01-12 10:31:11', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/responsive-ecommerce-websites-14-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-01-12 10:32:11', '2019-01-12 10:32:11', '{\n    \"storevilla::storevilla_promo_area_one_image\": {\n        \"value\": \"http://localhost/shop/wp-content/uploads/2019/01/responsive-ecommerce-websites-14-Copy.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:31:26\"\n    },\n    \"storevilla::storevilla_promo_area_one_link\": {\n        \"value\": \"http://localhost/shop/product-category/women/?customize_changeset_uuid=96c092ce-077c-420a-9184-875e8dba2e24&customize_autosaved=on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:31:56\"\n    },\n    \"storevilla::storevilla_promo_area_two_image\": {\n        \"value\": \"http://localhost/shop/wp-content/uploads/2019/01/responsive-ecommerce-websites-14.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:32:06\"\n    },\n    \"storevilla::storevilla_promo_area_two_link\": {\n        \"value\": \"http://localhost/shop/product-category/men/?customize_changeset_uuid=96c092ce-077c-420a-9184-875e8dba2e24&customize_autosaved=on\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:32:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96c092ce-077c-420a-9184-875e8dba2e24', '', '', '2019-01-12 10:32:11', '2019-01-12 10:32:11', '', 0, 'http://localhost/shop/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2019-01-12 10:31:54', '2019-01-12 10:31:54', '', 'responsive-ecommerce-websites-14', '', 'inherit', 'open', 'closed', '', 'responsive-ecommerce-websites-14', '', '', '2019-01-12 10:31:54', '2019-01-12 10:31:54', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/responsive-ecommerce-websites-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-01-12 10:38:51', '2019-01-12 10:38:51', '', '4IlThL', '', 'inherit', 'open', 'closed', '', '4ilthl', '', '', '2019-01-12 10:38:51', '2019-01-12 10:38:51', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/4IlThL.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-01-12 10:45:18', '2019-01-12 10:45:18', '', 'cropped-young-man-woman-shopping-flat-450w-1226850274.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-young-man-woman-shopping-flat-450w-1226850274-jpg', '', '', '2019-01-12 10:45:18', '2019-01-12 10:45:18', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/cropped-young-man-woman-shopping-flat-450w-1226850274.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-01-12 10:49:48', '2019-01-12 10:49:48', '{\n    \"storevilla::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:46:20\"\n    },\n    \"storevilla::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:46:20\"\n    },\n    \"storevilla::background_image\": {\n        \"value\": \"http://localhost/shop/wp-content/uploads/2019/01/pattern.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:49:35\"\n    },\n    \"storevilla::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:46:20\"\n    },\n    \"storevilla::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:49:35\"\n    },\n    \"storevilla::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:49:35\"\n    },\n    \"storevilla::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:46:20\"\n    },\n    \"storevilla::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:46:20\"\n    },\n    \"storevilla::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 10:46:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a073cf03-6e6d-4808-9758-d76e94509398', '', '', '2019-01-12 10:49:48', '2019-01-12 10:49:48', '', 0, 'http://localhost/shop/?p=65', 0, 'customize_changeset', '', 0),
(67, 1, '2019-01-12 11:03:45', '2019-01-12 11:03:45', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', 'Happy', '', 'publish', 'open', 'open', '', 'test', '', '', '2019-01-12 11:06:08', '2019-01-12 11:06:08', '', 0, 'http://localhost/shop/?p=67', 0, 'post', '', 0),
(68, 1, '2019-01-12 11:03:39', '2019-01-12 11:03:39', '', 'pexels-photo-974911', '', 'inherit', 'open', 'closed', '', 'pexels-photo-974911', '', '', '2019-01-12 11:03:39', '2019-01-12 11:03:39', '', 67, 'http://localhost/shop/wp-content/uploads/2019/01/pexels-photo-974911.jpeg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-01-12 11:03:45', '2019-01-12 11:03:45', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', 'test', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2019-01-12 11:03:45', '2019-01-12 11:03:45', '', 67, 'http://localhost/shop/2019/01/12/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-01-12 11:05:58', '2019-01-12 11:05:58', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->', 'Happy', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2019-01-12 11:05:58', '2019-01-12 11:05:58', '', 67, 'http://localhost/shop/2019/01/12/67-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-01-12 11:07:00', '2019-01-12 11:07:00', '', 'testimonial', '', 'inherit', 'open', 'closed', '', 'testimonial', '', '', '2019-01-12 11:07:00', '2019-01-12 11:07:00', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/testimonial.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-01-12 11:13:21', '2019-01-12 11:13:21', '{\n    \"storevilla::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 11:13:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '437850a7-792c-4200-a78c-2769d8a1928d', '', '', '2019-01-12 11:13:21', '2019-01-12 11:13:21', '', 0, 'http://localhost/shop/?p=73', 0, 'customize_changeset', '', 0),
(75, 1, '2019-01-12 11:39:22', '2019-01-12 11:39:22', '', 'want53294-1g1dR21501518886', '', 'inherit', 'open', 'closed', '', 'want53294-1g1dr21501518886-2', '', '', '2019-01-12 11:39:22', '2019-01-12 11:39:22', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/want53294-1g1dR21501518886-1.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2019-01-12 11:45:05', '2019-01-12 11:45:05', '{\n    \"storevilla::paymentlogo_image_one\": {\n        \"value\": \"http://localhost/shop/wp-content/uploads/2019/01/cod.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 11:45:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0244f0ed-99b1-40b1-90d9-0fe7b6265c8d', '', '', '2019-01-12 11:45:05', '2019-01-12 11:45:05', '', 0, 'http://localhost/shop/?p=77', 0, 'customize_changeset', '', 0),
(80, 1, '2019-01-12 11:46:43', '2019-01-12 11:46:43', '{\n    \"storevilla::storevilla_footer_copyright\": {\n        \"value\": \" All Rights Reserved | 2019 \\u00a9 Shoppr.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 11:46:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a75bddf9-663e-4d57-a1ef-a4c8fe3eddb3', '', '', '2019-01-12 11:46:43', '2019-01-12 11:46:43', '', 0, 'http://localhost/shop/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2019-01-12 12:20:38', '2019-01-12 12:20:38', '<b>[yith_wcwl_wishlist]</b>', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2019-01-12 12:25:37', '2019-01-12 12:25:37', '', 0, 'http://localhost/shop/?page_id=81', 0, 'page', '', 0),
(82, 1, '2019-01-12 12:20:38', '2019-01-12 12:20:38', '', 'Wishlist', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-12 12:20:38', '2019-01-12 12:20:38', '', 81, 'http://localhost/shop/2019/01/12/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-12 12:25:36', '2019-01-12 12:25:36', '<b>[yith_wcwl_wishlist]</b>', 'Wishlist', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-12 12:25:36', '2019-01-12 12:25:36', '', 81, 'http://localhost/shop/2019/01/12/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-01-12 12:28:53', '2019-01-12 12:28:53', '', 'Order &ndash; January 12, 2019 @ 12:28 PM', '', 'wc-processing', 'open', 'closed', 'order_5c39dd85f2759', 'order-jan-12-2019-1228-pm', '', '', '2019-01-12 12:28:57', '2019-01-12 12:28:57', '', 0, 'http://localhost/shop/?post_type=shop_order&#038;p=84', 0, 'shop_order', '', 1),
(85, 1, '2019-01-12 12:31:25', '2019-01-12 12:31:25', '', 'bank-check-icon-banking-check-checkbook-2', '', 'inherit', 'open', 'closed', '', 'bank-check-icon-banking-check-checkbook-2', '', '', '2019-01-12 12:31:25', '2019-01-12 12:31:25', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/bank-check-icon-banking-check-checkbook-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2019-01-12 12:31:56', '2019-01-12 12:31:56', '', '38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration', '', 'inherit', 'open', 'closed', '', '38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration', '', '', '2019-01-12 12:31:56', '2019-01-12 12:31:56', '', 0, 'http://localhost/shop/wp-content/uploads/2019/01/38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-01-12 12:32:15', '2019-01-12 12:32:15', '{\n    \"storevilla::paymentlogo_image_one\": {\n        \"value\": \"http://localhost/shop/wp-content/uploads/2019/01/38208490-cash-on-delivery-grunge-rubber-stamp-on-white-background-vector-illustration.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 12:32:15\"\n    },\n    \"storevilla::paymentlogo_image_two\": {\n        \"value\": \"http://localhost/shop/wp-content/uploads/2019/01/bank-check-icon-banking-check-checkbook-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-12 12:32:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8287df14-f3ce-4339-96c2-5f99d5761f1e', '', '', '2019-01-12 12:32:15', '2019-01-12 12:32:15', '', 0, 'http://localhost/shop/2019/01/12/8287df14-f3ce-4339-96c2-5f99d5761f1e/', 0, 'customize_changeset', '', 0),
(88, 1, '2019-01-17 07:46:00', '0000-00-00 00:00:00', '<div>\n<p class=\"pdp-product-description-content\"><a class=\"seolink\" href=\"https://www.myntra.com/maroon?src=pd\">Maroon</a> <a class=\"seolink\" href=\"https://www.myntra.com/solid?src=pd\">solid</a> longline overcoat, has a notched lapel, single-breasted with button closure, long sleeves, two flap pockets, an attached lining\nComes with a belt</p>\n\n</div>\n<div class=\"pdp-sizeFitDesc\">\n<h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4>\n<p class=\"pdp-sizeFitDescContent pdp-product-description-content\">Shell: wool\nLining: polyester\nDry-clean</p>\n\n</div>\n<div class=\"index-sizeFitDesc\">\n<div class=\"index-tableContainer\">\n<div class=\"index-row\"></div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Specifications</h4>\n<div class=\"index-tableContainer\">\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Occasion</div>\n<div class=\"index-rowValue\">Casual</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\"></div>\n<div class=\"index-rowValue\">Solid</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Fabric</div>\n<div class=\"index-rowValue\">Wool</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Sleeve Length</div>\n<div class=\"index-rowValue\">Long Sleeves</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Collar</div>\n<div class=\"index-rowValue\">Notched Lapel</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Length</div>\n<div class=\"index-rowValue\">Longline</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Fit</div>\n<div class=\"index-rowValue\">Regular Fit</div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Type</div>\n<div class=\"index-rowValue\">Overcoat</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', '', '', 'draft', 'open', 'closed', '', '', '', '', '2019-01-17 07:46:00', '2019-01-17 07:46:00', '', 0, 'http://localhost/shop/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2019-01-17 08:18:56', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-01-17 08:18:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?post_type=product&p=89', 0, 'product', '', 0),
(90, 1, '2019-01-17 09:55:41', '2019-01-17 09:55:41', '<div>\r\n<p class=\"pdp-product-description-content\">Red printed pullover, has a V-neck, long sleeves, ribbed hem</p>\r\n\r\n</div>\r\n<div class=\"pdp-sizeFitDesc\">\r\n<h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4>\r\n<p class=\"pdp-sizeFitDescContent pdp-product-description-content\">100% cotton\r\nMachine-wash</p>\r\n\r\n</div>\r\n<div class=\"index-sizeFitDesc\">\r\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Specifications</h4>\r\n<div class=\"index-tableContainer\">\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Fabric:-Cotton</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Pattern:-Printed</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Sleeve Length:-Long Sleeves</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Neck:-V-Neck</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Occasion:-Casual</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Type:-Pullover</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Wash Care:-Machine Wash</div>\r\n<div></div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Hemline:-Ribbed</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"index-tableContainer\"></div>\r\n<div class=\"index-sizeFitDesc\">\r\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Complete The Look</h4>\r\n<p class=\"index-sizeFitDescContent index-product-description-content\">You\'ll love the intricate design of this cosy Flying Machine sweater. This brown piece will keep you cosy during any outdoor event and looks fantastic when paired with slim black jeans and a light jacket.</p>\r\n\r\n</div>\r\n<div class=\"index-sizeFitDesc\">\r\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Size &amp; Fit</h4>\r\n<p class=\"index-sizeFitDescContent index-product-description-content\">The model (height 6\') is wearing a size M</p>\r\n\r\n</div>\r\n</div>\r\n</div>', 'Men Printed Pullover', '', 'publish', 'open', 'closed', '', 'men-maroon-printed-pullover', '', '', '2019-01-17 11:13:53', '2019-01-17 11:13:53', '', 0, 'http://localhost/shop/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2019-01-17 09:52:41', '2019-01-17 09:52:41', '', '11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3', '', 'inherit', 'open', 'closed', '', '11510304598919-flying-machine-men-brown-printed-pullover-9061510304598777-3', '', '', '2019-01-17 09:52:41', '2019-01-17 09:52:41', '', 90, 'http://localhost/shop/wp-content/uploads/2019/01/11510304598919-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-01-17 09:52:47', '2019-01-17 09:52:47', '', '11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2', '', 'inherit', 'open', 'closed', '', '11510304598936-flying-machine-men-brown-printed-pullover-9061510304598777-2', '', '', '2019-01-17 09:52:47', '2019-01-17 09:52:47', '', 90, 'http://localhost/shop/wp-content/uploads/2019/01/11510304598936-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-01-17 09:52:52', '2019-01-17 09:52:52', '', '11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1', '', 'inherit', 'open', 'closed', '', '11510304598952-flying-machine-men-brown-printed-pullover-9061510304598777-1', '', '', '2019-01-17 09:52:52', '2019-01-17 09:52:52', '', 90, 'http://localhost/shop/wp-content/uploads/2019/01/11510304598952-Flying-Machine-Men-Brown-Printed-Pullover-9061510304598777-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-17 10:59:43', '2019-01-17 10:59:43', '<div>\n<p class=\"pdp-product-description-content\">Red printed pullover, has a V-neck, long sleeves, ribbed hem</p>\n\n</div>\n<div class=\"pdp-sizeFitDesc\">\n<h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4>\n<p class=\"pdp-sizeFitDescContent pdp-product-description-content\">100% cotton\nMachine-wash</p>\n\n</div>\n<div class=\"index-sizeFitDesc\">\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Specifications</h4>\n<div class=\"index-tableContainer\">\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Fabric:-Cotton</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Pattern:-Printed</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Sleeve Length:-Long Sleeves</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Neck:-V-Neck</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Occasion:-Casual</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Type:-Pullover</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Wash Care:-Machine Wash</div>\n<div></div>\n</div>\n<div class=\"index-row\">\n<div class=\"index-rowKey\">Hemline:-Ribbed</div>\n</div>\n</div>\n<div>\n<div class=\"index-tableContainer\"></div>\n<div class=\"index-sizeFitDesc\">\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Complete The Look</h4>\n<p class=\"index-sizeFitDescContent index-product-description-content\">You\'ll love the intricate design of this cosy Flying Machine sweater. This brown piece will keep you cosy during any outdoor event and looks fantastic when paired with slim black jeans and a light jacket.</p>\n\n</div>\n<div class=\"index-sizeFitDesc\">\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Size &amp; Fit</h4>\n<p class=\"index-sizeFitDescContent index-product-description-content\">The model (height 6\') is wearing a size M</p>\n\n</div>\n</div>\n</div>', 'Men Maroon Printed Pullover', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2019-01-17 10:59:43', '2019-01-17 10:59:43', '', 90, 'http://localhost/shop/2019/01/17/90-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2019-01-17 11:00:09', '2019-01-17 11:00:09', '', 'Men Printed Pullover - Black, Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-large-black', '', '', '2019-01-17 11:13:25', '2019-01-17 11:13:25', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 1, 'product_variation', '', 0),
(96, 1, '2019-01-17 11:00:12', '2019-01-17 11:00:12', '', 'Men Printed Pullover - Black, Small', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-small-black', '', '', '2019-01-17 11:13:26', '2019-01-17 11:13:26', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 2, 'product_variation', '', 0),
(97, 1, '2019-01-17 11:00:14', '2019-01-17 11:00:14', '', 'Men Printed Pullover - Black, Medium', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-medium-black', '', '', '2019-01-17 11:13:26', '2019-01-17 11:13:26', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 3, 'product_variation', '', 0),
(98, 1, '2019-01-17 11:00:16', '2019-01-17 11:00:16', '', 'Men Printed Pullover - Black, Xtra Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-xtra-large-black', '', '', '2019-01-17 11:13:27', '2019-01-17 11:13:27', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 4, 'product_variation', '', 0),
(99, 1, '2019-01-17 11:00:18', '2019-01-17 11:00:18', '', 'Men Printed Pullover - Blue, Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-large-blue', '', '', '2019-01-17 11:13:27', '2019-01-17 11:13:27', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 5, 'product_variation', '', 0),
(100, 1, '2019-01-17 11:00:20', '2019-01-17 11:00:20', '', 'Men Printed Pullover - Blue, Small', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-small-blue', '', '', '2019-01-17 11:13:27', '2019-01-17 11:13:27', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 6, 'product_variation', '', 0),
(101, 1, '2019-01-17 11:00:23', '2019-01-17 11:00:23', '', 'Men Printed Pullover - Blue, Medium', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-medium-blue', '', '', '2019-01-17 11:13:27', '2019-01-17 11:13:27', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 7, 'product_variation', '', 0),
(102, 1, '2019-01-17 11:00:25', '2019-01-17 11:00:25', '', 'Men Printed Pullover - Blue, Xtra Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-xtra-large-blue', '', '', '2019-01-17 11:13:28', '2019-01-17 11:13:28', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 8, 'product_variation', '', 0),
(103, 1, '2019-01-17 11:00:27', '2019-01-17 11:00:27', '', 'Men Printed Pullover - Red, Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-large-red', '', '', '2019-01-17 11:13:28', '2019-01-17 11:13:28', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 9, 'product_variation', '', 0),
(104, 1, '2019-01-17 11:00:29', '2019-01-17 11:00:29', '', 'Men Printed Pullover - Red, Small', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-small-red', '', '', '2019-01-17 11:13:28', '2019-01-17 11:13:28', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 10, 'product_variation', '', 0),
(105, 1, '2019-01-17 11:00:31', '2019-01-17 11:00:31', '', 'Men Printed Pullover - Red, Medium', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-medium-red', '', '', '2019-01-17 11:13:29', '2019-01-17 11:13:29', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 11, 'product_variation', '', 0),
(106, 1, '2019-01-17 11:00:34', '2019-01-17 11:00:34', '', 'Men Printed Pullover - Red, Xtra Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-xtra-large-red', '', '', '2019-01-17 11:13:29', '2019-01-17 11:13:29', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 12, 'product_variation', '', 0),
(107, 1, '2019-01-17 11:00:36', '2019-01-17 11:00:36', '', 'Men Printed Pullover - White, Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-large-white', '', '', '2019-01-17 11:13:29', '2019-01-17 11:13:29', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 13, 'product_variation', '', 0),
(108, 1, '2019-01-17 11:00:38', '2019-01-17 11:00:38', '', 'Men Printed Pullover - White, Small', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-small-white', '', '', '2019-01-17 11:13:30', '2019-01-17 11:13:30', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 14, 'product_variation', '', 0),
(109, 1, '2019-01-17 11:00:40', '2019-01-17 11:00:40', '', 'Men Printed Pullover - White, Medium', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-medium-white', '', '', '2019-01-17 11:13:30', '2019-01-17 11:13:30', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 15, 'product_variation', '', 0),
(110, 1, '2019-01-17 11:00:42', '2019-01-17 11:00:42', '', 'Men Printed Pullover - White, Xtra Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-xtra-large-white', '', '', '2019-01-17 11:00:42', '2019-01-17 11:00:42', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 16, 'product_variation', '', 0),
(111, 1, '2019-01-17 11:00:44', '2019-01-17 11:00:44', '', 'Men Printed Pullover - Yellow, Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-large-yellow', '', '', '2019-01-17 11:00:44', '2019-01-17 11:00:44', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 17, 'product_variation', '', 0),
(112, 1, '2019-01-17 11:00:48', '2019-01-17 11:00:48', '', 'Men Printed Pullover - Yellow, Small', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-small-yellow', '', '', '2019-01-17 11:00:48', '2019-01-17 11:00:48', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 18, 'product_variation', '', 0),
(113, 1, '2019-01-17 11:00:51', '2019-01-17 11:00:51', '', 'Men Printed Pullover - Yellow, Medium', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-medium-yellow', '', '', '2019-01-17 11:00:51', '2019-01-17 11:00:51', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 19, 'product_variation', '', 0),
(114, 1, '2019-01-17 11:00:55', '2019-01-17 11:00:55', '', 'Men Printed Pullover - Yellow, Xtra Large', '', 'publish', 'closed', 'closed', '', 'men-maroon-printed-pullover-xtra-large-yellow', '', '', '2019-01-17 11:00:55', '2019-01-17 11:00:55', '', 90, 'http://localhost/shop/product/men-maroon-printed-pullover/', 20, 'product_variation', '', 0),
(115, 1, '2019-01-17 11:26:28', '2019-01-17 11:26:28', '<div class=\"pdp-productDescriptors\">\r\n<div class=\"pdp-productDescriptorsContainer\">\r\n<div>\r\n<h4 class=\"pdp-product-description-title\">PRODUCT DETAILS</h4>\r\n<p class=\"pdp-product-description-content\"><a class=\"seolink\" href=\"https://www.myntra.com/rust?src=pd\">Rust</a> <a class=\"seolink\" href=\"https://www.myntra.com/solid?src=pd\">solid</a> pullover, has a round neck, long sleeves, straight hem</p>\r\n\r\n</div>\r\n<div class=\"pdp-sizeFitDesc\">\r\n<h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4>\r\n<p class=\"pdp-sizeFitDescContent pdp-product-description-content\">100% acrylic\r\nMachine-wash</p>\r\n\r\n</div>\r\n<div class=\"index-sizeFitDesc\">\r\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Specifications</h4>\r\n<div class=\"index-tableContainer\">\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Fabric:-Acrylic</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Pattern:-Solid</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Sleeve Length:-Long Sleeves</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Neck:-Round Neck</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Occasion:-Casual</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Type:-Pullover</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Print or Pattern Type:-Solid</div>\r\n</div>\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Wash Care:-Machine Wash</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"index-tableContainer\">\r\n<div class=\"index-row\">\r\n<div class=\"index-rowKey\">Hemline:-Straight</div>\r\n</div>\r\n</div>\r\n<div class=\"index-sizeFitDesc\">\r\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Complete The Look</h4>\r\n<p class=\"index-sizeFitDescContent index-product-description-content\">Expand your cold-weather wardrobe with this chic sweater from her by invictus. You can style this rust piece with slim jeans and minimalistic silver jewellery for your next date night.</p>\r\n\r\n</div>\r\n<div class=\"index-sizeFitDesc\">\r\n<h4 class=\"index-sizeFitDescTitle index-product-description-title\">Size &amp; Fit</h4>\r\n<p class=\"index-sizeFitDescContent index-product-description-content\">The model (height 5\'8\") is wearing a size S</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"pincode-checkServiceAbilityhalfCard\">\r\n<div class=\"pincode-deliveryContainer\"></div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"meta-container\">\r\n<div class=\"meta-info\">\r\n<div class=\"meta-desc\"></div>\r\n</div>\r\n</div>\r\n</div>', 'Women Rust Solid Pullover', '<div>\r\n<h4 class=\"pdp-product-description-title\">PRODUCT DETAILS</h4>\r\n<p class=\"pdp-product-description-content\"><a class=\"seolink\" href=\"https://www.myntra.com/rust?src=pd\">Rust</a> <a class=\"seolink\" href=\"https://www.myntra.com/solid?src=pd\">solid</a> pullover, has a round neck, long sleeves, straight hem</p>\r\n\r\n</div>\r\n<div class=\"pdp-sizeFitDesc\">\r\n<h4 class=\"pdp-sizeFitDescTitle pdp-product-description-title\">Material &amp; Care</h4>\r\n<p class=\"pdp-sizeFitDescContent pdp-product-description-content\">100% acrylic\r\nMachine-wash</p>\r\n\r\n</div>', 'publish', 'open', 'closed', '', 'women-rust-solid-pullover', '', '', '2019-01-17 11:26:30', '2019-01-17 11:26:30', '', 0, 'http://localhost/shop/?post_type=product&#038;p=115', 0, 'product', '', 0),
(116, 1, '2019-01-17 11:23:03', '2019-01-17 11:23:03', '', 'Women Rust Solid Pullover - Large', '', 'publish', 'closed', 'closed', '', 'women-rust-solid-pullover-large', '', '', '2019-01-17 11:25:47', '2019-01-17 11:25:47', '', 115, 'http://localhost/shop/?post_type=product&p=115', 1, 'product_variation', '', 0),
(117, 1, '2019-01-17 11:23:05', '2019-01-17 11:23:05', '', 'Women Rust Solid Pullover - Small', '', 'publish', 'closed', 'closed', '', 'women-rust-solid-pullover-small', '', '', '2019-01-17 11:25:48', '2019-01-17 11:25:48', '', 115, 'http://localhost/shop/?post_type=product&p=115', 2, 'product_variation', '', 0),
(118, 1, '2019-01-17 11:23:07', '2019-01-17 11:23:07', '', 'Women Rust Solid Pullover - Medium', '', 'publish', 'closed', 'closed', '', 'women-rust-solid-pullover-medium', '', '', '2019-01-17 11:25:48', '2019-01-17 11:25:48', '', 115, 'http://localhost/shop/?post_type=product&p=115', 3, 'product_variation', '', 0),
(119, 1, '2019-01-17 11:23:09', '2019-01-17 11:23:09', '', 'Women Rust Solid Pullover - Xtra Large', '', 'publish', 'closed', 'closed', '', 'women-rust-solid-pullover-xtra-large', '', '', '2019-01-17 11:25:48', '2019-01-17 11:25:48', '', 115, 'http://localhost/shop/?post_type=product&p=115', 4, 'product_variation', '', 0),
(120, 1, '2019-01-17 11:25:07', '2019-01-17 11:25:07', '', 'dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1', '', 'inherit', 'open', 'closed', '', 'dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-invictus-women-rust-solid-pullover-271536736493051-1', '', '', '2019-01-17 11:25:07', '2019-01-17 11:25:07', '', 115, 'http://localhost/shop/wp-content/uploads/2019/01/dac25285-7a96-4e1b-88bd-9e870f6cca231536736493247-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-01-17 11:25:25', '2019-01-17 11:25:25', '', '8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6', '', 'inherit', 'open', 'closed', '', '8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-invictus-women-rust-solid-pullover-271536736493051-6', '', '', '2019-01-17 11:25:25', '2019-01-17 11:25:25', '', 115, 'http://localhost/shop/wp-content/uploads/2019/01/8a16bc41-dffc-4565-96bb-bac12d5efe6b1536736493154-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-01-17 11:25:30', '2019-01-17 11:25:30', '', '0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2', '', 'inherit', 'open', 'closed', '', '0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-invictus-women-rust-solid-pullover-271536736493051-2', '', '', '2019-01-17 11:25:30', '2019-01-17 11:25:30', '', 115, 'http://localhost/shop/wp-content/uploads/2019/01/0151cfb7-e6c6-4d00-8fe8-7c3122cc054b1536736493227-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2019-01-17 11:25:35', '2019-01-17 11:25:35', '', '788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5', '', 'inherit', 'open', 'closed', '', '788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-invictus-women-rust-solid-pullover-271536736493051-5', '', '', '2019-01-17 11:25:35', '2019-01-17 11:25:35', '', 115, 'http://localhost/shop/wp-content/uploads/2019/01/788a8a88-e494-4ce7-bc58-0126ebda81461536736493168-INVICTUS-Women-Rust-Solid-Pullover-271536736493051-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2019-01-17 11:31:12', '2019-01-17 11:31:12', '[post_grid id=\"132\"]', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-01-17 11:47:18', '2019-01-17 11:47:18', '', 0, 'http://localhost/shop/?page_id=124', 0, 'page', '', 0),
(125, 1, '2019-01-17 11:31:01', '2019-01-17 11:31:01', '', 'want53294-1g1dR21501518886 - Copy', '', 'inherit', 'open', 'closed', '', 'want53294-1g1dr21501518886-copy', '', '', '2019-01-17 11:31:01', '2019-01-17 11:31:01', '', 124, 'http://localhost/shop/wp-content/uploads/2019/01/want53294-1g1dR21501518886-Copy.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2019-01-17 11:31:12', '2019-01-17 11:31:12', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-01-17 11:31:12', '2019-01-17 11:31:12', '', 124, 'http://localhost/shop/2019/01/17/124-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-01-17 11:31:48', '2019-01-17 11:31:48', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-01-17 11:31:48', '2019-01-17 11:31:48', '', 0, 'http://localhost/shop/?p=127', 2, 'nav_menu_item', '', 0),
(128, 1, '2019-01-17 11:33:01', '0000-00-00 00:00:00', '', 'new', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-17 11:33:01', '2019-01-17 11:33:01', '', 0, 'http://localhost/shop/?post_type=post_grid&#038;p=128', 0, 'post_grid', '', 0),
(129, 1, '2019-01-17 11:33:27', '2019-01-17 11:33:27', '[post_grid id=\"128\"]', 'Blog', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-01-17 11:33:27', '2019-01-17 11:33:27', '', 124, 'http://localhost/shop/2019/01/17/124-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-01-17 11:33:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-17 11:33:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/shop/?p=130', 0, 'post', '', 0),
(131, 1, '2019-01-17 11:41:08', '2019-01-17 11:41:08', '<!-- wp:paragraph -->\n<p>Well…it’s officially COLD here in Utah!! &nbsp;All the pretty leaves and colors I have been raving about for months now are gone and it’s just plain cold…but I can’t complain!! I seriously love bundling up in the cold and doing all of the holiday activities with the family. Even basic errands are more fun because downtown is officially decorated so pretty – so many trees and beautiful lights everywhere. It’s all so magical!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Coats are always one of my very favorite things to buy. I swear you can never have too many! I am obsessed with this&nbsp;<a href=\"https://shopstyle.it/l/VHMx\">new green coat</a>&nbsp;from&nbsp;<a href=\"https://shopstyle.it/l/VHQo\">Saks</a>&nbsp;because its two coats in one. It can be worn without the longer part when its not quite as cold out, and add the longer part over it when it’s freezing! I love the look of both! &nbsp;For running errands with the family I paired my new coat with easy all black basics. You’ve seen me wear this&nbsp;<a href=\"https://shopstyle.it/l/VHMg\">turtleneck</a>&nbsp;many times before – it’s such a great staple to have in your closet and easy to layer with everything! &nbsp;Loving these&nbsp;<a href=\"https://shopstyle.it/l/VHNq\">new velvet black skinnies</a>&nbsp;and of course the pop of leopard in my&nbsp;<a href=\"https://shopstyle.it/l/VHPw\">shoes</a>&nbsp;and&nbsp;<a href=\"https://shopstyle.it/l/VHPa\">hat</a>. You could easily swap out the&nbsp;<a href=\"https://shopstyle.it/l/VHPw\">heels</a>&nbsp;for a pair of&nbsp;<a href=\"https://shopstyle.it/l/VHQg\">booties</a>&nbsp;for a more casual look – I recently got&nbsp;<a href=\"https://shopstyle.it/l/VHQg\">these</a>&nbsp;and love them!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://shopstyle.it/l/VHQo\">Saks Fifth Avenue</a>&nbsp;is currently having one of their best sales of the season – up to 40% off designer items! &nbsp;So if you love any of the items I am wearing here or need to stock on more winter staples, the sale is ending soon so now is such a good time to do it!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Are you guys stocking up on winter staples where you live – what’s your weather like?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<figure><iframe src=\"https://shopsensewidget.shopstyle.com/#/?options=%7B%22widgetId%22%3A%225bfc99b97ff69f6a80cac391%22%2C%22version%22%3A1%2C%22pid%22%3A%22uid4481-24735441-69%22%2C%22size%22%3A120%2C%22columns%22%3A4%2C%22rows%22%3A1%2C%22url%22%3A%22https%3A%2F%2Fapi.shopstyle.com%2Fapi%2Fv2%22%2C%22iframeHeight%22%3A247%2C%22iframeWidth%22%3A540%7D\" width=\"540\" height=\"247\"></iframe></figure>\n<!-- /wp:html -->', 'MY NEW FAVORITE WINTER STAPLES – UP TO 40% OFF!', '', 'publish', 'open', 'open', '', 'my-new-favorite-winter-staples-up-to-40-off', '', '', '2019-01-17 11:52:57', '2019-01-17 11:52:57', '', 0, 'http://localhost/shop/?p=131', 0, 'post', '', 0),
(132, 1, '2019-01-17 11:38:56', '2019-01-17 11:38:56', '', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-01-17 11:38:56', '2019-01-17 11:38:56', '', 0, 'http://localhost/shop/?post_type=post_grid&#038;p=132', 0, 'post_grid', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(133, 1, '2019-01-17 11:40:52', '2019-01-17 11:40:52', '', 'GC6A9302-3-1', '', 'inherit', 'open', 'closed', '', 'gc6a9302-3-1', '', '', '2019-01-17 11:40:52', '2019-01-17 11:40:52', '', 131, 'http://localhost/shop/wp-content/uploads/2019/01/GC6A9302-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-01-17 11:41:08', '2019-01-17 11:41:08', '<!-- wp:paragraph -->\n<p>Well…it’s officially COLD here in Utah!! &nbsp;All the pretty leaves and colors I have been raving about for months now are gone and it’s just plain cold…but I can’t complain!! I seriously love bundling up in the cold and doing all of the holiday activities with the family. Even basic errands are more fun because downtown is officially decorated so pretty – so many trees and beautiful lights everywhere. It’s all so magical!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Coats are always one of my very favorite things to buy. I swear you can never have too many! I am obsessed with this&nbsp;<a href=\"https://shopstyle.it/l/VHMx\">new green coat</a>&nbsp;from&nbsp;<a href=\"https://shopstyle.it/l/VHQo\">Saks</a>&nbsp;because its two coats in one. It can be worn without the longer part when its not quite as cold out, and add the longer part over it when it’s freezing! I love the look of both! &nbsp;For running errands with the family I paired my new coat with easy all black basics. You’ve seen me wear this&nbsp;<a href=\"https://shopstyle.it/l/VHMg\">turtleneck</a>&nbsp;many times before – it’s such a great staple to have in your closet and easy to layer with everything! &nbsp;Loving these&nbsp;<a href=\"https://shopstyle.it/l/VHNq\">new velvet black skinnies</a>&nbsp;and of course the pop of leopard in my&nbsp;<a href=\"https://shopstyle.it/l/VHPw\">shoes</a>&nbsp;and&nbsp;<a href=\"https://shopstyle.it/l/VHPa\">hat</a>. You could easily swap out the&nbsp;<a href=\"https://shopstyle.it/l/VHPw\">heels</a>&nbsp;for a pair of&nbsp;<a href=\"https://shopstyle.it/l/VHQg\">booties</a>&nbsp;for a more casual look – I recently got&nbsp;<a href=\"https://shopstyle.it/l/VHQg\">these</a>&nbsp;and love them!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://shopstyle.it/l/VHQo\">Saks Fifth Avenue</a>&nbsp;is currently having one of their best sales of the season – up to 40% off designer items! &nbsp;So if you love any of the items I am wearing here or need to stock on more winter staples, the sale is ending soon so now is such a good time to do it!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Are you guys stocking up on winter staples where you live – what’s your weather like?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<figure><iframe src=\"https://shopsensewidget.shopstyle.com/#/?options=%7B%22widgetId%22%3A%225bfc99b97ff69f6a80cac391%22%2C%22version%22%3A1%2C%22pid%22%3A%22uid4481-24735441-69%22%2C%22size%22%3A120%2C%22columns%22%3A4%2C%22rows%22%3A1%2C%22url%22%3A%22https%3A%2F%2Fapi.shopstyle.com%2Fapi%2Fv2%22%2C%22iframeHeight%22%3A247%2C%22iframeWidth%22%3A540%7D\" width=\"540\" height=\"247\"></iframe></figure>\n<!-- /wp:html -->', 'MY NEW FAVORITE WINTER STAPLES – UP TO 40% OFF!', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2019-01-17 11:41:08', '2019-01-17 11:41:08', '', 131, 'http://localhost/shop/2019/01/17/131-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-01-17 11:43:10', '2019-01-17 11:43:10', '[post_grid id=\"132\"]', 'Blog', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-01-17 11:43:10', '2019-01-17 11:43:10', '', 124, 'http://localhost/shop/2019/01/17/124-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2019-01-17 11:51:16', '2019-01-17 11:51:16', '<!-- wp:paragraph -->\n<p>aah the very first blog post of 2019. As much as I love sharing content on instagram, I do love my blog way way more – it allows me to share more photographs, write more and share with you guys a more elaborate story of whatever I do. And it’s ALL mine – not controlled by any algorithm, new app features launching every 3 months creating pressure to produce more and in different formats (IGTV, Live…) and no restrictions of any kind. My blog is my baby, however I may choose to raise it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I shot this look back when we went for a little staycation in&nbsp;<a href=\"http://akanksharedhu.com/2018/12/13/hamira/\" target=\"_blank\" rel=\"noreferrer noopener\">Hamira</a>. Such a gorgeous outfit paired with a bold and beautiful Dior bag. Hope you guys enjoy the pics. I’m gonna start packing for Sri Lanka after this! Can’t wait to head there and spend 6 days with Naina doing whatever we please.</p>\n<!-- /wp:paragraph -->', 'HELLO 2019!', '', 'publish', 'open', 'open', '', 'hello-2019', '', '', '2019-01-17 11:51:19', '2019-01-17 11:51:19', '', 0, 'http://localhost/shop/?p=137', 0, 'post', '', 0),
(138, 1, '2019-01-17 11:50:14', '2019-01-17 11:50:14', '<!-- wp:paragraph -->\n<p>aah the very first blog post of 2019. As much as I love sharing content on instagram, I do love my blog way way more – it allows me to share more photographs, write more and share with you guys a more elaborate story of whatever I do. And it’s ALL mine – not controlled by any algorithm, new app features launching every 3 months creating pressure to produce more and in different formats (IGTV, Live…) and no restrictions of any kind. My blog is my baby, however I may choose to raise it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I shot this look back when we went for a little staycation in&nbsp;<a href=\"http://akanksharedhu.com/2018/12/13/hamira/\" target=\"_blank\" rel=\"noreferrer noopener\">Hamira</a>. Such a gorgeous outfit paired with a bold and beautiful Dior bag. Hope you guys enjoy the pics. I’m gonna start packing for Sri Lanka after this! Can’t wait to head there and spend 6 days with Naina doing whatever we please.</p>\n<!-- /wp:paragraph -->', 'HELLO 2019!', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2019-01-17 11:50:14', '2019-01-17 11:50:14', '', 137, 'http://localhost/shop/2019/01/17/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-01-17 11:50:53', '2019-01-17 11:50:53', '', 'Processed with VSCO with c3 preset', 'Processed with VSCO with c3 preset', 'inherit', 'open', 'closed', '', 'processed-with-vsco-with-c3-preset', '', '', '2019-01-17 11:50:53', '2019-01-17 11:50:53', '', 137, 'http://localhost/shop/wp-content/uploads/2019/01/full-front-fly-side-of-water.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2019-01-17 11:59:12', '2019-01-17 11:59:12', '', 'Subscribe for latest fashion', '', 'publish', 'closed', 'closed', '', 'subscribe-for-latest-fashion', '', '', '2019-01-17 12:03:47', '2019-01-17 12:03:47', '', 0, 'http://localhost/shop/?post_type=popupbuilder&#038;p=140', 0, 'popupbuilder', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sgpb_subscribers`
--

CREATE TABLE `wp_sgpb_subscribers` (
  `id` int(12) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subscriptionType` int(12) DEFAULT NULL,
  `cDate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unsubscribed` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sgpb_subscription_error_log`
--

CREATE TABLE `wp_sgpb_subscription_error_log` (
  `id` int(12) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `popupType` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '1'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '20'),
(4, 17, 'order', '3'),
(5, 17, 'display_type', ''),
(6, 17, 'thumbnail_id', '25'),
(7, 18, 'order', '2'),
(8, 18, 'display_type', ''),
(9, 18, 'thumbnail_id', '22'),
(10, 15, 'order', '8'),
(11, 19, 'order', '5'),
(12, 19, 'display_type', ''),
(13, 19, 'thumbnail_id', '23'),
(14, 20, 'order', '4'),
(15, 20, 'display_type', ''),
(16, 20, 'thumbnail_id', '24'),
(17, 21, 'order', '6'),
(18, 21, 'display_type', ''),
(19, 21, 'thumbnail_id', '27'),
(20, 22, 'order', '7'),
(21, 22, 'display_type', ''),
(22, 22, 'thumbnail_id', '28'),
(23, 17, 'product_count_product_cat', '1'),
(24, 16, 'product_count_product_cat', '2'),
(25, 23, 'product_count_product_tag', '1'),
(26, 24, 'product_count_product_tag', '1'),
(27, 25, 'product_count_product_tag', '1'),
(28, 26, 'product_count_product_tag', '1'),
(29, 18, 'product_count_product_cat', '1'),
(30, 27, 'product_count_product_tag', '1'),
(31, 15, 'product_count_product_cat', '0'),
(32, 28, 'product_count_product_tag', '1'),
(33, 29, 'product_count_product_tag', '1'),
(34, 30, 'product_count_product_tag', '1'),
(35, 31, 'product_count_product_tag', '1'),
(36, 22, 'product_count_product_cat', '1'),
(37, 21, 'product_count_product_cat', '1'),
(38, 32, 'order', '0'),
(39, 32, 'display_type', ''),
(40, 32, 'thumbnail_id', '40'),
(41, 33, 'order', '0'),
(42, 33, 'display_type', ''),
(43, 33, 'thumbnail_id', '41'),
(44, 32, 'product_count_product_cat', '2'),
(45, 19, 'product_count_product_cat', '2'),
(46, 34, 'product_count_product_tag', '4'),
(47, 35, 'product_count_product_tag', '1'),
(48, 36, 'product_count_product_tag', '1'),
(49, 33, 'product_count_product_cat', '2'),
(50, 20, 'product_count_product_cat', '2'),
(51, 37, 'product_count_product_tag', '2'),
(52, 41, 'product_count_product_tag', '1'),
(53, 42, 'product_count_product_tag', '2'),
(54, 43, 'order_pa_color', '0'),
(55, 44, 'order_pa_color', '0'),
(56, 45, 'order_pa_color', '0'),
(57, 46, 'order_pa_color', '0'),
(58, 47, 'order_pa_color', '0'),
(59, 48, 'order_pa_sizes', '2'),
(60, 49, 'order_pa_sizes', '3'),
(61, 50, 'order_pa_sizes', '1'),
(62, 51, 'order_pa_sizes', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Electronics', 'electronics', 0),
(17, 'Mobiles', 'mobiles', 0),
(18, 'Laptops', 'laptops', 0),
(19, 'Men', 'men', 0),
(20, 'Women', 'women', 0),
(21, 'Books', 'books', 0),
(22, 'Indian Writing', 'indian', 0),
(23, 'poco f1', 'poco-f1', 0),
(24, 'mi', 'mi', 0),
(25, 'mobiles', 'mobiles', 0),
(26, 'electronics', 'electronics', 0),
(27, 'laptops', 'laptops', 0),
(28, 'amish', 'amish', 0),
(29, 'books', 'books', 0),
(30, 'indian writings', 'indian-writings', 0),
(31, 'india', 'india', 0),
(32, 'Winter wear', 'winter', 0),
(33, 'Winter wear', 'winter-women', 0),
(34, 'winter wear', 'winter-wear', 0),
(35, 'mens', 'mens', 0),
(36, 'mens clothing', 'mens-clothing', 0),
(37, 'women', 'women', 0),
(38, 'Main Menu', 'main-menu', 0),
(39, 'Offers', 'offers', 0),
(40, 'test', 'test', 0),
(41, 'Pullover', 'pullover', 0),
(42, 'fashion', 'fashion', 0),
(43, 'Red', 'red', 0),
(44, 'Blue', 'blue', 0),
(45, 'Yellow', 'yellow', 0),
(46, 'Black', 'black', 0),
(47, 'White', 'white', 0),
(48, 'Small', 'small', 0),
(49, 'Medium', 'medium', 0),
(50, 'Large', 'large', 0),
(51, 'Xtra Large', 'xtra-large', 0),
(52, 'blog', 'blog', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(29, 17, 0),
(29, 23, 0),
(29, 24, 0),
(29, 25, 0),
(29, 26, 0),
(34, 2, 0),
(34, 8, 0),
(34, 18, 0),
(34, 27, 0),
(37, 2, 0),
(37, 8, 0),
(37, 22, 0),
(37, 28, 0),
(37, 29, 0),
(37, 30, 0),
(37, 31, 0),
(42, 2, 0),
(42, 8, 0),
(42, 32, 0),
(42, 34, 0),
(42, 35, 0),
(42, 36, 0),
(45, 2, 0),
(45, 33, 0),
(45, 34, 0),
(45, 37, 0),
(47, 38, 0),
(48, 38, 0),
(49, 38, 0),
(50, 38, 0),
(51, 38, 0),
(55, 39, 0),
(67, 40, 0),
(90, 4, 0),
(90, 32, 0),
(90, 34, 0),
(90, 41, 0),
(90, 42, 0),
(90, 43, 0),
(90, 44, 0),
(90, 45, 0),
(90, 46, 0),
(90, 47, 0),
(90, 48, 0),
(90, 49, 0),
(90, 50, 0),
(90, 51, 0),
(115, 4, 0),
(115, 33, 0),
(115, 34, 0),
(115, 37, 0),
(115, 42, 0),
(115, 48, 0),
(115, 49, 0),
(115, 50, 0),
(115, 51, 0),
(127, 38, 0),
(131, 52, 0),
(137, 52, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 5),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 3),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 1),
(18, 18, 'product_cat', '', 16, 1),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.', 0, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'product_cat', '', 21, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_tag', '', 0, 1),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_cat', '', 19, 2),
(33, 33, 'product_cat', '', 20, 2),
(34, 34, 'product_tag', '', 0, 4),
(35, 35, 'product_tag', '', 0, 1),
(36, 36, 'product_tag', '', 0, 1),
(37, 37, 'product_tag', '', 0, 2),
(38, 38, 'nav_menu', '', 0, 6),
(39, 39, 'category', '', 0, 1),
(40, 40, 'category', '', 0, 1),
(41, 41, 'product_tag', '', 0, 1),
(42, 42, 'product_tag', '', 0, 2),
(43, 43, 'pa_color', '', 0, 1),
(44, 44, 'pa_color', '', 0, 1),
(45, 45, 'pa_color', '', 0, 1),
(46, 46, 'pa_color', '', 0, 1),
(47, 47, 'pa_color', '', 0, 1),
(48, 48, 'pa_sizes', '', 0, 2),
(49, 49, 'pa_sizes', '', 0, 2),
(50, 50, 'pa_sizes', '', 0, 2),
(51, 51, 'pa_sizes', '', 0, 2),
(52, 52, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'task1'),
(2, 1, 'first_name', 'abhay'),
(3, 1, 'last_name', 'naik'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1547277724'),
(23, 1, 'dismissed_no_secure_connection_notice', '1'),
(24, 1, 'dismissed_wootenberg_notice', '1'),
(25, 1, 'wc_last_active', '1547683200'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(28, 1, 'last_update', '1547296133'),
(29, 1, 'billing_first_name', 'abhay'),
(30, 1, 'billing_last_name', 'naik'),
(31, 1, 'billing_address_1', 'housing board colony'),
(32, 1, 'billing_city', 'sanquelim'),
(33, 1, 'billing_state', 'GA'),
(34, 1, 'billing_postcode', '403505'),
(35, 1, 'billing_country', 'IN'),
(36, 1, 'billing_email', 'abhayofcl97@gmail.com'),
(37, 1, 'billing_phone', '7507309469'),
(38, 1, 'shipping_first_name', 'abhay'),
(39, 1, 'shipping_last_name', 'naik'),
(40, 1, 'shipping_address_1', 'housing board colony'),
(41, 1, 'shipping_city', 'sanquelim'),
(42, 1, 'shipping_state', 'GA'),
(43, 1, 'shipping_postcode', '403505'),
(44, 1, 'shipping_country', 'IN'),
(45, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(50, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"e7bc2f086095ed61212cc93b5f26e656\";a:11:{s:3:\"key\";s:32:\"e7bc2f086095ed61212cc93b5f26e656\";s:10:\"product_id\";i:90;s:12:\"variation_id\";i:101;s:9:\"variation\";a:2:{s:18:\"attribute_pa_color\";s:4:\"blue\";s:18:\"attribute_pa_sizes\";s:6:\"medium\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"038236a20414a74cb811dd3ea728a526\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1200;s:8:\"line_tax\";i:0;}}}'),
(51, 1, 'session_tokens', 'a:1:{s:64:\"197d99230db8a43c3f999dc23c1d7fa15238c9c6790df75899306e643087e51b\";a:4:{s:10:\"expiration\";i:1547880431;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547707631;}}'),
(52, 1, 'nav_menu_recently_edited', '38');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'task1', '$P$BYi55e0MbC34eScKCbiG8hbX64ETH41', 'task1', 'abhayofcl97@gmail.com', '', '2019-01-12 05:48:58', '', 0, 'task1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wcpdf_invoice_number`
--

CREATE TABLE `wp_wcpdf_invoice_number` (
  `id` int(16) NOT NULL,
  `order_id` int(16) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `calculated_number` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wcpdf_invoice_number`
--

INSERT INTO `wp_wcpdf_invoice_number` (`id`, `order_id`, `date`, `calculated_number`) VALUES
(1, 84, '2019-01-12 12:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'sizes', 'Sizes', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '45'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '1250'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '1250'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Items', 'Full Sleeve Solid Women\'s Jacket &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Full Sleeve Solid Women\'s Jacket', 'line_item', 84),
(2, 'Free shipping', 'shipping', 84);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(18, '1', 'a:13:{s:4:\"cart\";s:492:\"a:1:{s:32:\"e7bc2f086095ed61212cc93b5f26e656\";a:11:{s:3:\"key\";s:32:\"e7bc2f086095ed61212cc93b5f26e656\";s:10:\"product_id\";i:90;s:12:\"variation_id\";i:101;s:9:\"variation\";a:2:{s:18:\"attribute_pa_color\";s:4:\"blue\";s:18:\"attribute_pa_sizes\";s:6:\"medium\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"038236a20414a74cb811dd3ea728a526\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1200;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:411:\"a:15:{s:8:\"subtotal\";s:7:\"1200.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:7:\"1200.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"1200.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:883:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2019-01-12T12:28:53+00:00\";s:8:\"postcode\";s:6:\"403505\";s:4:\"city\";s:9:\"sanquelim\";s:9:\"address_1\";s:20:\"housing board colony\";s:7:\"address\";s:20:\"housing board colony\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"GA\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"403505\";s:13:\"shipping_city\";s:9:\"sanquelim\";s:18:\"shipping_address_1\";s:20:\"housing board colony\";s:16:\"shipping_address\";s:20:\"housing board colony\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"GA\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:5:\"abhay\";s:9:\"last_name\";s:4:\"naik\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"7507309469\";s:5:\"email\";s:21:\"abhayofcl97@gmail.com\";s:19:\"shipping_first_name\";s:5:\"abhay\";s:18:\"shipping_last_name\";s:4:\"naik\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:419:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_b79c05ebda4e754678059c8de4cebb5b\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:45:\"Men Printed Pullover - Blue, Medium &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:6:\"cheque\";}', 1547895024);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'India', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'IN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(1, 45, 1, 1, 1, '2019-01-12 06:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`) VALUES
(1, 1, '', '', 'LDWBDWEFX13O', 0, 1, '2019-01-12 08:00:57');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_pickplugins_wl_data`
--
ALTER TABLE `wp_pickplugins_wl_data`
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `wp_sgpb_subscribers`
--
ALTER TABLE `wp_sgpb_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_sgpb_subscription_error_log`
--
ALTER TABLE `wp_sgpb_subscription_error_log`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wcpdf_invoice_number`
--
ALTER TABLE `wp_wcpdf_invoice_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1459;

--
-- AUTO_INCREMENT for table `wp_pickplugins_wl_data`
--
ALTER TABLE `wp_pickplugins_wl_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1473;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_sgpb_subscribers`
--
ALTER TABLE `wp_sgpb_subscribers`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sgpb_subscription_error_log`
--
ALTER TABLE `wp_sgpb_subscription_error_log`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wcpdf_invoice_number`
--
ALTER TABLE `wp_wcpdf_invoice_number`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
