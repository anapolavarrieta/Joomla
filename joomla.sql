-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2017 a las 05:51:26
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `joomla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_assets`
--

CREATE TABLE IF NOT EXISTS `f4kq7_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_assets`
--

INSERT INTO `f4kq7_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 151, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 38, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 39, 40, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 41, 42, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 43, 44, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 45, 46, 1, 'com_login', 'com_login', '{}'),
(13, 1, 47, 48, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 49, 50, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 51, 52, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 53, 56, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 57, 58, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 59, 110, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 111, 114, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 115, 116, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 117, 118, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 119, 120, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 121, 122, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 123, 126, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 127, 128, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 23, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 112, 113, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 124, 125, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 129, 130, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 131, 132, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 133, 134, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 135, 136, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 137, 138, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 139, 140, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 60, 61, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 62, 63, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 64, 65, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 66, 67, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 68, 69, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 70, 71, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 72, 73, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 74, 75, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 76, 77, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 78, 79, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 80, 81, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 82, 83, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 84, 85, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 86, 87, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 88, 89, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 54, 55, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 8, 24, 27, 2, 'com_content.category.8', 'Sobre nosotros', '{}'),
(56, 8, 28, 33, 2, 'com_content.category.9', 'Proyectos', '{}'),
(57, 55, 25, 26, 3, 'com_content.article.1', 'Sobre nosotros', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(58, 56, 29, 30, 3, 'com_content.article.2', 'Miguel Cabrera 10', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(59, 1, 141, 142, 1, 'com_jce', 'COM_JCE', '{}'),
(60, 1, 143, 148, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(61, 18, 90, 91, 2, 'com_modules.module.87', 'DJ-ImageSlider', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(62, 60, 144, 145, 2, 'com_djimageslider.category.10', 'Home', '{}'),
(63, 18, 92, 93, 2, 'com_modules.module.88', 'Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(64, 18, 94, 95, 2, 'com_modules.module.89', 'Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(65, 56, 31, 32, 3, 'com_content.article.3', 'Rafael Martinez 169', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(71, 1, 149, 150, 1, 'com_breezingforms', 'COM_BREEZINGFORMS', '{}'),
(72, 18, 96, 97, 2, 'com_modules.module.93', 'Forma', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(73, 18, 98, 99, 2, 'com_modules.module.94', 'BreezingForms', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(74, 60, 146, 147, 2, 'com_djimageslider.category.11', 'Rafael Martinez 169', '{}'),
(75, 18, 100, 101, 2, 'com_modules.module.95', 'Rafael Martinez', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(76, 18, 102, 103, 2, 'com_modules.module.96', 'Carousel CK', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(78, 27, 19, 20, 3, 'com_content.article.4', 'Home2', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(79, 27, 21, 22, 3, 'com_content.article.5', 'Home', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(80, 18, 104, 105, 2, 'com_modules.module.97', 'Logo', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(81, 18, 106, 107, 2, 'com_modules.module.98', 'HD-Background Selector', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(82, 83, 35, 36, 3, 'com_content.article.6', 'Mapa Rafael Martinez 169', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(83, 8, 34, 37, 2, 'com_content.category.12', 'Mapas', '{}'),
(84, 18, 108, 109, 2, 'com_modules.module.99', 'Maximenu CK', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_associations`
--

CREATE TABLE IF NOT EXISTS `f4kq7_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_banners`
--

CREATE TABLE IF NOT EXISTS `f4kq7_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_banner_clients`
--

CREATE TABLE IF NOT EXISTS `f4kq7_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `f4kq7_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_breezingforms`
--

CREATE TABLE IF NOT EXISTS `f4kq7_breezingforms` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_categories`
--

CREATE TABLE IF NOT EXISTS `f4kq7_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_categories`
--

INSERT INTO `f4kq7_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 35, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 35, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 35, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 35, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 35, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 35, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 55, 1, 11, 12, 1, 'sobre-nosotros', 'com_content', 'Sobre nosotros', 'sobre-nosotros', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 35, '2017-02-15 23:59:29', 35, '2017-02-16 00:07:34', 0, '*', 1),
(9, 56, 1, 13, 14, 1, 'proyectos', 'com_content', 'Proyectos', 'proyectos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 35, '2017-02-16 00:00:08', 35, '2017-02-16 00:00:19', 0, '*', 1),
(10, 62, 1, 15, 16, 1, 'home', 'com_djimageslider', 'Home', 'home', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 35, '2017-03-01 01:30:23', 35, '2017-03-01 01:37:32', 0, '*', 1),
(11, 74, 1, 17, 18, 1, 'rafael-martinez-169', 'com_djimageslider', 'Rafael Martinez 169', 'rafael-martinez-169', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 35, '2017-04-05 23:31:35', 0, '2017-04-05 23:31:35', 0, '*', 1),
(12, 83, 1, 19, 20, 1, 'mapas', 'com_content', 'Mapas', 'mapas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 35, '2017-04-25 21:20:38', 35, '2017-04-25 21:20:45', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_contact_details`
--

CREATE TABLE IF NOT EXISTS `f4kq7_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_content`
--

CREATE TABLE IF NOT EXISTS `f4kq7_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_content`
--

INSERT INTO `f4kq7_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 57, 'Sobre nosotros', 'sobre-nosotros', '<p>&nbsp;</p>\r\n<h5 style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;"><span style="background: #aaaaac; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;">LAND</strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA&nbsp;DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.</span></h5>\r\n<h5 style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;"><span style="background: #aaaaac; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style="margin-bottom: 0px;" />DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.</span></h5>', '', 1, 8, '2017-02-22 02:00:45', 35, '', '2017-04-26 00:09:06', 35, 0, '0000-00-00 00:00:00', '2017-02-22 02:00:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, '', '', 1, 144, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 58, 'Miguel Cabrera 10', 'miguel-cabrera-10', '<p>Miguel Cabrera 10 es loremipsum<span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span></p>\r\n<p><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span></p>\r\n<p><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span><span style="font-size: 12.16px;">loremipsum</span></p>', '', 1, 9, '2017-02-22 02:08:10', 35, '', '2017-02-22 02:12:17', 35, 0, '0000-00-00 00:00:00', '2017-02-22 02:08:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"right","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/proyectos\\/MiguelCabrera10\\/fachada_002-acero-copy.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 1, '', '', 1, 54, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 65, 'Rafael Martinez 169', 'rafael-martinez-169', '<p><span style="background-color: #a4a4a4;"></span></p>\r\n<div style="padding-bottom: 2%;">\r\n<p><span style="background-color: #aaaaac; color: #e7e0d9;"><strong>UBICACI&Oacute;N</strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;</span></p>\r\n<p style="text-align: justify;"><span style="background-color: #aaaaac; color: #e7e0d9;"><b><span style="font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;">RAFAEL MART&Iacute;NEZ 169</span></b><span style="font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.</span></span></p>\r\n<p style="text-align: justify;"><span style="font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. </span></p>\r\n<p style="text-align: justify;"><span style="font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;"></span></p>\r\n<p style="text-align: justify;"><span style="font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;"><strong>MATERIALES</strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.</span></p>\r\n<p><span style="background-color: #aaaaac;"></span></p>\r\n<p><span style="background-color: #aaaaac;"></span></p>\r\n<table style="width: 100%;">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;"><span style="background-color: #aaaaac;"><a href="index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=12:mapas&amp;Itemid=101" style="background-color: #aaaaac;" onclick="window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth/2-250)+'',top=''+(screen.availHeight/2-250)+'',width=500,height=500'');return false;" onclick="window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth/2-250)+'',top=''+(screen.availHeight/2-250)+'',width=500,height=500'');return false;"><span style="color: #e7e0d9;">MAPA</span>&nbsp;</a></span></td>\r\n<td style="text-align: center;"><span style="background-color: #aaaaac;"><a href="index.php/sobre-nosotros" style="background-color: #aaaaac;"><span style="color: #e7e0d9;">TIPOLOG&Iacute;AS</span></a></span></td>\r\n<td style="text-align: center;"><span style="background-color: #aaaaac;"><a href="index.php/sobre-nosotros" style="background-color: #aaaaac;"><span style="color: #e7e0d9;">GALER&Iacute;A</span></a></span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', '', 1, 9, '2017-02-22 02:08:10', 35, '', '2017-04-26 02:17:31', 35, 0, '0000-00-00 00:00:00', '2017-02-22 02:08:10', '0000-00-00 00:00:00', '{"image_intro":"images\\/proyectos\\/RafaelMartinez169\\/RM_FACHADA.png","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"_:default","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 100, 0, '', '', 1, 240, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 78, 'Home2', 'hoe2', '', '', 1, 2, '2017-04-23 15:14:42', 35, '', '2017-04-23 15:17:43', 35, 0, '0000-00-00 00:00:00', '2017-04-23 15:14:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 222, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 79, 'Home', 'home', '<div class=div1></div>', '', 1, 2, '2017-04-23 15:31:46', 35, '', '2017-04-25 00:19:51', 35, 0, '0000-00-00 00:00:00', '2017-04-23 15:31:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 18, 1, '', '', 1, 361, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 82, 'Mapa Rafael Martinez 169', 'mapa-rafael-martinez-169', '<p>&nbsp;</p>\r\n<p>{google_map}Rafael Mart&iacute;nez Rip Rip 169{/google_map}</p>\r\n<p>&nbsp;</p>', '', 1, 12, '2017-04-25 21:17:27', 35, '', '2017-04-25 21:28:46', 35, 0, '0000-00-00 00:00:00', '2017-04-25 21:17:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `f4kq7_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `f4kq7_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_content_rating`
--

CREATE TABLE IF NOT EXISTS `f4kq7_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_content_types`
--

CREATE TABLE IF NOT EXISTS `f4kq7_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_content_types`
--

INSERT INTO `f4kq7_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(14, 'BreezingForms', 'com_breezingforms.form', '', '', '', 'BreezingformsHelperRoute::getFormRoute', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `f4kq7_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_cwgears`
--

CREATE TABLE IF NOT EXISTS `f4kq7_cwgears` (
`id` int(11) unsigned NOT NULL COMMENT 'Primary Key',
  `url` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `facebook_js` int(11) NOT NULL,
  `uikit` int(11) NOT NULL,
  `uikit_plus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_cwgears_schedule`
--

CREATE TABLE IF NOT EXISTS `f4kq7_cwgears_schedule` (
`id` int(11) unsigned NOT NULL COMMENT 'Primary Key',
  `time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_cwgears_schedule`
--

INSERT INTO `f4kq7_cwgears_schedule` (`id`, `time`) VALUES
(1, 1493608314);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_djimageslider`
--

CREATE TABLE IF NOT EXISTS `f4kq7_djimageslider` (
`id` int(10) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_djimageslider`
--

INSERT INTO `f4kq7_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 10, 'SorJuana', 'sorjuana', 'images/Homeslider/1c_Alta.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(2, 10, 'RafaelM', 'rafaelm', 'images/proyectos/RafaelMartinez169/RM_FACHADA.png', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(3, 11, 'Fachada', 'fachada', 'images/proyectos/RafaelMartinez169/RM_FACHADA.png', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(4, 11, 'Interior1', 'interior1', 'images/proyectos/RafaelMartinez169/RM_INT_1.png', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(5, 11, 'Interior2', 'interior2', 'images/proyectos/RafaelMartinez169/RM_INT_2.png', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}'),
(6, 11, 'Interior3', 'interior3', 'images/proyectos/RafaelMartinez169/RM_INT_3.png', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"","link_menu":"101","link_url":"","link_article":"","link_target":"","link_rel":"","alt_attr":"","title_attr":""}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_extensions`
--

CREATE TABLE IF NOT EXISTS `f4kq7_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_extensions`
--

INSERT INTO `f4kq7_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS,file","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"1","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"1","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"1","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"0","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"0","show_cat_num_articles":"0","show_cat_tags":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"4f693423a3779107d992a2073eaec12d"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `f4kq7_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1493608319}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1493608403,"unique_id":"2ecf0168af38c365682190207a735d29ebab6f7f","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"17 February 2016","author":"Joomla! Project","copyright":"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.0","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"COM_JCE","type":"component","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.6.11","description":"COM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.11","description":"WF_EDITOR_PLUGIN_DESC","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{"name":"plg_content_jce","type":"plugin","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.11","description":"PLG_CONTENT_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{"name":"plg_extension_jce","type":"plugin","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.11","description":"PLG_EXTENSION_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_jce","type":"plugin","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.11","description":"PLG_INSTALLER_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jce","type":"plugin","creationDate":"31-08-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomalcontenteditor.net","version":"2.6.0-pro-beta3","description":"PLG_QUICKICON_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{"name":"plg_system_jce","type":"plugin","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.11","description":"PLG_SYSTEM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{"name":"PKG_JCE","type":"package","creationDate":"12-04-2017","author":"Ryan Demmer","copyright":"","authorEmail":"","authorUrl":"","version":"2.6.11","description":"PKG_JCE_XML_DESCRIPTION","group":"","filename":"pkg_jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"name":"com_djimageslider","type":"component","creationDate":"September 2016","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.2.1","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"name":"DJ-ImageSlider","type":"module","creationDate":"September 2016","author":"DJ-Extensions.com","copyright":"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.2.1","description":"DJ-ImageSlider Module","group":"","filename":"mod_djimageslider"}', '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"0","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","looponce":"0","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'DJ-ImageSlider Package', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"name":"DJ-ImageSlider Package","type":"package","creationDate":"September 2016","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.2.1","description":"\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\t.djex-info { padding: 20px 30px 10px; margin: 0 0 20px 0; background: #ac00d4; color: #fff; border: 1px solid #81009f; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: normal; -webkit-border-radius: 4px; border-radius: 4px; }\\n\\t\\t\\t.djex-title { text-transform: uppercase; font-weight: bold; font-size: 14px; }\\n\\t\\t\\t.djex-info a:link, .djex-info a:visited, .djex-info a:hover { color:#fff; text-decoration:underline; font-weight: 600; }\\t\\n\\t\\t\\t.djex-info img { float: left; margin: 0 30px 10px 0; }\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"djex-info\\">\\n\\t\\t\\t<a href=\\"index.php?option=com_djimageslider\\"><img src=\\"components\\/com_djimageslider\\/assets\\/ex_slider.png\\" \\/><\\/a>\\n\\t\\t\\t<p class=\\"djex-title\\">Thank you for installing DJ-ImageSlider!<\\/p>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display slideshows containing slides with title and short description linked to any menu item, article or custom url address. \\n\\t\\t\\tIf you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/faq\\">FAQ section<\\/a><\\/p>\\n\\t\\t\\t<p>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t\\t<div style=\\"clear:both\\"><\\/div>\\n\\t\\t<\\/div>\\n\\t\\t","group":"","filename":"pkg_dj-imageslider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'PLG_CWGEARS', 'plugin', 'cwgears', 'system', 0, 1, 1, 0, '{"name":"PLG_CWGEARS","type":"plugin","creationDate":"2017-04-17","author":"Steven Palmer","copyright":"Copyright (c) 2017 Steven Palmer All rights reserved.","authorEmail":"support@coalaweb.com","authorUrl":"http:\\/\\/coalaweb.com","version":"0.3.4","description":"PLG_CWGEARS_DESC","group":"","filename":"cwgears"}', '{"zoo_editor_tweak":"0","sys_msg_demo":"0","gzip_help":"0","recap_compact":"0","jquery_on":"0","jquery_server":"0","jquery_library":"2.0.2","jquery_noconflict":"0","jquery_migrate":"0","async":"1","defer":"0","script_list":"\\/\\/www.xing-share.com\\/js\\/external\\/share.js,\\/\\/platform.twitter.com\\/widgets.js,\\/\\/apis.google.com\\/js\\/plusone.js,\\/\\/cdnjs.cloudflare.com\\/ajax\\/libs\\/jquery-easing\\/1.3\\/jquery.easing.min.js,\\/\\/connect.facebook.net\\/en_GB\\/all.js#xfbml=1,\\/\\/assets.pinterest.com\\/js\\/pinit.js,\\/\\/platform.stumbleupon.com\\/1\\/widgets.js","uikit_add":"1","uikit_theme":"flat","ccss_add":"0","ccss_minimize":"1","ccss_full_paths":"0","ccss_remove_comments":"1","ccss_code":"","cjs_add":"0","cjs_minimize":"1","cjs_remove_comments":"1","cjs_code":"","cache_off":"0","rules":"option=com_content","dbclean_info":"","db_clean":"1","locktime":"1440","updates_info":"","downloadid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'COM_BREEZINGFORMS', 'component', 'com_breezingforms', '', 1, 1, 0, 0, '{"name":"COM_BREEZINGFORMS","type":"component","creationDate":"2017-04-19","author":"Markus Bopp | Until FacileForms Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.org","authorUrl":"www.crosstec.org","version":"(build 925)","description":"Installation successful. Next find BreezingForms in the Components menu, and finish the installation process.","group":"","filename":"breezingforms"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'BreezingForms', 'module', 'mod_breezingforms', '', 0, 1, 0, 0, '{"name":"BreezingForms","type":"module","creationDate":"November 2013","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8.4","description":"\\n\\t\\tEnter the form name for displaying in the desired module position.\\n    ","group":"","filename":"mod_breezingforms"}', '{"ff_mod_name":"","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'PLG_EMBED_GOOGLE_MAP', 'plugin', 'embed_google_map', 'content', 0, 1, 1, 0, '{"name":"PLG_EMBED_GOOGLE_MAP","type":"plugin","creationDate":"28 March 2015","author":"Petteri Kivim\\u00e4ki","copyright":"(C)2012-2015 Petteri Kivim\\u00e4ki","authorEmail":"dinky_jackson@hotmail.com","authorUrl":"","version":"2.0.1","description":"PLG_EMBED_GOOGLE_MAP_DESC","group":"","filename":"embed_google_map"}', '{"version":"new","map_type":"m","zoom":"14","language":"-","add_link":"1","link_label":"View Larger Map","link_full":"1","show_info":"0","height":"300","width":"500","border":"0","border_style":"solid","border_color":"#000000","https":"1","embed_api_key":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'BreezingForms', 'plugin', 'breezingforms', 'content', 0, 1, 1, 0, '{"name":"BreezingForms","type":"plugin","creationDate":"August 2012","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8","description":"\\n\\t\\n<h3>BreezingForms<\\/h3>\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<h2>BreezingForms Plugin: Displays forms inline in articles<\\/h2>\\n<h3>Requirements:<\\/h3><ul>\\n\\n<li>The BreezingForms component must also be installed (same version)<\\/li>\\n<li>The bot must be published<\\/li>\\n<\\/ul>\\n<h3>Pattern syntax:<\\/h3><code><pre>\\n\\t{ BreezingForms : <em>formname<\\/em> [, <em>page<\\/em>, <em>border<\\/em>, <em>urlparams<\\/em>, <em>suffix<\\/em> ] }\\n\\n<\\/pre><\\/code><h3>Parameter description:<\\/h3><code><pre>\\n\\tBreezingForms : This tag must be present literally and in exact upper\\/lowercase.\\n\\t<em>formname<\\/em>    : The name of the form to include, also in exact upper\\/lowercase.\\n\\t<em>page<\\/em>        : The starting page number.   Defaults to 1 when omitted.\\n\\t<em>border<\\/em>      : 0=no border, 1=with border. Defaults to 1 when omitted.\\n\\t<em>urlparams<\\/em>   : Parameters to pass in URL style (no commas or closing brackets allowed).\\n\\t<em>suffix<\\/em>      : Suffix appended to all CSS class names in the form.\\n\\n<\\/pre><\\/code><h3>Examples:<\\/h3><code><pre>\\n\\t{ BreezingForms : SampleContactForm }\\n\\t{ BreezingForms : MyVeryForm, 2 }\\n\\t{ BreezingForms : AnotherForm, 1, 0, &amp;amp;ff_param_xy=123&amp;amp;ff_param_foo=bar }\\n\\t{BreezingForms:testform,,,&amp;amp;ff_param_foo=bar,mysuffix}\\n<\\/pre><\\/code>But attention with the following one. Basicly it would work, but when\\nusing a WYSIWYG editor, it will insert linebreaks as <code>&lt;br\\/&gt;<\\/code>\\nand the bot will no longer recognize the pattern:<code><pre>\\n\\t{\\n\\t\\tBreezingForms:\\n\\n\\t\\t\\tAnotherForm,\\n\\t\\t\\t1,\\n\\t\\t\\t0,\\n\\t\\t\\t&amp;amp;ff_param_xy=123&amp;amp;ff_param_foo=bar\\n\\t}\\n<\\/pre><\\/code>\\n\\n\\n    ","group":"","filename":"breezingforms"}', '{"load_in_iframe":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'sysbreezingforms', 'plugin', 'sysbreezingforms', 'system', 0, 1, 1, 0, '{"name":"sysbreezingforms","type":"plugin","creationDate":"March 2017","author":"Markus Bopp","copyright":"Copyright (C) 2015 - Markus Bopp","authorEmail":"markus.bopp@crosstec.org","authorUrl":"crosstec.org","version":"1.0.0","description":"System plugin required by the BreezingForms component","group":"","filename":"sysbreezingforms"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'Carousel CK', 'module', 'mod_carouselck', '', 0, 1, 0, 0, '{"name":"Carousel CK","type":"module","creationDate":"Avril 2012","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"1.1.16","description":"MOD_CAROUSELCK_XML_DESCRIPTION","group":"","filename":"mod_carouselck"}', '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script from <a href=|dq|http:\\/\\/www.joomlack.fr|dq|>Joomlack<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq|This is a Video slide linked to Vimeo|qq|,|qq|imgtitle|qq|:|qq|Video example|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_carouselck\\/images\\/slides\\/shelter.jpg|qq|,|qq|imgcaption|qq|:|qq|Imagine that you are on holidays|qq|,|qq|imgtitle|qq|:|qq|Nice landscape|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_carouselck\\/images\\/slides\\/shelter.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","skin":"carouselck_black_skin","wrapheight":"40","imageheight":"62","imagesratio":"0.72","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","playPause":"1","navigation":"2","duration":"600","time":"7000","captioneffect":"moveFromLeft","captionduration":"600","autoAdvance":"1","displayorder":"normal","imagetarget":"_parent","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","cache":"0","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"0","captionstylesfontsize":"2em","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"1em","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1","imagestylesuseroundedcorners":"0","imagestylesroundedcornerstl":"5","imagestylesroundedcornerstr":"5","imagestylesroundedcornersbr":"5","imagestylesroundedcornersbl":"5","imagestylesuseshadow":"1","imagestylesshadowcolor":"#000","imagestylesshadowblur":"5","imagestylesshadowspread":"0","imagestylesshadowoffsetx":"0","imagestylesshadowoffsety":"0","imagestylesshadowinset":"0","imagestylesuseborders":"0","imagestylesbordercolor":"","imagestylesborderwidth":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'HD-Background Selector', 'module', 'mod_hd-bgselector', '', 0, 1, 0, 0, '{"name":"HD-Background Selector","type":"module","creationDate":"February 2013","author":"Hyde-Design","copyright":"2012","authorEmail":"sales@hyde-design.co.uk","authorUrl":"www.hyde-design.co.uk","version":"1.3","description":"A simple module to apply a background style to a specific page. Set the module to appear on the page of your choice at any module position.","group":"","filename":"mod_hd-bgselector"}', '{"bgid":"body","imageposition":"center top","imageattachment":"scroll","imagerepeat":"repeat","bgcolor":"transparent","importance":"No","customcss":"","bgtype":"standard","gradtop":"000000","gradbottom":"ffffff","urlsniffer":"","browsersniffer":"all"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Maximenu CK', 'module', 'mod_maximenuck', '', 0, 1, 0, 0, '{"name":"Maximenu CK","type":"module","creationDate":"janvier 2011","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"8.2.3","description":"MOD_MAXIMENUCK_XML_DESCRIPTION","group":"","filename":"mod_maximenuck"}', '{"startLevel":"1","endLevel":"0","dependantitems":"1","zindexlevel":"10","menuid":"","cache":"0","cache_time":"900","cachemode":"static","imagerollprefix":"_hover","imageactiveprefix":"_active","imageonly":"0","menu_images_align":"top","usejavascript":"1","load":"domready","stopdropdownlevel":"0","menuposition":"0","fixedpositionwidth":"","topfixedeffect":"1","behavior":"mouseover","opentype":"open","fxduration":"500","fxtransition":"linear","dureein":"0","dureeout":"500","testoverflow":"0","direction":"normal","directionoffset1":"30","directionoffset2":"30","showactivesubitems":"0","usefancy":"1","fancyduration":"500","fancytransition":"linear","theme":"css3megamenu","orientation":"horizontal","useresponsive":"1","templatelayer":"","loadcompiledcss":"0","menustyles":"[]","level1itemnormalstyles":"[]","level1itemnormalstylesicon":"[]","level1itemhoverstylesicon":"[]","level1itemhoverstyles":"[]","level1itemactivestyles":"[]","level2menustyles":"[]","level2itemnormalstyles":"[]","level2itemnormalstylesicon":"[]","level2itemhoverstylesicon":"[]","level2itemhoverstyles":"[]","level2itemactivestyles":"[]","headingstyles":"[]","logoposition":"left","logomargintop":"0","logomarginright":"0","logomarginbottom":"0","logomarginleft":"0","maximenumobile_enable":"1","thirdparty":"none","hikashopitemid":"0","usehikashopimages":"0","usehikashopsuffix":"0","hikashopimagesuffix":"_mini","hikashopcategoryroot":"0","hikashopcategorydepth":"0","hikashopshowall":"1","hikashoporderby":"0","usek2images":"0","usek2suffix":"0","k2imagesuffix":"_mini","k2categoryroot":"0","k2categorydepth":"0","k2showall":"1","joomshoppingitemid":"0","usejoomshoppingimages":"0","usejoomshoppingsuffix":"0","joomshoppingimagesuffix":"_mini","joomshoppingcategoryroot":"0","joomshoppingcategorydepth":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_compmenus`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_compmenus` (
`id` int(11) NOT NULL,
  `package` varchar(30) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` int(11) NOT NULL DEFAULT '1',
  `frame` tinyint(1) NOT NULL DEFAULT '0',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_config`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_config` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_facileforms_config`
--

INSERT INTO `f4kq7_facileforms_config` (`id`, `value`) VALUES
('archived', '0'),
('arealarge', '20'),
('areamedium', '12'),
('areasmall', '4'),
('cellnewline', '1'),
('compress', '1'),
('csvdelimiter', ';'),
('csvquote', '"'),
('emailadr', 'Enter your email address here'),
('enable_classic', '0'),
('exported', '0'),
('formname', ''),
('formpkg', 'QuickModeForms'),
('getprovider', '0'),
('gridcolor1', '#e0e0ff'),
('gridcolor2', '#ffe0e0'),
('gridshow', '1'),
('gridsize', '10'),
('images', '{mossite}/components/com_breezingforms/images'),
('limitdesc', '100'),
('livesite', '0'),
('menupkg', ''),
('movepixels', '10'),
('piecepkg', 'FF'),
('scriptpkg', ''),
('stylesheet', '1'),
('uploads', '{mospath}/media/breezingforms/uploads'),
('viewed', '0'),
('wysiwyg', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_elements`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_elements` (
`id` int(11) NOT NULL,
  `form` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '1',
  `posx` int(11) DEFAULT NULL,
  `posxmode` tinyint(1) NOT NULL DEFAULT '0',
  `posy` int(11) DEFAULT NULL,
  `posymode` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `flag1` tinyint(1) NOT NULL DEFAULT '0',
  `flag2` tinyint(1) NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `data3` text,
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script1flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script1flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `script2flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag3` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag4` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag5` tinyint(1) NOT NULL DEFAULT '0',
  `script3cond` tinyint(1) NOT NULL DEFAULT '0',
  `script3id` int(11) DEFAULT NULL,
  `script3code` text,
  `script3msg` text,
  `mailback` tinyint(1) NOT NULL DEFAULT '0',
  `mailbackfile` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_facileforms_elements`
