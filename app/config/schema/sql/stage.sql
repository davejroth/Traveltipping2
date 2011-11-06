-- phpMyAdmin SQL Dump
-- version 3.3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2011 at 01:53 PM
-- Server version: 5.1.54
-- PHP Version: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stage`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 190),
(2, 1, NULL, NULL, 'Attachments', 2, 13),
(3, 2, NULL, NULL, 'admin_index', 3, 4),
(4, 2, NULL, NULL, 'admin_add', 5, 6),
(5, 2, NULL, NULL, 'admin_edit', 7, 8),
(6, 2, NULL, NULL, 'admin_delete', 9, 10),
(7, 2, NULL, NULL, 'admin_browse', 11, 12),
(8, 1, NULL, NULL, 'DealAvailabilities', 14, 15),
(9, 1, NULL, NULL, 'Deals', 16, 47),
(10, 9, NULL, NULL, 'sendDealMail', 17, 18),
(11, 9, NULL, NULL, 'sendPurchaseMail', 19, 20),
(12, 9, NULL, NULL, 'index', 21, 22),
(13, 9, NULL, NULL, 'view', 23, 24),
(14, 9, NULL, NULL, 'admin_index', 25, 26),
(15, 9, NULL, NULL, 'admin_view', 27, 28),
(16, 9, NULL, NULL, 'admin_add', 29, 30),
(17, 9, NULL, NULL, 'admin_edit', 31, 32),
(18, 9, NULL, NULL, 'admin_delete', 33, 34),
(19, 9, NULL, NULL, 'book', 35, 36),
(20, 9, NULL, NULL, 'purchase', 37, 38),
(21, 9, NULL, NULL, 'confirmation', 39, 40),
(22, 9, NULL, NULL, 'deal_details', 41, 42),
(23, 9, NULL, NULL, 'editAvailabilities', 43, 44),
(24, 9, NULL, NULL, 'editAvailabilitiesCall', 45, 46),
(25, 1, NULL, NULL, 'Merchants', 48, 69),
(26, 25, NULL, NULL, 'sendMerchantMail', 49, 50),
(27, 25, NULL, NULL, 'sendDealMail', 51, 52),
(28, 25, NULL, NULL, 'profile', 53, 54),
(29, 25, NULL, NULL, 'my_deals', 55, 56),
(30, 25, NULL, NULL, 'initiate', 57, 58),
(31, 25, NULL, NULL, 'create_venue', 59, 60),
(32, 25, NULL, NULL, 'reservation_paginate', 61, 62),
(33, 25, NULL, NULL, 'signup', 63, 64),
(34, 25, NULL, NULL, 'reservations', 65, 66),
(35, 25, NULL, NULL, 'approve', 67, 68),
(36, 1, NULL, NULL, 'Pages', 70, 73),
(37, 36, NULL, NULL, 'display', 71, 72),
(38, 1, NULL, NULL, 'Roles', 74, 85),
(39, 38, NULL, NULL, 'admin_index', 75, 76),
(40, 38, NULL, NULL, 'admin_view', 77, 78),
(41, 38, NULL, NULL, 'admin_add', 79, 80),
(42, 38, NULL, NULL, 'admin_edit', 81, 82),
(43, 38, NULL, NULL, 'admin_delete', 83, 84),
(44, 1, NULL, NULL, 'Travelers', 86, 99),
(45, 44, NULL, NULL, 'sendTravelerMail', 87, 88),
(46, 44, NULL, NULL, 'profile', 89, 90),
(47, 44, NULL, NULL, 'signup', 91, 92),
(48, 44, NULL, NULL, 'ajax_signup', 93, 94),
(49, 44, NULL, NULL, 'ajax_sign_in', 95, 96),
(50, 44, NULL, NULL, 'my_deals', 97, 98),
(51, 1, NULL, NULL, 'Users', 100, 131),
(52, 51, NULL, NULL, 'sendForgotPasswordMail', 101, 102),
(53, 51, NULL, NULL, 'loginredirect', 103, 104),
(54, 51, NULL, NULL, 'ajax_logged_in', 105, 106),
(55, 51, NULL, NULL, 'login', 107, 108),
(56, 51, NULL, NULL, 'logout', 109, 110),
(57, 51, NULL, NULL, 'editPassword', 111, 112),
(58, 51, NULL, NULL, 'resetPassword', 113, 114),
(59, 51, NULL, NULL, 'confirmReset', 115, 116),
(60, 51, NULL, NULL, 'resendPassword', 117, 118),
(61, 51, NULL, NULL, 'newPassword', 119, 120),
(62, 51, NULL, NULL, 'admin_index', 121, 122),
(63, 51, NULL, NULL, 'admin_view', 123, 124),
(64, 51, NULL, NULL, 'admin_add', 125, 126),
(65, 51, NULL, NULL, 'admin_edit', 127, 128),
(66, 51, NULL, NULL, 'admin_delete', 129, 130),
(67, 1, NULL, NULL, 'Venues', 132, 133),
(68, 1, NULL, NULL, 'Acl', 134, 179),
(69, 68, NULL, NULL, 'Acos', 135, 142),
(70, 69, NULL, NULL, 'admin_index', 136, 137),
(71, 69, NULL, NULL, 'admin_empty_acos', 138, 139),
(72, 69, NULL, NULL, 'admin_build_acl', 140, 141),
(73, 68, NULL, NULL, 'Aros', 143, 178),
(74, 73, NULL, NULL, 'admin_index', 144, 145),
(75, 73, NULL, NULL, 'admin_check', 146, 147),
(76, 73, NULL, NULL, 'admin_users', 148, 149),
(77, 73, NULL, NULL, 'admin_update_user_role', 150, 151),
(78, 73, NULL, NULL, 'admin_ajax_role_permissions', 152, 153),
(79, 73, NULL, NULL, 'admin_role_permissions', 154, 155),
(80, 73, NULL, NULL, 'admin_user_permissions', 156, 157),
(81, 73, NULL, NULL, 'admin_empty_permissions', 158, 159),
(82, 73, NULL, NULL, 'admin_clear_user_specific_permissions', 160, 161),
(83, 73, NULL, NULL, 'admin_grant_all_controllers', 162, 163),
(84, 73, NULL, NULL, 'admin_deny_all_controllers', 164, 165),
(85, 73, NULL, NULL, 'admin_get_role_controller_permission', 166, 167),
(86, 73, NULL, NULL, 'admin_grant_role_permission', 168, 169),
(87, 73, NULL, NULL, 'admin_deny_role_permission', 170, 171),
(88, 73, NULL, NULL, 'admin_get_user_controller_permission', 172, 173),
(89, 73, NULL, NULL, 'admin_grant_user_permission', 174, 175),
(90, 73, NULL, NULL, 'admin_deny_user_permission', 176, 177),
(91, 1, NULL, NULL, 'AssetCompress', 180, 189),
(92, 91, NULL, NULL, 'CssFiles', 181, 184),
(93, 92, NULL, NULL, 'get', 182, 183),
(94, 91, NULL, NULL, 'JsFiles', 185, 188),
(95, 94, NULL, NULL, 'get', 186, 187);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, 'Admin', 1, 4),
(2, NULL, 'Role', 5, 'Merchant', 5, 24),
(3, NULL, 'Role', 6, 'Traveler', 25, 82),
(4, 1, 'User', 20, 'admin@tt.com', 2, 3),
(5, 3, 'User', 27, 'ajax@tt.com', 26, 27),
(6, 3, 'User', 28, 'ajax2@tt.com', 28, 29),
(7, 3, 'User', 31, 'ajax3@tt.com', 30, 31),
(8, 3, 'User', 32, 'ajax4@tt.com', 32, 33),
(9, 3, 'User', 33, 'ajax5@tt.com', 34, 35),
(10, 3, 'User', 35, 'briamh@tt.com', 36, 37),
(11, 2, 'User', 44, 'dave@traveltipping.com', 6, 7),
(12, 2, 'User', 51, 'davejroth@gmail.com', 8, 9),
(13, 2, 'User', 24, 'merchant@tt.com', 10, 11),
(14, 2, 'User', 26, 'merchant2@tt.com', 12, 13),
(15, 3, 'User', 52, 'mr.roth.school@gmail.com', 38, 39),
(16, 3, 'User', 29, 'redirect@tt.com', 40, 41),
(17, 3, 'User', 30, 'test2@tt.com', 42, 43),
(18, 3, 'User', 34, 'test6@tt.com', 44, 45),
(19, 2, 'User', 50, 'tester@test.com', 14, 15),
(20, 3, 'User', 22, 'traveler@tt.com', 46, 47),
(21, 3, 'User', 37, '', 48, 49),
(22, 3, 'User', 38, '', 50, 51),
(23, 3, 'User', 39, '', 52, 53),
(24, 3, 'User', 41, '2jlk2@tt.com', 54, 55),
(25, 3, 'User', 36, '99@tt.com', 56, 57),
(26, 3, 'User', 45, 'abc@yahoo.com', 58, 59),
(27, 2, 'User', 57, 'asdf@asdf.com', 16, 17),
(28, 3, 'User', 59, 'careers@traveltipping.com', 60, 61),
(29, 2, 'User', 47, 'dave@traveltipping.com', 18, 19),
(30, 3, 'User', 40, 'jkl@tt.com', 62, 63),
(31, 3, 'User', 42, 'jklajklz@tt.com', 64, 65),
(32, 2, 'User', 61, 'mr.roth.school@gmail.com', 20, 21),
(33, 3, 'User', 46, 'ndrew@yahoo.com', 66, 67),
(34, 2, 'User', 60, 'press@traveltipping.com', 22, 23),
(35, 3, 'User', 49, 'scott@traveltipping.com', 68, 69),
(36, NULL, 'User', 48, 'swblank10@hotmail.com', 85, 86),
(37, 3, 'User', 55, 'testing@traveltipping.com', 70, 71),
(38, 3, 'User', 53, 'testing@tt.com', 72, 73),
(39, 3, 'User', 54, 'testing1@traveltipping.com', 74, 75),
(40, 3, 'User', 56, 'testing1@tt.com', 76, 77),
(41, 3, 'User', 58, 'testing2@traveltipping.com', 78, 79),
(42, 3, 'User', 43, 'tttt@tt.com', 80, 81),
(43, NULL, 'User', 62, 'swblankenship@traveltipping.com', 83, 84);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(8, 1, 1, '1', '1', '1', '1'),
(9, 3, 19, '1', '1', '1', '1'),
(10, 2, 19, '1', '1', '1', '1'),
(11, 3, 21, '1', '1', '1', '1'),
(12, 2, 22, '1', '1', '1', '1'),
(13, 3, 22, '1', '1', '1', '1'),
(14, 2, 23, '1', '1', '1', '1'),
(15, 2, 24, '1', '1', '1', '1'),
(16, 3, 12, '1', '1', '1', '1'),
(17, 2, 12, '1', '1', '1', '1'),
(18, 2, 20, '1', '1', '1', '1'),
(19, 3, 20, '1', '1', '1', '1'),
(20, 2, 10, '1', '1', '1', '1'),
(21, 2, 11, '1', '1', '1', '1'),
(22, 2, 13, '1', '1', '1', '1'),
(23, 3, 13, '1', '1', '1', '1'),
(24, 3, 11, '1', '1', '1', '1'),
(25, 2, 35, '1', '1', '1', '1'),
(26, 2, 31, '1', '1', '1', '1'),
(27, 2, 30, '1', '1', '1', '1'),
(28, 2, 29, '1', '1', '1', '1'),
(29, 2, 28, '1', '1', '1', '1'),
(30, 2, 32, '1', '1', '1', '1'),
(31, 2, 34, '1', '1', '1', '1'),
(32, 2, 27, '1', '1', '1', '1'),
(33, 2, 26, '1', '1', '1', '1'),
(34, 2, 37, '1', '1', '1', '1'),
(35, 3, 37, '1', '1', '1', '1'),
(36, 3, 49, '-1', '-1', '-1', '-1'),
(37, 3, 48, '-1', '-1', '-1', '-1'),
(38, 3, 50, '1', '1', '1', '1'),
(39, 3, 46, '1', '1', '1', '1'),
(40, 3, 45, '1', '1', '1', '1'),
(41, 3, 47, '1', '1', '1', '1'),
(42, 2, 57, '1', '1', '1', '1'),
(43, 3, 57, '1', '1', '1', '1'),
(44, 2, 56, '1', '1', '1', '1'),
(45, 3, 56, '1', '1', '1', '1'),
(46, 2, 53, '1', '1', '1', '1'),
(47, 3, 53, '1', '1', '1', '1'),
(48, 3, 54, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE IF NOT EXISTS `business_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `created`, `modified`, `name`) VALUES
(1, '2011-06-12 13:50:55', '2011-06-12 13:50:55', 'Tours'),
(2, '2011-06-12 13:51:21', '2011-06-12 13:51:21', 'Lodging & Accomodations'),
(3, '2011-06-12 13:51:32', '2011-06-12 13:51:32', 'Cruises');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created`, `modified`, `name`) VALUES
(1, '2011-04-13 08:29:16', '2011-04-13 08:29:16', 'Wine Tasting'),
(2, '2011-04-13 08:31:22', '2011-04-13 08:31:22', 'Summer'),
(3, '2011-04-13 08:31:30', '2011-04-13 08:31:30', 'Rural'),
(4, '2011-04-13 08:31:42', '2011-04-13 08:31:42', 'Urban');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created`, `modified`, `name`, `state_id`) VALUES
(1, '2011-04-11 21:54:12', '2011-04-11 21:54:12', 'San Francisco', 1),
(2, '2011-04-11 21:54:22', '2011-04-11 21:54:22', 'Oakland', 1),
(3, '2011-04-11 21:55:51', '2011-04-11 21:55:51', 'San Cristobal de las Casas', 4),
(4, '2011-04-11 21:56:15', '2011-04-11 21:56:15', 'Palenque', 4),
(5, '2011-04-11 22:22:54', '2011-04-11 22:22:54', 'Quebec', 5);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=230 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `created`, `modified`, `name`) VALUES
(1, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'United States'),
(2, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Afghanistan'),
(3, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Albania'),
(4, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Algeria'),
(5, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'American Samoa'),
(6, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Andorra'),
(7, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Angola'),
(8, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Anguilla'),
(9, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Antigua and Barbuda'),
(10, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Argentina'),
(11, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Armenia'),
(12, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Aruba'),
(13, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Australia'),
(14, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Austria'),
(15, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Azerbaijan'),
(16, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bahamas'),
(17, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bahrain'),
(18, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bangladesh'),
(19, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Barbados'),
(20, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Belarus'),
(21, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Belgium'),
(22, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Belize'),
(23, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Benin'),
(24, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bermuda'),
(25, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bhutan'),
(26, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bolivia'),
(27, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bosnia'),
(28, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Botswana'),
(29, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Brazil'),
(30, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Brunei'),
(31, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Bulgaria'),
(32, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Burkina Faso'),
(33, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Burundi'),
(34, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Cambodia'),
(35, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Cameroon'),
(36, '2011-06-26 15:57:14', '2011-06-26 15:57:14', 'Canada'),
(37, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Cape Verde'),
(38, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Cayman Islands'),
(39, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Central African Republic'),
(40, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Chad'),
(41, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Chile'),
(42, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'China'),
(43, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Christmas Island'),
(44, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Cocos Keeling Islands'),
(45, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Colombia'),
(46, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Comoros'),
(47, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Congo, Republic of'),
(48, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Cook Islands'),
(49, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Costa Rica'),
(50, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Croatia'),
(51, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Cuba'),
(52, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Cyprus'),
(53, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Czech Republic'),
(54, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Denmark'),
(55, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Djibouti'),
(56, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Dominica'),
(57, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Dominican Republic'),
(58, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'East Timor'),
(59, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Ecuador'),
(60, '2011-06-26 15:57:15', '2011-06-26 15:57:15', 'Egypt'),
(61, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'El Salvador'),
(62, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Equatorial Guinea'),
(63, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Eritrea'),
(64, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Estonia'),
(65, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Ethiopia'),
(66, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Falkland Islands'),
(67, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Faroe Islands'),
(68, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Fiji'),
(69, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Finland'),
(70, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'France'),
(71, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'French Guiana'),
(72, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'French Polynesia'),
(73, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Gabon'),
(74, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Gambia'),
(75, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Georgia'),
(76, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Germany'),
(77, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Ghana'),
(78, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Gibraltar'),
(79, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Greece'),
(80, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Greenland'),
(81, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Grenada'),
(82, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Guadeloupe / French West Indies'),
(83, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Guam'),
(84, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Guatemala'),
(85, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Guinea'),
(86, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Guinea Bissau'),
(87, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Guyana'),
(88, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Haiti'),
(89, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Honduras'),
(90, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Hong Kong'),
(91, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Hungary'),
(92, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Iceland'),
(93, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'India'),
(94, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Indonesia'),
(95, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Iran'),
(96, '2011-06-26 15:57:16', '2011-06-26 15:57:16', 'Iraq'),
(97, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Ireland'),
(98, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Israel'),
(99, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Italy'),
(100, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Ivory Coast'),
(101, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Jamaica'),
(102, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Japan'),
(103, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Jordan'),
(104, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Kazakhstan'),
(105, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Kenya'),
(106, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Kiribati'),
(107, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Kuwait'),
(108, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Kyrgyzstan'),
(109, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Laos'),
(110, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Latvia'),
(111, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Lebanon'),
(112, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Lesotho'),
(113, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Liberia'),
(114, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Libya'),
(115, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Liechtenstein'),
(116, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Lithuania'),
(117, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Luxembourg'),
(118, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Macau'),
(119, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Macedonia'),
(120, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Madagascar'),
(121, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Malawi'),
(122, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Malaysia'),
(123, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Maldives'),
(124, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Mali'),
(125, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Malta'),
(126, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Marshall Islands'),
(127, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Martinique'),
(128, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Mauritania'),
(129, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Mauritius'),
(130, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Mexico'),
(131, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Micronesia'),
(132, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Moldova'),
(133, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Monaco'),
(134, '2011-06-26 15:57:17', '2011-06-26 15:57:17', 'Mongolia'),
(135, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Montenegro'),
(136, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Montserrat'),
(137, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Morocco'),
(138, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Mozambique'),
(139, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Myanmar'),
(140, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Namibia'),
(141, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Nauru'),
(142, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Nepal'),
(143, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Netherlands'),
(144, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Netherlands Antilles'),
(145, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'New Caledonia'),
(146, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'New Zealand'),
(147, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Nicaragua'),
(148, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Niger'),
(149, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Nigeria'),
(150, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Niue'),
(151, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Norfolk Island'),
(152, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'North Korea'),
(153, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Northern Mariana Islands'),
(154, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Norway'),
(155, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Oman'),
(156, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Pakistan'),
(157, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Palau'),
(158, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Panama'),
(159, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Papua New Guinea'),
(160, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Paraguay'),
(161, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Peru'),
(162, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Philippines'),
(163, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Pitcairn Island'),
(164, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Poland'),
(165, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Portugal'),
(166, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Puerto Rico'),
(167, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Qatar'),
(168, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Reunion'),
(169, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Romania'),
(170, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Russia'),
(171, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Rwanda'),
(172, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Saint Helena'),
(173, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Saint Kitts and Nevis'),
(174, '2011-06-26 15:57:18', '2011-06-26 15:57:18', 'Saint Lucia'),
(175, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Saint Pierre and Miquelon'),
(176, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Saint Vincent and Grenadines'),
(177, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Samoa'),
(178, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'San Marino'),
(179, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Sao Tome and Principe'),
(180, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Saudi Arabia'),
(181, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Senegal'),
(182, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Serbia'),
(183, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Seychelles'),
(184, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Sierra Leone'),
(185, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Singapore'),
(186, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Slovakia'),
(187, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Slovenia'),
(188, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Solomon Islands'),
(189, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Somalia'),
(190, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'South Africa'),
(191, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'South Korea'),
(192, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Spain'),
(193, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Sri Lanka'),
(194, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Sudan'),
(195, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Suriname'),
(196, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Swaziland'),
(197, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Sweden'),
(198, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Switzerland'),
(199, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Syria'),
(200, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Taiwan'),
(201, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Tajikistan'),
(202, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Tanzania'),
(203, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Thailand'),
(204, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Togo'),
(205, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Tokelau'),
(206, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Tonga'),
(207, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Trinidad and Tobago'),
(208, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Tunisia'),
(209, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Turkey'),
(210, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Turkmenistan'),
(211, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Turks and Caicos Islands'),
(212, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Tuvalu'),
(213, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Uganda'),
(214, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'Ukraine'),
(215, '2011-06-26 15:57:19', '2011-06-26 15:57:19', 'United Arab Emirates'),
(216, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'United Kingdom'),
(217, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'United States'),
(218, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Uruguay'),
(219, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'US Minor Outlying Islands'),
(220, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Uzbekistan'),
(221, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Vanuatu'),
(222, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Venezuela'),
(223, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Vietnam'),
(224, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Virgin Islands'),
(225, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Wallis and Futuna Islands'),
(226, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Yemen'),
(227, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Zaire'),
(228, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Zambia'),
(229, '2011-06-26 15:57:20', '2011-06-26 15:57:20', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE IF NOT EXISTS `deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fine_print` text COLLATE utf8_unicode_ci,
  `highlights` text COLLATE utf8_unicode_ci,
  `venue_info` text COLLATE utf8_unicode_ci,
  `getting_there` text COLLATE utf8_unicode_ci,
  `things_to_do` text COLLATE utf8_unicode_ci,
  `things_to_do2` text COLLATE utf8_unicode_ci,
  `things_to_do3` text COLLATE utf8_unicode_ci,
  `things_to_do4` text COLLATE utf8_unicode_ci,
  `things_to_do5` text COLLATE utf8_unicode_ci,
  `destination` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_price` double(10,2) unsigned DEFAULT NULL,
  `discounted_price` double(10,2) unsigned DEFAULT NULL,
  `deal_live` date DEFAULT NULL,
  `deal_close` date DEFAULT NULL,
  `deal_valid` date DEFAULT NULL,
  `deal_expire` date DEFAULT NULL,
  `is_timed` tinyint(1) DEFAULT NULL,
  `max_purchases` int(11) unsigned DEFAULT NULL,
  `max_nights` int(11) unsigned DEFAULT NULL,
  `flat_fee` double(10,2) DEFAULT NULL,
  `comission_percentage` double(10,2) unsigned DEFAULT NULL,
  `private_note` text COLLATE utf8_unicode_ci,
  `purchase_pad` int(11) NOT NULL DEFAULT '0',
  `image1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image3` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image4` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image5` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image6` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deal_status_id` bigint(20) DEFAULT NULL,
  `reservation_type_id` bigint(20) unsigned NOT NULL,
  `venue_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `created`, `modified`, `name`, `title`, `slug`, `description`, `fine_print`, `highlights`, `venue_info`, `getting_there`, `things_to_do`, `things_to_do2`, `things_to_do3`, `things_to_do4`, `things_to_do5`, `destination`, `original_price`, `discounted_price`, `deal_live`, `deal_close`, `deal_valid`, `deal_expire`, `is_timed`, `max_purchases`, `max_nights`, `flat_fee`, `comission_percentage`, `private_note`, `purchase_pad`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `deal_status_id`, `reservation_type_id`, `venue_id`) VALUES
(2, '2011-07-31 16:32:41', '2011-10-22 21:46:30', 'Mexican Cruise', '35% off 7 night Mexican cruise to Cancun ', '', '<p>The moment you reach your first stop on your cruise, you&rsquo;ll understand why it&rsquo;s one of our top favorites. With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top level of the ship with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, the chef insists that everyone try their local style cerviche.</p>\r\n<p>Enjoy the solitude or go out on the town, as the ship has everything you could imagine. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with other passengers. &nbsp;There are multiple restaurants, bars, swimming pools, spas, theaters and dance halls. &nbsp;They even have a rock climbing gym to stay fit.</p>\r\n<p>If you have any additional requests or needs, your captain and crew encourage you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Visit the best beaches of Mexico</li>\r\n<li>All food and drinks included</li>\r\n<li>Complementary room upgrade</li>\r\n<li>Free onboard internet connection</li>\r\n</ul>', 'With over 100 members staff members onboard your ship, you will be pampered in the best class service possible.\r\n', '<p>Plane</p>\r\n<p>The best way to get to your departure port is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from the ship&rsquo;s pier. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p>Train</p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p>Other</p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;Call them directly and they&rsquo;ll be happy to make all the arrangements.</p>', '<div class="slide first_slide"><img src="https://stage.traveltipping.com/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Lay on the whitest and cleanest beaches you&rsquo;ve ever seen. Relax, sleep and get a tan.</p>\r\n</div>\r\n</div>', '<div class="slide second_slide"><img src="https://stage.traveltipping.com/uploads/Image%203.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 2 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It&rsquo;s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide third_slide"><img src="https://stage.traveltipping.com/uploads/Image%201.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 3 </strong></p>\r\n<p>Hike to the top of this Elnis Mountain. You&rsquo;ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide fourth_slide"><img src="https://stage.traveltipping.com/uploads/Image%204.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 4 </strong></p>\r\n<p>Want to taste the best seafood known to man? Try the Fresh Restaurant to appease your saltwater appetite. This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide fifth_slide"><img src="https://stage.traveltipping.com/uploads/Image%207.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 5 </strong></p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night. There&rsquo;s live music, dancing. It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', 'Cancun', 1000.00, 650.00, '2011-07-31', '2012-05-16', '2011-09-17', '2012-03-23', 1, 45, 5, NULL, 15.00, '', 0, 'https://stage.traveltipping.com/uploads/Beach%20View.jpg', 'https://stage.traveltipping.com/uploads/Greece.jpg', 'https://stage.traveltipping.com/uploads/Lodge.jpg', 'https://stage.traveltipping.com/uploads/Santorini.jpg', 'https://stage.traveltipping.com/uploads/Beach.jpg', 'https://stage.traveltipping.com/uploads/Venice.jpg', 4, 1, 2),
(3, '2011-07-31 19:24:57', '2011-07-31 19:24:57', 'The ultimate getaway', '45% one week stay on the most beautiful island in Thailand', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites.&nbsp;&nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away.&nbsp; It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life.&nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor.&nbsp; They serve the best specialties dishes of the region.&nbsp; In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. You can stay out all night, dancing, eating, drinking and mingling with friendly locals. It''s also well situated between two public transit stops for those taking public transportation. You''ll find a grocery store two blocks away and the beach one step from your room.</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world''s most ancient cities</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two Thai Massages</li>\r\n<li>Includes dinner for two at the Thai Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.  If you need to make any special requests, they''ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. Once landed you can take the 45 bus line which will stop within 500 feet from where you''re staying. You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. The closest stop is the Termini station. Once there, you can take a short cab ride. It should be less than $10. Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. You can also rent a car, which will run about $50 a day - more if you want to get better insurance coverage.</p>', '<div class="slide"><img src="/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Title 1 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Title 1\r\n</strong>\r\n</p>\r\n<p> Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="/uploads/Image%206.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Title 1\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit the world''s largest petrified wood forest.  You''ll find an entire groove of petrified trees dating back from the time dinosaurs roamed the earth.</p>\r\n</div>\r\n</div>', 'Cambodia', 124.00, 45.00, '2011-07-31', '2012-07-31', '2011-11-01', '2011-12-22', 0, 250, 3, NULL, 10.00, '', 0, '/uploads/Beach.jpg', '/uploads/Greece.jpg', '/uploads/Lodge.jpg', '/uploads/Santorini.jpg', '/uploads/Tuscany.jpg', '/uploads/Venice.jpg', 5, 1, 4),
(4, '2011-07-31 20:28:08', '2011-07-31 20:28:08', 'Hotel in Peru', '50% off 4 night stay in Peru ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul><li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>\r\n', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p>Plane</p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p>&nbsp;</p>\r\n<p>Train</p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p>&nbsp;</p>\r\n<p>Other</p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>', '<div class="slide second_slide">\r\n<img src="/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide third_slide">\r\n<img src="/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fourth_slide">\r\n<img src="/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fifth_slide">\r\n<img src="/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>Visit the world''s largest petrified wood forest.  You''ll find an entire groove of petrified trees dating back from the time dinosaurs roamed the earth.\r\n</p>\r\n</div>\r\n</div>', 'Peru', 520.00, 260.00, '2011-07-31', '2011-09-12', '2011-09-28', '2011-12-31', 1, 50, 5, NULL, 15.00, '', 0, '/uploads/Greece.jpg', '/uploads/Beach%20View.jpg', '/uploads/Lodge.jpg', '/uploads/Beach.jpg', '/uploads/Tuscany.jpg', '/uploads/Woman%20on%20the%20Beach.jpg', 4, 2, 3),
(5, '2011-07-31 20:44:04', '2011-07-31 20:44:04', 'Fiji Cottage', '75% cottage on the white sands of Fiji ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>One week stay on Fiji&rsquo;s main island</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two oceanside massages</li>\r\n<li>Includes dinner for two at the Fresh Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you’ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide second_slide">\r\n<img src="/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide third_slide">\r\n<img src="/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fourth_slide">\r\n<img src="/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fifth_slide">\r\n<img src="/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There’s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Fiji', 2500.00, 625.00, '2011-07-31', '2011-08-20', '2012-09-30', '2012-03-07', 1, 80, 7, NULL, 15.00, '', 0, '/uploads/Beach.jpg', '/uploads/Greece.jpg', '/uploads/Lodge.jpg', '/uploads/Tuscany.jpg', '/uploads/venice.png', '/uploads/Beach%20View.jpg', 4, 1, 5),
(6, '2011-07-31 21:03:52', '2011-07-31 21:03:52', 'Tahiti Villa', '40% the most amazing villa in the world ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p><span style="font-family: mceinline;">Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</span></p>\r\n<p><span style="font-family: mceinline;">Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</span></p>\r\n<p><span style="font-family: mceinline;">If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</span></p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>One week stay on Tahiti&rsquo;s main island</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two oceanside massages</li>\r\n<li>Includes dinner for two at the Fresh Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family. &nbsp;If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide second_slide">\r\n<img src="/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fourth_slide">\r\n<img src="/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fifth_slide">\r\n<img src="/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Tahiti', 190.00, 114.00, '2011-07-31', '2011-09-20', '2011-10-18', '2011-12-31', 1, 30, 8, NULL, 15.00, '', 0, '/uploads/Woman%20on%20the%20Beach.jpg', '/uploads/Santorini.jpg', '/uploads/Lodge.jpg', '/uploads/Beach.jpg', '/uploads/Greece.jpg', '/uploads/Tuscany.jpg', 4, 1, 6),
(7, '2011-08-01 08:34:23', '2011-08-01 08:34:23', 'Greek Isle Hotel', '55% off Greek isle hotel with amazing views ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide"><img src="/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen. Relax, sleep and get a tan.</p>\r\n</div>\r\n</div>', '\r\n</p>\r\n</div>\r\n</div>\r\n\r\n<div class="slide second_slide">\r\n<img src="/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fourth_slide">\r\n<img src="/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fifth_slide">\r\n<img src="/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Greece', 150.00, 68.00, '2011-08-01', '2011-10-01', '2011-10-01', '2011-12-01', 1, 75, 14, NULL, 15.00, '', 0, '/uploads/Santorini.jpg', '/uploads/Woman%20on%20the%20Beach.jpg', '/uploads/Santorini.jpg', '/uploads/Beach.jpg', '/uploads/Tuscany.jpg', '/uploads/Greece.jpg', 5, 1, 7),
(8, '2011-08-01 18:44:11', '2011-10-31 11:03:21', 'Tuscany', '42% off hotel in the heart of Tuscany ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide"><img src="/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Visit this ancient coliseum, where gladiators fought for the Roman Empire in 65AD. It''s only a half mile walk away.</p>\r\n</div>\r\n</div>', '<div class="slide second_slide"><img src="/uploads/Image%203.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 2. Things To Do Number 2 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide third_slide"><img src="/uploads/Image%201.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 3. Things To Do Number 3 </strong></p>\r\n<p>Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide fourth_slide"><img src="/uploads/Image%204.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 4. Things To Do Number 4 </strong></p>\r\n<p>Want to taste the best seafood known to man? Try the Fresh Restaurant to appease your saltwater appetite. This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide fifth_slide"><img src="/uploads/Image%207.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 5. Things To Do Number 5 </strong></p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night. There''s live music, dancing. It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', 'Tuscany', 182.00, 106.00, '2011-08-01', '2011-10-01', '2011-10-01', '2011-12-01', 1, 200, 5, NULL, NULL, '', 0, '/uploads/Tuscany.jpg', '/uploads/Lodge.jpg', '/uploads/Greece.jpg', '/uploads/Venice.jpg', '/uploads/Beach%20View.jpg', '/uploads/Image%202.jpg', 4, 1, 8),
(9, '2011-08-02 20:32:22', '2011-10-31 11:02:57', 'Asia 3', '68% off 14 day jungle tour of Cambodia ', '', '<p>The moment you reach your first stop on your tour, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>&nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>14 Day tour of Cambodia</li>\r\n<li>Breakfast included</li>\r\n<li>Includes all transportation and accommodation costs</li>\r\n<li>Visit 7 cities and 4 ancient temples</li>\r\n</ul>', '<p>This tour is operated by the Tour Company, and they&rsquo;ve been guiding tours in the country for more than 20 years.</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide"><img src="/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen. Relax, sleep and get a tan.</p>\r\n</div>\r\n</div>', '<div class="slide"><img src="/uploads/Image%203.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 2. Things To Do Number 2 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide"><img src="/uploads/Image%201.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 3. Things To Do Number 3 </strong></p>\r\n<p>Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide"><img src="/uploads/Image%204.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 4. Things To Do Number 4 </strong></p>\r\n<p>Want to taste the best seafood known to man? Try the Fresh Restaurant to appease your saltwater appetite. This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide"><img src="/uploads/Image%207.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 5. Things To Do Number 5 </strong></p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night. There''s live music, dancing. It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', 'Cambodia', 4063.00, 1300.00, '2011-08-06', '2012-08-02', '2011-10-02', '2011-11-02', 0, 25, 3, NULL, 10.00, '', 0, '/uploads/Lodge.jpg', '/uploads/Beach.jpg', '/uploads/Greece.jpg', '/uploads/Beach%20View.jpg', '/uploads/Venice.jpg', '', 3, 1, 9),
(10, '2011-08-02 20:51:53', '2011-08-02 20:51:53', 'Adventure in Napa', '52% off hotel night in California wine country', '', '<p>The moment you reach your first stop on your tour, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>&nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>14 Day tour of Cambodia</li>\r\n<li>Breakfast included</li>\r\n<li>Includes all transportation and accommodation costs</li>\r\n<li>Visit 7 cities and 4 ancient temples</li>\r\n</ul>', '<p>This tour is operated by the Tour Company, and they&rsquo;ve been guiding tours in the country for more than 20 years.</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide">\r\n<img src="/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'California', 105.00, 50.00, '2011-08-09', '2011-08-02', '2011-08-02', '2011-08-02', 0, 100, 6, NULL, 10.00, '', 0, '/uploads/Greece.jpg', '/uploads/Lodge.jpg', '/uploads/Greece.jpg', '/uploads/Venice.jpg', '/uploads/Greece.jpg', '', 2, 1, 10),
(11, '2011-10-12 16:22:06', '2011-10-12 16:22:06', '', '', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-13', '2012-10-13', '2011-10-13', '2012-10-13', 1, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', 3, 1, 11),
(12, '2011-10-12 16:30:03', '2011-10-12 16:30:03', 'for your reference', '50% off everthing', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1000.00, 400.00, '2011-10-10', '2013-10-12', '2011-10-12', '2012-10-12', 1, 100, 10, NULL, 15.00, '', 10, '', '', '', '', '', '', 3, 1, 10),
(13, '2011-10-16 05:52:31', '2011-10-16 05:52:31', 'Test deal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 13),
(14, '2011-10-17 20:09:53', '2011-10-17 20:09:53', 'Testing', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '/uploads/default.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 14),
(15, '2011-10-25 23:48:24', '2011-10-27 11:45:06', 'Testing name of deal', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '2011-10-26', '2011-10-27', '2011-10-27', '2011-10-27', 1, NULL, NULL, NULL, NULL, '', 0, '/uploads/default.jpg', '', '', '', '', '', 6, 1, 15),
(16, '2011-10-26 15:25:48', '2011-10-27 11:23:27', 'Testing', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '2011-10-27', '2011-10-27', '2011-10-27', '2011-10-27', 1, NULL, NULL, NULL, NULL, '', 0, '/uploads/default.jpg', '', '', '', '', '', 2, 1, 16),
(17, '2011-10-27 11:33:23', '2011-10-27 11:33:23', 'teseting 2', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '/uploads/default.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 17),
(18, '2011-10-27 15:08:29', '2011-10-27 15:08:59', 'David''s Test', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '2011-10-27', '2011-10-27', '2011-10-27', '2011-10-27', 1, NULL, NULL, NULL, NULL, '', 0, '/uploads/default.jpg', '', '', '', '', '', 2, 1, 18),
(19, '2011-10-29 20:24:16', '2011-10-31 10:59:32', 'testing press@', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '2011-10-29', '2011-10-29', '2011-10-29', '2011-10-29', 1, NULL, NULL, NULL, NULL, '', 0, '/uploads/default.jpg', '', '', '', '', '', 2, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `deals_categories`
--

CREATE TABLE IF NOT EXISTS `deals_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `deals_categories`
--

INSERT INTO `deals_categories` (`id`, `created`, `modified`, `deal_id`, `category_id`) VALUES
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2),
(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deals_regions`
--

CREATE TABLE IF NOT EXISTS `deals_regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `deals_regions`
--

INSERT INTO `deals_regions` (`id`, `created`, `modified`, `deal_id`, `region_id`) VALUES
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 2),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 6),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 6),
(77, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 1),
(78, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 2),
(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1),
(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 6),
(85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 2),
(86, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 3),
(87, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `deal_availabilities`
--

CREATE TABLE IF NOT EXISTS `deal_availabilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) unsigned DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `num_available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=950 ;

--
-- Dumping data for table `deal_availabilities`
--

INSERT INTO `deal_availabilities` (`id`, `created`, `modified`, `deal_id`, `reservation_date`, `num_available`) VALUES
(1, '2011-10-12 10:52:58', '2011-10-12 10:52:58', NULL, NULL, 5),
(2, '2011-10-12 21:02:47', '2011-10-12 21:02:47', NULL, NULL, 10),
(3, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-17', 12),
(4, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-18', 12),
(5, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-19', 12),
(6, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-20', 12),
(7, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-21', 12),
(8, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-22', 12),
(9, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-23', 12),
(10, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-24', 12),
(11, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-25', 12),
(12, '2011-10-12 21:07:29', '2011-10-12 21:07:29', 2, '2011-09-26', 12),
(13, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-09-27', 12),
(14, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-09-28', 12),
(15, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-09-29', 12),
(16, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-09-30', 12),
(17, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-01', 12),
(18, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-02', 12),
(19, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-03', 12),
(20, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-04', 12),
(21, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-05', 12),
(22, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-06', 12),
(23, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-07', 12),
(24, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-08', 12),
(25, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-09', 12),
(26, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-10', 12),
(27, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-11', 12),
(28, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-12', 12),
(29, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-13', 12),
(30, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-14', 12),
(31, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-15', 12),
(32, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-16', 12),
(33, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-17', 12),
(34, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-18', 12),
(35, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-19', 12),
(36, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-20', 12),
(37, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-21', 12),
(38, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-22', 12),
(39, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-23', 12),
(40, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-24', 12),
(41, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-25', 12),
(42, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-26', 12),
(43, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-27', 12),
(44, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-28', 12),
(45, '2011-10-12 21:07:30', '2011-10-12 21:07:30', 2, '2011-10-29', 12),
(46, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-10-30', 12),
(47, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-10-31', 12),
(48, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-01', 12),
(49, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-02', 12),
(50, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-03', 12),
(51, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-04', 12),
(52, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-05', 12),
(53, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-06', 12),
(54, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-07', 12),
(55, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-08', 12),
(56, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-09', 12),
(57, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-10', 12),
(58, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-11', 12),
(59, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-12', 12),
(60, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-13', 12),
(61, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-14', 12),
(62, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-15', 12),
(63, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-16', 12),
(64, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-17', 12),
(65, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-18', 12),
(66, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-19', 12),
(67, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-20', 12),
(68, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-21', 12),
(69, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-22', 12),
(70, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-23', 12),
(71, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-24', 12),
(72, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-25', 12),
(73, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-26', 12),
(74, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-27', 12),
(75, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-28', 12),
(76, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-29', 12),
(77, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-11-30', 12),
(78, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-01', 12),
(79, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-02', 12),
(80, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-03', 12),
(81, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-04', 12),
(82, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-05', 12),
(83, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-06', 12),
(84, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-07', 12),
(85, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-08', 12),
(86, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-09', 12),
(87, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-10', 12),
(88, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-11', 12),
(89, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-12', 12),
(90, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-13', 12),
(91, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-14', 12),
(92, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-15', 12),
(93, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-16', 12),
(94, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-17', 12),
(95, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-18', 12),
(96, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-19', 12),
(97, '2011-10-12 21:07:31', '2011-10-12 21:07:31', 2, '2011-12-20', 12),
(98, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-21', 12),
(99, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-22', 12),
(100, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-23', 12),
(101, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-24', 12),
(102, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-25', 12),
(103, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-26', 12),
(104, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-27', 12),
(105, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-28', 12),
(106, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-29', 12),
(107, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-30', 12),
(108, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2011-12-31', 12),
(109, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-01', 12),
(110, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-02', 12),
(111, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-03', 12),
(112, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-04', 12),
(113, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-05', 12),
(114, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-06', 12),
(115, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-07', 12),
(116, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-08', 12),
(117, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-09', 12),
(118, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-10', 12),
(119, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-11', 12),
(120, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-12', 12),
(121, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-13', 12),
(122, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-14', 12),
(123, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-15', 12),
(124, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-16', 12),
(125, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-17', 12),
(126, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-18', 12),
(127, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-19', 12),
(128, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-20', 12),
(129, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-21', 12),
(130, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-22', 12),
(131, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-23', 12),
(132, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-24', 12),
(133, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-25', 12),
(134, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-26', 12),
(135, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-27', 12),
(136, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-28', 12),
(137, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-29', 12),
(138, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-30', 12),
(139, '2011-10-12 21:07:32', '2011-10-12 21:07:32', 2, '2012-01-31', 12),
(140, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-01', 12),
(141, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-02', 12),
(142, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-03', 12),
(143, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-04', 12),
(144, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-05', 12),
(145, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-06', 12),
(146, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-07', 12),
(147, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-08', 12),
(148, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-09', 12),
(149, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-10', 12),
(150, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-11', 12),
(151, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-12', 12),
(152, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-13', 12),
(153, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-14', 12),
(154, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-15', 12),
(155, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-16', 12),
(156, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-17', 12),
(157, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-18', 12),
(158, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-19', 12),
(159, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-20', 12),
(160, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-21', 12),
(161, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-22', 12),
(162, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-23', 12),
(163, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-24', 12),
(164, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-25', 12),
(165, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-26', 12),
(166, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-27', 12),
(167, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-28', 12),
(168, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-02-29', 12),
(169, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-01', 12),
(170, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-02', 12),
(171, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-03', 12),
(172, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-04', 12),
(173, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-05', 12),
(174, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-06', 12),
(175, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-07', 12),
(176, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-08', 12),
(177, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-09', 12),
(178, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-10', 12),
(179, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-11', 12),
(180, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-12', 12),
(181, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-13', 12),
(182, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-14', 12),
(183, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-15', 12),
(184, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-16', 12),
(185, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-17', 12),
(186, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-18', 12),
(187, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-19', 12),
(188, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-20', 12),
(189, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-21', 12),
(190, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-22', 12),
(191, '2011-10-12 21:07:33', '2011-10-12 21:07:33', 2, '2012-03-23', 12),
(192, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-12', NULL),
(193, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-13', NULL),
(194, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-14', NULL),
(195, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-15', NULL),
(196, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-16', NULL),
(197, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-17', NULL),
(198, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-18', NULL),
(199, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-19', NULL),
(200, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-20', NULL),
(201, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-21', NULL),
(202, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-22', NULL),
(203, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-23', NULL),
(204, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-24', NULL),
(205, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-25', NULL),
(206, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-26', NULL),
(207, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-27', NULL),
(208, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-28', NULL),
(209, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-29', NULL),
(210, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-30', NULL),
(211, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-10-31', NULL),
(212, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-01', NULL),
(213, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-02', NULL),
(214, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-03', NULL),
(215, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-04', NULL),
(216, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-05', NULL),
(217, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-06', NULL),
(218, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-07', NULL),
(219, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-08', NULL),
(220, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-09', NULL),
(221, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-10', NULL),
(222, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-11', NULL),
(223, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-12', NULL),
(224, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-13', NULL),
(225, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-14', NULL),
(226, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-15', NULL),
(227, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-16', NULL),
(228, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-17', NULL),
(229, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-18', NULL),
(230, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-19', NULL),
(231, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-20', NULL),
(232, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-21', NULL),
(233, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-22', NULL),
(234, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-23', NULL),
(235, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-24', NULL),
(236, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-25', NULL),
(237, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-26', NULL),
(238, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-27', NULL),
(239, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-28', NULL),
(240, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-29', NULL),
(241, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-11-30', NULL),
(242, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-12-01', NULL),
(243, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-12-02', NULL),
(244, '2011-10-12 21:34:38', '2011-10-12 21:34:38', 12, '2011-12-03', NULL),
(245, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-04', NULL),
(246, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-05', NULL),
(247, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-06', NULL),
(248, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-07', NULL),
(249, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-08', NULL),
(250, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-09', NULL),
(251, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-10', NULL),
(252, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-11', NULL),
(253, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-12', NULL),
(254, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-13', NULL),
(255, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-14', NULL),
(256, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-15', NULL),
(257, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-16', NULL),
(258, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-17', NULL),
(259, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-18', NULL),
(260, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-19', NULL),
(261, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-20', NULL),
(262, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-21', NULL),
(263, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-22', NULL),
(264, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-23', NULL),
(265, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-24', NULL),
(266, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-25', NULL),
(267, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-26', NULL),
(268, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-27', NULL),
(269, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-28', NULL),
(270, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-29', NULL),
(271, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-30', NULL),
(272, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2011-12-31', NULL),
(273, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-01', NULL),
(274, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-02', NULL),
(275, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-03', NULL),
(276, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-04', NULL),
(277, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-05', NULL),
(278, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-06', NULL),
(279, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-07', NULL),
(280, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-08', NULL),
(281, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-09', NULL),
(282, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-10', NULL),
(283, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-11', NULL),
(284, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-12', NULL),
(285, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-13', NULL),
(286, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-14', NULL),
(287, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-15', NULL),
(288, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-16', NULL),
(289, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-17', NULL),
(290, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-18', NULL),
(291, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-19', NULL),
(292, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-20', NULL),
(293, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-21', NULL),
(294, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-22', NULL),
(295, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-23', NULL),
(296, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-24', NULL),
(297, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-25', NULL),
(298, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-26', NULL),
(299, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-27', NULL),
(300, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-28', NULL),
(301, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-29', NULL),
(302, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-30', NULL),
(303, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-01-31', NULL),
(304, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-01', NULL),
(305, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-02', NULL),
(306, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-03', NULL),
(307, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-04', NULL),
(308, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-05', NULL),
(309, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-06', NULL),
(310, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-07', NULL),
(311, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-08', NULL),
(312, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-09', NULL),
(313, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-10', NULL),
(314, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-11', NULL),
(315, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-12', NULL),
(316, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-13', NULL),
(317, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-14', NULL),
(318, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-15', NULL),
(319, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-16', NULL),
(320, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-17', NULL),
(321, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-18', NULL),
(322, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-19', NULL),
(323, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-20', NULL),
(324, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-21', NULL),
(325, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-22', NULL),
(326, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-23', NULL),
(327, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-24', NULL),
(328, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-25', NULL),
(329, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-26', NULL),
(330, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-27', NULL),
(331, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-28', NULL),
(332, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-02-29', NULL),
(333, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-01', NULL),
(334, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-02', NULL),
(335, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-03', NULL),
(336, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-04', NULL),
(337, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-05', NULL),
(338, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-06', NULL),
(339, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-07', NULL),
(340, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-08', NULL),
(341, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-09', NULL),
(342, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-10', NULL),
(343, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-11', NULL),
(344, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-12', NULL),
(345, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-13', NULL),
(346, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-14', NULL),
(347, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-15', NULL),
(348, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-16', NULL),
(349, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-17', NULL),
(350, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-18', NULL),
(351, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-19', NULL),
(352, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-20', NULL),
(353, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-21', NULL),
(354, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-22', NULL),
(355, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-23', NULL),
(356, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-24', NULL),
(357, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-25', NULL),
(358, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-26', NULL),
(359, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-27', NULL),
(360, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-28', NULL),
(361, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-29', NULL),
(362, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-30', NULL),
(363, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-03-31', NULL),
(364, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-01', NULL),
(365, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-02', NULL),
(366, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-03', NULL),
(367, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-04', NULL),
(368, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-05', NULL),
(369, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-06', NULL),
(370, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-07', NULL),
(371, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-08', NULL),
(372, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-09', NULL),
(373, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-10', NULL),
(374, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-11', NULL),
(375, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-12', NULL),
(376, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-13', NULL),
(377, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-14', NULL),
(378, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-15', NULL),
(379, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-16', NULL),
(380, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-17', NULL),
(381, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-18', NULL),
(382, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-19', NULL),
(383, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-20', NULL),
(384, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-21', NULL),
(385, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-22', NULL),
(386, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-23', NULL),
(387, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-24', NULL),
(388, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-25', NULL),
(389, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-26', NULL),
(390, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-27', NULL),
(391, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-28', NULL),
(392, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-29', NULL),
(393, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-04-30', NULL),
(394, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-01', NULL),
(395, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-02', NULL),
(396, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-03', NULL),
(397, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-04', NULL),
(398, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-05', NULL),
(399, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-06', NULL),
(400, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-07', NULL),
(401, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-08', NULL),
(402, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-09', NULL),
(403, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-10', NULL),
(404, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-11', NULL),
(405, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-12', NULL),
(406, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-13', NULL),
(407, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-14', NULL),
(408, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-15', NULL),
(409, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-16', NULL),
(410, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-17', NULL),
(411, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-18', NULL),
(412, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-19', NULL),
(413, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-20', NULL),
(414, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-21', NULL),
(415, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-22', NULL),
(416, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-23', NULL),
(417, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-24', NULL),
(418, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-25', NULL),
(419, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-26', NULL),
(420, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-27', NULL),
(421, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-28', NULL),
(422, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-29', NULL),
(423, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-30', NULL),
(424, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-05-31', NULL),
(425, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-01', NULL),
(426, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-02', NULL),
(427, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-03', NULL),
(428, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-04', NULL),
(429, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-05', NULL),
(430, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-06', NULL),
(431, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-07', NULL),
(432, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-08', NULL),
(433, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-09', NULL),
(434, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-10', NULL),
(435, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-11', NULL),
(436, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-12', NULL),
(437, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-13', NULL),
(438, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-14', NULL),
(439, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-15', NULL),
(440, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-16', NULL),
(441, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-17', NULL),
(442, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-18', NULL),
(443, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-19', NULL),
(444, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-20', NULL),
(445, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-21', NULL),
(446, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-22', NULL),
(447, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-23', NULL),
(448, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-24', NULL),
(449, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-25', NULL),
(450, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-26', NULL),
(451, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-27', NULL),
(452, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-28', NULL),
(453, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-29', NULL),
(454, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-06-30', NULL),
(455, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-01', NULL),
(456, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-02', NULL),
(457, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-03', NULL),
(458, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-04', NULL),
(459, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-05', NULL),
(460, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-06', NULL),
(461, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-07', NULL),
(462, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-08', NULL),
(463, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-09', NULL),
(464, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-10', NULL),
(465, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-11', NULL),
(466, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-12', NULL),
(467, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-13', NULL),
(468, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-14', NULL),
(469, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-15', NULL),
(470, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-16', NULL),
(471, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-17', NULL),
(472, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-18', NULL),
(473, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-19', NULL),
(474, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-20', NULL),
(475, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-21', NULL),
(476, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-22', NULL),
(477, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-23', NULL),
(478, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-24', NULL),
(479, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-25', NULL),
(480, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-26', NULL),
(481, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-27', NULL),
(482, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-28', NULL),
(483, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-29', NULL),
(484, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-30', NULL),
(485, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-07-31', NULL),
(486, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-01', NULL),
(487, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-02', NULL),
(488, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-03', NULL),
(489, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-04', NULL),
(490, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-05', NULL),
(491, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-06', NULL),
(492, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-07', NULL),
(493, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-08', NULL),
(494, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-09', NULL),
(495, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-10', NULL),
(496, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-11', NULL),
(497, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-12', NULL),
(498, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-13', NULL),
(499, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-14', NULL),
(500, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-15', NULL),
(501, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-16', NULL),
(502, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-17', NULL),
(503, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-18', NULL),
(504, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-19', NULL),
(505, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-20', NULL),
(506, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-21', NULL),
(507, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-22', NULL),
(508, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-23', NULL),
(509, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-24', NULL),
(510, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-25', NULL),
(511, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-26', NULL),
(512, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-27', NULL),
(513, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-28', NULL),
(514, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-29', NULL),
(515, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-30', NULL),
(516, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-08-31', NULL),
(517, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-01', NULL),
(518, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-02', NULL),
(519, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-03', NULL),
(520, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-04', NULL),
(521, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-05', NULL),
(522, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-06', NULL),
(523, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-07', NULL),
(524, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-08', NULL),
(525, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-09', NULL),
(526, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-10', NULL),
(527, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-11', NULL),
(528, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-12', NULL),
(529, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-13', NULL),
(530, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-14', NULL),
(531, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-15', NULL),
(532, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-16', NULL),
(533, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-17', NULL),
(534, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-18', NULL),
(535, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-19', NULL),
(536, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-20', NULL),
(537, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-21', NULL),
(538, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-22', NULL),
(539, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-23', NULL),
(540, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-24', NULL),
(541, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-25', NULL),
(542, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-26', NULL),
(543, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-27', NULL),
(544, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-28', NULL),
(545, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-29', NULL),
(546, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-09-30', NULL),
(547, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-01', NULL),
(548, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-02', NULL),
(549, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-03', NULL),
(550, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-04', NULL),
(551, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-05', NULL),
(552, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-06', NULL),
(553, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-07', NULL),
(554, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-08', NULL),
(555, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-09', NULL),
(556, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-10', NULL),
(557, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-11', NULL),
(558, '2011-10-12 21:34:39', '2011-10-12 21:34:39', 12, '2012-10-12', NULL),
(559, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-13', NULL),
(560, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-14', NULL),
(561, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-15', NULL),
(562, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-16', NULL),
(563, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-17', NULL),
(564, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-18', NULL),
(565, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-19', NULL),
(566, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-20', NULL),
(567, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-21', NULL),
(568, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-22', NULL),
(569, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-23', NULL),
(570, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-24', NULL),
(571, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-25', NULL),
(572, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-26', NULL),
(573, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-27', NULL),
(574, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-28', NULL),
(575, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-29', NULL),
(576, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-30', NULL),
(577, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-10-31', NULL),
(578, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-01', NULL),
(579, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-02', NULL),
(580, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-03', NULL),
(581, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-04', NULL),
(582, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-05', NULL),
(583, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-06', NULL),
(584, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-07', NULL),
(585, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-08', NULL),
(586, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-09', NULL),
(587, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-10', NULL),
(588, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-11', NULL),
(589, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-12', NULL),
(590, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-13', NULL),
(591, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-14', NULL),
(592, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-15', NULL),
(593, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-16', NULL),
(594, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-17', NULL),
(595, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-18', NULL),
(596, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-19', NULL),
(597, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-20', NULL),
(598, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-21', NULL),
(599, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-22', NULL),
(600, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-23', NULL),
(601, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-24', NULL),
(602, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-25', NULL),
(603, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-26', NULL),
(604, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-27', NULL),
(605, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-28', NULL),
(606, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-29', NULL),
(607, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-11-30', NULL),
(608, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-01', NULL),
(609, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-02', NULL),
(610, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-03', NULL),
(611, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-04', NULL),
(612, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-05', NULL),
(613, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-06', NULL),
(614, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-07', NULL),
(615, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-08', NULL),
(616, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-09', NULL),
(617, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-10', NULL),
(618, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-11', NULL),
(619, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-12', NULL),
(620, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-13', NULL),
(621, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-14', NULL),
(622, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-15', NULL),
(623, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-16', NULL),
(624, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-17', NULL),
(625, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-18', NULL),
(626, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-19', NULL),
(627, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-20', NULL),
(628, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-21', NULL),
(629, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-22', NULL),
(630, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-23', NULL),
(631, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-24', NULL),
(632, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-25', NULL),
(633, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-26', NULL),
(634, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-27', NULL),
(635, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-28', NULL),
(636, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-29', NULL),
(637, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-30', NULL),
(638, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2011-12-31', NULL),
(639, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-01', NULL),
(640, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-02', NULL),
(641, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-03', NULL),
(642, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-04', NULL),
(643, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-05', NULL),
(644, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-06', NULL),
(645, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-07', NULL),
(646, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-08', NULL),
(647, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-09', NULL),
(648, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-10', NULL),
(649, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-11', NULL),
(650, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-12', NULL),
(651, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-13', NULL),
(652, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-14', NULL),
(653, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-15', NULL),
(654, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-16', NULL),
(655, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-17', NULL),
(656, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-18', NULL),
(657, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-19', NULL),
(658, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-20', NULL),
(659, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-21', NULL),
(660, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-22', NULL),
(661, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-23', NULL),
(662, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-24', NULL),
(663, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-25', NULL),
(664, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-26', NULL),
(665, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-27', NULL),
(666, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-28', NULL),
(667, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-29', NULL),
(668, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-30', NULL),
(669, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-01-31', NULL),
(670, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-01', NULL),
(671, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-02', NULL),
(672, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-03', NULL),
(673, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-04', NULL),
(674, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-05', NULL);
INSERT INTO `deal_availabilities` (`id`, `created`, `modified`, `deal_id`, `reservation_date`, `num_available`) VALUES
(675, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-06', NULL),
(676, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-07', NULL),
(677, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-08', NULL),
(678, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-09', NULL),
(679, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-10', NULL),
(680, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-11', NULL),
(681, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-12', NULL),
(682, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-13', NULL),
(683, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-14', NULL),
(684, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-15', NULL),
(685, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-16', NULL),
(686, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-17', NULL),
(687, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-18', NULL),
(688, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-19', NULL),
(689, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-20', NULL),
(690, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-21', NULL),
(691, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-22', NULL),
(692, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-23', NULL),
(693, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-24', NULL),
(694, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-25', NULL),
(695, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-26', NULL),
(696, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-27', NULL),
(697, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-28', NULL),
(698, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-02-29', NULL),
(699, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-01', NULL),
(700, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-02', NULL),
(701, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-03', NULL),
(702, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-04', NULL),
(703, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-05', NULL),
(704, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-06', NULL),
(705, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-07', NULL),
(706, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-08', NULL),
(707, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-09', NULL),
(708, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-10', NULL),
(709, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-11', NULL),
(710, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-12', NULL),
(711, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-13', NULL),
(712, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-14', NULL),
(713, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-15', NULL),
(714, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-16', NULL),
(715, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-17', NULL),
(716, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-18', NULL),
(717, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-19', NULL),
(718, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-20', NULL),
(719, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-21', NULL),
(720, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-22', NULL),
(721, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-23', NULL),
(722, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-24', NULL),
(723, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-25', NULL),
(724, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-26', NULL),
(725, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-27', NULL),
(726, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-28', NULL),
(727, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-29', NULL),
(728, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-30', NULL),
(729, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-03-31', NULL),
(730, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-01', NULL),
(731, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-02', NULL),
(732, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-03', NULL),
(733, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-04', NULL),
(734, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-05', NULL),
(735, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-06', NULL),
(736, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-07', NULL),
(737, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-08', NULL),
(738, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-09', NULL),
(739, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-10', NULL),
(740, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-11', NULL),
(741, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-12', NULL),
(742, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-13', NULL),
(743, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-14', NULL),
(744, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-15', NULL),
(745, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-16', NULL),
(746, '2011-10-13 09:25:37', '2011-10-13 09:25:37', 11, '2012-04-17', NULL),
(747, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-18', NULL),
(748, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-19', NULL),
(749, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-20', NULL),
(750, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-21', NULL),
(751, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-22', NULL),
(752, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-23', NULL),
(753, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-24', NULL),
(754, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-25', NULL),
(755, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-26', NULL),
(756, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-27', NULL),
(757, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-28', NULL),
(758, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-29', NULL),
(759, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-04-30', NULL),
(760, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-01', NULL),
(761, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-02', NULL),
(762, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-03', NULL),
(763, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-04', NULL),
(764, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-05', NULL),
(765, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-06', NULL),
(766, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-07', NULL),
(767, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-08', NULL),
(768, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-09', NULL),
(769, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-10', NULL),
(770, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-11', NULL),
(771, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-12', NULL),
(772, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-13', NULL),
(773, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-14', NULL),
(774, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-15', NULL),
(775, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-16', NULL),
(776, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-17', NULL),
(777, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-18', NULL),
(778, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-19', NULL),
(779, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-20', NULL),
(780, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-21', NULL),
(781, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-22', NULL),
(782, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-23', NULL),
(783, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-24', NULL),
(784, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-25', NULL),
(785, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-26', NULL),
(786, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-27', NULL),
(787, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-28', NULL),
(788, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-29', NULL),
(789, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-30', NULL),
(790, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-05-31', NULL),
(791, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-01', NULL),
(792, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-02', NULL),
(793, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-03', NULL),
(794, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-04', NULL),
(795, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-05', NULL),
(796, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-06', NULL),
(797, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-07', NULL),
(798, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-08', NULL),
(799, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-09', NULL),
(800, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-10', NULL),
(801, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-11', NULL),
(802, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-12', NULL),
(803, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-13', NULL),
(804, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-14', NULL),
(805, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-15', NULL),
(806, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-16', NULL),
(807, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-17', NULL),
(808, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-18', NULL),
(809, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-19', NULL),
(810, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-20', NULL),
(811, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-21', NULL),
(812, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-22', NULL),
(813, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-23', NULL),
(814, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-24', NULL),
(815, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-25', NULL),
(816, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-26', NULL),
(817, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-27', NULL),
(818, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-28', NULL),
(819, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-29', NULL),
(820, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-06-30', NULL),
(821, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-01', NULL),
(822, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-02', NULL),
(823, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-03', NULL),
(824, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-04', NULL),
(825, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-05', NULL),
(826, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-06', NULL),
(827, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-07', NULL),
(828, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-08', NULL),
(829, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-09', NULL),
(830, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-10', NULL),
(831, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-11', NULL),
(832, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-12', NULL),
(833, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-13', NULL),
(834, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-14', NULL),
(835, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-15', NULL),
(836, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-16', NULL),
(837, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-17', NULL),
(838, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-18', NULL),
(839, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-19', NULL),
(840, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-20', NULL),
(841, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-21', NULL),
(842, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-22', NULL),
(843, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-23', NULL),
(844, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-24', NULL),
(845, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-25', NULL),
(846, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-26', NULL),
(847, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-27', NULL),
(848, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-28', NULL),
(849, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-29', NULL),
(850, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-30', NULL),
(851, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-07-31', NULL),
(852, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-01', NULL),
(853, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-02', NULL),
(854, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-03', NULL),
(855, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-04', NULL),
(856, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-05', NULL),
(857, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-06', NULL),
(858, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-07', NULL),
(859, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-08', NULL),
(860, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-09', NULL),
(861, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-10', NULL),
(862, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-11', NULL),
(863, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-12', NULL),
(864, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-13', NULL),
(865, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-14', NULL),
(866, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-15', NULL),
(867, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-16', NULL),
(868, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-17', NULL),
(869, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-18', NULL),
(870, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-19', NULL),
(871, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-20', NULL),
(872, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-21', NULL),
(873, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-22', NULL),
(874, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-23', NULL),
(875, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-24', NULL),
(876, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-25', NULL),
(877, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-26', NULL),
(878, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-27', NULL),
(879, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-28', NULL),
(880, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-29', NULL),
(881, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-30', NULL),
(882, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-08-31', NULL),
(883, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-01', NULL),
(884, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-02', NULL),
(885, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-03', NULL),
(886, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-04', NULL),
(887, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-05', NULL),
(888, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-06', NULL),
(889, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-07', NULL),
(890, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-08', NULL),
(891, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-09', NULL),
(892, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-10', NULL),
(893, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-11', NULL),
(894, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-12', NULL),
(895, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-13', NULL),
(896, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-14', NULL),
(897, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-15', NULL),
(898, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-16', NULL),
(899, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-17', NULL),
(900, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-18', NULL),
(901, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-19', NULL),
(902, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-20', NULL),
(903, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-21', NULL),
(904, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-22', NULL),
(905, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-23', NULL),
(906, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-24', NULL),
(907, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-25', NULL),
(908, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-26', NULL),
(909, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-27', NULL),
(910, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-28', NULL),
(911, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-29', NULL),
(912, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-09-30', NULL),
(913, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-01', NULL),
(914, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-02', NULL),
(915, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-03', NULL),
(916, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-04', NULL),
(917, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-05', NULL),
(918, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-06', NULL),
(919, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-07', NULL),
(920, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-08', NULL),
(921, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-09', NULL),
(922, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-10', NULL),
(923, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-11', NULL),
(924, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-12', NULL),
(925, '2011-10-13 09:25:38', '2011-10-13 09:25:38', 11, '2012-10-13', NULL),
(926, '2011-10-17 20:29:21', '2011-10-17 20:29:21', NULL, NULL, 10),
(927, '2011-10-22 21:46:30', '2011-10-22 21:46:30', NULL, NULL, NULL),
(928, '2011-10-27 11:23:27', '2011-10-27 11:23:27', 16, '2011-10-27', NULL),
(929, '2011-10-27 11:23:27', '2011-10-27 11:23:27', NULL, NULL, NULL),
(930, '2011-10-27 11:28:56', '2011-10-27 11:28:56', 15, '2011-10-27', NULL),
(931, '2011-10-27 11:28:56', '2011-10-27 11:28:56', NULL, NULL, NULL),
(932, '2011-10-27 11:40:31', '2011-10-27 11:40:31', NULL, NULL, NULL),
(933, '2011-10-27 11:41:03', '2011-10-27 11:41:03', NULL, NULL, NULL),
(934, '2011-10-27 11:44:02', '2011-10-27 11:44:02', NULL, NULL, NULL),
(935, '2011-10-27 11:44:46', '2011-10-27 11:44:46', NULL, NULL, NULL),
(936, '2011-10-27 11:45:06', '2011-10-27 11:45:06', NULL, NULL, NULL),
(937, '2011-10-27 15:08:59', '2011-10-27 15:08:59', 18, '2011-10-27', NULL),
(938, '2011-10-27 15:08:59', '2011-10-27 15:08:59', NULL, NULL, NULL),
(939, '2011-10-29 20:25:48', '2011-10-29 20:25:48', 19, '2011-10-29', NULL),
(940, '2011-10-29 20:25:48', '2011-10-29 20:25:48', NULL, NULL, NULL),
(941, '2011-10-31 10:58:57', '2011-10-31 10:58:57', NULL, NULL, NULL),
(942, '2011-10-31 10:59:32', '2011-10-31 10:59:32', NULL, NULL, NULL),
(943, '2011-10-31 11:00:02', '2011-10-31 11:00:02', NULL, NULL, NULL),
(944, '2011-10-31 11:00:35', '2011-10-31 11:00:35', NULL, NULL, NULL),
(945, '2011-10-31 11:00:57', '2011-10-31 11:00:57', NULL, NULL, NULL),
(946, '2011-10-31 11:01:07', '2011-10-31 11:01:07', NULL, NULL, NULL),
(947, '2011-10-31 11:02:37', '2011-10-31 11:02:37', NULL, NULL, NULL),
(948, '2011-10-31 11:02:57', '2011-10-31 11:02:57', NULL, NULL, NULL),
(949, '2011-10-31 11:03:21', '2011-10-31 11:03:21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal_purchases`
--

CREATE TABLE IF NOT EXISTS `deal_purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) unsigned DEFAULT NULL,
  `traveler_id` bigint(20) unsigned DEFAULT NULL,
  `confirmation_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `purchase_amount` double DEFAULT NULL,
  `braintree_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `deal_purchases`
--

INSERT INTO `deal_purchases` (`id`, `created`, `modified`, `deal_id`, `traveler_id`, `confirmation_code`, `start_date`, `end_date`, `purchase_amount`, `braintree_id`) VALUES
(2, '2011-09-29 16:47:54', '2011-09-29 16:47:54', 2, 13, '585fc74ac9', '2011-09-20', '2011-09-23', NULL, NULL),
(3, '2011-09-29 16:49:56', '2011-09-29 16:49:56', 3, 13, '34e6ccf851', '2011-12-12', '2011-12-15', NULL, NULL),
(4, '2011-09-29 19:39:23', '2011-09-29 19:39:23', 7, 13, 'c12487c923', '2011-11-13', '2011-11-27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal_statuses`
--

CREATE TABLE IF NOT EXISTS `deal_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `deal_statuses`
--

INSERT INTO `deal_statuses` (`id`, `created`, `modified`, `name`) VALUES
(1, '2011-09-11 12:33:57', '2011-09-11 12:33:57', 'Initiated by Merchant'),
(2, '2011-09-11 12:34:42', '2011-09-11 12:34:42', 'Submitted to Merchant for Approval'),
(3, '2011-09-11 12:34:50', '2011-09-11 12:34:50', 'Approved by Merchant'),
(4, '2011-09-11 12:35:01', '2011-09-11 12:35:01', 'Listed'),
(5, '2011-09-11 12:35:06', '2011-09-11 12:35:06', 'Closed'),
(6, '2011-09-11 12:35:13', '2011-09-11 12:35:13', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE IF NOT EXISTS `destinations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `top_five` text COLLATE utf8_unicode_ci,
  `getting_there` text COLLATE utf8_unicode_ci,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `created`, `modified`, `top_five`, `getting_there`, `title`, `country_id`) VALUES
(1, '2011-04-10 20:37:10', '2011-04-10 20:55:44', '1. See the hills.\r\n2. See the monument. ', 'Drive a long ways.', 'Mount Rushmore', 1),
(2, '2011-04-10 20:45:32', '2011-04-10 20:45:32', 'Mexico Rocks!', 'Fly there!', 'Central Mexico', 2),
(3, '2011-04-10 20:56:18', '2011-04-10 20:56:18', 'Go snorkeling.\r\nGo parasailing.', 'Take a plane.', 'Haaawwaiii', 1),
(4, '2011-04-11 22:24:17', '2011-04-11 22:24:17', 'The icy tundra', 'Drive fast', 'Tundra!', 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `path`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `updated`, `created`) VALUES
(2, NULL, 0, 'Beach View', 'Beach View.jpg', '', NULL, 0, 'image/jpeg', '/uploads/Beach View.jpg', 0, 1, 2, NULL, 'attachment', '2011-08-29 21:18:45', '2011-08-29 21:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE IF NOT EXISTS `merchants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `about_us` text COLLATE utf8_unicode_ci,
  `website` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_reviews` text COLLATE utf8_unicode_ci,
  `business_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `business_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `created`, `modified`, `about_us`, `website`, `business_reviews`, `business_name`, `city`, `postal_code`, `address`, `second_address`, `user_id`, `state`, `first_name`, `last_name`, `phone`, `country_id`, `business_type_id`) VALUES
(11, '2011-04-14 18:17:51', '2011-06-07 19:36:35', 'We are a fantastic company', 'http://www.test.com', 'They are great!', 'Awesome Get Aways', 'Oakland', '937891', '788 Nevah!', 'My 2nd address', 21, 'CA', '', '', '', 1, 0),
(13, '2011-06-16 19:14:24', '2011-07-19 23:21:19', 'We are...the B Bizzle!', 'bbizzle.com', 'They''re bizzlin!', 'The B Bizzle', 'San Francico', '94618', '6616 Ave', '', 24, '', 'Buster', 'Blackmail', '+1 01 23 490', 1, 2),
(14, '2011-07-25 19:14:15', '2011-07-25 19:14:15', NULL, 'test', NULL, 'Charlie Company', 'Camptown', '94661', '722 C St', '727 A', 26, 'CA', 'Charlie', 'Roth', '805-234-4944', 1, 1),
(15, '2011-10-11 18:52:23', '2011-10-11 18:52:23', NULL, '', NULL, 'David Test ', 'Oakland', '94618', '28 Test', '', 47, 'CA', 'David', 'Roth', '88', 1, 1),
(16, '2011-10-12 16:12:19', '2011-10-31 10:54:48', NULL, 'www.traveltipping.com', NULL, 'Testing', 'San Francisco', '94118', '547 5th Ave', '', 48, 'California', 'Scott', 'Blankenship', '7604294209', 1, 2),
(17, '2011-10-13 18:05:47', '2011-10-13 18:05:47', NULL, '123.com', NULL, 'Testing 2', '123', '12345', '123', '', 50, '123', '123', '123', '2143', 1, 1),
(18, '2011-10-25 23:36:16', '2011-10-25 23:36:16', NULL, 'asdf.com', NULL, 'asdf', 'asdf', 'asdf', 'adsf', 'asdf', 57, 'asdf', 'asdf', 'asdf', 'asdf', 1, 1),
(19, '2011-10-26 15:18:34', '2011-10-26 15:18:34', NULL, 'wer.com', NULL, 'testing', 'testing', 'testing', 'testing', '', 60, 'testing', 'testing', 'testing', '1324211', 1, 1),
(20, '2011-10-27 15:07:54', '2011-10-27 15:07:54', NULL, '', NULL, 'David Test', 'Oakland', '', '1711 Manila', '', 61, '', 'David', 'Roth', '445992331', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE IF NOT EXISTS `passengers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  `deal_purchase_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `created`, `modified`, `first_name`, `last_name`, `birthday`, `country_id`, `is_primary`, `deal_purchase_id`) VALUES
(1, '2011-07-16 20:16:07', '2011-07-16 20:16:07', 'Josh', 'Maas-Howard', '2005-07-16', 1, 1, 37),
(3, '2011-07-16 20:17:15', '2011-07-16 20:17:15', 'Tessa', 'Strauss', '1997-11-08', 1, 1, 38),
(4, '2011-07-23 19:12:05', '2011-07-23 19:12:05', 'Jason', 'Roth', '1991-07-23', 1, 0, 37),
(5, '2011-08-06 19:17:56', '2011-08-06 19:17:56', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 0),
(6, '2011-08-06 19:55:58', '2011-08-06 19:55:58', '4ichael2', '4yers', '0000-00-00', 0, NULL, 0),
(7, '2011-08-06 20:02:52', '2011-08-06 20:02:52', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 46),
(8, '2011-08-07 15:37:04', '2011-08-07 15:37:04', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 47),
(9, '2011-08-07 15:38:15', '2011-08-07 15:38:15', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 48),
(10, '2011-08-15 20:49:14', '2011-08-15 20:49:14', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 49),
(11, '2011-08-15 20:50:13', '2011-08-15 20:50:13', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 50),
(12, '2011-08-15 21:16:21', '2011-08-15 21:16:21', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 51),
(13, '2011-08-15 21:33:26', '2011-08-15 21:33:26', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 52),
(14, '2011-08-15 21:37:44', '2011-08-15 21:37:44', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 53),
(15, '2011-08-15 22:17:24', '2011-08-15 22:17:24', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 54),
(16, '2011-09-29 15:41:26', '2011-09-29 15:41:26', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 1),
(17, '2011-09-29 16:47:54', '2011-09-29 16:47:54', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 2),
(18, '2011-09-29 16:49:56', '2011-09-29 16:49:56', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 3),
(19, '2011-09-29 19:39:23', '2011-09-29 19:39:23', 'Michael2', 'Myers', '0000-00-00', 0, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `confirmation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `created`, `modified`, `user_id`, `confirmation`) VALUES
(2, '2011-10-20', '2011-10-20', 50, '2917bb4e0e'),
(3, '2011-10-22', '2011-10-22', 50, 'f5af473678'),
(4, '2011-10-25', '2011-10-25', 47, '73ce20f30a'),
(5, '2011-10-25', '2011-10-25', 50, '505dda82d2'),
(6, '2011-10-27', '2011-10-27', 61, 'b8c48679df'),
(7, '2011-10-31', '2011-10-31', 60, '0eb9590856'),
(8, '2011-10-31', '2011-10-31', 60, '62a01b38de'),
(9, '2011-11-01', '2011-11-01', 50, '2f97f226fa'),
(10, '2011-11-01', '2011-11-01', 22, 'e5d50cbb75'),
(11, '2011-11-01', '2011-11-01', 50, '5d6c7d536a'),
(12, '2011-11-01', '2011-11-01', 47, '1122e2802a'),
(13, '2011-11-01', '2011-11-01', 47, 'b5da6fdb64'),
(14, '2011-11-01', '2011-11-01', 47, '5e1b5b02eb'),
(15, '2011-11-01', '2011-11-01', 47, '09e3b64dba'),
(16, '2011-11-01', '2011-11-01', 22, '410b3d3439');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `created`, `modified`, `name`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'North America & Carribean'),
(2, '2011-06-09 20:52:06', '2011-06-09 20:52:06', 'Latin America'),
(3, '2011-06-09 20:52:46', '2011-06-09 20:52:46', 'Europe'),
(4, '2011-06-09 20:53:26', '2011-06-09 20:53:26', 'Africa & Arabia'),
(5, '2011-06-09 20:53:39', '2011-06-09 20:53:39', 'Asia'),
(6, '2011-06-09 20:53:53', '2011-06-09 20:53:53', 'Oceania');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_types`
--

CREATE TABLE IF NOT EXISTS `reservation_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reservation_types`
--

INSERT INTO `reservation_types` (`id`, `created`, `modified`, `name`) VALUES
(1, '2011-06-14 08:19:50', '2011-06-14 08:19:50', 'Fixed Length'),
(2, '2011-06-14 08:20:03', '2011-06-14 08:20:03', 'Variable Length'),
(3, '2011-06-14 08:20:11', '2011-06-14 08:20:11', 'Set Start and End');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `updated`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', '2009-04-05 00:10:34'),
(5, 'Merchant', 'merchant', '2011-06-16 19:12:49', '2011-06-16 19:12:49'),
(6, 'Traveler', 'traveler', '2011-06-16 19:27:10', '2011-06-16 19:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `set_trip_durations`
--

CREATE TABLE IF NOT EXISTS `set_trip_durations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `num_availabile` int(11) NOT NULL,
  `deal_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `set_trip_durations`
--

INSERT INTO `set_trip_durations` (`id`, `created`, `modified`, `start_date`, `end_date`, `num_availabile`, `deal_id`) VALUES
(1, '2011-08-28 16:03:02', '2011-08-28 16:03:02', '2011-08-28', '2011-09-05', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `created`, `modified`, `name`, `country_id`) VALUES
(1, '2011-04-11 21:52:08', '2011-04-11 21:52:08', 'California', 1),
(2, '2011-04-11 21:52:20', '2011-04-11 21:52:20', 'Arizona', 1),
(3, '2011-04-11 21:52:33', '2011-04-11 21:52:33', 'Michoacan', 2),
(4, '2011-04-11 21:52:43', '2011-04-11 21:52:43', 'Chiapas', 2),
(5, '2011-04-11 22:22:13', '2011-04-11 22:22:13', 'Quebec', 3);

-- --------------------------------------------------------

--
-- Table structure for table `travelers`
--

CREATE TABLE IF NOT EXISTS `travelers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `is_male` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `state_id` bigint(20) unsigned DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `travelers`
--

INSERT INTO `travelers` (`id`, `created`, `modified`, `user_id`, `is_male`, `birthday`, `state_id`, `postal_code`, `first_name`, `last_name`) VALUES
(3, '2011-04-26 08:23:29', '2011-04-26 08:38:23', 13, 0, '2011-04-26', 1, '94618', 'Bria', 'Gentilucci'),
(8, '2011-04-26 08:42:30', '2011-04-26 08:43:49', 14, 0, '2011-04-26', 1, '94618', 'Jessie', 'Strauss'),
(9, '2011-04-26 21:31:56', '2011-04-26 21:31:56', 15, 1, '2011-04-26', 1, '94618', 'David', 'Roth'),
(10, '2011-04-28 08:17:00', '2011-04-28 08:17:00', 16, 1, '2011-04-28', 1, '93618', 'Testy', 'tester'),
(11, '2011-04-28 18:54:15', '2011-04-28 19:41:53', 17, 1, '2011-04-28', 1, '95612', 'David', 'Roth'),
(12, '2011-04-28 19:42:16', '2011-04-28 19:42:16', 18, 1, '2011-04-28', 1, '94618', 'Faker', 'Roth'),
(13, '2011-06-14 08:31:52', '2011-06-29 20:27:15', 22, 1, '2011-06-14', 1, '9412', 'Michael2', 'Myers'),
(14, '2011-07-18 21:01:59', '2011-07-18 21:01:59', 25, NULL, NULL, NULL, NULL, 'David', 'Roth'),
(15, '2011-07-28 07:31:35', '2011-07-28 07:31:35', 27, NULL, NULL, NULL, NULL, 'AJAX', 'Test'),
(16, '2011-07-28 08:29:46', '2011-07-28 08:29:46', 28, NULL, NULL, NULL, NULL, 'Ajax2', 'Test2'),
(17, '2011-07-28 08:33:10', '2011-07-28 08:33:10', 29, NULL, NULL, NULL, NULL, 'Redirect', 'Test'),
(18, '2011-07-28 08:33:58', '2011-07-28 08:33:58', 30, NULL, NULL, NULL, NULL, 'Redirect2', 'Test2'),
(19, '2011-07-28 19:41:09', '2011-07-28 19:41:09', 31, NULL, NULL, NULL, NULL, 'Ajax3', 'test3'),
(20, '2011-07-28 19:41:33', '2011-07-28 19:41:33', 32, NULL, NULL, NULL, NULL, 'Ajax3', 'test3'),
(21, '2011-07-28 19:47:04', '2011-07-28 19:47:04', 33, NULL, NULL, NULL, NULL, 'Ajax4', 'Test4'),
(22, '2011-07-28 20:18:07', '2011-07-28 20:18:07', 34, NULL, NULL, NULL, NULL, 'Test6', 'Ajax'),
(23, '2011-07-28 20:19:26', '2011-07-28 20:19:26', 35, NULL, NULL, NULL, NULL, 'Bria2', 'Bria3'),
(24, '2011-07-30 12:56:29', '2011-07-30 12:56:29', 36, NULL, NULL, NULL, NULL, 'Test9', '99'),
(25, '2011-07-30 13:14:28', '2011-07-30 13:14:28', 37, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2011-07-30 13:14:30', '2011-07-30 13:14:30', 38, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2011-07-30 13:17:06', '2011-07-30 13:17:06', 39, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2011-07-30 13:41:04', '2011-07-30 13:41:04', 40, NULL, NULL, NULL, NULL, 'jkl', 'jkl'),
(29, '2011-07-30 13:58:40', '2011-07-30 13:58:40', 41, NULL, NULL, NULL, NULL, 'jkl;', 'jkl'),
(30, '2011-07-30 14:01:29', '2011-07-30 14:01:29', 42, NULL, NULL, NULL, NULL, 'ajkl;', 'jkl;'),
(31, '2011-07-30 18:19:39', '2011-07-30 18:19:39', 43, NULL, NULL, NULL, NULL, 'ajkl;sl;', 'jkla'),
(32, '2011-09-15 21:04:04', '2011-09-15 21:14:34', 44, NULL, NULL, NULL, NULL, 'Scott', 'Blankenship'),
(33, '2011-09-28 14:50:55', '2011-09-28 14:50:55', 45, NULL, NULL, NULL, NULL, 'abc', 'abc'),
(34, '2011-10-11 14:54:09', '2011-10-11 14:54:09', 46, NULL, NULL, NULL, NULL, 'nancy ', 'drew'),
(35, '2011-10-12 17:24:58', '2011-10-16 17:02:55', 49, NULL, NULL, NULL, NULL, 'Scott', 'Blankenship'),
(36, '2011-10-22 12:27:59', '2011-10-22 12:27:59', 51, NULL, NULL, NULL, NULL, 'scott', 'adsf'),
(37, '2011-10-22 12:28:36', '2011-10-22 12:28:36', 52, NULL, NULL, NULL, NULL, 'scott', 'adsf'),
(38, '2011-10-22 12:28:51', '2011-10-22 12:28:51', 53, NULL, NULL, NULL, NULL, 'scott', 'adsf'),
(39, '2011-10-22 12:31:14', '2011-10-22 12:31:14', 54, NULL, NULL, NULL, NULL, 'test', 'test'),
(40, '2011-10-22 21:56:51', '2011-10-22 21:56:51', 55, NULL, NULL, NULL, NULL, 'Test', 'test'),
(41, '2011-10-25 20:54:52', '2011-10-25 20:54:52', 56, NULL, NULL, NULL, NULL, 'testing', 'testing'),
(42, '2011-10-25 23:44:03', '2011-10-25 23:44:03', 58, NULL, NULL, NULL, NULL, 'testing2@traveltipping.com', 'Test'),
(43, '2011-10-26 15:07:39', '2011-10-26 15:07:39', 59, NULL, NULL, NULL, NULL, 'Test', 'test'),
(44, '2011-10-31 10:51:07', '2011-10-31 10:51:46', 62, NULL, NULL, NULL, NULL, 'Scott', 'Blankenship');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `created`) VALUES
(20, 1, 'aa361d06c20a989716f6747d0041a47f90bbf920', 'Admin', 'admin@tt.com', '', '', '', '', '', 1, '2011-05-27 23:49:06', '2011-05-27 23:49:06'),
(22, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'traveler@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-06-29 20:27:15', '2011-06-14 08:31:52'),
(24, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'merchant@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-19 23:21:19', '2011-06-16 19:14:24'),
(26, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'merchant2@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-25 19:14:15', '2011-07-25 19:14:15'),
(27, 6, '61cb4a4e604b10126eddc44ae41bb86a287d1044', '', 'ajax@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 07:31:35', '2011-07-28 07:31:35'),
(28, 6, '61cb4a4e604b10126eddc44ae41bb86a287d1044', '', 'ajax2@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 08:29:46', '2011-07-28 08:29:46'),
(29, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'redirect@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 08:33:10', '2011-07-28 08:33:10'),
(30, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'test2@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 08:33:58', '2011-07-28 08:33:58'),
(31, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'ajax3@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 19:41:08', '2011-07-28 19:41:08'),
(32, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'ajax4@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 19:41:33', '2011-07-28 19:41:33'),
(33, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'ajax5@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 19:47:04', '2011-07-28 19:47:04'),
(34, 6, 'ca4a9a46c5432c268901af94f6ed3217c7e16dff', '', 'test6@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 20:18:07', '2011-07-28 20:18:07'),
(35, 6, '12f20b2117fe7327adc5fb5f441f97b286d63979', '', 'briamh@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-28 20:19:26', '2011-07-28 20:19:26'),
(36, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', '99@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-30 12:56:29', '2011-07-30 12:56:29'),
(37, 6, '', '', '', NULL, '', NULL, NULL, '0', 1, '2011-07-30 13:14:28', '2011-07-30 13:14:28'),
(38, 6, '', '', '', NULL, '', NULL, NULL, '0', 1, '2011-07-30 13:14:30', '2011-07-30 13:14:30'),
(39, 6, '', '', '', NULL, '', NULL, NULL, '0', 1, '2011-07-30 13:17:06', '2011-07-30 13:17:06'),
(40, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'jkl@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-30 13:41:04', '2011-07-30 13:41:04'),
(41, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', '2jlk2@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-30 13:58:40', '2011-07-30 13:58:40'),
(42, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'jklajklz@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-30 14:01:29', '2011-07-30 14:01:29'),
(43, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'tttt@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-07-30 18:19:39', '2011-07-30 18:19:39'),
(44, 6, 'cd11717833d5243f362d5247d2dd5dc4c06f1225', '', 'swblankenship@gmail.com', NULL, '', NULL, NULL, '0', 1, '2011-09-15 21:14:34', '2011-09-15 21:04:03'),
(45, 6, '5d885b5a432749bfce13c968252c3d43fce736c5', '', 'abc@yahoo.com', NULL, '', NULL, NULL, '0', 1, '2011-09-28 14:50:55', '2011-09-28 14:50:55'),
(46, 6, 'c5da7f624873d451a00b03bd01fced5a91a1d2b1', '', 'ndrew@yahoo.com', NULL, '', NULL, NULL, '0', 1, '2011-10-11 14:54:09', '2011-10-11 14:54:09'),
(47, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'dave@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-11 18:52:23', '2011-10-11 18:52:23'),
(48, 5, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'swblank10@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-31 10:54:48', '2011-10-12 16:12:19'),
(49, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'scott@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-16 17:02:55', '2011-10-12 17:24:58'),
(50, 5, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'swblank10@yahoo.com', NULL, '', NULL, NULL, '0', 1, '2011-10-13 18:05:47', '2011-10-13 18:05:47'),
(51, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'contact@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-22 12:27:59', '2011-10-22 12:27:59'),
(52, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'contact@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-22 12:28:36', '2011-10-22 12:28:36'),
(53, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'testing@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-22 12:28:51', '2011-10-22 12:28:51'),
(54, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'testing1@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-22 12:31:14', '2011-10-22 12:31:14'),
(55, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testing@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-22 21:56:51', '2011-10-22 21:56:51'),
(56, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'testing1@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-25 20:54:52', '2011-10-25 20:54:52'),
(57, 5, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'asdf@asdf.com', NULL, '', NULL, NULL, '0', 1, '2011-10-25 23:37:06', '2011-10-25 23:36:16'),
(58, 6, '7846ebacd0d279e122feed8913cd445353b8367b', '', 'testing2@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-25 23:44:03', '2011-10-25 23:44:03'),
(59, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'careers@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-26 15:07:39', '2011-10-26 15:07:39'),
(60, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'press@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-26 15:18:34', '2011-10-26 15:18:34'),
(61, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'mr.roth.school@gmail.com', NULL, '', NULL, NULL, '0', 1, '2011-10-27 15:07:54', '2011-10-27 15:07:54'),
(62, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'asdfasdadsf@asdfadsfasdf.com', NULL, '', NULL, NULL, '0', 1, '2011-10-31 10:51:46', '2011-10-31 10:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE IF NOT EXISTS `venues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `business_type_id` bigint(20) unsigned NOT NULL,
  `merchant_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `created`, `modified`, `name`, `email`, `website`, `address1`, `address2`, `city`, `state`, `postal_code`, `country_id`, `business_type_id`, `merchant_id`) VALUES
(1, '2011-07-31 14:02:51', '2011-07-31 14:02:51', 'calistogahotel', 'contact@calistogahotel.com', 'www.calistogahotel.ex', '', '', '', '', '', 1, 0, 13),
(2, '2011-07-31 16:25:17', '2011-10-22 21:46:30', 'Cruise Mexico', 'info@cruisemexico.com', 'www.cruisemexico.ex', '', '', '', '', '', 1, 1, 13),
(3, '2011-07-31 16:25:52', '2011-07-31 16:25:52', 'Peru Hotel', 'contact@peruhotel.com', 'www.peruhotel.ex', '', '', '', '', '', 1, 0, 13),
(4, '2011-07-31 19:19:34', '2011-07-31 19:19:34', 'Ko Phi Phi', 'contact@kophiphi.com', 'www.kophiphi.ex', '', '', '', '', '', 1, 0, 13),
(5, '2011-07-31 20:39:43', '2011-07-31 20:39:43', 'Fiji Cottage', 'service@fijicottage.com', 'www.fijicottage.ex', '', '', '', '', '', 1, 0, 13),
(6, '2011-07-31 20:40:08', '2011-07-31 20:40:08', 'Tahiti Villa', 'service@tahitivilla.com', 'www.tahitivilla.ex', '', '', '', '', '', 1, 0, 13),
(7, '2011-08-01 08:29:21', '2011-08-01 08:29:21', 'Greek Bed & Breakfast', 'contact@greekbnb.com', 'www.greekbnb.ex', '', '', '', '', '', 1, 0, 13),
(8, '2011-08-01 08:29:54', '2011-10-31 11:03:21', 'Italy Villa', 'contact@italyvilla.com', 'www.italyvilla.ex', '', '', '', '', '', 1, 1, 13),
(9, '2011-08-02 20:27:13', '2011-10-31 11:02:57', 'Cambodia Lodge', 'contact@cambodialodge.com', 'www.cambodialodge.ex', '', '', '', '', '', 1, 1, 13),
(10, '2011-08-02 20:50:21', '2011-08-02 20:50:21', 'Calistoga Hotel', 'contact@calistogahotel.com', 'www.calistogahotel.ex', '', '', '', '', '', 1, 0, 13),
(11, '2011-10-12 16:21:32', '2011-10-12 16:21:32', '', '', '', '', '', '', '', '', 1, 1, 16),
(12, '2011-10-12 16:29:50', '2011-10-12 16:29:50', 'Name Testing', '', '', '', '', '', '', '', 1, 1, 16),
(13, '2011-10-16 05:52:25', '2011-10-16 05:52:25', 'Test', 'email@email.com', '', '', '', '', '', '94441', 1, 1, 15),
(14, '2011-10-17 20:09:53', '2011-10-17 20:09:53', '', '', '', '', '', '', '', '', 1, 1, 16),
(15, '2011-10-25 23:48:24', '2011-10-27 11:45:06', 'Testing Name of Business', 'swblank10@yahoo.com', 'asdf.com', '547 5th Ave', '547 5th Ave', 'San Francisco', 'California', '94118', 1, 2, 17),
(16, '2011-10-26 15:25:48', '2011-10-27 11:23:27', 'Testing busienss', 'careers@traveltipping.com', 'test.com', 'Testing', '', 'test', 'test', 'test', 1, 1, 19),
(17, '2011-10-27 11:33:23', '2011-10-27 11:33:23', 'asdf', 'asdf', 'asdfc', 'asdf', 'asdf', 'afd', 'asdf', 'asdf', 1, 1, 17),
(18, '2011-10-27 15:08:29', '2011-10-27 15:08:59', 'David''s Deals', 'mr.roth.school@gmail.com', '', 'Test', '', 'Oakland', 'CA', '', 1, 1, 20),
(19, '2011-10-29 20:24:16', '2011-10-31 10:59:32', 'testing press@', 'testing press@', 'testing press@', 'testing press@', 'testing press@', 'testing press@', 'testing press@', 'testing press@', 1, 1, 19);
