-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 07 2014 г., 15:24
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `joomla`
--

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_assets`
--

CREATE TABLE IF NOT EXISTS `y18x3_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `y18x3_assets`
--

INSERT INTO `y18x3_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 107, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 52, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 53, 54, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 55, 56, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 57, 58, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 59, 60, 1, 'com_login', 'com_login', '{}'),
(13, 1, 61, 62, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 63, 64, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 65, 66, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 67, 68, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 69, 70, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 71, 72, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 73, 76, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 77, 78, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 79, 80, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 81, 82, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 83, 84, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 85, 88, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 89, 92, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 93, 94, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 29, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 74, 75, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 90, 91, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 86, 87, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 95, 96, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 97, 98, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 99, 100, 1, 'com_zoo', 'com_zoo', '{}'),
(36, 1, 101, 102, 1, 'com_nivosliderpro', 'com_nivosliderpro', '{}'),
(37, 38, 31, 32, 3, 'com_content.article.1', 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 8, 30, 37, 2, 'com_content.category.8', 'Новости', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(39, 8, 38, 45, 2, 'com_content.category.9', 'Статьи', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(40, 39, 39, 40, 3, 'com_content.article.2', 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 38, 33, 34, 3, 'com_content.article.3', 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 38, 35, 36, 3, 'com_content.article.4', 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 1, 103, 104, 1, 'com_foxcontact', 'com_foxcontact', '{}'),
(44, 39, 41, 42, 3, 'com_content.article.5', 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 39, 43, 44, 3, 'com_content.article.6', 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 27, 19, 20, 3, 'com_content.article.7', 'Анализы на дому', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 27, 21, 22, 3, 'com_content.article.8', 'Рассчитать заказ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 50, 49, 50, 3, 'com_content.article.9', 'Анализ крови', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 50, 47, 48, 3, 'com_content.article.10', 'Анализ днк', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 8, 46, 51, 2, 'com_content.category.10', 'Подготовка к анализам', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(51, 1, 105, 106, 1, 'com_jcomments', 'jcomments', '{}'),
(52, 27, 23, 24, 3, 'com_content.article.11', 'Отзывы и предетзии', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 27, 25, 26, 3, 'com_content.article.12', 'АдминПанель', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 27, 27, 28, 3, 'com_content.article.13', 'Часто задаваемые вопросы', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_associations`
--

CREATE TABLE IF NOT EXISTS `y18x3_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_banners`
--

CREATE TABLE IF NOT EXISTS `y18x3_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_banner_clients`
--

CREATE TABLE IF NOT EXISTS `y18x3_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `y18x3_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_categories`
--

CREATE TABLE IF NOT EXISTS `y18x3_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `y18x3_categories`
--

INSERT INTO `y18x3_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 38, 1, 13, 14, 1, 'novosti', 'com_content', 'Новости', 'novosti', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 232, '2014-06-24 11:32:51', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 39, 1, 15, 16, 1, 'stati', 'com_content', 'Статьи', 'stati', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 232, '2014-06-24 11:33:08', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 50, 1, 17, 18, 1, 'podgotovka-k-analizam', 'com_content', 'Подготовка к анализам', 'podgotovka-k-analizam', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 232, '2014-08-05 10:46:39', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_contact_details`
--

CREATE TABLE IF NOT EXISTS `y18x3_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_content`
--

CREATE TABLE IF NOT EXISTS `y18x3_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `y18x3_content`
--

INSERT INTO `y18x3_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 37, 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', 'material', '', '<p>С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</p>', '', 1, 0, 0, 8, '2014-06-24 10:49:10', 232, '', '2014-07-08 12:41:58', 232, 0, '0000-00-00 00:00:00', '2014-06-24 10:49:10', '0000-00-00 00:00:00', '{"image_intro":"images\\/med_tech.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 2, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 40, 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', 'stati', '', '<p>С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</p>', '', 1, 0, 0, 9, '2014-06-24 11:40:29', 232, '', '2014-07-08 12:44:35', 232, 0, '0000-00-00 00:00:00', '2014-06-24 11:40:29', '0000-00-00 00:00:00', '{"image_intro":"images\\/uzi.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 41, 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', 'novost-2', '', '<p>С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</p>', '', 1, 0, 0, 8, '2014-06-24 11:55:35', 232, '', '2014-07-08 12:41:01', 232, 0, '0000-00-00 00:00:00', '2014-06-24 11:55:35', '0000-00-00 00:00:00', '{"image_intro":"images\\/powered_by.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 42, 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', 'material-december', '', '<p>С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</p>', '', 1, 0, 0, 8, '2013-12-24 16:22:26', 232, '', '2014-07-08 12:42:30', 232, 0, '0000-00-00 00:00:00', '2014-06-24 13:22:52', '0000-00-00 00:00:00', '{"image_intro":"images\\/razchitat.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 0, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 44, 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', 'stati2', '', '<p>С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</p>', '', 1, 0, 0, 9, '2014-07-08 12:46:25', 232, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-07-08 12:46:25', '0000-00-00 00:00:00', '{"image_intro":"images\\/uzi.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 45, 'Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки', 'stati3', '', '<p>С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</p>', '', 1, 0, 0, 9, '2014-07-08 12:48:41', 232, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-07-08 12:48:41', '0000-00-00 00:00:00', '{"image_intro":"images\\/med_tech.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 46, 'Анализы на дому', 'analizy-na-domu', '', '<p>Анализы на дому – это лучший вариант сдачи анализов для людей, которые ценят комфортный и быстрый сервис. Преимущества данного способа взятия биологического материала перед традиционными методами неоспоримы:</p>\r\n<ul id="analizy_na_domy">\r\n<li>во-первых, вы бережете здоровье;</li>\r\n<li>во-вторых, экономите время.</li>\r\n</ul>\r\n<p>Даже если пациент в состоянии самостоятельно проследовать в лабораторию для сдачи биоматериала, он не лишен контакта с другими пациентами, которые пришли в лабораторию за тем же. Уже хотя бы по этой причине вам стоит выбрать удобный, безопасный и безболезненный способ сдачи анализов на дому.</p>\r\n<p> </p>\r\n<div id="error_information"> </div>\r\n<div id="forma_zakaza">{loadposition fox_analiz_at_home}</div>\r\n<div id="uslugi_block">\r\n<div id="uslugi">\r\n<div class="names">\r\n<div id="title">Наименование услуги:</div>\r\n<div>Стоимость:</div>\r\n</div>\r\n<div class="how_murch_cost">\r\n<div>Взятие биоматериала на дому (Московский регион)</div>\r\n<div>1 000 руб.</div>\r\n</div>\r\n<div class="how_murch_cost">\r\n<div>Доставка результатов (Московский регион)</div>\r\n<div>800 руб.</div>\r\n</div>\r\n</div>\r\n<a class="list_biomaterial" href="#ogranicheniya">Список ограничений по взятию биоматериала на дому</a>\r\n<div id="ogranicheniya">\r\n<ul>\r\n<li>Ограничения 1</li>\r\n<li>Ограничения 2</li>\r\n<li>Ограничения 3</li>\r\n</ul>\r\n</div>\r\n<div class="for_peoples_download"><a id="print" href="#">Распечатать</a> / <a id="download" href="#">Скачать</a></div>\r\n</div>\r\n<div class="analiz_child">\r\n<h2>Анализы на дому детям и взрослым</h2>\r\n<p>Особенно важно выбрать правильное место взятия биоматериала, когда анализы необходимо сдавать маленьким детям. Все родители хотят оградить своих детей от долгих поездок в поликлинику, длинных очередей и инфицированных людей. Также каждая мать и каждый отец желают уберечь ребенка от стрессов, которые могут быть связаны с незнакомой обстановкой и множеством новых людей. Ваше решение проблемы – медсестра на дом. Москва, Московская область и регионы могут рассчитывать на нашу поддержку в любой день недели. Убедитесь на практике, что намного легче и безопаснее сдавать анализы детям на дому в комфортной для них обстановке.</p>\r\n<p>Отдельная ситуация складывается в случае, если заболевший член семьи ослаб и не может сам отправиться в лабораторию. Да и зачем лишний раз тревожить больного, мешая его отдыху и выздоровлению? Вызов медсестры на дом (Москва, Московская область и регионы) дает возможность сдать в тот же день анализы на дому, не причиняя неудобств пациенту.</p>\r\n<p>Сдать анализ крови на дому или прямо на работе удобно также занятым людям. Прежде всего, это сбережет время и нервы и, вместе с тем, даст возможность своевременно проверить состояние здоровья. Ведь с выездом медсестры отпадает необходимость брать отгулы и перестраивать расписание.</p>\r\n<p>Напомним, что без сдачи анализов не обходится ни одно лечение серьезных заболеваний. Кроме того, некоторые анализы необходимо сдавать в профилактических целях. Лабораторные исследования биологического материала помогают своевременно выявить болезнь и определить правильные пути ее лечения.</p>\r\n</div>', '', 1, 0, 0, 2, '2014-07-28 06:31:28', 232, '', '2014-08-07 12:21:07', 232, 232, '2014-08-07 12:21:07', '2014-07-28 06:31:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 4, '', '', 1, 42, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 47, 'Рассчитать заказ', 'rasschitat-zakaz', '', '<div class="add-other-order"><a href="http://localhost/dnkom3/">Добавить исследования</a></div>\r\n<div class="message"> </div>\r\n<div id="count_order_module">\r\n<div class="spisok-issledovaniy">Уточните список выбранных исследований <span><span>1</span> ШАГ</span></div>\r\n<div class="full_description list-issledovaniy">\r\n<div>Код</div>\r\n<div>Наименование</div>\r\n<div>Производитель реактивов</div>\r\n<div>Срок исполнения</div>\r\n<div>Цена в руб.</div>\r\n<div>Удалить</div>\r\n<div class="inner"> </div>\r\n</div>\r\n<div class="spisok-issledovaniy">Выберите платную услугу (взятие биоматериала)<span><span>2</span> ШАГ</span></div>\r\n<div class="full_description vyberite-uslugu">\r\n<div>Наименование</div>\r\n<div>Цена в руб.</div>\r\n<div> </div>\r\n<div class="inner"> </div>\r\n</div>\r\n<div class="spisok-issledovaniy">Выберите скидку<span><span>3</span> ШАГ</span></div>\r\n<div class="full_description vyberite-skidku">\r\n<div> </div>\r\n<div>Наименование</div>\r\n<div>Размер скидки</div>\r\n<div>Выбрать</div>\r\n<div class="inner">\r\n<div class="item_object">\r\n<div>Без скидки</div>\r\n<div> </div>\r\n<div>0%</div>\r\n<div><input type="radio" name="skidka" value="0" checked="checked" /></div>\r\n</div>\r\n<div class="item_object">\r\n<div>Возрастная</div>\r\n<div>Пациентам младше 25 и старше 55 лет <br /> (по информации о дате рождения)</div>\r\n<div>10%</div>\r\n<div><input type="radio" name="skidka" value="10" /></div>\r\n</div>\r\n<div class="item_object">\r\n<div>Дисконтная накопительная карта 5</div>\r\n<div>Держатели дисконтных карт при предъявлении карты (выдается при единовременной оплате лабораторных услуг на сумму более 2500 рублей)</div>\r\n<div>5%</div>\r\n<div><input type="radio" name="skidka" value="5" /></div>\r\n</div>\r\n<div class="item_object">\r\n<div>Дисконтная накопительная карта 10</div>\r\n<div>Держатели дисконтных карт при предъявлении карты (выдается при единовременной оплате лабораторных услуг на сумму более 12000 рублей)</div>\r\n<div>10%</div>\r\n<div><input type="radio" name="skidka" value="10" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="spisok-issledovaniy">Выберите платную услугу (взятие биоматериала)<span><span>4</span> ШАГ</span></div>\r\n<div class="full_description vyberite-platnuy-uslugu">\r\n<div>Наименование</div>\r\n<div>Цена в руб.</div>\r\n<div> </div>\r\n<div class="inner">\r\n<div class="item_object">\r\n<div>Взятие биоматериала на дому (Моссковский регион)</div>\r\n<div>1 000 руб.</div>\r\n<div><input title="1000" type="checkbox" /></div>\r\n</div>\r\n<div class="item_object">\r\n<div>Доставка результатов (Моссковский регион)</div>\r\n<div>538 руб.</div>\r\n<div><input title="538" type="checkbox" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="spisok-issledovaniy">Стоимость заказа</div>\r\n<div class="full_description stoimost-zakaza">\r\n<div class="inner">\r\n<div>Сумма:</div>\r\n<div>Скидка:</div>\r\n<div>ИТОГО:</div>\r\n</div>\r\n</div>\r\n<div class="for_form_redactor">\r\n<div class="clear_form">Очистить форму</div>\r\n<div class="doc_form">Распечатать</div>\r\n</div>\r\n<div class="count_order_email">{loadposition count_order_email_module}</div>\r\n<p>{loadposition count_order_module}</p>\r\n</div>', '', 1, 0, 0, 2, '2014-08-01 12:19:09', 232, '', '2014-08-05 08:10:29', 232, 232, '2014-08-06 12:22:16', '2014-08-01 12:19:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 35, 0, 3, '', '', 1, 363, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 48, 'Анализ крови', 'analiz-krovi', '', '<p>Описание анлиза крови</p>', '', 1, 0, 0, 10, '2014-08-05 10:42:43', 232, '', '2014-08-05 10:47:14', 232, 0, '0000-00-00 00:00:00', '2014-08-05 10:42:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 49, 'Анализ днк', 'analiz-dnk', '', '<p>Описание анализа днк</p>', '', 1, 0, 0, 10, '2014-08-05 10:43:01', 232, '', '2014-08-05 10:46:59', 232, 0, '0000-00-00 00:00:00', '2014-08-05 10:43:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 52, 'Отзывы и предетзии', 'otzyvy-i-predetzii', '', '<p>фыв фыв фыв фыв фыв фы фы</p>\r\n<p>{jcomments on}</p>', '', 1, 0, 0, 2, '2014-08-05 11:38:19', 232, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-08-05 11:38:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 343, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 53, 'АдминПанель', 'adminpanel', '', '<p>Панель входа администратора</p>\r\n<p>{loadposition admin_login_module}</p>', '', 1, 0, 0, 2, '2014-08-07 07:30:13', 232, '', '2014-08-07 07:38:48', 232, 0, '0000-00-00 00:00:00', '2014-08-07 07:30:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 1, '', '', 1, 67, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 54, 'Часто задаваемые вопросы', 'chasto-zadavaemye-voprosy', '', '<p><span style="line-height: 1.3em;">{jcomments on}</span></p>', '', 1, 0, 0, 2, '2014-08-07 09:56:17', 232, '', '2014-08-07 10:21:49', 232, 232, '2014-08-07 12:20:35', '2014-08-07 09:56:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 82, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `y18x3_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_content_rating`
--

CREATE TABLE IF NOT EXISTS `y18x3_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `y18x3_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_extensions`
--

CREATE TABLE IF NOT EXISTS `y18x3_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10046 ;

--
-- Дамп данных таблицы `y18x3_extensions`
--

INSERT INTO `y18x3_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"1","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `y18x3_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 0, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 0, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.19","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"June 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.22","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 1, 1, 1, 0, '{"legacy":false,"name":"Russian","type":"language","creationDate":"2012-06-20","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.6.1","description":"Russian language pack (administrator) for Joomla! 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian","type":"language","creationDate":"2012-06-20","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.6.1","description":"Russian language pack (site) for Joomla! 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'dnkom', 'template', 'dnkom', '', 0, 1, 1, 0, '{"legacy":false,"name":"dnkom","type":"template","creationDate":"24-09-2013","author":"sofi-elen","copyright":"Copyright (C) 2013","authorEmail":"asd@asd.ru","authorUrl":"","version":"1.0","description":"dnkom","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'MOD_JLGROUPPRO', 'module', 'mod_jlgrouppro', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_JLGROUPPRO","type":"module","creationDate":"2013-07-10","author":"JoomLine","copyright":"Copyright 2013 JoomLine.net All rights reserved!","authorEmail":"sale@joomline.ru","authorUrl":"http:\\/\\/joomlamoduli.ru\\/","version":"1.3","description":"MOD_JLGROUPPRO_XML_DESCRIPTION","group":""}', '{"showvkontakte":"1","group_id":"17291036","mode":"0","wide":"0","showok":"1","group_id_ok":"50582132228315","showfacebook":"1","fbappid":"","group_id_fb":"joomline","fblang":"ru_RU","googleid":"113837355987775206344","googlelang":"ru","orders":"1,2,3,4","width":"300","height":"300","typeviewercss":"1","typeviewerjq":"1","typeviewerbs":"1","typeviewernojq":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'com_zoo', 'component', 'com_zoo', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_zoo","type":"component","creationDate":"March 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.6","description":"ZOO component for Joomla 2.5+ developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'ZOO Category', 'module', 'mod_zoocategory', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Category","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Category module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","depth":"0","add_count":"0","menu_item":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'ZOO Comment', 'module', 'mod_zoocomment', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Comment","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Comment module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","subcategories":"0","count":"10","show_avatar":"1","avatar_size":"40","show_author":"1","show_meta":"1","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'ZOO Item', 'module', 'mod_zooitem', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Item","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.1","description":"Item module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","layout":"","media_position":"left","application":"","subcategories":"0","count":"4","order":"_itemname","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'ZOO Quick Icons', 'module', 'mod_zooquickicon', '', 1, 1, 2, 0, '{"legacy":false,"name":"ZOO Quick Icons","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Quick Icons module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10009, 'ZOO Tag', 'module', 'mod_zootag', '', 0, 1, 0, 0, '{"legacy":false,"name":"ZOO Tag","type":"module","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Tag module for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"theme":"","application":"","subcategories":"0","count":"10","order":"alpha","menu_item":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Content - ZOO Shortcode', 'plugin', 'zooshortcode', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - ZOO Shortcode","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Shortcode plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com) Usage: {zooitem OR zoocategory: ID OR alias} Optionally: {zooitem: ID text: MYTEXT}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Smart Search - ZOO', 'plugin', 'zoosmartsearch', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"Smart Search - ZOO","type":"plugin","creationDate":"Febuary 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"2.5.0","description":"Smart Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Search - ZOO', 'plugin', 'zoosearch', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"Search - ZOO","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Search plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"search_fulltext":"0","search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'System - ZOO Event', 'plugin', 'zooevent', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - ZOO Event","type":"plugin","creationDate":"October 2012","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.0.0","description":"Event plugin for ZOO developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'zoo', 'package', 'pkg_zoo', '', 0, 1, 1, 0, '{"legacy":false,"name":"ZOO Package","type":"package","creationDate":"March 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.6","description":"ZOO component and extensions for Joomla 2.5+ developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'JBZoo App', 'file', 'file_jbuniversal', '', 0, 1, 0, 0, '{"legacy":false,"name":"JBZoo App","type":"file","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com,  All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"JBZoo App is universal Joomla CCK, application for YooTheme Zoo component","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'System - JBZoo (events)', 'plugin', 'jbzoo', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - JBZoo (events)","type":"plugin","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com, All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"Event plugin for JBZoo App","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'JBZoo Cart', 'module', 'mod_jbzoo_basket', '', 0, 1, 0, 0, '{"legacy":false,"name":"JBZoo Cart","type":"module","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com, All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"JBZOO_CART_MODULE_DESCRIPTION","group":""}', '{"app_id":"0","currency":"RUR","menuitem":"0","items_show":"1","lots_show":"1","summa_show":"1","cancel_show":"1","link_show":"1","cache":"0","owncache":"0","cache_time":"0","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'JBZoo Category List', 'module', 'mod_jbzoo_category', '', 0, 1, 0, 0, '{"legacy":false,"name":"JBZoo Category List","type":"module","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com, All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"JBZOO_CATEGORY_MODULE_DESCRIPTION","group":""}', '{"application":"0:0","type_id":"false","category_limit":"0","item_order":"priority","items_limit":"4","category_order":"priority","category_display_image":"1","category_image_width":"100","category_image_height":"100","category_image_align":"left","category_display_description":"1","display_count_items":"1","display_items":"1","items_image_align":"left","layout":"default","item_layout":"default","category_display_border":"1","moduleclass_sfx":"","cache":"","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'JBZoo Search List', 'module', 'mod_jbzoo_props', '', 0, 1, 0, 0, '{"legacy":false,"name":"JBZoo Search List","type":"module","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com, All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"JBZOO_SEARCH_LIST_MODULE_DESCRIPTION","group":""}', '{"application":"","type":"","item_layout":"default","menuitem":"0","moduleclass_sfx":"","limit":"20","depend":"1","count":"1","order":"none","cache":"1","cache_time":"900","cachemode":"safeuri"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'JBZoo Search', 'module', 'mod_jbzoo_search', '', 0, 1, 0, 0, '{"legacy":false,"name":"JBZoo Search","type":"module","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com, All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"JBZOO_SEARCH_MODULE_DESCRIPTION","group":""}', '{"application":"","type":"","item_layout":"default","menuitem":"0","moduleclass_sfx":"","logic":"and","logic_show":"1","pages":"20","pages_show":"1","order_show":"1","order_list":"","order_mode":"s","order_default":"","button_submit_show":"1","button_reset_show":"0","autosubmit":"0","exact":"1","cache":"0","owncache":"0","cache_time":"0","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'jbzoo', 'package', 'pkg_jbzoo', '', 0, 1, 1, 0, '{"legacy":false,"name":"JBZoo Package","type":"package","creationDate":"2013 12","author":"JBZoo.com","copyright":"Copyright (C) JBZoo.com,  All rights reserved.","authorEmail":"admin@jbzoo.com","authorUrl":"http:\\/\\/jbzoo.com","version":"2.1.1 Pro","description":"JBZoo App is universal Joomla CCK, application for YooTheme Zoo component. Developed by JBZoo.com","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'PHP Module', 'module', 'mod_php', '', 0, 1, 0, 0, '{"legacy":false,"name":"PHP Module","type":"module","creationDate":"Jun 17, 2008","author":"Fiji Web Design","copyright":"(C) 2004 Fiji Web Design","authorEmail":"gabe@fijiwebdesign.com","authorUrl":"www.fijiwebdesign.com","version":"1.0.Beta","description":"\\n  \\t\\n  \\tThis module allows you to add any html\\/javascript\\/css and PHP to a Joomla or Mambo module position. It can be used to add affiliate code, copy and paste codes, google adsense etc. You can copy the module using Joomla''s module copy feature, to create multiple versions with different content. This is module is based on mod_html so has all the mod_html features, plus the ability to include php code. You can find some copy and paste code exmaples here: <a href=\\"http:\\/\\/fijiwebdesign.com\\/content\\/view\\/94\\/55\\/1\\/1\\/\\" target=\\"_blank\\">http:\\/\\/fijiwebdesign.com\\/content\\/view\\/94\\/55\\/1\\/1\\/<\\/a>\\n\\t\\n  ","group":""}', '{"moduleclass_sfx":"","cache":"0","@spacer":"","php":"","eval_php":"1","discovery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Unite Nivo Slider Pro', 'module', 'mod_unite_nivopro', '', 0, 1, 0, 0, '{"legacy":false,"name":"Unite Nivo Slider Pro","type":"module","creationDate":"May 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"3.0.4","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;\\">\\n\\t\\t\\t<p><strong>Unite Nivo Slider PRO<\\/strong> module. Put nivo slider on any page. All the sliders configuration located in Nivo Slider Pro Component.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tFor support please turn to <a href=\\"http:\\/\\/unitecms.net\\/free-joomla-extensions\\/unite-nivo-slider-pro\\/nivo-slider-pro-support\\" target=\\"_blank\\">Nivo Slider Support Page<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 3.0.4<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":""}', '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'com_nivosliderpro', 'component', 'com_nivosliderpro', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_nivosliderpro","type":"component","creationDate":"May 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"3.0.5","description":"\\n\\t\\tUnite Nivo Slider Pro extension and module installation success!\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'MOD_JUNEWSULTRA', 'module', 'mod_junewsultra', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_JUNEWSULTRA","type":"module","creationDate":"09.12.2012","author":"Denys Nosov","copyright":"This module is licensed under a Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 License.","authorEmail":"denys@joomla-ua.org","authorUrl":"http:\\/\\/www.joomla-ua.org","version":"4.5.5","description":"MOD_JUNEWS_XML_DESCRIPTION","group":""}', '{"display_article":"0","articleid":"","count":"5","count_skip":"0","show_featured":"","catid":"","category_filtering_type":"1","show_child_category_articles":"1","levels":"999","date_filtering":"0","date_field":"a.created","relative_date":"0","custom_days":"30","ordering":"created_desc","user_id":"0","cache":"1","cache_time":"900","cachemode":"static","jquery":"0","bootstrap_js":"0","bootstrap_css":"0","empty_mod":"0","cssstyle":"1","moduleclass_sfx":"","show_title":"1","title_limit":"0","title_limit_mode":"1","title_limit_count":"20","end_limit_title":"...","title_prepare":"0","content_prepare":"0","show_intro":"1","clear_tag":"1","allowed_intro_tags":"","li":"1","lmttext":"1","introtext_limit":"20","end_limit_introtext":"...","show_full":"0","clear_tag_full":"1","allowed_full_tags":"","li_full":"1","lmttext_full":"1","fulltext_limit":"20","end_limit_fulltext":"...","juauthor":"0","read_more":"0","rmtext":"Read more...","show_date":"1","data_format":"d.m.Y","df_d":"d","df_m":"m","df_y":"Y","showcat":"0","showcatlink":"0","showHits":"0","showRating":"0","showRatingCount":"0","all_in":"0","all_in_position":"0","item_heading":"span","class_all_in":"","custom_heading":"0","text_all_in":"","link_all_in":"","text_all_in2":"","link_menuitem":"","pik":"1","image_source":"0","imglink":"1","tips":"1","imageWidth":"70","imageHeight":"70","thumb_width":"1","source_rectangle":"0","sx":"0","sy":"0","sw":"","sh":"","Zoom_Crop":"1","thumb_filtercolor":"0","colorized":"25","colorpicker":"#0000ff","thumb_th_seting":"10","thumb_filters":"1","thumb_unsharp":"1","thumb_unsharp_amount":"80","thumb_unsharp_radius":"1","thumb_unsharp_threshold":"3","thumb_blur":"0","thumb_blur_seting":"1","thumb_brit":"0","thumb_brit_seting":"50","thumb_cont":"0","thumb_cont_seting":"50","defaultimg":"1","noimage":"","img_cache":"cache","cache_maxage_img":"30","cache_maxsize_img":"10","cache_maxfiles_img":"200","use_imagemagick":"1","imagemagick_path":"","img_ext":"jpg","link_enabled":"1","use_comments":"0","select_comments":"jcomments","youtube_img_show":"1","gallery":"1","copy":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'JUNewsUltra - List template', 'file', 'ju-ul-li-list', '', 0, 1, 0, 0, '{"legacy":false,"name":"JUNewsUltra - List template","type":"file","creationDate":"20.11.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"denys@joomla-ua.org","authorUrl":"www.joomla-ua.org","version":"3.3","description":"List template for module JUNewsUltra","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'JUNewsUltra - Default template', 'file', 'default', '', 0, 1, 0, 0, '{"legacy":false,"name":"JUNewsUltra - Default template","type":"file","creationDate":"20.11.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved","authorEmail":"denys@joomla-ua.org","authorUrl":"www.joomla-ua.org","version":"3.4","description":"Default template for module JUNewsUltra","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'JUNewsUltra - Bootstrap Highly customizable template', 'file', 'bootstrap-highly-customizable', '', 0, 1, 0, 0, '{"legacy":false,"name":"JUNewsUltra - Bootstrap Highly customizable template","type":"file","creationDate":"22.11.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2012 Joomla! Ukraine. All rights reserved","authorEmail":"denys@joomla-ua.org","authorUrl":"www.joomla-ua.org","version":"1.4","description":"Bootstrap Highly customizable template for module JUNewsUltra","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'JUNewsUltra - Bootstrap Highly customizable template', 'file', 'bootstrap-carousel', '', 0, 1, 0, 0, '{"legacy":false,"name":"JUNewsUltra - Bootstrap Highly customizable template","type":"file","creationDate":"22.11.2012","author":"Joomla! Ukraine","copyright":"Copyright (C) 2012 Joomla! Ukraine. All rights reserved","authorEmail":"denys@joomla-ua.org","authorUrl":"www.joomla-ua.org","version":"1.2","description":"Bootstrap Highly customizable template for module JUNewsUltra","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'junewsultra', 'package', 'pkg_junewsultra', '', 0, 1, 1, 0, '{"legacy":false,"name":"MOD_JUNEWSULTRA","type":"package","creationDate":"09.12.2012","author":"Denys Nosov, Joomla! Ukraine","copyright":"(C) 2009-2012 Denys Nosov, Joomla! Ukraine","authorEmail":"denys@joomla-ua.org","authorUrl":"http:\\/\\/www.joomla-ua.org","version":"4.5.5","description":"MOD_JUNEWS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'Fox Contact', 'module', 'mod_foxcontact', '', 0, 1, 0, 0, '{"legacy":false,"name":"Fox Contact","type":"module","creationDate":"Unknown","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"2.0.19","description":"MOD_FOXCONTACT_DESCRIPTION","group":""}', '{"form_width":"100","form_unit":"%","customhtml0display":"1","customhtml0order":"-1000","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"0","labelswidth":"230","labelsunit":"px","sender0display":"2","sender0order":"5","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"85","senderunit":"%","text0display":"1","text0order":"15","text1display":"0","text1order":"20","text2display":"0","text2order":"25","text3display":"0","text3order":"30","text4display":"0","text4order":"35","text5display":"0","text5order":"40","text6display":"0","text6order":"45","text7display":"0","text7order":"50","text8display":"0","text8order":"55","text9display":"0","text9order":"60","textwidth":"85","textunit":"%","dropdown0display":"1","dropdown0order":"65","dropdown1display":"0","dropdown1order":"70","dropdown2display":"0","dropdown2order":"75","dropdownwidth":"85","dropdownunit":"%","textarea0display":"1","textarea0order":"80","textarea1display":"0","textarea1order":"85","textarea2display":"0","textarea2order":"90","textareawidth":"85","textareaheight":"180","textareaunit":"%","checkbox0display":"1","checkbox0order":"95","checkbox1display":"0","checkbox1order":"100","checkbox2display":"0","checkbox2order":"105","checkbox3display":"0","checkbox3order":"110","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","uploadmax_file_size":"10000","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittype":"0","submiticon":"","resetbutton":"0","resettype":"0","reseticon":"","email_sent_action":"0","email_sent_textdisplay":"1","copy_to_submitter":"1","email_copy_summary":"0","spam_check":"1","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","stylesheet":"neon.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'com_foxcontact', 'component', 'com_foxcontact', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_FOXCONTACT","type":"component","creationDate":"Unknown","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"2.0.19","description":"COM_FOXCONTACT_DESCRIPTION","group":""}', '{"adminemailfrom":{"select":"admin"},"adminemailreplyto":{"select":"submitter"},"submitteremailfrom":{"select":"admin"},"submitteremailreplyto":{"select":"admin"}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'PLG_SYSTEM_MODULESANYWHERE', 'plugin', 'modulesanywhere', 'system', 0, 1, 1, 0, '{"legacy":true,"name":"PLG_SYSTEM_MODULESANYWHERE","type":"plugin","creationDate":"April 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"2.0.3FREE","description":"PLG_SYSTEM_MODULESANYWHERE_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'PLG_EDITORS-XTD_MODULESANYWHERE', 'plugin', 'modulesanywhere', 'editors-xtd', 0, 1, 1, 0, '{"legacy":true,"name":"PLG_EDITORS-XTD_MODULESANYWHERE","type":"plugin","creationDate":"April 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"2.0.3FREE","description":"PLG_EDITORS-XTD_MODULESANYWHERE_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'PLG_SYSTEM_NNFRAMEWORK', 'plugin', 'nnframework', 'system', 0, 1, 1, 0, '{"legacy":true,"name":"PLG_SYSTEM_NNFRAMEWORK","type":"plugin","creationDate":"April 2012","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2012 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"12.4.3","description":"PLG_SYSTEM_NNFRAMEWORK_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'Special HTML', 'module', 'mod_specialhtml', '', 0, 1, 0, 0, '{"legacy":true,"name":"Special HTML","type":"module","creationDate":"03 February 2009","author":"Rony S Y Zebua - Member of camp26.biz","copyright":"2008-2009, www.camp26.biz","authorEmail":"ronysyz@gmail.com","authorUrl":"www.camp26.biz","version":"1.2","description":"MODULE : SPECIALHTML","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'Flexi Custom Code', 'module', 'mod_flexi_customcode', '', 0, 1, 0, 0, '{"legacy":false,"name":"Flexi Custom Code","type":"module","creationDate":"July 12th, 2012","author":"RBO Team","copyright":"RumahBelanja @ 2012 - Free Joomla Module","authorEmail":"rumahbelanja@gmail.com","authorUrl":"www.rumahbelanja.com","version":"1.3","description":"FLEXICUSTOMCODE","group":""}', '{"code_area":"","use_php":"1","userlevel":"1","clean_js":"1","clean_css":"1","clean_all":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'com_jcomments', 'component', 'com_jcomments', '', 1, 1, 0, 0, '{"legacy":false,"name":"JComments","type":"component","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"3.0.5","description":"JComments lets your users comment on content items.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'plg_content_jcomments', 'plugin', 'jcomments', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_CONTENT_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"show_frontpage":"1","enable_for_archived":"0","comments_count":"1","add_comments":"1","links_position":"1","readmore_link":"1","readmore_css_class":"readmore-link","comments_css_class":"comments-link","show_hits":"0","show_comments_event":"onAfterDisplayContent"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'plg_editors-xtd_jcommentson', 'plugin', 'jcommentson', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_jcommentson","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSON_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'plg_editors-xtd_jcommentsoff', 'plugin', 'jcommentsoff', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_jcommentsoff","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_EDITORS-XTD_JCOMMENTSOFF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'plg_search_jcomments', 'plugin', 'jcomments', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SEARCH_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'plg_system_jcomments', 'plugin', 'jcomments', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_SYSTEM_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"disable_template_css":"0","disable_error_reporting":"0","clear_rss":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'plg_user_jcomments', 'plugin', 'jcomments', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_USER_JCOMMENTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'plg_quickicon_jcomments', 'plugin', 'jcomments', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_jcomments","type":"plugin","creationDate":"01\\/08\\/2014","author":"smart","copyright":"Copyright 2006-2014 JoomlaTune.ru All rights reserved!","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0","description":"PLG_QUICKICON_JCOMMENTS_XML_DESCRIPTION","group":""}', '{"context":"mod_quickicon","displayedtext":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_filters`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
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
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `y18x3_finder_links`
--

INSERT INTO `y18x3_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(14, 'index.php?option=com_zoo&view=item&id=2', 'index.php?option=com_zoo&task=item&item_id=2&Itemid=118', 'ОТДЕЛЕНИЕ НА ТВЕРСКОЙ', '', '2014-07-08 15:20:07', '74f7389e3230a5226a82aab9368e80ac', 1, 0, 1, '*', '2014-07-02 07:32:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a393a2274766572736b617961223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d30382031323a32303a3032223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2230223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a34393a22696e6465782e7068702f6b6f6e74616b74792d6164726573612d692d75736c7567692f6974656d2f74766572736b617961223b733a31323a22656c656d656e745f64617461223b613a31373a7b693a303b733a31323a222030373a33302d31343a3330223b693a313b733a31313a2230373a33302d31303a3030223b693a323b733a36353a22d09c2e20d0a2d0b2d0b5d180d181d0bad0b0d18f2c20d183d0bb2e20d0a2d0b2d0b5d180d181d0bad0b0d18f2c20d0b4d0bed0bc20362c20d181d182d1802e2036223b693a333b733a313131373a22d092d0bed0bfd180d0bed181d18b2c20d0bad0b0d181d0b0d18ed189d0b8d0b5d181d18f20d0b7d0b4d0bed180d0bed0b2d18cd18f20d0b2d181d0b5d0b3d0b4d0b020d0bed181d182d180d0be20d0b2d181d182d0b0d18ed18220d182d0bed0bbd18cd0bad0be20d182d0bed0b3d0b4d0b02c20d0bad0bed0b3d0b4d0b020d0bed182d0bad0bbd0b0d0b4d18bd0b2d0b0d182d18c20d0bbd0b5d187d0b5d0bdd0b8d0b520d183d0b6d0b520d0bdd0b5d0bbd18cd0b7d18f2e20d09ad0b0d0ba20d0bfd180d0b0d0b2d0b8d0bbd0be2c20d18320d0b1d0bed0bbd18cd188d0b8d0bdd181d182d0b2d0b020d0b7d0b0d0b1d0bed0bbd0b5d0b2d0b0d0bdd0b8d0b920d0bdd0b020d180d0b0d0bdd0bdd0b8d18520d181d182d0b0d0b4d0b8d18fd18520d181d0b8d0bcd0bfd182d0bed0bcd18b20d0bed182d181d183d182d181d182d0b2d183d18ed1822e20d092d18bd18fd0b2d0b8d182d18c20d0bfd180d0b8d187d0b8d0bdd18320d0b1d0bed0bbd0b5d0b7d0bdd0b820d0b820d0b2d0bed0b2d180d0b5d0bcd18f20d0bdd0b0d187d0b0d182d18c20d18dd184d184d0b5d0bad182d0b8d0b2d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b52c20d0b220d18dd182d0bed0bc20d092d0b0d0bc20d0bfd0bed0bcd0bed0b6d0b5d18220d183d0bbd18cd182d180d0b0d0b7d0b2d183d0bad0bed0b2d0bed0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b52e20d09dd0b020d181d0b5d0b3d0bed0b4d0bdd18fd188d0bdd0b8d0b920d0b4d0b5d0bdd18c20d183d0bbd18cd182d180d0b0d0b7d0b2d183d0bad0bed0b2d0b0d18f20d0b4d0b8d0b0d0b3d0bdd0bed181d182d0b8d0bad0b020d18fd0b2d0bbd18fd0b5d182d181d18f20d0bed0b4d0bdd0b8d0bc20d0b8d0b720d181d0b0d0bcd18bd18520d0b2d0bed181d182d180d0b5d0b1d0bed0b2d0b0d0bdd0bdd18bd1852c20d182d0bed187d0bdd18bd18520d0b820d0b1d0b5d0b7d0bed0bfd0b0d181d0bdd18bd18520d0bcd0b5d182d0bed0b4d0bed0b220d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f20d0b1d0bed0bbd18cd188d0b8d0bdd181d182d0b2d0b020d0b7d0b0d0b1d0bed0bbd0b5d0b2d0b0d0bdd0b8d0b92e20d09cd0b5d182d0bed0b420d0a3d097d09820d188d0b8d180d0bed0bad0be20d0bfd180d0b8d0bcd0b5d0bdd18fd0b5d182d181d18f20d0b220d0bfd0b5d0b4d0b8d0b0d182d180d0b8d0b82c20d0bed0b1d189d0b5d0b920d182d0b5d180d0b0d0bfd0b8d0b82c20d0b2d0b5d0b4d0b5d0bdd0b8d0b520d0b1d0b5d180d0b5d0bcd0b5d0bdd0bdd0bed181d182d0b82c20d0b3d0b8d0bdd0b5d0bad0bed0bbd0bed0b3d0b8d0b82c20d183d180d0bed0bbd0bed0b3d0b8d0b820d0b820d0bfd0bed0b7d0b2d0bed0bbd18fd0b5d18220d0bed0b1d181d0bbd0b5d0b4d0bed0b2d0b0d182d18c20d0bcd0bdd0bed0b3d0b8d0b520d0bed180d0b3d0b0d0bdd18b20d0b820d181d0b8d181d182d0b5d0bcd18b20d0bed180d0b3d0b0d0bdd0b8d0b7d0bcd0b02e223b693a343b733a35323a2230373a33302d31393a33302020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031383a3030223b693a353b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a363b733a3138343a22d0a120d0a3d0bbd0b8d186d18b20d0bfd180d0b8d0b5d185d0b0d0b220d0bdd0b020d0b0d0b2d182d0bed0bcd0bed0b1d0b8d0bbd0b50a5f5f494d4147455f4558495354535f5f0ad0a120d0bcd0b5d182d180d0be20d0a2d0b2d0b5d180d181d0bad0b0d18f0a5f5f494d4147455f4558495354535f5f0ad0a120d0bed0b1d180d0b0d182d0bdd0bed0b920d181d182d0bed180d0bed0bdd18b20d0b7d0b4d0b0d0bdd0b8d18f0a5f5f494d4147455f4558495354535f5f223b693a373b733a38393a220a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f223b693a383b733a3131343a22d0a1d180d0bed0ba20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b9c2a0d0ba2031343a303020d0b220d0b4d0b5d0bdd18c20d0bfd180d0b8d0b5d0bcd0b020d0b1d0b8d0bed0bcd0b0d182d0b5d180d0b8d0b0d0bbd0b0223b693a393b733a31313a2230373a33302d31393a3330223b693a31303b733a31323a222030373a33302d31343a3330223b693a31313b733a31313a2230373a33302d31393a3330223b693a31323b733a35313a2230373a33302d31343a333020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031323a3330223b693a31333b733a31313a2230373a33302d30383a3435223b693a31343b733a343a22d094d0b0223b693a31353b733a343a22d094d0b0223b693a31363b733a343a22d094d0b0223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31303a22d09ed182d0b4d0b5d0bb223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22d09ed182d0b4d0b5d0bb223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d32223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d32264974656d69643d313138223b733a353a227469746c65223b733a34303a22d09ed0a2d094d095d09bd095d09dd098d09520d09dd09020d0a2d092d095d0a0d0a1d09ad09ed099223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d30322030373a33323a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(18, 'index.php?option=com_zoo&view=item&id=3', 'index.php?option=com_zoo&task=item&item_id=3&Itemid=118', 'ОТДЕЛЕНИЕ НА МЕДВЕДКОВО', '', '2014-07-08 15:29:57', '802c14b343a7effb7cfb644cfbefb592', 1, 0, 1, '*', '2014-07-02 09:43:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a31303a226d65647665646b6f766f223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d30382031323a32393a3536223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2230223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35303a22696e6465782e7068702f6b6f6e74616b74792d6164726573612d692d75736c7567692f6974656d2f6d65647665646b6f766f223b733a31323a22656c656d656e745f64617461223b613a31353a7b693a303b733a31323a222030373a33302d31343a3330223b693a313b733a31313a2230373a33302d31303a3030223b693a323b733a35333a22d0bc2ed09cd0b5d0b4d0b2d0b5d0b4d0bad0bed0b2d0be2c20d183d0bb2ed093d180d0b5d0bad0bed0b2d0b020d0b4d0bed0bc2035223b693a333b733a35323a2230373a33302d31393a33302020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031383a3030223b693a343b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a353b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a363b733a37313a220a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f223b693a373b733a3131333a22d0a1d180d0bed0ba20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b920d0ba2031343a303020d0b220d0b4d0b5d0bdd18c20d0bfd180d0b8d0b5d0bcd0b020d0b1d0b8d0bed0bcd0b0d182d0b5d180d0b8d0b0d0bbd0b0223b693a383b733a31313a2230373a33302d31393a3330223b693a393b733a31323a222030373a33302d31343a3330223b693a31303b733a31313a2230373a33302d31393a3330223b693a31313b733a35313a2230373a33302d31343a333020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031323a3330223b693a31323b733a31313a2230373a33302d30383a3435223b693a31333b733a343a22d094d0b0223b693a31343b733a343a22d094d0b0223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31303a22d09ed182d0b4d0b5d0bb223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22d09ed182d0b4d0b5d0bb223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d33223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d33264974656d69643d313138223b733a353a227469746c65223b733a34343a22d09ed0a2d094d095d09bd095d09dd098d09520d09dd09020d09cd095d094d092d095d094d09ad09ed092d09e223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d30322030393a34333a3438223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(20, 'index.php?option=com_zoo&view=item&id=4', 'index.php?option=com_zoo&task=item&item_id=4&Itemid=118', 'ОТДЕЛЕНИЕ НА МЕДВЕДКОВО', '', '2014-07-08 15:33:34', '18b180fbcf44963013785d0d8e2ce696', 1, 0, 1, '*', '2014-07-02 09:45:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a31323a226d65647665646b6f766f2d32223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d30382031323a33333a3332223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2230223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35323a22696e6465782e7068702f6b6f6e74616b74792d6164726573612d692d75736c7567692f6974656d2f6d65647665646b6f766f2d32223b733a31323a22656c656d656e745f64617461223b613a31363a7b693a303b733a31323a222030373a33302d31343a3330223b693a313b733a31313a2230373a33302d31303a3030223b693a323b733a35333a22d0bc2ed09cd0b5d0b4d0b2d0b5d0b4d0bad0bed0b2d0be2c20d183d0bb2ed093d180d0b5d0bad0bed0b2d0b020d0b4d0bed0bc2035223b693a333b733a313131373a22d092d0bed0bfd180d0bed181d18b2c20d0bad0b0d181d0b0d18ed189d0b8d0b5d181d18f20d0b7d0b4d0bed180d0bed0b2d18cd18f20d0b2d181d0b5d0b3d0b4d0b020d0bed181d182d180d0be20d0b2d181d182d0b0d18ed18220d182d0bed0bbd18cd0bad0be20d182d0bed0b3d0b4d0b02c20d0bad0bed0b3d0b4d0b020d0bed182d0bad0bbd0b0d0b4d18bd0b2d0b0d182d18c20d0bbd0b5d187d0b5d0bdd0b8d0b520d183d0b6d0b520d0bdd0b5d0bbd18cd0b7d18f2e20d09ad0b0d0ba20d0bfd180d0b0d0b2d0b8d0bbd0be2c20d18320d0b1d0bed0bbd18cd188d0b8d0bdd181d182d0b2d0b020d0b7d0b0d0b1d0bed0bbd0b5d0b2d0b0d0bdd0b8d0b920d0bdd0b020d180d0b0d0bdd0bdd0b8d18520d181d182d0b0d0b4d0b8d18fd18520d181d0b8d0bcd0bfd182d0bed0bcd18b20d0bed182d181d183d182d181d182d0b2d183d18ed1822e20d092d18bd18fd0b2d0b8d182d18c20d0bfd180d0b8d187d0b8d0bdd18320d0b1d0bed0bbd0b5d0b7d0bdd0b820d0b820d0b2d0bed0b2d180d0b5d0bcd18f20d0bdd0b0d187d0b0d182d18c20d18dd184d184d0b5d0bad182d0b8d0b2d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b52c20d0b220d18dd182d0bed0bc20d092d0b0d0bc20d0bfd0bed0bcd0bed0b6d0b5d18220d183d0bbd18cd182d180d0b0d0b7d0b2d183d0bad0bed0b2d0bed0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b52e20d09dd0b020d181d0b5d0b3d0bed0b4d0bdd18fd188d0bdd0b8d0b920d0b4d0b5d0bdd18c20d183d0bbd18cd182d180d0b0d0b7d0b2d183d0bad0bed0b2d0b0d18f20d0b4d0b8d0b0d0b3d0bdd0bed181d182d0b8d0bad0b020d18fd0b2d0bbd18fd0b5d182d181d18f20d0bed0b4d0bdd0b8d0bc20d0b8d0b720d181d0b0d0bcd18bd18520d0b2d0bed181d182d180d0b5d0b1d0bed0b2d0b0d0bdd0bdd18bd1852c20d182d0bed187d0bdd18bd18520d0b820d0b1d0b5d0b7d0bed0bfd0b0d181d0bdd18bd18520d0bcd0b5d182d0bed0b4d0bed0b220d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f20d0b1d0bed0bbd18cd188d0b8d0bdd181d182d0b2d0b020d0b7d0b0d0b1d0bed0bbd0b5d0b2d0b0d0bdd0b8d0b92e20d09cd0b5d182d0bed0b420d0a3d097d09820d188d0b8d180d0bed0bad0be20d0bfd180d0b8d0bcd0b5d0bdd18fd0b5d182d181d18f20d0b220d0bfd0b5d0b4d0b8d0b0d182d180d0b8d0b82c20d0bed0b1d189d0b5d0b920d182d0b5d180d0b0d0bfd0b8d0b82c20d0b2d0b5d0b4d0b5d0bdd0b8d0b520d0b1d0b5d180d0b5d0bcd0b5d0bdd0bdd0bed181d182d0b82c20d0b3d0b8d0bdd0b5d0bad0bed0bbd0bed0b3d0b8d0b82c20d183d180d0bed0bbd0bed0b3d0b8d0b820d0b820d0bfd0bed0b7d0b2d0bed0bbd18fd0b5d18220d0bed0b1d181d0bbd0b5d0b4d0bed0b2d0b0d182d18c20d0bcd0bdd0bed0b3d0b8d0b520d0bed180d0b3d0b0d0bdd18b20d0b820d181d0b8d181d182d0b5d0bcd18b20d0bed180d0b3d0b0d0bdd0b8d0b7d0bcd0b02e223b693a343b733a35323a2230373a33302d31393a33302020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031383a3030223b693a353b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a363b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a373b733a35333a220a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f223b693a383b733a3131333a22d0a1d180d0bed0ba20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b920d0ba2031343a303020d0b220d0b4d0b5d0bdd18c20d0bfd180d0b8d0b5d0bcd0b020d0b1d0b8d0bed0bcd0b0d182d0b5d180d0b8d0b0d0bbd0b0223b693a393b733a31313a2230373a33302d31393a3330223b693a31303b733a31323a222030373a33302d31343a3330223b693a31313b733a31313a2230373a33302d31393a3330223b693a31323b733a35313a2230373a33302d31343a333020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031323a3330223b693a31333b733a31313a2230373a33302d30383a3435223b693a31343b733a343a22d094d0b0223b693a31353b733a343a22d094d0b0223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31303a22d09ed182d0b4d0b5d0bb223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22d09ed182d0b4d0b5d0bb223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d34223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d34264974656d69643d313138223b733a353a227469746c65223b733a34343a22d09ed0a2d094d095d09bd095d09dd098d09520d09dd09020d09cd095d094d092d095d094d09ad09ed092d09e223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d30322030393a34353a3132223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(22, 'index.php?option=com_zoo&view=item&id=5', 'index.php?option=com_zoo&task=item&item_id=5&Itemid=118', 'ОТДЕЛЕНИЕ НА ТВЕРСКОЙ', '', '2014-07-08 15:36:32', '1e46caa347ad92838ce3f4b19745732a', 1, 0, 1, '*', '2014-07-08 12:34:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a32313a226f7464656c656e69652d6e612d74766572736b6f6a223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d30382031323a33363a3331223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2230223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a36313a22696e6465782e7068702f6b6f6e74616b74792d6164726573612d692d75736c7567692f6974656d2f6f7464656c656e69652d6e612d74766572736b6f6a223b733a31323a22656c656d656e745f64617461223b613a31373a7b693a303b733a31323a222030373a33302d31343a3330223b693a313b733a31313a2230373a33302d31303a3030223b693a323b733a36353a22d09c2e20d0a2d0b2d0b5d180d181d0bad0b0d18f2c20d183d0bb2e20d0a2d0b2d0b5d180d181d0bad0b0d18f2c20d0b4d0bed0bc20362c20d181d182d1802e2036223b693a333b733a313131373a22d092d0bed0bfd180d0bed181d18b2c20d0bad0b0d181d0b0d18ed189d0b8d0b5d181d18f20d0b7d0b4d0bed180d0bed0b2d18cd18f20d0b2d181d0b5d0b3d0b4d0b020d0bed181d182d180d0be20d0b2d181d182d0b0d18ed18220d182d0bed0bbd18cd0bad0be20d182d0bed0b3d0b4d0b02c20d0bad0bed0b3d0b4d0b020d0bed182d0bad0bbd0b0d0b4d18bd0b2d0b0d182d18c20d0bbd0b5d187d0b5d0bdd0b8d0b520d183d0b6d0b520d0bdd0b5d0bbd18cd0b7d18f2e20d09ad0b0d0ba20d0bfd180d0b0d0b2d0b8d0bbd0be2c20d18320d0b1d0bed0bbd18cd188d0b8d0bdd181d182d0b2d0b020d0b7d0b0d0b1d0bed0bbd0b5d0b2d0b0d0bdd0b8d0b920d0bdd0b020d180d0b0d0bdd0bdd0b8d18520d181d182d0b0d0b4d0b8d18fd18520d181d0b8d0bcd0bfd182d0bed0bcd18b20d0bed182d181d183d182d181d182d0b2d183d18ed1822e20d092d18bd18fd0b2d0b8d182d18c20d0bfd180d0b8d187d0b8d0bdd18320d0b1d0bed0bbd0b5d0b7d0bdd0b820d0b820d0b2d0bed0b2d180d0b5d0bcd18f20d0bdd0b0d187d0b0d182d18c20d18dd184d184d0b5d0bad182d0b8d0b2d0bdd0bed0b520d0bbd0b5d187d0b5d0bdd0b8d0b52c20d0b220d18dd182d0bed0bc20d092d0b0d0bc20d0bfd0bed0bcd0bed0b6d0b5d18220d183d0bbd18cd182d180d0b0d0b7d0b2d183d0bad0bed0b2d0bed0b520d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b52e20d09dd0b020d181d0b5d0b3d0bed0b4d0bdd18fd188d0bdd0b8d0b920d0b4d0b5d0bdd18c20d183d0bbd18cd182d180d0b0d0b7d0b2d183d0bad0bed0b2d0b0d18f20d0b4d0b8d0b0d0b3d0bdd0bed181d182d0b8d0bad0b020d18fd0b2d0bbd18fd0b5d182d181d18f20d0bed0b4d0bdd0b8d0bc20d0b8d0b720d181d0b0d0bcd18bd18520d0b2d0bed181d182d180d0b5d0b1d0bed0b2d0b0d0bdd0bdd18bd1852c20d182d0bed187d0bdd18bd18520d0b820d0b1d0b5d0b7d0bed0bfd0b0d181d0bdd18bd18520d0bcd0b5d182d0bed0b4d0bed0b220d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d18f20d0b1d0bed0bbd18cd188d0b8d0bdd181d182d0b2d0b020d0b7d0b0d0b1d0bed0bbd0b5d0b2d0b0d0bdd0b8d0b92e20d09cd0b5d182d0bed0b420d0a3d097d09820d188d0b8d180d0bed0bad0be20d0bfd180d0b8d0bcd0b5d0bdd18fd0b5d182d181d18f20d0b220d0bfd0b5d0b4d0b8d0b0d182d180d0b8d0b82c20d0bed0b1d189d0b5d0b920d182d0b5d180d0b0d0bfd0b8d0b82c20d0b2d0b5d0b4d0b5d0bdd0b8d0b520d0b1d0b5d180d0b5d0bcd0b5d0bdd0bdd0bed181d182d0b82c20d0b3d0b8d0bdd0b5d0bad0bed0bbd0bed0b3d0b8d0b82c20d183d180d0bed0bbd0bed0b3d0b8d0b820d0b820d0bfd0bed0b7d0b2d0bed0bbd18fd0b5d18220d0bed0b1d181d0bbd0b5d0b4d0bed0b2d0b0d182d18c20d0bcd0bdd0bed0b3d0b8d0b520d0bed180d0b3d0b0d0bdd18b20d0b820d181d0b8d181d182d0b5d0bcd18b20d0bed180d0b3d0b0d0bdd0b8d0b7d0bcd0b02e223b693a343b733a35323a2230373a33302d31393a33302020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031383a3030223b693a353b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a363b733a31373a220a5f5f494d4147455f4558495354535f5f223b693a373b733a38393a220a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f0a0a5f5f494d4147455f4558495354535f5f223b693a383b733a3131333a22d0a1d180d0bed0ba20d0b2d18bd0bfd0bed0bbd0bdd0b5d0bdd0b8d18f20d0b8d181d181d0bbd0b5d0b4d0bed0b2d0b0d0bdd0b8d0b920d0ba2031343a303020d0b220d0b4d0b5d0bdd18c20d0bfd180d0b8d0b5d0bcd0b020d0b1d0b8d0bed0bcd0b0d182d0b5d180d0b8d0b0d0bbd0b0223b693a393b733a31313a2230373a33302d31393a3330223b693a31303b733a31323a222030373a33302d31343a3330223b693a31313b733a31313a2230373a33302d31393a3330223b693a31323b733a35313a2230373a33302d31343a333020d0bed0b3d180d0b0d0bdd0b8d187d0b5d0bdd0b8d18f20d0bfd0bed181d0bbd0b52031323a3330223b693a31333b733a31313a2230373a33302d30383a3435223b693a31343b733a343a22d094d0b0223b693a31353b733a343a22d094d0b0223b693a31363b733a343a22d094d0b0223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31303a22d09ed182d0b4d0b5d0bb223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a22d09ed182d0b4d0b5d0bb223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31363a22d0b32e20d09cd0bed181d0bad0b2d0b0223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d35223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d35264974656d69643d313138223b733a353a227469746c65223b733a34303a22d09ed0a2d094d095d09bd095d09dd098d09520d09dd09020d0a2d092d095d0a0d0a1d09ad09ed099223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d30382031323a33343a3032223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(30, 'index.php?option=com_zoo&view=item&id=6', 'index.php?option=com_zoo&task=item&item_id=6&Itemid=134', 'Почему лучше выбрать нас? Анализы на дому', '', '2014-07-09 08:24:20', '4859e6640d1b9e0f8535946ebee3d2bb', 1, 0, 1, '*', '2014-07-09 05:11:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2236223b733a353a22616c696173223b733a353a22657667656e223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d30392030353a32343a3136223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2230223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35323a22696e6465782e7068702f6f2d6b6f6d70616e69692f7a6e616d656e69746f7374692d762d646e6b6f6d2f6974656d2f657667656e223b733a31323a22656c656d656e745f64617461223b613a343a7b693a303b733a333639393a22d092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e0d0ad092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e0d0ad091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e0d0ad092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e0d0ad092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e223b693a313b733a31363a22d0a4d0b8d0b3d183d180d0b8d181d182223b693a323b733a33313a22d095d0b2d0b3d0b5d0bdd0b8d0b920d09fd0bbd18ed189d0b5d0bdd0bad0be223b693a333b733a3932333a22d092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a32343a22d097d0bdd0b0d0bcd0b5d0bdd0b8d182d0bed181d182d18c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a32343a22d097d0bdd0b0d0bcd0b5d0bdd0b8d182d0bed181d182d18c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d36223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d36264974656d69643d313334223b733a353a227469746c65223b733a37353a22d09fd0bed187d0b5d0bcd18320d0bbd183d187d188d0b520d0b2d18bd0b1d180d0b0d182d18c20d0bdd0b0d1813f20d090d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0b4d0bed0bcd183223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d30392030353a31313a3139223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);
INSERT INTO `y18x3_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(31, 'index.php?option=com_zoo&view=item&id=1', 'index.php?option=com_zoo&task=item&item_id=1&Itemid=134', 'Почему лучше выбрать нас? Анализы на дому', '', '2014-07-09 08:30:34', 'c88985262a26af32b97de355b04a0e6d', 1, 0, 1, '*', '2014-07-01 11:12:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a31333a22677269676f72696a2d6c657073223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d30392030353a33303a3332223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2230223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a36303a22696e6465782e7068702f6f2d6b6f6d70616e69692f7a6e616d656e69746f7374692d762d646e6b6f6d2f6974656d2f677269676f72696a2d6c657073223b733a31323a22656c656d656e745f64617461223b613a343a7b693a303b733a333730333a22d092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e0d0ad092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220c2a0d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2ec2a00d0ad091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e0d0ad092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e0d0ad092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e223b693a313b733a33313a22d09fd0b5d0b2d0b5d1862dd0bad0bed0bcd0bfd0bed0b7d0b8d182d0bed180223b693a323b733a32353a22d093d180d0b8d0b3d0bed180d0b8d0b920d09bd0b5d0bfd181223b693a333b733a3932333a22d092d0bed0bfd180d0bed1812c20d0b3d0b4d0b520d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b2028d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d180d0b0d0b7d0bbd0b8d187d0bdd18bd0b520d0b8d0bdd184d0b5d0bad186d0b8d0b82c20d0bad0bbd0b8d0bdd0b8d187d0b5d181d0bad0b8d0b520d0b0d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0bed0bdd0bad0bed0bcd0b0d180d0bad0b5d180d18b2c20d0bdd0b020d0b3d0b8d181d182d0bed0bbd0bed0b3d0b8d18e2c20d0bdd0b020d186d0b8d182d0bed0bbd0bed0b3d0b8d18e20d0b820d0bfd180d0bed187d0b5d0b52920d0b8d0bdd182d0b5d180d0b5d181d183d0b5d18220d181d0b5d0b3d0bed0b4d0bdd18f20d0bcd0bdd0bed0b3d0b8d1852e20d0a1d0bbd0b5d0b4d183d0b5d18220d0bed182d0bcd0b5d182d0b8d182d18c20d0b820d182d0be2c20d187d182d0be20d0bdd0b5d180d0b5d0b4d0bad0be20d181d0b4d0b0d182d18c20d0b0d0bdd0b0d0bbd0b8d0b7d18b20d182d180d0b5d0b1d183d0b5d182d181d18f20d181d180d0bed187d0bdd0be2c20d0b7d0b0203120d0b4d0b5d0bdd18c2e20d091d0b5d0b7d183d181d0bbd0bed0b2d0bdd0be2c20d181d0b4d0b0d182d18c20d0bcd0bed0b6d0bdd0be20d0b820d0b220d0bfd0bed0bbd0b8d0bad0bbd0b8d0bdd0b8d0bad0b520d0bfd0be20d0bcd0b5d181d182d18320d0b6d0b8d182d0b5d0bbd18cd181d182d0b2d0b02c20d0bdd0be20d182d0bed187d0bdd0bed181d182d18c20d182d0b0d0bad0b8d18520d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0bcd0bed0b6d0bdd0be20d0bfd0bed0b4d0b2d0b5d180d0b3d0bdd183d182d18c20d181d0bed0bcd0bdd0b5d0bdd0b8d18e2c20d0b4d0b020d0b820d180d0b5d0b7d183d0bbd18cd182d0b0d182d18b20d0b0d0bdd0b0d0bbd0b8d0b7d0bed0b220d0b220d0bbd183d187d188d0b5d0bc20d181d0bbd183d187d0b0d0b520d0b1d18bd0b2d0b0d18ed18220d0b3d0bed182d0bed0b2d18fd182d181d18f20d0bed18220332d3420d0b4d0bdd0b5d0b920d0b4d0be20d0bcd0b5d181d18fd186d0b02e0d0ad097d0bdd0b0d187d0b8d182d0b5d0bbd18cd0bdd0be20d0bdd0b0d0b4d191d0b6d0bdd0b5d0b520d0b820d0bed0bfd0b5d180d0b0d182d0b8d0b2d0bdd0b5d0b520d0b2d18bd0bfd0bed0bbd0bdd18fd18ed18220d180d0b0d0b1d0bed182d18320d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d18b20d186d0b5d0bdd182d180d0bed0b22e223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a32343a22d097d0bdd0b0d0bcd0b5d0bdd0b8d182d0bed181d182d18c223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a32343a22d097d0bdd0b0d0bcd0b5d0bdd0b8d182d0bed181d182d18c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d31223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d31264974656d69643d313334223b733a353a227469746c65223b733a37353a22d09fd0bed187d0b5d0bcd18320d0bbd183d187d188d0b520d0b2d18bd0b1d180d0b0d182d18c20d0bdd0b0d1813f20d090d0bdd0b0d0bbd0b8d0b7d18b20d0bdd0b020d0b4d0bed0bcd183223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a303b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d30312031313a31323a3531223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(34, 'index.php?option=com_zoo&view=item&id=9', 'index.php?option=com_zoo&task=item&item_id=9&Itemid=124', 'Б1', '', '2014-07-30 13:09:15', '9b8d0e3ecb9db628771b71f3c8cd1b22', 1, 1, 1, '*', '2014-07-30 10:08:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2239223b733a353a22616c696173223b733a323a226231223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d33302031303a30393a3132223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35373a22696e6465782e7068702f323031342d30362d32352d30362d32372d30302f323031342d30362d32352d30362d33372d35362f6974656d2f6231223b733a31323a22656c656d656e745f64617461223b613a303a7b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d39223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d39264974656d69643d313234223b733a353a227469746c65223b733a333a22d09131223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d33302031303a30383a3538223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(35, 'index.php?option=com_zoo&view=item&id=10', 'index.php?option=com_zoo&task=item&item_id=10&Itemid=124', 'Б2', '', '2014-07-30 13:09:57', 'a4e726fcf1e1d6345e4225d59148efb8', 1, 1, 1, '*', '2014-07-30 10:09:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a323a223130223b733a353a22616c696173223b733a323a226232223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d33302031303a30393a3534223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35373a22696e6465782e7068702f323031342d30362d32352d30362d32372d30302f323031342d30362d32352d30362d33372d35362f6974656d2f6232223b733a31323a22656c656d656e745f64617461223b613a303a7b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34303a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d3130223b733a353a22726f757465223b733a35363a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d3130264974656d69643d313234223b733a353a227469746c65223b733a333a22d09132223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d33302031303a30393a3234223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(36, 'index.php?option=com_zoo&view=item&id=11', 'index.php?option=com_zoo&task=item&item_id=11&Itemid=124', 'В8', '', '2014-07-30 13:10:20', '66dcd9f393a52382e384de83bd8efcda', 1, 1, 1, '*', '2014-07-30 10:10:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a323a223131223b733a353a22616c696173223b733a323a227638223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d33302031303a31303a3138223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35373a22696e6465782e7068702f323031342d30362d32352d30362d32372d30302f323031342d30362d32352d30362d33372d35362f6974656d2f7638223b733a31323a22656c656d656e745f64617461223b613a303a7b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a313a7b733a343a2254797065223b613a313a7b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34303a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d3131223b733a353a22726f757465223b733a35363a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d3131264974656d69643d313234223b733a353a227469746c65223b733a333a22d09238223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d33302031303a31303a3037223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(52, 'index.php?option=com_zoo&view=item&id=8', 'index.php?option=com_zoo&task=item&item_id=8&Itemid=124', 'Анализ 2', '', '2014-07-31 10:22:12', 'f26756e0fa034fa378248f2b38a831e9', 1, 1, 1, '*', '2014-07-30 09:58:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2238223b733a353a22616c696173223b733a333a22616e61223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d33312030373a32323a3039223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a35383a22696e6465782e7068702f323031342d30362d32352d30362d32372d30302f323031342d30362d32352d30362d33372d35362f6974656d2f616e61223b733a31323a22656c656d656e745f64617461223b613a343a7b693a303b733a32393a22d0a0d0b5d0b0d0bad182d0b8d0b220d0b0d0bdd0b0d0bbd0b8d0b72032223b693a313b733a363a2231302e323031223b693a323b733a31323a22d0a0d0bed181d181d0b8d18f223b693a333b733a333a22353530223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a323a22d090223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a323a22d090223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d38223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d38264974656d69643d313234223b733a353a227469746c65223b733a31343a22d090d0bdd0b0d0bbd0b8d0b72032223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d33302030393a35383a3233223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(56, 'index.php?option=com_zoo&view=item&id=16', 'index.php?option=com_zoo&task=item&item_id=16&Itemid=124', 'Анализ 3', '', '2014-07-31 10:25:03', '51c00aa2de6b009c3122a4682d878251', 1, 1, 1, '*', '2014-07-31 07:23:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a323a223136223b733a353a22616c696173223b733a383a22616e616c697a2d33223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30372d33312030373a32353a3030223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a36333a22696e6465782e7068702f323031342d30362d32352d30362d32372d30302f323031342d30362d32352d30362d33372d35362f6974656d2f616e616c697a2d33223b733a31323a22656c656d656e745f64617461223b613a343a7b693a303b733a363a2231302e323032223b693a313b733a31323a22d0a0d0bed181d181d0b8d18f223b693a323b733a33303a22d0bad180d0bed0b2d18c202d203137302c20d0b4d0bdd0ba202d20383838223b693a333b733a333a22363530223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a323a22d090223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a323a22d090223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34303a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d3136223b733a353a22726f757465223b733a35363a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d3136264974656d69643d313234223b733a353a227469746c65223b733a31343a22d090d0bdd0b0d0bbd0b8d0b72033223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d33312030373a32333a3130223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(59, 'index.php?option=com_zoo&view=item&id=7', 'index.php?option=com_zoo&task=item&item_id=7&Itemid=124', 'Анализ 1', '', '2014-08-05 13:07:32', 'dcd2bacd88f31acc687b2d6bb6bbd63c', 1, 1, 1, '*', '2014-07-30 09:57:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a31323a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a383a22616e616c697a2d31223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30382d30352031303a30373a3239223b733a31313a226d6f6469666965645f6279223b733a333a22323332223b733a31303a2273656172636861626c65223b733a313a2231223b733a363a226c61796f7574223b733a343a226974656d223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a353a7b733a353a227469746c65223b733a303a22223b733a31313a226465736372697074696f6e223b733a303a22223b733a383a226b6579776f726473223b733a303a22223b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a31303a226d657461617574686f72223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a343a2270617468223b733a36333a22696e6465782e7068702f323031342d30362d32352d30362d32372d30302f323031342d30362d32352d30362d33372d35362f6974656d2f616e616c697a2d31223b733a31323a22656c656d656e745f64617461223b613a31303a7b693a303b733a31303a223620d0b4d0bdd0b5d0b9223b693a313b733a323a223530223b693a323b733a363a2231322e323031223b693a333b733a33333a22d09ed0bfd0b8d181d0b0d0bdd0b8d0b520d0b2d0bad0bbd0b0d0b4d0bad0b82031223b693a343b733a31323a22d0a0d0bed181d181d0b8d18f223b693a353b733a31383a22323232323232323232323232323232323232223b693a363b733a31363a22d092d0bad0bbd0b0d0b4d0bad0b02031223b693a373b733a31363a22d092d09ad09bd090d094d09ad0902032223b693a383b733a33303a22d0bad180d0bed0b2d18c202d203137302c20d0b4d0bdd0ba202d20383838223b693a393b733a333a22383838223b7d7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31303a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b693a383b733a31363a22637265617465645f62795f616c696173223b693a393b733a31323a22656c656d656e745f64617461223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a323a7b733a343a2254797065223b613a313a7b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31323a22d090d0bdd0b0d0bbd0b8d0b7223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a323a22d090223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a323a22d090223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33393a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f26766965773d6974656d2669643d37223b733a353a22726f757465223b733a35353a22696e6465782e7068703f6f7074696f6e3d636f6d5f7a6f6f267461736b3d6974656d266974656d5f69643d37264974656d69643d313234223b733a353a227469746c65223b733a31343a22d090d0bdd0b0d0bbd0b8d0b72031223b733a31313a226465736372697074696f6e223b733a303a22223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b623a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30372d33302030393a35373a3437223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms0`
--

INSERT INTO `y18x3_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(30, 2355, 1.2),
(31, 2355, 1.2),
(30, 2356, 8.2002),
(31, 2356, 8.2002),
(30, 2357, 9.4002),
(31, 2357, 9.4002),
(52, 2578, 0.4),
(56, 2589, 0.8),
(59, 2589, 0.8),
(56, 2630, 2.5334),
(59, 2683, 2.5334);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms1`
--

INSERT INTO `y18x3_finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(59, 508, 0.12),
(30, 508, 0.17),
(14, 508, 0.24),
(22, 508, 0.24),
(14, 509, 1.40004),
(22, 509, 1.40004),
(14, 510, 1.47996),
(22, 510, 1.47996),
(14, 631, 1.12008),
(20, 631, 1.12008),
(22, 631, 1.12008),
(14, 632, 1.56),
(20, 632, 1.56),
(22, 632, 1.56),
(14, 633, 1.76004),
(20, 633, 1.76004),
(22, 633, 1.76004),
(14, 634, 1.64004),
(20, 634, 1.64004),
(22, 634, 1.64004),
(14, 635, 1.92),
(20, 635, 1.92),
(22, 635, 1.92),
(30, 2235, 0.56661),
(31, 2235, 0.56661),
(30, 2236, 2.43661),
(31, 2236, 2.43661),
(30, 2237, 2.66339),
(31, 2237, 2.66339),
(30, 2238, 2.4),
(31, 2238, 2.4),
(30, 2239, 8.5998),
(31, 2239, 8.5998),
(30, 2240, 10.0002),
(31, 2240, 10.0002),
(31, 2408, 0.32004),
(56, 2629, 0.36),
(59, 2681, 1.44);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms2`
--

INSERT INTO `y18x3_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(18, 111, 0.31992),
(20, 111, 0.31992),
(14, 111, 0.47988),
(22, 111, 0.47988),
(30, 111, 0.7998),
(31, 111, 0.7998),
(18, 576, 0.32004),
(14, 576, 0.64008),
(20, 576, 0.64008),
(22, 576, 0.64008),
(30, 576, 1.6002),
(31, 576, 1.6002),
(14, 577, 1.64004),
(18, 577, 1.64004),
(20, 577, 1.64004),
(22, 577, 1.64004),
(14, 578, 2.16),
(18, 578, 2.16),
(20, 578, 2.16),
(22, 578, 2.16),
(14, 579, 1.95996),
(20, 579, 1.95996),
(22, 579, 1.95996),
(14, 580, 2.4),
(20, 580, 2.4),
(22, 580, 2.4),
(14, 581, 0.87996),
(20, 581, 0.87996),
(22, 581, 0.87996),
(14, 582, 2.00004),
(20, 582, 2.00004),
(22, 582, 2.00004),
(14, 583, 2.24004),
(20, 583, 2.24004),
(22, 583, 2.24004),
(14, 584, 0.24),
(18, 584, 0.24),
(20, 584, 0.24),
(22, 584, 0.24),
(14, 585, 1.40004),
(22, 585, 1.40004),
(14, 586, 1.56),
(22, 586, 1.56),
(14, 777, 0.08004),
(20, 777, 0.08004),
(22, 777, 0.08004),
(14, 778, 1.71996),
(20, 778, 1.71996),
(22, 778, 1.71996),
(14, 779, 2.19996),
(20, 779, 2.19996),
(22, 779, 2.19996),
(14, 780, 0.24),
(20, 780, 0.24),
(22, 780, 0.24),
(14, 781, 1.59996),
(20, 781, 1.59996),
(22, 781, 1.59996),
(14, 782, 1.76004),
(20, 782, 1.76004),
(22, 782, 1.76004),
(14, 783, 0.24),
(20, 783, 0.24),
(22, 783, 0.24),
(14, 784, 1.59996),
(20, 784, 1.59996),
(22, 784, 1.59996),
(14, 785, 2.07996),
(20, 785, 2.07996),
(22, 785, 2.07996),
(14, 786, 0.15996),
(18, 786, 0.15996),
(20, 786, 0.15996),
(22, 786, 0.15996),
(14, 787, 1.64004),
(22, 787, 1.64004),
(14, 788, 1.8),
(22, 788, 1.8),
(14, 789, 0.39996),
(14, 790, 1.71996),
(14, 791, 1.83996),
(14, 792, 1.11996),
(20, 792, 1.11996),
(22, 792, 1.11996),
(14, 793, 2.24004),
(20, 793, 2.24004),
(22, 793, 2.24004),
(14, 794, 2.4),
(20, 794, 2.4),
(22, 794, 2.4),
(14, 795, 1.11996),
(20, 795, 1.11996),
(22, 795, 1.11996),
(14, 796, 2.28),
(20, 796, 2.28),
(22, 796, 2.28),
(14, 797, 2.4),
(20, 797, 2.4),
(22, 797, 2.4),
(14, 798, 0.63996),
(20, 798, 0.63996),
(22, 798, 0.63996),
(14, 799, 1.59996),
(20, 799, 1.59996),
(22, 799, 1.59996),
(14, 800, 2.00004),
(20, 800, 2.00004),
(22, 800, 2.00004),
(18, 1068, 1.40004),
(20, 1068, 1.40004),
(18, 1076, 1.59996),
(20, 1076, 1.59996),
(18, 1077, 1.76004),
(20, 1077, 1.76004),
(30, 2194, 6.7998),
(31, 2194, 6.7998),
(30, 2195, 9),
(31, 2195, 9),
(30, 2196, 9),
(31, 2196, 9),
(30, 2197, 10.2),
(31, 2197, 10.2),
(59, 2198, 0.32004),
(30, 2198, 1.6002),
(31, 2198, 1.6002),
(30, 2199, 7.3998),
(31, 2199, 7.3998),
(30, 2200, 8.8002),
(31, 2200, 8.8002),
(30, 2201, 0.7998),
(31, 2201, 0.7998),
(30, 2202, 7.8),
(31, 2202, 7.8),
(30, 2203, 10.2),
(31, 2203, 10.2),
(30, 2204, 0.45339),
(31, 2204, 0.45339),
(30, 2400, 0.63996),
(31, 2405, 0.5334),
(56, 2592, 0.24),
(59, 2592, 0.24),
(56, 2593, 1.47996),
(59, 2593, 1.47996);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms4`
--

INSERT INTO `y18x3_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(14, 525, 0.80004),
(20, 525, 0.80004),
(22, 525, 0.80004),
(14, 526, 1.92),
(20, 526, 1.92),
(22, 526, 1.92),
(14, 527, 2.4),
(20, 527, 2.4),
(22, 527, 2.4),
(14, 528, 0.96),
(20, 528, 0.96),
(22, 528, 0.96),
(14, 529, 2.16),
(20, 529, 2.16),
(22, 529, 2.16),
(14, 530, 2.4),
(20, 530, 2.4),
(22, 530, 2.4),
(14, 531, 0.96),
(18, 531, 0.96),
(20, 531, 0.96),
(22, 531, 0.96),
(14, 532, 0.56004),
(20, 532, 0.56004),
(22, 532, 0.56004),
(14, 533, 1.56),
(20, 533, 1.56),
(22, 533, 1.56),
(14, 534, 1.88004),
(20, 534, 1.88004),
(22, 534, 1.88004),
(14, 535, 1.75992),
(20, 535, 1.75992),
(22, 535, 1.75992),
(14, 536, 4.24008),
(20, 536, 4.24008),
(22, 536, 4.24008),
(14, 537, 2.36004),
(20, 537, 2.36004),
(22, 537, 2.36004),
(14, 538, 2.24004),
(20, 538, 2.24004),
(22, 538, 2.24004),
(14, 598, 0.32016),
(20, 598, 0.32016),
(22, 598, 0.32016),
(30, 598, 2.001),
(31, 598, 2.001),
(14, 599, 1.68),
(20, 599, 1.68),
(22, 599, 1.68),
(14, 600, 2.00004),
(20, 600, 2.00004),
(22, 600, 2.00004),
(14, 601, 1.56),
(20, 601, 1.56),
(22, 601, 1.56),
(14, 602, 1.83996),
(20, 602, 1.83996),
(22, 602, 1.83996),
(14, 603, 1.64004),
(20, 603, 1.64004),
(22, 603, 1.64004),
(14, 604, 2.12004),
(20, 604, 2.12004),
(22, 604, 2.12004),
(14, 605, 1.56),
(20, 605, 1.56),
(22, 605, 1.56),
(14, 606, 1.95996),
(20, 606, 1.95996),
(22, 606, 1.95996),
(14, 607, 0.15996),
(20, 607, 0.15996),
(22, 607, 0.15996),
(14, 608, 1.52004),
(20, 608, 1.52004),
(22, 608, 1.52004),
(14, 609, 2.12004),
(20, 609, 2.12004),
(22, 609, 2.12004),
(14, 610, 0.96),
(20, 610, 0.96),
(22, 610, 0.96),
(14, 611, 1.8),
(20, 611, 1.8),
(22, 611, 1.8),
(14, 612, 2.28),
(20, 612, 2.28),
(22, 612, 2.28),
(14, 613, 0.96),
(18, 613, 0.96),
(20, 613, 0.96),
(22, 613, 0.96),
(14, 614, 1.76004),
(18, 614, 1.76004),
(20, 614, 1.76004),
(22, 614, 1.76004),
(14, 615, 1.88004),
(18, 615, 1.88004),
(20, 615, 1.88004),
(22, 615, 1.88004),
(14, 616, 0.96),
(20, 616, 0.96),
(22, 616, 0.96),
(14, 617, 2.16),
(20, 617, 2.16),
(22, 617, 2.16),
(14, 618, 2.4),
(20, 618, 2.4),
(22, 618, 2.4),
(30, 2164, 4.0002),
(31, 2164, 4.0002),
(30, 2165, 9.1998),
(31, 2165, 9.1998),
(30, 2166, 10.3998),
(31, 2166, 10.3998),
(30, 2167, 2.4),
(31, 2167, 2.4),
(30, 2168, 9.1998),
(31, 2168, 9.1998),
(30, 2169, 9.7998),
(31, 2169, 9.7998),
(30, 2215, 6.6),
(31, 2215, 6.6),
(30, 2216, 9),
(31, 2216, 9),
(30, 2217, 8.5998),
(31, 2217, 8.5998),
(30, 2218, 10.6002),
(31, 2218, 10.6002),
(30, 2219, 7.6002),
(31, 2219, 7.6002),
(30, 2220, 9.7998),
(31, 2220, 9.7998),
(30, 2221, 8.4),
(31, 2221, 8.4),
(30, 2222, 10.2),
(31, 2222, 10.2),
(30, 2223, 6.7998),
(31, 2223, 6.7998),
(30, 2224, 7.6002),
(31, 2224, 7.6002),
(30, 2225, 4.0002),
(31, 2225, 4.0002),
(30, 2226, 9.6),
(31, 2226, 9.6),
(30, 2227, 10.9998),
(31, 2227, 10.9998),
(30, 2228, 3.1998),
(31, 2228, 3.1998),
(30, 2229, 10.0002),
(31, 2229, 10.0002),
(30, 2230, 11.5998),
(31, 2230, 11.5998),
(30, 2349, 2.8002),
(31, 2349, 2.8002),
(30, 2350, 5.28012),
(31, 2350, 5.28012),
(30, 2351, 5.76),
(31, 2351, 5.76),
(30, 2352, 3.6),
(31, 2352, 3.6),
(30, 2353, 8.2002),
(31, 2353, 8.2002),
(30, 2354, 9.6),
(31, 2354, 9.6),
(34, 2420, 0.17),
(34, 2422, 0.22661),
(35, 2425, 0.22661);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms5`
--

INSERT INTO `y18x3_finder_links_terms5` (`link_id`, `term_id`, `weight`) VALUES
(14, 619, 0.08004),
(18, 619, 0.08004),
(20, 619, 0.08004),
(22, 619, 0.08004),
(14, 620, 1.35996),
(18, 620, 1.35996),
(20, 620, 1.35996),
(22, 620, 1.35996),
(14, 621, 1.47996),
(18, 621, 1.47996),
(20, 621, 1.47996),
(22, 621, 1.47996),
(14, 622, 0.24),
(20, 622, 0.24),
(22, 622, 0.24),
(14, 623, 1.64004),
(20, 623, 1.64004),
(22, 623, 1.64004),
(14, 624, 1.71996),
(20, 624, 1.71996),
(22, 624, 1.71996),
(14, 625, 0.80004),
(20, 625, 0.80004),
(22, 625, 0.80004),
(14, 626, 1.95996),
(20, 626, 1.95996),
(22, 626, 1.95996),
(14, 627, 2.24004),
(20, 627, 2.24004),
(22, 627, 2.24004),
(14, 628, 0.39996),
(20, 628, 0.39996),
(22, 628, 0.39996),
(14, 629, 1.88004),
(20, 629, 1.88004),
(22, 629, 1.88004),
(14, 630, 2.19996),
(20, 630, 2.19996),
(22, 630, 2.19996),
(22, 757, 1.27992),
(14, 757, 1.91988),
(14, 758, 1.76004),
(14, 759, 2.04),
(14, 760, 1.68),
(22, 760, 1.68),
(14, 761, 1.76004),
(22, 761, 1.76004),
(14, 762, 1.64004),
(22, 762, 1.64004),
(14, 763, 2.00004),
(22, 763, 2.00004),
(14, 764, 0.90661),
(22, 764, 0.90661),
(14, 765, 0.56004),
(20, 765, 0.56004),
(22, 765, 0.56004),
(14, 766, 1.8),
(20, 766, 1.8),
(22, 766, 1.8),
(14, 767, 2.31996),
(20, 767, 2.31996),
(22, 767, 2.31996),
(14, 768, 0.39996),
(20, 768, 0.39996),
(22, 768, 0.39996),
(14, 769, 1.64004),
(20, 769, 1.64004),
(22, 769, 1.64004),
(14, 770, 2.12004),
(20, 770, 2.12004),
(22, 770, 2.12004),
(14, 771, 0.48),
(20, 771, 0.48),
(22, 771, 0.48),
(14, 772, 1.68),
(20, 772, 1.68),
(22, 772, 1.68),
(14, 773, 1.92),
(20, 773, 1.92),
(22, 773, 1.92),
(14, 774, 0.48),
(20, 774, 0.48),
(22, 774, 0.48),
(14, 775, 1.52004),
(20, 775, 1.52004),
(22, 775, 1.52004),
(14, 776, 1.95996),
(20, 776, 1.95996),
(22, 776, 1.95996),
(30, 2231, 4.3998),
(31, 2231, 4.3998),
(30, 2232, 9.7998),
(31, 2232, 9.7998),
(30, 2233, 10.3998),
(31, 2233, 10.3998),
(30, 2337, 1.9998),
(31, 2337, 1.9998),
(30, 2338, 8.8002),
(31, 2338, 8.8002),
(30, 2339, 10.0002),
(31, 2339, 10.0002),
(30, 2340, 0.7998),
(31, 2340, 0.7998),
(30, 2341, 7.2),
(31, 2341, 7.2),
(30, 2342, 8.8002),
(31, 2342, 8.8002),
(30, 2343, 3.1998),
(31, 2343, 3.1998),
(30, 2344, 8.8002),
(31, 2344, 8.8002),
(30, 2345, 10.6002),
(31, 2345, 10.6002),
(30, 2346, 3.6),
(31, 2346, 3.6),
(30, 2347, 9.1998),
(31, 2347, 9.1998),
(30, 2348, 9.7998),
(31, 2348, 9.7998),
(56, 2596, 0.39996),
(59, 2596, 0.39996),
(56, 2597, 1.56),
(59, 2597, 1.56),
(56, 2598, 1.71996),
(59, 2598, 1.71996);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms6`
--

INSERT INTO `y18x3_finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(14, 801, 0.48),
(20, 801, 0.48),
(22, 801, 0.48),
(14, 802, 1.92),
(20, 802, 1.92),
(22, 802, 1.92),
(14, 803, 2.00004),
(20, 803, 2.00004),
(22, 803, 2.00004),
(18, 1064, 1.3334),
(20, 1064, 1.3334),
(20, 1097, 2.8);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms7`
--

INSERT INTO `y18x3_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(14, 697, 0.72),
(20, 697, 0.72),
(22, 697, 0.72),
(14, 698, 1.8),
(20, 698, 1.8),
(22, 698, 1.8),
(14, 699, 2.12004),
(20, 699, 2.12004),
(22, 699, 2.12004),
(14, 700, 0.72),
(20, 700, 0.72),
(22, 700, 0.72),
(14, 701, 2.04),
(20, 701, 2.04),
(22, 701, 2.04),
(14, 702, 2.31996),
(20, 702, 2.31996),
(22, 702, 2.31996),
(14, 703, 0.56004),
(20, 703, 0.56004),
(22, 703, 0.56004),
(14, 704, 2.07996),
(20, 704, 2.07996),
(22, 704, 2.07996),
(14, 705, 2.4),
(20, 705, 2.4),
(22, 705, 2.4),
(14, 706, 0.79992),
(18, 706, 0.79992),
(20, 706, 0.79992),
(22, 706, 0.79992),
(14, 707, 1.52004),
(18, 707, 1.52004),
(20, 707, 1.52004),
(22, 707, 1.52004),
(14, 708, 1.64004),
(18, 708, 1.64004),
(20, 708, 1.64004),
(22, 708, 1.64004),
(14, 709, 1.52004),
(18, 709, 1.52004),
(20, 709, 1.52004),
(22, 709, 1.52004),
(14, 710, 1.64004),
(18, 710, 1.64004),
(20, 710, 1.64004),
(22, 710, 1.64004),
(14, 711, 0.56004),
(20, 711, 0.56004),
(22, 711, 0.56004),
(14, 712, 1.56),
(20, 712, 1.56),
(22, 712, 1.56),
(14, 713, 2.04),
(20, 713, 2.04),
(22, 713, 2.04),
(14, 714, 0.48),
(18, 714, 0.48),
(20, 714, 0.48),
(22, 714, 0.48),
(14, 715, 1.95996),
(18, 715, 1.95996),
(20, 715, 1.95996),
(22, 715, 1.95996),
(14, 716, 0.56004),
(14, 717, 1.59996),
(14, 718, 2.04),
(14, 719, 0.87996),
(20, 719, 0.87996),
(22, 719, 0.87996),
(14, 720, 1.71996),
(20, 720, 1.71996),
(22, 720, 1.71996),
(14, 721, 2.12004),
(20, 721, 2.12004),
(22, 721, 2.12004),
(14, 722, 0.56004),
(20, 722, 0.56004),
(22, 722, 0.56004),
(14, 723, 1.8),
(20, 723, 1.8),
(22, 723, 1.8),
(14, 724, 1.88004),
(20, 724, 1.88004),
(22, 724, 1.88004),
(22, 1114, 0.2666),
(22, 1115, 2.7334),
(30, 2289, 0.7998),
(31, 2289, 0.7998),
(30, 2290, 7.6002),
(31, 2290, 7.6002),
(30, 2291, 9.7998),
(31, 2291, 9.7998),
(30, 2292, 4.3998),
(31, 2292, 4.3998),
(30, 2293, 10.0002),
(31, 2293, 10.0002),
(30, 2294, 10.6002),
(31, 2294, 10.6002),
(30, 2295, 4.3998),
(31, 2295, 4.3998),
(30, 2296, 8.8002),
(31, 2296, 8.8002),
(30, 2297, 10.0002),
(31, 2297, 10.0002),
(30, 2298, 0.68),
(31, 2298, 0.68),
(30, 2299, 2.38),
(31, 2299, 2.38),
(30, 2300, 2.83339),
(31, 2300, 2.83339),
(30, 2301, 2.4),
(31, 2301, 2.4),
(30, 2302, 9.4002),
(31, 2302, 9.4002),
(30, 2303, 10.9998),
(31, 2303, 10.9998),
(30, 2399, 0.63996),
(31, 2409, 1.2);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms8`
--

INSERT INTO `y18x3_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(14, 19, 0.6666),
(18, 19, 0.6666),
(20, 19, 0.6666),
(22, 19, 0.6666),
(30, 19, 0.6666),
(31, 19, 0.6666),
(34, 19, 0.6666),
(35, 19, 0.6666),
(36, 19, 0.6666),
(52, 19, 0.6666),
(56, 19, 0.6666),
(59, 19, 0.6666),
(20, 517, 1.9998),
(18, 517, 2.39976),
(22, 517, 2.79972),
(14, 517, 3.59964),
(20, 518, 8.4),
(18, 518, 10.08),
(22, 518, 11.76),
(14, 518, 15.12),
(20, 519, 3.84),
(18, 519, 5.76),
(14, 519, 7.68),
(22, 519, 7.68),
(14, 520, 3.52008),
(14, 804, 0.32004),
(20, 804, 0.32004),
(22, 804, 0.32004),
(14, 805, 1.52004),
(20, 805, 1.52004),
(22, 805, 1.52004),
(14, 806, 1.83996),
(20, 806, 1.83996),
(22, 806, 1.83996),
(14, 807, 0.87996),
(20, 807, 0.87996),
(22, 807, 0.87996),
(14, 808, 1.95996),
(20, 808, 1.95996),
(22, 808, 1.95996),
(14, 809, 2.04),
(20, 809, 2.04),
(22, 809, 2.04),
(30, 2397, 0.56004),
(30, 2398, 1.83996),
(59, 2682, 0.17);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_terms9`
--

INSERT INTO `y18x3_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(14, 109, 0.08004),
(18, 109, 0.08004),
(20, 109, 0.08004),
(22, 109, 0.08004),
(14, 110, 1.52004),
(18, 110, 1.52004),
(20, 110, 1.52004),
(22, 110, 1.52004),
(14, 113, 0.39996),
(18, 113, 0.39996),
(20, 113, 0.39996),
(22, 113, 0.39996),
(14, 573, 0.87996),
(20, 573, 0.87996),
(22, 573, 0.87996),
(14, 574, 2.00004),
(20, 574, 2.00004),
(22, 574, 2.00004),
(14, 575, 2.07996),
(20, 575, 2.07996),
(22, 575, 2.07996),
(14, 665, 0.63996),
(14, 666, 1.83996),
(14, 667, 2.12004),
(14, 668, 0.87996),
(20, 668, 0.87996),
(22, 668, 0.87996),
(14, 669, 1.92),
(20, 669, 1.92),
(22, 669, 1.92),
(14, 670, 2.19996),
(20, 670, 2.19996),
(22, 670, 2.19996),
(14, 671, 0.39996),
(20, 671, 0.39996),
(22, 671, 0.39996),
(14, 672, 1.71996),
(20, 672, 1.71996),
(22, 672, 1.71996),
(14, 673, 2.04),
(20, 673, 2.04),
(22, 673, 2.04),
(14, 674, 1.75992),
(18, 674, 1.75992),
(20, 674, 1.75992),
(22, 674, 1.75992),
(14, 675, 3.76008),
(18, 675, 3.76008),
(20, 675, 3.76008),
(22, 675, 3.76008),
(14, 676, 2.00004),
(18, 676, 2.00004),
(20, 676, 2.00004),
(22, 676, 2.00004),
(14, 677, 2.00004),
(18, 677, 2.00004),
(20, 677, 2.00004),
(22, 677, 2.00004),
(14, 678, 0.39996),
(20, 678, 0.39996),
(22, 678, 0.39996),
(14, 679, 1.52004),
(20, 679, 1.52004),
(22, 679, 1.52004),
(14, 680, 1.76004),
(20, 680, 1.76004),
(22, 680, 1.76004),
(14, 681, 0.72),
(20, 681, 0.72),
(22, 681, 0.72),
(14, 682, 0.48),
(20, 682, 0.48),
(22, 682, 0.48),
(14, 683, 1.52004),
(20, 683, 1.52004),
(22, 683, 1.52004),
(14, 684, 1.83996),
(20, 684, 1.83996),
(22, 684, 1.83996),
(14, 685, 0.39996),
(20, 685, 0.39996),
(22, 685, 0.39996),
(14, 686, 1.68),
(20, 686, 1.68),
(22, 686, 1.68),
(14, 687, 1.95996),
(20, 687, 1.95996),
(22, 687, 1.95996),
(14, 688, 1.02),
(18, 688, 1.02),
(20, 688, 1.02),
(22, 688, 1.02),
(14, 689, 2.38),
(18, 689, 2.38),
(20, 689, 2.38),
(22, 689, 2.38),
(14, 690, 2.89),
(22, 690, 2.89),
(14, 691, 0.87996),
(20, 691, 0.87996),
(22, 691, 0.87996),
(14, 692, 1.95996),
(20, 692, 1.95996),
(22, 692, 1.95996),
(14, 693, 2.12004),
(20, 693, 2.12004),
(22, 693, 2.12004),
(14, 694, 0.87996),
(20, 694, 0.87996),
(22, 694, 0.87996),
(14, 695, 1.95996),
(20, 695, 1.95996),
(22, 695, 1.95996),
(14, 696, 2.28),
(20, 696, 2.28),
(22, 696, 2.28),
(14, 728, 0.24012),
(14, 729, 1.47996),
(14, 730, 1.83996),
(14, 731, 1.59996),
(14, 732, 1.92),
(14, 733, 1.47996),
(14, 734, 1.8),
(14, 735, 0.39996),
(20, 735, 0.39996),
(22, 735, 0.39996),
(14, 736, 2.00004),
(20, 736, 2.00004),
(22, 736, 2.00004),
(14, 737, 2.28),
(20, 737, 2.28),
(22, 737, 2.28),
(14, 738, 0.87996),
(20, 738, 0.87996),
(22, 738, 0.87996),
(14, 739, 1.83996),
(20, 739, 1.83996),
(22, 739, 1.83996),
(14, 740, 2.4),
(20, 740, 2.4),
(22, 740, 2.4),
(14, 741, 0.63996),
(20, 741, 0.63996),
(22, 741, 0.63996),
(14, 742, 2.00004),
(20, 742, 2.00004),
(22, 742, 2.00004),
(14, 743, 2.31996),
(20, 743, 2.31996),
(22, 743, 2.31996),
(14, 744, 0.56004),
(20, 744, 0.56004),
(22, 744, 0.56004),
(14, 745, 1.88004),
(20, 745, 1.88004),
(22, 745, 1.88004),
(14, 746, 0.32004),
(18, 746, 0.32004),
(20, 746, 0.32004),
(22, 746, 0.32004),
(14, 747, 1.8),
(18, 747, 1.8),
(20, 747, 1.8),
(22, 747, 1.8),
(14, 748, 2.31996),
(18, 748, 2.31996),
(20, 748, 2.31996),
(22, 748, 2.31996),
(14, 749, 0.56004),
(20, 749, 0.56004),
(22, 749, 0.56004),
(14, 750, 1.83996),
(20, 750, 1.83996),
(22, 750, 1.83996),
(14, 751, 2.31996),
(20, 751, 2.31996),
(22, 751, 2.31996),
(14, 752, 0.56004),
(14, 753, 1.76004),
(14, 754, 2.00004),
(14, 755, 0.24),
(22, 755, 0.24),
(14, 756, 1.40004),
(22, 756, 1.40004),
(18, 1065, 0.56004),
(20, 1065, 0.56004),
(18, 1066, 1.64004),
(20, 1066, 1.64004),
(18, 1067, 1.71996),
(20, 1067, 1.71996),
(18, 1075, 3.00339),
(20, 1075, 3.00339),
(30, 2183, 1.2),
(31, 2183, 1.2),
(30, 2184, 7.8),
(31, 2184, 7.8),
(30, 2185, 9.4002),
(31, 2185, 9.4002),
(30, 2186, 4.0002),
(31, 2186, 4.0002),
(30, 2187, 8.5998),
(31, 2187, 8.5998),
(30, 2188, 10.6002),
(31, 2188, 10.6002),
(30, 2189, 3.6),
(31, 2189, 3.6),
(30, 2190, 8.4),
(31, 2190, 8.4),
(30, 2191, 9.1998),
(31, 2191, 9.1998),
(30, 2276, 4.3998),
(31, 2276, 4.3998),
(30, 2277, 8.8002),
(31, 2277, 8.8002),
(30, 2278, 8.79984),
(31, 2278, 8.79984),
(30, 2279, 4.3998),
(31, 2279, 4.3998),
(30, 2280, 10.2),
(31, 2280, 10.2),
(30, 2281, 11.5998),
(31, 2281, 11.5998),
(30, 2282, 0.7998),
(31, 2282, 0.7998),
(30, 2283, 7.2),
(31, 2283, 7.2),
(30, 2284, 8.2002),
(31, 2284, 8.2002),
(30, 2285, 3.1998),
(31, 2285, 3.1998),
(30, 2286, 7.9998),
(31, 2286, 7.9998),
(30, 2287, 8.5998),
(31, 2287, 8.5998),
(30, 2313, 5.9994),
(31, 2313, 5.9994),
(30, 2314, 17.1996),
(31, 2314, 17.1996),
(30, 2315, 10.2),
(31, 2315, 10.2),
(30, 2316, 10.6002),
(31, 2316, 10.6002),
(30, 2317, 8.2002),
(31, 2317, 8.2002),
(30, 2318, 8.5998),
(31, 2318, 8.5998),
(30, 2319, 2.8002),
(31, 2319, 2.8002),
(30, 2320, 8.8002),
(31, 2320, 8.8002),
(30, 2321, 10.3998),
(31, 2321, 10.3998),
(30, 2322, 2.8002),
(31, 2322, 2.8002),
(30, 2323, 9.1998),
(31, 2323, 9.1998),
(30, 2324, 9.6),
(31, 2324, 9.6),
(30, 2325, 2.4),
(31, 2325, 2.4),
(30, 2326, 8.5998),
(31, 2326, 8.5998),
(30, 2327, 10.6002),
(31, 2327, 10.6002),
(30, 2328, 3.1998),
(31, 2328, 3.1998),
(30, 2329, 8.2002),
(31, 2329, 8.2002),
(30, 2330, 8.5998),
(31, 2330, 8.5998),
(30, 2331, 4.3998),
(31, 2331, 4.3998),
(30, 2332, 9.7998),
(31, 2332, 9.7998),
(30, 2333, 6.72012),
(31, 2333, 6.72012),
(30, 2334, 2.4),
(31, 2334, 2.4),
(30, 2335, 7.8),
(31, 2335, 7.8),
(30, 2336, 8.2002),
(31, 2336, 8.2002),
(31, 2406, 0.63996),
(31, 2407, 1.71996),
(34, 2421, 0.2666),
(35, 2424, 0.2666),
(36, 2427, 0.2666),
(59, 2690, 0.63996),
(59, 2691, 1.83996),
(59, 2692, 1.92);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_termsa`
--

INSERT INTO `y18x3_finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(14, 112, 0.48),
(18, 112, 0.48),
(20, 112, 0.48),
(22, 112, 0.48),
(14, 507, 0.24),
(18, 507, 0.24),
(20, 507, 0.24),
(22, 507, 0.24),
(14, 636, 0.08004),
(18, 636, 0.08004),
(20, 636, 0.08004),
(22, 636, 0.08004),
(14, 637, 1.59996),
(22, 637, 1.59996),
(14, 638, 1.71996),
(22, 638, 1.71996),
(14, 639, 0.39996),
(20, 639, 0.39996),
(22, 639, 0.39996),
(14, 640, 1.56),
(20, 640, 1.56),
(22, 640, 1.56),
(14, 641, 1.83996),
(20, 641, 1.83996),
(22, 641, 1.83996),
(14, 642, 0.56004),
(20, 642, 0.56004),
(22, 642, 0.56004),
(14, 643, 2.00004),
(20, 643, 2.00004),
(22, 643, 2.00004),
(14, 644, 2.4),
(20, 644, 2.4),
(22, 644, 2.4),
(14, 645, 0.39996),
(14, 646, 1.76004),
(14, 647, 2.00004),
(14, 648, 0.48),
(20, 648, 0.48),
(22, 648, 0.48),
(14, 649, 1.71996),
(20, 649, 1.71996),
(22, 649, 1.71996),
(14, 650, 1.8),
(20, 650, 1.8),
(22, 650, 1.8),
(14, 810, 0.63996),
(20, 810, 0.63996),
(22, 810, 0.63996),
(14, 811, 1.76004),
(20, 811, 1.76004),
(22, 811, 1.76004),
(14, 812, 1.88004),
(20, 812, 1.88004),
(22, 812, 1.88004),
(18, 1069, 1.68),
(20, 1069, 1.68),
(18, 1070, 1.8),
(20, 1070, 1.8),
(18, 1071, 1.93343),
(20, 1071, 1.93343),
(18, 1072, 1.71996),
(20, 1072, 1.71996),
(18, 1073, 2.04),
(20, 1073, 2.04),
(20, 1096, 0.17),
(30, 2241, 1.9998),
(31, 2241, 1.9998),
(30, 2242, 9.1998),
(31, 2242, 9.1998),
(30, 2243, 9.7998),
(31, 2243, 9.7998),
(30, 2244, 2.4),
(31, 2244, 2.4),
(30, 2245, 9.6),
(31, 2245, 9.6),
(30, 2246, 11.4),
(31, 2246, 11.4),
(30, 2247, 2.4),
(31, 2247, 2.4),
(30, 2248, 8.8002),
(31, 2248, 8.8002),
(30, 2249, 10.6002),
(31, 2249, 10.6002),
(30, 2250, 3.9996),
(31, 2250, 3.9996),
(30, 2251, 7.3998),
(31, 2251, 7.3998),
(30, 2252, 7.8),
(31, 2252, 7.8),
(30, 2253, 9.4002),
(31, 2253, 9.4002),
(30, 2254, 11.2002),
(31, 2254, 11.2002);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_termsb`
--

INSERT INTO `y18x3_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(18, 539, 0.08004),
(14, 539, 0.24012),
(20, 539, 0.24012),
(22, 539, 0.24012),
(30, 539, 0.8004),
(31, 539, 0.8004),
(14, 540, 1.44),
(18, 540, 1.44),
(20, 540, 1.44),
(22, 540, 1.44),
(14, 541, 1.71996),
(18, 541, 1.71996),
(20, 541, 1.71996),
(22, 541, 1.71996),
(14, 542, 1.64004),
(20, 542, 1.64004),
(22, 542, 1.64004),
(14, 543, 1.88004),
(20, 543, 1.88004),
(22, 543, 1.88004),
(14, 544, 1.44),
(20, 544, 1.44),
(22, 544, 1.44),
(14, 545, 1.59996),
(20, 545, 1.59996),
(22, 545, 1.59996),
(14, 546, 0.24),
(20, 546, 0.24),
(22, 546, 0.24),
(14, 547, 1.64004),
(20, 547, 1.64004),
(22, 547, 1.64004),
(14, 548, 2.24004),
(20, 548, 2.24004),
(22, 548, 2.24004),
(14, 549, 0.56004),
(20, 549, 0.56004),
(22, 549, 0.56004),
(14, 550, 2.00004),
(20, 550, 2.00004),
(22, 550, 2.00004),
(14, 551, 2.4),
(20, 551, 2.4),
(22, 551, 2.4),
(14, 552, 0.56004),
(20, 552, 0.56004),
(22, 552, 0.56004),
(14, 553, 1.76004),
(20, 553, 1.76004),
(22, 553, 1.76004),
(14, 554, 2.24004),
(20, 554, 2.24004),
(22, 554, 2.24004),
(14, 555, 0.56004),
(20, 555, 0.56004),
(22, 555, 0.56004),
(14, 556, 1.92),
(20, 556, 1.92),
(22, 556, 1.92),
(14, 557, 2.28),
(20, 557, 2.28),
(22, 557, 2.28),
(14, 558, 1.11996),
(20, 558, 1.11996),
(22, 558, 1.11996),
(14, 559, 2.04),
(20, 559, 2.04),
(22, 559, 2.04),
(14, 560, 2.12004),
(20, 560, 2.12004),
(22, 560, 2.12004),
(14, 561, 0.48),
(20, 561, 0.48),
(22, 561, 0.48),
(14, 562, 1.68),
(20, 562, 1.68),
(22, 562, 1.68),
(14, 563, 1.95996),
(20, 563, 1.95996),
(22, 563, 1.95996),
(14, 564, 0.48),
(20, 564, 0.48),
(22, 564, 0.48),
(14, 565, 1.71996),
(20, 565, 1.71996),
(22, 565, 1.71996),
(14, 566, 1.95996),
(20, 566, 1.95996),
(22, 566, 1.95996),
(14, 567, 0.80004),
(18, 567, 0.80004),
(20, 567, 0.80004),
(22, 567, 0.80004),
(14, 568, 2.12004),
(18, 568, 2.12004),
(20, 568, 2.12004),
(22, 568, 2.12004),
(14, 569, 2.19996),
(18, 569, 2.19996),
(20, 569, 2.19996),
(22, 569, 2.19996),
(14, 570, 0.56004),
(20, 570, 0.56004),
(22, 570, 0.56004),
(14, 571, 1.8),
(20, 571, 1.8),
(22, 571, 1.8),
(14, 572, 2.12004),
(20, 572, 2.12004),
(22, 572, 2.12004),
(30, 2170, 7.6002),
(31, 2170, 7.6002),
(30, 2171, 9),
(31, 2171, 9),
(30, 2172, 8.5998),
(31, 2172, 8.5998),
(30, 2173, 9.1998),
(31, 2173, 9.1998),
(30, 2174, 2.4),
(31, 2174, 2.4),
(30, 2175, 7.9998),
(31, 2175, 7.9998),
(30, 2176, 9.1998),
(31, 2176, 9.1998),
(30, 2177, 0.79339),
(31, 2177, 0.79339),
(30, 2178, 2.32339),
(31, 2178, 2.32339),
(30, 2179, 2.77661),
(31, 2179, 2.77661),
(30, 2180, 3.6),
(31, 2180, 3.6),
(30, 2181, 9.1998),
(31, 2181, 9.1998),
(30, 2182, 11.5998),
(31, 2182, 11.5998),
(31, 2403, 1.0666),
(31, 2404, 2.8666),
(36, 2428, 0.22661),
(59, 2685, 1.12008),
(59, 2686, 1.56),
(59, 2687, 1.56),
(59, 2688, 0.56004),
(59, 2689, 1.56);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_termsc`
--

INSERT INTO `y18x3_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(14, 474, 0.72),
(18, 474, 0.72),
(20, 474, 0.72),
(22, 474, 0.72),
(14, 475, 1.35996),
(18, 475, 1.35996),
(20, 475, 1.35996),
(22, 475, 1.35996),
(14, 476, 1.56),
(18, 476, 1.56),
(20, 476, 1.56),
(22, 476, 1.56),
(14, 477, 1.92),
(18, 477, 1.92),
(20, 477, 1.92),
(22, 477, 1.92),
(14, 478, 1.52004),
(18, 478, 1.52004),
(20, 478, 1.52004),
(22, 478, 1.52004),
(14, 479, 1.64004),
(18, 479, 1.64004),
(20, 479, 1.64004),
(22, 479, 1.64004),
(14, 480, 1.52004),
(18, 480, 1.52004),
(20, 480, 1.52004),
(22, 480, 1.52004),
(14, 481, 1.64004),
(18, 481, 1.64004),
(20, 481, 1.64004),
(22, 481, 1.64004),
(14, 482, 4.56012),
(18, 482, 4.56012),
(20, 482, 4.56012),
(22, 482, 4.56012),
(14, 483, 4.92012),
(18, 483, 4.92012),
(20, 483, 4.92012),
(22, 483, 4.92012),
(14, 484, 4.56012),
(18, 484, 4.56012),
(20, 484, 4.56012),
(22, 484, 4.56012),
(14, 485, 4.92012),
(18, 485, 4.92012),
(20, 485, 4.92012),
(22, 485, 4.92012),
(14, 486, 0.24),
(18, 486, 0.24),
(20, 486, 0.24),
(22, 486, 0.24),
(14, 487, 1.40004),
(18, 487, 1.40004),
(20, 487, 1.40004),
(22, 487, 1.40004),
(14, 488, 0.24),
(18, 488, 0.24),
(20, 488, 0.24),
(22, 488, 0.24),
(14, 489, 1.40004),
(18, 489, 1.40004),
(20, 489, 1.40004),
(22, 489, 1.40004),
(14, 490, 1.47996),
(18, 490, 1.47996),
(20, 490, 1.47996),
(22, 490, 1.47996),
(14, 491, 0.24),
(18, 491, 0.24),
(20, 491, 0.24),
(22, 491, 0.24),
(14, 492, 1.40004),
(18, 492, 1.40004),
(20, 492, 1.40004),
(22, 492, 1.40004),
(59, 493, 0.12),
(14, 493, 0.17),
(20, 493, 0.2),
(52, 493, 0.29),
(14, 522, 0.80004),
(14, 523, 1.83996),
(14, 524, 2.12004),
(30, 2141, 0.6),
(59, 2141, 0.61),
(31, 2141, 0.77),
(30, 2142, 7.2),
(31, 2142, 7.2),
(30, 2143, 9.4002),
(31, 2143, 9.4002),
(30, 2150, 6.3996),
(31, 2150, 6.3996),
(30, 2151, 7.9998),
(31, 2151, 7.9998),
(30, 2152, 9.4002),
(31, 2152, 9.4002),
(30, 2153, 8.8002),
(31, 2153, 8.8002),
(30, 2154, 11.2002),
(31, 2154, 11.2002),
(30, 2155, 11.9942),
(31, 2155, 11.9942),
(30, 2156, 9),
(31, 2156, 9),
(30, 2157, 9.6),
(31, 2157, 9.6),
(30, 2158, 18.2662),
(31, 2158, 18.2662),
(30, 2159, 2.55),
(31, 2159, 2.55),
(30, 2160, 10.3998),
(31, 2160, 10.3998),
(30, 2161, 10.0002),
(31, 2161, 10.0002),
(30, 2162, 9.4002),
(31, 2162, 9.4002),
(30, 2163, 10.8),
(31, 2163, 10.8),
(34, 2413, 0.48),
(35, 2413, 0.48),
(36, 2413, 0.48),
(56, 2413, 1.16),
(59, 2413, 1.16),
(52, 2413, 1.64),
(35, 2423, 0.34),
(36, 2426, 0.34),
(52, 2545, 0.08004),
(56, 2545, 0.08004),
(59, 2545, 0.08004),
(52, 2575, 0.72),
(52, 2577, 0.17),
(52, 2579, 3.67343),
(56, 2583, 0.36),
(59, 2583, 0.36),
(56, 2584, 1.47996),
(59, 2584, 1.47996),
(56, 2585, 1.64004),
(59, 2585, 1.64004),
(56, 2588, 0.36),
(59, 2588, 0.72),
(56, 2627, 0.72),
(56, 2628, 0.34),
(56, 2631, 2.15339),
(59, 2678, 0.72),
(59, 2679, 1.8),
(59, 2684, 2.15339);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_termsd`
--

INSERT INTO `y18x3_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(18, 651, 0.22661),
(20, 651, 0.54653),
(22, 651, 0.54653),
(14, 651, 0.70649),
(30, 651, 3.42581),
(31, 651, 3.42581),
(14, 652, 1.71996),
(14, 653, 1.95996),
(14, 654, 1.56),
(20, 654, 1.56),
(22, 654, 1.56),
(14, 655, 1.88004),
(20, 655, 1.88004),
(22, 655, 1.88004),
(14, 656, 1.76004),
(20, 656, 1.76004),
(22, 656, 1.76004),
(14, 657, 1.95996),
(20, 657, 1.95996),
(22, 657, 1.95996),
(14, 658, 2.32339),
(22, 658, 2.32339),
(14, 659, 0.48),
(20, 659, 0.48),
(22, 659, 0.48),
(14, 660, 1.92),
(20, 660, 1.92),
(22, 660, 1.92),
(14, 661, 2.24004),
(20, 661, 2.24004),
(22, 661, 2.24004),
(14, 662, 0.48),
(20, 662, 0.48),
(22, 662, 0.48),
(14, 663, 1.59996),
(20, 663, 1.59996),
(22, 663, 1.59996),
(14, 664, 1.92),
(20, 664, 1.92),
(22, 664, 1.92),
(18, 1074, 2.43661),
(20, 1074, 2.43661),
(22, 1116, 1.2),
(22, 1117, 2.8),
(22, 1118, 3.4),
(30, 2205, 4.0002),
(31, 2205, 4.0002),
(30, 2206, 8.5998),
(31, 2206, 8.5998),
(30, 2207, 10.3998),
(31, 2207, 10.3998),
(30, 2255, 6.87984),
(31, 2255, 6.87984),
(30, 2256, 7.35984),
(31, 2256, 7.35984),
(30, 2257, 2.09661),
(31, 2257, 2.09661),
(30, 2258, 8.8002),
(31, 2258, 8.8002),
(30, 2259, 9.4002),
(31, 2259, 9.4002),
(30, 2260, 8.4),
(31, 2260, 8.4),
(30, 2261, 10.2),
(31, 2261, 10.2),
(30, 2262, 8.4),
(31, 2262, 8.4),
(30, 2263, 8.8002),
(31, 2263, 8.8002),
(30, 2264, 3.1998),
(31, 2264, 3.1998),
(30, 2265, 7.9998),
(31, 2265, 7.9998),
(30, 2266, 10.3998),
(31, 2266, 10.3998),
(30, 2267, 0.34),
(31, 2267, 0.34),
(30, 2268, 2.32339),
(31, 2268, 2.32339),
(30, 2269, 2.49339),
(31, 2269, 2.49339),
(30, 2270, 2.8002),
(31, 2270, 2.8002),
(30, 2271, 8.5998),
(31, 2271, 8.5998),
(30, 2272, 10.2),
(31, 2272, 10.2),
(30, 2273, 0.7998),
(31, 2273, 0.7998),
(30, 2274, 8.2002),
(31, 2274, 8.2002),
(30, 2275, 9.4002),
(31, 2275, 9.4002);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_links_termse`
--

INSERT INTO `y18x3_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(14, 494, 1.68),
(18, 494, 1.68),
(20, 494, 1.68),
(22, 494, 1.68),
(14, 495, 3.52008),
(18, 495, 3.52008),
(20, 495, 3.52008),
(22, 495, 3.52008),
(14, 496, 4.00008),
(18, 496, 4.00008),
(20, 496, 4.00008),
(22, 496, 4.00008),
(14, 497, 0.6),
(18, 497, 0.6),
(20, 497, 0.6),
(22, 497, 0.6),
(14, 498, 1.52004),
(18, 498, 1.52004),
(20, 498, 1.52004),
(22, 498, 1.52004),
(14, 499, 0.6),
(18, 499, 0.6),
(20, 499, 0.6),
(22, 499, 0.6),
(14, 500, 1.52004),
(18, 500, 1.52004),
(20, 500, 1.52004),
(22, 500, 1.52004),
(14, 501, 1.8),
(18, 501, 1.8),
(20, 501, 1.8),
(22, 501, 1.8),
(14, 502, 4.56012),
(18, 502, 4.56012),
(20, 502, 4.56012),
(22, 502, 4.56012),
(14, 503, 2.00004),
(18, 503, 2.00004),
(20, 503, 2.00004),
(22, 503, 2.00004),
(14, 504, 1.8),
(18, 504, 1.8),
(20, 504, 1.8),
(22, 504, 1.8),
(14, 505, 4.56012),
(18, 505, 4.56012),
(20, 505, 4.56012),
(22, 505, 4.56012),
(14, 506, 2.00004),
(18, 506, 2.00004),
(20, 506, 2.00004),
(22, 506, 2.00004),
(20, 511, 2.4),
(18, 511, 2.88),
(22, 511, 3.36),
(14, 511, 4.32),
(20, 512, 3.36),
(18, 512, 5.04),
(14, 512, 6.72),
(22, 512, 6.72),
(20, 513, 3.91992),
(18, 513, 5.87988),
(14, 513, 7.83984),
(22, 513, 7.83984),
(14, 514, 3.04008),
(14, 515, 1.76004),
(14, 516, 1.88004),
(14, 521, 1.2),
(14, 587, 1.75992),
(20, 587, 1.75992),
(22, 587, 1.75992),
(14, 588, 1.88004),
(20, 588, 1.88004),
(22, 588, 1.88004),
(14, 589, 2.04),
(20, 589, 2.04),
(22, 589, 2.04),
(14, 590, 1.76004),
(20, 590, 1.76004),
(22, 590, 1.76004),
(14, 591, 2.04),
(20, 591, 2.04),
(22, 591, 2.04),
(14, 592, 0.48),
(14, 593, 1.68),
(14, 594, 1.95996),
(14, 595, 0.63996),
(20, 595, 0.63996),
(22, 595, 0.63996),
(14, 596, 1.8),
(20, 596, 1.8),
(22, 596, 1.8),
(14, 597, 2.04),
(20, 597, 2.04),
(22, 597, 2.04),
(14, 725, 0.48),
(20, 725, 0.48),
(22, 725, 0.48),
(14, 726, 1.76004),
(20, 726, 1.76004),
(22, 726, 1.76004),
(14, 727, 2.12004),
(20, 727, 2.12004),
(22, 727, 2.12004),
(18, 1062, 0.17),
(56, 1062, 0.37),
(18, 1063, 0.12),
(20, 1063, 0.12),
(22, 1063, 0.17),
(22, 1119, 1.0666),
(30, 2144, 1.8),
(31, 2144, 1.8),
(30, 2145, 7.6002),
(31, 2145, 7.6002),
(30, 2146, 8.2002),
(31, 2146, 8.2002),
(30, 2208, 0.7998),
(31, 2208, 0.7998),
(30, 2209, 6.7998),
(31, 2209, 6.7998),
(30, 2210, 7.8),
(31, 2210, 7.8),
(30, 2211, 0.96),
(31, 2211, 0.96),
(30, 2212, 4.3998),
(31, 2212, 4.3998),
(30, 2213, 10.0002),
(31, 2213, 10.0002),
(30, 2214, 10.3998),
(31, 2214, 10.3998),
(30, 2304, 2.4),
(31, 2304, 2.4),
(30, 2305, 9.6),
(31, 2305, 9.6),
(30, 2306, 11.2002),
(31, 2306, 11.2002),
(30, 2307, 3.6),
(31, 2307, 3.6),
(30, 2308, 9.6),
(31, 2308, 9.6),
(30, 2309, 12),
(31, 2309, 12),
(30, 2310, 4.0002),
(31, 2310, 4.0002),
(30, 2311, 9.7998),
(31, 2311, 9.7998),
(30, 2312, 10.2),
(31, 2312, 10.2),
(30, 2396, 0.6666),
(52, 2557, 0.56004),
(52, 2558, 1.76004),
(52, 2560, 0.48),
(56, 2560, 0.48),
(59, 2560, 0.48),
(52, 2576, 0.36),
(52, 2580, 1.83996),
(59, 2680, 0.24);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `y18x3_finder_taxonomy`
--

INSERT INTO `y18x3_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(7, 1, 'Category', 1, 1, 0),
(17, 2, 'Отдел', 1, 1, 0),
(18, 7, 'г. Москва', 1, 1, 0),
(23, 2, 'Знаменитость', 1, 1, 0),
(24, 2, 'Анализ', 1, 1, 0),
(30, 7, 'А', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_taxonomy_map`
--

INSERT INTO `y18x3_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(14, 17),
(14, 18),
(18, 17),
(18, 18),
(20, 17),
(20, 18),
(22, 17),
(22, 18),
(30, 23),
(31, 23),
(34, 24),
(35, 24),
(36, 24),
(52, 24),
(52, 30),
(56, 24),
(56, 30),
(59, 24),
(59, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_terms`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2693 ;

--
-- Дамп данных таблицы `y18x3_finder_terms`
--

INSERT INTO `y18x3_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(19, 'index', 'index', 0, 0, 0.3333, 'I532', 12),
(109, 'г', 'г', 0, 0, 0.0667, 'г000', 4),
(110, 'г москва', 'г москва', 0, 1, 1.2667, 'г000', 4),
(111, 'да', 'да', 0, 0, 0.1333, 'д000', 6),
(112, 'москва', 'москва', 0, 0, 0.4, 'м000', 4),
(113, 'отдел', 'отдел', 0, 0, 0.3333, 'о000', 4),
(474, '00', '00', 0, 0, 0.2, '', 4),
(475, '00 в', '00 в', 0, 1, 1.1333, 'в000', 4),
(476, '00 в день', '00 в день', 0, 1, 1.3, 'в000', 4),
(477, '07', '07', 0, 0, 0.2, '', 4),
(478, '07 30-08', '07 30-08', 0, 1, 1.2667, '', 4),
(479, '07 30-08 45', '07 30-08 45', 0, 1, 1.3667, '', 4),
(480, '07 30-10', '07 30-10', 0, 1, 1.2667, '', 4),
(481, '07 30-10 00', '07 30-10 00', 0, 1, 1.3667, '', 4),
(482, '07 30-14', '07 30-14', 0, 1, 1.2667, '', 4),
(483, '07 30-14 30', '07 30-14 30', 0, 1, 1.3667, '', 4),
(484, '07 30-19', '07 30-19', 0, 1, 1.2667, '', 4),
(485, '07 30-19 30', '07 30-19 30', 0, 1, 1.3667, '', 4),
(486, '12', '12', 0, 0, 0.2, '', 4),
(487, '12 30', '12 30', 0, 1, 1.1667, '', 4),
(488, '14', '14', 0, 0, 0.2, '', 4),
(489, '14 00', '14 00', 0, 1, 1.1667, '', 4),
(490, '14 00 в', '14 00 в', 0, 1, 1.2333, 'в000', 4),
(491, '18', '18', 0, 0, 0.2, '', 4),
(492, '18 00', '18 00', 0, 1, 1.1667, '', 4),
(493, '2', '2', 0, 0, 0.1, '', 4),
(494, '30', '30', 0, 0, 0.2, '', 4),
(495, '30 ограничения', '30 ограничения', 0, 1, 1.4667, 'о000', 4),
(496, '30 ограничения после', '30 ограничения после', 0, 1, 1.6667, 'о000', 4),
(497, '30-08', '30-08', 0, 0, 0.5, '', 4),
(498, '30-08 45', '30-08 45', 0, 1, 1.2667, '', 4),
(499, '30-10', '30-10', 0, 0, 0.5, '', 4),
(500, '30-10 00', '30-10 00', 0, 1, 1.2667, '', 4),
(501, '30-14', '30-14', 0, 0, 0.5, '', 4),
(502, '30-14 30', '30-14 30', 0, 1, 1.2667, '', 4),
(503, '30-14 30 ограничения', '30-14 30 ограничения', 0, 1, 1.6667, 'о000', 4),
(504, '30-19', '30-19', 0, 0, 0.5, '', 4),
(505, '30-19 30', '30-19 30', 0, 1, 1.2667, '', 4),
(506, '30-19 30 ограничения', '30-19 30 ограничения', 0, 1, 1.6667, 'о000', 4),
(507, '45', '45', 0, 0, 0.2, '', 4),
(508, '6', '6', 0, 0, 0.1, '', 4),
(509, '6 стр', '6 стр', 0, 1, 1.1667, 'с000', 2),
(510, '6 стр 6', '6 стр 6', 0, 1, 1.2333, 'с000', 2),
(511, 'exists', 'exists', 0, 0, 0.4, 'E232', 4),
(512, 'exists image', 'exists image', 0, 1, 1.4, 'E23252', 4),
(513, 'exists image exists', 'exists image exists', 0, 1, 1.6333, 'E2325232', 4),
(514, 'exists с', 'exists с', 0, 1, 1.2667, 'E232', 1),
(515, 'exists с метро', 'exists с метро', 0, 1, 1.4667, 'E232', 1),
(516, 'exists с обратной', 'exists с обратной', 0, 1, 1.5667, 'E232', 1),
(517, 'image', 'image', 0, 0, 0.3333, 'I520', 4),
(518, 'image exists', 'image exists', 0, 1, 1.4, 'I5232', 4),
(519, 'image exists image', 'image exists image', 0, 1, 1.6, 'I523252', 4),
(520, 'image exists с', 'image exists с', 0, 1, 1.4667, 'I5232', 1),
(521, 'tverskaya', 'tverskaya', 0, 0, 0.6, 'T162', 1),
(522, 'автомобиле', 'автомобиле', 0, 0, 0.6667, 'а000', 1),
(523, 'автомобиле image', 'автомобиле image', 0, 1, 1.5333, 'а520', 1),
(524, 'автомобиле image exists', 'автомобиле image exists', 0, 1, 1.7667, 'а5232', 1),
(525, 'безопасных', 'безопасных', 0, 0, 0.6667, 'б000', 3),
(526, 'безопасных методов', 'безопасных методов', 0, 1, 1.6, 'б000', 3),
(527, 'безопасных методов исследования', 'безопасных методов исследования', 0, 1, 2, 'б000', 3),
(528, 'беременности', 'беременности', 0, 0, 0.8, 'б000', 3),
(529, 'беременности гинекологии', 'беременности гинекологии', 0, 1, 1.8, 'б000', 3),
(530, 'беременности гинекологии урологии', 'беременности гинекологии урологии', 0, 1, 2, 'б000', 3),
(531, 'биоматериала', 'биоматериала', 0, 0, 0.8, 'б000', 4),
(532, 'болезни', 'болезни', 0, 0, 0.4667, 'б000', 3),
(533, 'болезни и', 'болезни и', 0, 1, 1.3, 'б000', 3),
(534, 'болезни и вовремя', 'болезни и вовремя', 0, 1, 1.5667, 'б000', 3),
(535, 'большинства', 'большинства', 0, 0, 0.7333, 'б000', 3),
(536, 'большинства заболеваний', 'большинства заболеваний', 0, 1, 1.7667, 'б000', 3),
(537, 'большинства заболеваний метод', 'большинства заболеваний метод', 0, 1, 1.9667, 'б000', 3),
(538, 'большинства заболеваний на', 'большинства заболеваний на', 0, 1, 1.8667, 'б000', 3),
(539, 'в', 'в', 0, 0, 0.0667, 'в000', 6),
(540, 'в день', 'в день', 0, 1, 1.2, 'в000', 4),
(541, 'в день приема', 'в день приема', 0, 1, 1.4333, 'в000', 4),
(542, 'в педиатрии', 'в педиатрии', 0, 1, 1.3667, 'в000', 3),
(543, 'в педиатрии общей', 'в педиатрии общей', 0, 1, 1.5667, 'в000', 3),
(544, 'в этом', 'в этом', 0, 1, 1.2, 'в000', 3),
(545, 'в этом вам', 'в этом вам', 0, 1, 1.3333, 'в000', 3),
(546, 'вам', 'вам', 0, 0, 0.2, 'в000', 3),
(547, 'вам поможет', 'вам поможет', 0, 1, 1.3667, 'в000', 3),
(548, 'вам поможет ультразвуковое', 'вам поможет ультразвуковое', 0, 1, 1.8667, 'в000', 3),
(549, 'ведение', 'ведение', 0, 0, 0.4667, 'в000', 3),
(550, 'ведение беременности', 'ведение беременности', 0, 1, 1.6667, 'в000', 3),
(551, 'ведение беременности гинекологии', 'ведение беременности гинекологии', 0, 1, 2, 'в000', 3),
(552, 'вовремя', 'вовремя', 0, 0, 0.4667, 'в000', 3),
(553, 'вовремя начать', 'вовремя начать', 0, 1, 1.4667, 'в000', 3),
(554, 'вовремя начать эффективное', 'вовремя начать эффективное', 0, 1, 1.8667, 'в000', 3),
(555, 'вопросы', 'вопросы', 0, 0, 0.4667, 'в000', 3),
(556, 'вопросы касающиеся', 'вопросы касающиеся', 0, 1, 1.6, 'в000', 3),
(557, 'вопросы касающиеся здоровья', 'вопросы касающиеся здоровья', 0, 1, 1.9, 'в000', 3),
(558, 'востребованных', 'востребованных', 0, 0, 0.9333, 'в000', 3),
(559, 'востребованных точных', 'востребованных точных', 0, 1, 1.7, 'в000', 3),
(560, 'востребованных точных и', 'востребованных точных и', 0, 1, 1.7667, 'в000', 3),
(561, 'всегда', 'всегда', 0, 0, 0.4, 'в000', 3),
(562, 'всегда остро', 'всегда остро', 0, 1, 1.4, 'в000', 3),
(563, 'всегда остро встают', 'всегда остро встают', 0, 1, 1.6333, 'в000', 3),
(564, 'встают', 'встают', 0, 0, 0.4, 'в000', 3),
(565, 'встают только', 'встают только', 0, 1, 1.4333, 'в000', 3),
(566, 'встают только тогда', 'встают только тогда', 0, 1, 1.6333, 'в000', 3),
(567, 'выполнения', 'выполнения', 0, 0, 0.6667, 'в000', 4),
(568, 'выполнения исследований', 'выполнения исследований', 0, 1, 1.7667, 'в000', 4),
(569, 'выполнения исследований к', 'выполнения исследований к', 0, 1, 1.8333, 'в000', 4),
(570, 'выявить', 'выявить', 0, 0, 0.4667, 'в000', 3),
(571, 'выявить причину', 'выявить причину', 0, 1, 1.5, 'в000', 3),
(572, 'выявить причину болезни', 'выявить причину болезни', 0, 1, 1.7667, 'в000', 3),
(573, 'гинекологии', 'гинекологии', 0, 0, 0.7333, 'г000', 3),
(574, 'гинекологии урологии', 'гинекологии урологии', 0, 1, 1.6667, 'г000', 3),
(575, 'гинекологии урологии и', 'гинекологии урологии и', 0, 1, 1.7333, 'г000', 3),
(576, 'день', 'день', 0, 0, 0.2667, 'д000', 6),
(577, 'день приема', 'день приема', 0, 1, 1.3667, 'д000', 4),
(578, 'день приема биоматериала', 'день приема биоматериала', 0, 1, 1.8, 'д000', 4),
(579, 'день ультразвуковая', 'день ультразвуковая', 0, 1, 1.6333, 'д000', 3),
(580, 'день ультразвуковая диагностика', 'день ультразвуковая диагностика', 0, 1, 2, 'д000', 3),
(581, 'диагностика', 'диагностика', 0, 0, 0.7333, 'д000', 3),
(582, 'диагностика является', 'диагностика является', 0, 1, 1.6667, 'д000', 3),
(583, 'диагностика является одним', 'диагностика является одним', 0, 1, 1.8667, 'д000', 3),
(584, 'дом', 'дом', 0, 0, 0.2, 'д000', 4),
(585, 'дом 6', 'дом 6', 0, 1, 1.1667, 'д000', 2),
(586, 'дом 6 стр', 'дом 6 стр', 0, 1, 1.3, 'д000', 2),
(587, 'заболеваний', 'заболеваний', 0, 0, 0.7333, 'з000', 3),
(588, 'заболеваний метод', 'заболеваний метод', 0, 1, 1.5667, 'з000', 3),
(589, 'заболеваний метод узи', 'заболеваний метод узи', 0, 1, 1.7, 'з000', 3),
(590, 'заболеваний на', 'заболеваний на', 0, 1, 1.4667, 'з000', 3),
(591, 'заболеваний на ранних', 'заболеваний на ранних', 0, 1, 1.7, 'з000', 3),
(592, 'здания', 'здания', 0, 0, 0.4, 'з000', 1),
(593, 'здания image', 'здания image', 0, 1, 1.4, 'з520', 1),
(594, 'здания image exists', 'здания image exists', 0, 1, 1.6333, 'з5232', 1),
(595, 'здоровья', 'здоровья', 0, 0, 0.5333, 'з000', 3),
(596, 'здоровья всегда', 'здоровья всегда', 0, 1, 1.5, 'з000', 3),
(597, 'здоровья всегда остро', 'здоровья всегда остро', 0, 1, 1.7, 'з000', 3),
(598, 'и', 'и', 0, 0, 0.0667, 'и000', 5),
(599, 'и безопасных', 'и безопасных', 0, 1, 1.4, 'и000', 3),
(600, 'и безопасных методов', 'и безопасных методов', 0, 1, 1.6667, 'и000', 3),
(601, 'и вовремя', 'и вовремя', 0, 1, 1.3, 'и000', 3),
(602, 'и вовремя начать', 'и вовремя начать', 0, 1, 1.5333, 'и000', 3),
(603, 'и позволяет', 'и позволяет', 0, 1, 1.3667, 'и000', 3),
(604, 'и позволяет обследовать', 'и позволяет обследовать', 0, 1, 1.7667, 'и000', 3),
(605, 'и системы', 'и системы', 0, 1, 1.3, 'и000', 3),
(606, 'и системы организма', 'и системы организма', 0, 1, 1.6333, 'и000', 3),
(607, 'из', 'из', 0, 0, 0.1333, 'и000', 3),
(608, 'из самых', 'из самых', 0, 1, 1.2667, 'и000', 3),
(609, 'из самых востребованных', 'из самых востребованных', 0, 1, 1.7667, 'и000', 3),
(610, 'исследование', 'исследование', 0, 0, 0.8, 'и000', 3),
(611, 'исследование на', 'исследование на', 0, 1, 1.5, 'и000', 3),
(612, 'исследование на сегодняшний', 'исследование на сегодняшний', 0, 1, 1.9, 'и000', 3),
(613, 'исследований', 'исследований', 0, 0, 0.8, 'и000', 4),
(614, 'исследований к', 'исследований к', 0, 1, 1.4667, 'и000', 4),
(615, 'исследований к 14', 'исследований к 14', 0, 1, 1.5667, 'и000', 4),
(616, 'исследования', 'исследования', 0, 0, 0.8, 'и000', 3),
(617, 'исследования большинства', 'исследования большинства', 0, 1, 1.8, 'и000', 3),
(618, 'исследования большинства заболеваний', 'исследования большинства заболеваний', 0, 1, 2, 'и000', 3),
(619, 'к', 'к', 0, 0, 0.0667, 'к000', 4),
(620, 'к 14', 'к 14', 0, 1, 1.1333, 'к000', 4),
(621, 'к 14 00', 'к 14 00', 0, 1, 1.2333, 'к000', 4),
(622, 'как', 'как', 0, 0, 0.2, 'к000', 3),
(623, 'как правило', 'как правило', 0, 1, 1.3667, 'к000', 3),
(624, 'как правило у', 'как правило у', 0, 1, 1.4333, 'к000', 3),
(625, 'касающиеся', 'касающиеся', 0, 0, 0.6667, 'к000', 3),
(626, 'касающиеся здоровья', 'касающиеся здоровья', 0, 1, 1.6333, 'к000', 3),
(627, 'касающиеся здоровья всегда', 'касающиеся здоровья всегда', 0, 1, 1.8667, 'к000', 3),
(628, 'когда', 'когда', 0, 0, 0.3333, 'к000', 3),
(629, 'когда откладывать', 'когда откладывать', 0, 1, 1.5667, 'к000', 3),
(630, 'когда откладывать лечение', 'когда откладывать лечение', 0, 1, 1.8333, 'к000', 3),
(631, 'лечение', 'лечение', 0, 0, 0.4667, 'л000', 3),
(632, 'лечение в', 'лечение в', 0, 1, 1.3, 'л000', 3),
(633, 'лечение в этом', 'лечение в этом', 0, 1, 1.4667, 'л000', 3),
(634, 'лечение уже', 'лечение уже', 0, 1, 1.3667, 'л000', 3),
(635, 'лечение уже нельзя', 'лечение уже нельзя', 0, 1, 1.6, 'л000', 3),
(636, 'м', 'м', 0, 0, 0.0667, 'м000', 4),
(637, 'м тверская', 'м тверская', 0, 1, 1.3333, 'м000', 2),
(638, 'м тверская ул', 'м тверская ул', 0, 1, 1.4333, 'м000', 2),
(639, 'метод', 'метод', 0, 0, 0.3333, 'м000', 3),
(640, 'метод узи', 'метод узи', 0, 1, 1.3, 'м000', 3),
(641, 'метод узи широко', 'метод узи широко', 0, 1, 1.5333, 'м000', 3),
(642, 'методов', 'методов', 0, 0, 0.4667, 'м000', 3),
(643, 'методов исследования', 'методов исследования', 0, 1, 1.6667, 'м000', 3),
(644, 'методов исследования большинства', 'методов исследования большинства', 0, 1, 2, 'м000', 3),
(645, 'метро', 'метро', 0, 0, 0.3333, 'м000', 1),
(646, 'метро тверская', 'метро тверская', 0, 1, 1.4667, 'м000', 1),
(647, 'метро тверская image', 'метро тверская image', 0, 1, 1.6667, 'м520', 1),
(648, 'многие', 'многие', 0, 0, 0.4, 'м000', 3),
(649, 'многие органы', 'многие органы', 0, 1, 1.4333, 'м000', 3),
(650, 'многие органы и', 'многие органы и', 0, 1, 1.5, 'м000', 3),
(651, 'на', 'на', 0, 0, 0.1333, 'н000', 6),
(652, 'на автомобиле', 'на автомобиле', 0, 1, 1.4333, 'н000', 1),
(653, 'на автомобиле image', 'на автомобиле image', 0, 1, 1.6333, 'н520', 1),
(654, 'на ранних', 'на ранних', 0, 1, 1.3, 'н000', 3),
(655, 'на ранних стадиях', 'на ранних стадиях', 0, 1, 1.5667, 'н000', 3),
(656, 'на сегодняшний', 'на сегодняшний', 0, 1, 1.4667, 'н000', 3),
(657, 'на сегодняшний день', 'на сегодняшний день', 0, 1, 1.6333, 'н000', 3),
(658, 'на тверской', 'на тверской', 0, 1, 1.3667, 'н000', 2),
(659, 'начать', 'начать', 0, 0, 0.4, 'н000', 3),
(660, 'начать эффективное', 'начать эффективное', 0, 1, 1.6, 'н000', 3),
(661, 'начать эффективное лечение', 'начать эффективное лечение', 0, 1, 1.8667, 'н000', 3),
(662, 'нельзя', 'нельзя', 0, 0, 0.4, 'н000', 3),
(663, 'нельзя как', 'нельзя как', 0, 1, 1.3333, 'н000', 3),
(664, 'нельзя как правило', 'нельзя как правило', 0, 1, 1.6, 'н000', 3),
(665, 'обратной', 'обратной', 0, 0, 0.5333, 'о000', 1),
(666, 'обратной стороны', 'обратной стороны', 0, 1, 1.5333, 'о000', 1),
(667, 'обратной стороны здания', 'обратной стороны здания', 0, 1, 1.7667, 'о000', 1),
(668, 'обследовать', 'обследовать', 0, 0, 0.7333, 'о000', 3),
(669, 'обследовать многие', 'обследовать многие', 0, 1, 1.6, 'о000', 3),
(670, 'обследовать многие органы', 'обследовать многие органы', 0, 1, 1.8333, 'о000', 3),
(671, 'общей', 'общей', 0, 0, 0.3333, 'о000', 3),
(672, 'общей терапии', 'общей терапии', 0, 1, 1.4333, 'о000', 3),
(673, 'общей терапии ведение', 'общей терапии ведение', 0, 1, 1.7, 'о000', 3),
(674, 'ограничения', 'ограничения', 0, 0, 0.7333, 'о000', 4),
(675, 'ограничения после', 'ограничения после', 0, 1, 1.5667, 'о000', 4),
(676, 'ограничения после 12', 'ограничения после 12', 0, 1, 1.6667, 'о000', 4),
(677, 'ограничения после 18', 'ограничения после 18', 0, 1, 1.6667, 'о000', 4),
(678, 'одним', 'одним', 0, 0, 0.3333, 'о000', 3),
(679, 'одним из', 'одним из', 0, 1, 1.2667, 'о000', 3),
(680, 'одним из самых', 'одним из самых', 0, 1, 1.4667, 'о000', 3),
(681, 'организма', 'организма', 0, 0, 0.6, 'о000', 3),
(682, 'органы', 'органы', 0, 0, 0.4, 'о000', 3),
(683, 'органы и', 'органы и', 0, 1, 1.2667, 'о000', 3),
(684, 'органы и системы', 'органы и системы', 0, 1, 1.5333, 'о000', 3),
(685, 'остро', 'остро', 0, 0, 0.3333, 'о000', 3),
(686, 'остро встают', 'остро встают', 0, 1, 1.4, 'о000', 3),
(687, 'остро встают только', 'остро встают только', 0, 1, 1.6333, 'о000', 3),
(688, 'отделение', 'отделение', 0, 0, 0.6, 'о000', 4),
(689, 'отделение на', 'отделение на', 0, 1, 1.4, 'о000', 4),
(690, 'отделение на тверской', 'отделение на тверской', 0, 1, 1.7, 'о000', 2),
(691, 'откладывать', 'откладывать', 0, 0, 0.7333, 'о000', 3),
(692, 'откладывать лечение', 'откладывать лечение', 0, 1, 1.6333, 'о000', 3),
(693, 'откладывать лечение уже', 'откладывать лечение уже', 0, 1, 1.7667, 'о000', 3),
(694, 'отсутствуют', 'отсутствуют', 0, 0, 0.7333, 'о000', 3),
(695, 'отсутствуют выявить', 'отсутствуют выявить', 0, 1, 1.6333, 'о000', 3),
(696, 'отсутствуют выявить причину', 'отсутствуют выявить причину', 0, 1, 1.9, 'о000', 3),
(697, 'педиатрии', 'педиатрии', 0, 0, 0.6, 'п000', 3),
(698, 'педиатрии общей', 'педиатрии общей', 0, 1, 1.5, 'п000', 3),
(699, 'педиатрии общей терапии', 'педиатрии общей терапии', 0, 1, 1.7667, 'п000', 3),
(700, 'позволяет', 'позволяет', 0, 0, 0.6, 'п000', 3),
(701, 'позволяет обследовать', 'позволяет обследовать', 0, 1, 1.7, 'п000', 3),
(702, 'позволяет обследовать многие', 'позволяет обследовать многие', 0, 1, 1.9333, 'п000', 3),
(703, 'поможет', 'поможет', 0, 0, 0.4667, 'п000', 3),
(704, 'поможет ультразвуковое', 'поможет ультразвуковое', 0, 1, 1.7333, 'п000', 3),
(705, 'поможет ультразвуковое исследование', 'поможет ультразвуковое исследование', 0, 1, 2, 'п000', 3),
(706, 'после', 'после', 0, 0, 0.3333, 'п000', 4),
(707, 'после 12', 'после 12', 0, 1, 1.2667, 'п000', 4),
(708, 'после 12 30', 'после 12 30', 0, 1, 1.3667, 'п000', 4),
(709, 'после 18', 'после 18', 0, 1, 1.2667, 'п000', 4),
(710, 'после 18 00', 'после 18 00', 0, 1, 1.3667, 'п000', 4),
(711, 'правило', 'правило', 0, 0, 0.4667, 'п000', 3),
(712, 'правило у', 'правило у', 0, 1, 1.3, 'п000', 3),
(713, 'правило у большинства', 'правило у большинства', 0, 1, 1.7, 'п000', 3),
(714, 'приема', 'приема', 0, 0, 0.4, 'п000', 4),
(715, 'приема биоматериала', 'приема биоматериала', 0, 1, 1.6333, 'п000', 4),
(716, 'приехав', 'приехав', 0, 0, 0.4667, 'п000', 1),
(717, 'приехав на', 'приехав на', 0, 1, 1.3333, 'п000', 1),
(718, 'приехав на автомобиле', 'приехав на автомобиле', 0, 1, 1.7, 'п000', 1),
(719, 'применяется', 'применяется', 0, 0, 0.7333, 'п000', 3),
(720, 'применяется в', 'применяется в', 0, 1, 1.4333, 'п000', 3),
(721, 'применяется в педиатрии', 'применяется в педиатрии', 0, 1, 1.7667, 'п000', 3),
(722, 'причину', 'причину', 0, 0, 0.4667, 'п000', 3),
(723, 'причину болезни', 'причину болезни', 0, 1, 1.5, 'п000', 3),
(724, 'причину болезни и', 'причину болезни и', 0, 1, 1.5667, 'п000', 3),
(725, 'ранних', 'ранних', 0, 0, 0.4, 'р000', 3),
(726, 'ранних стадиях', 'ранних стадиях', 0, 1, 1.4667, 'р000', 3),
(727, 'ранних стадиях симптомы', 'ранних стадиях симптомы', 0, 1, 1.7667, 'р000', 3),
(728, 'с', 'с', 0, 0, 0.0667, 'с000', 1),
(729, 'с метро', 'с метро', 0, 1, 1.2333, 'с000', 1),
(730, 'с метро тверская', 'с метро тверская', 0, 1, 1.5333, 'с000', 1),
(731, 'с обратной', 'с обратной', 0, 1, 1.3333, 'с000', 1),
(732, 'с обратной стороны', 'с обратной стороны', 0, 1, 1.6, 'с000', 1),
(733, 'с улицы', 'с улицы', 0, 1, 1.2333, 'с000', 1),
(734, 'с улицы приехав', 'с улицы приехав', 0, 1, 1.5, 'с000', 1),
(735, 'самых', 'самых', 0, 0, 0.3333, 'с000', 3),
(736, 'самых востребованных', 'самых востребованных', 0, 1, 1.6667, 'с000', 3),
(737, 'самых востребованных точных', 'самых востребованных точных', 0, 1, 1.9, 'с000', 3),
(738, 'сегодняшний', 'сегодняшний', 0, 0, 0.7333, 'с000', 3),
(739, 'сегодняшний день', 'сегодняшний день', 0, 1, 1.5333, 'с000', 3),
(740, 'сегодняшний день ультразвуковая', 'сегодняшний день ультразвуковая', 0, 1, 2, 'с000', 3),
(741, 'симптомы', 'симптомы', 0, 0, 0.5333, 'с000', 3),
(742, 'симптомы отсутствуют', 'симптомы отсутствуют', 0, 1, 1.6667, 'с000', 3),
(743, 'симптомы отсутствуют выявить', 'симптомы отсутствуют выявить', 0, 1, 1.9333, 'с000', 3),
(744, 'системы', 'системы', 0, 0, 0.4667, 'с000', 3),
(745, 'системы организма', 'системы организма', 0, 1, 1.5667, 'с000', 3),
(746, 'срок', 'срок', 0, 0, 0.2667, 'с000', 4),
(747, 'срок выполнения', 'срок выполнения', 0, 1, 1.5, 'с000', 4),
(748, 'срок выполнения исследований', 'срок выполнения исследований', 0, 1, 1.9333, 'с000', 4),
(749, 'стадиях', 'стадиях', 0, 0, 0.4667, 'с000', 3),
(750, 'стадиях симптомы', 'стадиях симптомы', 0, 1, 1.5333, 'с000', 3),
(751, 'стадиях симптомы отсутствуют', 'стадиях симптомы отсутствуют', 0, 1, 1.9333, 'с000', 3),
(752, 'стороны', 'стороны', 0, 0, 0.4667, 'с000', 1),
(753, 'стороны здания', 'стороны здания', 0, 1, 1.4667, 'с000', 1),
(754, 'стороны здания image', 'стороны здания image', 0, 1, 1.6667, 'с520', 1),
(755, 'стр', 'стр', 0, 0, 0.2, 'с000', 2),
(756, 'стр 6', 'стр 6', 0, 1, 1.1667, 'с000', 2),
(757, 'тверская', 'тверская', 0, 0, 0.5333, 'т000', 2),
(758, 'тверская image', 'тверская image', 0, 1, 1.4667, 'т520', 1),
(759, 'тверская image exists', 'тверская image exists', 0, 1, 1.7, 'т5232', 1),
(760, 'тверская дом', 'тверская дом', 0, 1, 1.4, 'т000', 2),
(761, 'тверская дом 6', 'тверская дом 6', 0, 1, 1.4667, 'т000', 2),
(762, 'тверская ул', 'тверская ул', 0, 1, 1.3667, 'т000', 2),
(763, 'тверская ул тверская', 'тверская ул тверская', 0, 1, 1.6667, 'т000', 2),
(764, 'тверской', 'тверской', 0, 0, 0.5333, 'т000', 2),
(765, 'терапии', 'терапии', 0, 0, 0.4667, 'т000', 3),
(766, 'терапии ведение', 'терапии ведение', 0, 1, 1.5, 'т000', 3),
(767, 'терапии ведение беременности', 'терапии ведение беременности', 0, 1, 1.9333, 'т000', 3),
(768, 'тогда', 'тогда', 0, 0, 0.3333, 'т000', 3),
(769, 'тогда когда', 'тогда когда', 0, 1, 1.3667, 'т000', 3),
(770, 'тогда когда откладывать', 'тогда когда откладывать', 0, 1, 1.7667, 'т000', 3),
(771, 'только', 'только', 0, 0, 0.4, 'т000', 3),
(772, 'только тогда', 'только тогда', 0, 1, 1.4, 'т000', 3),
(773, 'только тогда когда', 'только тогда когда', 0, 1, 1.6, 'т000', 3),
(774, 'точных', 'точных', 0, 0, 0.4, 'т000', 3),
(775, 'точных и', 'точных и', 0, 1, 1.2667, 'т000', 3),
(776, 'точных и безопасных', 'точных и безопасных', 0, 1, 1.6333, 'т000', 3),
(777, 'у', 'у', 0, 0, 0.0667, 'у000', 3),
(778, 'у большинства', 'у большинства', 0, 1, 1.4333, 'у000', 3),
(779, 'у большинства заболеваний', 'у большинства заболеваний', 0, 1, 1.8333, 'у000', 3),
(780, 'уже', 'уже', 0, 0, 0.2, 'у000', 3),
(781, 'уже нельзя', 'уже нельзя', 0, 1, 1.3333, 'у000', 3),
(782, 'уже нельзя как', 'уже нельзя как', 0, 1, 1.4667, 'у000', 3),
(783, 'узи', 'узи', 0, 0, 0.2, 'у000', 3),
(784, 'узи широко', 'узи широко', 0, 1, 1.3333, 'у000', 3),
(785, 'узи широко применяется', 'узи широко применяется', 0, 1, 1.7333, 'у000', 3),
(786, 'ул', 'ул', 0, 0, 0.1333, 'у000', 4),
(787, 'ул тверская', 'ул тверская', 0, 1, 1.3667, 'у000', 2),
(788, 'ул тверская дом', 'ул тверская дом', 0, 1, 1.5, 'у000', 2),
(789, 'улицы', 'улицы', 0, 0, 0.3333, 'у000', 1),
(790, 'улицы приехав', 'улицы приехав', 0, 1, 1.4333, 'у000', 1),
(791, 'улицы приехав на', 'улицы приехав на', 0, 1, 1.5333, 'у000', 1),
(792, 'ультразвуковая', 'ультразвуковая', 0, 0, 0.9333, 'у000', 3),
(793, 'ультразвуковая диагностика', 'ультразвуковая диагностика', 0, 1, 1.8667, 'у000', 3),
(794, 'ультразвуковая диагностика является', 'ультразвуковая диагностика является', 0, 1, 2, 'у000', 3),
(795, 'ультразвуковое', 'ультразвуковое', 0, 0, 0.9333, 'у000', 3),
(796, 'ультразвуковое исследование', 'ультразвуковое исследование', 0, 1, 1.9, 'у000', 3),
(797, 'ультразвуковое исследование на', 'ультразвуковое исследование на', 0, 1, 2, 'у000', 3),
(798, 'урологии', 'урологии', 0, 0, 0.5333, 'у000', 3),
(799, 'урологии и', 'урологии и', 0, 1, 1.3333, 'у000', 3),
(800, 'урологии и позволяет', 'урологии и позволяет', 0, 1, 1.6667, 'у000', 3),
(801, 'широко', 'широко', 0, 0, 0.4, 'ш000', 3),
(802, 'широко применяется', 'широко применяется', 0, 1, 1.6, 'ш000', 3),
(803, 'широко применяется в', 'широко применяется в', 0, 1, 1.6667, 'ш000', 3),
(804, 'этом', 'этом', 0, 0, 0.2667, 'э000', 3),
(805, 'этом вам', 'этом вам', 0, 1, 1.2667, 'э000', 3),
(806, 'этом вам поможет', 'этом вам поможет', 0, 1, 1.5333, 'э000', 3),
(807, 'эффективное', 'эффективное', 0, 0, 0.7333, 'э000', 3),
(808, 'эффективное лечение', 'эффективное лечение', 0, 1, 1.6333, 'э000', 3),
(809, 'эффективное лечение в', 'эффективное лечение в', 0, 1, 1.7, 'э000', 3),
(810, 'является', 'является', 0, 0, 0.5333, 'я000', 3),
(811, 'является одним', 'является одним', 0, 1, 1.4667, 'я000', 3),
(812, 'является одним из', 'является одним из', 0, 1, 1.5667, 'я000', 3),
(1062, '3', '3', 0, 0, 0.1, '', 2),
(1063, '5', '5', 0, 0, 0.1, '', 3),
(1064, 'medvedkovo', 'medvedkovo', 0, 0, 0.6667, 'M31321', 2),
(1065, 'грекова', 'грекова', 0, 0, 0.4667, 'г000', 2),
(1066, 'грекова дом', 'грекова дом', 0, 1, 1.3667, 'г000', 2),
(1067, 'грекова дом 5', 'грекова дом 5', 0, 1, 1.4333, 'г000', 2),
(1068, 'дом 5', 'дом 5', 0, 1, 1.1667, 'д000', 2),
(1069, 'м медведково', 'м медведково', 0, 1, 1.4, 'м000', 2),
(1070, 'м медведково ул', 'м медведково ул', 0, 1, 1.5, 'м000', 2),
(1071, 'медведково', 'медведково', 0, 0, 0.6667, 'м000', 2),
(1072, 'медведково ул', 'медведково ул', 0, 1, 1.4333, 'м000', 2),
(1073, 'медведково ул грекова', 'медведково ул грекова', 0, 1, 1.7, 'м000', 2),
(1074, 'на медведково', 'на медведково', 0, 1, 1.4333, 'н000', 2),
(1075, 'отделение на медведково', 'отделение на медведково', 0, 1, 1.7667, 'о000', 2),
(1076, 'ул грекова', 'ул грекова', 0, 1, 1.3333, 'у000', 2),
(1077, 'ул грекова дом', 'ул грекова дом', 0, 1, 1.4667, 'у000', 2),
(1096, '4', '4', 0, 0, 0.1, '', 1),
(1097, 'medvedkovo 2', 'medvedkovo 2', 0, 1, 1.4, 'M31321', 1),
(1114, 'na', 'na', 0, 0, 0.1333, 'N000', 1),
(1115, 'na tverskoj', 'na tverskoj', 0, 1, 1.3667, 'N3162', 1),
(1116, 'otdelenie', 'otdelenie', 0, 0, 0.6, 'O345', 1),
(1117, 'otdelenie na', 'otdelenie na', 0, 1, 1.4, 'O345', 1),
(1118, 'otdelenie na tverskoj', 'otdelenie na tverskoj', 0, 1, 1.7, 'O3453162', 1),
(1119, 'tverskoj', 'tverskoj', 0, 0, 0.5333, 'T162', 1),
(2141, '1', '1', 0, 0, 0.1, '', 3),
(2142, '1 день', '1 день', 0, 1, 1.2, 'д000', 2),
(2143, '1 день безусловно', '1 день безусловно', 0, 1, 1.5667, 'д000', 2),
(2144, '3-4', '3-4', 0, 0, 0.3, '', 2),
(2145, '3-4 дней', '3-4 дней', 0, 1, 1.2667, 'д000', 2),
(2146, '3-4 дней до', '3-4 дней до', 0, 1, 1.3667, 'д000', 2),
(2150, 'анализов', 'анализов', 0, 0, 0.5333, 'а000', 2),
(2151, 'анализов в', 'анализов в', 0, 1, 1.3333, 'а000', 2),
(2152, 'анализов в лучшем', 'анализов в лучшем', 0, 1, 1.5667, 'а000', 2),
(2153, 'анализов можно', 'анализов можно', 0, 1, 1.4667, 'а000', 2),
(2154, 'анализов можно подвергнуть', 'анализов можно подвергнуть', 0, 1, 1.8667, 'а000', 2),
(2155, 'анализы', 'анализы', 0, 0, 0.4667, 'а000', 2),
(2156, 'анализы анализы', 'анализы анализы', 0, 1, 1.5, 'а000', 2),
(2157, 'анализы анализы на', 'анализы анализы на', 0, 1, 1.6, 'а000', 2),
(2158, 'анализы на', 'анализы на', 0, 1, 1.3333, 'а000', 2),
(2159, 'анализы на дому', 'анализы на дому', 0, 1, 1.5, 'а000', 2),
(2160, 'анализы на онкомаркеры', 'анализы на онкомаркеры', 0, 1, 1.7333, 'а000', 2),
(2161, 'анализы на различные', 'анализы на различные', 0, 1, 1.6667, 'а000', 2),
(2162, 'анализы требуется', 'анализы требуется', 0, 1, 1.5667, 'а000', 2),
(2163, 'анализы требуется срочно', 'анализы требуется срочно', 0, 1, 1.8, 'а000', 2),
(2164, 'безусловно', 'безусловно', 0, 0, 0.6667, 'б000', 2),
(2165, 'безусловно сдать', 'безусловно сдать', 0, 1, 1.5333, 'б000', 2),
(2166, 'безусловно сдать можно', 'безусловно сдать можно', 0, 1, 1.7333, 'б000', 2),
(2167, 'бывают', 'бывают', 0, 0, 0.4, 'б000', 2),
(2168, 'бывают готовятся', 'бывают готовятся', 0, 1, 1.5333, 'б000', 2),
(2169, 'бывают готовятся от', 'бывают готовятся от', 0, 1, 1.6333, 'б000', 2),
(2170, 'в лучшем', 'в лучшем', 0, 1, 1.2667, 'в000', 2),
(2171, 'в лучшем случае', 'в лучшем случае', 0, 1, 1.5, 'в000', 2),
(2172, 'в поликлинике', 'в поликлинике', 0, 1, 1.4333, 'в000', 2),
(2173, 'в поликлинике по', 'в поликлинике по', 0, 1, 1.5333, 'в000', 2),
(2174, 'вопрос', 'вопрос', 0, 0, 0.4, 'в000', 2),
(2175, 'вопрос где', 'вопрос где', 0, 1, 1.3333, 'в000', 2),
(2176, 'вопрос где сдать', 'вопрос где сдать', 0, 1, 1.5333, 'в000', 2),
(2177, 'выбрать', 'выбрать', 0, 0, 0.4667, 'в000', 2),
(2178, 'выбрать нас', 'выбрать нас', 0, 1, 1.3667, 'в000', 2),
(2179, 'выбрать нас анализы', 'выбрать нас анализы', 0, 1, 1.6333, 'в000', 2),
(2180, 'выполняют', 'выполняют', 0, 0, 0.6, 'в000', 2),
(2181, 'выполняют работу', 'выполняют работу', 0, 1, 1.5333, 'в000', 2),
(2182, 'выполняют работу специалисты', 'выполняют работу специалисты', 0, 1, 1.9333, 'в000', 2),
(2183, 'где', 'где', 0, 0, 0.2, 'г000', 2),
(2184, 'где сдать', 'где сдать', 0, 1, 1.3, 'г000', 2),
(2185, 'где сдать анализы', 'где сдать анализы', 0, 1, 1.5667, 'г000', 2),
(2186, 'гистологию', 'гистологию', 0, 0, 0.6667, 'г000', 2),
(2187, 'гистологию на', 'гистологию на', 0, 1, 1.4333, 'г000', 2),
(2188, 'гистологию на цитологию', 'гистологию на цитологию', 0, 1, 1.7667, 'г000', 2),
(2189, 'готовятся', 'готовятся', 0, 0, 0.6, 'г000', 2),
(2190, 'готовятся от', 'готовятся от', 0, 1, 1.4, 'г000', 2),
(2191, 'готовятся от 3-4', 'готовятся от 3-4', 0, 1, 1.5333, 'г000', 2),
(2194, 'да и', 'да и', 0, 1, 1.1333, 'д000', 2),
(2195, 'да и результаты', 'да и результаты', 0, 1, 1.5, 'д000', 2),
(2196, 'день безусловно', 'день безусловно', 0, 1, 1.5, 'д000', 2),
(2197, 'день безусловно сдать', 'день безусловно сдать', 0, 1, 1.7, 'д000', 2),
(2198, 'дней', 'дней', 0, 0, 0.2667, 'д000', 3),
(2199, 'дней до', 'дней до', 0, 1, 1.2333, 'д000', 2),
(2200, 'дней до месяца', 'дней до месяца', 0, 1, 1.4667, 'д000', 2),
(2201, 'до', 'до', 0, 0, 0.1333, 'д000', 2),
(2202, 'до месяца', 'до месяца', 0, 1, 1.3, 'д000', 2),
(2203, 'до месяца значительно', 'до месяца значительно', 0, 1, 1.7, 'д000', 2),
(2204, 'дому', 'дому', 0, 0, 0.2667, 'д000', 2),
(2205, 'жительства', 'жительства', 0, 0, 0.6667, 'ж000', 2),
(2206, 'жительства но', 'жительства но', 0, 1, 1.4333, 'ж000', 2),
(2207, 'жительства но точность', 'жительства но точность', 0, 1, 1.7333, 'ж000', 2),
(2208, 'за', 'за', 0, 0, 0.1333, 'з000', 2),
(2209, 'за 1', 'за 1', 0, 1, 1.1333, 'з000', 2),
(2210, 'за 1 день', 'за 1 день', 0, 1, 1.3, 'з000', 2),
(2211, 'знаменитость', 'знаменитость', 0, 0, 0.8, 'з000', 2),
(2212, 'значительно', 'значительно', 0, 0, 0.7333, 'з000', 2),
(2213, 'значительно надёжнее', 'значительно надёжнее', 0, 1, 1.6667, 'з000', 2),
(2214, 'значительно надёжнее и', 'значительно надёжнее и', 0, 1, 1.7333, 'з000', 2),
(2215, 'и в', 'и в', 0, 1, 1.1, 'и000', 2),
(2216, 'и в поликлинике', 'и в поликлинике', 0, 1, 1.5, 'и000', 2),
(2217, 'и оперативнее', 'и оперативнее', 0, 1, 1.4333, 'и000', 2),
(2218, 'и оперативнее выполняют', 'и оперативнее выполняют', 0, 1, 1.7667, 'и000', 2),
(2219, 'и прочее', 'и прочее', 0, 1, 1.2667, 'и000', 2),
(2220, 'и прочее интересует', 'и прочее интересует', 0, 1, 1.6333, 'и000', 2),
(2221, 'и результаты', 'и результаты', 0, 1, 1.4, 'и000', 2),
(2222, 'и результаты анализов', 'и результаты анализов', 0, 1, 1.7, 'и000', 2),
(2223, 'и то', 'и то', 0, 1, 1.1333, 'и000', 2),
(2224, 'и то что', 'и то что', 0, 1, 1.2667, 'и000', 2),
(2225, 'интересует', 'интересует', 0, 0, 0.6667, 'и000', 2),
(2226, 'интересует сегодня', 'интересует сегодня', 0, 1, 1.6, 'и000', 2),
(2227, 'интересует сегодня многих', 'интересует сегодня многих', 0, 1, 1.8333, 'и000', 2),
(2228, 'инфекции', 'инфекции', 0, 0, 0.5333, 'и000', 2),
(2229, 'инфекции клинические', 'инфекции клинические', 0, 1, 1.6667, 'и000', 2),
(2230, 'инфекции клинические анализы', 'инфекции клинические анализы', 0, 1, 1.9333, 'и000', 2),
(2231, 'клинические', 'клинические', 0, 0, 0.7333, 'к000', 2),
(2232, 'клинические анализы', 'клинические анализы', 0, 1, 1.6333, 'к000', 2),
(2233, 'клинические анализы на', 'клинические анализы на', 0, 1, 1.7333, 'к000', 2),
(2235, 'лучше', 'лучше', 0, 0, 0.3333, 'л000', 2),
(2236, 'лучше выбрать', 'лучше выбрать', 0, 1, 1.4333, 'л000', 2),
(2237, 'лучше выбрать нас', 'лучше выбрать нас', 0, 1, 1.5667, 'л000', 2),
(2238, 'лучшем', 'лучшем', 0, 0, 0.4, 'л000', 2),
(2239, 'лучшем случае', 'лучшем случае', 0, 1, 1.4333, 'л000', 2),
(2240, 'лучшем случае бывают', 'лучшем случае бывают', 0, 1, 1.6667, 'л000', 2),
(2241, 'месту', 'месту', 0, 0, 0.3333, 'м000', 2),
(2242, 'месту жительства', 'месту жительства', 0, 1, 1.5333, 'м000', 2),
(2243, 'месту жительства но', 'месту жительства но', 0, 1, 1.6333, 'м000', 2),
(2244, 'месяца', 'месяца', 0, 0, 0.4, 'м000', 2),
(2245, 'месяца значительно', 'месяца значительно', 0, 1, 1.6, 'м000', 2),
(2246, 'месяца значительно надёжнее', 'месяца значительно надёжнее', 0, 1, 1.9, 'м000', 2),
(2247, 'многих', 'многих', 0, 0, 0.4, 'м000', 2),
(2248, 'многих следует', 'многих следует', 0, 1, 1.4667, 'м000', 2),
(2249, 'многих следует отметить', 'многих следует отметить', 0, 1, 1.7667, 'м000', 2),
(2250, 'можно', 'можно', 0, 0, 0.3333, 'м000', 2),
(2251, 'можно и', 'можно и', 0, 1, 1.2333, 'м000', 2),
(2252, 'можно и в', 'можно и в', 0, 1, 1.3, 'м000', 2),
(2253, 'можно подвергнуть', 'можно подвергнуть', 0, 1, 1.5667, 'м000', 2),
(2254, 'можно подвергнуть сомнению', 'можно подвергнуть сомнению', 0, 1, 1.8667, 'м000', 2),
(2255, 'на гистологию', 'на гистологию', 0, 1, 1.4333, 'н000', 2),
(2256, 'на гистологию на', 'на гистологию на', 0, 1, 1.5333, 'н000', 2),
(2257, 'на дому', 'на дому', 0, 1, 1.2333, 'н000', 2),
(2258, 'на онкомаркеры', 'на онкомаркеры', 0, 1, 1.4667, 'н000', 2),
(2259, 'на онкомаркеры на', 'на онкомаркеры на', 0, 1, 1.5667, 'н000', 2),
(2260, 'на различные', 'на различные', 0, 1, 1.4, 'н000', 2),
(2261, 'на различные инфекции', 'на различные инфекции', 0, 1, 1.7, 'н000', 2),
(2262, 'на цитологию', 'на цитологию', 0, 1, 1.4, 'н000', 2),
(2263, 'на цитологию и', 'на цитологию и', 0, 1, 1.4667, 'н000', 2),
(2264, 'надёжнее', 'надёжнее', 0, 0, 0.5333, 'н000', 2),
(2265, 'надёжнее и', 'надёжнее и', 0, 1, 1.3333, 'н000', 2),
(2266, 'надёжнее и оперативнее', 'надёжнее и оперативнее', 0, 1, 1.7333, 'н000', 2),
(2267, 'нас', 'нас', 0, 0, 0.2, 'н000', 2),
(2268, 'нас анализы', 'нас анализы', 0, 1, 1.3667, 'н000', 2),
(2269, 'нас анализы на', 'нас анализы на', 0, 1, 1.4667, 'н000', 2),
(2270, 'нередко', 'нередко', 0, 0, 0.4667, 'н000', 2),
(2271, 'нередко сдать', 'нередко сдать', 0, 1, 1.4333, 'н000', 2),
(2272, 'нередко сдать анализы', 'нередко сдать анализы', 0, 1, 1.7, 'н000', 2),
(2273, 'но', 'но', 0, 0, 0.1333, 'н000', 2),
(2274, 'но точность', 'но точность', 0, 1, 1.3667, 'н000', 2),
(2275, 'но точность таких', 'но точность таких', 0, 1, 1.5667, 'н000', 2),
(2276, 'онкомаркеры', 'онкомаркеры', 0, 0, 0.7333, 'о000', 2),
(2277, 'онкомаркеры на', 'онкомаркеры на', 0, 1, 1.4667, 'о000', 2),
(2278, 'онкомаркеры на гистологию', 'онкомаркеры на гистологию', 0, 1, 1.8333, 'о000', 2),
(2279, 'оперативнее', 'оперативнее', 0, 0, 0.7333, 'о000', 2),
(2280, 'оперативнее выполняют', 'оперативнее выполняют', 0, 1, 1.7, 'о000', 2),
(2281, 'оперативнее выполняют работу', 'оперативнее выполняют работу', 0, 1, 1.9333, 'о000', 2),
(2282, 'от', 'от', 0, 0, 0.1333, 'о000', 2),
(2283, 'от 3-4', 'от 3-4', 0, 1, 1.2, 'о000', 2),
(2284, 'от 3-4 дней', 'от 3-4 дней', 0, 1, 1.3667, 'о000', 2),
(2285, 'отметить', 'отметить', 0, 0, 0.5333, 'о000', 2),
(2286, 'отметить и', 'отметить и', 0, 1, 1.3333, 'о000', 2),
(2287, 'отметить и то', 'отметить и то', 0, 1, 1.4333, 'о000', 2),
(2289, 'по', 'по', 0, 0, 0.1333, 'п000', 2),
(2290, 'по месту', 'по месту', 0, 1, 1.2667, 'п000', 2),
(2291, 'по месту жительства', 'по месту жительства', 0, 1, 1.6333, 'п000', 2),
(2292, 'подвергнуть', 'подвергнуть', 0, 0, 0.7333, 'п000', 2),
(2293, 'подвергнуть сомнению', 'подвергнуть сомнению', 0, 1, 1.6667, 'п000', 2),
(2294, 'подвергнуть сомнению да', 'подвергнуть сомнению да', 0, 1, 1.7667, 'п000', 2),
(2295, 'поликлинике', 'поликлинике', 0, 0, 0.7333, 'п000', 2),
(2296, 'поликлинике по', 'поликлинике по', 0, 1, 1.4667, 'п000', 2),
(2297, 'поликлинике по месту', 'поликлинике по месту', 0, 1, 1.6667, 'п000', 2),
(2298, 'почему', 'почему', 0, 0, 0.4, 'п000', 2),
(2299, 'почему лучше', 'почему лучше', 0, 1, 1.4, 'п000', 2),
(2300, 'почему лучше выбрать', 'почему лучше выбрать', 0, 1, 1.6667, 'п000', 2),
(2301, 'прочее', 'прочее', 0, 0, 0.4, 'п000', 2),
(2302, 'прочее интересует', 'прочее интересует', 0, 1, 1.5667, 'п000', 2),
(2303, 'прочее интересует сегодня', 'прочее интересует сегодня', 0, 1, 1.8333, 'п000', 2),
(2304, 'работу', 'работу', 0, 0, 0.4, 'р000', 2),
(2305, 'работу специалисты', 'работу специалисты', 0, 1, 1.6, 'р000', 2),
(2306, 'работу специалисты центров', 'работу специалисты центров', 0, 1, 1.8667, 'р000', 2),
(2307, 'различные', 'различные', 0, 0, 0.6, 'р000', 2),
(2308, 'различные инфекции', 'различные инфекции', 0, 1, 1.6, 'р000', 2),
(2309, 'различные инфекции клинические', 'различные инфекции клинические', 0, 1, 2, 'р000', 2),
(2310, 'результаты', 'результаты', 0, 0, 0.6667, 'р000', 2),
(2311, 'результаты анализов', 'результаты анализов', 0, 1, 1.6333, 'р000', 2),
(2312, 'результаты анализов в', 'результаты анализов в', 0, 1, 1.7, 'р000', 2),
(2313, 'сдать', 'сдать', 0, 0, 0.3333, 'с000', 2),
(2314, 'сдать анализы', 'сдать анализы', 0, 1, 1.4333, 'с000', 2),
(2315, 'сдать анализы анализы', 'сдать анализы анализы', 0, 1, 1.7, 'с000', 2),
(2316, 'сдать анализы требуется', 'сдать анализы требуется', 0, 1, 1.7667, 'с000', 2),
(2317, 'сдать можно', 'сдать можно', 0, 1, 1.3667, 'с000', 2),
(2318, 'сдать можно и', 'сдать можно и', 0, 1, 1.4333, 'с000', 2),
(2319, 'сегодня', 'сегодня', 0, 0, 0.4667, 'с000', 2),
(2320, 'сегодня многих', 'сегодня многих', 0, 1, 1.4667, 'с000', 2),
(2321, 'сегодня многих следует', 'сегодня многих следует', 0, 1, 1.7333, 'с000', 2),
(2322, 'следует', 'следует', 0, 0, 0.4667, 'с000', 2),
(2323, 'следует отметить', 'следует отметить', 0, 1, 1.5333, 'с000', 2),
(2324, 'следует отметить и', 'следует отметить и', 0, 1, 1.6, 'с000', 2),
(2325, 'случае', 'случае', 0, 0, 0.4, 'с000', 2),
(2326, 'случае бывают', 'случае бывают', 0, 1, 1.4333, 'с000', 2),
(2327, 'случае бывают готовятся', 'случае бывают готовятся', 0, 1, 1.7667, 'с000', 2),
(2328, 'сомнению', 'сомнению', 0, 0, 0.5333, 'с000', 2),
(2329, 'сомнению да', 'сомнению да', 0, 1, 1.3667, 'с000', 2),
(2330, 'сомнению да и', 'сомнению да и', 0, 1, 1.4333, 'с000', 2),
(2331, 'специалисты', 'специалисты', 0, 0, 0.7333, 'с000', 2),
(2332, 'специалисты центров', 'специалисты центров', 0, 1, 1.6333, 'с000', 2),
(2333, 'специалисты центров вопрос', 'специалисты центров вопрос', 0, 1, 1.8667, 'с000', 2),
(2334, 'срочно', 'срочно', 0, 0, 0.4, 'с000', 2),
(2335, 'срочно за', 'срочно за', 0, 1, 1.3, 'с000', 2),
(2336, 'срочно за 1', 'срочно за 1', 0, 1, 1.3667, 'с000', 2),
(2337, 'таких', 'таких', 0, 0, 0.3333, 'т000', 2),
(2338, 'таких анализов', 'таких анализов', 0, 1, 1.4667, 'т000', 2),
(2339, 'таких анализов можно', 'таких анализов можно', 0, 1, 1.6667, 'т000', 2),
(2340, 'то', 'то', 0, 0, 0.1333, 'т000', 2),
(2341, 'то что', 'то что', 0, 1, 1.2, 'т000', 2),
(2342, 'то что нередко', 'то что нередко', 0, 1, 1.4667, 'т000', 2),
(2343, 'точность', 'точность', 0, 0, 0.5333, 'т000', 2),
(2344, 'точность таких', 'точность таких', 0, 1, 1.4667, 'т000', 2),
(2345, 'точность таких анализов', 'точность таких анализов', 0, 1, 1.7667, 'т000', 2),
(2346, 'требуется', 'требуется', 0, 0, 0.6, 'т000', 2),
(2347, 'требуется срочно', 'требуется срочно', 0, 1, 1.5333, 'т000', 2);
INSERT INTO `y18x3_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(2348, 'требуется срочно за', 'требуется срочно за', 0, 1, 1.6333, 'т000', 2),
(2349, 'центров', 'центров', 0, 0, 0.4667, 'ц000', 2),
(2350, 'центров вопрос', 'центров вопрос', 0, 1, 1.4667, 'ц000', 2),
(2351, 'центров вопрос где', 'центров вопрос где', 0, 1, 1.6, 'ц000', 2),
(2352, 'цитологию', 'цитологию', 0, 0, 0.6, 'ц000', 2),
(2353, 'цитологию и', 'цитологию и', 0, 1, 1.3667, 'ц000', 2),
(2354, 'цитологию и прочее', 'цитологию и прочее', 0, 1, 1.6, 'ц000', 2),
(2355, 'что', 'что', 0, 0, 0.2, 'ч000', 2),
(2356, 'что нередко', 'что нередко', 0, 1, 1.3667, 'ч000', 2),
(2357, 'что нередко сдать', 'что нередко сдать', 0, 1, 1.5667, 'ч000', 2),
(2396, 'evgen', 'evgen', 0, 0, 0.3333, 'E125', 1),
(2397, 'евгений', 'евгений', 0, 0, 0.4667, 'е000', 1),
(2398, 'евгений плющенко', 'евгений плющенко', 0, 1, 1.5333, 'е000', 1),
(2399, 'плющенко', 'плющенко', 0, 0, 0.5333, 'п000', 1),
(2400, 'фигурист', 'фигурист', 0, 0, 0.5333, 'ф000', 1),
(2403, 'grigorij', 'grigorij', 0, 0, 0.5333, 'G6262', 1),
(2404, 'grigorij leps', 'grigorij leps', 0, 1, 1.4333, 'G6262412', 1),
(2405, 'leps', 'leps', 0, 0, 0.2667, 'L120', 1),
(2406, 'григорий', 'григорий', 0, 0, 0.5333, 'г000', 1),
(2407, 'григорий лепс', 'григорий лепс', 0, 1, 1.4333, 'г000', 1),
(2408, 'лепс', 'лепс', 0, 0, 0.2667, 'л000', 1),
(2409, 'певец-композитор', 'певец-композитор', 0, 0, 1, 'п000', 1),
(2413, 'анализ', 'анализ', 0, 0, 0.4, 'а000', 6),
(2420, '9', '9', 0, 0, 0.1, '', 1),
(2421, 'b1', 'b1', 0, 0, 0.1333, 'B000', 1),
(2422, 'б1', 'б1', 0, 0, 0.1333, 'б000', 1),
(2423, '10', '10', 0, 0, 0.2, '', 1),
(2424, 'b2', 'b2', 0, 0, 0.1333, 'B000', 1),
(2425, 'б2', 'б2', 0, 0, 0.1333, 'б000', 1),
(2426, '11', '11', 0, 0, 0.2, '', 1),
(2427, 'v8', 'v8', 0, 0, 0.1333, 'V000', 1),
(2428, 'в8', 'в8', 0, 0, 0.1333, 'в000', 1),
(2545, 'а', 'а', 0, 0, 0.0667, 'а000', 3),
(2557, 'реактив', 'реактив', 0, 0, 0.4667, 'р000', 1),
(2558, 'реактив анализ', 'реактив анализ', 0, 1, 1.4667, 'р000', 1),
(2560, 'россия', 'россия', 0, 0, 0.4, 'р000', 3),
(2575, '10.201', '10.201', 0, 0, 0.6, '', 1),
(2576, '550', '550', 0, 0, 0.3, '', 1),
(2577, '8', '8', 0, 0, 0.1, '', 1),
(2578, 'ana', 'ana', 0, 0, 0.2, 'A500', 1),
(2579, 'анализ 2', 'анализ 2', 0, 1, 1.2667, 'а000', 1),
(2580, 'реактив анализ 2', 'реактив анализ 2', 0, 1, 1.5333, 'р000', 1),
(2583, '170', '170', 0, 0, 0.3, '', 2),
(2584, '170 днк', '170 днк', 0, 1, 1.2333, 'д000', 2),
(2585, '170 днк 888', '170 днк 888', 0, 1, 1.3667, 'д000', 2),
(2588, '888', '888', 0, 0, 0.3, '', 2),
(2589, 'analiz', 'analiz', 0, 0, 0.4, 'A542', 2),
(2592, 'днк', 'днк', 0, 0, 0.2, 'д000', 2),
(2593, 'днк 888', 'днк 888', 0, 1, 1.2333, 'д000', 2),
(2596, 'кровь', 'кровь', 0, 0, 0.3333, 'к000', 2),
(2597, 'кровь 170', 'кровь 170', 0, 1, 1.3, 'к000', 2),
(2598, 'кровь 170 днк', 'кровь 170 днк', 0, 1, 1.4333, 'к000', 2),
(2627, '10.202', '10.202', 0, 0, 0.6, '', 1),
(2628, '16', '16', 0, 0, 0.2, '', 1),
(2629, '650', '650', 0, 0, 0.3, '', 1),
(2630, 'analiz 3', 'analiz 3', 0, 1, 1.2667, 'A542', 1),
(2631, 'анализ 3', 'анализ 3', 0, 1, 1.2667, 'а000', 1),
(2678, '12.201', '12.201', 0, 0, 0.6, '', 1),
(2679, '222222222222222222', '222222222222222222', 0, 0, 1.5, '', 1),
(2680, '50', '50', 0, 0, 0.2, '', 1),
(2681, '6 дней', '6 дней', 0, 1, 1.2, 'д000', 1),
(2682, '7', '7', 0, 0, 0.1, '', 1),
(2683, 'analiz 1', 'analiz 1', 0, 1, 1.2667, 'A542', 1),
(2684, 'анализ 1', 'анализ 1', 0, 1, 1.2667, 'а000', 1),
(2685, 'вкладка', 'вкладка', 0, 0, 0.4667, 'в000', 1),
(2686, 'вкладка 1', 'вкладка 1', 0, 1, 1.3, 'в000', 1),
(2687, 'вкладка 2', 'вкладка 2', 0, 1, 1.3, 'в000', 1),
(2688, 'вкладки', 'вкладки', 0, 0, 0.4667, 'в000', 1),
(2689, 'вкладки 1', 'вкладки 1', 0, 1, 1.3, 'в000', 1),
(2690, 'описание', 'описание', 0, 0, 0.5333, 'о000', 1),
(2691, 'описание вкладки', 'описание вкладки', 0, 1, 1.5333, 'о000', 1),
(2692, 'описание вкладки 1', 'описание вкладки 1', 0, 1, 1.6, 'о000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_finder_terms_common`
--

INSERT INTO `y18x3_finder_terms_common` (`term`, `language`) VALUES
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
-- Структура таблицы `y18x3_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_tokens_aggregate` (
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
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_finder_types`
--

CREATE TABLE IF NOT EXISTS `y18x3_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `y18x3_finder_types`
--

INSERT INTO `y18x3_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'ZOO Item', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_foxcontact_sessions`
--

CREATE TABLE IF NOT EXISTS `y18x3_foxcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`cid`,`mid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_foxcontact_settings`
--

CREATE TABLE IF NOT EXISTS `y18x3_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_foxcontact_settings`
--

INSERT INTO `y18x3_foxcontact_settings` (`name`, `value`) VALUES
('captchadrawer', 'use_gd'),
('dns', 'dns_check'),
('mimefilter', 'disabled');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `thread_id` int(11) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `object_params` text NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isgood` smallint(5) NOT NULL DEFAULT '0',
  `ispoor` smallint(5) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_source` (`source`),
  KEY `idx_email` (`email`),
  KEY `idx_lang` (`lang`),
  KEY `idx_subscribe` (`subscribe`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_object` (`object_id`,`object_group`,`published`,`date`),
  KEY `idx_path` (`path`,`level`),
  KEY `idx_thread` (`thread_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `y18x3_jcomments`
--

INSERT INTO `y18x3_jcomments` (`id`, `parent`, `thread_id`, `path`, `level`, `object_id`, `object_group`, `object_params`, `lang`, `userid`, `name`, `username`, `email`, `homepage`, `title`, `comment`, `ip`, `date`, `isgood`, `ispoor`, `published`, `deleted`, `subscribe`, `source`, `source_id`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'Роман--------', 'Роман--------', 'sadasdas@io.op', '', '-', '-----', '127.0.0.1', '2014-08-05 11:48:56', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(2, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'негатив заголовок', 'негатив заголовок', 'sadasda365s@io.op', '', '-', 'негатив', '127.0.0.1', '2014-08-05 12:21:43', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(3, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'позитивный заголовок', 'позитивный заголовок', 'sadasASDFda365s@io.op', '', '+', 'позитивный', '127.0.0.1', '2014-08-05 12:22:23', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(4, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'Роман5НЕЙТРАЛЬНЫЙ', 'Роман5НЕЙТРАЛЬНЫЙ', 'sadasASsdfgDFda365s@io.op', '', '-', 'НЕЙТРАЛЬНЫЙ', '127.0.0.1', '2014-08-05 12:51:50', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(5, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'pologitelen', 'pologitelen', 'sdf43w5sdf@io.op', '', '+', 'TEXT+++++', '127.0.0.1', '2014-08-06 05:46:46', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(6, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'НОВОЕ ИМЯ', 'НОВОЕ ИМЯ', 'sfdgsgsdfg@io.op', '', '+', 'НОВЫЙ ТЕКСТ', '127.0.0.1', '2014-08-06 08:37:48', 0, 0, 1, 0, 0, '', 0, 232, '2014-08-07 06:58:48', ''),
(12, 1, 1, '0,1', 1, 11, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'ответ администратора', 'OTVET NA Роман--------', '127.0.0.1', '2014-08-07 09:05:41', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(13, 0, 0, '0', 0, 11, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', '+', 'VERY POSITIVE COMMENT', '127.0.0.1', '2014-08-07 09:27:54', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(14, 13, 13, '0,13', 1, 11, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'Ответ администрации', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', '127.0.0.1', '2014-08-07 09:41:31', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(15, 5, 5, '0,5', 1, 11, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'Ответ администрации', 'Ответ на pologitelen (TEXT+++++)', '127.0.0.1', '2014-08-07 09:43:43', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(16, 2, 2, '0,2', 1, 11, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'Ответ администрации', 'ОТВЕТ НА НЕГАТИВНЫЙ ЗАГОЛОВОК', '127.0.0.1', '2014-08-07 10:05:18', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(30, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '111', '127.0.0.1', '2014-08-07 12:00:34', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(31, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '222', '127.0.0.1', '2014-08-07 12:00:53', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(32, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '333', '127.0.0.1', '2014-08-07 12:01:03', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(33, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '444', '127.0.0.1', '2014-08-07 12:01:32', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(34, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '555', '127.0.0.1', '2014-08-07 12:01:43', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(35, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '666', '127.0.0.1', '2014-08-07 12:02:01', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(36, 0, 0, '0', 0, 13, 'com_content', '', 'ru-RU', 0, 'ROMAN BOYKO', 'ROMAN BOYKO', 'sdfwq4@io.op', '', 'ВОПРОС', '777', '127.0.0.1', '2014-08-07 12:02:47', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(37, 30, 30, '0,30', 1, 13, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'ВОПРОС', 'OTVET 111', '127.0.0.1', '2014-08-07 12:04:23', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(38, 34, 34, '0,34', 1, 13, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'ВОПРОС', 'otvet 555', '127.0.0.1', '2014-08-07 12:11:47', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', ''),
(39, 33, 33, '0,33', 1, 13, 'com_content', '', 'ru-RU', 232, 'Super User', 'admin', 'sasha@gmail.com', '', 'ВОПРОС', 'OTBVCET NA 444', '127.0.0.1', '2014-08-07 12:15:55', 0, 0, 1, 0, 0, '', 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_blacklist`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `notes` tinytext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_custom_bbcodes`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_custom_bbcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `simple_pattern` varchar(255) NOT NULL DEFAULT '',
  `simple_replacement_html` text NOT NULL,
  `simple_replacement_text` text NOT NULL,
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `replacement_html` text NOT NULL,
  `replacement_text` text NOT NULL,
  `button_acl` text NOT NULL,
  `button_open_tag` varchar(16) NOT NULL DEFAULT '',
  `button_close_tag` varchar(16) NOT NULL DEFAULT '',
  `button_title` varchar(255) NOT NULL DEFAULT '',
  `button_prompt` varchar(255) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `button_css` varchar(255) NOT NULL DEFAULT '',
  `button_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `y18x3_jcomments_custom_bbcodes`
--

INSERT INTO `y18x3_jcomments_custom_bbcodes` (`id`, `name`, `simple_pattern`, `simple_replacement_html`, `simple_replacement_text`, `pattern`, `replacement_html`, `replacement_text`, `button_acl`, `button_open_tag`, `button_close_tag`, `button_title`, `button_prompt`, `button_image`, `button_css`, `button_enabled`, `ordering`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'YouTube Video', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '[youtube]', '[/youtube]', 'YouTube Video', '', '', 'bbcode-youtube', 1, 1, 1, 0, '0000-00-00 00:00:00'),
(2, 'YouTube Video (short syntax)', '[youtube]{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 2, 1, 0, '0000-00-00 00:00:00'),
(3, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?v={IDENTIFIER}{TEXT}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([\\w0-9-\\+\\=\\!\\?\\(\\)\\[\\]\\{\\}\\&\\%\\*\\#\\.,_ ]+)\\[\\/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '[youtube]', '[/youtube]', 'YouTube Video', '', '', '', 0, 3, 1, 0, '0000-00-00 00:00:00'),
(4, 'YouTube Video (alternate syntax)', '[youtube]http://www.youtube.com/watch?feature=player_embedded&v={IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://www\\.youtube\\.com/watch\\?feature\\=player_embedded&v\\=([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 4, 1, 0, '0000-00-00 00:00:00'),
(5, 'YouTube Video (alternate syntax)', '[youtube]http://youtu.be/{IDENTIFIER}[/youtube]', '<iframe width="425" height="350" src="//www.youtube.com/embed/{IDENTIFIER}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/{IDENTIFIER}', '\\[youtube\\]http\\://youtu\\.be/([\\w0-9-_]+)\\[/youtube\\]', '<iframe width="425" height="350" src="//www.youtube.com/embed/${1}?rel=0" frameborder="0" allowfullscreen></iframe>', 'http://youtu.be/${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 5, 1, 0, '0000-00-00 00:00:00'),
(6, 'Facebook Video', '[fv]http://www.facebook.com/video/video.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/video\\/video\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '[fv]', '[/fv]', 'Facebook Video', '', '', 'bbcode-facebook', 1, 6, 1, 0, '0000-00-00 00:00:00'),
(7, 'Facebook Video (short syntax)', '[fv]{IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 7, 1, 0, '0000-00-00 00:00:00'),
(8, 'Facebook Video (alternate syntax)', '[fv]http://www.facebook.com/photo.php?v={IDENTIFIER}[/fv]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id={IDENTIFIER}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v={IDENTIFIER}', '\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/photo\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]', '<iframe width="425" height="350" src="//www.facebook.com/video/embed?video_id=${1}" frameborder="0"></iframe>', 'http://www.facebook.com/photo.php?v=${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 8, 1, 0, '0000-00-00 00:00:00'),
(9, 'Instagram', '[instagram]http://instagram.com/p/{IDENTIFIER}/[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\/\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '[instagram]', '[/instagram]', 'Instagram Photo', '', '', 'bbcode-instagram', 1, 9, 1, 0, '0000-00-00 00:00:00'),
(10, 'Instagram (short syntax)', '[instagram]{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 10, 1, 0, '0000-00-00 00:00:00'),
(11, 'Instagram (alternate syntax)', '[instagram]http://instagram.com/p/{IDENTIFIER}[/instagram]', '<iframe width="425" height="350" src="//instagram.com/p/{IDENTIFIER}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/{IDENTIFIER}/', '\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\[/instagram\\]', '<iframe width="425" height="350" src="//instagram.com/p/${1}/embed/" frameborder="0" scrolling="no" allowtransparency="true"></iframe>', 'http://instagram.com/p/${1}/', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 11, 1, 0, '0000-00-00 00:00:00'),
(12, 'Vimeo', '[vimeo]http://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]http\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '[vimeo]', '[/vimeo]', 'Vimeo Video', '', '', 'bbcode-vimeo', 1, 12, 1, 0, '0000-00-00 00:00:00'),
(13, 'Vimeo (short syntax)', '[vimeo]{IDENTIFIER}[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'http://vimeo.com/${1}/', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(14, 'Vimeo (alternate syntax)', '[vimeo]https://vimeo.com/{IDENTIFIER}/[/vimeo]', '<iframe width="425" height="239" src="//player.vimeo.com/video/{IDENTIFIER}/" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/{IDENTIFIER}/', '\\[vimeo\\]https\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]', '<iframe width="425" height="239" src="//player.vimeo.com/video/${1}" frameborder="0"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 'https://vimeo.com/${1}/', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '', '', '', '', '', '', 0, 13, 1, 0, '0000-00-00 00:00:00'),
(15, 'Wiki', '[wiki]{SIMPLETEXT}[/wiki]', '<a href="http://www.wikipedia.org/wiki/{SIMPLETEXT}" title="{SIMPLETEXT}" target="_blank">{SIMPLETEXT}</a>', '{SIMPLETEXT}', '\\[wiki\\]([A-Za-z0-9\\-\\+\\.,_ ]+)\\[\\/wiki\\]', '<a href="http://www.wikipedia.org/wiki/${1}" title="${1}" target="_blank">${1}</a>', '${1}', 'Public,Registered,Author,Editor,Publisher,Manager,Administrator,Super Users', '[wiki]', '[/wiki]', 'Wikipedia', '', '', 'bbcode-wiki', 1, 14, 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_mailq`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_priority` (`priority`),
  KEY `idx_attempts` (`attempts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_objects`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `expired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`,`lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `y18x3_jcomments_objects`
--

INSERT INTO `y18x3_jcomments_objects` (`id`, `object_id`, `object_group`, `category_id`, `lang`, `title`, `link`, `access`, `userid`, `expired`, `modified`) VALUES
(1, 11, 'com_content', 2, 'ru-RU', 'Отзывы и предетзии', '/dnkom3/analizy-i-tseny/otzyvy-i-prezentatsii.html', 1, 232, 0, '2014-08-07 10:05:18'),
(2, 13, 'com_content', 2, 'ru-RU', 'Часто задаваемые вопросы', '/dnkom3/chasto-zadavaemye-voprosy.html', 1, 232, 0, '2014-08-07 12:15:55');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_reports`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_reports` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_settings`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_settings` (
  `component` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`component`,`lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_jcomments_settings`
--

INSERT INTO `y18x3_jcomments_settings` (`component`, `lang`, `name`, `value`) VALUES
('', '', 'author_email', '2'),
('', '', 'author_homepage', '0'),
('', '', 'author_name', '2'),
('', '', 'autolinkurls', ''),
('', '', 'autopublish', ''),
('', '', 'badwords', ''),
('', '', 'can_ban', '7'),
('', '', 'can_comment', '1,8'),
('', '', 'can_delete', ''),
('', '', 'can_delete_for_my_object', ''),
('', '', 'can_delete_own', ''),
('', '', 'can_edit', ''),
('', '', 'can_edit_for_my_object', ''),
('', '', 'can_edit_own', ''),
('', '', 'can_publish', ''),
('', '', 'can_publish_for_my_object', ''),
('', '', 'can_reply', '8'),
('', '', 'can_report', ''),
('', '', 'can_view_email', ''),
('', '', 'can_view_homepage', ''),
('', '', 'can_view_ip', ''),
('', '', 'can_vote', ''),
('', '', 'captcha_engine', 'kcaptcha'),
('', '', 'censor_replace_word', '[censored]'),
('', '', 'comments_list_order', 'DESC'),
('', '', 'comments_page_limit', '15'),
('', '', 'comments_pagination', 'both'),
('', '', 'comments_per_page', '10'),
('', '', 'comments_tree_order', '0'),
('', '', 'comment_maxlength', '1000'),
('', '', 'comment_minlength', '0'),
('', '', 'comment_title', '3'),
('', '', 'delete_mode', '0'),
('', '', 'display_author', 'name'),
('', '', 'emailprotection', ''),
('', '', 'enable_autocensor', ''),
('', '', 'enable_bbcode_b', ''),
('', '', 'enable_bbcode_code', 'Registered,Author,Editor,Publisher,Manager,Administrator,Super Users'),
('', '', 'enable_bbcode_hide', ''),
('', '', 'enable_bbcode_i', ''),
('', '', 'enable_bbcode_img', ''),
('', '', 'enable_bbcode_list', ''),
('', '', 'enable_bbcode_quote', ''),
('', '', 'enable_bbcode_s', ''),
('', '', 'enable_bbcode_u', ''),
('', '', 'enable_bbcode_url', ''),
('', '', 'enable_blacklist', '0'),
('', '', 'enable_captcha', '1'),
('', '', 'enable_categories', ''),
('', '', 'enable_comment_length_check', ''),
('', '', 'enable_comment_maxlength_check', ''),
('', '', 'enable_custom_bbcode', '0'),
('', '', 'enable_geshi', '0'),
('', '', 'enable_gravatar', ''),
('', '', 'enable_nested_quotes', '1'),
('', '', 'enable_notification', '0'),
('', '', 'enable_plugins', '1'),
('', '', 'enable_quick_moderation', '0'),
('', '', 'enable_reports', '1'),
('', '', 'enable_rss', '0'),
('', '', 'enable_smilies', '0'),
('', '', 'enable_subscribe', ''),
('', '', 'enable_username_check', '1'),
('', '', 'enable_voting', '0'),
('', '', 'feed_limit', '100'),
('', '', 'floodprotection', ''),
('', '', 'flood_time', '0'),
('', '', 'forbidden_names', 'administrator,moderator,Super User'),
('', '', 'form_position', '1'),
('', '', 'form_show', '1'),
('', '', 'link_maxlength', '50'),
('', '', 'load_cached_comments', '1'),
('', '', 'max_comments_per_object', '0'),
('', '', 'merge_time', '0'),
('', '', 'message_banned', ''),
('', '', 'message_locked', 'Comments are now closed for this entry'),
('', '', 'message_policy_post', ''),
('', '', 'message_policy_whocancomment', 'You have no rights to post comments'),
('', '', 'notification_email', ''),
('', '', 'notification_type', '1,2'),
('', '', 'reports_before_unpublish', '0'),
('', '', 'reports_per_comment', '0'),
('', '', 'report_reason_required', '1'),
('', '', 'show_commentlength', '1'),
('', '', 'show_policy', ''),
('', '', 'smilies', ':D	laugh.gif\n:lol:	lol.gif\n:-)	smile.gif\n;-)	wink.gif\n8)	cool.gif\n:-|	normal.gif\n:-*	whistling.gif\n:oops:	redface.gif\n:sad:	sad.gif\n:cry:	cry.gif\n:o	surprised.gif\n:-?	confused.gif\n:-x	sick.gif\n:eek:	shocked.gif\n:zzz	sleeping.gif\n:P	tongue.gif\n:roll:	rolleyes.gif\n:sigh:	unsure.gif'),
('', '', 'smilies_path', '/components/com_jcomments/images/smilies/'),
('', '', 'template', 'default'),
('', '', 'template_view', 'tree'),
('', '', 'username_maxlength', '20'),
('', '', 'word_maxlength', '50');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_smilies`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_smilies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(39) NOT NULL DEFAULT '',
  `alias` varchar(39) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `y18x3_jcomments_smilies`
--

INSERT INTO `y18x3_jcomments_smilies` (`id`, `code`, `alias`, `image`, `name`, `published`, `ordering`, `checked_out`, `checked_out_time`) VALUES
(1, ':D', '', 'laugh.gif', 'Laugh', 1, 1, 0, '0000-00-00 00:00:00'),
(2, ':lol:', '', 'lol.gif', 'Lol', 1, 2, 0, '0000-00-00 00:00:00'),
(3, ':-)', '', 'smile.gif', 'Smile', 1, 3, 0, '0000-00-00 00:00:00'),
(4, ';-)', '', 'wink.gif', 'Wink', 1, 4, 0, '0000-00-00 00:00:00'),
(5, '8)', '', 'cool.gif', 'Cool', 1, 5, 0, '0000-00-00 00:00:00'),
(6, ':-|', '', 'normal.gif', 'Normal', 1, 6, 0, '0000-00-00 00:00:00'),
(7, ':-*', '', 'whistling.gif', 'Whistling', 1, 7, 0, '0000-00-00 00:00:00'),
(8, ':oops:', '', 'redface.gif', 'Redface', 1, 8, 0, '0000-00-00 00:00:00'),
(9, ':sad:', '', 'sad.gif', 'Sad', 1, 9, 0, '0000-00-00 00:00:00'),
(10, ':cry:', '', 'cry.gif', 'Cry', 1, 10, 0, '0000-00-00 00:00:00'),
(11, ':o', '', 'surprised.gif', 'Surprised', 1, 11, 0, '0000-00-00 00:00:00'),
(12, ':-?', '', 'confused.gif', 'Confused', 1, 12, 0, '0000-00-00 00:00:00'),
(13, ':-x', '', 'sick.gif', 'Sick', 1, 13, 0, '0000-00-00 00:00:00'),
(14, ':eek:', '', 'shocked.gif', 'Shocked', 1, 14, 0, '0000-00-00 00:00:00'),
(15, ':zzz', '', 'sleeping.gif', 'Sleeping', 1, 15, 0, '0000-00-00 00:00:00'),
(16, ':P', '', 'tongue.gif', 'Tongue', 1, 16, 0, '0000-00-00 00:00:00'),
(17, ':roll:', '', 'rolleyes.gif', 'Rolleyes', 1, 17, 0, '0000-00-00 00:00:00'),
(18, ':sigh:', '', 'unsure.gif', 'Unsure', 1, 18, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_subscriptions`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_subscriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`),
  KEY `idx_lang` (`lang`),
  KEY `idx_source` (`source`),
  KEY `idx_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_version`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_version` (
  `version` varchar(16) NOT NULL DEFAULT '',
  `previous` varchar(16) NOT NULL DEFAULT '',
  `installed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_jcomments_votes`
--

CREATE TABLE IF NOT EXISTS `y18x3_jcomments_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_comment` (`commentid`,`userid`),
  KEY `idx_user` (`userid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_languages`
--

CREATE TABLE IF NOT EXISTS `y18x3_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `y18x3_languages`
--

INSERT INTO `y18x3_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 2),
(2, 'ru-RU', 'Russian (RU)', 'Русский (РФ)', 'ru', 'ru', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_menu`
--

CREATE TABLE IF NOT EXISTS `y18x3_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- Дамп данных таблицы `y18x3_menu`
--

INSERT INTO `y18x3_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 147, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"main_page","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'main', 'com_zoo', 'com-zoo', '', 'com-zoo', 'index.php?option=com_zoo', 'component', 0, 1, 1, 10004, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_zoo/assets/images/zoo_16.png', 0, '', 43, 44, 0, '', 1),
(103, 'main', 'COM_NIVOSLIDERPRO', 'com-nivosliderpro', '', 'com-nivosliderpro', 'index.php?option=com_nivosliderpro', 'component', 0, 1, 1, 10024, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_nivosliderpro/assets/images/icon-16-nivopro.png', 0, '', 45, 46, 0, '', 1),
(104, 'footer-menu', 'Срочные анализы', '2014-06-24-08-34-15', '', '2014-06-24-08-34-15', 'index.php?option=com_content&view=article', 'url', 1, 1, 1, 22, 0, 232, '2014-06-24 05:34:36', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 47, 48, 0, '*', 0),
(105, 'footer-menu', 'Анализ крови', '2014-06-24-08-39-27', '', '2014-06-24-08-39-27', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 49, 50, 0, '*', 0),
(106, 'footer-menu', 'Диагностика инфекций', '2014-06-24-08-40-06', '', '2014-06-24-08-40-06', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 51, 52, 0, '*', 0),
(107, 'footer-menu', 'Диагностика гепатитов', '2014-06-24-08-40-36', '', '2014-06-24-08-40-36', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 53, 54, 0, '*', 0),
(108, 'footer-menu', 'Гормоны', '2014-06-24-08-40-53', '', '2014-06-24-08-40-53', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 55, 56, 0, '*', 0),
(109, 'footer-menu', 'Анализ мочи', '2014-06-24-08-41-57', '', '2014-06-24-08-41-57', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 57, 58, 0, '*', 0),
(110, 'footer-menu', 'Общеклинические исследования', '2014-06-24-08-42-15', '', '2014-06-24-08-42-15', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(111, 'footer-menu', 'Гемостаз', '2014-06-24-08-42-33', '', '2014-06-24-08-42-33', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 61, 62, 0, '*', 0),
(112, 'footer-menu', 'Онкомаркеры', '2014-06-24-08-42-48', '', '2014-06-24-08-42-48', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 63, 64, 0, '*', 0),
(113, 'menu-kompleksi', 'Срочные анализы', '2014-06-24-08-46-49', '', '2014-06-24-08-46-49', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 65, 66, 0, '*', 0),
(114, 'polovie-funkcii', 'Срочные анализы', '2014-06-24-08-52-42', '', '2014-06-24-08-52-42', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 67, 68, 0, '*', 0),
(117, 'top-menu', 'Анализы и цены', 'analizy-i-tseny', '', 'analizy-i-tseny', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 73, 86, 0, '*', 0),
(118, 'top-menu', 'Контакты, адреса и услуги', 'kontakty-adresa-i-uslugi', '', 'kontakty-adresa-i-uslugi', 'index.php?option=com_zoo&view=frontpage&layout=frontpage', 'component', 1, 1, 1, 10004, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"application":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"adress_and_uslugi","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(119, 'top-menu', 'Комплексные обследования', '2014-06-25-06-27-57', '', '2014-06-25-06-27-57', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 89, 90, 0, '*', 0),
(120, 'top-menu', 'УЗИ и ЭКГ', '2014-06-25-06-28-19', '', '2014-06-25-06-28-19', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 91, 92, 0, '*', 0),
(121, 'top-menu', 'О компании', 'o-kompanii', '', 'o-kompanii', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 93, 98, 0, '*', 0),
(122, 'top-menu', 'Он-лайн консультант', '2014-06-25-06-29-07', '', '2014-06-25-06-29-07', 'index.php?Itemid=', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 99, 100, 0, '*', 0),
(123, 'top-menu', 'Партнеры', '2014-06-25-06-33-43', '', '2014-06-25-06-33-43', '', 'url', 1, 1, 1, 0, 0, 232, '2014-06-25 05:19:39', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"last_menu_link","menu_image":"","menu_text":1}', 101, 102, 0, '*', 0),
(124, 'top-menu', 'Анализы по разделам', 'analizy-po-razdelam', '', 'analizy-i-tseny/analizy-po-razdelam', 'index.php?option=com_zoo&view=frontpage&layout=frontpage', 'component', 1, 117, 2, 10004, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"application":"3","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/Dnk_diagnostik_main_page_final_06.jpg","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"analizy_po_razdelam","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(125, 'top-menu', 'Срочные анали', '2014-06-25-07-18-19', '', 'analizy-i-tseny/2014-06-25-07-18-19', '', 'url', 1, 117, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/Dnk_diagnostik_main_page_final_08.jpg","menu_text":1}', 76, 77, 0, '*', 0),
(126, 'top-menu', 'Подготовка к анализам', '2014-06-25-09-04-42', '', 'analizy-i-tseny/2014-06-25-09-04-42', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"0","num_columns":"0","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/Dnk_diagnostik_main_page_final_15.jpg","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"podgotovka_k_analizam","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 78, 79, 0, '*', 0),
(127, 'top-menu', 'Скидки', '2014-06-25-09-05-55', '', 'analizy-i-tseny/2014-06-25-09-05-55', '', 'url', 1, 117, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/Dnk_diagnostik_main_page_final_17.jpg","menu_text":1}', 80, 81, 0, '*', 0),
(128, 'top-menu', 'Анализы на дому', '2014-06-25-09-06-40', '', 'analizy-i-tseny/2014-06-25-09-06-40', 'index.php?option=com_content&view=article&id=7', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/Dnk_diagnostik_main_page_final_19.jpg","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"analizy_na_domu","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 82, 83, 0, '*', 0),
(129, 'top-menu', 'Отзывы и презентации', 'otzyvy-i-prezentatsii', '', 'analizy-i-tseny/otzyvy-i-prezentatsii', 'index.php?option=com_content&view=article&id=11', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/Dnk_diagnostik_main_page_final_21.jpg","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"otzyvy_i_pretenzii","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 85, 0, '*', 0),
(130, 'hidden', 'Новости', 'novosti', '', 'novosti', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(131, 'hidden', 'Статьи', 'stati', '', 'stati', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 105, 106, 0, '*', 0),
(132, 'main', 'COM_FOXCONTACT_MENU', 'com-foxcontact-menu', '', 'com-foxcontact-menu', 'index.php?option=com_foxcontact', 'component', 0, 1, 1, 10032, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_foxcontact/images/email-16.png', 0, '', 107, 108, 0, '', 1),
(133, 'top-menu', 'Новости', 'novosti', '', 'o-kompanii/novosti', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 121, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"0","page_subheading":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","num_leading_articles":"0","num_intro_articles":"6","num_columns":"1","num_links":"0","multi_column_order":"0","show_subcategory_content":"0","orderby_pri":"","orderby_sec":"rdate","order_date":"","show_pagination":"1","show_pagination_results":"1","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"1","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"1","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"novosti","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 94, 95, 0, '*', 0),
(134, 'top-menu', 'Знаменитости в ДНКОМ', 'znamenitosti-v-dnkom', '', 'o-kompanii/znamenitosti-v-dnkom', 'index.php?option=com_zoo&view=frontpage&layout=frontpage', 'component', 1, 121, 2, 10004, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"application":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"znamenitosti","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 96, 97, 0, '*', 0),
(135, 'guest-book-menu', 'Задать вопрос врачу', '2014-07-01-12-17-30', '', '2014-07-01-12-17-30', '', 'url', 1, 1, 1, 0, 0, 232, '2014-07-02 09:28:33', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 109, 110, 0, '*', 0),
(136, 'guest-book-menu', 'Книга отзывов и предложений', '2014-07-01-12-17-58', '', '2014-07-01-12-17-58', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 111, 112, 0, '*', 0),
(137, 'guest-book-menu', 'Адреса представительств', '2014-07-01-12-19-44', '', '2014-07-01-12-19-44', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 113, 114, 0, '*', 0),
(138, 'content-bottom', 'Вернутся к списку новостей', '2014-07-01-13-25-11', '', '2014-07-01-13-25-11', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 232, '2014-07-01 10:27:39', 0, 1, '', 0, '{"aliasoptions":"133","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 116, 0, '*', 0),
(139, 'hidden', 'Рассчитать заказ', 'rasschitat-zakaz', '', 'rasschitat-zakaz', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, 232, '2014-08-07 03:50:05', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 118, 0, '*', 0),
(140, 'left-menu-podgotovka', 'Крови', 'krovi', '', 'krovi', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"podgotovka_k_analizam","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 119, 120, 0, '*', 0),
(141, 'left-menu-podgotovka', 'ДНК', 'dnk', '', 'dnk', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"podgotovka_k_analizam","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 121, 122, 0, '*', 0),
(142, 'main', 'COM_JCOMMENTS', 'com-jcomments', '', 'com-jcomments', 'index.php?option=com_jcomments', 'component', 0, 1, 1, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jcomments/assets/images/icon-16-jcomments.png', 0, '', 123, 142, 0, '', 1),
(143, 'main', 'COM_JCOMMENTS_COMMENTS', 'com-jcomments-comments', '', 'com-jcomments/com-jcomments-comments', 'index.php?option=com_jcomments&view=comments', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-comments', 0, '', 124, 125, 0, '', 1),
(144, 'main', 'COM_JCOMMENTS_SETTINGS', 'com-jcomments-settings', '', 'com-jcomments/com-jcomments-settings', 'index.php?option=com_jcomments&view=settings', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-settings', 0, '', 126, 127, 0, '', 1),
(145, 'main', 'COM_JCOMMENTS_SMILIES', 'com-jcomments-smilies', '', 'com-jcomments/com-jcomments-smilies', 'index.php?option=com_jcomments&view=smilies', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-smilies', 0, '', 128, 129, 0, '', 1),
(146, 'main', 'COM_JCOMMENTS_SUBSCRIPTIONS', 'com-jcomments-subscriptions', '', 'com-jcomments/com-jcomments-subscriptions', 'index.php?option=com_jcomments&view=subscriptions', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-subscriptions', 0, '', 130, 131, 0, '', 1),
(147, 'main', 'COM_JCOMMENTS_CUSTOM_BBCODE', 'com-jcomments-custom-bbcode', '', 'com-jcomments/com-jcomments-custom-bbcode', 'index.php?option=com_jcomments&view=custombbcodes', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-custombbcodes', 0, '', 132, 133, 0, '', 1),
(148, 'main', 'COM_JCOMMENTS_BLACKLIST', 'com-jcomments-blacklist', '', 'com-jcomments/com-jcomments-blacklist', 'index.php?option=com_jcomments&view=blacklists', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-blacklist', 0, '', 134, 135, 0, '', 1),
(149, 'main', 'COM_JCOMMENTS_MAILQ', 'com-jcomments-mailq', '', 'com-jcomments/com-jcomments-mailq', 'index.php?option=com_jcomments&view=mailq', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-mailq', 0, '', 136, 137, 0, '', 1),
(150, 'main', 'COM_JCOMMENTS_IMPORT', 'com-jcomments-import', '', 'com-jcomments/com-jcomments-import', 'index.php?option=com_jcomments&view=import', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-import', 0, '', 138, 139, 0, '', 1),
(151, 'main', 'COM_JCOMMENTS_ABOUT', 'com-jcomments-about', '', 'com-jcomments/com-jcomments-about', 'index.php?option=com_jcomments&view=about', 'component', 0, 142, 2, 10038, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:jcomments-about', 0, '', 140, 141, 0, '', 1),
(152, 'hidden', 'АдминПанель', 'adminpanel', '', 'adminpanel', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"adminpanel","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 143, 144, 0, '*', 0),
(153, 'hidden', 'Часто задаваемые вопросы', 'chasto-zadavaemye-voprosy', '', 'chasto-zadavaemye-voprosy', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"chasto-zadavaemye-voprosy","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 145, 146, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_menu_types`
--

CREATE TABLE IF NOT EXISTS `y18x3_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `y18x3_menu_types`
--

INSERT INTO `y18x3_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Главное меню', 'The main menu for the site'),
(2, 'footer-menu', 'АНАЛИЗЫ (H4)', ''),
(3, 'menu-kompleksi', 'Комплексы  (H4)', ''),
(4, 'polovie-funkcii', 'Половые инфекции  (H4)', ''),
(7, 'top-menu', 'Верхнее меню', ''),
(8, 'hidden', 'Скрытое меню', ''),
(9, 'guest-book-menu', 'Меню с гостевой книгой', ''),
(10, 'content-bottom', 'Вернутся к списку новостей', ''),
(11, 'left-menu-podgotovka', 'Подготовка к анализам', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_messages`
--

CREATE TABLE IF NOT EXISTS `y18x3_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `y18x3_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_modules`
--

CREATE TABLE IF NOT EXISTS `y18x3_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=135 ;

--
-- Дамп данных таблицы `y18x3_modules`
--

INSERT INTO `y18x3_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Главное меню', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Вход', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Популярные материалы', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Новые материалы', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Инструментальная панель', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Быстрый доступ', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Авторизованные пользователи', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Меню панели управления', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Подменю панели управления', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'Статус пользователя', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Заголовок', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Форма входа', '', '', 1, 'admin_login_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(17, 'Путь на сайте', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Статус многоязычности', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Версия Joomla!', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Социальные группы', '', '', 1, 'social-tabs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jlgrouppro', 1, 0, '{"showvkontakte":"1","group_id":"17291036","mode":"0","wide":"0","showok":"1","group_id_ok":"50582132228315","showfacebook":"1","fbappid":"","group_id_fb":"joomline","fblang":"ru_RU","googleid":"113837355987775206344","googlelang":"ru","orders":"1,2,3","width":"217","height":"300","moduleclass_sfx":"","typeviewercss":"1","typeviewerjq":"0","typeviewerbs":"1","typeviewernojq":"1"}', 0, '*'),
(88, 'Контент сверх', '', '', 1, 'header_content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Лого', '', '<p><img src="images/logotypes.png" border="0" alt="" /></p>', 0, 'header_logo', 232, '2014-06-24 06:41:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'Контент заголовка', '', '<p class="header_link"><a href="#">Лицензия министерства здравоохранения № JIO-77-01-006636</a><br /> <a href="#">Международный контроль качества лабороторных услуг EQAS</a></p>\r\n<div class="info_block">\r\n<p class="numder_phone tel"><span>+7 495</span> 689 77 04 <span class="slesh"> / </span> <span>+7 495</span> 689 69 31</p>\r\n<p class="adress street-address">ул. Тверская, дом 6, стр. 6</p>\r\n<p class="email"><a href="#">info@dnk-diagnostika.ru</a></p>\r\n<p class="calls"><a href="#contact_form">ЗАКАЗАТЬ ОБРАТНЫЙ ЗВОНОК</a></p>\r\n</div>', 1, 'header_content', 232, '2014-06-26 07:18:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'ZOO Category', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zoocategory', 1, 1, '', 0, '*'),
(92, 'ZOO Comment', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zoocomment', 1, 1, '', 0, '*'),
(93, 'ZOO Item', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zooitem', 1, 1, '', 0, '*'),
(94, 'ZOO Quick Icons', '', '', 2, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_zooquickicon', 1, 1, '', 1, '*'),
(95, 'ZOO Tag', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_zootag', 1, 1, '', 0, '*'),
(96, 'JBZoo Cart', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jbzoo_basket', 1, 1, '', 0, '*'),
(97, 'JBZoo Category List', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jbzoo_category', 1, 1, '', 0, '*'),
(98, 'JBZoo Search List', '', '', 0, '', 232, '2014-08-06 08:03:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jbzoo_props', 1, 1, '', 0, '*'),
(99, 'JBZoo Search', '', '', 1, 'sort-mod', 232, '2014-08-06 08:04:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jbzoo_search', 1, 0, '{"application":"3","type":"analiz","item_layout":"default","menuitem":"124","moduleclass_sfx":"-sort","layout":"_:default","logic":"and","logic_show":"0","pages":"10","pages_show":"0","order_show":"1","order_list":["5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5"],"order_mode":"s","order_default":{"field":"_none","mode":"n","order":"asc"},"button_submit_show":"0","button_reset_show":"0","autosubmit":"1","exact":"1","depend_category":"1","cache":"0","owncache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(100, 'Пациентам', '', '<div class="rows">\r\n<div><a href="#"> <img src="&lt;?php echo $this-&gt;baseurl\r\n                    ?&gt;/templates/&lt;?php echo $this-&gt;template ?&gt;/images/razchitat.png" border="0" alt="dnkom" />Расчитать заказ</a></div>\r\n<div><a href="#"> <img src="&lt;?php echo $this-&gt;baseurl\r\n                        ?&gt;/templates/&lt;?php echo $this-&gt;template ?&gt;/images/uzi.png" border="0" alt="dnkom" />Записаться на УЗИ</a></div>\r\n</div>', 1, 'left_block_pacient', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'Пациентам', '', '', 1, 'left_block_pacient', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_php', 1, 0, '{"moduleclass_sfx":"","cache":"0","php":"%3Cdiv%20class%3D%22rows%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ca%20href%3D%22%23%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cimg%20src%3D%22%3C%3Fphp%20echo%20%24this-%3Ebaseurl%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3F%3E%2Ftemplates%2F%3C%3Fphp%20echo%20%24this-%3Etemplate%20%3F%3E%2Fimages%2Frazchitat.png%22%20alt%3D%22dnkom%22%3E%D0%A0%D0%B0%D1%81%D1%87%D0%B8%D1%82%D0%B0%D1%82%D1%8C%20%D0%B7%D0%B0%D0%BA%D0%B0%D0%B7%3C%2Fa%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ca%20href%3D%22%23%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cimg%20src%3D%22%3C%3Fphp%20echo%20%24this-%3Ebaseurl%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3F%3E%2Ftemplates%2F%3C%3Fphp%20echo%20%24this-%3Etemplate%20%3F%3E%2Fimages%2Fuzi.png%22%20alt%3D%22dnkom%22%3E%D0%97%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%A3%D0%97%D0%98%3C%2Fa%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fdiv%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fdiv%3E","eval_php":"1","discovery":"1"}', 0, '*'),
(102, 'Пациентам', '', '<div class="rows">\r\n<div><a href="#"> <img src="images/razchitat.png" border="0" alt="dnkom" />Расчитать заказ</a></div>\r\n<div><a href="#"> <img src="images/uzi.png" border="0" alt="dnkom" />Записаться на УЗИ</a></div>\r\n</div>', 1, 'left_block_pacient', 232, '2014-07-01 07:49:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Партнерам', '', '<div class="rows">\r\n<div><a href="#"> <img src="images/med_tech.png" border="0" alt="dnkom" /><br />Мед. учреждениям</a></div>\r\n<div><a href="#"> <img src="images/docter.png" border="0" alt="dnkom" />Врачам</a></div>\r\n</div>', 1, 'left_block_partners', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 'Unite Nivo Slider Pro', '', '', 1, 'slider_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_unite_nivopro', 1, 0, '{"sliderid":"1","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(105, 'Медицинские анализы в Москве', '', '<p>Научный центр молекулярно-генетических исследований «ДНКОМ» обладает самым широким спектром лабораторных анализов в Москве. У нас вы можете провести диагностику инфекционных возбудителей, таких как ВИЧ, сифилис, гепатиты А, В,С, возбудителей половых инфекций (хламидия, уреаплазма, микоплазма, трихомонада, вирус папилломы человека, гонококк (возбудитель гонореи)); сдать клинические и биохимические анализы крови и мочи; сдать анализы крови на гормоны (T3, Т4, ТТГ, половые гормоны, и проч.); обследоваться на аллергены и онкомаркеры. В своей работе мы используем самые современные методы исследований: ПЦР-диагностику, серологическую диагностику (иммуноферментный и иммунохемилюминисцентный анализ), общеклинические, иммунологические, биохимические и аллергологические тесты, культуральные и микроскопические методики.</p>\r\n<h2>Для чего нужны анализы <span>(H2)</span></h2>\r\n<p>Результаты, проведенных в лаборатории исследований, могут многое рассказать о здоровье пациента. Медицинские анализы - важная составляющая часть любого лечения. Без проведения необходимых процедур практически невозможно определить причину заболевания, и, следовательно, эффективность лечения болезни получается значительно ниже. Медицинские анализы дают возможность определить реакцию на лекарственные препараты и противопоказания с ними связанные. Также, помогут узнать наиболее подходящие и эффективные методы лечения.</p>\r\n<p>Наш научный центр молекулярно-генетических исследовани — один из немногих медицинских учреждений Москвы, который имеет несколько мощных клинико-лабораторных баз для исследований. Новейшее оборудование наших лабораторий позволит провести анализы в Москве быстро и эффективно, и получить наиболее точные результаты, что в дальнейшем будет способствовать качественному лечению и экономии Вашего времени.</p>\r\n<h2>5 причин сдать анализы в Москве именно в нашем центре (H3):</h2>\r\n<ul class="main_description">\r\n<li class="first">Огромный выбор медицинских лабораторных исследований и медицинских анализов.</li>\r\n<li class="second">Высокое качество выполнения всех медицинских анализов, начиная от сбора материала до получения Вами ответа</li>\r\n<li class="third">Полная безопасность Ваших обследований, конфиденциальность.</li>\r\n<li class="four">Грамотное разъяснение результатов медицинских анализов.</li>\r\n<li class="five">Доступные цены на медицинские анализы и лучшее соотношение цена/качество</li>\r\n</ul>', 1, 'description_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'АНАЛИЗЫ (H4)', '', '', 1, 'menu_analizi', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"footer-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(107, 'Комплексы  (H4)', '', '', 1, 'menu_kompleksi', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu-kompleksi","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(108, 'Половые инфекции  (H4)', '', '', 1, 'menu_polovie', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"polovie-funkcii","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(109, 'Контент в футере', '', '<p> </p>\r\n<div class="for_footer">\r\n<p class="numder_phone tel"><span>+7 495</span> 689 77 04 <span class="slesh"> / </span> <span>+7 495</span> 689 69 31</p>\r\n<p class="footer_adress street-address">ул. Тверская, дом 6, стр. 6 <a href="#">info@dnk-diagnostika.ru</a></p>\r\n</div>\r\n<div class="social_icon"> </div>', 1, 'footer_content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'Социальные кнопки в футере', '', '<ul>\r\n<li><a href="#"><span class="icon_rss"> </span></a></li>\r\n<li><a href="#"><span class="icon_face"> </span></a></li>\r\n<li><a href="#"><span class="icon_twitter"> </span></a></li>\r\n<li><a href="#"><span class="icon_google"> </span></a></li>\r\n<li><a href="#"><span class="icon_istagram"> </span></a></li>\r\n<li><a href="#"><span class="icon_yotube"> </span></a></li>\r\n</ul>', 1, 'footer_social_buttons', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 'Контакты в футере', '', '<p class="numder_phone tel"><span class="icon_phone"> </span><span>+7 495</span> 689 77 04 <span class="slesh"> / </span> <span>+7 495</span> 689 69 31</p>\r\n<p class="footer_adress street-address"><span class="icon_home"> </span>ул. Тверская, дом 6, стр. 6 <span class="icon_email"> </span><a href="#">info@dnk-diagnostika.ru</a></p>', 1, 'footer_contacts', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 'Логотип в футере', '', '<p><img src="images/footer_logotype.png" border="0" alt="" /></p>', 1, 'footer_logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 'Новости', '', '', 1, 'news_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_junewsultra', 1, 1, '{"display_article":"0","articleid":"","count":"3","count_skip":"0","show_featured":"0","catid":["8"],"category_filtering_type":"0","show_child_category_articles":"0","levels":"999","excluded_articles":"","date_filtering":"0","date_field":"a.created","relative_date":"0","custom_days":"30","ordering":"created_desc","user_id":"0","cache":"1","cache_time":"900","cachemode":"static","template":"_:news","jquery":"0","bootstrap_js":"0","bootstrap_css":"0","empty_mod":"0","cssstyle":"1","moduleclass_sfx":"news_bloc_module","show_title":"1","title_limit":"0","title_limit_mode":"1","title_limit_count":"20","end_limit_title":"...","title_prepare":"0","content_prepare":"0","show_intro":"1","clear_tag":"1","allowed_intro_tags":"","li":"1","lmttext":"1","introtext_limit":"20","end_limit_introtext":"...","show_full":"0","clear_tag_full":"1","allowed_full_tags":"","li_full":"1","lmttext_full":"1","fulltext_limit":"20","end_limit_fulltext":"...","juauthor":"0","read_more":"0","rmtext":"Read more...","show_date":"1","data_format":"d.m.Y","df_d":"d","df_m":"m","df_y":"Y","showcat":"0","showcatlink":"0","showHits":"0","showRating":"0","showRatingCount":"0","all_in":"1","all_in_position":"1","item_heading":"div","class_all_in":"all_news_link","custom_heading":"0","text_all_in":"\\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","link_all_in":"\\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text_all_in2":"\\u0412\\u0441\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","link_menuitem":"133","pik":"1","image_source":"1","imglink":"0","tips":"0","imageWidth":"70","imageHeight":"70","thumb_width":"1","source_rectangle":"0","sx":"0","sy":"0","sw":"","sh":"","Zoom_Crop":"1","thumb_filtercolor":"0","colorized":"25","colorpicker":"#0000ff","thumb_th_seting":"10","thumb_filters":"1","thumb_unsharp":"1","thumb_unsharp_amount":"80","thumb_unsharp_radius":"1","thumb_unsharp_threshold":"3","thumb_blur":"0","thumb_blur_seting":"1","thumb_brit":"0","thumb_brit_seting":"50","thumb_cont":"0","thumb_cont_seting":"50","defaultimg":"0","noimage":"notfoundimage.png","img_cache":"cache","cache_maxage_img":"30","cache_maxsize_img":"10","cache_maxfiles_img":"200","use_imagemagick":"1","imagemagick_path":"","img_ext":"jpg","link_enabled":"1","use_comments":"0","youtube_img_show":"1","copy":"0"}', 0, '*'),
(114, 'Статьи', '', '', 1, 'materials_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_junewsultra', 1, 1, '{"display_article":"0","articleid":"","count":"3","count_skip":"0","show_featured":"0","catid":["9"],"category_filtering_type":"0","show_child_category_articles":"0","levels":"999","excluded_articles":"","date_filtering":"0","date_field":"a.created","relative_date":"0","custom_days":"30","ordering":"created_desc","user_id":"0","cache":"1","cache_time":"900","cachemode":"static","template":"_:news","jquery":"0","bootstrap_js":"0","bootstrap_css":"0","empty_mod":"0","cssstyle":"1","moduleclass_sfx":"materials_bloc_module","show_title":"1","title_limit":"0","title_limit_mode":"1","title_limit_count":"20","end_limit_title":"...","title_prepare":"0","content_prepare":"0","show_intro":"1","clear_tag":"1","allowed_intro_tags":"","li":"1","lmttext":"1","introtext_limit":"20","end_limit_introtext":"...","show_full":"0","clear_tag_full":"1","allowed_full_tags":"","li_full":"1","lmttext_full":"1","fulltext_limit":"20","end_limit_fulltext":"...","juauthor":"0","read_more":"0","rmtext":"Read more...","show_date":"1","data_format":"d.m.Y","df_d":"d","df_m":"m","df_y":"Y","showcat":"0","showcatlink":"0","showHits":"0","showRating":"0","showRatingCount":"0","all_in":"1","all_in_position":"1","item_heading":"div","class_all_in":"all_materials_link","custom_heading":"0","text_all_in":"\\u0412\\u0441\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438","link_all_in":"\\u0412\\u0441\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438","text_all_in2":"\\u0412\\u0441\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438","link_menuitem":"131","pik":"1","image_source":"1","imglink":"0","tips":"0","imageWidth":"70","imageHeight":"70","thumb_width":"1","source_rectangle":"0","sx":"0","sy":"0","sw":"","sh":"","Zoom_Crop":"1","thumb_filtercolor":"0","colorized":"25","colorpicker":"#0000ff","thumb_th_seting":"10","thumb_filters":"1","thumb_unsharp":"1","thumb_unsharp_amount":"80","thumb_unsharp_radius":"1","thumb_unsharp_threshold":"3","thumb_blur":"0","thumb_blur_seting":"1","thumb_brit":"0","thumb_brit_seting":"50","thumb_cont":"0","thumb_cont_seting":"50","defaultimg":"0","noimage":"notfoundimage.png","img_cache":"cache","cache_maxage_img":"30","cache_maxsize_img":"10","cache_maxfiles_img":"200","use_imagemagick":"1","imagemagick_path":"","img_ext":"jpg","link_enabled":"1","use_comments":"0","youtube_img_show":"1","copy":"0"}', 0, '*'),
(117, 'Слайдер', '', '', 1, 'slider_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_nivopro', 1, 0, '{"sliderid":"2","include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(118, 'Верхнее меню', '', '', 1, 'menu_module', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"top-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(119, 'Поиск', '', '', 1, 'search_module', 232, '2014-06-25 09:28:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"\\u041f\\u043e\\u0438\\u0441\\u043a \\u043f\\u043e \\u0441\\u0430\\u0439\\u0442\\u0443:","button":"1","button_pos":"right","imagebutton":"","button_text":"\\u041d\\u0430\\u0447\\u0430\\u0442\\u044c \\u043f\\u043e\\u0438\\u0441\\u043a","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(121, 'Форма обратной связи', '', '', 1, 'order_form_module', 232, '2014-06-26 06:30:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_foxcontact', 1, 0, '{"to_address":"dummy@address.com, another@address.com","cc_address":"","bcc_address":"","email_subject":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u0441 \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430","jmessenger_user":"0","page_subheading":"","form_width":"50","form_unit":"%","customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"0","labelswidth":"20","labelsunit":"px","sender0":"\\u0412\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f","sender0display":"2","sender0order":"5","sender1":"\\u0412\\u0430\\u0448 e-mail","sender1display":"0","sender1order":"10","sender1isemail":"1","senderwidth":"85","senderunit":"%","text0":"\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430","text0display":"2","text0order":"15","text1":"","text1display":"0","text1order":"20","text2":"","text2display":"0","text2order":"25","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","textwidth":"85","textunit":"%","dropdown0":"\\u041a\\u0430\\u043a \\u0432\\u044b \\u0443\\u0437\\u043d\\u0430\\u043b\\u0438 \\u043e \\u043d\\u0430\\u0441?","dropdown0display":"0","dropdown0values":"\\u041f\\u043e\\u0438\\u0441\\u043a \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0435,\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0430\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0443\\u0433\\u0430,\\u041f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u0442\\u0437\\u044b\\u0432 \\u0432 \\u0421\\u041c\\u0418","dropdown0order":"65","dropdown1":"","dropdown1display":"0","dropdown1values":"","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdownwidth":"85","dropdownunit":"%","textarea0":"\\u041e\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441","textarea0display":"1","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textareawidth":"85","textareaheight":"180","textareaunit":"%","checkbox0":"\\u042f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d \\u0441 \\u0432\\u0430\\u0448\\u0438\\u043c\\u0438 \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430\\u043c\\u0438 \\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c\\u0438","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","upload":"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0435\\u0442\\u0435 \\u0444\\u0430\\u0439\\u043b\\u044b \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f","uploadmax_file_size":"10000","submittext":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","submittype":"0","submiticon":"-1","resetbutton":"0","resettext":"\\u0421\\u0431\\u0440\\u043e\\u0441","resettype":"0","reseticon":"-1","email_sent_action":"0","email_sent_text":"\\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0434\\u043d\\u0435\\u0439.","email_sent_textdisplay":"1","email_sent_page":"104","copy_to_submitter":"1","email_copy_subject":"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e \\u0437\\u0430 \\u0432\\u0430\\u0448\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043a \\u043d\\u0430\\u043c","email_copy_text":"\\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0434\\u043d\\u0435\\u0439.","email_copy_summary":"0","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u043d\\u043e \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442, \\u0447\\u0442\\u043e \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u043d\\u0435\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u0443\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u043e\\u043d\\u043e <b>\\u0431\\u044b\\u043b\\u043e \\u0437\\u0430\\u0431\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043e<\\/b>.<br \\/>\\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u0447\\u0442\\u043e \\u044d\\u0442\\u043e \\u043e\\u0448\\u0438\\u0431\\u043a\\u0430, \\u0442\\u043e, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0435\\u0440\\u043d\\u0438\\u0442\\u0435\\u0441\\u044c \\u0438 \\u043f\\u043e\\u043f\\u0440\\u043e\\u0431\\u0443\\u0439\\u0442\\u0435 \\u0435\\u0449\\u0451 \\u0440\\u0430\\u0437, \\u0438\\u0437\\u0431\\u0435\\u0433\\u0430\\u044f \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0441\\u043b\\u043e\\u0432 \\u043a\\u0430\\u043a <i>www, http,<\\/i> \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435.","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptcha":"\\u041a\\u043b\\u044e\\u0447 \\u0437\\u0430\\u0449\\u0438\\u0442\\u044b","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"-1","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","layout":"_:default","stylesheet":"neon.css","moduleclass_sfx":"","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', 0, '*'),
(122, 'Обертка слайдера', '', '', 1, 'slider_wrapper', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, 'Последние новости', '', '', 1, 'back_news', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(124, 'Меню с гостевой книгой (справа)', '', '', 1, 'right_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"guest-book-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(125, 'Вернутся к списку новостей', '', '', 1, 'link-news', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"content-bottom","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(126, 'Блок Ссылок справа', '', '<ul>\r\n<li><a class="get-biomaterial-link" href="#">Взятие биоматериалов на дому</a></li>\r\n<li><a class="regulations-link" href="#">Взятие биоматериалов на дому</a></li>\r\n<li><a class="choose-test-link" href="#">Взятие биоматериалов на дому</a></li>\r\n</ul>\r\n<p><a class="print-link" href="#">Распичатать страницу</a></p>', 1, 'links-right-block', 232, '2014-07-08 13:29:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"-links-right-block","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(127, 'баннеры', '', '<p><img src="images/baner.png" border="0" alt="" /></p>\r\n<p><img src="images/baner2.png" border="0" alt="" /></p>', 1, 'right_menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"baner","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 'Форма для анализа на дому', '', '', 1, 'fox_analiz_at_home', 232, '2014-08-07 08:31:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_foxcontact', 1, 0, '{"to_address":"dummy@address.com, another@address.com","cc_address":"","bcc_address":"","email_subject":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u0441 \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430","jmessenger_user":"0","page_subheading":"\\u0412\\u044b\\u0437\\u043e\\u0432 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u0430 \\u043d\\u0430 \\u0434\\u043e\\u043c","form_width":"420","form_unit":"px","customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"*- \\u043f\\u043e\\u043b\\u044f, \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0437\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","labelswidth":"420","labelsunit":"px","sender0":"\\u0424\\u0418\\u041e","sender0display":"2","sender0order":"5","sender1":"E-mail","sender1display":"1","sender1order":"25","sender1isemail":"1","senderwidth":"79","senderunit":"%","text0":"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d","text0display":"2","text0order":"15","text1":"","text1display":"0","text1order":"20","text2":"\\u0414\\u0430\\u0442\\u0430 \\u0432\\u044b\\u0435\\u0437\\u0434\\u0430 \\u043c\\u0435\\u0434\\u0441\\u0435\\u0441\\u0442\\u0440\\u044b","text2display":"1","text2order":"35","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","textwidth":"79","textunit":"%","dropdown0":"","dropdown0display":"0","dropdown0values":"\\u041f\\u043e\\u0438\\u0441\\u043a \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0435,\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0430\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0443\\u0433\\u0430,\\u041f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u0442\\u0437\\u044b\\u0432 \\u0432 \\u0421\\u041c\\u0418","dropdown0order":"65","dropdown1":"","dropdown1display":"0","dropdown1values":"","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdownwidth":"85","dropdownunit":"%","textarea0":"\\u041e\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0432\\u0430\\u0448 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441","textarea0display":"0","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textareawidth":"85","textareaheight":"180","textareaunit":"%","checkbox0":"\\u042f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d \\u0441 \\u0432\\u0430\\u0448\\u0438\\u043c\\u0438 \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430\\u043c\\u0438 \\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c\\u0438","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","upload":"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0435\\u0442\\u0435 \\u0444\\u0430\\u0439\\u043b\\u044b \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f","uploadmax_file_size":"10000","submittext":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","submittype":"0","submiticon":"-1","resetbutton":"0","resettext":"\\u0421\\u0431\\u0440\\u043e\\u0441","resettype":"0","reseticon":"-1","email_sent_action":"0","email_sent_text":"\\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0434\\u043d\\u0435\\u0439.","email_sent_textdisplay":"1","email_sent_page":"104","copy_to_submitter":"1","email_copy_subject":"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e \\u0437\\u0430 \\u0432\\u0430\\u0448\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043a \\u043d\\u0430\\u043c","email_copy_text":"\\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0434\\u043d\\u0435\\u0439.","email_copy_summary":"0","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u043d\\u043e \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442, \\u0447\\u0442\\u043e \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u043d\\u0435\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u0443\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u043e\\u043d\\u043e <b>\\u0431\\u044b\\u043b\\u043e \\u0437\\u0430\\u0431\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043e<\\/b>.<br \\/>\\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u0447\\u0442\\u043e \\u044d\\u0442\\u043e \\u043e\\u0448\\u0438\\u0431\\u043a\\u0430, \\u0442\\u043e, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0435\\u0440\\u043d\\u0438\\u0442\\u0435\\u0441\\u044c \\u0438 \\u043f\\u043e\\u043f\\u0440\\u043e\\u0431\\u0443\\u0439\\u0442\\u0435 \\u0435\\u0449\\u0451 \\u0440\\u0430\\u0437, \\u0438\\u0437\\u0431\\u0435\\u0433\\u0430\\u044f \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0441\\u043b\\u043e\\u0432 \\u043a\\u0430\\u043a <i>www, http,<\\/i> \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435.","spam_detected_textdisplay":"1","stdcaptchadisplay":"1","stdcaptcha":"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043a\\u043e\\u0434 \\u0441 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438","stdcaptchatype":"0","stdcaptcha_length":"7","stdcaptchawidth":"145","stdcaptchaheight":"25","stdcaptchafont":"bleedingcowboys.ttf","stdcaptchafontmin":"14","stdcaptchafontmax":"14","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","layout":"_:default","stylesheet":"neon.css","moduleclass_sfx":"","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', 0, '*'),
(129, 'Special HTML', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_specialhtml', 1, 1, '', 0, '*'),
(130, 'Javascript для анализы на дому', '', '', 1, 'js_analiz_dom', 232, '2014-07-28 08:26:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_specialhtml', 1, 1, '', 0, '*'),
(131, 'Flexi Custom Code', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_flexi_customcode', 1, 1, '', 0, '*'),
(132, 'Рассчитать заказ', '', '', 1, 'count_order_module', 232, '2014-08-05 08:30:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_flexi_customcode', 1, 1, '{"code_area":"<?php\\r\\nrequire_once(\\"\\/countOrder.php\\");\\r\\n?>","use_php":"1","userlevel":"1","clean_js":"1","clean_css":"1","clean_all":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');
INSERT INTO `y18x3_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(133, 'Форма заказа ', '', '', 1, 'count_order_email_module', 232, '2014-08-05 08:35:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_foxcontact', 1, 0, '{"to_address":"dummy@address.com, another@address.com","cc_address":"","bcc_address":"","email_subject":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430 \\u0441 \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430","jmessenger_user":"0","page_subheading":"\\u041e\\u0444\\u043e\\u0440\\u043c\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437 \\u0438 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c \\u043f\\u043e E-mail","form_width":"100","form_unit":"%","customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"1","labelswidth":"70","labelsunit":"px","sender0":"\\u0424\\u0418\\u041e","sender0display":"2","sender0order":"5","sender1":"E-mail","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"242","senderunit":"px","text0":"\\u0414\\u0430\\u0442\\u0430 \\u0440\\u043e\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f","text0display":"2","text0order":"15","text1":"","text1display":"0","text1order":"20","text2":"","text2display":"0","text2order":"25","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","textwidth":"242","textunit":"px","dropdown0":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430","dropdown0display":"0","dropdown0values":"\\u041f\\u043e\\u0438\\u0441\\u043a \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0435,\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0430\\u0446\\u0438\\u0438 \\u0434\\u0440\\u0443\\u0433\\u0430,\\u041f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u0442\\u0437\\u044b\\u0432 \\u0432 \\u0421\\u041c\\u0418","dropdown0order":"65","dropdown1":"","dropdown1display":"0","dropdown1values":"","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdownwidth":"85","dropdownunit":"%","textarea0":"\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430","textarea0display":"1","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textareawidth":"85","textareaheight":"180","textareaunit":"%","checkbox0":"\\u042f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0435\\u043d \\u0441 \\u0432\\u0430\\u0448\\u0438\\u043c\\u0438 \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430\\u043c\\u0438 \\u0438 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u043c\\u0438","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","upload":"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0435\\u0442\\u0435 \\u0444\\u0430\\u0439\\u043b\\u044b \\u0434\\u043b\\u044f \\u043f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f","uploadmax_file_size":"10000","submittext":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c","submittype":"0","submiticon":"-1","resetbutton":"0","resettext":"\\u0421\\u0431\\u0440\\u043e\\u0441","resettype":"0","reseticon":"-1","email_sent_action":"0","email_sent_text":"\\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0434\\u043d\\u0435\\u0439.","email_sent_textdisplay":"1","email_sent_page":"104","copy_to_submitter":"1","email_copy_subject":"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e \\u0437\\u0430 \\u0432\\u0430\\u0448\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043a \\u043d\\u0430\\u043c","email_copy_text":"\\u041c\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438 \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435. \\u041c\\u044b \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0441 \\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0434\\u043d\\u0435\\u0439.","email_copy_summary":"0","spam_check":"1","spam_words":"www,http,url=,href=,link=,.txt,shit,fuck","spam_detected_text":"\\u0418\\u0437\\u0432\\u0438\\u043d\\u0438\\u0442\\u0435, \\u043d\\u043e \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442, \\u0447\\u0442\\u043e \\u0432\\u0430\\u0448\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442 \\u043d\\u0435\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u0443\\u044e \\u0440\\u0435\\u043a\\u043b\\u0430\\u043c\\u0443, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u043e\\u043d\\u043e <b>\\u0431\\u044b\\u043b\\u043e \\u0437\\u0430\\u0431\\u043b\\u043e\\u043a\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043e<\\/b>.<br \\/>\\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u0447\\u0442\\u043e \\u044d\\u0442\\u043e \\u043e\\u0448\\u0438\\u0431\\u043a\\u0430, \\u0442\\u043e, \\u043f\\u043e\\u0436\\u0430\\u043b\\u0443\\u0439\\u0441\\u0442\\u0430, \\u0432\\u0435\\u0440\\u043d\\u0438\\u0442\\u0435\\u0441\\u044c \\u0438 \\u043f\\u043e\\u043f\\u0440\\u043e\\u0431\\u0443\\u0439\\u0442\\u0435 \\u0435\\u0449\\u0451 \\u0440\\u0430\\u0437, \\u0438\\u0437\\u0431\\u0435\\u0433\\u0430\\u044f \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0441\\u043b\\u043e\\u0432 \\u043a\\u0430\\u043a <i>www, http,<\\/i> \\u0438 \\u0442\\u0430\\u043a \\u0434\\u0430\\u043b\\u0435\\u0435.","spam_detected_textdisplay":"1","stdcaptchadisplay":"1","stdcaptcha":"\\u0412\\u0432\\u0435\\u0434\\u0438\\u0442\\u0435 \\u043a\\u043e\\u0434 \\u0441 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438","stdcaptchatype":"0","stdcaptcha_length":"7","stdcaptchawidth":"115","stdcaptchaheight":"25","stdcaptchafont":"-1","stdcaptchafontmin":"11","stdcaptchafontmax":"11","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","layout":"_:default","stylesheet":"neon.css","moduleclass_sfx":"","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', 0, '*'),
(134, 'Подготовка к анализам', '', '', 1, 'podgotovka-left-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"left-menu-podgotovka","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_modules_menu`
--

CREATE TABLE IF NOT EXISTS `y18x3_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_modules_menu`
--

INSERT INTO `y18x3_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
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
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(94, 0),
(99, 124),
(100, 0),
(101, 101),
(102, 101),
(103, 101),
(104, 101),
(105, 101),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 101),
(114, 101),
(115, 0),
(116, 0),
(117, 101),
(118, 0),
(119, 0),
(121, 0),
(122, 101),
(123, 101),
(124, -118),
(124, -101),
(125, 133),
(126, 0),
(127, 133),
(127, 134),
(128, 0),
(130, 0),
(132, 0),
(133, 0),
(134, 126),
(134, 140),
(134, 141);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `y18x3_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_nivosliderpro_sliders`
--

CREATE TABLE IF NOT EXISTS `y18x3_nivosliderpro_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `visual` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `y18x3_nivosliderpro_sliders`
--

INSERT INTO `y18x3_nivosliderpro_sliders` (`id`, `title`, `alias`, `published`, `ordering`, `params`, `visual`) VALUES
(2, 'MainSlider', 'mainslider', 1, 1, '{"pauseTime":"100000","animSpeed":"500","position":"center","margin_left":"0","margin_right":"0","margin_top":"0","margin_bottom":"0","clear_both":"false","directionNavHide":"true","startSlide":"0","randomStart":"false","pauseOnHover":"true","manualAdvance":"false","keyboardNav":"true","slices":"15","boxCols":"8","boxRows":"4","beforeChange":"function(){}","afterChange":"function(){}","slideshowEnd":"function(){}","lastSlide":"function(){}","afterLoad":"function(){}"}', '{"width":"618","height":"320","has_border":"false","border_size":"2","border_color":"#ffffff","has_shadow":"false","shadow_color":"#000000","has_arrows":"true","arrows_set":"boxed_doublearrow_black","arrow_left_x":"558","arrow_left_y":"-32","arrow_right_x":"587","arrow_right_y":"-31","arrows_free_drag":"true","has_bullets":"true","bullets_set":"simple_stripe_red","bullets_align":"center","bullets_y":"300","bullets_xleft":"255","bullets_xright":"254","bullets_spacing":"6","reverse_bullets":"false","has_caption":"true","caption_back_color":"#000000","caption_back_alpha":"80","caption_position":"bottom","text_color":"#ffffff","text_align":"left","text_padding":"8","font_size":"14"}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_nivosliderpro_slides`
--

CREATE TABLE IF NOT EXISTS `y18x3_nivosliderpro_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `sliderid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `y18x3_nivosliderpro_slides`
--

INSERT INTO `y18x3_nivosliderpro_slides` (`id`, `catid`, `sliderid`, `title`, `alias`, `image`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 0, 1, 'Slide1', 'slide1', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"image":"images\\/slide1.png","description":"<div class=\\"slide_text\\">sdfgsdfgsdfg<\\/div>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}'),
(2, 0, 1, 'Slide2', 'slide2', '', '', 1, 0, '0000-00-00 00:00:00', 2, '{"image":"images\\/logotypes.png","description":"<p>privet<\\/p>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}'),
(6, 0, 2, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 4, '{"image":"images\\/slides2.png","description":"<div class=\\"uzi_title\\">\\u0423\\u0417\\u0418 \\u0418 \\u042d\\u041a\\u0413<\\/div>\\r\\n<ul>\\r\\n<li>\\u0413\\u0438\\u043d\\u0435\\u043a\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435 \\u0443\\u0437\\u0438<\\/li>\\r\\n<li>\\u0414\\u0443\\u043f\\u043b\\u0435\\u043a\\u0441\\u043d\\u043e\\u0435 \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u043e\\u0435 \\u0441\\u043a\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u0432\\u0438\\u0434\\u044b \\u0423\\u0417 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u042d\\u041a\\u0413 \\u0437\\u0430 15 \\u043c\\u0438\\u043d\\u0443\\u0442<\\/p>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}'),
(7, 0, 2, 'Slide', 'slide', '', '', 1, 232, '2014-07-28 06:14:28', 5, '{"image":"images\\/slides3.png","description":"<div id=\\"pol_ploda\\">\\u041e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e\\u043b\\u0430 \\u043f\\u043b\\u043e\\u0434\\u0430<\\/div>\\r\\n<p>\\u0413\\u0435\\u043d\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/p>\\r\\n<p>\\u041e\\u0431\\u043d\\u0430\\u0440\\u0443\\u0436\\u0435\\u043d\\u0438\\u0435 Y-\\u0445\\u0440\\u043e\\u043c\\u043e\\u0441\\u043e\\u043c\\u044b<\\/p>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}'),
(5, 0, 2, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 3, '{"image":"images\\/slides1.png","description":"<div class=\\"slider_title\\">\\u0413\\u0435\\u043d\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f<\\/div>\\r\\n<p><span>\\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0444\\u0430\\u043a\\u0442\\u043e\\u0440\\u043e\\u0432 \\u0440\\u0438\\u0441\\u043a\\u0430<\\/span><\\/p>\\r\\n<ul>\\r\\n<li>\\u0422\\u0440\\u043e\\u043c\\u0431\\u043e\\u0444\\u0438\\u043b\\u0438\\u0438<\\/li>\\r\\n<li>\\u0414\\u0435\\u0444\\u0435\\u043a\\u0442\\u044b \\u0444\\u043e\\u043b\\u0430\\u0442\\u043d\\u043e\\u0433\\u043e \\u0446\\u0438\\u043a\\u043b\\u0430<\\/li>\\r\\n<li>\\u0421\\u0438\\u043d\\u0434\\u0440\\u043e\\u043c \\u043f\\u043e\\u043b\\u0438\\u043a\\u0438\\u0441\\u0442\\u043e\\u0437\\u043d\\u044b\\u0445 \\u044f\\u0438\\u0447\\u043d\\u0438\\u043a\\u043e\\u0432<\\/li>\\r\\n<li>\\u041f\\u0440\\u0435\\u0434\\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043a \\u0440\\u0430\\u043a\\u0443 \\u043c\\u043e\\u043b\\u043e\\u0447\\u043d\\u043e\\u0439 \\u0436\\u0435\\u043b\\u0435\\u0437\\u044b<\\/li>\\r\\n<li>\\u0413\\u0435\\u043c\\u043e\\u0445\\u0440\\u043e\\u043c\\u0430\\u0442\\u043e\\u0437<\\/li>\\r\\n<\\/ul>\\r\\n<p>\\u0438 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435<\\/p>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}'),
(8, 0, 2, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 6, '{"image":"images\\/slides4.png","description":"<div id=\\"father\\">\\u041e\\u041f\\u0420\\u0415\\u0414\\u0415\\u041b\\u0415\\u041d\\u0418\\u0415 \\u041e\\u0422\\u0426\\u041e\\u0412\\u0421\\u0422\\u0412\\u0410<\\/div>\\r\\n<ul>\\r\\n<li>\\u0410\\u043d\\u0430\\u043b\\u0438\\u0437 \\u0414\\u041d\\u041a<\\/li>\\r\\n<li>\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c<\\/li>\\r\\n<li>\\u0414\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u0430\\u044f \\u0446\\u0435\\u043d\\u0430<\\/li>\\r\\n<li>\\u0417\\u0430\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0441\\u0443\\u0434\\u0430<\\/li>\\r\\n<\\/ul>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}'),
(9, 0, 2, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 7, '{"image":"images\\/slides5.png","description":"<div id=\\"fibrotest\\">\\u0424\\u0438\\u0431\\u0440\\u043e\\u0442\\u0435\\u0441\\u0442<\\/div>\\r\\n<p>\\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u043f\\u0430\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 \\u043f\\u0435\\u0447\\u0435\\u043d\\u0438 <span>\\u0431\\u0435\\u0437 \\u0431\\u0438\\u043e\\u043f\\u0441\\u0438\\u0438 \\u0437\\u0430<\\/span> <span>2 \\u0434\\u043d\\u044f<\\/span>.<\\/p>","activate_link":"no","link":"","link_open_in":"new","image_alt":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_overrider`
--

CREATE TABLE IF NOT EXISTS `y18x3_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_redirect_links`
--

CREATE TABLE IF NOT EXISTS `y18x3_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `y18x3_redirect_links`
--

INSERT INTO `y18x3_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/dnkom/index.php/2014-06-25-06-28-40/novosti', '', 'http://localhost/dnkom/index.php/2014-06-25-06-28-40/novosti', '', 2, 0, '2014-07-01 09:16:05', '0000-00-00 00:00:00'),
(2, 'http://localhost/dnkom3/index.php/2014-06-25-06-27-35', '', 'http://localhost/dnkom3/', '', 1, 0, '2014-07-03 13:37:25', '0000-00-00 00:00:00'),
(3, 'http://localhost/dnkom3/index.php/expressInstall.swf', '', 'http://localhost/dnkom3/index.php/kontakty-adresa-i-uslugi', '', 4, 0, '2014-07-08 11:05:40', '0000-00-00 00:00:00'),
(4, 'http://localhost/dnkom3/index.php/kontakty-adresa-i-uslugi/item/expressInstall.swf', '', 'http://localhost/dnkom3/index.php/kontakty-adresa-i-uslugi/item/tverskaya', '', 2, 0, '2014-07-08 11:05:47', '0000-00-00 00:00:00'),
(5, 'http://localhost/dnkom3/index.php/o-kompanii/expressInstall.swf', '', 'http://localhost/dnkom3/index.php/o-kompanii/novosti', '', 6, 0, '2014-07-08 11:05:59', '0000-00-00 00:00:00'),
(6, 'http://localhost/dnkom3/index.php/o-kompanii/znamenitosti-v-dnkom/item/expressInstall.swf', '', 'http://localhost/dnkom3/index.php/o-kompanii/znamenitosti-v-dnkom/item/grigorij-leps', '', 6, 0, '2014-07-08 11:06:23', '0000-00-00 00:00:00'),
(7, 'http://localhost/dnkom3//index.php?option=com_content&view=article&id=47', '', 'http://localhost/dnkom3/index.php/2014-06-25-06-27-00/2014-06-25-06-37-56/category/a', '', 1, 0, '2014-08-01 12:31:10', '0000-00-00 00:00:00'),
(8, 'http://localhost/dnkom3//index.php/rasschitat-zakaz', '', 'http://localhost/dnkom3/index.php/2014-06-25-06-27-00/2014-06-25-06-37-56/category/a', '', 1, 0, '2014-08-01 12:42:03', '0000-00-00 00:00:00'),
(9, 'http://localhost/dnkom3/analizy-i-tseny/analizy-po-razdelam/item/index.php/rasschitat-zakaz', '', 'http://localhost/dnkom3/analizy-i-tseny/analizy-po-razdelam/item/analiz-1.html', '', 1, 0, '2014-08-07 06:50:49', '0000-00-00 00:00:00'),
(10, 'http://localhost/dnkom3/adminpanel.html', '', '', '', 1, 0, '2014-08-07 07:32:54', '0000-00-00 00:00:00'),
(11, 'http://localhost/dnkom3/adminpanelюреьд', '', '', '', 1, 0, '2014-08-07 07:34:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_schemas`
--

CREATE TABLE IF NOT EXISTS `y18x3_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_schemas`
--

INSERT INTO `y18x3_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.22'),
(10032, '1.9.0');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_session`
--

CREATE TABLE IF NOT EXISTS `y18x3_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_session`
--

INSERT INTO `y18x3_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('f5vkf98t5erviob6dvbv3o55l3', 1, 0, '1407414071', '__default|a:8:{s:15:"session.counter";i:81;s:19:"session.timer.start";i:1407411107;s:18:"session.timer.last";i:1407414066;s:17:"session.timer.now";i:1407414068;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_jcomments";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"comment";O:8:"stdClass":2:{s:2:"id";a:3:{i:0;i:29;i:1;i:28;i:2;i:25;}s:4:"data";N;}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:2:{i:0;i:13;i:1;i:7;}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"232";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:15:"sasha@gmail.com";s:8:"password";s:34:"$P$DzdtNjhETnYwW17XdJe9AiwXNRRloj1";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-06-19 08:03:05";s:13:"lastvisitDate";s:19:"2014-08-07 10:59:31";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"4bcef6e6aa666f37c347e66fa8fbf2a9";}', 232, 'admin', ''),
('fndhf2mg4n6eu87h6p0en87vi4', 0, 0, '1407413886', '__default|a:8:{s:15:"session.counter";i:86;s:19:"session.timer.start";i:1407412386;s:18:"session.timer.last";i:1407413768;s:17:"session.timer.now";i:1407413885;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":1:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:6:"return";s:70:"index.php?format=html&option=com_content&view=article&id=12&Itemid=152";s:4:"data";a:0:{}}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"232";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:15:"sasha@gmail.com";s:8:"password";s:34:"$P$DzdtNjhETnYwW17XdJe9AiwXNRRloj1";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-06-19 08:03:05";s:13:"lastvisitDate";s:19:"2014-08-07 11:53:05";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"0e1e627dc546b74b0894e81e8e478901";}comments-captcha-code|s:5:"en72c";', 232, 'admin', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_template_styles`
--

CREATE TABLE IF NOT EXISTS `y18x3_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `y18x3_template_styles`
--

INSERT INTO `y18x3_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - По умолчанию', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - По умолчанию', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - По умолчанию', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - По умолчанию', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - По умолчанию', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'dnkom', 0, '1', 'dnkom - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_updates`
--

CREATE TABLE IF NOT EXISTS `y18x3_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=419 ;

--
-- Дамп данных таблицы `y18x3_updates`
--

INSERT INTO `y18x3_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(2, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(3, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(4, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(5, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(6, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(7, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(8, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(9, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(10, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(11, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(12, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(13, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(17, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(18, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(19, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(23, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(24, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(25, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(26, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(27, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(28, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(29, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(30, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(31, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(32, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(33, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(34, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(35, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(36, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(37, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(38, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(39, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(40, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(41, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(42, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(43, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(44, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(45, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(46, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(47, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(48, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(49, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(50, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(51, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(52, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(53, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(54, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(55, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(56, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(57, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(58, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(59, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(60, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(61, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(62, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(63, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(64, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(65, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(66, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(67, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(68, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(69, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(70, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(71, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(72, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(73, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(74, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(75, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(76, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(77, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(78, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(79, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(80, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(81, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(82, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(83, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(84, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(85, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(86, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(87, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(88, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(89, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(90, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(91, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(92, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(93, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(94, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(95, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(96, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(97, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(98, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(99, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(100, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(101, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(102, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(103, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(104, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(105, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(106, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(107, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(108, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(109, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(110, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(111, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(112, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(113, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(114, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(115, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(116, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(117, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(118, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(119, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(120, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(121, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(122, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(123, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(124, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(125, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(126, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(127, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(128, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(129, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(130, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(131, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(132, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(133, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(134, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(135, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(136, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(137, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(138, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(139, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(140, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(141, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(142, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(143, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(144, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(145, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(146, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(147, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(148, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(149, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(150, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(151, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(152, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(153, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(154, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(155, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(156, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(157, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(158, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(159, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(160, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(161, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(162, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(163, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(164, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(165, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(166, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(167, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(168, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(169, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(170, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(171, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(172, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(173, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(174, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(175, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(176, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(177, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(178, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(179, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(180, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(181, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(182, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(183, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(184, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(185, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(186, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(187, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(188, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(189, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(190, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(191, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(192, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(193, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(194, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(195, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(196, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(197, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(198, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(199, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(200, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(201, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(202, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(203, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(204, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(205, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(206, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(207, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(208, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(209, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(210, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(211, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(212, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(213, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(214, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(215, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(216, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(217, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(218, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(219, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(220, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(221, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(222, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(223, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(224, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(225, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(226, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(227, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(228, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(229, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(230, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(231, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(232, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(233, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(234, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(235, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(236, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(237, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(238, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(239, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(240, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(241, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(242, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(243, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(244, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(245, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(246, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(247, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(248, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(249, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(250, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(251, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(252, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(253, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(254, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(255, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(256, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(257, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(258, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(259, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(260, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(261, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(262, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(263, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(264, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(265, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(266, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(267, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(268, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(269, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(270, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(271, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(272, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(273, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(274, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(275, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(276, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(277, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(278, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(279, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(280, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(281, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(282, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(283, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(284, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(285, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(286, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(287, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(288, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(289, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(290, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(291, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(292, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(293, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(294, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(295, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(296, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(297, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(298, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(299, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(300, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(301, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(302, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(303, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(304, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(305, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(306, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(307, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(308, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(309, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(310, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(311, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(312, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(313, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(314, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(315, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(316, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(317, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(318, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(319, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(320, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(321, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(322, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(323, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(324, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(325, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(326, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(327, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(328, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(329, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(330, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(331, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(332, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(333, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(334, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(335, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(336, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(337, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(338, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(339, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(340, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(341, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(342, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(343, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(344, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(345, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(346, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(347, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(348, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(349, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', '');
INSERT INTO `y18x3_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(350, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(351, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(352, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(353, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(354, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(355, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(356, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(357, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(358, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(359, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(360, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(361, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(362, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(363, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(364, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(365, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(366, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(367, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(368, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(369, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(370, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(371, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(372, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(373, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(374, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(375, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(376, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(377, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(378, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(379, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(380, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(381, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(382, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(383, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(384, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(385, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(386, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(387, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(388, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(389, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(390, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(391, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(392, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(393, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(394, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(395, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(396, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(397, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(398, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(399, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(400, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(401, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(402, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(403, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(404, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(405, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(406, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(407, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(408, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(409, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(410, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(411, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(412, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(413, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(414, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(415, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(416, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(417, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(418, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_update_categories`
--

CREATE TABLE IF NOT EXISTS `y18x3_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_update_sites`
--

CREATE TABLE IF NOT EXISTS `y18x3_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `y18x3_update_sites`
--

INSERT INTO `y18x3_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1404289976),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1406105096),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1407312184),
(4, 'Joomline', 'extension', 'http://joomlamoduli.ru/', 0, 1403502320),
(5, 'JUNewsUltra', 'extension', 'http://www.joomla-ua.org/update/mod/junewsultra.xml', 0, 1403625779),
(6, 'Foxcontact update site', 'extension', 'http://www.fox.ra.it/phocadownload/foxcontact.xml', 0, 1407312184),
(7, 'JComments Update Site', 'extension', 'http://www.joomlatune.ru/updates/jcomments.xml', 0, 1407312184);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `y18x3_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `y18x3_update_sites_extensions`
--

INSERT INTO `y18x3_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10003),
(5, 10025),
(5, 10030),
(6, 10032),
(7, 10038);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_usergroups`
--

CREATE TABLE IF NOT EXISTS `y18x3_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `y18x3_usergroups`
--

INSERT INTO `y18x3_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Все'),
(2, 1, 6, 17, 'Зарегистрированные'),
(3, 2, 7, 14, 'Авторы'),
(4, 3, 8, 11, 'Редакторы'),
(5, 4, 9, 10, 'Издатели'),
(6, 1, 2, 5, 'Менеджеры'),
(7, 6, 3, 4, 'Администраторы'),
(8, 1, 18, 19, 'Супер-пользователи');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_users`
--

CREATE TABLE IF NOT EXISTS `y18x3_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=233 ;

--
-- Дамп данных таблицы `y18x3_users`
--

INSERT INTO `y18x3_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(232, 'Super User', 'admin', 'sasha@gmail.com', '$P$DzdtNjhETnYwW17XdJe9AiwXNRRloj1', 'deprecated', 0, 1, '2014-06-19 08:03:05', '2014-08-07 12:04:00', '0', '{}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_user_notes`
--

CREATE TABLE IF NOT EXISTS `y18x3_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_user_profiles`
--

CREATE TABLE IF NOT EXISTS `y18x3_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `y18x3_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_user_usergroup_map`
--

INSERT INTO `y18x3_user_usergroup_map` (`user_id`, `group_id`) VALUES
(232, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_viewlevels`
--

CREATE TABLE IF NOT EXISTS `y18x3_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `y18x3_viewlevels`
--

INSERT INTO `y18x3_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Для всех', 0, '[1]'),
(2, 'Для зарегистрированных', 1, '[6,2,8]'),
(3, 'Для администрации', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_weblinks`
--

CREATE TABLE IF NOT EXISTS `y18x3_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_application`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `application_group` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `y18x3_zoo_application`
--

INSERT INTO `y18x3_zoo_application` (`id`, `name`, `alias`, `application_group`, `description`, `params`) VALUES
(1, 'Знаменитости в ДНКОМ', 'znamenitosti', 'jbuniversal', '', ' {\n	"group": "jbuniversal",\n	"template": "catalog",\n	"global.config.yoo_support": "0",\n	"global.config.rborder": "0",\n	"global.config.column_heightfix": "0",\n	"global.config.wrap_item_style": "div",\n	"global.config.category_image_height": "150",\n	"global.config.category_image_width": "150",\n	"global.config.show_feed_link": "0",\n	"global.config.feed_title": "",\n	"global.config.alternate_feed_link": "",\n	"global.config.category_teaser_image_height": "50",\n	"global.config.category_teaser_image_width": "50",\n	"global.config.items_per_page": "6",\n	"global.config.item_order":  {\n		"0": "_jbzoo_0_field__none",\n		"1": "_jbzoo_0_mode_s",\n		"2": "_jbzoo_0_order_asc"\n	},\n	"global.config.alpha_index": "0",\n	"global.config.alpha_chars": "0",\n	"global.config.layout_frontpage": "__auto__",\n	"global.config.layout_category": "__auto__",\n	"global.config.layout_subcategory": "__auto__",\n	"global.config.layout_subcategory_columns": "__auto__",\n	"global.config.layout_subcategories": "__auto__",\n	"global.config.layout_items": "__auto__",\n	"global.config.layout_item_columns": "__auto__",\n	"global.config.layout_alphaindex": "__auto__",\n	"global.config.layout_pagination": "__auto__",\n	"global.config.layout_tag": "__auto__",\n	"global.config.layout_comments": "__auto__",\n	"global.config.layout_comment": "__auto__",\n	"global.config.layout_respond": "__auto__",\n	"global.config.layout_mysubmissions": "__auto__",\n	"global.config.layout_administration": "__auto__",\n	"global.config.layout_submission": "__auto__",\n	"global.config.lastmodified": "1404216325",\n	"global.template.show_alpha_index": "0",\n	"global.template.category_title_show": "1",\n	"global.template.category_show": "1",\n	"global.template.category_subtitle": "1",\n	"global.template.category_teaser_text": "1",\n	"global.template.category_image": "1",\n	"global.template.category_image_align": "left",\n	"global.template.category_text": "1",\n	"global.template.subcategory_show": "1",\n	"global.template.subcategory_teaser_text": "1",\n	"global.template.subcategory_teaser_image": "1",\n	"global.template.subcategory_teaser_image_align": "left",\n	"global.template.subcategory_empty": "1",\n	"global.template.subcategory_cols": "1",\n	"global.template.subcategory_order": "0",\n	"global.template.subcategory_items_count_show": "0",\n	"global.template.subcategory_items_count": "100",\n	"global.template.item_cols": "1",\n	"global.template.item_order": "0",\n	"global.template.item_pagination": "0",\n	"global.template.lastmodified": "1404216325",\n	"global.template.item_full_image_align": "left",\n	"global.template.item_teaser_image_align": "left",\n	"global.template.item_related_image_align": "left",\n	"global.template.item_subcategory_item_image_align": "left",\n	"global.jbzoo_cart_config.enable": "0",\n	"global.jbzoo_cart_config.is_advance": "0",\n	"global.jbzoo_cart_config.auth": "0",\n	"global.jbzoo_cart_config.submission-id": "",\n	"global.jbzoo_cart_config.type-layout": "",\n	"global.jbzoo_cart_config.currency": "EUR",\n	"global.jbzoo_cart_config.minimal-summa": "",\n	"global.jbzoo_cart_config.notificaction-create": "1",\n	"global.jbzoo_cart_config.notificaction-payment": "1",\n	"global.jbzoo_cart_config.admin-email": "",\n	"global.jbzoo_cart_config.element-useremail": "",\n	"global.jbzoo_cart_config.email-admin-layout": "",\n	"global.jbzoo_cart_config.email-admin-layout-payment": "",\n	"global.jbzoo_cart_config.email-user-layout": "",\n	"global.jbzoo_cart_config.email-user-layout-payment": "",\n	"global.jbzoo_cart_config.nopaid-order": "0",\n	"global.jbzoo_cart_config.payment-enabled": "0",\n	"global.jbzoo_cart_config.robox-enabled": "0",\n	"global.jbzoo_cart_config.robox-debug": "0",\n	"global.jbzoo_cart_config.robox-login": "",\n	"global.jbzoo_cart_config.robox-password1": "",\n	"global.jbzoo_cart_config.robox-password2": "",\n	"global.jbzoo_cart_config.ikassa-enabled": "0",\n	"global.jbzoo_cart_config.ikassa-shopid": "",\n	"global.jbzoo_cart_config.ikassa-key": "",\n	"global.jbzoo_cart_config.manual-enabled": "0",\n	"global.jbzoo_cart_config.manual-title": "",\n	"global.jbzoo_cart_config.manual-text": "",\n	"global.jbzoo_cart_config.manual-message": "",\n	"global.comments.enable_comments": "1",\n	"global.comments.require_name_and_mail": "1",\n	"global.comments.registered_users_only": "0",\n	"global.comments.approved": "0",\n	"global.comments.time_between_user_posts": "120",\n	"global.comments.email_notification": "",\n	"global.comments.email_reply_notification": "0",\n	"global.comments.avatar": "1",\n	"global.comments.order": "ASC",\n	"global.comments.max_depth": "5",\n	"global.comments.facebook_enable": "0",\n	"global.comments.facebook_app_id": "",\n	"global.comments.facebook_app_secret": "",\n	"global.comments.twitter_enable": "0",\n	"global.comments.twitter_consumer_key": "",\n	"global.comments.twitter_consumer_secret": "",\n	"global.comments.akismet_enable": "0",\n	"global.comments.akismet_api_key": "",\n	"global.comments.mollom_enable": "0",\n	"global.comments.mollom_public_key": "",\n	"global.comments.mollom_private_key": "",\n	"global.comments.captcha": "",\n	"global.comments.captcha_guest_only": "1",\n	"global.comments.blacklist": ""\n}'),
(2, 'Адреса и услуги', 'adresa-i-uslugi', 'jbuniversal', '', ' {\n	"group": "jbuniversal",\n	"template": "catalog",\n	"global.config.yoo_support": "0",\n	"global.config.rborder": "0",\n	"global.config.column_heightfix": "0",\n	"global.config.wrap_item_style": "div",\n	"global.config.category_image_height": "150",\n	"global.config.category_image_width": "150",\n	"global.config.show_feed_link": "0",\n	"global.config.feed_title": "",\n	"global.config.alternate_feed_link": "",\n	"global.config.category_teaser_image_height": "50",\n	"global.config.category_teaser_image_width": "50",\n	"global.config.items_per_page": "100",\n	"global.config.item_order":  {\n		"0": "_jbzoo_0_field__none",\n		"1": "_jbzoo_0_mode_s",\n		"2": "_jbzoo_0_order_asc"\n	},\n	"global.config.alpha_index": "0",\n	"global.config.alpha_chars": "0",\n	"global.config.layout_frontpage": "__auto__",\n	"global.config.layout_category": "__auto__",\n	"global.config.layout_subcategory": "cities",\n	"global.config.layout_subcategory_columns": "__auto__",\n	"global.config.layout_subcategories": "__auto__",\n	"global.config.layout_items": "__auto__",\n	"global.config.layout_item_columns": "__auto__",\n	"global.config.layout_alphaindex": "__auto__",\n	"global.config.layout_pagination": "__auto__",\n	"global.config.layout_tag": "__auto__",\n	"global.config.layout_comments": "__auto__",\n	"global.config.layout_comment": "__auto__",\n	"global.config.layout_respond": "__auto__",\n	"global.config.layout_mysubmissions": "__auto__",\n	"global.config.layout_administration": "__auto__",\n	"global.config.layout_submission": "__auto__",\n	"global.config.lastmodified": "1404294443",\n	"global.template.show_alpha_index": "0",\n	"global.template.category_title_show": "1",\n	"global.template.category_show": "1",\n	"global.template.category_subtitle": "1",\n	"global.template.category_teaser_text": "1",\n	"global.template.category_image": "1",\n	"global.template.category_image_align": "left",\n	"global.template.category_text": "1",\n	"global.template.subcategory_show": "1",\n	"global.template.subcategory_teaser_text": "1",\n	"global.template.subcategory_teaser_image": "1",\n	"global.template.subcategory_teaser_image_align": "left",\n	"global.template.subcategory_empty": "1",\n	"global.template.subcategory_cols": "1",\n	"global.template.subcategory_order": "0",\n	"global.template.subcategory_items_count_show": "0",\n	"global.template.subcategory_items_count": "100",\n	"global.template.item_cols": "1",\n	"global.template.item_order": "0",\n	"global.template.item_pagination": "0",\n	"global.template.lastmodified": "1404294443",\n	"global.template.item_full_image_align": "left",\n	"global.template.item_teaser_image_align": "left",\n	"global.template.item_related_image_align": "left",\n	"global.template.item_subcategory_item_image_align": "left",\n	"global.jbzoo_cart_config.enable": "0",\n	"global.jbzoo_cart_config.is_advance": "0",\n	"global.jbzoo_cart_config.auth": "0",\n	"global.jbzoo_cart_config.submission-id": "",\n	"global.jbzoo_cart_config.type-layout": "",\n	"global.jbzoo_cart_config.currency": "EUR",\n	"global.jbzoo_cart_config.minimal-summa": "",\n	"global.jbzoo_cart_config.notificaction-create": "1",\n	"global.jbzoo_cart_config.notificaction-payment": "1",\n	"global.jbzoo_cart_config.admin-email": "",\n	"global.jbzoo_cart_config.element-useremail": "",\n	"global.jbzoo_cart_config.email-admin-layout": "",\n	"global.jbzoo_cart_config.email-admin-layout-payment": "",\n	"global.jbzoo_cart_config.email-user-layout": "",\n	"global.jbzoo_cart_config.email-user-layout-payment": "",\n	"global.jbzoo_cart_config.nopaid-order": "0",\n	"global.jbzoo_cart_config.payment-enabled": "0",\n	"global.jbzoo_cart_config.robox-enabled": "0",\n	"global.jbzoo_cart_config.robox-debug": "0",\n	"global.jbzoo_cart_config.robox-login": "",\n	"global.jbzoo_cart_config.robox-password1": "",\n	"global.jbzoo_cart_config.robox-password2": "",\n	"global.jbzoo_cart_config.ikassa-enabled": "0",\n	"global.jbzoo_cart_config.ikassa-shopid": "",\n	"global.jbzoo_cart_config.ikassa-key": "",\n	"global.jbzoo_cart_config.manual-enabled": "0",\n	"global.jbzoo_cart_config.manual-title": "",\n	"global.jbzoo_cart_config.manual-text": "",\n	"global.jbzoo_cart_config.manual-message": "",\n	"global.comments.enable_comments": "1",\n	"global.comments.require_name_and_mail": "1",\n	"global.comments.registered_users_only": "0",\n	"global.comments.approved": "0",\n	"global.comments.time_between_user_posts": "120",\n	"global.comments.email_notification": "",\n	"global.comments.email_reply_notification": "0",\n	"global.comments.avatar": "1",\n	"global.comments.order": "ASC",\n	"global.comments.max_depth": "5",\n	"global.comments.facebook_enable": "0",\n	"global.comments.facebook_app_id": "",\n	"global.comments.facebook_app_secret": "",\n	"global.comments.twitter_enable": "0",\n	"global.comments.twitter_consumer_key": "",\n	"global.comments.twitter_consumer_secret": "",\n	"global.comments.akismet_enable": "0",\n	"global.comments.akismet_api_key": "",\n	"global.comments.mollom_enable": "0",\n	"global.comments.mollom_public_key": "",\n	"global.comments.mollom_private_key": "",\n	"global.comments.captcha": "",\n	"global.comments.captcha_guest_only": "1",\n	"global.comments.blacklist": ""\n}'),
(3, 'Анализы по разделам', 'analizy-po-razdelam', 'jbuniversal', '', ' {\n	"group": "jbuniversal",\n	"template": "catalog",\n	"global.config.yoo_support": "0",\n	"global.config.rborder": "0",\n	"global.config.column_heightfix": "0",\n	"global.config.wrap_item_style": "div",\n	"global.config.category_image_height": "150",\n	"global.config.category_image_width": "150",\n	"global.config.show_feed_link": "0",\n	"global.config.feed_title": "",\n	"global.config.alternate_feed_link": "",\n	"global.config.category_teaser_image_height": "50",\n	"global.config.category_teaser_image_width": "50",\n	"global.config.items_per_page": "10",\n	"global.config.item_order":  {\n		"0": "_jbzoo_0_field__none",\n		"1": "_jbzoo_0_mode_s",\n		"2": "_jbzoo_0_order_asc"\n	},\n	"global.config.alpha_index": "0",\n	"global.config.alpha_chars": "0",\n	"global.config.layout_frontpage": "__auto__",\n	"global.config.layout_category": "analiz",\n	"global.config.layout_subcategory": "__auto__",\n	"global.config.layout_subcategory_columns": "__auto__",\n	"global.config.layout_subcategories": "analizy_razdely",\n	"global.config.layout_items": "__auto__",\n	"global.config.layout_item_columns": "special",\n	"global.config.layout_alphaindex": "__auto__",\n	"global.config.layout_pagination": "__auto__",\n	"global.config.layout_tag": "__auto__",\n	"global.config.layout_comments": "__auto__",\n	"global.config.layout_comment": "__auto__",\n	"global.config.layout_respond": "__auto__",\n	"global.config.layout_mysubmissions": "__auto__",\n	"global.config.layout_administration": "__auto__",\n	"global.config.layout_submission": "__auto__",\n	"global.config.lastmodified": "1406811960",\n	"global.template.show_alpha_index": "0",\n	"global.template.category_title_show": "1",\n	"global.template.category_show": "1",\n	"global.template.category_subtitle": "1",\n	"global.template.category_teaser_text": "1",\n	"global.template.category_image": "1",\n	"global.template.category_image_align": "left",\n	"global.template.category_text": "1",\n	"global.template.subcategory_show": "1",\n	"global.template.subcategory_teaser_text": "1",\n	"global.template.subcategory_teaser_image": "1",\n	"global.template.subcategory_teaser_image_align": "left",\n	"global.template.subcategory_empty": "0",\n	"global.template.subcategory_cols": "1",\n	"global.template.subcategory_order": "0",\n	"global.template.subcategory_items_count_show": "0",\n	"global.template.subcategory_items_count": "5",\n	"global.template.item_cols": "1",\n	"global.template.item_order": "0",\n	"global.template.item_pagination": "1",\n	"global.template.lastmodified": "1406811960",\n	"global.template.item_full_image_align": "left",\n	"global.template.item_teaser_image_align": "left",\n	"global.template.item_related_image_align": "left",\n	"global.template.item_subcategory_item_image_align": "left",\n	"global.jbzoo_cart_config.enable": "0",\n	"global.jbzoo_cart_config.is_advance": "0",\n	"global.jbzoo_cart_config.auth": "0",\n	"global.jbzoo_cart_config.submission-id": "",\n	"global.jbzoo_cart_config.type-layout": "",\n	"global.jbzoo_cart_config.currency": "EUR",\n	"global.jbzoo_cart_config.minimal-summa": "",\n	"global.jbzoo_cart_config.notificaction-create": "1",\n	"global.jbzoo_cart_config.notificaction-payment": "1",\n	"global.jbzoo_cart_config.admin-email": "",\n	"global.jbzoo_cart_config.email-admin-layout": "",\n	"global.jbzoo_cart_config.email-admin-layout-payment": "",\n	"global.jbzoo_cart_config.email-user-layout": "",\n	"global.jbzoo_cart_config.email-user-layout-payment": "",\n	"global.jbzoo_cart_config.nopaid-order": "0",\n	"global.jbzoo_cart_config.payment-enabled": "0",\n	"global.jbzoo_cart_config.payment-page-success": "",\n	"global.jbzoo_cart_config.payment-page-fail": "",\n	"global.jbzoo_cart_config.paypal-enabled": "0",\n	"global.jbzoo_cart_config.paypal-debug": "0",\n	"global.jbzoo_cart_config.paypal-email": "",\n	"global.jbzoo_cart_config.robox-enabled": "0",\n	"global.jbzoo_cart_config.robox-debug": "0",\n	"global.jbzoo_cart_config.robox-login": "admin",\n	"global.jbzoo_cart_config.robox-password1": "admin",\n	"global.jbzoo_cart_config.robox-password2": "",\n	"global.jbzoo_cart_config.ikassa-enabled": "0",\n	"global.jbzoo_cart_config.ikassa-new": "0",\n	"global.jbzoo_cart_config.ikassa-shopid": "",\n	"global.jbzoo_cart_config.ikassa-key": "",\n	"global.jbzoo_cart_config.ikassa-key-test": "",\n	"global.jbzoo_cart_config.manual-enabled": "0",\n	"global.jbzoo_cart_config.manual-title": "",\n	"global.jbzoo_cart_config.manual-text": "",\n	"global.jbzoo_cart_config.manual-message": "",\n	"global.comments.enable_comments": "0",\n	"global.comments.require_name_and_mail": "0",\n	"global.comments.registered_users_only": "0",\n	"global.comments.approved": "0",\n	"global.comments.time_between_user_posts": "120",\n	"global.comments.email_notification": "",\n	"global.comments.email_reply_notification": "0",\n	"global.comments.avatar": "0",\n	"global.comments.order": "ASC",\n	"global.comments.max_depth": "5",\n	"global.comments.facebook_enable": "0",\n	"global.comments.facebook_app_id": "",\n	"global.comments.facebook_app_secret": "",\n	"global.comments.twitter_enable": "0",\n	"global.comments.twitter_consumer_key": "",\n	"global.comments.twitter_consumer_secret": "",\n	"global.comments.akismet_enable": "0",\n	"global.comments.akismet_api_key": "",\n	"global.comments.mollom_enable": "0",\n	"global.comments.mollom_public_key": "",\n	"global.comments.mollom_private_key": "",\n	"global.comments.captcha": "",\n	"global.comments.captcha_guest_only": "0",\n	"global.comments.blacklist": ""\n}'),
(4, 'Биоматериалы', 'biomaterialy', 'jbuniversal', '', ' {\n	"group": "jbuniversal",\n	"template": "catalog",\n	"global.config.yoo_support": "1",\n	"global.config.rborder": "1",\n	"global.config.column_heightfix": "0",\n	"global.config.wrap_item_style": "div",\n	"global.config.category_image_height": "150",\n	"global.config.category_image_width": "150",\n	"global.config.show_feed_link": "0",\n	"global.config.feed_title": "",\n	"global.config.alternate_feed_link": "",\n	"global.config.category_teaser_image_height": "50",\n	"global.config.category_teaser_image_width": "50",\n	"global.config.items_per_page": "20",\n	"global.config.item_order":  {\n		"0": "_jbzoo_0_field__none",\n		"1": "_jbzoo_0_mode_s",\n		"2": "_jbzoo_0_order_asc"\n	},\n	"global.config.alpha_index": "0",\n	"global.config.alpha_chars": "0",\n	"global.config.layout_frontpage": "__auto__",\n	"global.config.layout_category": "__auto__",\n	"global.config.layout_subcategory": "__auto__",\n	"global.config.layout_subcategory_columns": "__auto__",\n	"global.config.layout_subcategories": "__auto__",\n	"global.config.layout_items": "__auto__",\n	"global.config.layout_item_columns": "__auto__",\n	"global.config.layout_alphaindex": "__auto__",\n	"global.config.layout_pagination": "__auto__",\n	"global.config.layout_tag": "__auto__",\n	"global.config.layout_comments": "__auto__",\n	"global.config.layout_comment": "__auto__",\n	"global.config.layout_respond": "__auto__",\n	"global.config.layout_mysubmissions": "__auto__",\n	"global.config.layout_administration": "__auto__",\n	"global.config.layout_submission": "__auto__",\n	"global.config.lastmodified": "1406718354",\n	"global.jbzoo_cart_config.enable": "0",\n	"global.jbzoo_cart_config.is_advance": "0",\n	"global.jbzoo_cart_config.auth": "0",\n	"global.jbzoo_cart_config.submission-id": "",\n	"global.jbzoo_cart_config.type-layout": "",\n	"global.jbzoo_cart_config.currency": "EUR",\n	"global.jbzoo_cart_config.minimal-summa": "",\n	"global.jbzoo_cart_config.notificaction-create": "1",\n	"global.jbzoo_cart_config.notificaction-payment": "1",\n	"global.jbzoo_cart_config.admin-email": "",\n	"global.jbzoo_cart_config.email-admin-layout": "",\n	"global.jbzoo_cart_config.email-admin-layout-payment": "",\n	"global.jbzoo_cart_config.email-user-layout": "",\n	"global.jbzoo_cart_config.email-user-layout-payment": "",\n	"global.jbzoo_cart_config.nopaid-order": "0",\n	"global.jbzoo_cart_config.payment-enabled": "0",\n	"global.jbzoo_cart_config.robox-enabled": "0",\n	"global.jbzoo_cart_config.robox-debug": "0",\n	"global.jbzoo_cart_config.robox-login": "",\n	"global.jbzoo_cart_config.robox-password1": "",\n	"global.jbzoo_cart_config.robox-password2": "",\n	"global.jbzoo_cart_config.ikassa-enabled": "0",\n	"global.jbzoo_cart_config.ikassa-shopid": "",\n	"global.jbzoo_cart_config.ikassa-key": "",\n	"global.jbzoo_cart_config.manual-enabled": "0",\n	"global.jbzoo_cart_config.manual-title": "",\n	"global.jbzoo_cart_config.manual-text": "",\n	"global.jbzoo_cart_config.manual-message": "",\n	"global.comments.enable_comments": "1",\n	"global.comments.require_name_and_mail": "1",\n	"global.comments.registered_users_only": "0",\n	"global.comments.approved": "0",\n	"global.comments.time_between_user_posts": "120",\n	"global.comments.email_notification": "",\n	"global.comments.email_reply_notification": "0",\n	"global.comments.avatar": "1",\n	"global.comments.order": "ASC",\n	"global.comments.max_depth": "5",\n	"global.comments.facebook_enable": "0",\n	"global.comments.facebook_app_id": "",\n	"global.comments.facebook_app_secret": "",\n	"global.comments.twitter_enable": "0",\n	"global.comments.twitter_consumer_key": "",\n	"global.comments.twitter_consumer_secret": "",\n	"global.comments.akismet_enable": "0",\n	"global.comments.akismet_api_key": "",\n	"global.comments.mollom_enable": "0",\n	"global.comments.mollom_public_key": "",\n	"global.comments.mollom_private_key": "",\n	"global.comments.captcha": "",\n	"global.comments.captcha_guest_only": "1",\n	"global.comments.blacklist": ""\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_category`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISHED_INDEX` (`published`),
  KEY `APPLICATIONID_ID_INDEX` (`application_id`,`published`,`id`),
  KEY `APPLICATIONID_ID_INDEX2` (`application_id`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `y18x3_zoo_category`
--

INSERT INTO `y18x3_zoo_category` (`id`, `application_id`, `name`, `alias`, `description`, `parent`, `ordering`, `published`, `params`) VALUES
(2, 2, 'г. Москва', 'g-moskva', '', 0, 1, 1, ' {\n	"content.category_title": "",\n	"content.category_subtitle": "",\n	"content.category_teaser_text": "\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u044f \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043e\\u0441\\u0442\\u0440\\u043e \\u0432\\u0441\\u0442\\u0430\\u044e\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0433\\u0434\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043e\\u0442\\u043a\\u043b\\u0430\\u0434\\u044b\\u0432\\u0430\\u0442\\u044c \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u043d\\u0435\\u043b\\u044c\\u0437\\u044f. \\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e, \\u0443 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u0430\\u043d\\u043d\\u0438\\u0445 \\u0441\\u0442\\u0430\\u0434\\u0438\\u044f\\u0445 \\u0441\\u0438\\u043c\\u043f\\u0442\\u043e\\u043c\\u044b \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442. \\u0412\\u044b\\u044f\\u0432\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0443 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0438 \\u0438 \\u0432\\u043e\\u0432\\u0440\\u0435\\u043c\\u044f \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0435 \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0412\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u043e\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435. \\u041d\\u0430 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f\\u0448\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0430\\u044f \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0438 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u044b\\u0445 \\u043c\\u0435\\u0442\\u043e\\u0434\\u043e\\u0432 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439. \\u041c\\u0435\\u0442\\u043e\\u0434 \\u0423\\u0417\\u0418 \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0435\\u0434\\u0438\\u0430\\u0442\\u0440\\u0438\\u0438, \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0442\\u0435\\u0440\\u0430\\u043f\\u0438\\u0438, \\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0435\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0433\\u0438\\u043d\\u0435\\u043a\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438, \\u0443\\u0440\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 \\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0431\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u044b \\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430.\\r\\n \\r\\n\\u041b\\u0430\\u0431\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438\\u044f \\u0414\\u041d\\u041a\\u041e\\u041c \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438. \\u0423\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0430\\u044f \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 (\\u0423\\u0417\\u0418) \\u2013 \\u043e\\u0434\\u0438\\u043d \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u044b\\u0445 \\u0438 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u043e\\u0432 \\u0432\\u044b\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u0430\\u043d\\u043d\\u0435\\u0439 \\u0441\\u0442\\u0430\\u0434\\u0438\\u0438. \\u041b\\u0430\\u0431\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438\\u044f \\u0414\\u041d\\u041a\\u041e\\u041c \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438 \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u043e\\u0439 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0438 (\\u0423\\u0417\\u0418) \\u0434\\u043b\\u044f \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430: \\u043c\\u043e\\u0447\\u0435\\u043f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b, \\u0431\\u0440\\u044e\\u0448\\u043d\\u043e\\u0439 \\u043f\\u043e\\u043b\\u043e\\u0441\\u0442\\u0438, \\u0449\\u0438\\u0442\\u043e\\u0432\\u0438\\u0434\\u043d\\u043e\\u0439 \\u0436\\u0435\\u043b\\u0435\\u0437\\u044b, \\u0441\\u0435\\u0440\\u0434\\u0446\\u0430 \\u0438 \\u043c\\u043e\\u043b\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0436\\u0435\\u043b\\u0435\\u0437. \\u0421\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0423\\u0417\\u0418 \\u2013 \\u044d\\u0442\\u043e \\u0442\\u043e\\u0447\\u043d\\u044b\\u0435 \\u043c\\u0435\\u0442\\u043e\\u0434\\u0438\\u043a\\u0438 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e\\u0433\\u043e \\u043e\\u0431\\u043e\\u0440\\u0443\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f, \\u0434\\u043b\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0441 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u043c \\u0432\\u0440\\u0430\\u0447 \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u043e\\u0431\\u043b\\u0430\\u0434\\u0430\\u0442\\u044c \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0439 \\u043a\\u0432\\u0430\\u043b\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u0435\\u0439.",\n	"content.category_image": "",\n	"content.category_image_width": "",\n	"content.category_image_height": "",\n	"content.category_teaser_image": "",\n	"content.category_teaser_image_width": "",\n	"content.category_teaser_image_height": "",\n	"config.lastmodified": "1404284539",\n	"template.lastmodified": "1404284539",\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": ""\n}'),
(43, 3, 'А', 'a', '<p>фвыафывафыва</p>', 0, 1, 1, ' {\n	"content.category_title": "",\n	"content.category_subtitle": "",\n	"content.category_teaser_text": "",\n	"content.category_image": "",\n	"content.category_image_width": "",\n	"content.category_image_height": "",\n	"content.category_teaser_image": "",\n	"content.category_teaser_image_width": "",\n	"content.category_teaser_image_height": "",\n	"config.lastmodified": "1406787535",\n	"template.lastmodified": "1406787536",\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": ""\n}'),
(44, 3, 'Б', 'b', '', 0, 2, 1, ' {\n	"content.category_title": "",\n	"content.category_subtitle": "",\n	"content.category_teaser_text": "",\n	"content.category_image": "",\n	"content.category_image_width": "",\n	"content.category_image_height": "",\n	"content.category_teaser_image": "",\n	"content.category_teaser_image_width": "",\n	"content.category_teaser_image_height": "",\n	"config.lastmodified": "1406713891",\n	"template.lastmodified": "1406713891",\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": ""\n}'),
(45, 3, 'В', 'v', '', 0, 3, 1, ' {\n	"content.category_title": "",\n	"content.category_subtitle": "",\n	"content.category_teaser_text": "",\n	"content.category_image": "",\n	"content.category_image_width": "",\n	"content.category_image_height": "",\n	"content.category_teaser_image": "",\n	"content.category_teaser_image_width": "",\n	"content.category_teaser_image_height": "",\n	"config.lastmodified": "1406713907",\n	"template.lastmodified": "1406713908",\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": ""\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_category_item`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_category_item` (
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `CATEGORYID_INDEX` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_zoo_category_item`
--

INSERT INTO `y18x3_zoo_category_item` (`category_id`, `item_id`) VALUES
(0, 1),
(0, 2),
(0, 4),
(0, 5),
(0, 6),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(43, 7),
(43, 8),
(43, 16),
(44, 9),
(44, 10),
(45, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_comment`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `STATE_INDEX` (`state`),
  KEY `CREATED_INDEX` (`created`),
  KEY `ITEMID_INDEX` (`item_id`),
  KEY `AUTHOR_INDEX` (`author`),
  KEY `ITEMID_STATE_INDEX` (`item_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_item`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `searchable` int(11) NOT NULL,
  `elements` longtext NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`),
  KEY `PUBLISH_INDEX` (`publish_up`,`publish_down`),
  KEY `STATE_INDEX` (`state`),
  KEY `ACCESS_INDEX` (`access`),
  KEY `CREATED_BY_INDEX` (`created_by`),
  KEY `NAME_INDEX` (`name`),
  KEY `APPLICATIONID_INDEX` (`application_id`),
  KEY `TYPE_INDEX` (`type`),
  KEY `MULTI_INDEX` (`application_id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `MULTI_INDEX2` (`id`,`access`,`state`,`publish_up`,`publish_down`),
  KEY `ID_APPLICATION_INDEX` (`id`,`application_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `y18x3_zoo_item`
--

INSERT INTO `y18x3_zoo_item` (`id`, `application_id`, `type`, `name`, `alias`, `created`, `modified`, `modified_by`, `publish_up`, `publish_down`, `priority`, `hits`, `state`, `access`, `created_by`, `created_by_alias`, `searchable`, `elements`, `params`) VALUES
(1, 1, 'znamenitost', 'Почему лучше выбрать нас? Анализы на дому', 'grigorij-leps', '2014-07-01 11:12:51', '2014-07-09 05:30:32', 232, '2014-07-01 11:12:51', '0000-00-00 00:00:00', 0, 16, 1, 1, 232, '', 0, ' {\n	"932429c8-283c-488d-96d4-22a45f1d20f0":  {\n		"0":  {\n			"value": "\\u0413\\u0440\\u0438\\u0433\\u043e\\u0440\\u0438\\u0439 \\u041b\\u0435\\u043f\\u0441"\n		}\n	},\n	"8338b202-ca95-4dd1-9188-d7dc69067393":  {\n		"0":  {\n			"value": "\\u041f\\u0435\\u0432\\u0435\\u0446-\\u043a\\u043e\\u043c\\u043f\\u043e\\u0437\\u0438\\u0442\\u043e\\u0440"\n		}\n	},\n	"bd9b806c-14c8-4745-9419-124375268ca2":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>"\n		}\n	},\n	"2a464b85-53de-4203-bd1c-2c1b323335ac":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u00a0\\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c.\\u00a0<\\/p>\\r\\n<p>\\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>"\n		}\n	},\n	"c0c6c20e-d1c7-4179-92af-a22be67c8230":  {\n		"file": "images\\/gregory.png",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"width": 219,\n		"height": 258\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "0",\n	"config.primary_category": ""\n}'),
(2, 2, 'otdel', 'ОТДЕЛЕНИЕ НА ТВЕРСКОЙ', 'tverskaya', '2014-07-02 07:32:24', '2014-07-08 12:20:02', 232, '2014-07-02 07:32:24', '0000-00-00 00:00:00', 0, 181, 1, 1, 232, '', 0, ' {\n	"f4286dc7-59ef-4d4e-8c75-1929b0700c77":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"fdacf0f7-9194-4fbb-be7b-88a50967e39b":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"e7c0fafd-570c-4941-8ba7-2bdfbdeab594":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab":  {\n		"0":  {\n			"value": "\\u041c. \\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, \\u0443\\u043b. \\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, \\u0434\\u043e\\u043c 6, \\u0441\\u0442\\u0440. 6"\n		}\n	},\n	"488bf866-5f0e-4891-abf0-51181e9c017d":  {\n		"location": "37.606379,55.763923",\n		"width": "",\n		"height": "",\n		"zoom": "",\n		"ballun": "\\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f"\n	},\n	"75b057d6-6c3b-45ae-b5b4-d884df11ca4d":  {\n		"0":  {\n			"file": "images\\/schema-img.jpg",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a24425ff-37dd-43ba-ba39-b48aadd363a8":  {\n		"0":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"1":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"2":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"3":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"4":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a19ecf20-acb1-40d2-804d-8039589a503e":  {\n		"0":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "\\u0421 \\u0423\\u043b\\u0438\\u0446\\u044b \\u043f\\u0440\\u0438\\u0435\\u0445\\u0430\\u0432 \\u043d\\u0430 \\u0430\\u0432\\u0442\\u043e\\u043c\\u043e\\u0431\\u0438\\u043b\\u0435",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"1":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "\\u0421 \\u043c\\u0435\\u0442\\u0440\\u043e \\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"2":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "\\u0421 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u0437\\u0434\\u0430\\u043d\\u0438\\u044f",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"ab25815d-5c6d-4ca4-8c1a-de7832c59817":  {\n		"0":  {\n			"value": "<p>\\u0421\\u0440\\u043e\\u043a \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439\\u00a0\\u043a 14:00 \\u0432 \\u0434\\u0435\\u043d\\u044c \\u043f\\u0440\\u0438\\u0435\\u043c\\u0430 \\u0431\\u0438\\u043e\\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u0430<\\/p>"\n		}\n	},\n	"e2134a2e-a376-4efb-84de-81c2f102342d":  {\n		"0":  {\n			"value": "07:30-08:45"\n		}\n	},\n	"22e514f7-9d6b-4ece-84a4-d199d5cf7a8d":  {\n		"0":  {\n			"value": "07:30-10:00"\n		}\n	},\n	"63ef939e-3112-4dff-94a3-57982163d34f":  {\n		"0":  {\n			"value": "07:30-19:30  \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 18:00"\n		}\n	},\n	"dcb6bed8-992b-4e40-9a98-2e2f3ff40510":  {\n		"0":  {\n			"value": "07:30-14:30 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 12:30"\n		}\n	},\n	"b278bcfa-8167-429a-b3dd-f7fd96e35bfa":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"0c069bdb-0ac3-4879-876d-ba560d588dc4":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"dbdae6b8-9ef8-4ea1-b166-a0da64d8b080":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"b5f81493-7c9b-4f23-aabc-22aa407f5625":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"5e9d3062-bd67-40c2-bb75-ca7f6100a4e8":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u044f \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043e\\u0441\\u0442\\u0440\\u043e \\u0432\\u0441\\u0442\\u0430\\u044e\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0433\\u0434\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043e\\u0442\\u043a\\u043b\\u0430\\u0434\\u044b\\u0432\\u0430\\u0442\\u044c \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u043d\\u0435\\u043b\\u044c\\u0437\\u044f. \\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e, \\u0443 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u0430\\u043d\\u043d\\u0438\\u0445 \\u0441\\u0442\\u0430\\u0434\\u0438\\u044f\\u0445 \\u0441\\u0438\\u043c\\u043f\\u0442\\u043e\\u043c\\u044b \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442. \\u0412\\u044b\\u044f\\u0432\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0443 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0438 \\u0438 \\u0432\\u043e\\u0432\\u0440\\u0435\\u043c\\u044f \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0435 \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0412\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u043e\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435. \\u041d\\u0430 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f\\u0448\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0430\\u044f \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0438 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u044b\\u0445 \\u043c\\u0435\\u0442\\u043e\\u0434\\u043e\\u0432 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439. \\u041c\\u0435\\u0442\\u043e\\u0434 \\u0423\\u0417\\u0418 \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0435\\u0434\\u0438\\u0430\\u0442\\u0440\\u0438\\u0438, \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0442\\u0435\\u0440\\u0430\\u043f\\u0438\\u0438, \\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0435\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0433\\u0438\\u043d\\u0435\\u043a\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438, \\u0443\\u0440\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 \\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0431\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u044b \\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430.<\\/p>"\n		}\n	},\n	"f3c7bd1b-7d39-4b86-a458-421c0654089f":  {\n		"value": "126"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "0",\n	"config.primary_category": "2"\n}'),
(3, 2, 'otdel', 'ОТДЕЛЕНИЕ НА МЕДВЕДКОВО', 'medvedkovo', '2014-07-02 09:43:48', '2014-07-08 12:29:56', 232, '2014-07-02 09:43:48', '0000-00-00 00:00:00', 0, 4, 1, 1, 232, '', 0, ' {\n	"f4286dc7-59ef-4d4e-8c75-1929b0700c77":  {\n		"check": "1"\n	},\n	"fdacf0f7-9194-4fbb-be7b-88a50967e39b":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"e7c0fafd-570c-4941-8ba7-2bdfbdeab594":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab":  {\n		"0":  {\n			"value": "\\u043c.\\u041c\\u0435\\u0434\\u0432\\u0435\\u0434\\u043a\\u043e\\u0432\\u043e, \\u0443\\u043b.\\u0413\\u0440\\u0435\\u043a\\u043e\\u0432\\u0430 \\u0434\\u043e\\u043c 5"\n		}\n	},\n	"488bf866-5f0e-4891-abf0-51181e9c017d":  {\n		"location": "37.66044,55.889371",\n		"width": "",\n		"height": "",\n		"zoom": "",\n		"ballun": ""\n	},\n	"75b057d6-6c3b-45ae-b5b4-d884df11ca4d":  {\n		"0":  {\n			"file": "images\\/schema-img.jpg",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a24425ff-37dd-43ba-ba39-b48aadd363a8":  {\n		"0":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"1":  {\n			"file": "images\\/uzi.png",\n			"title": "",\n			"link": "",\n			"target": "",\n			"rel": ""\n		},\n		"2":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "",\n			"rel": ""\n		},\n		"3":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "",\n			"rel": ""\n		}\n	},\n	"a19ecf20-acb1-40d2-804d-8039589a503e":  {\n		"0":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"ab25815d-5c6d-4ca4-8c1a-de7832c59817":  {\n		"0":  {\n			"value": "<p>\\u0421\\u0440\\u043e\\u043a \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043a 14:00 \\u0432 \\u0434\\u0435\\u043d\\u044c \\u043f\\u0440\\u0438\\u0435\\u043c\\u0430 \\u0431\\u0438\\u043e\\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u0430<\\/p>"\n		}\n	},\n	"e2134a2e-a376-4efb-84de-81c2f102342d":  {\n		"0":  {\n			"value": "07:30-08:45"\n		}\n	},\n	"22e514f7-9d6b-4ece-84a4-d199d5cf7a8d":  {\n		"0":  {\n			"value": "07:30-10:00"\n		}\n	},\n	"63ef939e-3112-4dff-94a3-57982163d34f":  {\n		"0":  {\n			"value": "07:30-19:30  \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 18:00"\n		}\n	},\n	"dcb6bed8-992b-4e40-9a98-2e2f3ff40510":  {\n		"0":  {\n			"value": "07:30-14:30 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 12:30"\n		}\n	},\n	"b278bcfa-8167-429a-b3dd-f7fd96e35bfa":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"0c069bdb-0ac3-4879-876d-ba560d588dc4":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"dbdae6b8-9ef8-4ea1-b166-a0da64d8b080":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"b5f81493-7c9b-4f23-aabc-22aa407f5625":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"5e9d3062-bd67-40c2-bb75-ca7f6100a4e8":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"f3c7bd1b-7d39-4b86-a458-421c0654089f":  {\n		"value": "126"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "0",\n	"config.primary_category": "2"\n}'),
(4, 2, 'otdel', 'ОТДЕЛЕНИЕ НА МЕДВЕДКОВО', 'medvedkovo-2', '2014-07-02 09:45:12', '2014-07-08 12:33:32', 232, '2014-07-02 09:45:12', '0000-00-00 00:00:00', 0, 1, 1, 1, 232, '', 0, ' {\n	"f4286dc7-59ef-4d4e-8c75-1929b0700c77":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"fdacf0f7-9194-4fbb-be7b-88a50967e39b":  {\n		"check": "1"\n	},\n	"e7c0fafd-570c-4941-8ba7-2bdfbdeab594":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab":  {\n		"0":  {\n			"value": "\\u043c.\\u041c\\u0435\\u0434\\u0432\\u0435\\u0434\\u043a\\u043e\\u0432\\u043e, \\u0443\\u043b.\\u0413\\u0440\\u0435\\u043a\\u043e\\u0432\\u0430 \\u0434\\u043e\\u043c 5"\n		}\n	},\n	"488bf866-5f0e-4891-abf0-51181e9c017d":  {\n		"location": "37.27093,55.430447",\n		"width": "",\n		"height": "",\n		"zoom": "",\n		"ballun": ""\n	},\n	"75b057d6-6c3b-45ae-b5b4-d884df11ca4d":  {\n		"0":  {\n			"file": "images\\/schema-img.jpg",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a24425ff-37dd-43ba-ba39-b48aadd363a8":  {\n		"0":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"1":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"2":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a19ecf20-acb1-40d2-804d-8039589a503e":  {\n		"0":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"ab25815d-5c6d-4ca4-8c1a-de7832c59817":  {\n		"0":  {\n			"value": "<p>\\u0421\\u0440\\u043e\\u043a \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043a 14:00 \\u0432 \\u0434\\u0435\\u043d\\u044c \\u043f\\u0440\\u0438\\u0435\\u043c\\u0430 \\u0431\\u0438\\u043e\\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u0430<\\/p>"\n		}\n	},\n	"e2134a2e-a376-4efb-84de-81c2f102342d":  {\n		"0":  {\n			"value": "07:30-08:45"\n		}\n	},\n	"22e514f7-9d6b-4ece-84a4-d199d5cf7a8d":  {\n		"0":  {\n			"value": "07:30-10:00"\n		}\n	},\n	"63ef939e-3112-4dff-94a3-57982163d34f":  {\n		"0":  {\n			"value": "07:30-19:30  \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 18:00"\n		}\n	},\n	"dcb6bed8-992b-4e40-9a98-2e2f3ff40510":  {\n		"0":  {\n			"value": "07:30-14:30 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 12:30"\n		}\n	},\n	"b278bcfa-8167-429a-b3dd-f7fd96e35bfa":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"0c069bdb-0ac3-4879-876d-ba560d588dc4":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"dbdae6b8-9ef8-4ea1-b166-a0da64d8b080":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"b5f81493-7c9b-4f23-aabc-22aa407f5625":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"5e9d3062-bd67-40c2-bb75-ca7f6100a4e8":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u044f \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043e\\u0441\\u0442\\u0440\\u043e \\u0432\\u0441\\u0442\\u0430\\u044e\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0433\\u0434\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043e\\u0442\\u043a\\u043b\\u0430\\u0434\\u044b\\u0432\\u0430\\u0442\\u044c \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u043d\\u0435\\u043b\\u044c\\u0437\\u044f. \\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e, \\u0443 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u0430\\u043d\\u043d\\u0438\\u0445 \\u0441\\u0442\\u0430\\u0434\\u0438\\u044f\\u0445 \\u0441\\u0438\\u043c\\u043f\\u0442\\u043e\\u043c\\u044b \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442. \\u0412\\u044b\\u044f\\u0432\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0443 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0438 \\u0438 \\u0432\\u043e\\u0432\\u0440\\u0435\\u043c\\u044f \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0435 \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0412\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u043e\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435. \\u041d\\u0430 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f\\u0448\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0430\\u044f \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0438 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u044b\\u0445 \\u043c\\u0435\\u0442\\u043e\\u0434\\u043e\\u0432 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439. \\u041c\\u0435\\u0442\\u043e\\u0434 \\u0423\\u0417\\u0418 \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0435\\u0434\\u0438\\u0430\\u0442\\u0440\\u0438\\u0438, \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0442\\u0435\\u0440\\u0430\\u043f\\u0438\\u0438, \\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0435\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0433\\u0438\\u043d\\u0435\\u043a\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438, \\u0443\\u0440\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 \\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0431\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u044b \\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430.<\\/p>"\n		}\n	},\n	"f3c7bd1b-7d39-4b86-a458-421c0654089f":  {\n		"value": "126"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "0",\n	"config.primary_category": "2"\n}'),
(5, 2, 'otdel', 'ОТДЕЛЕНИЕ НА ТВЕРСКОЙ', 'otdelenie-na-tverskoj', '2014-07-08 12:34:02', '2014-07-08 12:36:31', 232, '2014-07-08 12:34:02', '0000-00-00 00:00:00', 0, 0, 1, 1, 232, '', 0, ' {\n	"f4286dc7-59ef-4d4e-8c75-1929b0700c77":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"fdacf0f7-9194-4fbb-be7b-88a50967e39b":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"e7c0fafd-570c-4941-8ba7-2bdfbdeab594":  {\n		"option":  {\n			"0": "da"\n		},\n		"check": "1"\n	},\n	"2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab":  {\n		"0":  {\n			"value": "\\u041c. \\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, \\u0443\\u043b. \\u0422\\u0432\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f, \\u0434\\u043e\\u043c 6, \\u0441\\u0442\\u0440. 6"\n		}\n	},\n	"488bf866-5f0e-4891-abf0-51181e9c017d":  {\n		"location": "37.27093,55.430447",\n		"width": "",\n		"height": "",\n		"zoom": "",\n		"ballun": ""\n	},\n	"75b057d6-6c3b-45ae-b5b4-d884df11ca4d":  {\n		"0":  {\n			"file": "images\\/schema-img.jpg",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a24425ff-37dd-43ba-ba39-b48aadd363a8":  {\n		"0":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"1":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"2":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"3":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		},\n		"4":  {\n			"file": "images\\/slide1.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"a19ecf20-acb1-40d2-804d-8039589a503e":  {\n		"0":  {\n			"file": "images\\/how-to-go-img.png",\n			"title": "",\n			"link": "",\n			"target": "0",\n			"rel": ""\n		}\n	},\n	"ab25815d-5c6d-4ca4-8c1a-de7832c59817":  {\n		"0":  {\n			"value": "<p>\\u0421\\u0440\\u043e\\u043a \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043a 14:00 \\u0432 \\u0434\\u0435\\u043d\\u044c \\u043f\\u0440\\u0438\\u0435\\u043c\\u0430 \\u0431\\u0438\\u043e\\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u0430<\\/p>"\n		}\n	},\n	"e2134a2e-a376-4efb-84de-81c2f102342d":  {\n		"0":  {\n			"value": "07:30-08:45"\n		}\n	},\n	"22e514f7-9d6b-4ece-84a4-d199d5cf7a8d":  {\n		"0":  {\n			"value": "07:30-10:00"\n		}\n	},\n	"63ef939e-3112-4dff-94a3-57982163d34f":  {\n		"0":  {\n			"value": "07:30-19:30  \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 18:00"\n		}\n	},\n	"dcb6bed8-992b-4e40-9a98-2e2f3ff40510":  {\n		"0":  {\n			"value": "07:30-14:30 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 12:30"\n		}\n	},\n	"b278bcfa-8167-429a-b3dd-f7fd96e35bfa":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"0c069bdb-0ac3-4879-876d-ba560d588dc4":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"dbdae6b8-9ef8-4ea1-b166-a0da64d8b080":  {\n		"0":  {\n			"value": "07:30-19:30"\n		}\n	},\n	"b5f81493-7c9b-4f23-aabc-22aa407f5625":  {\n		"0":  {\n			"value": " 07:30-14:30"\n		}\n	},\n	"5e9d3062-bd67-40c2-bb75-ca7f6100a4e8":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b, \\u043a\\u0430\\u0441\\u0430\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u044c\\u044f \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043e\\u0441\\u0442\\u0440\\u043e \\u0432\\u0441\\u0442\\u0430\\u044e\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0433\\u0434\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043e\\u0442\\u043a\\u043b\\u0430\\u0434\\u044b\\u0432\\u0430\\u0442\\u044c \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0443\\u0436\\u0435 \\u043d\\u0435\\u043b\\u044c\\u0437\\u044f. \\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u043e, \\u0443 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439 \\u043d\\u0430 \\u0440\\u0430\\u043d\\u043d\\u0438\\u0445 \\u0441\\u0442\\u0430\\u0434\\u0438\\u044f\\u0445 \\u0441\\u0438\\u043c\\u043f\\u0442\\u043e\\u043c\\u044b \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0442. \\u0412\\u044b\\u044f\\u0432\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0443 \\u0431\\u043e\\u043b\\u0435\\u0437\\u043d\\u0438 \\u0438 \\u0432\\u043e\\u0432\\u0440\\u0435\\u043c\\u044f \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0435 \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0412\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u043e\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435. \\u041d\\u0430 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f\\u0448\\u043d\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0443\\u043b\\u044c\\u0442\\u0440\\u0430\\u0437\\u0432\\u0443\\u043a\\u043e\\u0432\\u0430\\u044f \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u0432\\u043e\\u0441\\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0442\\u043e\\u0447\\u043d\\u044b\\u0445 \\u0438 \\u0431\\u0435\\u0437\\u043e\\u043f\\u0430\\u0441\\u043d\\u044b\\u0445 \\u043c\\u0435\\u0442\\u043e\\u0434\\u043e\\u0432 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u0430 \\u0437\\u0430\\u0431\\u043e\\u043b\\u0435\\u0432\\u0430\\u043d\\u0438\\u0439. \\u041c\\u0435\\u0442\\u043e\\u0434 \\u0423\\u0417\\u0418 \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e \\u043f\\u0440\\u0438\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0435\\u0434\\u0438\\u0430\\u0442\\u0440\\u0438\\u0438, \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0442\\u0435\\u0440\\u0430\\u043f\\u0438\\u0438, \\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0435\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438, \\u0433\\u0438\\u043d\\u0435\\u043a\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438, \\u0443\\u0440\\u043e\\u043b\\u043e\\u0433\\u0438\\u0438 \\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0431\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u044c \\u043c\\u043d\\u043e\\u0433\\u0438\\u0435 \\u043e\\u0440\\u0433\\u0430\\u043d\\u044b \\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430.<\\/p>"\n		}\n	},\n	"f3c7bd1b-7d39-4b86-a458-421c0654089f":  {\n		"value": "126"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "0",\n	"config.primary_category": "2"\n}');
INSERT INTO `y18x3_zoo_item` (`id`, `application_id`, `type`, `name`, `alias`, `created`, `modified`, `modified_by`, `publish_up`, `publish_down`, `priority`, `hits`, `state`, `access`, `created_by`, `created_by_alias`, `searchable`, `elements`, `params`) VALUES
(6, 1, 'znamenitost', 'Почему лучше выбрать нас? Анализы на дому', 'evgen', '2014-07-09 05:11:19', '2014-07-09 05:24:16', 232, '2014-07-09 05:11:19', '0000-00-00 00:00:00', 0, 0, 1, 1, 232, '', 0, ' {\n	"932429c8-283c-488d-96d4-22a45f1d20f0":  {\n		"0":  {\n			"value": "\\u0415\\u0432\\u0433\\u0435\\u043d\\u0438\\u0439 \\u041f\\u043b\\u044e\\u0449\\u0435\\u043d\\u043a\\u043e"\n		}\n	},\n	"8338b202-ca95-4dd1-9188-d7dc69067393":  {\n		"0":  {\n			"value": "\\u0424\\u0438\\u0433\\u0443\\u0440\\u0438\\u0441\\u0442"\n		}\n	},\n	"bd9b806c-14c8-4745-9419-124375268ca2":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>"\n		}\n	},\n	"2a464b85-53de-4203-bd1c-2c1b323335ac":  {\n		"0":  {\n			"value": "<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c.<\\/p>\\r\\n<p>\\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>\\r\\n<p>\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441, \\u0433\\u0434\\u0435 \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b (\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0444\\u0435\\u043a\\u0446\\u0438\\u0438, \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u043d\\u0430 \\u043e\\u043d\\u043a\\u043e\\u043c\\u0430\\u0440\\u043a\\u0435\\u0440\\u044b, \\u043d\\u0430 \\u0433\\u0438\\u0441\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e, \\u043d\\u0430 \\u0446\\u0438\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044e \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0435\\u0435) \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u0443\\u0435\\u0442 \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445. \\u0421\\u043b\\u0435\\u0434\\u0443\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0442\\u043e, \\u0447\\u0442\\u043e \\u043d\\u0435\\u0440\\u0435\\u0434\\u043a\\u043e \\u0441\\u0434\\u0430\\u0442\\u044c \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u044b \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0441\\u0440\\u043e\\u0447\\u043d\\u043e, \\u0437\\u0430 1 \\u0434\\u0435\\u043d\\u044c. \\u0411\\u0435\\u0437\\u0443\\u0441\\u043b\\u043e\\u0432\\u043d\\u043e, \\u0441\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438 \\u0432 \\u043f\\u043e\\u043b\\u0438\\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435 \\u043f\\u043e \\u043c\\u0435\\u0441\\u0442\\u0443 \\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430, \\u043d\\u043e \\u0442\\u043e\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043f\\u043e\\u0434\\u0432\\u0435\\u0440\\u0433\\u043d\\u0443\\u0442\\u044c \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u044e, \\u0434\\u0430 \\u0438 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432 \\u0432 \\u043b\\u0443\\u0447\\u0448\\u0435\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0433\\u043e\\u0442\\u043e\\u0432\\u044f\\u0442\\u0441\\u044f \\u043e\\u0442 3-4 \\u0434\\u043d\\u0435\\u0439 \\u0434\\u043e \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430.<\\/p>\\r\\n<p>\\u0417\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u0435\\u0435 \\u0438 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0435\\u0435 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u044e\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0446\\u0435\\u043d\\u0442\\u0440\\u043e\\u0432.<\\/p>"\n		}\n	},\n	"c0c6c20e-d1c7-4179-92af-a22be67c8230":  {\n		"file": "images\\/gregory2.png",\n		"title": "",\n		"link": "",\n		"target": "0",\n		"rel": "",\n		"width": 220,\n		"height": 258\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "0",\n	"config.primary_category": ""\n}'),
(7, 3, 'analiz', 'Анализ 1', 'analiz-1', '2014-07-30 09:57:47', '2014-08-05 10:07:29', 232, '2014-07-30 09:57:47', '0000-00-00 00:00:00', 0, 391, 1, 1, 232, '', 1, ' {\n	"71453018-f849-4d86-aa92-0b101f4241c9":  {\n		"0":  {\n			"value": "\\u0412\\u043a\\u043b\\u0430\\u0434\\u043a\\u0430 1"\n		}\n	},\n	"5e2c2247-4e6e-4712-8372-041f2ce3d960":  {\n		"0":  {\n			"value": "<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043a\\u043b\\u0430\\u0434\\u043a\\u0438 1<\\/p>"\n		}\n	},\n	"b50e66f7-01cd-4998-aa9e-6ad2807f53bb":  {\n		"0":  {\n			"value": "\\u0412\\u041a\\u041b\\u0410\\u0414\\u041a\\u0410 2"\n		}\n	},\n	"6a02d751-5866-41b1-ba9a-ec32f6403a30":  {\n		"0":  {\n			"value": "<p>222222222222222222<\\/p>"\n		}\n	},\n	"10a10c14-81fe-4a43-ba11-3e246fe6735d":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"ca8d9cf6-df2c-4323-85f0-21d7892b5dc2":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"1e9bb41d-0bef-45dd-aed3-74141a761e46":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"4731ef3f-fdd9-4a12-aab3-875d8d3b7dc2":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"500b153d-951d-4bc2-a5bc-800836f87436":  {\n		"0":  {\n			"value": "50"\n		}\n	},\n	"bf2ac3ce-f1aa-4124-bff6-5813e841db6a":  {\n		"0":  {\n			"value": "\\u043a\\u0440\\u043e\\u0432\\u044c - 170, \\u0434\\u043d\\u043a - 888"\n		}\n	},\n	"c0a63fd1-6651-4710-a6bc-f1e252c7854e":  {\n		"0":  {\n			"value": "888"\n		}\n	},\n	"0cfa4f03-0cd0-4c23-96db-18c61ec1109c":  {\n		"0":  {\n			"value": "6 \\u0434\\u043d\\u0435\\u0439"\n		}\n	},\n	"60e031d8-2508-4d1c-b9f8-cd5b825a7afe":  {\n		"option":  {\n			"0": "rossiya"\n		},\n		"select": "1"\n	},\n	"5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5":  {\n		"0":  {\n			"value": "12.201"\n		}\n	},\n	"64c37046-3921-4c99-a4e8-65952b0f3d76":  {\n		"value": "1"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "43"\n}'),
(8, 3, 'analiz', 'Анализ 2', 'ana', '2014-07-30 09:58:23', '2014-07-31 07:22:09', 232, '2014-07-30 09:58:23', '0000-00-00 00:00:00', 0, 12, 1, 1, 232, '', 1, ' {\n	"605568bf-46a9-4b13-8fde-ce1c13a6ff0f":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"4aa2b6b4-8073-483b-9a17-69e0f3d45f81":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"bf2ac3ce-f1aa-4124-bff6-5813e841db6a":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"c0a63fd1-6651-4710-a6bc-f1e252c7854e":  {\n		"0":  {\n			"value": "550"\n		}\n	},\n	"0cfa4f03-0cd0-4c23-96db-18c61ec1109c":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"60e031d8-2508-4d1c-b9f8-cd5b825a7afe":  {\n		"option":  {\n			"0": "rossiya"\n		},\n		"select": "1"\n	},\n	"192e7d33-95a7-4edc-8091-c9ede09c5228":  {\n		"0":  {\n			"value": "\\u0420\\u0435\\u0430\\u043a\\u0442\\u0438\\u0432 \\u0430\\u043d\\u0430\\u043b\\u0438\\u0437 2"\n		}\n	},\n	"5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5":  {\n		"0":  {\n			"value": "10.201"\n		}\n	},\n	"64c37046-3921-4c99-a4e8-65952b0f3d76":  {\n		"value": "1"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "43"\n}'),
(9, 3, 'analiz', 'Б1', 'b1', '2014-07-30 10:08:58', '2014-07-30 10:09:12', 232, '2014-07-30 10:08:58', '0000-00-00 00:00:00', 0, 0, 1, 1, 232, '', 1, ' {\n	"c0a63fd1-6651-4710-a6bc-f1e252c7854e":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"0cfa4f03-0cd0-4c23-96db-18c61ec1109c":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"60e031d8-2508-4d1c-b9f8-cd5b825a7afe":  {\n		"option":  {\n			"0": ""\n		},\n		"select": "1"\n	},\n	"192e7d33-95a7-4edc-8091-c9ede09c5228":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5":  {\n		"0":  {\n			"value": ""\n		}\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "44"\n}'),
(10, 3, 'analiz', 'Б2', 'b2', '2014-07-30 10:09:24', '2014-07-30 10:09:54', 232, '2014-07-30 10:09:24', '0000-00-00 00:00:00', 0, 1, 1, 1, 232, '', 1, ' {\n	"c0a63fd1-6651-4710-a6bc-f1e252c7854e":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"0cfa4f03-0cd0-4c23-96db-18c61ec1109c":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"60e031d8-2508-4d1c-b9f8-cd5b825a7afe":  {\n		"option":  {\n			"0": ""\n		},\n		"select": "1"\n	},\n	"192e7d33-95a7-4edc-8091-c9ede09c5228":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5":  {\n		"0":  {\n			"value": ""\n		}\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "44"\n}'),
(11, 3, 'analiz', 'В8', 'v8', '2014-07-30 10:10:07', '2014-07-30 10:10:18', 232, '2014-07-30 10:10:07', '0000-00-00 00:00:00', 0, 3, 1, 1, 232, '', 1, ' {\n	"c0a63fd1-6651-4710-a6bc-f1e252c7854e":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"0cfa4f03-0cd0-4c23-96db-18c61ec1109c":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"60e031d8-2508-4d1c-b9f8-cd5b825a7afe":  {\n		"option":  {\n			"0": ""\n		},\n		"select": "1"\n	},\n	"192e7d33-95a7-4edc-8091-c9ede09c5228":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5":  {\n		"0":  {\n			"value": ""\n		}\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "45"\n}'),
(16, 3, 'analiz', 'Анализ 3', 'analiz-3', '2014-07-31 07:23:10', '2014-07-31 07:25:00', 232, '2014-07-31 07:23:10', '0000-00-00 00:00:00', 0, 1, 1, 1, 232, '', 1, ' {\n	"605568bf-46a9-4b13-8fde-ce1c13a6ff0f":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"4aa2b6b4-8073-483b-9a17-69e0f3d45f81":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"bf2ac3ce-f1aa-4124-bff6-5813e841db6a":  {\n		"0":  {\n			"value": "\\u043a\\u0440\\u043e\\u0432\\u044c - 170, \\u0434\\u043d\\u043a - 888"\n		}\n	},\n	"c0a63fd1-6651-4710-a6bc-f1e252c7854e":  {\n		"0":  {\n			"value": "650"\n		}\n	},\n	"0cfa4f03-0cd0-4c23-96db-18c61ec1109c":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"60e031d8-2508-4d1c-b9f8-cd5b825a7afe":  {\n		"option":  {\n			"0": "rossiya"\n		},\n		"select": "1"\n	},\n	"192e7d33-95a7-4edc-8091-c9ede09c5228":  {\n		"0":  {\n			"value": ""\n		}\n	},\n	"5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5":  {\n		"0":  {\n			"value": "10.202"\n		}\n	},\n	"64c37046-3921-4c99-a4e8-65952b0f3d76":  {\n		"value": "1"\n	}\n}', ' {\n	"metadata.title": "",\n	"metadata.description": "",\n	"metadata.keywords": "",\n	"metadata.robots": "",\n	"metadata.author": "",\n	"config.enable_comments": "1",\n	"config.primary_category": "43"\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_config`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(50) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` text,
  `type` varchar(10) DEFAULT 'string',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_key` (`group`,`key`),
  KEY `group` (`group`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_index_analiz`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_index_analiz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL,
  `e_itemtag_s` varchar(50) DEFAULT NULL,
  `e_itemtag_n` double DEFAULT NULL,
  `e_itemfrontpage_n` tinyint(1) NOT NULL DEFAULT '0',
  `e_itemcategory_s` varchar(50) DEFAULT NULL,
  `e_itemcategory_n` double DEFAULT NULL,
  `e_c0a63fd166514710a6bcf1e252c7854e_s` varchar(50) DEFAULT NULL,
  `e_c0a63fd166514710a6bcf1e252c7854e_n` double DEFAULT NULL,
  `e_c0a63fd166514710a6bcf1e252c7854e_d` datetime DEFAULT NULL,
  `e_0cfa4f030cd04c2396db18c61ec1109c_s` varchar(50) DEFAULT NULL,
  `e_0cfa4f030cd04c2396db18c61ec1109c_n` double DEFAULT NULL,
  `e_0cfa4f030cd04c2396db18c61ec1109c_d` datetime DEFAULT NULL,
  `e_60e031d825084d1cb9f8cd5b825a7afe_s` varchar(50) DEFAULT NULL,
  `e_60e031d825084d1cb9f8cd5b825a7afe_n` double DEFAULT NULL,
  `e_60e031d825084d1cb9f8cd5b825a7afe_d` datetime DEFAULT NULL,
  `e_5d8c05c23ef7400dbf7b24b6c713a7e5_s` varchar(50) DEFAULT NULL,
  `e_5d8c05c23ef7400dbf7b24b6c713a7e5_n` double DEFAULT NULL,
  `e_5d8c05c23ef7400dbf7b24b6c713a7e5_d` datetime DEFAULT NULL,
  `e_itemcategory_d` datetime DEFAULT NULL,
  `e_itemfrontpage_s` varchar(50) DEFAULT NULL,
  `e_itemfrontpage_d` datetime DEFAULT NULL,
  `e_itemtag_d` datetime DEFAULT NULL,
  `e_bf2ac3cef1aa4124bff65813e841db6a_s` varchar(50) DEFAULT NULL,
  `e_bf2ac3cef1aa4124bff65813e841db6a_n` double DEFAULT NULL,
  `e_bf2ac3cef1aa4124bff65813e841db6a_d` datetime DEFAULT NULL,
  `e_500b153d951d4bc2a5bc800836f87436_s` varchar(50) DEFAULT NULL,
  `e_500b153d951d4bc2a5bc800836f87436_n` double DEFAULT NULL,
  `e_500b153d951d4bc2a5bc800836f87436_d` datetime DEFAULT NULL,
  `e_1e9bb41d0bef45ddaed374141a761e46_s` varchar(50) DEFAULT NULL,
  `e_1e9bb41d0bef45ddaed374141a761e46_n` double DEFAULT NULL,
  `e_1e9bb41d0bef45ddaed374141a761e46_d` datetime DEFAULT NULL,
  `e_10a10c1481fe4a43ba113e246fe6735d_s` varchar(50) DEFAULT NULL,
  `e_10a10c1481fe4a43ba113e246fe6735d_n` double DEFAULT NULL,
  `e_10a10c1481fe4a43ba113e246fe6735d_d` datetime DEFAULT NULL,
  `e_b50e66f701cd4998aa9e6ad2807f53bb_s` varchar(50) DEFAULT NULL,
  `e_b50e66f701cd4998aa9e6ad2807f53bb_n` double DEFAULT NULL,
  `e_b50e66f701cd4998aa9e6ad2807f53bb_d` datetime DEFAULT NULL,
  `e_71453018f8494d86aa920b101f4241c9_s` varchar(50) DEFAULT NULL,
  `e_71453018f8494d86aa920b101f4241c9_n` double DEFAULT NULL,
  `e_71453018f8494d86aa920b101f4241c9_d` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `e_itemtag_s` (`e_itemtag_s`),
  KEY `e_itemtag_n` (`e_itemtag_n`),
  KEY `e_itemfrontpage_n` (`e_itemfrontpage_n`),
  KEY `e_itemcategory_s` (`e_itemcategory_s`),
  KEY `e_itemcategory_n` (`e_itemcategory_n`),
  KEY `e_c0a63fd166514710a6bcf1e252c7854e_s` (`e_c0a63fd166514710a6bcf1e252c7854e_s`),
  KEY `e_c0a63fd166514710a6bcf1e252c7854e_n` (`e_c0a63fd166514710a6bcf1e252c7854e_n`),
  KEY `e_c0a63fd166514710a6bcf1e252c7854e_d` (`e_c0a63fd166514710a6bcf1e252c7854e_d`),
  KEY `e_0cfa4f030cd04c2396db18c61ec1109c_s` (`e_0cfa4f030cd04c2396db18c61ec1109c_s`),
  KEY `e_0cfa4f030cd04c2396db18c61ec1109c_n` (`e_0cfa4f030cd04c2396db18c61ec1109c_n`),
  KEY `e_0cfa4f030cd04c2396db18c61ec1109c_d` (`e_0cfa4f030cd04c2396db18c61ec1109c_d`),
  KEY `e_60e031d825084d1cb9f8cd5b825a7afe_s` (`e_60e031d825084d1cb9f8cd5b825a7afe_s`),
  KEY `e_60e031d825084d1cb9f8cd5b825a7afe_n` (`e_60e031d825084d1cb9f8cd5b825a7afe_n`),
  KEY `e_60e031d825084d1cb9f8cd5b825a7afe_d` (`e_60e031d825084d1cb9f8cd5b825a7afe_d`),
  KEY `e_5d8c05c23ef7400dbf7b24b6c713a7e5_s` (`e_5d8c05c23ef7400dbf7b24b6c713a7e5_s`),
  KEY `e_5d8c05c23ef7400dbf7b24b6c713a7e5_n` (`e_5d8c05c23ef7400dbf7b24b6c713a7e5_n`),
  KEY `e_5d8c05c23ef7400dbf7b24b6c713a7e5_d` (`e_5d8c05c23ef7400dbf7b24b6c713a7e5_d`),
  KEY `e_itemcategory_d` (`e_itemcategory_d`),
  KEY `e_itemfrontpage_s` (`e_itemfrontpage_s`),
  KEY `e_itemfrontpage_d` (`e_itemfrontpage_d`),
  KEY `e_itemtag_d` (`e_itemtag_d`),
  KEY `e_bf2ac3cef1aa4124bff65813e841db6a_s` (`e_bf2ac3cef1aa4124bff65813e841db6a_s`),
  KEY `e_bf2ac3cef1aa4124bff65813e841db6a_n` (`e_bf2ac3cef1aa4124bff65813e841db6a_n`),
  KEY `e_bf2ac3cef1aa4124bff65813e841db6a_d` (`e_bf2ac3cef1aa4124bff65813e841db6a_d`),
  KEY `e_500b153d951d4bc2a5bc800836f87436_s` (`e_500b153d951d4bc2a5bc800836f87436_s`),
  KEY `e_500b153d951d4bc2a5bc800836f87436_n` (`e_500b153d951d4bc2a5bc800836f87436_n`),
  KEY `e_500b153d951d4bc2a5bc800836f87436_d` (`e_500b153d951d4bc2a5bc800836f87436_d`),
  KEY `e_1e9bb41d0bef45ddaed374141a761e46_s` (`e_1e9bb41d0bef45ddaed374141a761e46_s`),
  KEY `e_1e9bb41d0bef45ddaed374141a761e46_n` (`e_1e9bb41d0bef45ddaed374141a761e46_n`),
  KEY `e_1e9bb41d0bef45ddaed374141a761e46_d` (`e_1e9bb41d0bef45ddaed374141a761e46_d`),
  KEY `e_10a10c1481fe4a43ba113e246fe6735d_s` (`e_10a10c1481fe4a43ba113e246fe6735d_s`),
  KEY `e_10a10c1481fe4a43ba113e246fe6735d_n` (`e_10a10c1481fe4a43ba113e246fe6735d_n`),
  KEY `e_10a10c1481fe4a43ba113e246fe6735d_d` (`e_10a10c1481fe4a43ba113e246fe6735d_d`),
  KEY `e_b50e66f701cd4998aa9e6ad2807f53bb_s` (`e_b50e66f701cd4998aa9e6ad2807f53bb_s`),
  KEY `e_b50e66f701cd4998aa9e6ad2807f53bb_n` (`e_b50e66f701cd4998aa9e6ad2807f53bb_n`),
  KEY `e_b50e66f701cd4998aa9e6ad2807f53bb_d` (`e_b50e66f701cd4998aa9e6ad2807f53bb_d`),
  KEY `e_71453018f8494d86aa920b101f4241c9_s` (`e_71453018f8494d86aa920b101f4241c9_s`),
  KEY `e_71453018f8494d86aa920b101f4241c9_n` (`e_71453018f8494d86aa920b101f4241c9_n`),
  KEY `e_71453018f8494d86aa920b101f4241c9_d` (`e_71453018f8494d86aa920b101f4241c9_d`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `y18x3_zoo_jbzoo_index_analiz`
--

INSERT INTO `y18x3_zoo_jbzoo_index_analiz` (`id`, `item_id`, `e_itemtag_s`, `e_itemtag_n`, `e_itemfrontpage_n`, `e_itemcategory_s`, `e_itemcategory_n`, `e_c0a63fd166514710a6bcf1e252c7854e_s`, `e_c0a63fd166514710a6bcf1e252c7854e_n`, `e_c0a63fd166514710a6bcf1e252c7854e_d`, `e_0cfa4f030cd04c2396db18c61ec1109c_s`, `e_0cfa4f030cd04c2396db18c61ec1109c_n`, `e_0cfa4f030cd04c2396db18c61ec1109c_d`, `e_60e031d825084d1cb9f8cd5b825a7afe_s`, `e_60e031d825084d1cb9f8cd5b825a7afe_n`, `e_60e031d825084d1cb9f8cd5b825a7afe_d`, `e_5d8c05c23ef7400dbf7b24b6c713a7e5_s`, `e_5d8c05c23ef7400dbf7b24b6c713a7e5_n`, `e_5d8c05c23ef7400dbf7b24b6c713a7e5_d`, `e_itemcategory_d`, `e_itemfrontpage_s`, `e_itemfrontpage_d`, `e_itemtag_d`, `e_bf2ac3cef1aa4124bff65813e841db6a_s`, `e_bf2ac3cef1aa4124bff65813e841db6a_n`, `e_bf2ac3cef1aa4124bff65813e841db6a_d`, `e_500b153d951d4bc2a5bc800836f87436_s`, `e_500b153d951d4bc2a5bc800836f87436_n`, `e_500b153d951d4bc2a5bc800836f87436_d`, `e_1e9bb41d0bef45ddaed374141a761e46_s`, `e_1e9bb41d0bef45ddaed374141a761e46_n`, `e_1e9bb41d0bef45ddaed374141a761e46_d`, `e_10a10c1481fe4a43ba113e246fe6735d_s`, `e_10a10c1481fe4a43ba113e246fe6735d_n`, `e_10a10c1481fe4a43ba113e246fe6735d_d`, `e_b50e66f701cd4998aa9e6ad2807f53bb_s`, `e_b50e66f701cd4998aa9e6ad2807f53bb_n`, `e_b50e66f701cd4998aa9e6ad2807f53bb_d`, `e_71453018f8494d86aa920b101f4241c9_s`, `e_71453018f8494d86aa920b101f4241c9_n`, `e_71453018f8494d86aa920b101f4241c9_d`) VALUES
(3, 9, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 10, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 11, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 8, NULL, NULL, 0, 'А', 43, '550', 550, NULL, NULL, NULL, NULL, 'Россия', NULL, NULL, '10.201', 10.201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, NULL, NULL, 0, 'А', 43, '650', 650, NULL, NULL, NULL, NULL, 'Россия', NULL, NULL, '10.202', 10.202, NULL, NULL, NULL, NULL, NULL, 'кровь - 170, днк - 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 7, NULL, NULL, 0, 'А', 43, '888', 888, NULL, '6 дней', 6, NULL, 'Россия', NULL, NULL, '12.201', 12.201, NULL, NULL, NULL, NULL, NULL, 'кровь - 170, днк - 888', NULL, NULL, '50', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ВКЛАДКА 2', NULL, NULL, 'Вкладка 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_index_biomaterial`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_index_biomaterial` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL,
  `e_itemtag_s` varchar(50) DEFAULT NULL,
  `e_itemtag_n` double DEFAULT NULL,
  `e_itemfrontpage_n` tinyint(1) NOT NULL DEFAULT '0',
  `e_itemcategory_s` varchar(50) DEFAULT NULL,
  `e_itemcategory_n` double DEFAULT NULL,
  `e_b4c53deee17c4ecfb482d7045798cfb0_s` varchar(50) DEFAULT NULL,
  `e_b4c53deee17c4ecfb482d7045798cfb0_n` double DEFAULT NULL,
  `e_b4c53deee17c4ecfb482d7045798cfb0_d` datetime DEFAULT NULL,
  `e_itemcategory_d` datetime DEFAULT NULL,
  `e_itemfrontpage_s` varchar(50) DEFAULT NULL,
  `e_itemfrontpage_d` datetime DEFAULT NULL,
  `e_itemtag_d` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `e_itemtag_s` (`e_itemtag_s`),
  KEY `e_itemtag_n` (`e_itemtag_n`),
  KEY `e_itemfrontpage_n` (`e_itemfrontpage_n`),
  KEY `e_itemcategory_s` (`e_itemcategory_s`),
  KEY `e_itemcategory_n` (`e_itemcategory_n`),
  KEY `e_b4c53deee17c4ecfb482d7045798cfb0_s` (`e_b4c53deee17c4ecfb482d7045798cfb0_s`),
  KEY `e_b4c53deee17c4ecfb482d7045798cfb0_n` (`e_b4c53deee17c4ecfb482d7045798cfb0_n`),
  KEY `e_b4c53deee17c4ecfb482d7045798cfb0_d` (`e_b4c53deee17c4ecfb482d7045798cfb0_d`),
  KEY `e_itemcategory_d` (`e_itemcategory_d`),
  KEY `e_itemfrontpage_s` (`e_itemfrontpage_s`),
  KEY `e_itemfrontpage_d` (`e_itemfrontpage_d`),
  KEY `e_itemtag_d` (`e_itemtag_d`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_index_novost`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_index_novost` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL,
  `e_itemtag_s` varchar(50) DEFAULT NULL,
  `e_itemtag_n` double DEFAULT NULL,
  `e_itemfrontpage_n` tinyint(1) NOT NULL DEFAULT '0',
  `e_itemcategory_s` varchar(50) DEFAULT NULL,
  `e_itemcategory_n` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `e_itemtag_s` (`e_itemtag_s`),
  KEY `e_itemtag_n` (`e_itemtag_n`),
  KEY `e_itemfrontpage_n` (`e_itemfrontpage_n`),
  KEY `e_itemcategory_s` (`e_itemcategory_s`),
  KEY `e_itemcategory_n` (`e_itemcategory_n`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_index_otdel`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_index_otdel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL,
  `e_itemtag_s` varchar(50) DEFAULT NULL,
  `e_itemtag_n` double DEFAULT NULL,
  `e_itemfrontpage_n` tinyint(1) NOT NULL DEFAULT '0',
  `e_itemcategory_s` varchar(50) DEFAULT NULL,
  `e_itemcategory_n` double DEFAULT NULL,
  `e_e2134a2ea3764efb84de81c2f102342d_s` varchar(50) DEFAULT NULL,
  `e_e2134a2ea3764efb84de81c2f102342d_n` double DEFAULT NULL,
  `e_e2134a2ea3764efb84de81c2f102342d_d` datetime DEFAULT NULL,
  `e_22e514f79d6b4ece84a4d199d5cf7a8d_s` varchar(50) DEFAULT NULL,
  `e_22e514f79d6b4ece84a4d199d5cf7a8d_n` double DEFAULT NULL,
  `e_22e514f79d6b4ece84a4d199d5cf7a8d_d` datetime DEFAULT NULL,
  `e_488bf8665f0e4891abf051181e9c017d_s` varchar(50) DEFAULT NULL,
  `e_488bf8665f0e4891abf051181e9c017d_n` double DEFAULT NULL,
  `e_488bf8665f0e4891abf051181e9c017d_d` datetime DEFAULT NULL,
  `e_e7c0fafd570c49418ba72bdfbdeab594_s` varchar(50) DEFAULT NULL,
  `e_e7c0fafd570c49418ba72bdfbdeab594_n` double DEFAULT NULL,
  `e_e7c0fafd570c49418ba72bdfbdeab594_d` datetime DEFAULT NULL,
  `e_f4286dc759ef4d4e8c751929b0700c77_s` varchar(50) DEFAULT NULL,
  `e_f4286dc759ef4d4e8c751929b0700c77_n` double DEFAULT NULL,
  `e_f4286dc759ef4d4e8c751929b0700c77_d` datetime DEFAULT NULL,
  `e_fdacf0f791944fbbbe7b88a50967e39b_s` varchar(50) DEFAULT NULL,
  `e_fdacf0f791944fbbbe7b88a50967e39b_n` double DEFAULT NULL,
  `e_fdacf0f791944fbbbe7b88a50967e39b_d` datetime DEFAULT NULL,
  `e_75b057d66c3b45aeb5b4d884df11ca4d_s` varchar(50) DEFAULT NULL,
  `e_75b057d66c3b45aeb5b4d884df11ca4d_n` double DEFAULT NULL,
  `e_75b057d66c3b45aeb5b4d884df11ca4d_d` datetime DEFAULT NULL,
  `e_a24425ff37dd43baba39b48aadd363a8_s` varchar(50) DEFAULT NULL,
  `e_a24425ff37dd43baba39b48aadd363a8_n` double DEFAULT NULL,
  `e_a24425ff37dd43baba39b48aadd363a8_d` datetime DEFAULT NULL,
  `e_a19ecf20acb140d2804d8039589a503e_s` varchar(50) DEFAULT NULL,
  `e_a19ecf20acb140d2804d8039589a503e_n` double DEFAULT NULL,
  `e_a19ecf20acb140d2804d8039589a503e_d` datetime DEFAULT NULL,
  `e_63ef939e31124dff94a357982163d34f_s` varchar(50) DEFAULT NULL,
  `e_63ef939e31124dff94a357982163d34f_n` double DEFAULT NULL,
  `e_63ef939e31124dff94a357982163d34f_d` datetime DEFAULT NULL,
  `e_dcb6bed8992b4e409a982e2f3ff40510_s` varchar(50) DEFAULT NULL,
  `e_dcb6bed8992b4e409a982e2f3ff40510_n` double DEFAULT NULL,
  `e_dcb6bed8992b4e409a982e2f3ff40510_d` datetime DEFAULT NULL,
  `e_b278bcfa8167429ab3ddf7fd96e35bfa_s` varchar(50) DEFAULT NULL,
  `e_b278bcfa8167429ab3ddf7fd96e35bfa_n` double DEFAULT NULL,
  `e_b278bcfa8167429ab3ddf7fd96e35bfa_d` datetime DEFAULT NULL,
  `e_0c069bdb0ac34879876dba560d588dc4_s` varchar(50) DEFAULT NULL,
  `e_0c069bdb0ac34879876dba560d588dc4_n` double DEFAULT NULL,
  `e_0c069bdb0ac34879876dba560d588dc4_d` datetime DEFAULT NULL,
  `e_dbdae6b89ef84ea1b166a0da64d8b080_s` varchar(50) DEFAULT NULL,
  `e_dbdae6b89ef84ea1b166a0da64d8b080_n` double DEFAULT NULL,
  `e_dbdae6b89ef84ea1b166a0da64d8b080_d` datetime DEFAULT NULL,
  `e_b5f814937c9b4f23aabc22aa407f5625_s` varchar(50) DEFAULT NULL,
  `e_b5f814937c9b4f23aabc22aa407f5625_n` double DEFAULT NULL,
  `e_b5f814937c9b4f23aabc22aa407f5625_d` datetime DEFAULT NULL,
  `e_2a45f69ffe4e4fb79c14d23f1434f3ab_s` varchar(50) DEFAULT NULL,
  `e_2a45f69ffe4e4fb79c14d23f1434f3ab_n` double DEFAULT NULL,
  `e_2a45f69ffe4e4fb79c14d23f1434f3ab_d` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `e_itemtag_s` (`e_itemtag_s`),
  KEY `e_itemtag_n` (`e_itemtag_n`),
  KEY `e_itemfrontpage_n` (`e_itemfrontpage_n`),
  KEY `e_itemcategory_s` (`e_itemcategory_s`),
  KEY `e_itemcategory_n` (`e_itemcategory_n`),
  KEY `e_e2134a2ea3764efb84de81c2f102342d_s` (`e_e2134a2ea3764efb84de81c2f102342d_s`),
  KEY `e_e2134a2ea3764efb84de81c2f102342d_n` (`e_e2134a2ea3764efb84de81c2f102342d_n`),
  KEY `e_e2134a2ea3764efb84de81c2f102342d_d` (`e_e2134a2ea3764efb84de81c2f102342d_d`),
  KEY `e_22e514f79d6b4ece84a4d199d5cf7a8d_s` (`e_22e514f79d6b4ece84a4d199d5cf7a8d_s`),
  KEY `e_22e514f79d6b4ece84a4d199d5cf7a8d_n` (`e_22e514f79d6b4ece84a4d199d5cf7a8d_n`),
  KEY `e_22e514f79d6b4ece84a4d199d5cf7a8d_d` (`e_22e514f79d6b4ece84a4d199d5cf7a8d_d`),
  KEY `e_488bf8665f0e4891abf051181e9c017d_s` (`e_488bf8665f0e4891abf051181e9c017d_s`),
  KEY `e_488bf8665f0e4891abf051181e9c017d_n` (`e_488bf8665f0e4891abf051181e9c017d_n`),
  KEY `e_488bf8665f0e4891abf051181e9c017d_d` (`e_488bf8665f0e4891abf051181e9c017d_d`),
  KEY `e_e7c0fafd570c49418ba72bdfbdeab594_s` (`e_e7c0fafd570c49418ba72bdfbdeab594_s`),
  KEY `e_e7c0fafd570c49418ba72bdfbdeab594_n` (`e_e7c0fafd570c49418ba72bdfbdeab594_n`),
  KEY `e_e7c0fafd570c49418ba72bdfbdeab594_d` (`e_e7c0fafd570c49418ba72bdfbdeab594_d`),
  KEY `e_f4286dc759ef4d4e8c751929b0700c77_s` (`e_f4286dc759ef4d4e8c751929b0700c77_s`),
  KEY `e_f4286dc759ef4d4e8c751929b0700c77_n` (`e_f4286dc759ef4d4e8c751929b0700c77_n`),
  KEY `e_f4286dc759ef4d4e8c751929b0700c77_d` (`e_f4286dc759ef4d4e8c751929b0700c77_d`),
  KEY `e_fdacf0f791944fbbbe7b88a50967e39b_s` (`e_fdacf0f791944fbbbe7b88a50967e39b_s`),
  KEY `e_fdacf0f791944fbbbe7b88a50967e39b_n` (`e_fdacf0f791944fbbbe7b88a50967e39b_n`),
  KEY `e_fdacf0f791944fbbbe7b88a50967e39b_d` (`e_fdacf0f791944fbbbe7b88a50967e39b_d`),
  KEY `e_75b057d66c3b45aeb5b4d884df11ca4d_s` (`e_75b057d66c3b45aeb5b4d884df11ca4d_s`),
  KEY `e_75b057d66c3b45aeb5b4d884df11ca4d_n` (`e_75b057d66c3b45aeb5b4d884df11ca4d_n`),
  KEY `e_75b057d66c3b45aeb5b4d884df11ca4d_d` (`e_75b057d66c3b45aeb5b4d884df11ca4d_d`),
  KEY `e_a24425ff37dd43baba39b48aadd363a8_s` (`e_a24425ff37dd43baba39b48aadd363a8_s`),
  KEY `e_a24425ff37dd43baba39b48aadd363a8_n` (`e_a24425ff37dd43baba39b48aadd363a8_n`),
  KEY `e_a24425ff37dd43baba39b48aadd363a8_d` (`e_a24425ff37dd43baba39b48aadd363a8_d`),
  KEY `e_a19ecf20acb140d2804d8039589a503e_s` (`e_a19ecf20acb140d2804d8039589a503e_s`),
  KEY `e_a19ecf20acb140d2804d8039589a503e_n` (`e_a19ecf20acb140d2804d8039589a503e_n`),
  KEY `e_a19ecf20acb140d2804d8039589a503e_d` (`e_a19ecf20acb140d2804d8039589a503e_d`),
  KEY `e_63ef939e31124dff94a357982163d34f_s` (`e_63ef939e31124dff94a357982163d34f_s`),
  KEY `e_63ef939e31124dff94a357982163d34f_n` (`e_63ef939e31124dff94a357982163d34f_n`),
  KEY `e_63ef939e31124dff94a357982163d34f_d` (`e_63ef939e31124dff94a357982163d34f_d`),
  KEY `e_dcb6bed8992b4e409a982e2f3ff40510_s` (`e_dcb6bed8992b4e409a982e2f3ff40510_s`),
  KEY `e_dcb6bed8992b4e409a982e2f3ff40510_n` (`e_dcb6bed8992b4e409a982e2f3ff40510_n`),
  KEY `e_dcb6bed8992b4e409a982e2f3ff40510_d` (`e_dcb6bed8992b4e409a982e2f3ff40510_d`),
  KEY `e_b278bcfa8167429ab3ddf7fd96e35bfa_s` (`e_b278bcfa8167429ab3ddf7fd96e35bfa_s`),
  KEY `e_b278bcfa8167429ab3ddf7fd96e35bfa_n` (`e_b278bcfa8167429ab3ddf7fd96e35bfa_n`),
  KEY `e_b278bcfa8167429ab3ddf7fd96e35bfa_d` (`e_b278bcfa8167429ab3ddf7fd96e35bfa_d`),
  KEY `e_0c069bdb0ac34879876dba560d588dc4_s` (`e_0c069bdb0ac34879876dba560d588dc4_s`),
  KEY `e_0c069bdb0ac34879876dba560d588dc4_n` (`e_0c069bdb0ac34879876dba560d588dc4_n`),
  KEY `e_0c069bdb0ac34879876dba560d588dc4_d` (`e_0c069bdb0ac34879876dba560d588dc4_d`),
  KEY `e_dbdae6b89ef84ea1b166a0da64d8b080_s` (`e_dbdae6b89ef84ea1b166a0da64d8b080_s`),
  KEY `e_dbdae6b89ef84ea1b166a0da64d8b080_n` (`e_dbdae6b89ef84ea1b166a0da64d8b080_n`),
  KEY `e_dbdae6b89ef84ea1b166a0da64d8b080_d` (`e_dbdae6b89ef84ea1b166a0da64d8b080_d`),
  KEY `e_b5f814937c9b4f23aabc22aa407f5625_s` (`e_b5f814937c9b4f23aabc22aa407f5625_s`),
  KEY `e_b5f814937c9b4f23aabc22aa407f5625_n` (`e_b5f814937c9b4f23aabc22aa407f5625_n`),
  KEY `e_b5f814937c9b4f23aabc22aa407f5625_d` (`e_b5f814937c9b4f23aabc22aa407f5625_d`),
  KEY `e_2a45f69ffe4e4fb79c14d23f1434f3ab_s` (`e_2a45f69ffe4e4fb79c14d23f1434f3ab_s`),
  KEY `e_2a45f69ffe4e4fb79c14d23f1434f3ab_n` (`e_2a45f69ffe4e4fb79c14d23f1434f3ab_n`),
  KEY `e_2a45f69ffe4e4fb79c14d23f1434f3ab_d` (`e_2a45f69ffe4e4fb79c14d23f1434f3ab_d`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `y18x3_zoo_jbzoo_index_otdel`
--

INSERT INTO `y18x3_zoo_jbzoo_index_otdel` (`id`, `item_id`, `e_itemtag_s`, `e_itemtag_n`, `e_itemfrontpage_n`, `e_itemcategory_s`, `e_itemcategory_n`, `e_e2134a2ea3764efb84de81c2f102342d_s`, `e_e2134a2ea3764efb84de81c2f102342d_n`, `e_e2134a2ea3764efb84de81c2f102342d_d`, `e_22e514f79d6b4ece84a4d199d5cf7a8d_s`, `e_22e514f79d6b4ece84a4d199d5cf7a8d_n`, `e_22e514f79d6b4ece84a4d199d5cf7a8d_d`, `e_488bf8665f0e4891abf051181e9c017d_s`, `e_488bf8665f0e4891abf051181e9c017d_n`, `e_488bf8665f0e4891abf051181e9c017d_d`, `e_e7c0fafd570c49418ba72bdfbdeab594_s`, `e_e7c0fafd570c49418ba72bdfbdeab594_n`, `e_e7c0fafd570c49418ba72bdfbdeab594_d`, `e_f4286dc759ef4d4e8c751929b0700c77_s`, `e_f4286dc759ef4d4e8c751929b0700c77_n`, `e_f4286dc759ef4d4e8c751929b0700c77_d`, `e_fdacf0f791944fbbbe7b88a50967e39b_s`, `e_fdacf0f791944fbbbe7b88a50967e39b_n`, `e_fdacf0f791944fbbbe7b88a50967e39b_d`, `e_75b057d66c3b45aeb5b4d884df11ca4d_s`, `e_75b057d66c3b45aeb5b4d884df11ca4d_n`, `e_75b057d66c3b45aeb5b4d884df11ca4d_d`, `e_a24425ff37dd43baba39b48aadd363a8_s`, `e_a24425ff37dd43baba39b48aadd363a8_n`, `e_a24425ff37dd43baba39b48aadd363a8_d`, `e_a19ecf20acb140d2804d8039589a503e_s`, `e_a19ecf20acb140d2804d8039589a503e_n`, `e_a19ecf20acb140d2804d8039589a503e_d`, `e_63ef939e31124dff94a357982163d34f_s`, `e_63ef939e31124dff94a357982163d34f_n`, `e_63ef939e31124dff94a357982163d34f_d`, `e_dcb6bed8992b4e409a982e2f3ff40510_s`, `e_dcb6bed8992b4e409a982e2f3ff40510_n`, `e_dcb6bed8992b4e409a982e2f3ff40510_d`, `e_b278bcfa8167429ab3ddf7fd96e35bfa_s`, `e_b278bcfa8167429ab3ddf7fd96e35bfa_n`, `e_b278bcfa8167429ab3ddf7fd96e35bfa_d`, `e_0c069bdb0ac34879876dba560d588dc4_s`, `e_0c069bdb0ac34879876dba560d588dc4_n`, `e_0c069bdb0ac34879876dba560d588dc4_d`, `e_dbdae6b89ef84ea1b166a0da64d8b080_s`, `e_dbdae6b89ef84ea1b166a0da64d8b080_n`, `e_dbdae6b89ef84ea1b166a0da64d8b080_d`, `e_b5f814937c9b4f23aabc22aa407f5625_s`, `e_b5f814937c9b4f23aabc22aa407f5625_n`, `e_b5f814937c9b4f23aabc22aa407f5625_d`, `e_2a45f69ffe4e4fb79c14d23f1434f3ab_s`, `e_2a45f69ffe4e4fb79c14d23f1434f3ab_n`, `e_2a45f69ffe4e4fb79c14d23f1434f3ab_d`) VALUES
(18, 2, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(19, 2, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, 'С метро Тверская', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(20, 2, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(34, 4, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(17, 2, NULL, NULL, 0, 'г. Москва', 2, '07:30-08:45', 7, NULL, '07:30-10:00', 7, NULL, NULL, NULL, NULL, 'Да', NULL, NULL, 'Да', NULL, NULL, 'Да', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, 'С Улицы приехав на автомобиле', NULL, NULL, '07:30-19:30  ограничения после 18:00', 7, NULL, '07:30-14:30 ограничения после 12:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, 'М. Тверская, ул. Тверская, дом 6, стр. 6', NULL, NULL),
(21, 2, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, 'С обратной стороны здания', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(22, 2, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(26, 3, NULL, NULL, 0, 'г. Москва', 2, '07:30-08:45', 7, NULL, '07:30-10:00', 7, NULL, NULL, NULL, NULL, 'Да', NULL, NULL, NULL, NULL, NULL, 'Да', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '07:30-19:30  ограничения после 18:00', 7, NULL, '07:30-14:30 ограничения после 12:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, 'м.Медведково, ул.Грекова дом 5', NULL, NULL),
(27, 3, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(28, 3, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(29, 3, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(33, 4, NULL, NULL, 0, 'г. Москва', 2, '07:30-08:45', 7, NULL, '07:30-10:00', 7, NULL, NULL, NULL, NULL, 'Да', NULL, NULL, 'Да', NULL, NULL, NULL, NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '07:30-19:30  ограничения после 18:00', 7, NULL, '07:30-14:30 ограничения после 12:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, 'м.Медведково, ул.Грекова дом 5', NULL, NULL),
(35, 4, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(42, 5, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(43, 5, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(44, 5, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL),
(41, 5, NULL, NULL, 0, 'г. Москва', 2, '07:30-08:45', 7, NULL, '07:30-10:00', 7, NULL, NULL, NULL, NULL, 'Да', NULL, NULL, 'Да', NULL, NULL, 'Да', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '07:30-19:30  ограничения после 18:00', 7, NULL, '07:30-14:30 ограничения после 12:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, '07:30-19:30', 7, NULL, '07:30-14:30', 7, NULL, 'М. Тверская, ул. Тверская, дом 6, стр. 6', NULL, NULL),
(45, 5, NULL, NULL, 0, '', 0, '', 0, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '__IMAGE_EXISTS__', NULL, NULL, '', NULL, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', 0, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_index_otdel_2`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_index_otdel_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL,
  `e_itemcategory_s` varchar(50) DEFAULT NULL,
  `e_itemcategory_n` double DEFAULT NULL,
  `e_itemtag_s` varchar(50) DEFAULT NULL,
  `e_itemtag_n` double DEFAULT NULL,
  `e_itemfrontpage_n` tinyint(1) NOT NULL DEFAULT '0',
  `e_dc9abe7b8bc84916b2c5d87770d08416_s` varchar(50) DEFAULT NULL,
  `e_dc9abe7b8bc84916b2c5d87770d08416_n` double DEFAULT NULL,
  `e_dc9abe7b8bc84916b2c5d87770d08416_d` datetime DEFAULT NULL,
  `e_e51aca1f39d64e2aaebb2cba5cef52fc_s` varchar(50) DEFAULT NULL,
  `e_e51aca1f39d64e2aaebb2cba5cef52fc_n` double DEFAULT NULL,
  `e_e51aca1f39d64e2aaebb2cba5cef52fc_d` datetime DEFAULT NULL,
  `e_2f4e8ec909b34c45812d08b9af568847_s` varchar(50) DEFAULT NULL,
  `e_2f4e8ec909b34c45812d08b9af568847_n` double DEFAULT NULL,
  `e_2f4e8ec909b34c45812d08b9af568847_d` datetime DEFAULT NULL,
  `e_7ced0571b1d74311acd9e4dda76a4cb6_s` varchar(50) DEFAULT NULL,
  `e_7ced0571b1d74311acd9e4dda76a4cb6_n` double DEFAULT NULL,
  `e_7ced0571b1d74311acd9e4dda76a4cb6_d` datetime DEFAULT NULL,
  `e_d99453d3f8924a05b3031ffa8d4e26df_s` varchar(50) DEFAULT NULL,
  `e_d99453d3f8924a05b3031ffa8d4e26df_n` double DEFAULT NULL,
  `e_d99453d3f8924a05b3031ffa8d4e26df_d` datetime DEFAULT NULL,
  `e_95ab68aeef294d10a82dc2bd78258227_s` varchar(50) DEFAULT NULL,
  `e_95ab68aeef294d10a82dc2bd78258227_n` double DEFAULT NULL,
  `e_95ab68aeef294d10a82dc2bd78258227_d` datetime DEFAULT NULL,
  `e_c2e23d1541c54406b7fa0db873105c78_s` varchar(50) DEFAULT NULL,
  `e_c2e23d1541c54406b7fa0db873105c78_n` double DEFAULT NULL,
  `e_c2e23d1541c54406b7fa0db873105c78_d` datetime DEFAULT NULL,
  `e_2c200017727946dba2fe2ef87b7ac23c_s` varchar(50) DEFAULT NULL,
  `e_2c200017727946dba2fe2ef87b7ac23c_n` double DEFAULT NULL,
  `e_2c200017727946dba2fe2ef87b7ac23c_d` datetime DEFAULT NULL,
  `e_1e680d82aa0940d19c836baf90ceee13_s` varchar(50) DEFAULT NULL,
  `e_1e680d82aa0940d19c836baf90ceee13_n` double DEFAULT NULL,
  `e_1e680d82aa0940d19c836baf90ceee13_d` datetime DEFAULT NULL,
  `e_c1b20e16386940db95b92c8fd0a8649f_s` varchar(50) DEFAULT NULL,
  `e_c1b20e16386940db95b92c8fd0a8649f_n` double DEFAULT NULL,
  `e_c1b20e16386940db95b92c8fd0a8649f_d` datetime DEFAULT NULL,
  `e_2be39cc61214463bb73b76b890c0d614_s` varchar(50) DEFAULT NULL,
  `e_2be39cc61214463bb73b76b890c0d614_n` double DEFAULT NULL,
  `e_2be39cc61214463bb73b76b890c0d614_d` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `e_itemcategory_s` (`e_itemcategory_s`),
  KEY `e_itemcategory_n` (`e_itemcategory_n`),
  KEY `e_itemtag_s` (`e_itemtag_s`),
  KEY `e_itemtag_n` (`e_itemtag_n`),
  KEY `e_itemfrontpage_n` (`e_itemfrontpage_n`),
  KEY `e_dc9abe7b8bc84916b2c5d87770d08416_s` (`e_dc9abe7b8bc84916b2c5d87770d08416_s`),
  KEY `e_dc9abe7b8bc84916b2c5d87770d08416_n` (`e_dc9abe7b8bc84916b2c5d87770d08416_n`),
  KEY `e_dc9abe7b8bc84916b2c5d87770d08416_d` (`e_dc9abe7b8bc84916b2c5d87770d08416_d`),
  KEY `e_e51aca1f39d64e2aaebb2cba5cef52fc_s` (`e_e51aca1f39d64e2aaebb2cba5cef52fc_s`),
  KEY `e_e51aca1f39d64e2aaebb2cba5cef52fc_n` (`e_e51aca1f39d64e2aaebb2cba5cef52fc_n`),
  KEY `e_e51aca1f39d64e2aaebb2cba5cef52fc_d` (`e_e51aca1f39d64e2aaebb2cba5cef52fc_d`),
  KEY `e_2f4e8ec909b34c45812d08b9af568847_s` (`e_2f4e8ec909b34c45812d08b9af568847_s`),
  KEY `e_2f4e8ec909b34c45812d08b9af568847_n` (`e_2f4e8ec909b34c45812d08b9af568847_n`),
  KEY `e_2f4e8ec909b34c45812d08b9af568847_d` (`e_2f4e8ec909b34c45812d08b9af568847_d`),
  KEY `e_7ced0571b1d74311acd9e4dda76a4cb6_s` (`e_7ced0571b1d74311acd9e4dda76a4cb6_s`),
  KEY `e_7ced0571b1d74311acd9e4dda76a4cb6_n` (`e_7ced0571b1d74311acd9e4dda76a4cb6_n`),
  KEY `e_7ced0571b1d74311acd9e4dda76a4cb6_d` (`e_7ced0571b1d74311acd9e4dda76a4cb6_d`),
  KEY `e_d99453d3f8924a05b3031ffa8d4e26df_s` (`e_d99453d3f8924a05b3031ffa8d4e26df_s`),
  KEY `e_d99453d3f8924a05b3031ffa8d4e26df_n` (`e_d99453d3f8924a05b3031ffa8d4e26df_n`),
  KEY `e_d99453d3f8924a05b3031ffa8d4e26df_d` (`e_d99453d3f8924a05b3031ffa8d4e26df_d`),
  KEY `e_95ab68aeef294d10a82dc2bd78258227_s` (`e_95ab68aeef294d10a82dc2bd78258227_s`),
  KEY `e_95ab68aeef294d10a82dc2bd78258227_n` (`e_95ab68aeef294d10a82dc2bd78258227_n`),
  KEY `e_95ab68aeef294d10a82dc2bd78258227_d` (`e_95ab68aeef294d10a82dc2bd78258227_d`),
  KEY `e_c2e23d1541c54406b7fa0db873105c78_s` (`e_c2e23d1541c54406b7fa0db873105c78_s`),
  KEY `e_c2e23d1541c54406b7fa0db873105c78_n` (`e_c2e23d1541c54406b7fa0db873105c78_n`),
  KEY `e_c2e23d1541c54406b7fa0db873105c78_d` (`e_c2e23d1541c54406b7fa0db873105c78_d`),
  KEY `e_2c200017727946dba2fe2ef87b7ac23c_s` (`e_2c200017727946dba2fe2ef87b7ac23c_s`),
  KEY `e_2c200017727946dba2fe2ef87b7ac23c_n` (`e_2c200017727946dba2fe2ef87b7ac23c_n`),
  KEY `e_2c200017727946dba2fe2ef87b7ac23c_d` (`e_2c200017727946dba2fe2ef87b7ac23c_d`),
  KEY `e_1e680d82aa0940d19c836baf90ceee13_s` (`e_1e680d82aa0940d19c836baf90ceee13_s`),
  KEY `e_1e680d82aa0940d19c836baf90ceee13_n` (`e_1e680d82aa0940d19c836baf90ceee13_n`),
  KEY `e_1e680d82aa0940d19c836baf90ceee13_d` (`e_1e680d82aa0940d19c836baf90ceee13_d`),
  KEY `e_c1b20e16386940db95b92c8fd0a8649f_s` (`e_c1b20e16386940db95b92c8fd0a8649f_s`),
  KEY `e_c1b20e16386940db95b92c8fd0a8649f_n` (`e_c1b20e16386940db95b92c8fd0a8649f_n`),
  KEY `e_c1b20e16386940db95b92c8fd0a8649f_d` (`e_c1b20e16386940db95b92c8fd0a8649f_d`),
  KEY `e_2be39cc61214463bb73b76b890c0d614_s` (`e_2be39cc61214463bb73b76b890c0d614_s`),
  KEY `e_2be39cc61214463bb73b76b890c0d614_n` (`e_2be39cc61214463bb73b76b890c0d614_n`),
  KEY `e_2be39cc61214463bb73b76b890c0d614_d` (`e_2be39cc61214463bb73b76b890c0d614_d`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_index_znamenitost`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_index_znamenitost` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL,
  `e_itemtag_s` varchar(50) DEFAULT NULL,
  `e_itemtag_n` double DEFAULT NULL,
  `e_itemfrontpage_n` tinyint(1) NOT NULL DEFAULT '0',
  `e_itemcategory_s` varchar(50) DEFAULT NULL,
  `e_itemcategory_n` double DEFAULT NULL,
  `e_c0c6c20ed1c7417992afa22be67c8230_s` varchar(50) DEFAULT NULL,
  `e_c0c6c20ed1c7417992afa22be67c8230_n` double DEFAULT NULL,
  `e_c0c6c20ed1c7417992afa22be67c8230_d` datetime DEFAULT NULL,
  `e_itemcategory_d` datetime DEFAULT NULL,
  `e_itemfrontpage_s` varchar(50) DEFAULT NULL,
  `e_itemfrontpage_d` datetime DEFAULT NULL,
  `e_itemtag_d` datetime DEFAULT NULL,
  `e_8338b202ca954dd19188d7dc69067393_s` varchar(50) DEFAULT NULL,
  `e_8338b202ca954dd19188d7dc69067393_n` double DEFAULT NULL,
  `e_8338b202ca954dd19188d7dc69067393_d` datetime DEFAULT NULL,
  `e_932429c8283c488d96d422a45f1d20f0_s` varchar(50) DEFAULT NULL,
  `e_932429c8283c488d96d422a45f1d20f0_n` double DEFAULT NULL,
  `e_932429c8283c488d96d422a45f1d20f0_d` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `e_itemtag_s` (`e_itemtag_s`),
  KEY `e_itemtag_n` (`e_itemtag_n`),
  KEY `e_itemfrontpage_n` (`e_itemfrontpage_n`),
  KEY `e_itemcategory_s` (`e_itemcategory_s`),
  KEY `e_itemcategory_n` (`e_itemcategory_n`),
  KEY `e_c0c6c20ed1c7417992afa22be67c8230_s` (`e_c0c6c20ed1c7417992afa22be67c8230_s`),
  KEY `e_c0c6c20ed1c7417992afa22be67c8230_n` (`e_c0c6c20ed1c7417992afa22be67c8230_n`),
  KEY `e_c0c6c20ed1c7417992afa22be67c8230_d` (`e_c0c6c20ed1c7417992afa22be67c8230_d`),
  KEY `e_itemcategory_d` (`e_itemcategory_d`),
  KEY `e_itemfrontpage_s` (`e_itemfrontpage_s`),
  KEY `e_itemfrontpage_d` (`e_itemfrontpage_d`),
  KEY `e_itemtag_d` (`e_itemtag_d`),
  KEY `e_8338b202ca954dd19188d7dc69067393_s` (`e_8338b202ca954dd19188d7dc69067393_s`),
  KEY `e_8338b202ca954dd19188d7dc69067393_n` (`e_8338b202ca954dd19188d7dc69067393_n`),
  KEY `e_8338b202ca954dd19188d7dc69067393_d` (`e_8338b202ca954dd19188d7dc69067393_d`),
  KEY `e_932429c8283c488d96d422a45f1d20f0_s` (`e_932429c8283c488d96d422a45f1d20f0_s`),
  KEY `e_932429c8283c488d96d422a45f1d20f0_n` (`e_932429c8283c488d96d422a45f1d20f0_n`),
  KEY `e_932429c8283c488d96d422a45f1d20f0_d` (`e_932429c8283c488d96d422a45f1d20f0_d`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `y18x3_zoo_jbzoo_index_znamenitost`
--

INSERT INTO `y18x3_zoo_jbzoo_index_znamenitost` (`id`, `item_id`, `e_itemtag_s`, `e_itemtag_n`, `e_itemfrontpage_n`, `e_itemcategory_s`, `e_itemcategory_n`, `e_c0c6c20ed1c7417992afa22be67c8230_s`, `e_c0c6c20ed1c7417992afa22be67c8230_n`, `e_c0c6c20ed1c7417992afa22be67c8230_d`, `e_itemcategory_d`, `e_itemfrontpage_s`, `e_itemfrontpage_d`, `e_itemtag_d`, `e_8338b202ca954dd19188d7dc69067393_s`, `e_8338b202ca954dd19188d7dc69067393_n`, `e_8338b202ca954dd19188d7dc69067393_d`, `e_932429c8283c488d96d422a45f1d20f0_s`, `e_932429c8283c488d96d422a45f1d20f0_n`, `e_932429c8283c488d96d422a45f1d20f0_d`) VALUES
(11, 1, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Певец-композитор', NULL, NULL, 'Григорий Лепс', NULL, NULL),
(10, 6, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Фигурист', NULL, NULL, 'Евгений Плющенко', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_jbzoo_sku`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_jbzoo_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `element_id` varchar(50) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `is_new` tinyint(4) NOT NULL DEFAULT '0',
  `is_hit` tinyint(4) NOT NULL DEFAULT '0',
  `is_sale` tinyint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `total` float NOT NULL,
  `currency` varchar(20) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(150) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `item_id` (`item_id`),
  KEY `type` (`type`),
  KEY `element_id` (`element_id`),
  KEY `price` (`price`),
  KEY `total` (`total`),
  KEY `sku` (`sku`),
  KEY `is_new` (`is_new`),
  KEY `is_hit` (`is_hit`),
  KEY `is_sale` (`is_sale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_rating`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `element_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_search_index`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_search_index` (
  `item_id` int(11) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`item_id`,`element_id`),
  FULLTEXT KEY `SEARCH_FULLTEXT` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_zoo_search_index`
--

INSERT INTO `y18x3_zoo_search_index` (`item_id`, `element_id`, `value`) VALUES
(3, '22e514f7-9d6b-4ece-84a4-d199d5cf7a8d', '07:30-10:00'),
(3, 'ab25815d-5c6d-4ca4-8c1a-de7832c59817', 'Срок выполнения исследований к 14:00 в день приема биоматериала'),
(3, 'e2134a2e-a376-4efb-84de-81c2f102342d', '07:30-08:45'),
(2, 'b5f81493-7c9b-4f23-aabc-22aa407f5625', ' 07:30-14:30'),
(2, '5e9d3062-bd67-40c2-bb75-ca7f6100a4e8', 'Вопросы, касающиеся здоровья всегда остро встают только тогда, когда откладывать лечение уже нельзя. Как правило, у большинства заболеваний на ранних стадиях симптомы отсутствуют. Выявить причину болезни и вовремя начать эффективное лечение, в этом Вам поможет ультразвуковое исследование. На сегодняшний день ультразвуковая диагностика является одним из самых востребованных, точных и безопасных методов исследования большинства заболеваний. Метод УЗИ широко применяется в педиатрии, общей терапии, ведение беременности, гинекологии, урологии и позволяет обследовать многие органы и системы организма.'),
(2, 'dbdae6b8-9ef8-4ea1-b166-a0da64d8b080', '07:30-19:30'),
(2, '0c069bdb-0ac3-4879-876d-ba560d588dc4', ' 07:30-14:30'),
(2, 'b278bcfa-8167-429a-b3dd-f7fd96e35bfa', '07:30-19:30'),
(2, 'dcb6bed8-992b-4e40-9a98-2e2f3ff40510', '07:30-14:30 ограничения после 12:30'),
(2, 'f4286dc7-59ef-4d4e-8c75-1929b0700c77', 'Да'),
(2, 'fdacf0f7-9194-4fbb-be7b-88a50967e39b', 'Да'),
(2, 'e7c0fafd-570c-4941-8ba7-2bdfbdeab594', 'Да'),
(2, '2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab', 'М. Тверская, ул. Тверская, дом 6, стр. 6'),
(2, '75b057d6-6c3b-45ae-b5b4-d884df11ca4d', '\n__IMAGE_EXISTS__'),
(2, 'a24425ff-37dd-43ba-ba39-b48aadd363a8', '\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__'),
(2, 'a19ecf20-acb1-40d2-804d-8039589a503e', 'С Улицы приехав на автомобиле\n__IMAGE_EXISTS__\nС метро Тверская\n__IMAGE_EXISTS__\nС обратной стороны здания\n__IMAGE_EXISTS__'),
(2, 'ab25815d-5c6d-4ca4-8c1a-de7832c59817', 'Срок выполнения исследований к 14:00 в день приема биоматериала'),
(2, 'e2134a2e-a376-4efb-84de-81c2f102342d', '07:30-08:45'),
(2, '22e514f7-9d6b-4ece-84a4-d199d5cf7a8d', '07:30-10:00'),
(2, '63ef939e-3112-4dff-94a3-57982163d34f', '07:30-19:30  ограничения после 18:00'),
(3, 'fdacf0f7-9194-4fbb-be7b-88a50967e39b', 'Да'),
(3, 'e7c0fafd-570c-4941-8ba7-2bdfbdeab594', 'Да'),
(3, '2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab', 'м.Медведково, ул.Грекова дом 5'),
(3, '75b057d6-6c3b-45ae-b5b4-d884df11ca4d', '\n__IMAGE_EXISTS__'),
(3, 'a24425ff-37dd-43ba-ba39-b48aadd363a8', '\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__'),
(3, 'a19ecf20-acb1-40d2-804d-8039589a503e', '\n__IMAGE_EXISTS__'),
(3, '63ef939e-3112-4dff-94a3-57982163d34f', '07:30-19:30  ограничения после 18:00'),
(3, 'dcb6bed8-992b-4e40-9a98-2e2f3ff40510', '07:30-14:30 ограничения после 12:30'),
(3, 'b278bcfa-8167-429a-b3dd-f7fd96e35bfa', '07:30-19:30'),
(3, '0c069bdb-0ac3-4879-876d-ba560d588dc4', ' 07:30-14:30'),
(3, 'dbdae6b8-9ef8-4ea1-b166-a0da64d8b080', '07:30-19:30'),
(3, 'b5f81493-7c9b-4f23-aabc-22aa407f5625', ' 07:30-14:30'),
(4, '5e9d3062-bd67-40c2-bb75-ca7f6100a4e8', 'Вопросы, касающиеся здоровья всегда остро встают только тогда, когда откладывать лечение уже нельзя. Как правило, у большинства заболеваний на ранних стадиях симптомы отсутствуют. Выявить причину болезни и вовремя начать эффективное лечение, в этом Вам поможет ультразвуковое исследование. На сегодняшний день ультразвуковая диагностика является одним из самых востребованных, точных и безопасных методов исследования большинства заболеваний. Метод УЗИ широко применяется в педиатрии, общей терапии, ведение беременности, гинекологии, урологии и позволяет обследовать многие органы и системы организма.'),
(4, 'b5f81493-7c9b-4f23-aabc-22aa407f5625', ' 07:30-14:30'),
(4, 'dbdae6b8-9ef8-4ea1-b166-a0da64d8b080', '07:30-19:30'),
(4, '0c069bdb-0ac3-4879-876d-ba560d588dc4', ' 07:30-14:30'),
(4, 'f4286dc7-59ef-4d4e-8c75-1929b0700c77', 'Да'),
(4, 'e7c0fafd-570c-4941-8ba7-2bdfbdeab594', 'Да'),
(4, '2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab', 'м.Медведково, ул.Грекова дом 5'),
(4, '75b057d6-6c3b-45ae-b5b4-d884df11ca4d', '\n__IMAGE_EXISTS__'),
(4, 'a24425ff-37dd-43ba-ba39-b48aadd363a8', '\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__'),
(4, 'a19ecf20-acb1-40d2-804d-8039589a503e', '\n__IMAGE_EXISTS__'),
(4, 'ab25815d-5c6d-4ca4-8c1a-de7832c59817', 'Срок выполнения исследований к 14:00 в день приема биоматериала'),
(4, 'e2134a2e-a376-4efb-84de-81c2f102342d', '07:30-08:45'),
(4, '22e514f7-9d6b-4ece-84a4-d199d5cf7a8d', '07:30-10:00'),
(4, '63ef939e-3112-4dff-94a3-57982163d34f', '07:30-19:30  ограничения после 18:00'),
(4, 'dcb6bed8-992b-4e40-9a98-2e2f3ff40510', '07:30-14:30 ограничения после 12:30'),
(4, 'b278bcfa-8167-429a-b3dd-f7fd96e35bfa', '07:30-19:30'),
(5, '5e9d3062-bd67-40c2-bb75-ca7f6100a4e8', 'Вопросы, касающиеся здоровья всегда остро встают только тогда, когда откладывать лечение уже нельзя. Как правило, у большинства заболеваний на ранних стадиях симптомы отсутствуют. Выявить причину болезни и вовремя начать эффективное лечение, в этом Вам поможет ультразвуковое исследование. На сегодняшний день ультразвуковая диагностика является одним из самых востребованных, точных и безопасных методов исследования большинства заболеваний. Метод УЗИ широко применяется в педиатрии, общей терапии, ведение беременности, гинекологии, урологии и позволяет обследовать многие органы и системы организма.'),
(5, 'b5f81493-7c9b-4f23-aabc-22aa407f5625', ' 07:30-14:30'),
(5, 'dbdae6b8-9ef8-4ea1-b166-a0da64d8b080', '07:30-19:30'),
(5, 'b278bcfa-8167-429a-b3dd-f7fd96e35bfa', '07:30-19:30'),
(5, '0c069bdb-0ac3-4879-876d-ba560d588dc4', ' 07:30-14:30'),
(5, 'f4286dc7-59ef-4d4e-8c75-1929b0700c77', 'Да'),
(5, 'fdacf0f7-9194-4fbb-be7b-88a50967e39b', 'Да'),
(5, 'e7c0fafd-570c-4941-8ba7-2bdfbdeab594', 'Да'),
(5, '2a45f69f-fe4e-4fb7-9c14-d23f1434f3ab', 'М. Тверская, ул. Тверская, дом 6, стр. 6'),
(5, '75b057d6-6c3b-45ae-b5b4-d884df11ca4d', '\n__IMAGE_EXISTS__'),
(5, 'a24425ff-37dd-43ba-ba39-b48aadd363a8', '\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__\n\n__IMAGE_EXISTS__'),
(5, 'a19ecf20-acb1-40d2-804d-8039589a503e', '\n__IMAGE_EXISTS__'),
(5, 'ab25815d-5c6d-4ca4-8c1a-de7832c59817', 'Срок выполнения исследований к 14:00 в день приема биоматериала'),
(5, 'e2134a2e-a376-4efb-84de-81c2f102342d', '07:30-08:45'),
(5, '22e514f7-9d6b-4ece-84a4-d199d5cf7a8d', '07:30-10:00'),
(5, '63ef939e-3112-4dff-94a3-57982163d34f', '07:30-19:30  ограничения после 18:00'),
(5, 'dcb6bed8-992b-4e40-9a98-2e2f3ff40510', '07:30-14:30 ограничения после 12:30'),
(1, '932429c8-283c-488d-96d4-22a45f1d20f0', 'Григорий Лепс'),
(1, '8338b202-ca95-4dd1-9188-d7dc69067393', 'Певец-композитор'),
(1, 'bd9b806c-14c8-4745-9419-124375268ca2', 'Вопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.'),
(1, '2a464b85-53de-4203-bd1c-2c1b323335ac', 'Вопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.\r\nВопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует  сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. \r\nБезусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.\r\nВопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.\r\nВопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.'),
(6, '932429c8-283c-488d-96d4-22a45f1d20f0', 'Евгений Плющенко'),
(6, '8338b202-ca95-4dd1-9188-d7dc69067393', 'Фигурист'),
(6, 'bd9b806c-14c8-4745-9419-124375268ca2', 'Вопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.'),
(6, '2a464b85-53de-4203-bd1c-2c1b323335ac', 'Вопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.\r\nВопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день.\r\nБезусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.\r\nВопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.\r\nВопрос, где сдать анализы (анализы на различные инфекции, клинические анализы на онкомаркеры, на гистологию, на цитологию и прочее) интересует сегодня многих. Следует отметить и то, что нередко сдать анализы требуется срочно, за 1 день. Безусловно, сдать можно и в поликлинике по месту жительства, но точность таких анализов можно подвергнуть сомнению, да и результаты анализов в лучшем случае бывают готовятся от 3-4 дней до месяца.\r\nЗначительно надёжнее и оперативнее выполняют работу специалисты центров.'),
(7, '5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5', '12.201'),
(7, '71453018-f849-4d86-aa92-0b101f4241c9', 'Вкладка 1'),
(7, '5e2c2247-4e6e-4712-8372-041f2ce3d960', 'Описание вкладки 1'),
(8, 'c0a63fd1-6651-4710-a6bc-f1e252c7854e', '550'),
(8, '60e031d8-2508-4d1c-b9f8-cd5b825a7afe', 'Россия'),
(7, 'c0a63fd1-6651-4710-a6bc-f1e252c7854e', '888'),
(7, '0cfa4f03-0cd0-4c23-96db-18c61ec1109c', '6 дней'),
(7, '60e031d8-2508-4d1c-b9f8-cd5b825a7afe', 'Россия'),
(8, '192e7d33-95a7-4edc-8091-c9ede09c5228', 'Реактив анализ 2'),
(8, '5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5', '10.201'),
(16, '5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5', '10.202'),
(16, '60e031d8-2508-4d1c-b9f8-cd5b825a7afe', 'Россия'),
(16, 'bf2ac3ce-f1aa-4124-bff6-5813e841db6a', 'кровь - 170, днк - 888'),
(16, 'c0a63fd1-6651-4710-a6bc-f1e252c7854e', '650'),
(7, 'bf2ac3ce-f1aa-4124-bff6-5813e841db6a', 'кровь - 170, днк - 888'),
(7, 'b50e66f7-01cd-4998-aa9e-6ad2807f53bb', 'ВКЛАДКА 2'),
(7, '6a02d751-5866-41b1-ba9a-ec32f6403a30', '222222222222222222'),
(7, '500b153d-951d-4bc2-a5bc-800836f87436', '50');

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_submission`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `access` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ALIAS_INDEX` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_tag`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_tag` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`,`name`),
  UNIQUE KEY `NAME_ITEMID_INDEX` (`name`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `y18x3_zoo_version`
--

CREATE TABLE IF NOT EXISTS `y18x3_zoo_version` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `y18x3_zoo_version`
--

INSERT INTO `y18x3_zoo_version` (`version`) VALUES
('3.1.6');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