--

INSERT INTO `f4kq7_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`, `mailback`, `mailbackfile`) VALUES
(12, 1, 1, 1, 1, 'bfQuickMode4866185', 'Nombre', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(13, 1, 1, 2, 1, 'bfQuickMode5473672', 'Email', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(18, 1, 1, 3, 1, 'bfQuickMode2011422', 'Enviar', 'Regular Button', '', '', 0, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, 'Enviar', '', '', 0, 0, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(23, 1, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(24, 1, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 160, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(25, 1, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 200, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(26, 1, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 240, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(27, 3, 1, 1, 1, 'Nombre', 'Nombre', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(34, 3, 1, 2, 1, 'Correo', 'Correo', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(35, 3, 1, 3, 1, 'Telefono', 'Telefono', 'Text', '', '', 1, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(46, 3, 1, 4, 1, 'bfQuickMode8968106', 'Proyecto', 'Select List', '', '', 1, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '1', '0;Miguel Cabrera;MC\n0;Rafael Martinez;RM\n', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(55, 3, 1, 5, 1, 'bfQuickMode9904357', 'Horario', 'Select List', '', '', 1, 0, 0, 160, 0, 20, 0, 20, 0, 0, 0, '1', '0;Mañana;Mañana\n0;Tarde;Tarde\n0;Noche;Noche', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(68, 3, 1, 6, 1, 'bfQuickMode7999495', 'Mensaje', 'Textarea', '', '', 1, 0, 0, 200, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 8, '', 0, 0, 0, 16, '', 0, 0, 0, 0, 0, 0, 1, '', '', 0, ''),
(73, 3, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 240, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(74, 3, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 280, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(75, 3, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 320, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(76, 3, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 360, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_forms`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_forms` (
`id` int(11) NOT NULL,
  `alt_mailfrom` text,
  `alt_fromname` text,
  `mb_alt_mailfrom` text,
  `mb_alt_fromname` text,
  `mailchimp_email_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_checkbox_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_api_key` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_list_id` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_double_optin` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_mergevars` text,
  `mailchimp_text_html_mobile_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_send_errors` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_update_existing` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_replace_interests` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_welcome` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_default_type` varchar(255) NOT NULL DEFAULT 'text',
  `mailchimp_delete_member` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_goodbye` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_send_notify` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_unsubscribe_field` varchar(255) NOT NULL DEFAULT '',
  `salesforce_token` varchar(255) NOT NULL DEFAULT '',
  `salesforce_username` varchar(255) NOT NULL DEFAULT '',
  `salesforce_password` varchar(255) NOT NULL DEFAULT '',
  `salesforce_type` varchar(255) NOT NULL DEFAULT '',
  `salesforce_fields` text,
  `salesforce_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_email` varchar(255) NOT NULL DEFAULT '',
  `dropbox_password` varchar(255) NOT NULL DEFAULT '',
  `dropbox_folder` text,
  `dropbox_submission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_submission_types` varchar(255) NOT NULL DEFAULT 'pdf',
  `tags_content` text NOT NULL,
  `tags_content_template` mediumtext NOT NULL,
  `tags_content_template_default_element` int(11) NOT NULL DEFAULT '0',
  `tags_form` text NOT NULL,
  `tags_content_default_category` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_state` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_access` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_language` varchar(7) NOT NULL DEFAULT '*',
  `tags_content_default_featured` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_publishup` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags_content_default_publishdown` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoheight` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `template_code` longtext NOT NULL,
  `template_code_processed` longtext NOT NULL,
  `template_areas` longtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `runmode` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `mb_custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '1',
  `emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `mb_emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `email_type` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_type` tinyint(1) NOT NULL DEFAULT '0',
  `email_custom_template` text,
  `mb_email_custom_template` text,
  `email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `emailadr` text,
  `dblog` tinyint(1) NOT NULL DEFAULT '1',
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `piece1cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece1id` int(11) DEFAULT NULL,
  `piece1code` text,
  `piece2cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece2id` int(11) DEFAULT NULL,
  `piece2code` text,
  `piece3cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece3id` int(11) DEFAULT NULL,
  `piece3code` text,
  `piece4cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece4id` int(11) DEFAULT NULL,
  `piece4code` text,
  `prevmode` tinyint(1) NOT NULL DEFAULT '2',
  `prevwidth` int(11) DEFAULT NULL,
  `filter_state` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_facileforms_forms`
--

INSERT INTO `f4kq7_facileforms_forms` (`id`, `alt_mailfrom`, `alt_fromname`, `mb_alt_mailfrom`, `mb_alt_fromname`, `mailchimp_email_field`, `mailchimp_checkbox_field`, `mailchimp_api_key`, `mailchimp_list_id`, `mailchimp_double_optin`, `mailchimp_mergevars`, `mailchimp_text_html_mobile_field`, `mailchimp_send_errors`, `mailchimp_update_existing`, `mailchimp_replace_interests`, `mailchimp_send_welcome`, `mailchimp_default_type`, `mailchimp_delete_member`, `mailchimp_send_goodbye`, `mailchimp_send_notify`, `mailchimp_unsubscribe_field`, `salesforce_token`, `salesforce_username`, `salesforce_password`, `salesforce_type`, `salesforce_fields`, `salesforce_enabled`, `dropbox_email`, `dropbox_password`, `dropbox_folder`, `dropbox_submission_enabled`, `dropbox_submission_types`, `tags_content`, `tags_content_template`, `tags_content_template_default_element`, `tags_form`, `tags_content_default_category`, `tags_content_default_state`, `tags_content_default_access`, `tags_content_default_language`, `tags_content_default_featured`, `tags_content_default_publishup`, `tags_content_default_publishdown`, `autoheight`, `package`, `template_code`, `template_code_processed`, `template_areas`, `ordering`, `published`, `runmode`, `name`, `custom_mail_subject`, `mb_custom_mail_subject`, `title`, `description`, `class1`, `class2`, `width`, `widthmode`, `height`, `heightmode`, `pages`, `emailntf`, `mb_emailntf`, `emaillog`, `mb_emaillog`, `emailxml`, `mb_emailxml`, `email_type`, `mb_email_type`, `email_custom_template`, `mb_email_custom_template`, `email_custom_html`, `mb_email_custom_html`, `emailadr`, `dblog`, `script1cond`, `script1id`, `script1code`, `script2cond`, `script2id`, `script2code`, `piece1cond`, `piece1id`, `piece1code`, `piece2cond`, `piece2id`, `piece2code`, `piece3cond`, `piece3id`, `piece3code`, `piece4cond`, `piece4id`, `piece4code`, `prevmode`, `prevwidth`, `filter_state`) VALUES
(1, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiQ29udGFjdG8iLCJuYW1lIjoiQ29udGFjdG8iLCJyb2xsb3ZlciI6dHJ1ZSwicm9sbG92ZXJDb2xvciI6IiNmZmMiLCJ0b2dnbGVGaWVsZHMiOiIiLCJkZXNjcmlwdGlvbiI6IiIsIm1haWxOb3RpZmljYXRpb24iOnRydWUsIm1haWxSZWNpcGllbnQiOiJhbmFwYXVsYUBrb2thaS5jb20ubXgiLCJzdWJtaXRJbmNsdWRlIjpmYWxzZSwic3VibWl0TGFiZWwiOiJFbnZpYXIiLCJjYW5jZWxJbmNsdWRlIjpmYWxzZSwiY2FuY2VsTGFiZWwiOiJyZXNldCIsInBhZ2luZ0luY2x1ZGUiOmZhbHNlLCJwYWdpbmdOZXh0TGFiZWwiOiJuZXh0IiwicGFnaW5nUHJldkxhYmVsIjoiYmFjayIsInRoZW1lIjoiZGVmYXVsdCIsInRoZW1lYm9vdHN0cmFwIjoiIiwidGhlbWVib290c3RyYXBiZWZvcmUiOiIiLCJ0aGVtZWJvb3RzdHJhcExhYmVsVG9wIjpmYWxzZSwidGhlbWVib290c3RyYXBUaGVtZUVuZ2luZSI6ImJvb3RzdHJhcCIsInRoZW1lYm9vdHN0cmFwVXNlSGVyb1VuaXQiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVdlbGwiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVByb2dyZXNzIjpmYWxzZSwidGhlbWV1c2Vib290c3RyYXBsZWdhY3kiOmZhbHNlLCJmYWRlSW4iOmZhbHNlLCJsYXN0UGFnZVRoYW5rWW91IjpmYWxzZSwic3VibWl0dGVkU2NyaXB0Q29uZGlkdGlvbiI6LTEsInN1Ym1pdHRlZFNjcmlwdENvZGUiOiIiLCJ1c2VFcnJvckFsZXJ0cyI6ZmFsc2UsInVzZURlZmF1bHRFcnJvcnMiOnRydWUsInVzZUJhbGxvb25FcnJvcnMiOmZhbHNlLCJkaXNhYmxlSlF1ZXJ5IjpmYWxzZSwiam9vbWxhSGludCI6ZmFsc2UsIm1vYmlsZUVuYWJsZWQiOmZhbHNlLCJmb3JjZU1vYmlsZSI6ZmFsc2UsImZvcmNlTW9iaWxlVXJsIjoiaW5kZXgucGhwIiwidGl0bGVfdHJhbnNsYXRpb24iOiIiLCJzdWJtaXRMYWJlbF90cmFuc2xhdGlvbiI6IiIsImNhbmNlbExhYmVsX3RyYW5zbGF0aW9uIjoiIiwicGFnaW5nTmV4dExhYmVsX3RyYW5zbGF0aW9uIjoiIiwicGFnaW5nUHJldkxhYmVsX3RyYW5zbGF0aW9uIjoiIiwidGhlbWVib290c3RyYXB2YXJzIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJDb250YWN0byIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9mb3JtLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlUGFnZUNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVBhZ2UxIiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwicGFnZVwifSJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJwYWdlIiwicGFnZU51bWJlciI6MSwicGFnZUludHJvIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJQYWdlIDEiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fcGFnZS5wbmcifSwiY2hpbGRyZW4iOlt7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZVNlY3Rpb25DbGFzcyIsImlkIjoiYmZRdWlja01vZGVTZWN0aW9uMzczNDAiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJzZWN0aW9uXCJ9In0sInByb3BlcnRpZXMiOnsiYmZUeXBlIjoibm9ybWFsIiwidHlwZSI6InNlY3Rpb24iLCJkaXNwbGF5VHlwZSI6ImlubGluZSIsInRpdGxlIjoiU2VjdGlvbjEiLCJuYW1lIjoiYmZRdWlja01vZGVTZWN0aW9uMzczNDAiLCJkZXNjcmlwdGlvbiI6IiIsIm9mZiI6ZmFsc2UsInRpdGxlX3RyYW5zbGF0aW9uIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJTZWN0aW9uMSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9zZWN0aW9uLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTQ4NjYxODUiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJOb21icmUiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJOb21icmUiLCJsYWJlbFBvc2l0aW9uIjoibGVmdCIsImJmTmFtZSI6ImJmUXVpY2tNb2RlNDg2NjE4NSIsImRiSWQiOjEyLCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjpmYWxzZSwiaGludCI6IiIsIm9mZiI6ZmFsc2UsInBsYWNlaG9sZGVyIjoiSW5ncmVzYSB0dSBub21icmUiLCJ2YWx1ZSI6IiIsIm1heExlbmd0aCI6IiIsInJlYWRvbmx5IjpmYWxzZSwicGFzc3dvcmQiOmZhbHNlLCJtYWlsYmFjayI6ZmFsc2UsIm1haWxiYWNrQXNTZW5kZXIiOmZhbHNlLCJtYWlsYmFja2ZpbGUiOiIiLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2UsInZhbHVlX3RyYW5zbGF0aW9uIjoiIiwicGxhY2Vob2xkZXJfdHJhbnNsYXRpb24iOiIiLCJsYWJlbF90cmFuc2xhdGlvbiI6IiIsImhpbnRfdHJhbnNsYXRpb24iOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZV90cmFuc2xhdGlvbiI6IiJ9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGU1NDczNjcyIiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiRW1haWwiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJFbWFpbCIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiYmZRdWlja01vZGU1NDczNjcyIiwiZGJJZCI6MTMsIm9yZGVyTnVtYmVyIjoiLTEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOmZhbHNlLCJoaW50IjoiIiwib2ZmIjpmYWxzZSwicGxhY2Vob2xkZXIiOiJJbmdyZXNhIHR1IGNvcnJlbyIsInZhbHVlIjoiIiwibWF4TGVuZ3RoIjoiIiwicmVhZG9ubHkiOmZhbHNlLCJwYXNzd29yZCI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwibWFpbGJhY2tBc1NlbmRlciI6ZmFsc2UsIm1haWxiYWNrZmlsZSI6IiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZSwidmFsdWVfdHJhbnNsYXRpb24iOiIiLCJwbGFjZWhvbGRlcl90cmFuc2xhdGlvbiI6IiIsImxhYmVsX3RyYW5zbGF0aW9uIjoiIiwiaGludF90cmFuc2xhdGlvbiI6IiIsInZhbGlkYXRpb25NZXNzYWdlX3RyYW5zbGF0aW9uIjoiIn19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTIwMTE0MjIiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJFbnZpYXIiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fc3VibWl0LWJ1dHRvbi5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmU3VibWl0QnV0dG9uIiwibGFiZWwiOiJFbnZpYXIiLCJsYWJlbFBvc2l0aW9uIjoibGVmdCIsImJmTmFtZSI6ImJmUXVpY2tNb2RlMjAxMTQyMiIsImRiSWQiOjE4LCJvcmRlck51bWJlciI6LTEsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjpmYWxzZSwiaGlkZUxhYmVsIjp0cnVlLCJyZXF1aXJlZCI6ZmFsc2UsImhpbnQiOiIiLCJvZmYiOmZhbHNlLCJyZWFkb25seSI6ZmFsc2UsInZhbHVlIjoiRW52aWFyIiwic3JjIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjowLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6MCwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZSwic3JjX3RyYW5zbGF0aW9uIjoiIiwidmFsdWVfdHJhbnNsYXRpb24iOiIiLCJoaW50X3RyYW5zbGF0aW9uIjoiIiwibGFiZWxfdHJhbnNsYXRpb24iOiIifX1dfV19XX0=', 'QuickMode', '[{"elements":[{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"Ingresa tu nombre","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Nombre","name":"bfQuickMode4866185","page":"1","orderNumber":1,"dbId":12,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode4866185","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"Ingresa tu correo","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Email","name":"bfQuickMode5473672","page":"1","orderNumber":2,"dbId":13,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode5473672","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Regular Button","elementType":"","options":{"value":"Enviar","readonly":false},"data1":"Enviar","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Enviar","name":"bfQuickMode2011422","page":"1","orderNumber":3,"dbId":18,"appElementOrderId":0,"id":0,"logging":false,"qId":"bfQuickMode2011422","internalType":"bfSubmitButton","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":23,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":24,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":25,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":26,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":3}]', 0, 1, 0, 'Contacto', '', '', 'Contacto', '', '', NULL, 400, 0, 500, 0, 1, 2, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 'anapaula@kokai.com.mx', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL, ''),
(3, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiQ29udGFjdG8gR2VuZXJhbCIsIm5hbWUiOiJDb250YWN0b0dlbmVyYWwiLCJyb2xsb3ZlciI6dHJ1ZSwicm9sbG92ZXJDb2xvciI6IiNmZmMiLCJ0b2dnbGVGaWVsZHMiOiIiLCJkZXNjcmlwdGlvbiI6IiIsIm1haWxOb3RpZmljYXRpb24iOiIxIiwibWFpbFJlY2lwaWVudCI6ImFuYXBhdWxhQGtva2FpLmNvbS5teCIsInN1Ym1pdEluY2x1ZGUiOnRydWUsInN1Ym1pdExhYmVsIjoiRW52aWFyIiwiY2FuY2VsSW5jbHVkZSI6ZmFsc2UsImNhbmNlbExhYmVsIjoicmVzZXQiLCJwYWdpbmdJbmNsdWRlIjp0cnVlLCJwYWdpbmdOZXh0TGFiZWwiOiJuZXh0IiwicGFnaW5nUHJldkxhYmVsIjoiYmFjayIsInRoZW1lIjoiZGVmYXVsdCIsInRoZW1lYm9vdHN0cmFwIjoiIiwidGhlbWVib290c3RyYXBiZWZvcmUiOiIiLCJ0aGVtZWJvb3RzdHJhcExhYmVsVG9wIjpmYWxzZSwidGhlbWVib290c3RyYXBUaGVtZUVuZ2luZSI6ImJvb3RzdHJhcCIsInRoZW1lYm9vdHN0cmFwVXNlSGVyb1VuaXQiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVdlbGwiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVByb2dyZXNzIjpmYWxzZSwidGhlbWV1c2Vib290c3RyYXBsZWdhY3kiOmZhbHNlLCJmYWRlSW4iOmZhbHNlLCJsYXN0UGFnZVRoYW5rWW91Ijp0cnVlLCJzdWJtaXR0ZWRTY3JpcHRDb25kaWR0aW9uIjotMSwic3VibWl0dGVkU2NyaXB0Q29kZSI6IiIsInVzZUVycm9yQWxlcnRzIjpmYWxzZSwidXNlRGVmYXVsdEVycm9ycyI6dHJ1ZSwidXNlQmFsbG9vbkVycm9ycyI6ZmFsc2UsImRpc2FibGVKUXVlcnkiOmZhbHNlLCJqb29tbGFIaW50IjpmYWxzZSwibW9iaWxlRW5hYmxlZCI6ZmFsc2UsImZvcmNlTW9iaWxlIjpmYWxzZSwiZm9yY2VNb2JpbGVVcmwiOiJpbmRleC5waHAiLCJ0aXRsZV90cmFuc2xhdGlvbiI6IiIsInN1Ym1pdExhYmVsX3RyYW5zbGF0aW9uIjoiIiwiY2FuY2VsTGFiZWxfdHJhbnNsYXRpb24iOiIiLCJwYWdpbmdOZXh0TGFiZWxfdHJhbnNsYXRpb24iOiIiLCJwYWdpbmdQcmV2TGFiZWxfdHJhbnNsYXRpb24iOiIiLCJ0aGVtZWJvb3RzdHJhcHZhcnMiOiIifSwic3RhdGUiOiJvcGVuIiwiZGF0YSI6eyJ0aXRsZSI6IkNvbnRhY3RvIEdlbmVyYWwiLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fZm9ybS5wbmcifSwiY2hpbGRyZW4iOlt7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZVBhZ2VDbGFzcyIsImlkIjoiYmZRdWlja01vZGVQYWdlMSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcInBhZ2VcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicGFnZSIsInBhZ2VOdW1iZXIiOjEsInBhZ2VJbnRybyI6IiJ9LCJzdGF0ZSI6Im9wZW4iLCJkYXRhIjp7InRpdGxlIjoiUGFnZSAxIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3BhZ2UucG5nIn0sImNoaWxkcmVuIjpbeyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVTZWN0aW9uQ2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlU2VjdGlvbjY1NDM2IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwic2VjdGlvblwifSJ9LCJwcm9wZXJ0aWVzIjp7ImJmVHlwZSI6Im5vcm1hbCIsInR5cGUiOiJzZWN0aW9uIiwiZGlzcGxheVR5cGUiOiJicmVha3MiLCJ0aXRsZSI6InVudGl0bGVkIHNlY3Rpb24iLCJuYW1lIjoiYmZRdWlja01vZGVTZWN0aW9uNjU0MzYiLCJkZXNjcmlwdGlvbiI6IiIsIm9mZiI6ZmFsc2UsInRpdGxlX3RyYW5zbGF0aW9uIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJ1bnRpdGxlZCBzZWN0aW9uIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3NlY3Rpb24ucG5nIn0sImNoaWxkcmVuIjpbeyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVFbGVtZW50Q2xhc3MiLCJpZCI6Ik5vbWJyZSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcImVsZW1lbnRcIn0ifSwiZGF0YSI6eyJ0aXRsZSI6Ik5vbWJyZSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWZpZWxkLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZUZXh0ZmllbGQiLCJsYWJlbCI6Ik5vbWJyZSIsImxhYmVsUG9zaXRpb24iOiJsZWZ0IiwiYmZOYW1lIjoiTm9tYnJlIiwiZGJJZCI6MjcsIm9yZGVyTnVtYmVyIjoiLTEiLCJ0YWJJbmRleCI6Ii0xIiwibG9nZ2luZyI6dHJ1ZSwiaGlkZUxhYmVsIjpmYWxzZSwicmVxdWlyZWQiOnRydWUsImhpbnQiOiIiLCJvZmYiOmZhbHNlLCJwbGFjZWhvbGRlciI6IiIsInZhbHVlIjoiIiwibWF4TGVuZ3RoIjoiIiwicmVhZG9ubHkiOmZhbHNlLCJwYXNzd29yZCI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwibWFpbGJhY2tBc1NlbmRlciI6ZmFsc2UsIm1haWxiYWNrZmlsZSI6IiIsInNpemUiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZSwidmFsdWVfdHJhbnNsYXRpb24iOiIiLCJwbGFjZWhvbGRlcl90cmFuc2xhdGlvbiI6IiIsImxhYmVsX3RyYW5zbGF0aW9uIjoiIiwiaGludF90cmFuc2xhdGlvbiI6IiIsInZhbGlkYXRpb25NZXNzYWdlX3RyYW5zbGF0aW9uIjoiIn19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlU2VjdGlvbkNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVNlY3Rpb24zMTExMSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcInNlY3Rpb25cIn0ifSwicHJvcGVydGllcyI6eyJiZlR5cGUiOiJub3JtYWwiLCJ0eXBlIjoic2VjdGlvbiIsImRpc3BsYXlUeXBlIjoiaW5saW5lIiwidGl0bGUiOiJ1bnRpdGxlZCBzZWN0aW9uIiwibmFtZSI6ImJmUXVpY2tNb2RlU2VjdGlvbjMxMTExIiwiZGVzY3JpcHRpb24iOiIiLCJvZmYiOmZhbHNlLCJ0aXRsZV90cmFuc2xhdGlvbiI6IiJ9LCJzdGF0ZSI6Im9wZW4iLCJkYXRhIjp7InRpdGxlIjoidW50aXRsZWQgc2VjdGlvbiIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9zZWN0aW9uLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJDb3JyZW8iLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJDb3JyZW8iLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fdGV4dC1maWVsZC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmVGV4dGZpZWxkIiwibGFiZWwiOiJDb3JyZW8iLCJsYWJlbFBvc2l0aW9uIjoibGVmdCIsImJmTmFtZSI6IkNvcnJlbyIsImRiSWQiOjM0LCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjp0cnVlLCJoaW50IjoiIiwib2ZmIjpmYWxzZSwicGxhY2Vob2xkZXIiOiIiLCJ2YWx1ZSI6IiIsIm1heExlbmd0aCI6IiIsInJlYWRvbmx5IjpmYWxzZSwicGFzc3dvcmQiOmZhbHNlLCJtYWlsYmFjayI6ZmFsc2UsIm1haWxiYWNrQXNTZW5kZXIiOmZhbHNlLCJtYWlsYmFja2ZpbGUiOiIiLCJzaXplIjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2UsInZhbHVlX3RyYW5zbGF0aW9uIjoiIiwicGxhY2Vob2xkZXJfdHJhbnNsYXRpb24iOiIiLCJsYWJlbF90cmFuc2xhdGlvbiI6IiIsImhpbnRfdHJhbnNsYXRpb24iOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZV90cmFuc2xhdGlvbiI6IiJ9fSx7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiVGVsZWZvbm8iLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJUZWxlZm9ubyIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWZpZWxkLnBuZyJ9LCJwcm9wZXJ0aWVzIjp7InR5cGUiOiJlbGVtZW50IiwiYmZUeXBlIjoiYmZUZXh0ZmllbGQiLCJsYWJlbCI6IlRlbGVmb25vIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJUZWxlZm9ubyIsImRiSWQiOjM1LCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjpmYWxzZSwiaGludCI6IiIsIm9mZiI6ZmFsc2UsInBsYWNlaG9sZGVyIjoiIiwidmFsdWUiOiIiLCJtYXhMZW5ndGgiOiIiLCJyZWFkb25seSI6ZmFsc2UsInBhc3N3b3JkIjpmYWxzZSwibWFpbGJhY2siOmZhbHNlLCJtYWlsYmFja0FzU2VuZGVyIjpmYWxzZSwibWFpbGJhY2tmaWxlIjoiIiwic2l6ZSI6IiIsInZhbGlkYXRpb25Db25kaXRpb24iOjAsInZhbGlkYXRpb25JZCI6IjEiLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6IjgiLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjoiMTYiLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlLCJ2YWx1ZV90cmFuc2xhdGlvbiI6IiIsInBsYWNlaG9sZGVyX3RyYW5zbGF0aW9uIjoiIiwibGFiZWxfdHJhbnNsYXRpb24iOiIiLCJoaW50X3RyYW5zbGF0aW9uIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2VfdHJhbnNsYXRpb24iOiIifX1dfV19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlU2VjdGlvbkNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVNlY3Rpb24yOTcyMSIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcInNlY3Rpb25cIn0ifSwicHJvcGVydGllcyI6eyJiZlR5cGUiOiJub3JtYWwiLCJ0eXBlIjoic2VjdGlvbiIsImRpc3BsYXlUeXBlIjoiaW5saW5lIiwidGl0bGUiOiJ1bnRpdGxlZCBzZWN0aW9uIiwibmFtZSI6ImJmUXVpY2tNb2RlU2VjdGlvbjI5NzIxIiwiZGVzY3JpcHRpb24iOiIiLCJvZmYiOmZhbHNlLCJ0aXRsZV90cmFuc2xhdGlvbiI6IiJ9LCJzdGF0ZSI6Im9wZW4iLCJkYXRhIjp7InRpdGxlIjoidW50aXRsZWQgc2VjdGlvbiIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9zZWN0aW9uLnBuZyJ9LCJjaGlsZHJlbiI6W3siYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTg5NjgxMDYiLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJQcm95ZWN0byIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl9zZWxlY3QucG5nIn0sInByb3BlcnRpZXMiOnsidHlwZSI6ImVsZW1lbnQiLCJiZlR5cGUiOiJiZlNlbGVjdCIsImxhYmVsIjoiUHJveWVjdG8iLCJsYWJlbFBvc2l0aW9uIjoibGVmdCIsImJmTmFtZSI6ImJmUXVpY2tNb2RlODk2ODEwNiIsImRiSWQiOjQ2LCJvcmRlck51bWJlciI6Ii0xIiwidGFiSW5kZXgiOiItMSIsImxvZ2dpbmciOnRydWUsImhpZGVMYWJlbCI6ZmFsc2UsInJlcXVpcmVkIjpmYWxzZSwiaGludCI6IiIsIm9mZiI6ZmFsc2UsImxpc3QiOiIwO01pZ3VlbCBDYWJyZXJhO01DXG4wO1JhZmFlbCBNYXJ0aW5lejtSTVxuIiwicmVhZG9ubHkiOmZhbHNlLCJtdWx0aXBsZSI6ZmFsc2UsIm1haWxiYWNrIjpmYWxzZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJ2YWxpZGF0aW9uQ29uZGl0aW9uIjowLCJ2YWxpZGF0aW9uSWQiOiIxIiwidmFsaWRhdGlvbkNvZGUiOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZSI6IiIsInZhbGlkYXRpb25GdW5jdGlvbk5hbWUiOiIiLCJpbml0Q29uZGl0aW9uIjowLCJpbml0SWQiOiI4IiwiaW5pdENvZGUiOiIiLCJpbml0RnVuY3Rpb25OYW1lIjoiIiwiaW5pdEZvcm1FbnRyeSI6MCwiaW5pdFBhZ2VFbnRyeSI6MCwiYWN0aW9uQ29uZGl0aW9uIjowLCJhY3Rpb25JZCI6IjE2IiwiYWN0aW9uQ29kZSI6IiIsImFjdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImFjdGlvbkNsaWNrIjowLCJhY3Rpb25CbHVyIjowLCJhY3Rpb25DaGFuZ2UiOjAsImFjdGlvbkZvY3VzIjowLCJhY3Rpb25TZWxlY3QiOjAsImhpZGVJbk1haWxiYWNrIjpmYWxzZSwibGlzdF90cmFuc2xhdGlvbiI6IiIsImhpbnRfdHJhbnNsYXRpb24iOiIiLCJsYWJlbF90cmFuc2xhdGlvbiI6IiIsInZhbGlkYXRpb25NZXNzYWdlX3RyYW5zbGF0aW9uIjoiIn19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlRWxlbWVudENsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZTk5MDQzNTciLCJtZGF0YSI6IntcImRlbGV0YWJsZVwiOiB0cnVlLCBcInR5cGVcIjogXCJlbGVtZW50XCJ9In0sImRhdGEiOnsidGl0bGUiOiJIb3JhcmlvIiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX3NlbGVjdC5wbmcifSwicHJvcGVydGllcyI6eyJ0eXBlIjoiZWxlbWVudCIsImJmVHlwZSI6ImJmU2VsZWN0IiwibGFiZWwiOiJIb3JhcmlvIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJiZlF1aWNrTW9kZTk5MDQzNTciLCJkYklkIjo1NSwib3JkZXJOdW1iZXIiOiItMSIsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6ZmFsc2UsImhpbnQiOiIiLCJvZmYiOmZhbHNlLCJsaXN0IjoiMDtNYVx1MDBmMWFuYTtNYVx1MDBmMWFuYVxuMDtUYXJkZTtUYXJkZVxuMDtOb2NoZTtOb2NoZSIsInJlYWRvbmx5IjpmYWxzZSwibXVsdGlwbGUiOmZhbHNlLCJtYWlsYmFjayI6ZmFsc2UsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwidmFsaWRhdGlvbkNvbmRpdGlvbiI6MCwidmFsaWRhdGlvbklkIjoiMSIsInZhbGlkYXRpb25Db2RlIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2UiOiIiLCJ2YWxpZGF0aW9uRnVuY3Rpb25OYW1lIjoiIiwiaW5pdENvbmRpdGlvbiI6MCwiaW5pdElkIjoiOCIsImluaXRDb2RlIjoiIiwiaW5pdEZ1bmN0aW9uTmFtZSI6IiIsImluaXRGb3JtRW50cnkiOjAsImluaXRQYWdlRW50cnkiOjAsImFjdGlvbkNvbmRpdGlvbiI6MCwiYWN0aW9uSWQiOiIxNiIsImFjdGlvbkNvZGUiOiIiLCJhY3Rpb25GdW5jdGlvbk5hbWUiOiIiLCJhY3Rpb25DbGljayI6MCwiYWN0aW9uQmx1ciI6MCwiYWN0aW9uQ2hhbmdlIjowLCJhY3Rpb25Gb2N1cyI6MCwiYWN0aW9uU2VsZWN0IjowLCJoaWRlSW5NYWlsYmFjayI6ZmFsc2UsImxpc3RfdHJhbnNsYXRpb24iOiIiLCJoaW50X3RyYW5zbGF0aW9uIjoiIiwibGFiZWxfdHJhbnNsYXRpb24iOiIiLCJ2YWxpZGF0aW9uTWVzc2FnZV90cmFuc2xhdGlvbiI6IiJ9fV19LHsiYXR0cmlidXRlcyI6eyJjbGFzcyI6ImJmUXVpY2tNb2RlU2VjdGlvbkNsYXNzIiwiaWQiOiJiZlF1aWNrTW9kZVNlY3Rpb244NzczNCIsIm1kYXRhIjoie1wiZGVsZXRhYmxlXCI6IHRydWUsIFwidHlwZVwiOiBcInNlY3Rpb25cIn0ifSwicHJvcGVydGllcyI6eyJiZlR5cGUiOiJub3JtYWwiLCJ0eXBlIjoic2VjdGlvbiIsImRpc3BsYXlUeXBlIjoiYnJlYWtzIiwidGl0bGUiOiJ1bnRpdGxlZCBzZWN0aW9uIiwibmFtZSI6ImJmUXVpY2tNb2RlU2VjdGlvbjg3NzM0IiwiZGVzY3JpcHRpb24iOiIiLCJvZmYiOmZhbHNlfSwic3RhdGUiOiJvcGVuIiwiZGF0YSI6eyJ0aXRsZSI6InVudGl0bGVkIHNlY3Rpb24iLCJpY29uIjoiLi5cL2FkbWluaXN0cmF0b3JcL2NvbXBvbmVudHNcL2NvbV9icmVlemluZ2Zvcm1zXC9saWJyYXJpZXNcL2pxdWVyeVwvdGhlbWVzXC9xdWlja21vZGVcL2lcL2ljb25fc2VjdGlvbi5wbmcifSwiY2hpbGRyZW4iOlt7ImF0dHJpYnV0ZXMiOnsiY2xhc3MiOiJiZlF1aWNrTW9kZUVsZW1lbnRDbGFzcyIsImlkIjoiYmZRdWlja01vZGU3OTk5NDk1IiwibWRhdGEiOiJ7XCJkZWxldGFibGVcIjogdHJ1ZSwgXCJ0eXBlXCI6IFwiZWxlbWVudFwifSJ9LCJkYXRhIjp7InRpdGxlIjoiTWVuc2FqZSIsImljb24iOiIuLlwvYWRtaW5pc3RyYXRvclwvY29tcG9uZW50c1wvY29tX2JyZWV6aW5nZm9ybXNcL2xpYnJhcmllc1wvanF1ZXJ5XC90aGVtZXNcL3F1aWNrbW9kZVwvaVwvaWNvbl90ZXh0LWFyZWEucG5nIn0sInByb3BlcnRpZXMiOnsidHlwZSI6ImVsZW1lbnQiLCJiZlR5cGUiOiJiZlRleHRhcmVhIiwibGFiZWwiOiJNZW5zYWplIiwibGFiZWxQb3NpdGlvbiI6ImxlZnQiLCJiZk5hbWUiOiJiZlF1aWNrTW9kZTc5OTk0OTUiLCJkYklkIjo2OCwib3JkZXJOdW1iZXIiOiItMSIsInRhYkluZGV4IjoiLTEiLCJsb2dnaW5nIjp0cnVlLCJoaWRlTGFiZWwiOmZhbHNlLCJyZXF1aXJlZCI6ZmFsc2UsImhpbnQiOiIiLCJvZmYiOmZhbHNlLCJwbGFjZWhvbGRlciI6IiIsImlzX2h0bWwiOmZhbHNlLCJ2YWx1ZSI6IiIsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibWF4bGVuZ3RoIjoiMCIsInNob3dNYXhsZW5ndGhDb3VudGVyIjp0cnVlLCJyZWFkb25seSI6ZmFsc2UsInZhbGlkYXRpb25Db25kaXRpb24iOjAsInZhbGlkYXRpb25JZCI6IjEiLCJ2YWxpZGF0aW9uQ29kZSI6IiIsInZhbGlkYXRpb25NZXNzYWdlIjoiIiwidmFsaWRhdGlvbkZ1bmN0aW9uTmFtZSI6IiIsImluaXRDb25kaXRpb24iOjAsImluaXRJZCI6IjgiLCJpbml0Q29kZSI6IiIsImluaXRGdW5jdGlvbk5hbWUiOiIiLCJpbml0Rm9ybUVudHJ5IjowLCJpbml0UGFnZUVudHJ5IjowLCJhY3Rpb25Db25kaXRpb24iOjAsImFjdGlvbklkIjoiMTYiLCJhY3Rpb25Db2RlIjoiIiwiYWN0aW9uRnVuY3Rpb25OYW1lIjoiIiwiYWN0aW9uQ2xpY2siOjAsImFjdGlvbkJsdXIiOjAsImFjdGlvbkNoYW5nZSI6MCwiYWN0aW9uRm9jdXMiOjAsImFjdGlvblNlbGVjdCI6MCwiaGlkZUluTWFpbGJhY2siOmZhbHNlLCJ2YWx1ZV90cmFuc2xhdGlvbiI6IiIsInBsYWNlaG9sZGVyX3RyYW5zbGF0aW9uIjoiIiwibGFiZWxfdHJhbnNsYXRpb24iOiIiLCJoaW50X3RyYW5zbGF0aW9uIjoiIiwidmFsaWRhdGlvbk1lc3NhZ2VfdHJhbnNsYXRpb24iOiIifX1dfV19XX0=', 'QuickMode', '[{"elements":[{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Nombre","name":"Nombre","page":"1","orderNumber":1,"dbId":27,"appElementOrderId":0,"id":0,"logging":true,"qId":"Nombre","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Correo","name":"Correo","page":"1","orderNumber":2,"dbId":34,"appElementOrderId":0,"id":0,"logging":true,"qId":"Correo","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Text","elementType":"","options":{"value":"","placeholder":"","password":false,"mailback":false,"readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Telefono","name":"Telefono","page":"1","orderNumber":3,"dbId":35,"appElementOrderId":0,"id":0,"logging":true,"qId":"Telefono","internalType":"bfTextfield","mailbackAsSender":0,"tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Select List","elementType":"","options":{"multiple":false,"options":"0;Miguel Cabrera;MC\\n0;Rafael Martinez;RM\\n","mailback":false,"readonly":false},"data1":1,"data2":"0;Miguel Cabrera;MC\\n0;Rafael Martinez;RM\\n","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Proyecto","name":"bfQuickMode8968106","page":"1","orderNumber":4,"dbId":46,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode8968106","internalType":"bfSelect","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Select List","elementType":"","options":{"multiple":false,"options":"0;Ma\\u00f1ana;Ma\\u00f1ana\\n0;Tarde;Tarde\\n0;Noche;Noche","mailback":false,"readonly":false},"data1":1,"data2":"0;Ma\\u00f1ana;Ma\\u00f1ana\\n0;Tarde;Tarde\\n0;Noche;Noche","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Horario","name":"bfQuickMode9904357","page":"1","orderNumber":5,"dbId":55,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode9904357","internalType":"bfSelect","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"Textarea","elementType":"","options":{"value":"","placeholder":"","readonly":false},"data1":"","data2":"","data3":"","script1cond":0,"script1id":"8","script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":"16","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":"1","script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"Mensaje","name":"bfQuickMode7999495","page":"1","orderNumber":6,"dbId":68,"appElementOrderId":0,"id":0,"logging":true,"qId":"bfQuickMode7999495","internalType":"bfTextarea","tabIndex":"-1","hideInMailback":false},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":73,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":74,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":75,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":76,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":6}]', 0, 1, 0, 'ContactoGeneral', '', '', 'Contacto General', '', '', NULL, 400, 0, 500, 0, 1, 2, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 'anapaula@kokai.com.mx', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_integrator_criteria_fixed`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_integrator_criteria_fixed` (
`id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `fixed_value` text NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_integrator_criteria_form`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_integrator_criteria_form` (
`id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_integrator_criteria_joomla`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_integrator_criteria_joomla` (
`id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `joomla_object` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_integrator_items`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_integrator_items` (
`id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_integrator_rules`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_integrator_rules` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `reference_table` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'insert',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `finalize_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_packages`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_packages` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `created` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_facileforms_packages`
--

INSERT INTO `f4kq7_facileforms_packages` (`id`, `name`, `version`, `created`, `title`, `author`, `email`, `url`, `description`, `copyright`) VALUES
('', 'mypck_001', '0.0.1', '2005-07-31 22:21:23', 'My First Package', 'My Name', 'my.name@my.domain', 'http://www.my.domain', 'This is the first package that I created', 'This FacileForms package is released under the GNU/GPL license'),
('FF', 'stdlib.english', '1.8', '2012-09-21 11:50:15', 'BreezingForms-Standard Piece and Script Libraries', 'Markus Bopp', 'markus.bopp@crosstec.org', 'http://www.crosstec.org', 'These are the standard BreezingForms script and piece libraries.', 'This BreezingForms package is released under the GNU/GPL license');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_pieces`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_pieces` (
`id` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_facileforms_pieces`
--

INSERT INTO `f4kq7_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_addCustomCSSFile', 'Add custom CSS File', 'Adds a custom css file to the form. To choose a css file, execute this piece and call the function ff_addCustomCSSFile(''path/to/css/file'') with the RELATIVE (not full!) path to your joomla installation.\r\nDo not forget to call $this->execPieceByName(''ff_InitLib'') before!\r\n\r\nExample:\r\n\r\nglobal $mainframe;\r\n\r\n$this->execPieceByName(''ff_InitLib'');\r\n$this->execPieceByName(''ff_addCustomCSSFile'');\r\n\r\nff_addCustomCSSFile(''templates/'' . $mainframe->getTemplate() . ''/css/template.css'');', 'Before Form', 'function ff_addCustomCSSFile($path){\r\n	if(file_exists(JPATH_SITE . ''/'' . $path)){\r\n		JFactory::getDocument()->addStyleSheet(JURI::root() . $path);\r\n	}\r\n}'),
(2, 1, 'FF', 'ff_Constants', 'Constansts definitions', 'Library constants definitions', 'Before Form', 'define(''FF_DIE'',       ''_ff_die_on_errors_'');\r\ndefine(''FF_DONTDIE'',   ''_ff_stay_alive_'');\r\ndefine(''FF_IGNOREDIE'', ''_ff_ignore_if_dying_'');\r\n\r\ndefine(''FF_ARRAY'',     ''_ff_return_as_array_'');\r\ndefine(''FF_LIST'',      ''_ff_return_as_list_'');\r\ndefine(''FF_SLIST'',     ''_ff_return_as_slist_'');\r\ndefine(''FF_DLIST'',     ''_ff_return_as_dlist_'');\r\n\r\ndefine(''FF_NOTRIM'',    1);\r\ndefine(''FF_ALLOWHTML'', 2);\r\ndefine(''FF_ALLOWRAW'',  4);'),
(3, 1, 'FF', 'ff_die', 'Terminate form gracefully', 'Gracefully terminates the form and shows a message plus opionally a \r\nCONTINUE button for further redirection.\r\n\r\nCall:\r\n\r\n    ff_die($message=null, $action=''stop'', $target='''', $params='''', $label=''Continue'');\r\n    return;\r\n\r\n    $message = A message to display. If no message is provided, it will\r\n               display:\r\n\r\n                    Fatal error in $formname, processing stopped.\r\n\r\n    $action  = ''stop'' : Dont show a CONTINUE button (default)\r\n               ''self'' : Redirect to the same form\r\n               ''form'' : Redirect to another form \r\n               ''page'' : Redirect to another page of this site\r\n               ''home'' : Redirect to homepage of the site\r\n               ''url''  : Redirect to a url\r\n\r\n    $target  = Target name/url for ''form'', ''page'' and ''url''\r\n\r\n    $params  = Additional parameters for ''self'' and ''form''\r\n\r\n    $label   = Text for the continue button\r\n\r\nExamples:\r\n\r\n    // Display standard message without continue button\r\n    ff_die(); \r\n\r\n    // Display message without continue button\r\n    ff_die(''Sorry, cannot continue for some reason.'');\r\n\r\n    // Display standard message and return to same form with a parameter\r\n    ff_die(null, ''self'', ''&ff_param_foo=bar'');\r\n\r\n    // Redirect to another form\r\n    ff_die(''Guess you are hungry now...'', ''form'', ''SamplePizzaShop'', null, ''Order'');\r\n\r\n    // Redirect to another site page\r\n    ff_die(\r\n        ''Something strange has happened!'', \r\n        ''page'', \r\n        ''index.php?option=com_content&task=section&id=1&Itemid=2''\r\n    );', 'Untyped', 'function ff_die($message='''', $action=''stop'', $target='''', $params='''', $label=''Continue'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    $form =& $ff_processor->formrow;\r\n    if (!$message) \r\n        $message = \r\n            "<strong>Fatal error in $form->name, form processing halted.</strong>";\r\n    switch ($action) {\r\n        case ''self'': $url = ff_makeSelfUrl($params); break;\r\n        case ''form'': $url = ff_makeFormUrl($target, $params); break;\r\n        case ''page'': $url = ff_makePageUrl($target); break;\r\n        case ''home'': $url = "{mossite}"; break;\r\n        case ''url'' : $url = $target; break;\r\n        default    : $url = '''';\r\n    } // switch\r\n    if ($form->class1 != '''') echo ''<div class="''.$form->class1.''">''.nl();\r\n    echo($message.''<br/><br/><br/>''.nl());\r\n    if ($url) {\r\n        if (!$ff_processor->inline) echo ''<form action="#redirect">''.nl();\r\n        if ($ff_processor->inframe) $t = ''parent''; else $t = ''document'';\r\n        echo ''<input type="button" class="button" value="''.$label.''"''.\r\n             '' onClick="''.$t.''.location.href=\\''''.htmlentities($url,ENT_QUOTES).''\\'';"''.\r\n             ''/>''.nl();\r\n        if (!$ff_processor->inline) echo ''</form>''.nl();\r\n    } // if\r\n    if ($form->class1 != '''') echo ''</div>''.nl();\r\n    unset($form);\r\n    ob_start();\r\n    $ff_processor->suicide();\r\n} // ff_die'),
(4, 1, 'FF', 'ff_DisableFormTrace', 'Disable tracing at view time', 'Disables tracing for use as before form piece', 'Before Form', '//+trace dis'),
(5, 1, 'FF', 'ff_DisableSubmitTrace', 'Disable tracing at submit time', 'Disables tracing for use as begin submit piece', 'Begin Submit', '//+trace dis'),
(6, 1, 'FF', 'ff_dying', 'Query live status', 'Query if form is dying', 'Untyped', '//+trace max none\r\nfunction ff_dying()\r\n{\r\n    global $ff_processor; \r\n    return $ff_processor->dying;\r\n} // ff_dying'),
(7, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters in c-codes', 'Untyped', 'function ff_expString($text)\r\n{\r\n    return expstring($text);\r\n} // ff_expString'),
(8, 1, 'FF', 'ff_getPageByNameX', 'Get page # by element name', 'Gets the page number by the name of an element. \r\nTypically used to redirect to a certain page in a before form piece \r\nas \r\n\r\n    $this->page = ff_getPageByName(''elementname'');', 'Untyped', 'function ff_getPageByName($name)\r\n{\r\n    global $ff_processor;\r\n    foreach($ff_processor->rows as $row)\r\n        if ($row->name==$name)\r\n            return $row->page;\r\n    return null;\r\n} // ff_getPageByName'),
(9, 1, 'FF', 'ff_getParam', 'Get GET/POST parameter', 'Direct replacement for mosGetParam. ff_getParam will attempt to filter \r\nout parameters that are targeted to another form on the same page.', 'Untyped', 'function ff_getParam($name, $default=null, $mask=0)\r\n{\r\n    global $ff_request;\r\n    if (substr($name,0,9)==''ff_param_'') {\r\n        if (!isset($ff_request[$name])) return $default;\r\n        $val = $ff_request[$name];\r\n    } else {\r\n        if (!isset($_REQUEST[$name])) return $default;\r\n        $val = $_REQUEST[$name];\r\n    } // if\r\n    $dotrim = ($mask & FF_NOTRIM)==0;\r\n    $dostrp = ($mask & FF_ALLOWHTML)==0;\r\n    $addsla = ($mask & FF_ALLOWRAW)==0 && !get_magic_quotes_gpc();\r\n    $remsla = ($mask & FF_ALLOWRAW)!=0 && get_magic_quotes_gpc();\r\n    if (is_array($val)) {\r\n        $cnt = count($val);\r\n        for ($v = 0; $v < $cnt; $v++)\r\n            if (is_string($val[$v])) {\r\n                if ($dotrim) $val[$v] = trim($val[$v]);\r\n                if ($dostrp) $val[$v] = strip_tags($val[$v]);\r\n                if ($addsla) $val[$v] = addslashes($val[$v]);\r\n                if ($remsla) $val[$v] = stripslashes($val[$v]);\r\n            } // if\r\n    } else {\r\n        if (is_string($val)) {\r\n            if ($dotrim) $val = trim($val);\r\n            if ($dostrp) $val = strip_tags($val);\r\n            if ($addsla) $val = addslashes($val);\r\n            if ($remsla) $val = stripslashes($val);\r\n        } // if\r\n    } // if\r\n    return $val;\r\n} // ff_getParam'),
(10, 1, 'FF', 'ff_getSubmit', 'Get submited data', 'Returns submitdata either as scalar, array or list. In case of list the values\r\nare returned as a string with the values concatenated by comma.\r\n\r\nExamples:\r\n\r\n// Get as scalar: Optionally pass a default value as second parameter.\r\n// If no default is provided, it will return NULL if no value was submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'');        // return NULL if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',1);      // return 1 if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',''foo'');  // return ''foo'' if not submitted\r\n\r\n    ff_query(\r\n        "insert into #__mytable(id, name) ".\r\n        "values (''".\r\n            ff_getSubmit(''id'').", ".\r\n            ff_getSubmit(''name'',''unknown'').\r\n        "'')"\r\n    );\r\n\r\n// Get as array: Pass FF_ARRAY as second Parameter\r\n\r\n    $myarr = $ff_getSubmit(''myarr'', FF_ARRAY);\r\n\r\n    foreach ($myarr as $myval) ...\r\n\r\n// Get as list: Pass either FF_LIST, FF_SLIST or FF_DLIST as 2nd parameter.\r\n\r\n    // FF_LIST will return numeric data unquoted and strings in single quotes:\r\n    //    1,2,''a'',4\r\n\r\n    // FF_SLIST will return all data single quoted:\r\n    //    ''1'',''2'',''a'',''4''\r\n\r\n    // FF_DLIST will return all data double quoted:\r\n    //    "1","2","a","4"\r\n\r\n    ff_query(\r\n        "delete from #__mytable ".\r\n        "where id in (".ff_getSubmit(''itemlist'',FF_LIST).")"\r\n    );', 'Untyped', 'function ff_getSubmit($name, $default=null)\r\n{\r\n    global $ff_processor;\r\n\r\n    switch ((string)$default) {\r\n        case FF_ARRAY: $value = array(); break;\r\n        case FF_LIST : \r\n        case FF_SLIST:\r\n        case FF_DLIST: $value = ''''; break;\r\n        default      : $value = $default;\r\n    } // switch\r\n    foreach ($ff_processor->submitdata as $data)\r\n        if ($data[_FF_DATA_NAME]==$name) {\r\n            $q = '''';\r\n            switch ((string)$default) {\r\n                case FF_ARRAY:\r\n                    $value[] = $data[_FF_DATA_VALUE];\r\n                    break;\r\n                case FF_SLIST:\r\n                    $q = "''";\r\n                case FF_DLIST:\r\n                    if ($q=='''') $q = ''"'';\r\n                case FF_LIST:\r\n                    if ($q=='''' && !is_numeric($data[_FF_DATA_VALUE])) $q = "''";\r\n                    if ($value!='''') $value.='','';\r\n                    $value .= $q.$data[_FF_DATA_VALUE].$q;\r\n                    break;\r\n                default:\r\n                    return $data[_FF_DATA_VALUE];\r\n            } // switch\r\n         } // if\r\n    return $value;\r\n} // ff_getSubmit'),
(11, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString($text)\r\n{\r\n    return impstring($text);\r\n} // ff_impString'),
(12, 1, 'FF', 'ff_InitLib', 'Init Library', 'A collection of useful functions for use in form pieces. \r\n\r\nInclude by: \r\n\r\n    $this->execPieceByName(''ff_InitLib'');', 'Before Form', '//+trace high none\r\nif (!defined(''FF_DIE''))                    $this->execPieceByName(''ff_Constants'');\r\nif (!function_exists(''ff_expstring''))      $this->execPieceByName(''ff_expstring'');\r\nif (!function_exists(''ff_makePageUrl''))    $this->execPieceByName(''ff_makePageUrl'');\r\nif (!function_exists(''ff_makeFormUrl''))    $this->execPieceByName(''ff_makeFormUrl'');\r\nif (!function_exists(''ff_makeSelfUrl''))    $this->execPieceByName(''ff_makeSelfUrl'');\r\nif (!function_exists(''ff_die''))            $this->execPieceByName(''ff_die'');\r\nif (!function_exists(''ff_dying''))          $this->execPieceByName(''ff_dying'');\r\nif (!function_exists(''ff_redirect''))       $this->execPieceByName(''ff_redirect'');\r\nif (!function_exists(''ff_redirectParent'')) $this->execPieceByName(''ff_redirectParentX'');\r\nif (!function_exists(''ff_redirectPage''))   $this->execPieceByName(''ff_redirectPage'');\r\nif (!function_exists(''ff_redirectForm''))   $this->execPieceByName(''ff_redirectForm'');\r\nif (!function_exists(''ff_redirectSelf''))   $this->execPieceByName(''ff_redirectSelf'');\r\nif (!function_exists(''ff_setChecked''))     $this->execPieceByName(''ff_setCheckedX'');\r\nif (!function_exists(''ff_setSelected''))    $this->execPieceByName(''ff_setSelectedX'');\r\nif (!function_exists(''ff_setValue''))       $this->execPieceByName(''ff_setValueX'');\r\nif (!function_exists(''ff_getPageByName''))  $this->execPieceByName(''ff_getPageByNameX'');\r\nif (!function_exists(''ff_getParam''))       $this->execPieceByName(''ff_getParam'');\r\nif (!function_exists(''ff_getSubmit''))      $this->execPieceByName(''ff_getSubmit'');\r\nif (!function_exists(''ff_impString''))      $this->execPieceByName(''ff_impString'');\r\nif (!function_exists(''ff_expString''))      $this->execPieceByName(''ff_expString'');\r\nif (!function_exists(''ff_securityImage''))  $this->execPieceByName(''ff_securityImage'');\r\nif (!function_exists(''ff_select''))         $this->execPieceByName(''ff_select'');\r\nif (!function_exists(''ff_selectValue''))    $this->execPieceByName(''ff_selectValue'');\r\nif (!function_exists(''ff_query''))          $this->execPieceByName(''ff_query'');\r\nif (!function_exists(''ff_markdown''))       $this->execPieceByName(''ff_markdown'');'),
(13, 1, 'FF', 'ff_makeFormUrl', 'Make URL to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeFormUrl($name, $params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeFormUrl(\r\n       ''OtherForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_makeFormUrl($name, $params='''')\r\n{\r\n    global $ff_processor, $ff_otherparams;\r\n    $url = '''';\r\n    switch ($ff_processor->runmode) {\r\n        case 2: // preview\r\n        case 1: // backend\r\n            $url .= ''administrator/index2.php?option=com_breezingforms&act=run''.\r\n                    ''&ff_name=''.urlencode($name);\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            break;\r\n        default: // frontend\r\n            $url .= ''index.php?ff_name=''.urlencode($name);\r\n            if ($ff_otherparams[''option''] == ''com_breezingforms'') {\r\n                reset($ff_otherparams);\r\n                while (list($prop, $val) = each($ff_otherparams))\r\n                    $url .= ''&''.urlencode($prop).''=''.urlencode($val);\r\n            } else\r\n                $url .= ''&option=com_breezingforms'';\r\n            if ($ff_processor->target > 1) $url .= ''&ff_target=''.$ff_processor->target;\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            if ($ff_processor->align !=1) $url .= ''&ff_align=''.$ff_processor->align;\r\n            if ($ff_processor->top>0) $url .= ''&ff_top=''.$ff_processor->top;\r\n    } // switch\r\n    return ff_makePageUrl($url. $params);\r\n} // ff_makeFormUrl'),
(14, 1, 'FF', 'ff_makePageUrl', 'Make URL to other page', 'Builds an URL to another mambo page\r\n\r\nCall: \r\n\r\n    $url = ff_makePageUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makePageUrl(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_makePageUrl($params='''')\r\n{\r\n    $url = ''{mossite}'';\r\n    if ($params != '''') {\r\n        $len = strlen($url);\r\n        if ($len > 0 && $url{$len-1} != ''/'') $url .= ''/'';\r\n        $url .= $params;\r\n    } // if\r\n    return $url;\r\n} // ff_makePageUrl'),
(15, 1, 'FF', 'ff_makeSelfUrl', 'Make URL to same form', 'Make an URL to the same form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeSelfUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeSelfUrl(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_makeSelfUrl($params='''')\r\n{\r\n    global $ff_processor;\r\n    return ff_makeFormUrl($ff_processor->formrow->name, $params);\r\n} // ff_makeSelfUrl'),
(16, 1, 'FF', 'ff_query', 'Non-select queries against db', 'Execute a simple db query.\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_query'')) $this->execPieceByName(''ff_query'');\r\n\r\nCall syntax:\r\n\r\n    [$newid = ] ff_query($sql [, $insert = 0]);\r\n\r\n    $sql:    Sql statement to call\r\n    $insert: 1 = return key of auto column when inserting rows\r\n    $newid:  The key of the new row.', 'Untyped', 'function ff_query($sql, $insert=false, $error=FF_DIE)\r\n{\r\n    global $ff_processor;\r\n    $database = JFactory::getDBO();\r\n    if ($ff_processor->dying && $error!=FF_IGNOREDIE) return -1;\r\n    $database->setQuery($sql);\r\n    $database->query();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($insert) return $database->insertid();\r\n    } // if\r\n    return 0;\r\n} // ff_query'),
(17, 1, 'FF', 'ff_redirect', 'Basic redirection', 'Basic redirection routine supporting multiple targets and methods.\r\n\r\nCall:\r\n \r\nff_redirect($url [, $target=''self'' , $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $target = ''top'', ''parent'', ''self'' or ''blank''\r\n\r\n              ''top''    = redirect to the top browser window\r\n              ''parent'' = redirect to the parent frame\r\n              ''self''   = redirect in the same frame (the default)\r\n              ''blank''  = redirect to a new browser window \r\n                         (blank works with post method only)\r\n\r\n    $method = ''post'' or ''get''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirect(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''top''\r\n       );', 'Untyped', 'function ff_redirect($url, $target=''self'', $method=''post'')\r\n{\r\n    global $ff_processor, $ff_request;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    switch (strtolower($method)) {\r\n        case ''get'': {\r\n            switch (strtolower($target)) {\r\n                case ''top''   :\r\n                case ''parent'': break;\r\n                default      : $target = ''document'';\r\n            } // switch\r\n            echo ''<script type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 "onload=function() { ".$target.".location.href=''".$url."''; }".nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''</body>''.nl();\r\n            break;\r\n        } // url\r\n        default: { // post\r\n            $pos = strpos($url,''?'');\r\n            $ff_request = array();\r\n            if ($pos === false)\r\n                $action = $url;\r\n            else {\r\n                $action = substr($url,0,$pos);\r\n                addRequestParams(substr($url, $pos+1));\r\n            } // if\r\n            switch (strtolower($target)) {\r\n                case ''blank'' : $target = '' target="_blank"'';  break;\r\n                case ''top''   : $target = '' target="_top"'';    break;\r\n                case ''parent'': $target = '' target="_parent"''; break;\r\n                default      : $target = '' target="_self"'';\r\n            } // switch\r\n            echo ''<script language="javascript" type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 ''onload = function() { document.ff_redirect.submit(); }''.nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''<form action="''.$action.''" ''.\r\n                  ''method="post" ''.\r\n                  ''name="ff_redirect" id="ff_redirect" ''.\r\n                  ''enctype="multipart/form-data"''.\r\n                  $target.\r\n                 ''>''.nl();\r\n            while (list($prop, $val) = each($ff_request))\r\n                echo ''<input type="hidden" name="''.$prop.''" ''.\r\n                            ''value="''.htmlentities(urldecode($val)).''"/>''.nl();\r\n            echo ''</form>''.nl().\r\n                 ''</body>''.nl();\r\n        } // post\r\n    } // switch\r\n    exit;\r\n} // ff_redirect'),
(18, 1, 'FF', 'ff_redirectForm', 'Redirect to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    ff_redirectForm($name, $params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectForm(\r\n        $this, \r\n       ''SecondForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_redirectForm($name, $params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeFormUrl($name, $params), $method);\r\n} // ff_redirectForm'),
(19, 1, 'FF', 'ff_redirectPage', 'Redirect to other page', 'Redirects to another mambo page. \r\n\r\nCall: \r\n\r\n    ff_redirectPage($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectPage(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_redirectPage($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makePageUrl($params), $method);\r\n} // ff_redirectPage'),
(20, 1, 'FF', 'ff_redirectParentX', 'Redirect to parent window', 'Redirects to the parent window when runing in iframe, otherwise to self. \r\n\r\nff_redirectParent($url [, $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $method = ''post'' or ''url''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirectParent(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''url''\r\n       );', 'Untyped', 'function ff_redirectParent($url, $method = ''post'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->inframe) $target = ''parent''; else $target = ''self''; \r\n    ff_redirect($url, $target, $method);\r\n} // ff_redirectParent'),
(21, 1, 'FF', 'ff_redirectSelf', 'Redirect to same form', 'Redirects to the same form. \r\n\r\nCall: \r\n\r\n    ff_redirectSelf($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectSelf(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_redirectSelf($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeSelfUrl($params), $method);\r\n} // ff_redirectSelf'),
(22, 1, 'FF', 'ff_securityImage', 'Security Image', 'Create code to display the security image', 'Untyped', 'global $ff_seccode;\r\n\r\nif (!isset($this->record_id)) { $ff_seccode = null; }\r\n\r\nfunction ff_securityImage()\r\n{\r\n    global $ff_comsite, $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n\r\n    return ''<img src="''.JURI::root().''ff_secimage.php?option=com_breezingforms&showSecImage=true" title="" alt="" />'';\r\n} // ff_securityImage'),
(23, 1, 'FF', 'ff_select', 'Select rows from db', 'Execute a select query\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_select'')) $this->execPieceByName(''ff_select'');\r\n\r\nCall syntax:\r\n\r\n    $rows = ff_select($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $rows:   List of row objects', 'Untyped', 'function ff_select($sql, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $rows = $database->loadObjectList();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        $rows = array();\r\n        if ($dienow) ff_die($error);\r\n    } else\r\n        $error = null;\r\n    return $rows;\r\n} // ff_select'),
(24, 1, 'FF', 'ff_selectValue', 'Select single value from db', 'Execute query to read a single value\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_selectValue'')) $this->execPieceByName(''ff_selectValue'');\r\n\r\nCall syntax:\r\n\r\n    $value = ff_selectValue($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $value:  The value returned by the database', 'Untyped', 'function ff_selectValue($sql, $def=null, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $value = $database->loadResult();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($value) return $value;\r\n    } // if\r\n    return $def;\r\n} // ff_selectValue'),
(25, 1, 'FF', 'ff_setCheckedX', 'Set checkbox/radiobutton checked', 'Set a radio button or checkbox checked. \r\n\r\nCall: \r\n\r\n    ff_setChecked(''name'', ''value'');', 'Untyped', 'function ff_setChecked($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name && $row->data1==$value)\r\n            $row->flag1 = 1;\r\n        unset($row);\r\n    } // for\r\n} // ff_setChecked'),
(26, 1, 'FF', 'ff_setSelectedX', 'Set a select list option to *selected*', 'Sets a select list option to selected. \r\n\r\nCall: \r\n\r\n    ff_setSelected(''name'', ''value'');', 'Untyped', 'function ff_setSelected($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data2 =\r\n                preg_replace(\r\n                    ''/(^|\\r\\n|\\n)(0|1);([^;]*);(''.$value.'')($|\\r\\n|\\n)/'',\r\n                    ''${1}1;${3};${4}${5}'',\r\n                    $row->data2\r\n                );\r\n        unset($row);\r\n    } // for\r\n} // ff_setSelected'),
(27, 1, 'FF', 'ff_setValueX', 'Set text, textarea, hidden value', 'Set value of a Static Text, Text, Textarea or Hidden Input. \r\n\r\nCall: \r\n\r\n    ff_setValue(''name'', ''value'');', 'Untyped', 'function ff_setValue($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data1 = $value;\r\n        unset($row);\r\n    } // for\r\n} // ff_setValue');
INSERT INTO `f4kq7_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(28, 1, 'FF', 'Markdown', 'Original Markdown Processor', 'Converts text marked up by ''Markdown'' into HTML.\r\n\r\nPlease use ff_markdown() in forms instead of Markdown()', 'Untyped', '#\r\n# Markdown  -  A text-to-HTML conversion tool for web writers\r\n#\r\n# Copyright (c) 2004-2005 John Gruber\r\n# <http://daringfireball.net/projects/markdown/>\r\n#\r\n# Copyright (c) 2004-2005 Michel Fortin - PHP Port\r\n# <http://www.michelf.com/projects/php-markdown/>\r\n#\r\n\r\nglobal	$MarkdownPHPVersion, $MarkdownSyntaxVersion,\r\n		$md_empty_element_suffix, $md_tab_width,\r\n		$md_nested_brackets_depth, $md_nested_brackets,\r\n		$md_escape_table, $md_backslash_escape_table,\r\n		$md_list_level;\r\n\r\n$MarkdownPHPVersion    = ''1.0.1b''; # Mon 6 Jun 2005\r\n$MarkdownSyntaxVersion = ''1.0.1'';  # Sun 12 Dec 2004\r\n\r\n\r\n#\r\n# Global default settings:\r\n#\r\n$md_empty_element_suffix = " />";     # Change to ">" for HTML output\r\n$md_tab_width = 4;\r\n\r\n#\r\n# WordPress settings:\r\n#\r\n$md_wp_posts    = true;  # Set to false to remove Markdown from posts.\r\n$md_wp_comments = true;  # Set to false to remove Markdown from comments.\r\n\r\n\r\n# -- WordPress Plugin Interface -----------------------------------------------\r\n/*\r\nPlugin Name: Markdown\r\nPlugin URI: http://www.michelf.com/projects/php-markdown/\r\nDescription: <a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\r\nVersion: 1.0.1b\r\nAuthor: Michel Fortin\r\nAuthor URI: http://www.michelf.com/\r\n*/\r\nif (isset($wp_version)) {\r\n	# More details about how it works here:\r\n	# <http://www.michelf.com/weblog/2005/wordpress-text-flow-vs-markdown/>\r\n\r\n	# Post content and excerpts\r\n	if ($md_wp_posts) {\r\n		remove_filter(''the_content'',  ''wpautop'');\r\n		remove_filter(''the_excerpt'',  ''wpautop'');\r\n		add_filter(''the_content'',     ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''trim'', 7);\r\n		add_filter(''the_excerpt'',     ''md_add_p'');\r\n		add_filter(''the_excerpt_rss'', ''md_strip_p'');\r\n\r\n		remove_filter(''content_save_pre'',  ''balanceTags'', 50);\r\n		remove_filter(''excerpt_save_pre'',  ''balanceTags'', 50);\r\n		add_filter(''the_content'',  	  ''balanceTags'', 50);\r\n		add_filter(''get_the_excerpt'', ''balanceTags'', 9);\r\n\r\n		function md_add_p($text) {\r\n			if (strlen($text) == 0) return;\r\n			if (strcasecmp(substr($text, -3), ''<p>'') == 0) return $text;\r\n			return ''<p>''.$text.''</p>'';\r\n		}\r\n		function md_strip_p($t) { return preg_replace(''{</?[pP]>}'', '''', $t); }\r\n	}\r\n\r\n	# Comments\r\n	if ($md_wp_comments) {\r\n		remove_filter(''comment_text'', ''wpautop'');\r\n		remove_filter(''comment_text'', ''make_clickable'');\r\n		add_filter(''pre_comment_content'', ''Markdown'', 6);\r\n		add_filter(''pre_comment_content'', ''md_hide_tags'', 8);\r\n		add_filter(''pre_comment_content'', ''md_show_tags'', 12);\r\n		add_filter(''get_comment_text'',    ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''md_strip_p'', 7);\r\n\r\n		global $md_hidden_tags;\r\n		$md_hidden_tags = array(\r\n			''<p>''	=> md5(''<p>''),		''</p>''	=> md5(''</p>''),\r\n			''<pre>''	=> md5(''<pre>''),	''</pre>''=> md5(''</pre>''),\r\n			''<ol>''	=> md5(''<ol>''),		''</ol>''	=> md5(''</ol>''),\r\n			''<ul>''	=> md5(''<ul>''),		''</ul>''	=> md5(''</ul>''),\r\n			''<li>''	=> md5(''<li>''),		''</li>''	=> md5(''</li>''),\r\n			);\r\n\r\n		function md_hide_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_keys($md_hidden_tags),\r\n								array_values($md_hidden_tags), $text);\r\n		}\r\n		function md_show_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_values($md_hidden_tags),\r\n								array_keys($md_hidden_tags), $text);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n# -- bBlog Plugin Info --------------------------------------------------------\r\nfunction identify_modifier_markdown() {\r\n	global $MarkdownPHPVersion;\r\n	return array(\r\n		''name''			=> ''markdown'',\r\n		''type''			=> ''modifier'',\r\n		''nicename''		=> ''Markdown'',\r\n		''description''	=> ''A text-to-HTML conversion tool for web writers'',\r\n		''authors''		=> ''Michel Fortin and John Gruber'',\r\n		''licence''		=> ''GPL'',\r\n		''version''		=> $MarkdownPHPVersion,\r\n		''help''			=> ''<a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>''\r\n	);\r\n}\r\n\r\n# -- Smarty Modifier Interface ------------------------------------------------\r\nfunction smarty_modifier_markdown($text) {\r\n	return Markdown($text);\r\n}\r\n\r\n# -- Textile Compatibility Mode -----------------------------------------------\r\n# Rename this file to "classTextile.php" and it can replace Textile anywhere.\r\nif (strcasecmp(substr(__FILE__, -16), "classTextile.php") == 0) {\r\n	# Try to include PHP SmartyPants. Should be in the same directory.\r\n	@include_once ''smartypants.php'';\r\n	# Fake Textile class. It calls Markdown instead.\r\n	class Textile {\r\n		function TextileThis($text, $lite='''', $encode='''', $noimage='''', $strict='''') {\r\n			if ($lite == '''' && $encode == '''')   $text = Markdown($text);\r\n			if (function_exists(''SmartyPants'')) $text = SmartyPants($text);\r\n			return $text;\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n#\r\n# Globals:\r\n#\r\n\r\n# Regex to match balanced [brackets].\r\n# Needed to insert a maximum bracked depth while converting to PHP.\r\n$md_nested_brackets_depth = 6;\r\n$md_nested_brackets =\r\n	str_repeat(''(?>[^\\[\\]]+|\\['', $md_nested_brackets_depth).\r\n	str_repeat(''\\])*'', $md_nested_brackets_depth);\r\n\r\n# Table of hash values for escaped characters:\r\n$md_escape_table = array(\r\n	"\\\\" => md5("\\\\"),\r\n	"`" => md5("`"),\r\n	"*" => md5("*"),\r\n	"_" => md5("_"),\r\n	"{" => md5("{"),\r\n	"}" => md5("}"),\r\n	"[" => md5("["),\r\n	"]" => md5("]"),\r\n	"(" => md5("("),\r\n	")" => md5(")"),\r\n	">" => md5(">"),\r\n	"#" => md5("#"),\r\n	"+" => md5("+"),\r\n	"-" => md5("-"),\r\n	"." => md5("."),\r\n	"!" => md5("!")\r\n);\r\n# Create an identical table but for escaped characters.\r\n$md_backslash_escape_table;\r\nforeach ($md_escape_table as $key => $char)\r\n	$md_backslash_escape_table["\\\\$key"] = $char;\r\n\r\n\r\nfunction Markdown($text) {\r\n#\r\n# Main function. The order in which other subs are called here is\r\n# essential. Link and image substitutions need to happen before\r\n# _EscapeSpecialCharsWithinTagAttributes(), so that any *''s or _''s in the <a>\r\n# and <img> tags get encoded.\r\n#\r\n	# Clear the global hashes. If we don''t clear these, you get conflicts\r\n	# from other articles when generating a page which contains more than\r\n	# one article (e.g. an index page that shows the N most recent\r\n	# articles):\r\n	global $md_urls, $md_titles, $md_html_blocks;\r\n	$md_urls = array();\r\n	$md_titles = array();\r\n	$md_html_blocks = array();\r\n\r\n	# Standardize line endings:\r\n	#   DOS to Unix and Mac to Unix\r\n	$text = str_replace(array("\\r\\n", "\\r"), "\\n", $text);\r\n\r\n	# Make sure $text ends with a couple of newlines:\r\n	$text .= "\\n\\n";\r\n\r\n	# Convert all tabs to spaces.\r\n	$text = _Detab($text);\r\n\r\n	# Strip any lines consisting only of spaces and tabs.\r\n	# This makes subsequent regexen easier to write, because we can\r\n	# match consecutive blank lines with /\\n+/ instead of something\r\n	# contorted like /[ \\t]*\\n+/ .\r\n	$text = preg_replace(''/^[ \\t]+$/m'', '''', $text);\r\n\r\n	# Turn block-level HTML blocks into hash entries\r\n	$text = _HashHTMLBlocks($text);\r\n\r\n	# Strip link definitions, store in hashes.\r\n	$text = _StripLinkDefinitions($text);\r\n\r\n	$text = _RunBlockGamut($text);\r\n\r\n	$text = _UnescapeSpecialChars($text);\r\n\r\n	return $text . "\\n";\r\n}\r\n\r\n\r\nfunction _StripLinkDefinitions($text) {\r\n#\r\n# Strips link definitions from text, stores the URLs and titles in\r\n# hash references.\r\n#\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Link defs are in the form: ^[id]: url "optional title"\r\n	$text = preg_replace_callback(''{\r\n						^[ ]{0,''.$less_than_tab.''}\\[(.+)\\]:	# id = $1\r\n						  [ \\t]*\r\n						  \\n?				# maybe *one* newline\r\n						  [ \\t]*\r\n						<?(\\S+?)>?			# url = $2\r\n						  [ \\t]*\r\n						  \\n?				# maybe one newline\r\n						  [ \\t]*\r\n						(?:\r\n							(?<=\\s)			# lookbehind for whitespace\r\n							["(]\r\n							(.+?)			# title = $3\r\n							[")]\r\n							[ \\t]*\r\n						)?	# title is optional\r\n						(?:\\n+|\\Z)\r\n		}xm'',\r\n		''_StripLinkDefinitions_callback'',\r\n		$text);\r\n	return $text;\r\n}\r\nfunction _StripLinkDefinitions_callback($matches) {\r\n	global $md_urls, $md_titles;\r\n	$link_id = strtolower($matches[1]);\r\n	$md_urls[$link_id] = _EncodeAmpsAndAngles($matches[2]);\r\n	if (isset($matches[3]))\r\n		$md_titles[$link_id] = str_replace(''"'', ''&quot;'', $matches[3]);\r\n	return ''''; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _HashHTMLBlocks($text) {\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Hashify HTML blocks:\r\n	# We only want to do this for block-level HTML tags, such as headers,\r\n	# lists, and tables. That''s because we still want to wrap <p>s around\r\n	# "paragraphs" that are wrapped in non-block-level tags, such as anchors,\r\n	# phrase emphasis, and spans. The list of tags we''re looking for is\r\n	# hard-coded:\r\n	$block_tags_a = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math|ins|del'';\r\n	$block_tags_b = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math'';\r\n\r\n	# First, look for nested blocks, e.g.:\r\n	# 	<div>\r\n	# 		<div>\r\n	# 		tags for inner block must be indented.\r\n	# 		</div>\r\n	# 	</div>\r\n	#\r\n	# The outermost tags must start at the left margin for this to match, and\r\n	# the inner nested divs must be indented.\r\n	# We need to do this before the next, more liberal match, because the next\r\n	# match will start at the first `<div>` and stop at the first `</div>`.\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_a)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	#\r\n	# Now match more liberally, simply from `\\n<tag>` to `</tag>\\n`\r\n	#\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_b)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					.*</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case just for <hr />. It was easier to make a special case than\r\n	# to make the other regex more complicated.\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					<(hr)				# start tag = $2\r\n					\\b					# word break\r\n					([^<>])*?			#\r\n					/?>					# the matching end tag\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n		}x'',\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case for standalone HTML comments:\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					(?s:\r\n						<!\r\n						(--.*?--\\s*)+\r\n						>\r\n					)\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n			}x'',\r\n			''_HashHTMLBlocks_callback'',\r\n			$text);\r\n\r\n	return $text;\r\n}\r\nfunction _HashHTMLBlocks_callback($matches) {\r\n	global $md_html_blocks;\r\n	$text = $matches[1];\r\n	$key = md5($text);\r\n	$md_html_blocks[$key] = $text;\r\n	return "\\n\\n$key\\n\\n"; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _RunBlockGamut($text) {\r\n#\r\n# These are all the transformations that form block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoHeaders($text);\r\n\r\n	# Do Horizontal Rules:\r\n	$text = preg_replace(\r\n		array(''{^[ ]{0,2}([ ]?\\*[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? -[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? _[ ]?){3,}[ \\t]*$}mx''),\r\n		"\\n<hr$md_empty_element_suffix\\n",\r\n		$text);\r\n\r\n	$text = _DoLists($text);\r\n	$text = _DoCodeBlocks($text);\r\n	$text = _DoBlockQuotes($text);\r\n\r\n	# We already ran _HashHTMLBlocks() before, in Markdown(), but that\r\n	# was to escape raw HTML in the original Markdown source. This time,\r\n	# we''re escaping the markup we''ve just created, so that we don''t wrap\r\n	# <p> tags around block-level tags.\r\n	$text = _HashHTMLBlocks($text);\r\n	$text = _FormParagraphs($text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _RunSpanGamut($text) {\r\n#\r\n# These are all the transformations that occur *within* block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoCodeSpans($text);\r\n\r\n	$text = _EscapeSpecialChars($text);\r\n\r\n	# Process anchor and image tags. Images must come first,\r\n	# because ![foo][f] looks like an anchor.\r\n	$text = _DoImages($text);\r\n	$text = _DoAnchors($text);\r\n\r\n	# Make links out of things like `<http://example.com/>`\r\n	# Must come after _DoAnchors(), because you can use < and >\r\n	# delimiters in inline links like [this](<url>).\r\n	$text = _DoAutoLinks($text);\r\n	$text = _EncodeAmpsAndAngles($text);\r\n	$text = _DoItalicsAndBold($text);\r\n\r\n	# Do hard breaks:\r\n	$text = preg_replace(''/ {2,}\\n/'', "<br$md_empty_element_suffix\\n", $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EscapeSpecialChars($text) {\r\n	global $md_escape_table;\r\n	$tokens = _TokenizeHTML($text);\r\n\r\n	$text = '''';   # rebuild $text from the tokens\r\n#	$in_pre = 0;  # Keep track of when we''re inside <pre> or <code> tags.\r\n#	$tags_to_skip = "!<(/?)(?:pre|code|kbd|script|math)[\\s>]!";\r\n\r\n	foreach ($tokens as $cur_token) {\r\n		if ($cur_token[0] == ''tag'') {\r\n			# Within tags, encode * and _ so they don''t conflict\r\n			# with their use in Markdown for italics and strong.\r\n			# We''re replacing each such character with its\r\n			# corresponding MD5 checksum value; this is likely\r\n			# overkill, but it should prevent us from colliding\r\n			# with the escape values by accident.\r\n			$cur_token[1] = str_replace(array(''*'', ''_''),\r\n				array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n				$cur_token[1]);\r\n			$text .= $cur_token[1];\r\n		} else {\r\n			$t = $cur_token[1];\r\n			$t = _EncodeBackslashEscapes($t);\r\n			$text .= $t;\r\n		}\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoAnchors($text) {\r\n#\r\n# Turn Markdown link shortcuts into XHTML <a> tags.\r\n#\r\n	global $md_nested_brackets;\r\n	#\r\n	# First, handle reference-style links: [link text] [id]\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(					# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\\\[\r\n			(.*?)		# id = $3\r\n		  \\\\]\r\n		)\r\n		}xs",\r\n		''_DoAnchors_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, inline-style links: [link text](url "optional title")\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(				# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n		  \\\\(			# literal paren\r\n			[ \\\\t]*\r\n			<?(.*?)>?	# href = $3\r\n			[ \\\\t]*\r\n			(			# $4\r\n			  ([''\\"])	# quote char = $5\r\n			  (.*?)		# Title = $6\r\n			  \\\\5		# matching quote\r\n			)?			# title is optional\r\n		  \\\\)\r\n		)\r\n		}xs",\r\n		''_DoAnchors_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoAnchors_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$link_text   = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($link_text); # for shortcut links like [this][].\r\n	}\r\n\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<a href=\\"$url\\"";\r\n		if ( isset( $md_titles[$link_id] ) ) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'',     ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= ">$link_text</a>";\r\n	}\r\n	else {\r\n		$result = $whole_match;\r\n	}\r\n	return $result;\r\n}\r\nfunction _DoAnchors_inline_callback($matches) {\r\n	global $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$link_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			=& $matches[6];\r\n\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<a href=\\"$url\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(''"'', ''&quot;'', $title);\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\"";\r\n	}\r\n\r\n	$result .= ">$link_text</a>";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoImages($text) {\r\n#\r\n# Turn Markdown image shortcuts into <img> tags.\r\n#\r\n	global $md_nested_brackets;\r\n\r\n	#\r\n	# First, handle reference-style labeled images: ![alt text][id]\r\n	#\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\[\r\n			(.*?)		# id = $3\r\n		  \\]\r\n\r\n		)\r\n		}xs'',\r\n		''_DoImages_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, handle inline images:  ![alt text](url "optional title")\r\n	# Don''t forget: encode * and _\r\n\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n		  \\(			# literal paren\r\n			[ \\t]*\r\n			<?(\\S+?)>?	# src url = $3\r\n			[ \\t]*\r\n			(			# $4\r\n			  ([\\''"])	# quote char = $5\r\n			  (.*?)		# title = $6\r\n			  \\5		# matching quote\r\n			  [ \\t]*\r\n			)?			# title is optional\r\n		  \\)\r\n		)\r\n		}xs'',\r\n		''_DoImages_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoImages_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$alt_text    = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($alt_text); # for shortcut links like ![this][].\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n		if (isset($md_titles[$link_id])) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'', ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= $md_empty_element_suffix;\r\n	}\r\n	else {\r\n		# If there''s no such link ID, leave intact:\r\n		$result = $whole_match;\r\n	}\r\n\r\n	return $result;\r\n}\r\nfunction _DoImages_inline_callback($matches) {\r\n	global $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$alt_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			= '''';\r\n	if (isset($matches[6])) {\r\n		$title		= $matches[6];\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	$title    = str_replace(''"'', ''&quot;'', $title);\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\""; # $title already quoted\r\n	}\r\n	$result .= $md_empty_element_suffix;\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoHeaders($text) {\r\n	# Setext-style headers:\r\n	#	  Header 1\r\n	#	  ========\r\n	#\r\n	#	  Header 2\r\n	#	  --------\r\n	#\r\n	$text = preg_replace(\r\n		array(''{ ^(.+)[ \\t]*\\n=+[ \\t]*\\n+ }emx'',\r\n			  ''{ ^(.+)[ \\t]*\\n-+[ \\t]*\\n+ }emx''),\r\n		array("''<h1>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h1>\\n\\n''",\r\n			  "''<h2>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h2>\\n\\n''"),\r\n		$text);\r\n\r\n	# atx-style headers:\r\n	#	# Header 1\r\n	#	## Header 2\r\n	#	## Header 2 with closing hashes ##\r\n	#	...\r\n	#	###### Header 6\r\n	#\r\n	$text = preg_replace("{\r\n			^(\\\\#{1,6})	# $1 = string of #''s\r\n			[ \\\\t]*\r\n			(.+?)		# $2 = Header text\r\n			[ \\\\t]*\r\n			\\\\#*			# optional closing #''s (not counted)\r\n			\\\\n+\r\n		}xme",\r\n		"''<h''.strlen(''\\\\1'').''>''._RunSpanGamut(_UnslashQuotes(''\\\\2'')).''</h''.strlen(''\\\\1'').''>\\n\\n''",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoLists($text) {\r\n#\r\n# Form HTML ordered (numbered) and unordered (bulleted) lists.\r\n#\r\n	global $md_tab_width, $md_list_level;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$markers = array($marker_ul, $marker_ol);\r\n\r\n	foreach ($markers as $marker) {\r\n		# Re-usable pattern to match any entirel ul or ol list:\r\n		$whole_list = ''\r\n			(								# $1 = whole list\r\n			  (								# $2\r\n				[ ]{0,''.$less_than_tab.''}\r\n				(''.$marker.'')				# $3 = first list item marker\r\n				[ \\t]+\r\n			  )\r\n			  (?s:.+?)\r\n			  (								# $4\r\n				  \\z\r\n				|\r\n				  \\n{2,}\r\n				  (?=\\S)\r\n				  (?!						# Negative lookahead for another list item marker\r\n					[ \\t]*\r\n					''.$marker.''[ \\t]+\r\n				  )\r\n			  )\r\n			)\r\n		''; // mx\r\n\r\n		# We use a different prefix before nested lists than top-level lists.\r\n		# See extended comment in _ProcessListItems().\r\n\r\n		if ($md_list_level) {\r\n			$text = preg_replace_callback(''{\r\n					^\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_top'', $text);\r\n		}\r\n		else {\r\n			$text = preg_replace_callback(''{\r\n					(?:(?<=\\n\\n)|\\A\\n?)\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_nested'', $text);\r\n		}\r\n	}\r\n\r\n	return $text;\r\n}\r\nfunction _DoLists_callback_top($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n\r\n	# Trim any trailing whitespace, to put the closing `</$list_type>`\r\n	# up on the preceding line, to get it past the current stupid\r\n	# HTML block parser. This is a hack to work around the terrible\r\n	# hack that is the HTML block parser.\r\n	$result = rtrim($result);\r\n	$result = "<$list_type>" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\nfunction _DoLists_callback_nested($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n	$result = "<$list_type>\\n" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _ProcessListItems($list_str, $marker_any) {\r\n#\r\n#	Process the contents of a single ordered or unordered list, splitting it\r\n#	into individual list items.\r\n#\r\n	global $md_list_level;\r\n\r\n	# The $md_list_level global keeps track of when we''re inside a list.\r\n	# Each time we enter a list, we increment it; when we leave a list,\r\n	# we decrement. If it''s zero, we''re not in a list anymore.\r\n	#\r\n	# We do this because when we''re not inside a list, we want to treat\r\n	# something like this:\r\n	#\r\n	#		I recommend upgrading to version\r\n	#		8. Oops, now this line is treated\r\n	#		as a sub-list.\r\n	#\r\n	# As a single paragraph, despite the fact that the second line starts\r\n	# with a digit-period-space sequence.\r\n	#\r\n	# Whereas when we''re inside a list (or sub-list), that line will be\r\n	# treated as the start of a sub-list. What a kludge, huh? This is\r\n	# an aspect of Markdown''s syntax that''s hard to parse perfectly\r\n	# without resorting to mind-reading. Perhaps the solution is to\r\n	# change the syntax rules such that sub-lists must start with a\r\n	# starting cardinal number; e.g. "1." or "a.".\r\n\r\n	$md_list_level++;\r\n\r\n	# trim trailing blank lines:\r\n	$list_str = preg_replace("/\\n{2,}\\\\z/", "\\n", $list_str);\r\n\r\n	$list_str = preg_replace_callback(''{\r\n		(\\n)?							# leading line = $1\r\n		(^[ \\t]*)						# leading whitespace = $2\r\n		(''.$marker_any.'') [ \\t]+		# list marker = $3\r\n		((?s:.+?)						# list item text   = $4\r\n		(\\n{1,2}))\r\n		(?= \\n* (\\z | \\2 (''.$marker_any.'') [ \\t]+))\r\n		}xm'',\r\n		''_ProcessListItems_callback'', $list_str);\r\n\r\n	$md_list_level--;\r\n	return $list_str;\r\n}\r\nfunction _ProcessListItems_callback($matches) {\r\n	$item = $matches[4];\r\n	$leading_line =& $matches[1];\r\n	$leading_space =& $matches[2];\r\n\r\n	if ($leading_line || preg_match(''/\\n{2,}/'', $item)) {\r\n		$item = _RunBlockGamut(_Outdent($item));\r\n	}\r\n	else {\r\n		# Recursion for sub-lists:\r\n		$item = _DoLists(_Outdent($item));\r\n		$item = preg_replace(''/\\n+$/'', '''', $item);\r\n		$item = _RunSpanGamut($item);\r\n	}\r\n\r\n	return "<li>" . $item . "</li>\\n";\r\n}\r\n\r\n\r\nfunction _DoCodeBlocks($text) {\r\n#\r\n#	Process Markdown `<pre><code>` blocks.\r\n#\r\n	global $md_tab_width;\r\n	$text = preg_replace_callback("{\r\n			(?:\\\\n\\\\n|\\\\A)\r\n			(	            # $1 = the code block -- one or more lines, starting with a space/tab\r\n			  (?:\r\n				(?:[ ]\\{$md_tab_width} | \\\\t)  # Lines must start with a tab or a tab-width of spaces\r\n				.*\\\\n+\r\n			  )+\r\n			)\r\n			((?=^[ ]{0,$md_tab_width}\\\\S)|\\\\Z)	# Lookahead for non-space at line-start, or end of doc\r\n		}xm",\r\n		''_DoCodeBlocks_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeBlocks_callback($matches) {\r\n	$codeblock = $matches[1];\r\n\r\n	$codeblock = _EncodeCode(_Outdent($codeblock));\r\n//	$codeblock = _Detab($codeblock);\r\n	# trim leading newlines and trailing whitespace\r\n	$codeblock = preg_replace(array(''/\\A\\n+/'', ''/\\s+\\z/''), '''', $codeblock);\r\n\r\n	$result = "\\n\\n<pre><code>" . $codeblock . "\\n</code></pre>\\n\\n";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoCodeSpans($text) {\r\n#\r\n# 	*	Backtick quotes are used for <code></code> spans.\r\n#\r\n# 	*	You can use multiple backticks as the delimiters if you want to\r\n# 		include literal backticks in the code span. So, this input:\r\n#\r\n#		  Just type ``foo `bar` baz`` at the prompt.\r\n#\r\n#	  	Will translate to:\r\n#\r\n#		  <p>Just type <code>foo `bar` baz</code> at the prompt.</p>\r\n#\r\n#		There''s no arbitrary limit to the number of backticks you\r\n#		can use as delimters. If you need three consecutive backticks\r\n#		in your code, use four for delimiters, etc.\r\n#\r\n#	*	You can use spaces to get literal backticks at the edges:\r\n#\r\n#		  ... type `` `bar` `` ...\r\n#\r\n#	  	Turns to:\r\n#\r\n#		  ... type <code>`bar`</code> ...\r\n#\r\n	$text = preg_replace_callback(''@\r\n			(?<!\\\\\\)	# Character before opening ` can\\''t be a backslash\r\n			(`+)		# $1 = Opening run of `\r\n			(.+?)		# $2 = The code block\r\n			(?<!`)\r\n			\\1			# Matching closer\r\n			(?!`)\r\n		@xs'',\r\n		''_DoCodeSpans_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeSpans_callback($matches) {\r\n	$c = $matches[2];\r\n	$c = preg_replace(''/^[ \\t]*/'', '''', $c); # leading whitespace\r\n	$c = preg_replace(''/[ \\t]*$/'', '''', $c); # trailing whitespace\r\n	$c = _EncodeCode($c);\r\n	return "<code>$c</code>";\r\n}\r\n\r\n\r\nfunction _EncodeCode($_) {\r\n#\r\n# Encode/escape certain characters inside Markdown code runs.\r\n# The point is that in code, these characters are literals,\r\n# and lose their special Markdown meanings.\r\n#\r\n	global $md_escape_table;\r\n\r\n	# Encode all ampersands; HTML entities are not\r\n	# entities within a Markdown code span.\r\n	$_ = str_replace(''&'', ''&amp;'', $_);\r\n\r\n	# Do the angle bracket song and dance:\r\n	$_ = str_replace(array(''<'',    ''>''),\r\n					 array(''&lt;'', ''&gt;''), $_);\r\n\r\n	# Now, escape characters that are magic in Markdown:\r\n	$_ = str_replace(array_keys($md_escape_table),\r\n					 array_values($md_escape_table), $_);\r\n\r\n	return $_;\r\n}\r\n\r\n\r\nfunction _DoItalicsAndBold($text) {\r\n	# <strong> must go first:\r\n	$text = preg_replace(''{\r\n			(						# $1: Marker\r\n				(?<!\\*\\*) \\*\\* |	#     (not preceded by two chars of\r\n				(?<!__)   __		#      the same marker)\r\n			)\r\n			(?=\\S) 					# Not followed by whitespace\r\n			(?!\\1)					#   or two others marker chars.\r\n			(						# $2: Content\r\n				(?:\r\n					[^*_]+?			# Anthing not em markers.\r\n				|\r\n									# Balence any regular emphasis inside.\r\n					([*_]) (?=\\S) .+? (?<=\\S) \\3	# $3: em char (* or _)\r\n				|\r\n					(?! \\1 ) .		# Allow unbalenced * and _.\r\n				)+?\r\n			)\r\n			(?<=\\S) \\1				# End mark not preceded by whitespace.\r\n		}sx'',\r\n		''<strong>\\2</strong>'', $text);\r\n	# Then <em>:\r\n	$text = preg_replace(\r\n		''{ ( (?<!\\*)\\* | (?<!_)_ ) (?=\\S) (?! \\1) (.+?) (?<=\\S) \\1 }sx'',\r\n		''<em>\\2</em>'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoBlockQuotes($text) {\r\n	$text = preg_replace_callback(''/\r\n		  (								# Wrap whole match in $1\r\n			(\r\n			  ^[ \\t]*>[ \\t]?			# ">" at the start of a line\r\n				.+\\n					# rest of the first line\r\n			  (.+\\n)*					# subsequent consecutive lines\r\n			  \\n*						# blanks\r\n			)+\r\n		  )\r\n		/xm'',\r\n		''_DoBlockQuotes_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoBlockQuotes_callback($matches) {\r\n	$bq = $matches[1];\r\n	# trim one level of quoting - trim whitespace-only lines\r\n	$bq = preg_replace(array(''/^[ \\t]*>[ \\t]?/m'', ''/^[ \\t]+$/m''), '''', $bq);\r\n	$bq = _RunBlockGamut($bq);		# recurse\r\n\r\n	$bq = preg_replace(''/^/m'', "  ", $bq);\r\n	# These leading spaces screw with <pre> content, so we need to fix that:\r\n	$bq = preg_replace_callback(''{(\\s*<pre>.+?</pre>)}sx'',\r\n								''_DoBlockQuotes_callback2'', $bq);\r\n\r\n	return "<blockquote>\\n$bq\\n</blockquote>\\n\\n";\r\n}\r\nfunction _DoBlockQuotes_callback2($matches) {\r\n	$pre = $matches[1];\r\n	$pre = preg_replace(''/^  /m'', '''', $pre);\r\n	return $pre;\r\n}\r\n\r\n\r\nfunction _FormParagraphs($text) {\r\n#\r\n#	Params:\r\n#		$text - string to process with html <p> tags\r\n#\r\n	global $md_html_blocks;\r\n\r\n	# Strip leading and trailing lines:\r\n	$text = preg_replace(array(''/\\A\\n+/'', ''/\\n+\\z/''), '''', $text);\r\n\r\n	$grafs = preg_split(''/\\n{2,}/'', $text, -1, PREG_SPLIT_NO_EMPTY);\r\n\r\n	#\r\n	# Wrap <p> tags.\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (!isset( $md_html_blocks[$value] )) {\r\n			$value = _RunSpanGamut($value);\r\n			$value = preg_replace(''/^([ \\t]*)/'', ''<p>'', $value);\r\n			$value .= "</p>";\r\n			$grafs[$key] = $value;\r\n		}\r\n	}\r\n\r\n	#\r\n	# Unhashify HTML blocks\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (isset( $md_html_blocks[$value] )) {\r\n			$grafs[$key] = $md_html_blocks[$value];\r\n		}\r\n	}\r\n\r\n	return implode("\\n\\n", $grafs);\r\n}\r\n\r\n\r\nfunction _EncodeAmpsAndAngles($text) {\r\n# Smart processing for ampersands and angle brackets that need to be encoded.\r\n\r\n	# Ampersand-encoding based entirely on Nat Irons''s Amputator MT plugin:\r\n	#   http://bumppo.net/projects/amputator/\r\n	$text = preg_replace(''/&(?!#?[xX]?(?:[0-9a-fA-F]+|\\w+);)/'',\r\n						 ''&amp;'', $text);;\r\n\r\n	# Encode naked <''s\r\n	$text = preg_replace(''{<(?![a-z/?\\$!])}i'', ''&lt;'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeBackslashEscapes($text) {\r\n#\r\n#	Parameter:  String.\r\n#	Returns:    The string, with after processing the following backslash\r\n#				escape sequences.\r\n#\r\n	global $md_escape_table, $md_backslash_escape_table;\r\n	# Must process escaped backslashes first.\r\n	return str_replace(array_keys($md_backslash_escape_table),\r\n					   array_values($md_backslash_escape_table), $text);\r\n}\r\n\r\n\r\nfunction _DoAutoLinks($text) {\r\n	$text = preg_replace("!<((https?|ftp):[^''\\">\\\\s]+)>!",\r\n						 ''<a href="\\1">\\1</a>'', $text);\r\n\r\n	# Email addresses: <address@domain.foo>\r\n	$text = preg_replace(''{\r\n		<\r\n        (?:mailto:)?\r\n		(\r\n			[-.\\w]+\r\n			\\@\r\n			[-a-z0-9]+(\\.[-a-z0-9]+)*\\.[a-z]+\r\n		)\r\n		>\r\n		}exi'',\r\n		"_EncodeEmailAddress(_UnescapeSpecialChars(_UnslashQuotes(''\\\\1'')))",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeEmailAddress($addr) {\r\n#\r\n#	Input: an email address, e.g. "foo@example.com"\r\n#\r\n#	Output: the email address as a mailto link, with each character\r\n#		of the address encoded as either a decimal or hex entity, in\r\n#		the hopes of foiling most address harvesting spam bots. E.g.:\r\n#\r\n#	  <a href="&#x6D;&#97;&#105;&#108;&#x74;&#111;:&#102;&#111;&#111;&#64;&#101;\r\n#		x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;">&#102;&#111;&#111;\r\n#		&#64;&#101;x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;</a>\r\n#\r\n#	Based by a filter by Matthew Wickline, posted to the BBEdit-Talk\r\n#	mailing list: <http://tinyurl.com/yu7ue>\r\n#\r\n	$addr = "mailto:" . $addr;\r\n	$length = strlen($addr);\r\n\r\n	# leave '':'' alone (to spot mailto: later)\r\n	$addr = preg_replace_callback(''/([^\\:])/'',\r\n								  ''_EncodeEmailAddress_callback'', $addr);\r\n\r\n	$addr = "<a href=\\"$addr\\">$addr</a>";\r\n	# strip the mailto: from the visible part\r\n	$addr = preg_replace(''/">.+?:/'', ''">'', $addr);\r\n\r\n	return $addr;\r\n}\r\nfunction _EncodeEmailAddress_callback($matches) {\r\n	$char = $matches[1];\r\n	$r = rand(0, 100);\r\n	# roughly 10% raw, 45% hex, 45% dec\r\n	# ''@'' *must* be encoded. I insist.\r\n	if ($r > 90 && $char != ''@'') return $char;\r\n	if ($r < 45) return ''&#x''.dechex(ord($char)).'';'';\r\n	return ''&#''.ord($char).'';'';\r\n}\r\n\r\n\r\nfunction _UnescapeSpecialChars($text) {\r\n#\r\n# Swap back in all the special characters we''ve hidden.\r\n#\r\n	global $md_escape_table;\r\n	return str_replace(array_values($md_escape_table),\r\n					   array_keys($md_escape_table), $text);\r\n}\r\n\r\n\r\n# _TokenizeHTML is shared between PHP Markdown and PHP SmartyPants.\r\n# We only define it if it is not already defined.\r\nif (!function_exists(''_TokenizeHTML'')) :\r\nfunction _TokenizeHTML($str) {\r\n#\r\n#   Parameter:  String containing HTML markup.\r\n#   Returns:    An array of the tokens comprising the input\r\n#               string. Each token is either a tag (possibly with nested,\r\n#               tags contained therein, such as <a href="<MTFoo>">, or a\r\n#               run of text between tags. Each element of the array is a\r\n#               two-element array; the first is either ''tag'' or ''text'';\r\n#               the second is the actual value.\r\n#\r\n#\r\n#   Regular expression derived from the _tokenize() subroutine in\r\n#   Brad Choate''s MTRegex plugin.\r\n#   <http://www.bradchoate.com/past/mtregex.php>\r\n#\r\n	$index = 0;\r\n	$tokens = array();\r\n\r\n	$match = ''(?s:<!(?:--.*?--\\s*)+>)|''.	# comment\r\n			 ''(?s:<\\?.*?\\?>)|''.				# processing instruction\r\n			 								# regular tags\r\n			 ''(?:<[/!$]?[-a-zA-Z0-9:]+\\b(?>[^"\\''>]+|"[^"]*"|\\''[^\\'']*\\'')*>)'';\r\n\r\n	$parts = preg_split("{($match)}", $str, -1, PREG_SPLIT_DELIM_CAPTURE);\r\n\r\n	foreach ($parts as $part) {\r\n		if (++$index % 2 && $part != '''')\r\n			$tokens[] = array(''text'', $part);\r\n		else\r\n			$tokens[] = array(''tag'', $part);\r\n	}\r\n\r\n	return $tokens;\r\n}\r\nendif;\r\n\r\n\r\nfunction _Outdent($text) {\r\n#\r\n# Remove one level of line-leading tabs or spaces\r\n#\r\n	global $md_tab_width;\r\n	return preg_replace("/^(\\\\t|[ ]{1,$md_tab_width})/m", "", $text);\r\n}\r\n\r\n\r\nfunction _Detab($text) {\r\n#\r\n# Replace tabs with the appropriate amount of space.\r\n#\r\n	global $md_tab_width;\r\n\r\n	# For each line we separate the line in blocks delemited by\r\n	# tab characters. Then we reconstruct every line by adding the\r\n	# appropriate number of space between each blocks.\r\n\r\n	$lines = explode("\\n", $text);\r\n	$text = "";\r\n\r\n	foreach ($lines as $line) {\r\n		# Split in blocks.\r\n		$blocks = explode("\\t", $line);\r\n		# Add each blocks to the line.\r\n		$line = $blocks[0];\r\n		unset($blocks[0]); # Do not add first block twice.\r\n		foreach ($blocks as $block) {\r\n			# Calculate amount of space, insert spaces, insert block.\r\n			$amount = $md_tab_width - strlen($line) % $md_tab_width;\r\n			$line .= str_repeat(" ", $amount) . $block;\r\n		}\r\n		$text .= "$line\\n";\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _UnslashQuotes($text) {\r\n#\r\n#	This function is useful to remove automaticaly slashed double quotes\r\n#	when using preg_replace and evaluating an expression.\r\n#	Parameter:  String.\r\n#	Returns:    The string with any slash-double-quote (\\") sequence replaced\r\n#				by a single double quote.\r\n#\r\n	return str_replace(''\\"'', ''"'', $text);\r\n}\r\n\r\n\r\n/*\r\n\r\nPHP Markdown\r\n============\r\n\r\nDescription\r\n-----------\r\n\r\nThis is a PHP translation of the original Markdown formatter written in\r\nPerl by John Gruber.\r\n\r\nMarkdown is a text-to-HTML filter; it translates an easy-to-read /\r\neasy-to-write structured text format into HTML. Markdown''s text format\r\nis most similar to that of plain text email, and supports features such\r\nas headers, *emphasis*, code blocks, blockquotes, and links.\r\n\r\nMarkdown''s syntax is designed not as a generic markup language, but\r\nspecifically to serve as a front-end to (X)HTML. You can use span-level\r\nHTML tags anywhere in a Markdown document, and you can use block level\r\nHTML tags (like <div> and <table> as well).\r\n\r\nFor more information about Markdown''s syntax, see:\r\n\r\n<http://daringfireball.net/projects/markdown/>\r\n\r\n\r\nBugs\r\n----\r\n\r\nTo file bug reports please send email to:\r\n\r\n<michel.fortin@michelf.com>\r\n\r\nPlease include with your report: (1) the example input; (2) the output you\r\nexpected; (3) the output Markdown actually produced.\r\n\r\n\r\nVersion History\r\n---------------\r\n\r\nSee the readme file for detailed release notes for this version.\r\n\r\n1.0.1b - 6 Jun 2005\r\n\r\n1.0.1a - 15 Apr 2005\r\n\r\n1.0.1 - 16 Dec 2004\r\n\r\n1.0 - 21 Aug 2004\r\n\r\n\r\nAuthor & Contributors\r\n---------------------\r\n\r\nOriginal Perl version by John Gruber\r\n<http://daringfireball.net/>\r\n\r\nPHP port and other contributions by Michel Fortin\r\n<http://www.michelf.com/>\r\n\r\n\r\nCopyright and License\r\n---------------------\r\n\r\nCopyright (c) 2004-2005 Michel Fortin\r\n<http://www.michelf.com/>\r\nAll rights reserved.\r\n\r\nCopyright (c) 2003-2004 John Gruber\r\n<http://daringfireball.net/>\r\nAll rights reserved.\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, are permitted provided that the following conditions are\r\nmet:\r\n\r\n*	Redistributions of source code must retain the above copyright notice,\r\n	this list of conditions and the following disclaimer.\r\n\r\n*	Redistributions in binary form must reproduce the above copyright\r\n	notice, this list of conditions and the following disclaimer in the\r\n	documentation and/or other materials provided with the distribution.\r\n\r\n*	Neither the name "Markdown" nor the names of its contributors may\r\n	be used to endorse or promote products derived from this software\r\n	without specific prior written permission.\r\n\r\nThis software is provided by the copyright holders and contributors "as\r\nis" and any express or implied warranties, including, but not limited\r\nto, the implied warranties of merchantability and fitness for a\r\nparticular purpose are disclaimed. In no event shall the copyright owner\r\nor contributors be liable for any direct, indirect, incidental, special,\r\nexemplary, or consequential damages (including, but not limited to,\r\nprocurement of substitute goods or services; loss of use, data, or\r\nprofits; or business interruption) however caused and on any theory of\r\nliability, whether in contract, strict liability, or tort (including\r\nnegligence or otherwise) arising in any way out of the use of this\r\nsoftware, even if advised of the possibility of such damage.\r\n\r\n*/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_records`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_records` (
`id` int(11) NOT NULL,
  `submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `opsys` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_full_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_tx_id` varchar(255) NOT NULL DEFAULT '',
  `paypal_payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paypal_testaccount` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_download_tries` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_scripts`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_scripts` (
`id` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_facileforms_scripts`
--

INSERT INTO `f4kq7_facileforms_scripts` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_anychecked', 'Any Checked', 'Validate that any radio button or checkbox of a group is checked.', 'Element Validation', 'function ff_anychecked(element, message)\r\n{\r\n    // get plain name\r\n   // alert(document.ff_form52[''ff_nm_bfQuickMode6303958[]'']);\r\n   // alert(document.getElementById(element.id).id);\r\n    var name = '''';\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n           name = element[0].name;\r\n           var cnt = 0;\r\n           for (var i = 0; i < element.length; i++)\r\n             if (element[i].name==name) \r\n              if (element[i].checked) cnt++;                      \r\n           if (cnt==0) {\r\n            ff_validationFocus(element[0].name);\r\n            if (message=='''') message = "Please check or select "+name+".\\n";\r\n            return message;\r\n           } // if \r\n\r\n        } else {\r\n           return '''';\r\n        }\r\n    } else {\r\n      name = element.name;\r\n      if (name.substr(0,6) == ''ff_nm_'') name = name.substring(6,name.length-2);\r\n\r\n      // loop through elements and count selections\r\n      var cnt = 0;\r\n      for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) \r\n            if (ff_getElementByIndex(i).checked) cnt++;\r\n\r\n      // if none selected, emitt error\r\n      if (cnt==0) {\r\n        ff_validationFocus(element.name);\r\n        if (message=='''') message = "Please check or select "+name+".\\n";\r\n        return message;\r\n      } // if\r\n    }\r\n    \r\n    return '''';\r\n} // ff_anychecked'),
(2, 1, 'FF', 'ff_checked', 'Checked', 'Validate that radio button or checkbox is checked.', 'Element Validation', 'function ff_checked(element, message)\r\n{\r\n    if (element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is not checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } \r\n}'),
(3, 1, 'FF', 'ff_checkedValue', 'Get checked value', 'Get value of the currently checked radiobutton.', 'Untyped', 'function ff_checkedValue(name)\r\n{\r\n    // loop through elements and find checked\r\n    for (i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            e = ff_getElementByIndex(i);\r\n            if (e.checked) return e.value;\r\n        } // if \r\n    return '''';\r\n} // ff_checkedValue'),
(4, 1, 'FF', 'ff_countQuerySelections', 'Count Query Selections', 'Counts how many checkboxes/radiobuttons are checked/selected in a query list element', 'Untyped', 'function ff_countQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var sels = 0;\r\n    for (curr = 0; curr < cnt; curr++)\r\n        if (document.getElementById(''ff_cb''+id+''_''+curr).checked) sels++;\r\n    return sels;\r\n} // ff_countQuerySelections'),
(5, 1, 'FF', 'ff_dollaramount2dp', 'Dollar Amount with 2 Decimal Places', 'Validate that a dollar amount with two decimal places is entered.', 'Element Validation', 'function ff_dollaramount2dp(element, message)\r\n{\r\n    var ex  = /^\\d+$|^\\d+\\.\\d{2}$/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number with two decimal places.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_dollaramount2dp'),
(6, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters of a string', 'Untyped', 'function ff_expString(text)\r\n{\r\n    text = trim(text);\r\n    var i;\r\n    var o = '''';\r\n    for(i = 0; i < text.length; i++) {\r\n        c = text.charAt(i);\r\n        switch(c) {\r\n            case '';'' : o += ''\\\\x3B''; break;\r\n            case '','' : o += ''\\\\x2C''; break;\r\n            case ''&'' : o += ''\\\\x26''; break;\r\n            case ''<'' : o += ''\\\\x3C''; break;\r\n            case ''>'' : o += ''\\\\x3E''; break;\r\n            case ''\\'''': o += ''\\\\x27''; break;\r\n            case ''\\\\'': o += ''\\\\x5C''; break;\r\n            case ''"'' : o += ''\\\\x22''; break;\r\n            case ''\\n'': o += ''\\\\n''; break;\r\n            case ''\\r'': o += ''\\\\r''; break;\r\n            default: o += c;\r\n        } // switch\r\n    } // for\r\n    return o;\r\n} // expString'),
(7, 1, 'FF', 'ff_flashupload_not_empty', 'Flash Upload Not Empty (QuickMode only!)', 'Validates if a flash upload is empty or not.', 'Element Validation', 'function ff_flashupload_not_empty(element, message)\r\n{\r\n    if(typeof bfSummarizers == "undefined") { alert("Flash upload validation only available in QuickMode!"); return ''''}\r\n    if(JQuery(''#bfFlashFileQueue''+element.id.split(''ff_elem'')[1]).html() != '''') return '''';\r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty'),
(8, 1, 'FF', 'ff_getfocus', 'Get focus', 'Get the focus. Usually this is for the first element of the form/page.', 'Element Init', 'function ff_getfocus(element,condition)\r\n{\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n    		element[0].focus();\r\n    	}\r\n    }else{\r\n    	element.focus();\r\n    }\r\n}'),
(9, 1, 'FF', 'ff_getQuerySelectedRows', 'Get Query Selected Rows', 'Returns the selected rows in a 2-dimensional array', 'Untyped', 'function ff_getQuerySelectedRows(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var rcnt = ff_queryRows[id].length;\r\n    var cnt = rcnt;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr, r;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) {\r\n            var ident = elem.value;\r\n            for (r = 0; r < rcnt; r++)\r\n                if (ff_queryRows[id][r][0] == ident) {\r\n                    sels[selcnt++] = ff_queryRows[id][r];\r\n                    break;\r\n                } // if\r\n        } // if\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelectedRows'),
(10, 1, 'FF', 'ff_getQuerySelections', 'Get Query Selected ID''s', 'Returns the column values of the checked/selected checkboxes/radiobuttons in an array', 'Untyped', 'function ff_getQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) \r\n            sels[selcnt++] = elem.value;\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelections'),
(11, 1, 'FF', 'ff_htmlvaluenotempty', 'HTML Texteditor Not Empty', 'Checks if an HTML editor element is empty or not', 'Element Validation', 'function ff_htmlvaluenotempty( element, message ){\r\n    \r\n    if( typeof bf_htmltextareanames == "undefined" ) return '''';\r\n\r\n    var content = "";\r\n\r\n    for(var i = 0; i < bf_htmltextareanames.length; i++){\r\n      if( element.name == bf_htmltextareanames[i] ) {\r\n          eval("content = " + bf_htmltextareas[i]);\r\n          break;\r\n      }\r\n    }\r\n    if (JQuery.trim(content) == "") {\r\n        if (message=='''') message = element.name+" must not be empty.\\n";\r\n        return message;\r\n    } // if\r\n    return '''';\r\n}'),
(12, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString(text)\r\n{\r\n    var str = '''';\r\n    var ss = 0;\r\n    var s;\r\n    var tl = text.length;\r\n    var hexdigs = "0123456789abcdefABCDEF";\r\n    while (ss < tl) {\r\n        s = text.charAt(ss++);\r\n        if (s == ''\\\\'') {\r\n            if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n            switch (s) {\r\n                case 0   : break;\r\n                case ''e'' : str += ''\\33''; break;\r\n                case ''t'' : str += ''\\t''; break;\r\n                case ''r'' : str += ''\\r''; break;\r\n                case ''n'' : str += ''\\n''; break;\r\n                case ''f'' : str += ''\\f''; break;\r\n                case ''x'' : {\r\n                    if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    var ch = '''';\r\n                    while (hexdigs.indexOf(s)>=0 && ch.length < 2) {\r\n                        ch += s;\r\n                        if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    } // while\r\n                    while (ch.length < 2) ch = ''0''+ch;\r\n                    str += unescape(''%''+ch);\r\n                    if (s) ss--;\r\n                    break;\r\n                }\r\n                default:\r\n                    str += s;\r\n            } // switch\r\n        } else\r\n            str += s;\r\n    } // while\r\n    return str;\r\n} // impString'),
(13, 1, 'FF', 'ff_integer', 'Integer Number', 'Validate that an integer value is entered.', 'Element Validation', 'function ff_integer(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integer'),
(14, 1, 'FF', 'ff_integeramount', 'Positive Integer', 'Validate that an positive integer value is entered.', 'Element Validation', 'function ff_integeramount(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integeramount'),
(15, 1, 'FF', 'ff_integer_or_empty', 'Integer or empty', 'Validate that either an integer value or nothing is entered.', 'Element Validation', 'function ff_integer_or_empty(element, message)\r\n{\r\n    if (element.value != '''') {\r\n        var ex  = /(^-?\\d\\d*$)/;\r\n        if (!ex.test(element.value)) {\r\n            if (message=='''') message = element.name+" must be integer.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        } // if\r\n    } // if\r\n    return '''';\r\n} // ff_integer_or_empty'),
(16, 1, 'FF', 'ff_nextpage', 'Next page', 'Switchs to the next page.', 'Element Action', 'function ff_nextpage(element, action)\r\n{\r\n    if (ff_currentpage < ff_lastpage) {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_nextpage'),
(17, 1, 'FF', 'ff_page1', 'Page 1', 'Switches to the first page.', 'Element Action', 'function ff_page1(element, action)\r\n{\r\n    ff_switchpage(1);\r\n} // ff_page1'),
(18, 1, 'FF', 'ff_page2', 'Page 2', 'Switches to the second page.', 'Element Action', 'function ff_page2(element, action)\r\n{\r\n    if (ff_lastpage >= 2) ff_switchpage(2);\r\n} // ff_page2'),
(19, 1, 'FF', 'ff_page3', 'Page 3', 'Switches to the third page.', 'Element Action', 'function ff_page3(element, action)\r\n{\r\n    if (ff_lastpage >= 3) ff_switchpage(3);\r\n} // ff_page3'),
(20, 1, 'FF', 'ff_previouspage', 'Previous page', 'Switches to the previous page.', 'Element Action', 'function ff_previouspage(element, action)\r\n{\r\n    if (ff_currentpage > 1){\r\n        ff_switchpage(ff_currentpage-1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_previouspage'),
(21, 1, 'FF', 'ff_real', 'Real Number', 'Validate that a real number is entered.', 'Element Validation', 'function ff_real(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_real'),
(22, 1, 'FF', 'ff_realamount', 'Positive Real Number', 'Validate that a positive real number is entered.', 'Element Validation', 'function ff_realamount(element, message)\r\n{\r\n    var ex  = /(^\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_realamount'),
(23, 1, 'FF', 'ff_resetForm', 'Reset form', 'Reset all form inputs to the initial values.', 'Element Action', 'function ff_resetForm(element, action)\r\n{\r\n    eval(''document.''+ff_processor.form_id).reset();\r\n} // ff_resetForm'),
(24, 1, 'FF', 'ff_securitycode_entered', 'Security code entered', 'Check that a security code was entered.', 'Element Validation', 'function ff_securitycode_entered(element, message)\r\n{\r\n    var ex  = /(^\\d{5}$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = "Security code must be entered as five digits.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_securitycode_entered'),
(25, 1, 'FF', 'ff_securitycode_ok', 'Security code ok', 'Check that a valid security code was entered.', 'Element Validation', 'function ff_securitycode_ok(element, message)\r\n{\r\n<?php\r\n    global $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n    $enc = array();\r\n    mt_srand((double)microtime()*1000000);\r\n    for ($i = 0; $i < 256; $i++) $enc[] = mt_rand(0, 255);\r\n    $seccode = (string)$ff_seccode;\r\n    $hash = '''';\r\n    $ini = $ff_seccode % 240;\r\n    for ($i = 0; $i < 5; $i++) {\r\n        $d = $ini+intval($seccode{$i});\r\n        for ($j = 0; $j < 7; $j++) $d = $enc[$d];\r\n        $hash .= $d;\r\n        $ini = ($ini+$d) % 240;\r\n    } // for\r\n    return\r\n        "var enc = ".$this->expJsValue($enc).";\\n".\r\n        "var seccode = new String(element.value);\\n".\r\n        "if (seccode.length==5) {\\n".\r\n        "    var hash = '''';\\n".\r\n        "    var ini = parseInt(element.value) % 240;\\n".\r\n        "    var i, j;\\n".\r\n        "    for (i = 0; i < 5; i++) {\\n".\r\n        "        var d = ini+parseInt(seccode.charAt(i));\\n".\r\n        "        for (j = 0; j < 7; j++) d = enc[d];\\n".\r\n        "        hash += d;\\n".\r\n        "        ini = (ini+d) % 240;\\n".\r\n        "    } // for\\n".\r\n        "    if (hash == ''$hash'') return '''';\\n". \r\n        "} // if\\n".\r\n        "if (message=='''') message = \\"Security code is missing or wrong.\\\\n\\";\\n".\r\n        "ff_validationFocus(element.name);\\n".\r\n        "return message;\\n";\r\n?>\r\n} // ff_securitycode_ok'),
(26, 1, 'FF', 'ff_selectedValues', 'Get selected values as list', 'Get values of selected options of a select list as list:\r\n\r\nx = ff_selectedValues(''myselectlist'');\r\n// x = green,red', 'Untyped', 'function ff_selectedValues(name)\r\n{\r\n    vals = '''';\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++)\r\n        if (opts[o].selected) {\r\n            if (vals != '''') vals += '','';\r\n            vals += opts[o].value;\r\n        } // if\r\n    return vals;\r\n} // ff_selectedValues'),
(27, 1, 'FF', 'ff_setChecked', 'Set radiobutton checked', 'Set a radiobutton checked/unchecked', 'Untyped', 'function ff_setChecked(name, value, checked)\r\n{\r\n    if (arguments.length<3) checked = true;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            var e = ff_getElementByIndex(i);\r\n            if (e.value == value) {\r\n                e.checked = checked;\r\n                break;\r\n            } // if\r\n        } // if\r\n} // ff_setChecked'),
(28, 1, 'FF', 'ff_setSelected', 'Select options of  select list', 'Select options in a Select List element.\r\n\r\nff_setSelected(''mylist'', ''green''); // select green in single or multi mode, unselect all other options\r\nff_setSelected(''mylist'', ''red,green''); // select red and green in multi mode, unselect all other options', 'Untyped', 'function ff_setSelected(name, list)\r\n{\r\n    ids = list.split('','')\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++) {\r\n        state = false;\r\n        for (i = 0; i < ids.length; i++) \r\n            if (ids[i]==opts[o].value) {\r\n                state = true;\r\n                break;\r\n            } // if\r\n        opts[o].selected = state;\r\n    } // for\r\n} // ff_setSelected'),
(29, 1, 'FF', 'ff_showaction', 'Show action', 'Displays the element action.', 'Element Action', 'function ff_showaction(element, action)\r\n{\r\n   alert(''Action ''+action+'' performed by element ''+element.id);\r\n}'),
(30, 1, 'FF', 'ff_showelementinit', 'Show element initialization', 'Display the element initialization (mainly for debugging)', 'Element Init', 'function ff_showelementinit(element,condition)\r\n{\r\n    if(!element.name)\r\n    	if(element.length && element.length != 0)\r\n    		alert(''Initialization of ''+element[0].name+'' at ''+condition);\r\n    else\r\n    	alert(''Initialization of ''+element.name+'' at ''+condition);\r\n}'),
(31, 1, 'FF', 'ff_showforminit', 'Show form initialization', 'Show when form initialization is run (for debugging)', 'Form Init', 'function ff_showforminit()\r\n{\r\n    alert(''Form initialization'');\r\n}'),
(32, 1, 'FF', 'ff_showsubmitted', 'Show submitted status', 'Display submit status as user feedback.', 'Form Submitted', 'function ff_showsubmitted(status, message)\r\n{\r\n    alert(message);\r\n} // ff_showsubmitted'),
(33, 1, 'FF', 'ff_showvalidation', 'Show element validation', 'Display element validation (for debugging)', 'Element Validation', 'function ff_showvalidation(element, message)\r\n{\r\n    alert(''Validation of ''+element.name+" with message: \\n"+message);\r\n    return '''';\r\n}'),
(34, 1, 'FF', 'ff_submittedhome', 'Return to homepage', 'Display submit status and then return to the home page of the site.', 'Form Submitted', 'function ff_submittedhome(status, message)\r\n{\r\n    alert(message+"\\nYou will be redirected to the home page now.");\r\n    ff_returnHome();\r\n} // ff_submittedhome'),
(35, 1, 'FF', 'ff_unchecked', 'Unchecked', 'Validate that radio button or checkbox is unchecked.', 'Element Validation', 'function ff_unchecked(element, message)\r\n{\r\n    if (!element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n} // ff_unchecked'),
(36, 1, 'FF', 'ff_validate_date_DDMMYYYY', 'Validate Date DD/MM/YYYY format', 'Validates that the date in a textfield is correctly formatted in DD/MM/YYYY format.\r\nCan be used with a textfield element and/or the Calendar element.', 'Element Validation', 'function ff_validate_date_DDMMYYYY(element, message)\r\n{\r\n   // Regular expression used to check if date is in correct format\r\n   var pattern = /[0-3][0-9]\\/(0|1)[0-9]\\/(19|20)[0-9]{2}/;\r\n   if(pattern.test(element.value))\r\n   {\r\n      var date_array = element.value.split(''/'');\r\n      var day = date_array[0];\r\n\r\n      // Attention! Javascript consider months in the range 0 - 11\r\n      var month = date_array[1] - 1;\r\n      var year = date_array[2];\r\n\r\n      // This instruction will create a date object\r\n      source_date = new Date(year,month,day);\r\n\r\n      if(year != source_date.getFullYear())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(month != source_date.getMonth())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(day != source_date.getDate())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n   }\r\n   else\r\n   {\r\n      return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n   }\r\n\r\n   return '''';\r\n}'),
(37, 1, 'FF', 'ff_validate_form', 'Validate form', 'Validates the form and displays the result.', 'Element Action', 'function ff_validate_form(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_form'),
(38, 1, 'FF', 'ff_validate_nextpage', 'Validate and next page', 'Validates the current page, and if everything is ok is switches to the next page.', 'Element Action', 'function ff_validate_nextpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);   \r\n    }\r\n} // ff_validate_nextpage'),
(39, 1, 'FF', 'ff_validate_page', 'Validate page', 'Validates the current page and displays the result.', 'Element Action', 'function ff_validate_page(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_page'),
(40, 1, 'FF', 'ff_validate_prevpage', 'Validate previous page', 'Validates the current page and switches to the previous page if all is ok', 'Element Action', 'function ff_validate_prevpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else{\r\n    	if(ff_currentpage > 1){\r\n	 ff_switchpage(ff_currentpage-1);\r\n	 self.scrollTo(0,0);\r\n        }\r\n    }\r\n} // ff_validate_prevpage'),
(41, 1, 'FF', 'ff_validate_submit', 'Validate and submit form', 'Validates the whole form, and if everything is ok it submits the form.', 'Element Action', 'function ff_validate_submit(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus();\r\n    } else\r\n        ff_submitForm();\r\n} // ff_validate_submit'),
(42, 1, 'FF', 'ff_validemail', 'Valid email', 'Validate entry of a valid email (syntax check only)', 'Element Validation', 'function ff_validemail(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_validemail'),
(43, 1, 'FF', 'ff_validemail_repeat', 'Validate Email repeat', 'Checks if the field value is a valid email address and has a second counterpart that has an equal value.\r\nThe 2nd email field must be named "FIELDNAME_repeat"!', 'Element Validation', 'function ff_validemail_repeat(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n	\r\n    try{\r\n	    var repeat = element.name.split("ff_nm_")[1].split("[]")[0];\r\n	\r\n	    if(!ff_getElementByName(repeat + ''_repeat'')){\r\n	     	if (message=='''') message = repeat+" has no repeat email field.\\n";\r\n	        ff_validationFocus(element.name);\r\n	        return message;\r\n	    } else {\r\n	        if(ff_getElementByName(repeat + ''_repeat'').value != element.value){\r\n	           if (message=='''') message = element.name+" and " + repeat + "_repeat do not match.\\n";\r\n	           ff_validationFocus(repeat + ''_repeat'');\r\n	           return message;\r\n	        }\r\n	    }\r\n    }catch(e){\r\n        return e.description;\r\n    }\r\n\r\n    return '''';\r\n} // ff_validemail'),
(44, 1, 'FF', 'ff_valuenotempty', 'Value not empty', 'Validate that value is not empty.', 'Element Validation', 'function ff_valuenotempty(element, message)\r\n{\r\n    if (element.value!='''') return ''''; \r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_facileforms_subrecords`
--

CREATE TABLE IF NOT EXISTS `f4kq7_facileforms_subrecords` (
`id` int(11) NOT NULL,
  `record` int(11) NOT NULL DEFAULT '0',
  `element` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_filters`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `f4kq7_finder_taxonomy`
--

INSERT INTO `f4kq7_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_terms`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `f4kq7_finder_terms_common`
--

INSERT INTO `f4kq7_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_finder_types`
--

CREATE TABLE IF NOT EXISTS `f4kq7_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_languages`
--

CREATE TABLE IF NOT EXISTS `f4kq7_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_languages`
--

INSERT INTO `f4kq7_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_menu`
--

CREATE TABLE IF NOT EXISTS `f4kq7_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_menu`
--

INSERT INTO `f4kq7_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 83, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(101, 'mainmenu', 'HOME', 'home', '', 'home', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"home.css","menu_image":"","menu_text":1,"menu_show":0,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"myredirect","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
(102, 'mainmenu', 'SOBRE NOSOTROS', 'sobre-nosotros', '', 'sobre-nosotros', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(103, 'mainmenu', 'PROYECTOS', 'proyectos', '', 'proyectos', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 43, 46, 0, '*', 0),
(108, 'mainmenu', 'CONTACTO', 'contacto', '', 'contacto', 'index.php?option=com_breezingforms&view=form', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"ff_com_name":"ContactoGeneral","ff_com_page":"1","ff_com_editable":"0","ff_com_editable_override":"0","ff_com_frame":"0","ff_com_border":"0","ff_com_align":"1","ff_com_left":"0","ff_com_top":"0","ff_com_parprv":"","ff_com_parpub":"","ff_com_suffix":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(109, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '{}', 49, 54, 0, '', 1),
(110, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 109, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '{}', 50, 51, 0, '', 1),
(111, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 109, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 52, 53, 0, '', 1),
(135, 'main', 'COM_BREEZINGFORMS', 'com-breezingforms', '', 'com-breezingforms', 'index.php?option=com_breezingforms', 'component', 0, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 55, 70, 0, '', 1),
(136, 'main', 'COM_BREEZINGFORMS_MANAGE_RECORDS', 'com-breezingforms-manage-records', '', 'com-breezingforms/com-breezingforms-manage-records', 'index.php?option=com_breezingforms&act=managerecs', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1),
(137, 'main', 'COM_BREEZINGFORMS_MANAGE_FORMS', 'com-breezingforms-manage-forms', '', 'com-breezingforms/com-breezingforms-manage-forms', 'index.php?option=com_breezingforms&act=manageforms', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1),
(138, 'main', 'COM_BREEZINGFORMS_MANAGE_SCRIPTS', 'com-breezingforms-manage-scripts', '', 'com-breezingforms/com-breezingforms-manage-scripts', 'index.php?option=com_breezingforms&act=managescripts', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1),
(139, 'main', 'COM_BREEZINGFORMS_MANAGE_PIECES', 'com-breezingforms-manage-pieces', '', 'com-breezingforms/com-breezingforms-manage-pieces', 'index.php?option=com_breezingforms&act=managepieces', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 62, 63, 0, '', 1),
(140, 'main', 'COM_BREEZINGFORMS_INTEGRATOR', 'com-breezingforms-integrator', '', 'com-breezingforms/com-breezingforms-integrator', 'index.php?option=com_breezingforms&act=integrate', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 64, 65, 0, '', 1),
(141, 'main', 'COM_BREEZINGFORMS_MANAGE_BACKEND_MENUS', 'com-breezingforms-manage-backend-menus', '', 'com-breezingforms/com-breezingforms-manage-backend-menus', 'index.php?option=com_breezingforms&act=managemenus', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 66, 67, 0, '', 1),
(142, 'main', 'COM_BREEZINGFORMS_CONFIGURATION', 'com-breezingforms-configuration', '', 'com-breezingforms/com-breezingforms-configuration', 'index.php?option=com_breezingforms&act=configuration', 'component', 0, 135, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 68, 69, 0, '', 1),
(143, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 71, 78, 0, '', 1),
(144, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 143, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(145, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 143, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(146, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 143, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(147, 'mainmenu', 'Home2', 'home2', '', 'home2', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":0,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(148, 'mainmenu', 'Mapas', 'mapas', '', 'mapas', 'index.php?option=com_content&view=category&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":0,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(149, 'mainmenu', 'RAFAEL MARTINEZ 169', 'rafael-martinez-169', '', 'proyectos/rafael-martinez-169', 'index.php?option=com_content&view=article&id=3', 'component', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_menu_types`
--

CREATE TABLE IF NOT EXISTS `f4kq7_menu_types` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_menu_types`
--

INSERT INTO `f4kq7_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_messages`
--

CREATE TABLE IF NOT EXISTS `f4kq7_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `f4kq7_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_modules`
--

CREATE TABLE IF NOT EXISTS `f4kq7_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_modules`
--

INSERT INTO `f4kq7_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '2017-03-03 03:09:30', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills nav-dropdown","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 61, 'DJ-ImageSlider', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2017-02-27 01:33:00', '0000-00-00 00:00:00', 0, 'mod_djimageslider', 1, 1, '{"slider_source":"1","slider_type":"2","theme":"default","link_image":"2","image_folder":"images\\/Homeslider","link":"","category":"10","show_title":"0","show_desc":"0","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"1","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","looponce":"0","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 63, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 64, 'Footer', '', '<p><img src="images/footer.png" alt="footer" style="display: block; margin-left: auto; margin-right: auto;" /></p>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"images\\/background.png","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 72, 'Forma', '', '{BreezingForms: Contacto}', 1, 'position-0', 0, '0000-00-00 00:00:00', '2017-03-03 02:54:45', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 73, 'BreezingForms', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breezingforms', 1, 1, '{"ff_mod_name":"Contacto","ff_mod_page":"1","ff_mod_editable":"1","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 75, 'Rafael Martinez', '', '', 1, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 0, '{"slider_source":"1","slider_type":"2","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","category":"11","show_title":"0","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"1","image_width":"240","image_height":"180","fit_to":"1","image_centering":"1","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","looponce":"0","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 76, 'Carousel CK', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2017-04-20 21:55:17', '0000-00-00 00:00:00', 1, 'mod_carouselck', 1, 1, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|images\\/Homeslider\\/1c_Alta.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost:81\\/images\\/Homeslider\\/1c_Alta.jpg|qq|,|qq|imglink|qq|:|qq|http:\\/\\/localhost:81\\/index.php\\/proyectos\\/3-rafael-martinez-169|qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/Homeslider\\/rm169_interior12.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost:81\\/images\\/Homeslider\\/rm169_interior12.jpg|qq|,|qq|imglink|qq|:|qq|http:\\/\\/localhost:81\\/index.php\\/proyectos\\/3-rafael-martinez-169|qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/proyectos\\/RafaelMartinez169\\/RM_INT_2.png|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost:81\\/images\\/proyectos\\/RafaelMartinez169\\/RM_INT_2.png|qq|,|qq|imglink|qq|:|qq|http:\\/\\/localhost:81\\/index.php\\/proyectos\\/3-rafael-martinez-169|qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/proyectos\\/MiguelCabrera10\\/fachada_002-acero-copy.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost:81\\/images\\/proyectos\\/MiguelCabrera10\\/fachada_002-acero-copy.jpg|qq|,|qq|imglink|qq|:|qq|http:\\/\\/localhost:81\\/index.php\\/proyectos\\/3-rafael-martinez-169|qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|}]","theme":"default","skin":"carouselck_black_skin","wrapheight":"48","imageheight":"62","imagesratio":"0.72","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","playPause":"0","navigation":"2","duration":"600","time":"7000","captioneffect":"moveFromLeft","captionduration":"600","autoAdvance":"0","displayorder":"normal","imagetarget":"_parent","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"0","captionstylesfontsize":"2em","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"1em","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1","imagestylesuseroundedcorners":"0","imagestylesroundedcornerstl":"5","imagestylesroundedcornerstr":"5","imagestylesroundedcornersbr":"5","imagestylesroundedcornersbl":"5","imagestylesuseshadow":"0","imagestylesshadowcolor":"#000","imagestylesshadowblur":"20","imagestylesshadowspread":"0","imagestylesshadowoffsetx":"0","imagestylesshadowoffsety":"0","imagestylesshadowinset":"0","imagestylesuseborders":"0","imagestylesbordercolor":"#378137","imagestylesborderwidth":"10","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 80, 'Logo', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-04-23 15:48:11', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 81, 'HD-Background Selector', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '2017-04-24 22:13:17', '0000-00-00 00:00:00', 0, 'mod_hd-bgselector', 1, 1, '{"bgid":"body","imagebg":"images\\/gama_logotipos_LAND-02.jpg","imageposition":"center center","imageattachment":"fixed","imagerepeat":"no-repeat","bgcolor":"transparent","importance":" ","customcss":"#content {width:500%}","bgtype":"standard","imagebgtwo":"","imagebgthree":"","imagebgfour":"","imagebgfive":"","imagebgsix":"","imagebgseven":"","gradtop":"000000","gradbottom":"ffffff","urlsniffer":"","browsersniffer":"all","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 84, 'Maximenu CK', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '2017-04-26 01:25:40', '0000-00-00 00:00:00', 1, 'mod_maximenuck', 1, 1, '{"maximenuwizard":"","menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","dependantitems":"1","zindexlevel":"10","layout":"_:default","menuid":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static","imagerollprefix":"_hover","imageactiveprefix":"_active","imageonly":"0","menu_images_align":"top","usejavascript":"1","load":"domready","stopdropdownlevel":"0","menuposition":"0","fixedpositionwidth":"","topfixedeffect":"1","behavior":"mouseover","opentype":"open","fxduration":"500","fxtransition":"linear","dureein":"0","dureeout":"500","testoverflow":"0","direction":"normal","directionoffset1":"30","directionoffset2":"30","showactivesubitems":"0","usefancy":"1","fancyduration":"500","fancytransition":"linear","theme":"tabs","orientation":"horizontal","useresponsive":"1","templatelayer":"-1","loadcompiledcss":"0","menustyles":"[]","level1itemnormalstyles":"[]","level1itemnormalstylesicon":"[]","level1itemhoverstylesicon":"[]","level1itemhoverstyles":"[]","level1itemactivestyles":"[]","level2menustyles":"[]","level2itemnormalstyles":"[]","level2itemnormalstylesicon":"[]","level2itemhoverstylesicon":"[]","level2itemhoverstyles":"[]","level2itemactivestyles":"[]","headingstyles":"[]","logoimage":"","logolink":"","logoalt":"","logoposition":"left","logowidth":"","logoheight":"","logomargintop":"0","logomarginright":"0","logomarginbottom":"0","logomarginleft":"0","maximenumobile_enable":"1","thirdparty":"none","usehikashopimages":"0","usehikashopsuffix":"0","hikashopimagesuffix":"_mini","hikashopcategoryroot":"0","hikashopcategorydepth":"0","hikashopshowall":"1","hikashoporderby":"ordering","usek2images":"0","usek2suffix":"0","k2imagesuffix":"_mini","k2categoryroot":"0","k2categorydepth":"0","k2showall":"1","joomshoppingitemid":"0","usejoomshoppingimages":"0","usejoomshoppingsuffix":"0","joomshoppingimagesuffix":"_mini","joomshoppingcategoryroot":"0","joomshoppingcategorydepth":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_modules_menu`
--

CREATE TABLE IF NOT EXISTS `f4kq7_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_modules_menu`
--

INSERT INTO `f4kq7_modules_menu` (`moduleid`, `menuid`) VALUES
(1, -101),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 101),
(88, 0),
(89, 0),
(93, 0),
(94, 103),
(95, 103),
(95, 149),
(96, 147),
(97, 101),
(98, 101),
(99, -101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `f4kq7_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_overrider`
--

CREATE TABLE IF NOT EXISTS `f4kq7_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `f4kq7_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_postinstall_messages`
--

INSERT INTO `f4kq7_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_redirect_links`
--

CREATE TABLE IF NOT EXISTS `f4kq7_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_schemas`
--

CREATE TABLE IF NOT EXISTS `f4kq7_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_schemas`
--

INSERT INTO `f4kq7_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16'),
(10010, '2.0'),
(10018, '0.3.4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_session`
--

CREATE TABLE IF NOT EXISTS `f4kq7_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_session`
--

INSERT INTO `f4kq7_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('c6v7p3qqjma9s2j8o3fa7kphi0', 0, 1, '1493608320', 'joomla|s:644:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ5MzYwODMxMztzOjQ6Imxhc3QiO2k6MTQ5MzYwODMxMztzOjM6Im5vdyI7aToxNDkzNjA4MzEzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, ''),
('e1csagemaem1o0pk3vr099e5a0', 1, 0, '1493608599', 'joomla|s:916:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0OTM2MDgzMjY7czo0OiJsYXN0IjtpOjE0OTM2MDg1NTA7czozOiJub3ciO2k6MTQ5MzYwODU5NDt9czo1OiJ0b2tlbiI7czozMjoiNnJ2dlVodnlxbnBXU1ViWkExNHVua0EybkJFdGpyZ2siO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czoyOiIzNSI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 35, 'Kokaiweb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_tags`
--

CREATE TABLE IF NOT EXISTS `f4kq7_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_tags`
--

INSERT INTO `f4kq7_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 35, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_template_styles`
--

CREATE TABLE IF NOT EXISTS `f4kq7_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_template_styles`
--

INSERT INTO `f4kq7_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","bootstrap":"","templatecolor":"personal","headerImage":"","backgroundcolor":"#eeeeee"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#e7e0d9","templateBackgroundColor":"#a8a8a8","logoFile":"images\\/logoland.png","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"1"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'protostar', 0, '0', 'protostar - Default (2)', '{"templateColor":"#ffffff","templateBackgroundColor":"#ffffff","logoFile":"images\\/gama_logotipos_LAND-01-1.jpg","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"1"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_ucm_base`
--

CREATE TABLE IF NOT EXISTS `f4kq7_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_ucm_content`
--

CREATE TABLE IF NOT EXISTS `f4kq7_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_ucm_history`
--

CREATE TABLE IF NOT EXISTS `f4kq7_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_ucm_history`
--

INSERT INTO `f4kq7_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2017-02-15 23:59:29', 35, 564, '9f0b5965c49a515a02ad979f1f2eda0a92be0fd5', '{"id":8,"asset_id":55,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Sobre nosotros","alias":"sobre-nosotros","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"35","created_time":"2017-02-15 23:59:29","modified_user_id":null,"modified_time":"2017-02-15 23:59:29","hits":"0","language":"*","version":null}', 0),
(2, 9, 5, '', '2017-02-16 00:00:08', 35, 554, '4fd4138fe6d6f22fb4e24b439544737d090a47c0', '{"id":9,"asset_id":56,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Proyectos","alias":"proyectos","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"35","created_time":"2017-02-16 00:00:08","modified_user_id":null,"modified_time":"2017-02-16 00:00:08","hits":"0","language":"*","version":null}', 0),
(3, 1, 1, '', '2017-02-22 02:00:45', 35, 3546, '50ee70f03725be4bd4307d398e23b9601761d34c', '{"id":1,"asset_id":57,"title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #999999;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>\\u00a0ES CONCEBIDO COMO UNA EMPRESA J\\u00d3VEN Y DIN\\u00c1MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M\\u00c1S ALTA CALIDAD EN DISE\\u00d1O Y CONSTRUCCI\\u00d3N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #999999;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI\\u00d3N DE PLANEACI\\u00d3N FINANCIERA, BIENES RA\\u00cdCES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE\\u00d1O ARQUITECT\\u00d3NICO Y CONSTRUCCI\\u00d3N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-02-22 02:00:45","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 2, 1, '', '2017-02-22 02:08:10', 35, 1777, '5a9852d11137cfafd638e2e902b9fe2facdcc603', '{"id":2,"asset_id":58,"title":"Miguel Cabrera 10","alias":"miguel-cabrera-10","introtext":"","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-02-22 02:08:10","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_intro\\":\\"right\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 2, 1, '', '2017-02-22 02:10:09', 35, 1867, 'a895a3d35fbdba5d5d6b86433240be9e6b30d168', '{"id":2,"asset_id":"58","title":"Miguel Cabrera 10","alias":"miguel-cabrera-10","introtext":"","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-02-22 02:10:09","modified_by":"35","checked_out":"35","checked_out_time":"2017-02-22 02:09:07","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_intro\\":\\"right\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_fulltext\\":\\"right\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2017-02-22 02:10:59', 35, 2848, '377864997090650466a6d29d7c18aaa46bb1b9a7', '{"id":2,"asset_id":"58","title":"Miguel Cabrera 10","alias":"miguel-cabrera-10","introtext":"<p>Miguel Cabrera 10 es loremipsum<span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-02-22 02:10:59","modified_by":"35","checked_out":"35","checked_out_time":"2017-02-22 02:10:30","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_intro\\":\\"right\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_fulltext\\":\\"right\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 2, 1, '', '2017-02-22 02:11:20', 35, 2847, 'bd5da9925bed067d7f51cf6a0f24b4eee10748e4', '{"id":2,"asset_id":"58","title":"Miguel Cabrera 10","alias":"miguel-cabrera-10","introtext":"<p>Miguel Cabrera 10 es loremipsum<span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-02-22 02:11:20","modified_by":"35","checked_out":"35","checked_out_time":"2017-02-22 02:10:59","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_intro\\":\\"right\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 2, 1, '', '2017-02-22 02:11:40', 35, 2779, '2b4de828801f05efd8bb8db8e4d0cc6df558529e', '{"id":2,"asset_id":"58","title":"Miguel Cabrera 10","alias":"miguel-cabrera-10","introtext":"<p>Miguel Cabrera 10 es loremipsum<span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>\\r\\n<p><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><span style=\\"font-size: 12.16px;\\">loremipsum<\\/span><\\/p>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-02-22 02:11:40","modified_by":"35","checked_out":"35","checked_out_time":"2017-02-22 02:11:20","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"right\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/proyectos\\\\\\/MiguelCabrera10\\\\\\/fachada_002-acero-copy.jpg\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(57, 4, 1, '', '2017-04-23 15:14:42', 35, 1678, 'fa55f3546a4c652b7164647e2b4441a1f2624f75', '{"id":4,"asset_id":78,"title":"Hoe2","alias":"hoe2","introtext":"","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:14:42","created_by":"35","created_by_alias":"","modified":"2017-04-23 15:14:42","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-04-23 15:14:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 4, 1, '', '2017-04-23 15:14:48', 35, 1696, 'a7667a98897d4c31c9409b73c2d7f663a7e3cbbb', '{"id":4,"asset_id":"78","title":"Home2","alias":"hoe2","introtext":"","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:14:42","created_by":"35","created_by_alias":"","modified":"2017-04-23 15:14:48","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-23 15:14:42","publish_up":"2017-04-23 15:14:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(63, 1, 1, '', '2017-04-23 17:24:08', 35, 3584, 'c612824ab6089330772931088e0ec6a7500fad01', '{"id":1,"asset_id":"57","title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #999999;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA J&Oacute;VEN Y DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #999999;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-04-23 17:24:08","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-23 17:23:37","publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"86","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(64, 1, 1, '', '2017-04-23 17:25:28', 35, 3566, 'ca5ab5ff120c9b5ee2dc7726d5bb1a5944031e1b', '{"id":1,"asset_id":"57","title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #000000; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA&nbsp;DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #000000; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-04-23 17:25:28","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-23 17:24:08","publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"87","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(65, 1, 1, '', '2017-04-23 17:26:03', 35, 3566, '96d05e3e97846027dd199af609144bfdbd2484f6', '{"id":1,"asset_id":"57","title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #e4e5df; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA&nbsp;DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #e4e5df; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-04-23 17:26:03","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-23 17:25:28","publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"88","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(67, 1, 1, '', '2017-04-23 17:32:13', 35, 3578, '5309c98827a5fef9f888b98276ccf36f9c0c0c63', '{"id":1,"asset_id":"57","title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<p><\\/p>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #e4e5df; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA&nbsp;DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #e4e5df; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-04-23 17:32:13","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-23 17:31:53","publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"89","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(71, 1, 1, '', '2017-04-23 17:34:58', 35, 3584, '180d1a5de4edad1ae615bcdf520673f26f6b7514', '{"id":1,"asset_id":"57","title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<p>&nbsp;<\\/p>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #a4a4a4; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA&nbsp;DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #a4a4a4; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-04-23 17:34:58","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-23 17:34:39","publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"89","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(82, 5, 1, '', '2017-04-24 23:34:31', 35, 1771, '84497bfef59c282acd56f302989dc338f32d33d0', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg'')\\">","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:34:31","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:33:58","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"84","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(83, 5, 1, '', '2017-04-24 23:35:09', 35, 1813, '39557ac943308813d747335621f1536f8080d7b2', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg'');  width: 100%; height: auto;\\">&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:35:09","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:34:31","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"85","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(84, 5, 1, '', '2017-04-24 23:35:59', 35, 1890, '64098f8b004e50cc48d6ae226fca14a47a2ae84b', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg'');  background-repeat: no-repeat;\\r\\n    background-attachment: fixed;\\r\\n    background-position: center; \\">&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:35:59","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:35:09","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"86","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `f4kq7_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(85, 5, 1, '', '2017-04-24 23:36:34', 35, 1900, 'ebee5760c63927811140a348f73d89bccf3f47b9', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg''); background-repeat: no-repeat; background-attachment: fixed; background-position: center; width:100%; height:auto;\\">&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:36:34","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:35:59","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"87","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(86, 5, 1, '', '2017-04-24 23:37:57', 35, 1903, 'bac1121893304519ef34797243b04e38c809dcd7', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg''); background-repeat: no-repeat; background-attachment: fixed; background-position: center; background-size: 80px 60px;\\">&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:37:57","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:36:34","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"88","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(87, 5, 1, '', '2017-04-24 23:39:32', 35, 1786, '5607fdad91778fcc903a57ebbe9a3d233ecb228b', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg'');\\">&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:39:32","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:37:57","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"89","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(88, 5, 1, '', '2017-04-24 23:39:51', 35, 1822, '8544d75da6890a5410b0ce23a99382e180c74e27', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg'');\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:39:51","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:39:32","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"90","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(89, 5, 1, '', '2017-04-24 23:41:38', 35, 1846, '71ed4d898da2095ee26fe632a3a8a8add23e288b', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg'');background-position:50%;\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:41:38","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:39:51","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"93","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(90, 5, 1, '', '2017-04-24 23:42:00', 35, 1849, '878d241c0bb99fff0c6adf4482989299ce7f7fd1', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div style=\\"background-image: url(''images\\/gama_logotipos_LAND-02.jpg''); background-position: 200%;\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-24 23:42:00","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-24 23:41:38","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":15,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"94","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(91, 5, 1, '', '2017-04-25 00:19:51', 35, 1721, '2dde66db72dcba251e18301d76ba2b3461c8587d', '{"id":5,"asset_id":"79","title":"Home","alias":"home","introtext":"<div class=div1><\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-04-23 15:31:46","created_by":"35","created_by_alias":"","modified":"2017-04-25 00:19:51","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 00:19:28","publish_up":"2017-04-23 15:31:46","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":18,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"125","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(99, 3, 1, '', '2017-04-25 21:14:19', 35, 4641, '22b88b5d6f633efb5f94c811c8dc22710f2fd3d6', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=1:sobre-nosotros&amp;catid=8:sobre-nosotros&amp;Itemid=102\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=0,top=0'');return false;\\" ><span style=\\"background-color: #a4a4a4;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:14:19","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:13:37","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":85,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"209","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(100, 3, 1, '', '2017-04-25 21:14:44', 35, 4943, '7ed804c84bd1e8d0ec218ae63256967a70293960', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=1:sobre-nosotros&amp;catid=8:sobre-nosotros&amp;Itemid=102\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\"><span style=\\"background-color: #a4a4a4;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:14:44","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:14:19","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":86,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"209","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(101, 6, 1, '', '2017-04-25 21:17:27', 35, 1822, 'c273092d8a005f983f4c4fc5bc0a4abac6c1948a', '{"id":6,"asset_id":82,"title":"Mapa Rafael Martinez 169","alias":"mapa-rafael-martinez-169","introtext":"<p>&nbsp;<\\/p>\\r\\n<p>{google_map}Rafael Mart&iacute;nez Rip Rip 169{\\/google_map}<\\/p>\\r\\n<p>&nbsp;<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-04-25 21:17:27","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:17:27","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-04-25 21:17:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(102, 6, 1, '', '2017-04-25 21:18:19', 35, 1839, '6d622c5bc69782c0d0fe648ca38759510c530f9c', '{"id":6,"asset_id":"82","title":"Mapa Rafael Martinez 169","alias":"mapa-rafael-martinez-169","introtext":"<p>&nbsp;<\\/p>\\r\\n<p>{google_map}Rafael Mart&iacute;nez Rip Rip 169{\\/google_map}<\\/p>\\r\\n<p>&nbsp;<\\/p>","fulltext":"","state":1,"catid":"9","created":"2017-04-25 21:17:27","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:18:19","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:17:27","publish_up":"2017-04-25 21:17:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(103, 3, 1, '', '2017-04-25 21:19:28', 35, 4721, '0760147888bd917c39a679d1f05b306259b0eb50', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=1:sobre-nosotros&amp;catid=8:sobre-nosotros&amp;Itemid=102\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" ><span style=\\"background-color: #a4a4a4;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:19:28","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:19:00","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":88,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"210","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(104, 3, 1, '', '2017-04-25 21:19:46', 35, 4952, 'ccb079aea8954e63a147eda1f1d095455c2b285a', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=2:uncategorised&amp;Itemid=101\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\"><span style=\\"background-color: #a4a4a4;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:19:46","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:19:28","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":89,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"210","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(105, 12, 5, '', '2017-04-25 21:20:38', 35, 547, 'f7faedc454d5b14e75ca3304fbef0589ae459731', '{"id":12,"asset_id":83,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"Mapas","alias":"mapas","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"35","created_time":"2017-04-25 21:20:38","modified_user_id":null,"modified_time":"2017-04-25 21:20:38","hits":"0","language":"*","version":null}', 0),
(106, 6, 1, '', '2017-04-25 21:21:01', 35, 1840, '072b4f2662d46e23f22e456b448da1d09bedaa6d', '{"id":6,"asset_id":"82","title":"Mapa Rafael Martinez 169","alias":"mapa-rafael-martinez-169","introtext":"<p>&nbsp;<\\/p>\\r\\n<p>{google_map}Rafael Mart&iacute;nez Rip Rip 169{\\/google_map}<\\/p>\\r\\n<p>&nbsp;<\\/p>","fulltext":"","state":1,"catid":"12","created":"2017-04-25 21:17:27","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:21:01","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:20:54","publish_up":"2017-04-25 21:17:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(107, 3, 1, '', '2017-04-25 21:24:42', 35, 4730, '622c97e4165ce09ae882573ec4cf4152d3337828', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=2:uncategorised&amp;Itemid=101\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" ><span style=\\"background-color: #a4a4a4;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:24:42","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:24:24","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":91,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"213","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `f4kq7_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(108, 3, 1, '', '2017-04-25 21:26:43', 35, 4945, 'ef196efa22efa4c61fb6fa21c95fb3bd5e2e2b21', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=12:mapas&amp;Itemid=101\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\"><span style=\\"background-color: #a4a4a4;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-25 21:26:43","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-25 21:25:59","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":94,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"213","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(109, 3, 1, '', '2017-04-26 00:08:28', 35, 4680, '275c781fd23e199d97f2ff60c2006fe3e61978a6', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #a4a4a4;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=12:mapas&amp;Itemid=101\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" ><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"background-color: #a4a4a4; color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/td>\\r\\n<td style=\\"text-align: center;\\"><a href=\\"index.php\\/sobre-nosotros\\"><span style=\\"color: #ffffff; background-color: #a4a4a4;\\">GALER&Iacute;A<\\/span><\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-26 00:08:28","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-26 00:07:25","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":96,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"219","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(110, 1, 1, '', '2017-04-26 00:08:50', 35, 3585, '39d9d74645ca5cd96ecfce3ecb8cc09e1a8b3013', '{"id":1,"asset_id":"57","title":"Sobre nosotros","alias":"sobre-nosotros","introtext":"<p>&nbsp;<\\/p>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: white; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #aaaaac; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\"><strong style=\\"background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px;\\">LAND<\\/strong>&nbsp;ES CONCEBIDO COMO UNA EMPRESA&nbsp;DIN&Aacute;MICA CONFORMADA POR PERSONAS ESPECIALIZADAS EN DISTINTAS DISCIPLINAS CON EL FIN DE CREAR PROYECTOS INMOBILIARIOS CON LA M&Aacute;S ALTA CALIDAD EN DISE&Ntilde;O Y CONSTRUCCI&Oacute;N.<\\/span><\\/h5>\\r\\n<h5 style=\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #425466; font-size: 16px; line-height: 32px; text-transform: uppercase; letter-spacing: 3px; font-weight: 400; font-family: Montserrat, sans-serif; text-align: center;\\"><span style=\\"background: #aaaaac; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; color: #ffffff;\\">NUESTRA PRINCIPAL ESTRATEGIA SE BASA EN LA FUSI&Oacute;N DE PLANEACI&Oacute;N FINANCIERA, BIENES RA&Iacute;CES,<br style=\\"margin-bottom: 0px;\\" \\/>DISE&Ntilde;O ARQUITECT&Oacute;NICO Y CONSTRUCCI&Oacute;N, GENERANDO EXITOSOS PROYECTOS E INVERSIONES.<\\/span><\\/h5>","fulltext":"","state":1,"catid":"8","created":"2017-02-22 02:00:45","created_by":"35","created_by_alias":"","modified":"2017-04-26 00:08:50","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-26 00:08:32","publish_up":"2017-02-22 02:00:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"114","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(111, 3, 1, '', '2017-04-26 00:09:56', 35, 5194, '76d931f6e8462e7475ba5ed3b074cdfa965a92e1', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #aaaaac; color: #ffffff;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #aaaaac; color: #ffffff;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #aaaaac;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #aaaaac;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p><span style=\\"background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<p><span style=\\"background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=12:mapas&amp;Itemid=101\\" style=\\"background-color: #aaaaac;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/a><\\/span><\\/td>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php\\/sobre-nosotros\\" style=\\"background-color: #aaaaac;\\"><span style=\\"color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/span><\\/td>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php\\/sobre-nosotros\\" style=\\"background-color: #aaaaac;\\"><span style=\\"color: #ffffff;\\">GALER&Iacute;A<\\/span><\\/a><\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-26 00:09:56","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-26 00:09:24","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":97,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"222","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(112, 3, 1, '', '2017-04-26 02:16:12', 35, 5194, '71b70b5c2f97856aeddc0a20bec905f7cf694895', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #aaaaac; color: #e7e0d9;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #aaaaac; color: #e7e0d9;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #ffffff; background-color: #aaaaac;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p><span style=\\"background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<p><span style=\\"background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=12:mapas&amp;Itemid=101\\" style=\\"background-color: #aaaaac;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\"><span style=\\"color: #ffffff;\\">MAPA<\\/span>&nbsp;<\\/a><\\/span><\\/td>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php\\/sobre-nosotros\\" style=\\"background-color: #aaaaac;\\"><span style=\\"color: #ffffff;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/span><\\/td>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php\\/sobre-nosotros\\" style=\\"background-color: #aaaaac;\\"><span style=\\"color: #ffffff;\\">GALER&Iacute;A<\\/span><\\/a><\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-26 02:16:12","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-26 02:13:31","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":98,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"232","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(113, 3, 1, '', '2017-04-26 02:16:50', 35, 5194, '8da21e3e23c08854475db30460507013eec7b33b', '{"id":3,"asset_id":"65","title":"Rafael Martinez 169","alias":"rafael-martinez-169","introtext":"<p><span style=\\"background-color: #a4a4a4;\\"><\\/span><\\/p>\\r\\n<div style=\\"padding-bottom: 2%;\\">\\r\\n<p><span style=\\"background-color: #aaaaac; color: #e7e0d9;\\"><strong>UBICACI&Oacute;N<\\/strong>: Rafael Mart&iacute;nez Rip Rip 169, Col. San Sim&oacute;n Ticumac, Del. Benito Ju&aacute;rez, CDMX.&nbsp;<\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"background-color: #aaaaac; color: #e7e0d9;\\"><b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\">RAFAEL MART&Iacute;NEZ 169<\\/span><\\/b><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif;\\"> es un proyecto de 15 departamentos con superficies aproximadas de 75 metros cuadrados.Todos los departamentos cuentan con dos rec&aacute;maras, dos ba&ntilde;os, sala-comedor, cocina equipada, &aacute;rea de lavadoy bodega. Adicionalmente cada uno de los departamentos en PB contar&aacute; con un jard&iacute;n para su uso exclusivo y cada uno de los departamentos en los niveles 4 y 5 contar&aacute; con un roofgarden para su uso exclusivo.<\\/span><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;\\">El proyecto contar&aacute; con un acceso peatonal equipado para la contrataci&oacute;n de seguridad privada las 24 horas del d&iacute;a, un elevador con capacidad de 6 pasajeros y un acceso vehicular sobre la avenida principal. <\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-size: 11pt; font-family: ''Arial Narrow'', sans-serif; color: #e7e0d9; background-color: #aaaaac;\\"><strong>MATERIALES<\\/strong>: estructura de concreto armado, madera s&oacute;lida de oyamel, placas de acero.<\\/span><\\/p>\\r\\n<p><span style=\\"background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<p><span style=\\"background-color: #aaaaac;\\"><\\/span><\\/p>\\r\\n<table style=\\"width: 100%;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php?option=com_content&amp;view=article&amp;id=6:mapa-rafael-martinez-169&amp;catid=12:mapas&amp;Itemid=101\\" style=\\"background-color: #aaaaac;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\" onclick=\\"window.open(this.href,'''',''scrollbars=yes,resizable=yes,location=yes,menubar=no,status=yes,toolbar=yes,left=''+(screen.availWidth\\/2-250)+'',top=''+(screen.availHeight\\/2-250)+'',width=500,height=500'');return false;\\"><span style=\\"color: #e7e0d9;\\">MAPA<\\/span>&nbsp;<\\/a><\\/span><\\/td>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php\\/sobre-nosotros\\" style=\\"background-color: #aaaaac;\\"><span style=\\"color: #e7e0d9;\\">TIPOLOG&Iacute;AS<\\/span><\\/a><\\/span><\\/td>\\r\\n<td style=\\"text-align: center;\\"><span style=\\"background-color: #aaaaac;\\"><a href=\\"index.php\\/sobre-nosotros\\" style=\\"background-color: #aaaaac;\\"><span style=\\"color: #e7e0d9;\\">GALER&Iacute;A<\\/span><\\/a><\\/span><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2017-02-22 02:08:10","created_by":"35","created_by_alias":"","modified":"2017-04-26 02:16:50","modified_by":"35","checked_out":"35","checked_out_time":"2017-04-26 02:16:12","publish_up":"2017-02-22 02:08:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/proyectos\\\\\\/RafaelMartinez169\\\\\\/RM_FACHADA.png\\",\\"float_intro\\":\\"none\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"left\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"_:default\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":99,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"233","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_updates`
--

CREATE TABLE IF NOT EXISTS `f4kq7_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Volcado de datos para la tabla `f4kq7_updates`
--

INSERT INTO `f4kq7_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 5, 10000, 'Installer - Install from Web', 'This plugin offers functionality for the ''Install from Web'' tab.', 'webinstaller', 'plugin', 'installer', 0, '1.1.1', '', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 'http://docs.joomla.org/Install_from_Web', ''),
(2, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.7.0', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(3, 9, 10018, 'CoalaWeb Gears', 'CoalaWeb Gears', 'cwgears', 'plugin', 'system', 0, '0.3.5', '', 'http://cdn.coalaweb.com/updates/cw-gears-core.xml', 'https://coalaweb.com/component/ars/?view=Items&release_id=166', ''),
(4, 12, 0, 'SysBreezingForms', 'SysBreezingForms Update', 'analyticsanyway', 'plugin', 'system', 0, '1.0.0', '', 'https://crosstec.org/updates/breezingforms/sysbreezingforms_update.xml', 'https://crosstec.org/en/', ''),
(5, 13, 10008, 'JCE Editor Core', '', 'pkg_jce', 'package', '', 0, '2.6.12', '', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&file=pkg_jce.xml', 'https://www.joomlacontenteditor.net/news/717-jce-pro-2612-released', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_update_sites`
--

CREATE TABLE IF NOT EXISTS `f4kq7_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `f4kq7_update_sites`
--

INSERT INTO `f4kq7_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1493608552, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1493608552, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1493608552, ''),
(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1493608552, ''),
(8, 'DJ-ImageSlider Package', 'extension', 'http://dj-extensions.com/updates/djimageslider.xml', 1, 1493608553, ''),
(9, 'CoalaWeb Gears Update', 'extension', 'http://cdn.coalaweb.com/updates/cw-gears-core.xml', 1, 1493608553, ''),
(11, 'BreezingForms Lite', 'extension', 'https://crosstec.org/updates/breezingforms/breezingformslite_update.xml', 1, 1493608554, ''),
(12, 'sysbreezingforms', 'extension', 'https://crosstec.org/updates/breezingforms/sysbreezingforms_update.xml', 1, 1493608555, ''),
(13, 'JCE Editor Package', 'collection', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&file=pkg_jce.xml', 1, 1493608556, ''),
(14, 'Carousel CK Update', 'extension', 'http://update.joomlack.fr/mod_carouselck_update.xml', 1, 1493608556, ''),
(15, 'Maximenu CK Update', 'extension', 'http://update.joomlack.fr/mod_maximenuck_update.xml', 1, 1493608556, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `f4kq7_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `f4kq7_update_sites_extensions`
--

INSERT INTO `f4kq7_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 10000),
(8, 10012),
(9, 10018),
(11, 10020),
(12, 10024),
(13, 10008),
(14, 10025),
(15, 10027);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_usergroups`
--

CREATE TABLE IF NOT EXISTS `f4kq7_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_usergroups`
--

INSERT INTO `f4kq7_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_users`
--

CREATE TABLE IF NOT EXISTS `f4kq7_users` (
`id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_users`
--

INSERT INTO `f4kq7_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(35, 'Super User', 'Kokaiweb', 'anapaula@kokai.com.mx', '$2y$10$wOvSOJyn4aiy2NIwdTC9gO2/RWDRv5W6.6PbrOPaEJXO05NWoWhLK', 0, 1, '2017-02-15 23:49:07', '2017-05-01 03:13:17', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_user_keys`
--

CREATE TABLE IF NOT EXISTS `f4kq7_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_user_notes`
--

CREATE TABLE IF NOT EXISTS `f4kq7_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_user_profiles`
--

CREATE TABLE IF NOT EXISTS `f4kq7_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `f4kq7_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_user_usergroup_map`
--

INSERT INTO `f4kq7_user_usergroup_map` (`user_id`, `group_id`) VALUES
(35, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `f4kq7_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_utf8_conversion`
--

INSERT INTO `f4kq7_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_viewlevels`
--

CREATE TABLE IF NOT EXISTS `f4kq7_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `f4kq7_viewlevels`
--

INSERT INTO `f4kq7_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f4kq7_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `f4kq7_wf_profiles` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `f4kq7_wf_profiles`
--

INSERT INTO `f4kq7_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,spellchecker,article', 'formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}'),
(5, 'Markdown', 'Sample Markdown Profile', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect', 'fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern', 0, 5, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile"}}');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `f4kq7_assets`
--
ALTER TABLE `f4kq7_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `f4kq7_associations`
--
ALTER TABLE `f4kq7_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `f4kq7_banners`
--
ALTER TABLE `f4kq7_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `f4kq7_banner_clients`
--
ALTER TABLE `f4kq7_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `f4kq7_banner_tracks`
--
ALTER TABLE `f4kq7_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `f4kq7_categories`
--
ALTER TABLE `f4kq7_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `f4kq7_contact_details`
--
ALTER TABLE `f4kq7_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `f4kq7_content`
--
ALTER TABLE `f4kq7_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `f4kq7_contentitem_tag_map`
--
ALTER TABLE `f4kq7_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `f4kq7_content_frontpage`
--
ALTER TABLE `f4kq7_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `f4kq7_content_rating`
--
ALTER TABLE `f4kq7_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `f4kq7_content_types`
--
ALTER TABLE `f4kq7_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `f4kq7_cwgears`
--
ALTER TABLE `f4kq7_cwgears`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_cwgears_schedule`
--
ALTER TABLE `f4kq7_cwgears_schedule`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_djimageslider`
--
ALTER TABLE `f4kq7_djimageslider`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`,`published`);

--
-- Indices de la tabla `f4kq7_extensions`
--
ALTER TABLE `f4kq7_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `f4kq7_facileforms_compmenus`
--
ALTER TABLE `f4kq7_facileforms_compmenus`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_config`
--
ALTER TABLE `f4kq7_facileforms_config`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_elements`
--
ALTER TABLE `f4kq7_facileforms_elements`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_forms`
--
ALTER TABLE `f4kq7_facileforms_forms`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_integrator_criteria_fixed`
--
ALTER TABLE `f4kq7_facileforms_integrator_criteria_fixed`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_integrator_criteria_form`
--
ALTER TABLE `f4kq7_facileforms_integrator_criteria_form`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_integrator_criteria_joomla`
--
ALTER TABLE `f4kq7_facileforms_integrator_criteria_joomla`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_integrator_items`
--
ALTER TABLE `f4kq7_facileforms_integrator_items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_integrator_rules`
--
ALTER TABLE `f4kq7_facileforms_integrator_rules`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_packages`
--
ALTER TABLE `f4kq7_facileforms_packages`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_pieces`
--
ALTER TABLE `f4kq7_facileforms_pieces`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_records`
--
ALTER TABLE `f4kq7_facileforms_records`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_scripts`
--
ALTER TABLE `f4kq7_facileforms_scripts`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_facileforms_subrecords`
--
ALTER TABLE `f4kq7_facileforms_subrecords`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_finder_filters`
--
ALTER TABLE `f4kq7_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `f4kq7_finder_links`
--
ALTER TABLE `f4kq7_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`(100)), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `f4kq7_finder_links_terms0`
--
ALTER TABLE `f4kq7_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms1`
--
ALTER TABLE `f4kq7_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms2`
--
ALTER TABLE `f4kq7_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms3`
--
ALTER TABLE `f4kq7_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms4`
--
ALTER TABLE `f4kq7_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms5`
--
ALTER TABLE `f4kq7_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms6`
--
ALTER TABLE `f4kq7_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms7`
--
ALTER TABLE `f4kq7_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms8`
--
ALTER TABLE `f4kq7_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_terms9`
--
ALTER TABLE `f4kq7_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_termsa`
--
ALTER TABLE `f4kq7_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_termsb`
--
ALTER TABLE `f4kq7_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_termsc`
--
ALTER TABLE `f4kq7_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_termsd`
--
ALTER TABLE `f4kq7_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_termse`
--
ALTER TABLE `f4kq7_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_links_termsf`
--
ALTER TABLE `f4kq7_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `f4kq7_finder_taxonomy`
--
ALTER TABLE `f4kq7_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `f4kq7_finder_taxonomy_map`
--
ALTER TABLE `f4kq7_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `f4kq7_finder_terms`
--
ALTER TABLE `f4kq7_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indices de la tabla `f4kq7_finder_terms_common`
--
ALTER TABLE `f4kq7_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `f4kq7_finder_tokens`
--
ALTER TABLE `f4kq7_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indices de la tabla `f4kq7_finder_tokens_aggregate`
--
ALTER TABLE `f4kq7_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `f4kq7_finder_types`
--
ALTER TABLE `f4kq7_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `f4kq7_languages`
--
ALTER TABLE `f4kq7_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `f4kq7_menu`
--
ALTER TABLE `f4kq7_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `f4kq7_menu_types`
--
ALTER TABLE `f4kq7_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `f4kq7_messages`
--
ALTER TABLE `f4kq7_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `f4kq7_messages_cfg`
--
ALTER TABLE `f4kq7_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `f4kq7_modules`
--
ALTER TABLE `f4kq7_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `f4kq7_modules_menu`
--
ALTER TABLE `f4kq7_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `f4kq7_newsfeeds`
--
ALTER TABLE `f4kq7_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `f4kq7_overrider`
--
ALTER TABLE `f4kq7_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f4kq7_postinstall_messages`
--
ALTER TABLE `f4kq7_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `f4kq7_redirect_links`
--
ALTER TABLE `f4kq7_redirect_links`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_old_url` (`old_url`(100)), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indices de la tabla `f4kq7_schemas`
--
ALTER TABLE `f4kq7_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `f4kq7_session`
--
ALTER TABLE `f4kq7_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indices de la tabla `f4kq7_tags`
--
ALTER TABLE `f4kq7_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`(100)), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`(100)), ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `f4kq7_template_styles`
--
ALTER TABLE `f4kq7_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indices de la tabla `f4kq7_ucm_base`
--
ALTER TABLE `f4kq7_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `f4kq7_ucm_content`
--
ALTER TABLE `f4kq7_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`(100)), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`(100)), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`(100)), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `f4kq7_ucm_history`
--
ALTER TABLE `f4kq7_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `f4kq7_updates`
--
ALTER TABLE `f4kq7_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `f4kq7_update_sites`
--
ALTER TABLE `f4kq7_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `f4kq7_update_sites_extensions`
--
ALTER TABLE `f4kq7_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `f4kq7_usergroups`
--
ALTER TABLE `f4kq7_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `f4kq7_users`
--
ALTER TABLE `f4kq7_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`(100)), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indices de la tabla `f4kq7_user_keys`
--
ALTER TABLE `f4kq7_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `f4kq7_user_notes`
--
ALTER TABLE `f4kq7_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `f4kq7_user_profiles`
--
ALTER TABLE `f4kq7_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `f4kq7_user_usergroup_map`
--
ALTER TABLE `f4kq7_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `f4kq7_viewlevels`
--
ALTER TABLE `f4kq7_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indices de la tabla `f4kq7_wf_profiles`
--
ALTER TABLE `f4kq7_wf_profiles`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `f4kq7_assets`
--
ALTER TABLE `f4kq7_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT de la tabla `f4kq7_banners`
--
ALTER TABLE `f4kq7_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_banner_clients`
--
ALTER TABLE `f4kq7_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_categories`
--
ALTER TABLE `f4kq7_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `f4kq7_contact_details`
--
ALTER TABLE `f4kq7_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_content`
--
ALTER TABLE `f4kq7_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `f4kq7_content_types`
--
ALTER TABLE `f4kq7_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `f4kq7_cwgears`
--
ALTER TABLE `f4kq7_cwgears`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT de la tabla `f4kq7_cwgears_schedule`
--
ALTER TABLE `f4kq7_cwgears_schedule`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `f4kq7_djimageslider`
--
ALTER TABLE `f4kq7_djimageslider`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `f4kq7_extensions`
--
ALTER TABLE `f4kq7_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10028;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_compmenus`
--
ALTER TABLE `f4kq7_facileforms_compmenus`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_elements`
--
ALTER TABLE `f4kq7_facileforms_elements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_forms`
--
ALTER TABLE `f4kq7_facileforms_forms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_integrator_criteria_fixed`
--
ALTER TABLE `f4kq7_facileforms_integrator_criteria_fixed`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_integrator_criteria_form`
--
ALTER TABLE `f4kq7_facileforms_integrator_criteria_form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_integrator_criteria_joomla`
--
ALTER TABLE `f4kq7_facileforms_integrator_criteria_joomla`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_integrator_items`
--
ALTER TABLE `f4kq7_facileforms_integrator_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_integrator_rules`
--
ALTER TABLE `f4kq7_facileforms_integrator_rules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_pieces`
--
ALTER TABLE `f4kq7_facileforms_pieces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_records`
--
ALTER TABLE `f4kq7_facileforms_records`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_scripts`
--
ALTER TABLE `f4kq7_facileforms_scripts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `f4kq7_facileforms_subrecords`
--
ALTER TABLE `f4kq7_facileforms_subrecords`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_finder_filters`
--
ALTER TABLE `f4kq7_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_finder_links`
--
ALTER TABLE `f4kq7_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_finder_taxonomy`
--
ALTER TABLE `f4kq7_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `f4kq7_finder_terms`
--
ALTER TABLE `f4kq7_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_finder_types`
--
ALTER TABLE `f4kq7_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_languages`
--
ALTER TABLE `f4kq7_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `f4kq7_menu`
--
ALTER TABLE `f4kq7_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT de la tabla `f4kq7_menu_types`
--
ALTER TABLE `f4kq7_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `f4kq7_messages`
--
ALTER TABLE `f4kq7_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_modules`
--
ALTER TABLE `f4kq7_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `f4kq7_newsfeeds`
--
ALTER TABLE `f4kq7_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_overrider`
--
ALTER TABLE `f4kq7_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT de la tabla `f4kq7_postinstall_messages`
--
ALTER TABLE `f4kq7_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `f4kq7_redirect_links`
--
ALTER TABLE `f4kq7_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_tags`
--
ALTER TABLE `f4kq7_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `f4kq7_template_styles`
--
ALTER TABLE `f4kq7_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `f4kq7_ucm_content`
--
ALTER TABLE `f4kq7_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_ucm_history`
--
ALTER TABLE `f4kq7_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT de la tabla `f4kq7_updates`
--
ALTER TABLE `f4kq7_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `f4kq7_update_sites`
--
ALTER TABLE `f4kq7_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `f4kq7_usergroups`
--
ALTER TABLE `f4kq7_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `f4kq7_users`
--
ALTER TABLE `f4kq7_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `f4kq7_user_keys`
--
ALTER TABLE `f4kq7_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_user_notes`
--
ALTER TABLE `f4kq7_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `f4kq7_viewlevels`
--
ALTER TABLE `f4kq7_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `f4kq7_wf_profiles`
--
ALTER TABLE `f4kq7_wf_profiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
