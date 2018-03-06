-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2017 at 08:17 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larademo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:05:31', '2017-09-13 06:05:31', NULL),
(2, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:05:54', '2017-09-13 06:05:54', NULL),
(3, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:09:24', '2017-09-13 06:09:24', NULL),
(4, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:13:46', '2017-09-13 06:13:46', NULL),
(5, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:14:10', '2017-09-13 06:14:10', NULL),
(6, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:14:56', '2017-09-13 06:14:56', NULL),
(7, 'dsfgdhfgdfd', 'email@emememe.em', 'gsndbfsg\\dfawteabf', '2017-09-13 06:15:14', '2017-09-13 06:15:14', NULL),
(8, 'gfkt7yluk', 'rjmyuiy@msdfb.d', 'lukyutilykjn', '2017-09-13 06:17:38', '2017-09-13 06:17:38', NULL),
(9, 'gfkt7yluk', 'rjmyuiy@msdfb.d', 'lukyutilykjn', '2017-09-13 06:20:04', '2017-09-13 06:20:04', NULL),
(10, 'gfkt7yluk', 'rjmyuiy@msdfb.d', 'lukyutilykjn', '2017-09-13 06:20:42', '2017-09-13 06:20:42', NULL),
(11, 'gfkt7yluk', 'rjmyuiy@msdfb.d', 'lukyutilykjn', '2017-09-13 06:21:01', '2017-09-13 06:21:01', NULL),
(12, 'sdsfbvsd', 'fbsd@as.as', 'gbsfgdb', '2017-09-13 06:21:34', '2017-09-13 06:21:34', NULL),
(13, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:22:56', '2017-09-13 06:22:56', NULL),
(14, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:23:22', '2017-09-13 06:23:22', NULL),
(15, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:24:27', '2017-09-13 06:24:27', NULL),
(16, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:25:10', '2017-09-13 06:25:10', NULL),
(17, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:25:22', '2017-09-13 06:25:22', NULL),
(18, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:25:45', '2017-09-13 06:25:45', NULL),
(19, 'sadsgwte', 'fghdfghfgd@as.as', 'sghdf', '2017-09-13 06:26:09', '2017-09-13 06:26:09', NULL),
(20, 'ftdjgdnfh', 'jgrftjghdrjfj@asdgdfdsf.sdf', 'dfhjgfhj', '2017-09-13 06:35:06', '2017-09-13 06:35:06', NULL),
(21, NULL, NULL, NULL, '2017-09-13 09:13:33', '2017-09-13 09:13:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(5, 1, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(7, 1, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'Meta description', 1, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'Meta keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'Created at', 0, 1, 1, 0, 0, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'Updated at', 0, 0, 0, 0, 0, 0, NULL, 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, NULL, 2),
(16, 2, 'title', 'text', 'Titlu', 1, 1, 1, 1, 1, 1, NULL, 3),
(17, 2, 'excerpt', 'rich_text_box', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 4),
(18, 2, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'Meta description', 0, 0, 1, 1, 1, 1, NULL, 7),
(21, 2, 'meta_keywords', 'text', 'Meta keywords', 0, 0, 1, 1, 1, 1, NULL, 8),
(22, 2, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'Created at', 0, 1, 1, 0, 0, 0, NULL, 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 11),
(25, 2, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(31, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(32, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(33, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(34, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(35, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(36, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(37, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(38, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(39, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(40, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(41, 4, 'name', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(42, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, NULL, 5),
(43, 4, 'created_at', 'timestamp', 'Created at', 0, 0, 1, 0, 0, 0, NULL, 6),
(44, 4, 'updated_at', 'timestamp', 'Updated at', 0, 0, 0, 0, 0, 0, NULL, 7),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(50, 1, 'seo_title', 'text', 'SEO title', 0, 1, 1, 1, 1, 1, NULL, 14),
(51, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(52, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(65, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 12, 'name', 'text', 'Link title', 1, 1, 1, 1, 1, 1, NULL, 2),
(68, 12, 'created_at', 'timestamp', 'Created at', 0, 1, 1, 1, 0, 1, NULL, 3),
(69, 12, 'updated_at', 'timestamp', 'Updated at', 0, 0, 0, 0, 0, 0, NULL, 4),
(70, 12, 'deleted_at', 'timestamp', 'Deleted at', 0, 0, 0, 0, 0, 0, NULL, 5),
(72, 12, 'pagina', 'select_dropdown', 'Page', 1, 0, 1, 1, 1, 1, '{\"relationship\":{\"key\":\"slug\",\"label\":\"title\"}}', 6),
(73, 12, 'order', 'number', 'Order', 0, 1, 1, 1, 0, 0, NULL, 7),
(74, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(75, 19, 'titlu', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 2),
(76, 19, 'imagine', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3),
(77, 19, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, NULL, 4),
(78, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(79, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(80, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 7),
(81, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 20, 'name', 'text', 'Name', 0, 1, 1, 0, 0, 1, NULL, 2),
(83, 20, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 1, NULL, 3),
(84, 20, 'message', 'text_area', 'Message', 0, 1, 1, 0, 0, 1, NULL, 4),
(85, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, NULL, 5),
(86, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(87, 20, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 7),
(88, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(89, 21, 'setting', 'text', 'Setting', 0, 1, 1, 1, 0, 0, NULL, 2),
(90, 21, 'value', 'text', 'Value', 0, 1, 1, 1, 1, 1, NULL, 4),
(91, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 5),
(92, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(93, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 7),
(94, 21, 'key', 'text', 'Key', 0, 1, 1, 0, 0, 0, NULL, 3),
(95, 19, 'order', 'checkbox', 'Order', 0, 1, 1, 1, 1, 1, NULL, 8),
(96, 19, 'descriere', 'checkbox', 'Description', 0, 1, 1, 1, 1, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', NULL, NULL, 1, 0, '2017-09-01 06:57:31', '2017-09-11 03:25:01'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, 1, 0, '2017-09-01 06:57:31', '2017-09-11 03:23:24'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', 1, 0, '2017-09-01 06:57:31', '2017-09-01 06:57:31'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, 1, 0, '2017-09-01 06:57:31', '2017-09-11 03:25:53'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-09-01 06:57:31', '2017-09-01 06:57:31'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-09-01 06:57:31', '2017-09-01 06:57:31'),
(12, 'front_menus', 'front_menus', 'Front Menu', 'Front Menus', 'voyager-list', 'TCG\\Voyager\\Models\\FrontMenu', NULL, NULL, 1, 0, '2017-09-08 06:27:37', '2017-09-08 06:27:37'),
(19, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'gabized\\front\\models\\Slider', NULL, NULL, 1, 0, '2017-09-12 04:08:03', '2017-09-12 04:09:03'),
(20, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-mail', 'gabized\\front\\models\\Contact', NULL, NULL, 1, 0, '2017-09-13 06:00:53', '2017-09-13 06:00:53'),
(21, 'front_settings', 'front-settings', 'Front Setting', 'Front Settings', 'voyager-params', 'gabized\\front\\models\\FrontSetting', NULL, NULL, 1, 0, '2017-09-13 07:19:44', '2017-09-13 07:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `front_menus`
--

CREATE TABLE `front_menus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pagina` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `front_menus`
--

INSERT INTO `front_menus` (`id`, `name`, `pagina`, `created_at`, `updated_at`, `deleted_at`, `order`) VALUES
(9, 'Despre voi', 'pagina-2', '2017-09-08 07:57:00', '2017-09-11 02:59:27', NULL, 2),
(8, 'Despre noi', 'pagina-1', '2017-09-08 07:56:00', '2017-09-11 02:59:29', NULL, 1),
(10, 'Despre ei', 'pagina-3', '2017-09-08 07:57:00', '2017-09-11 02:59:24', NULL, 3),
(11, 'Contact', 'contact', '2017-09-08 07:57:00', '2017-09-13 09:13:28', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `front_settings`
--

CREATE TABLE `front_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_settings`
--

INSERT INTO `front_settings` (`id`, `setting`, `value`, `created_at`, `updated_at`, `deleted_at`, `key`) VALUES
(1, 'Phone number 1', '+ 1 268 442 726', '2017-09-13 07:22:09', '2017-09-14 14:51:11', NULL, 'tel1'),
(2, 'Phone number 2', '89780342', '2017-09-13 07:22:22', '2017-09-14 14:51:02', NULL, 'tel2'),
(3, 'Email 1', 'somemail@something.com', '2017-09-13 07:23:01', '2017-09-14 14:50:54', NULL, 'email1'),
(5, 'Email 2', 'somemail@something.com', '2017-09-13 07:23:27', '2017-09-14 14:50:47', NULL, 'email2'),
(6, 'Sitename', 'Demo site', '2017-09-13 07:24:53', '2017-09-14 14:50:23', NULL, 'sitename'),
(7, 'Address', 'Infinite Loop 1, Cupertino', '2017-09-13 07:26:04', '2017-09-14 14:51:28', NULL, 'address'),
(8, 'Facebook', 'http://facebook.com/test', '2017-09-13 07:26:04', '2017-09-13 07:26:04', NULL, 'facebook'),
(9, 'Google+', 'http://google.com/test', '2017-09-13 07:26:04', '2017-09-13 07:26:04', NULL, 'google');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-09-01 06:57:33', '2017-09-01 06:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-home', '#000000', NULL, 1, '2017-09-01 06:57:33', '2017-09-05 08:31:07', NULL, ''),
(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 7, '2017-09-01 06:57:33', '2017-09-12 04:10:48', NULL, NULL),
(3, 1, 'Posts', '/admin/posts', '_self', 'voyager-news', '#000000', NULL, 2, '2017-09-01 06:57:33', '2017-09-14 14:43:46', NULL, ''),
(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', '#000000', NULL, 9, '2017-09-01 06:57:33', '2017-09-14 14:45:25', NULL, ''),
(5, 1, 'Categories', '/admin/categories', '_self', 'voyager-categories', '#000000', NULL, 3, '2017-09-01 06:57:33', '2017-09-14 14:44:22', NULL, ''),
(6, 1, 'Pages', '/admin/pages', '_self', 'voyager-file-text', '#000000', NULL, 4, '2017-09-01 06:57:33', '2017-09-14 14:44:36', NULL, ''),
(7, 1, 'Permissions', '/admin/roles', '_self', 'voyager-lock', '#000000', 8, 4, '2017-09-01 06:57:33', '2017-09-14 14:45:18', NULL, ''),
(8, 1, 'Settings', '', '_self', 'voyager-tools', '#000000', NULL, 8, '2017-09-01 06:57:33', '2017-09-14 14:45:02', NULL, ''),
(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-09-01 06:57:33', '2017-09-05 08:31:54', NULL, NULL),
(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-09-01 06:57:33', '2017-09-05 08:31:54', NULL, NULL),
(11, 1, 'Admin settings', '/admin/settings', '_self', 'voyager-settings', '#000000', 8, 3, '2017-09-01 06:57:33', '2017-09-14 14:45:10', NULL, ''),
(12, 1, 'Menus', 'admin/front_menus', '_self', 'voyager-list', '#000000', NULL, 5, '2017-09-07 10:17:24', '2017-09-14 14:44:48', NULL, ''),
(13, 1, 'Sliders', 'admin/sliders', '_self', 'voyager-images', '#000000', NULL, 6, '2017-09-12 04:10:01', '2017-09-14 14:44:53', NULL, ''),
(14, 1, 'Contact messages', 'admin/contacts', '_self', 'voyager-mail', '#000000', NULL, 10, '2017-09-13 06:01:58', '2017-09-14 14:45:33', NULL, ''),
(15, 1, 'Site settings', 'admin/front-settings', '_self', 'voyager-params', '#000000', NULL, 11, '2017-09-13 07:21:36', '2017-09-14 14:45:41', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pagina 1', 'ceva scurt despre pagina 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu risus mi. Phasellus felis urna, porttitor a eleifend sit amet, gravida vitae metus. Curabitur blandit arcu eleifend orci convallis porttitor. Donec sed magna a augue luctus dignissim. Fusce pulvinar bibendum augue non posuere. Proin bibendum massa velit, in posuere mi facilisis ut. In eget leo diam. Cras suscipit, orci at luctus dapibus, metus lorem interdum justo, ut scelerisque orci ante sed turpis. Fusce quam nisi, ullamcorper vitae venenatis eu, suscipit in tellus.</p>\r\n<p>Aliquam sed erat eget arcu lacinia aliquet. Fusce eros turpis, suscipit sagittis convallis sit amet, dignissim quis massa. Fusce ultricies, lectus sit amet eleifend molestie, velit ante rhoncus nibh, eu ultrices lorem purus et massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque leo felis, malesuada sed laoreet dictum, fermentum sed nisl. Phasellus ac purus ultrices, luctus risus vel, gravida risus. Mauris bibendum odio et ante consequat, sed tincidunt ex vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed porttitor neque quis cursus dapibus. Integer mattis fringilla odio, id vehicula libero consectetur eu. Vestibulum sollicitudin in ipsum ac viverra.</p>\r\n<p>Ut sit amet mi nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc ultricies, metus vitae sodales ultricies, magna diam placerat diam, in vehicula arcu ante non ex. Curabitur fermentum sagittis tincidunt. Nulla sit amet consectetur urna. Vivamus quis porta risus. Maecenas at consectetur sem. Sed congue justo id velit tincidunt interdum ac at nisi. Pellentesque ac orci vel magna varius vehicula. Mauris convallis magna non tempus volutpat. Donec vitae mauris sollicitudin, mollis turpis eget, tempor nisi.</p>', NULL, 'pagina-1', NULL, NULL, 'ACTIVE', '2017-09-07 07:35:22', '2017-09-07 07:35:22'),
(2, 1, 'Pagina 2', 'ceva scurt despre pagina 2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu risus mi. Phasellus felis urna, porttitor a eleifend sit amet, gravida vitae metus. Curabitur blandit arcu eleifend orci convallis porttitor. Donec sed magna a augue luctus dignissim. Fusce pulvinar bibendum augue non posuere. Proin bibendum massa velit, in posuere mi facilisis ut. In eget leo diam. Cras suscipit, orci at luctus dapibus, metus lorem interdum justo, ut scelerisque orci ante sed turpis. Fusce quam nisi, ullamcorper vitae venenatis eu, suscipit in tellus.</p>\r\n<p>Aliquam sed erat eget arcu lacinia aliquet. Fusce eros turpis, suscipit sagittis convallis sit amet, dignissim quis massa. Fusce ultricies, lectus sit amet eleifend molestie, velit ante rhoncus nibh, eu ultrices lorem purus et massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque leo felis, malesuada sed laoreet dictum, fermentum sed nisl. Phasellus ac purus ultrices, luctus risus vel, gravida risus. Mauris bibendum odio et ante consequat, sed tincidunt ex vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed porttitor neque quis cursus dapibus. Integer mattis fringilla odio, id vehicula libero consectetur eu. Vestibulum sollicitudin in ipsum ac viverra.</p>\r\n<p>Ut sit amet mi nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc ultricies, metus vitae sodales ultricies, magna diam placerat diam, in vehicula arcu ante non ex. Curabitur fermentum sagittis tincidunt. Nulla sit amet consectetur urna. Vivamus quis porta risus. Maecenas at consectetur sem. Sed congue justo id velit tincidunt interdum ac at nisi. Pellentesque ac orci vel magna varius vehicula. Mauris convallis magna non tempus volutpat. Donec vitae mauris sollicitudin, mollis turpis eget, tempor nisi.</p>', NULL, 'pagina-2', NULL, NULL, 'ACTIVE', '2017-09-07 07:35:45', '2017-09-07 07:35:45'),
(3, 1, 'Pagina 3', 'ceva scurt despre pagina3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu risus mi. Phasellus felis urna, porttitor a eleifend sit amet, gravida vitae metus. Curabitur blandit arcu eleifend orci convallis porttitor. Donec sed magna a augue luctus dignissim. Fusce pulvinar bibendum augue non posuere. Proin bibendum massa velit, in posuere mi facilisis ut. In eget leo diam. Cras suscipit, orci at luctus dapibus, metus lorem interdum justo, ut scelerisque orci ante sed turpis. Fusce quam nisi, ullamcorper vitae venenatis eu, suscipit in tellus.</p>\r\n<p>Aliquam sed erat eget arcu lacinia aliquet. Fusce eros turpis, suscipit sagittis convallis sit amet, dignissim quis massa. Fusce ultricies, lectus sit amet eleifend molestie, velit ante rhoncus nibh, eu ultrices lorem purus et massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque leo felis, malesuada sed laoreet dictum, fermentum sed nisl. Phasellus ac purus ultrices, luctus risus vel, gravida risus. Mauris bibendum odio et ante consequat, sed tincidunt ex vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed porttitor neque quis cursus dapibus. Integer mattis fringilla odio, id vehicula libero consectetur eu. Vestibulum sollicitudin in ipsum ac viverra.</p>\r\n<p>Ut sit amet mi nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc ultricies, metus vitae sodales ultricies, magna diam placerat diam, in vehicula arcu ante non ex. Curabitur fermentum sagittis tincidunt. Nulla sit amet consectetur urna. Vivamus quis porta risus. Maecenas at consectetur sem. Sed congue justo id velit tincidunt interdum ac at nisi. Pellentesque ac orci vel magna varius vehicula. Mauris convallis magna non tempus volutpat. Donec vitae mauris sollicitudin, mollis turpis eget, tempor nisi.</p>', NULL, 'pagina-3', NULL, NULL, 'ACTIVE', '2017-09-07 07:36:10', '2017-09-07 07:36:10'),
(4, 1, 'Pagina 4', 'ceva scurt despre pagina 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu risus mi. Phasellus felis urna, porttitor a eleifend sit amet, gravida vitae metus. Curabitur blandit arcu eleifend orci convallis porttitor. Donec sed magna a augue luctus dignissim. Fusce pulvinar bibendum augue non posuere. Proin bibendum massa velit, in posuere mi facilisis ut. In eget leo diam. Cras suscipit, orci at luctus dapibus, metus lorem interdum justo, ut scelerisque orci ante sed turpis. Fusce quam nisi, ullamcorper vitae venenatis eu, suscipit in tellus.</p>\r\n<p>Aliquam sed erat eget arcu lacinia aliquet. Fusce eros turpis, suscipit sagittis convallis sit amet, dignissim quis massa. Fusce ultricies, lectus sit amet eleifend molestie, velit ante rhoncus nibh, eu ultrices lorem purus et massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque leo felis, malesuada sed laoreet dictum, fermentum sed nisl. Phasellus ac purus ultrices, luctus risus vel, gravida risus. Mauris bibendum odio et ante consequat, sed tincidunt ex vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed porttitor neque quis cursus dapibus. Integer mattis fringilla odio, id vehicula libero consectetur eu. Vestibulum sollicitudin in ipsum ac viverra.</p>\r\n<p>Ut sit amet mi nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc ultricies, metus vitae sodales ultricies, magna diam placerat diam, in vehicula arcu ante non ex. Curabitur fermentum sagittis tincidunt. Nulla sit amet consectetur urna. Vivamus quis porta risus. Maecenas at consectetur sem. Sed congue justo id velit tincidunt interdum ac at nisi. Pellentesque ac orci vel magna varius vehicula. Mauris convallis magna non tempus volutpat. Donec vitae mauris sollicitudin, mollis turpis eget, tempor nisi.</p>', NULL, 'pagina-4', NULL, NULL, 'INACTIVE', '2017-09-07 08:13:18', '2017-09-07 08:13:18'),
(5, 1, 'Homepage', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sagittis dapibus interdum. Suspendisse posuere tristique tortor, vitae posuere velit laoreet eu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec libero mauris, malesuada et pharetra ut, rutrum nec velit. Ut tellus elit, molestie nec elit sed, placerat vulputate lorem. Etiam semper congue metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n<p>Pellentesque sed magna nisl. Praesent vel suscipit neque, sit amet pulvinar odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque maximus, nunc sed venenatis pellentesque, diam justo convallis nulla, non rhoncus augue urna non magna. Donec maximus massa auctor consequat mollis. Cras finibus orci eu odio lacinia, et molestie metus tincidunt. Mauris porttitor lacinia turpis cursus varius. Vestibulum tempus pretium urna quis molestie.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sagittis dapibus interdum. Suspendisse posuere tristique tortor, vitae posuere velit laoreet eu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec libero mauris, malesuada et pharetra ut, rutrum nec velit. Ut tellus elit, molestie nec elit sed, placerat vulputate lorem. Etiam semper congue metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent consequat, leo eu maximus finibus, diam velit rhoncus turpis, interdum tempor ipsum ante ac lorem. Integer mattis enim enim, non convallis ex tincidunt non. Cras vel justo a ipsum vulputate posuere. Proin maximus rhoncus commodo. In fringilla, massa at venenatis venenatis, nisi orci varius turpis, nec commodo velit enim ac turpis.</p>\r\n<p>Pellentesque sed magna nisl. Praesent vel suscipit neque, sit amet pulvinar odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque maximus, nunc sed venenatis pellentesque, diam justo convallis nulla, non rhoncus augue urna non magna. Donec maximus massa auctor consequat mollis. Cras finibus orci eu odio lacinia, et molestie metus tincidunt. Mauris porttitor lacinia turpis cursus varius. Vestibulum tempus pretium urna quis molestie. In hac habitasse platea dictumst. Donec eget ante ut est eleifend consequat eget sit amet tortor. Nullam faucibus tortor erat, ut ultrices mauris suscipit sed. In eget viverra lacus. Aenean venenatis laoreet urna, eu volutpat nibh ullamcorper vel.</p>\r\n<p>Nunc non molestie est, et dignissim diam. Cras vitae justo id nunc facilisis sagittis a id odio. Sed facilisis ultricies enim, eget condimentum turpis aliquam vitae. Nunc lobortis suscipit magna ac congue. Curabitur euismod tristique neque, vel rhoncus eros malesuada vitae. Mauris quis felis ut purus faucibus fringilla. Aenean mollis lacinia imperdiet. Nunc rutrum blandit scelerisque. Aliquam blandit diam faucibus, accumsan dolor id, posuere erat. Nam ut ipsum elit. Aenean lobortis interdum congue. Suspendisse potenti. Duis sed nibh ligula. Suspendisse vel lobortis purus, nec blandit mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 'pages/September2017/agf4tRQoiJ2X2FgSJGll.jpg', 'homepage', 'descriere meta pt homepage', 'descriere, meta, pt, homepage', 'ACTIVE', '2017-09-07 10:07:01', '2017-09-14 04:48:45'),
(6, 1, 'Contact', '<p>Pagina de contact</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu risus mi. Phasellus felis urna, porttitor a eleifend sit amet, gravida vitae metus. Curabitur blandit arcu eleifend orci convallis porttitor. Donec sed magna a augue luctus dignissim. Fusce pulvinar bibendum augue non posuere. Proin bibendum massa velit, in posuere mi facilisis ut. In eget leo diam. Cras suscipit, orci at luctus dapibus, metus lorem interdum justo, ut scelerisque orci ante sed turpis. Fusce quam nisi, ullamcorper vitae venenatis eu, suscipit in tellus.</p>\r\n<p>Aliquam sed erat eget arcu lacinia aliquet. Fusce eros turpis, suscipit sagittis convallis sit amet, dignissim quis massa. Fusce ultricies, lectus sit amet eleifend molestie, velit ante rhoncus nibh, eu ultrices lorem purus et massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque leo felis, malesuada sed laoreet dictum, fermentum sed nisl. Phasellus ac purus ultrices, luctus risus vel, gravida risus. Mauris bibendum odio et ante consequat, sed tincidunt ex vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed porttitor neque quis cursus dapibus. Integer mattis fringilla odio, id vehicula libero consectetur eu. Vestibulum sollicitudin in ipsum ac viverra.</p>\r\n<p>Ut sit amet mi nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc ultricies, metus vitae sodales ultricies, magna diam placerat diam, in vehicula arcu ante non ex. Curabitur fermentum sagittis tincidunt. Nulla sit amet consectetur urna. Vivamus quis porta risus. Maecenas at consectetur sem. Sed congue justo id velit tincidunt interdum ac at nisi. Pellentesque ac orci vel magna varius vehicula. Mauris convallis magna non tempus volutpat. Donec vitae mauris sollicitudin, mollis turpis eget, tempor nisi.</p>', NULL, 'contact', NULL, NULL, 'ACTIVE', '2017-09-13 09:12:35', '2017-09-13 09:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(2, 'browse_database', NULL, '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(3, 'browse_media', NULL, '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(4, 'browse_settings', NULL, '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(5, 'browse_menus', 'menus', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(6, 'read_menus', 'menus', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(7, 'edit_menus', 'menus', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(8, 'add_menus', 'menus', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(9, 'delete_menus', 'menus', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(10, 'browse_pages', 'pages', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(11, 'read_pages', 'pages', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(12, 'edit_pages', 'pages', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(13, 'add_pages', 'pages', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(14, 'delete_pages', 'pages', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(15, 'browse_roles', 'roles', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(16, 'read_roles', 'roles', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(17, 'edit_roles', 'roles', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(18, 'add_roles', 'roles', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(19, 'delete_roles', 'roles', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(20, 'browse_users', 'users', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(21, 'read_users', 'users', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(22, 'edit_users', 'users', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(23, 'add_users', 'users', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(24, 'delete_users', 'users', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(25, 'browse_posts', 'posts', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(26, 'read_posts', 'posts', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(27, 'edit_posts', 'posts', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(28, 'add_posts', 'posts', '2017-09-01 06:57:33', '2017-09-01 06:57:33', NULL),
(29, 'delete_posts', 'posts', '2017-09-01 06:57:34', '2017-09-01 06:57:34', NULL),
(30, 'browse_categories', 'categories', '2017-09-01 06:57:34', '2017-09-01 06:57:34', NULL),
(31, 'read_categories', 'categories', '2017-09-01 06:57:34', '2017-09-01 06:57:34', NULL),
(32, 'edit_categories', 'categories', '2017-09-01 06:57:34', '2017-09-01 06:57:34', NULL),
(33, 'add_categories', 'categories', '2017-09-01 06:57:34', '2017-09-01 06:57:34', NULL),
(34, 'delete_categories', 'categories', '2017-09-01 06:57:34', '2017-09-01 06:57:34', NULL),
(45, 'browse_front_menus', 'front_menus', '2017-09-08 06:27:37', '2017-09-08 06:27:37', NULL),
(46, 'read_front_menus', 'front_menus', '2017-09-08 06:27:37', '2017-09-08 06:27:37', NULL),
(47, 'edit_front_menus', 'front_menus', '2017-09-08 06:27:37', '2017-09-08 06:27:37', NULL),
(48, 'add_front_menus', 'front_menus', '2017-09-08 06:27:37', '2017-09-08 06:27:37', NULL),
(49, 'delete_front_menus', 'front_menus', '2017-09-08 06:27:37', '2017-09-08 06:27:37', NULL),
(50, 'browse_sliders', 'sliders', '2017-09-12 04:08:03', '2017-09-12 04:08:03', NULL),
(51, 'read_sliders', 'sliders', '2017-09-12 04:08:03', '2017-09-12 04:08:03', NULL),
(52, 'edit_sliders', 'sliders', '2017-09-12 04:08:03', '2017-09-12 04:08:03', NULL),
(53, 'add_sliders', 'sliders', '2017-09-12 04:08:03', '2017-09-12 04:08:03', NULL),
(54, 'delete_sliders', 'sliders', '2017-09-12 04:08:03', '2017-09-12 04:08:03', NULL),
(55, 'browse_contacts', 'contacts', '2017-09-13 06:00:53', '2017-09-13 06:00:53', NULL),
(56, 'read_contacts', 'contacts', '2017-09-13 06:00:53', '2017-09-13 06:00:53', NULL),
(57, 'edit_contacts', 'contacts', '2017-09-13 06:00:53', '2017-09-13 06:00:53', NULL),
(58, 'add_contacts', 'contacts', '2017-09-13 06:00:53', '2017-09-13 06:00:53', NULL),
(59, 'delete_contacts', 'contacts', '2017-09-13 06:00:53', '2017-09-13 06:00:53', NULL),
(60, 'browse_front_settings', 'front_settings', '2017-09-13 07:19:44', '2017-09-13 07:19:44', NULL),
(61, 'read_front_settings', 'front_settings', '2017-09-13 07:19:44', '2017-09-13 07:19:44', NULL),
(62, 'edit_front_settings', 'front_settings', '2017-09-13 07:19:44', '2017-09-13 07:19:44', NULL),
(63, 'add_front_settings', 'front_settings', '2017-09-13 07:19:44', '2017-09-13 07:19:44', NULL),
(64, 'delete_front_settings', 'front_settings', '2017-09-13 07:19:44', '2017-09-13 07:19:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-09-01 06:57:33', '2017-09-01 06:57:33'),
(2, 'user', 'Normal User', '2017-09-01 06:57:33', '2017-09-01 06:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
(1, 'title', 'Titlu admin nelogat', 'Laravel Demo admin', NULL, 'text', 0),
(2, 'admin_title', 'Titlu admin logat', 'Laravel Demo admin - welcome', NULL, 'text', 1),
(3, 'admin_description', 'Descriere admin', 'make me great', NULL, 'text', 2),
(4, 'admin_bg_image', 'Background admin', 'settings/September2017/ehqXVTp9oDBpAKeDqeWV.jpg', NULL, 'image', 3),
(5, 'admin_icon_image', 'Logo admin', 'settings/September2017/cbNSq3SlLDtanMsxNXoy.png', NULL, 'image', 4),
(6, 'google_analytics_client_id', 'Google Analytics ID', '226008629463-220fmmhuutp4t0odraipqkcffpqss703.apps.googleusercontent.com', NULL, 'text', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `titlu` text COLLATE utf8_unicode_ci,
  `imagine` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `descriere` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `titlu`, `imagine`, `link`, `created_at`, `updated_at`, `deleted_at`, `order`, `descriere`) VALUES
(1, 'slide 1', 'sliders/September2017/QpquxQSk283KhN0kEo9j.jpg', NULL, '2017-09-12 04:40:40', '2017-09-12 04:40:40', NULL, NULL, NULL),
(2, 'slide 2', 'sliders/September2017/FFb1VOdY8VAOFxPBN71K.jpg', NULL, '2017-09-12 04:41:26', '2017-09-12 04:41:26', NULL, NULL, NULL),
(3, 'slide 3', 'sliders/September2017/KWH9v09yObVnjwuDe116.jpg', NULL, '2017-09-12 04:41:41', '2017-09-12 04:41:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin', 'users/September2017/4FcXBkZ6NfKc0QQIWYEb.png', '$2y$10$qajKqoLxTkf49Z9FhQrj9Ok.G0blXDiKnGdxq7s0Ph3mXrr5HGhT6', '2LLMJ5Smfmj7onnsyqhl4o0Mz2WwWP25UnMsLIe2JNfBquqWhOKkCVrqwGpe', '2017-09-01 06:58:45', '2017-09-05 08:12:18'),
(2, 2, 'client', 'client', 'users/September2017/PzWvQjgWi0OV4iNfEM5U.png', '$2y$10$9XjQPcNWrXmZYr7IbMsiDObQzVsj9zXw8of3LYH4CIvVu9TmTff/W', 'H5fohu1k3scqzPIyFZekW8G8I4d04IELKoaVOALIXe1PwDWgVr9056DX9R7w', '2017-09-12 04:42:17', '2017-09-12 04:45:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `front_menus`
--
ALTER TABLE `front_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_settings`
--
ALTER TABLE `front_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `front_menus`
--
ALTER TABLE `front_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `front_settings`
--
ALTER TABLE `front_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
