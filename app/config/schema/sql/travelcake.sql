-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2011 at 11:55 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travelcake`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL auto_increment,
  `parent_id` int(10) default NULL,
  `model` varchar(255) default NULL,
  `foreign_key` int(10) default NULL,
  `alias` varchar(255) default NULL,
  `lft` int(10) default NULL,
  `rght` int(10) default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(10) NOT NULL auto_increment,
  `parent_id` int(10) default NULL,
  `model` varchar(255) default NULL,
  `foreign_key` int(10) default NULL,
  `alias` varchar(255) default NULL,
  `lft` int(10) default NULL,
  `rght` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, 'Admin', 1, 4),
(2, NULL, 'Role', 5, 'Merchant', 5, 20),
(3, NULL, 'Role', 6, 'Traveler', 21, 52),
(4, 1, 'User', 20, 'admin@tt.com', 2, 3),
(5, 3, 'User', 27, 'ajax@tt.com', 22, 23),
(6, 3, 'User', 28, 'ajax2@tt.com', 24, 25),
(7, 3, 'User', 31, 'ajax3@tt.com', 26, 27),
(8, 3, 'User', 32, 'ajax4@tt.com', 28, 29),
(9, 3, 'User', 33, 'ajax5@tt.com', 30, 31),
(10, 3, 'User', 35, 'briamh@tt.com', 32, 33),
(11, 2, 'User', 44, 'dave@traveltipping.com', 6, 7),
(12, 2, 'User', 51, 'davejroth@gmail.com', 8, 9),
(13, 2, 'User', 24, 'merchant@tt.com', 10, 11),
(14, 2, 'User', 26, 'merchant2@tt.com', 12, 13),
(15, 3, 'User', 52, 'mr.roth.school@gmail.com', 34, 35),
(16, 3, 'User', 29, 'redirect@tt.com', 36, 37),
(17, 3, 'User', 30, 'test2@tt.com', 38, 39),
(18, 3, 'User', 34, 'test6@tt.com', 40, 41),
(19, 2, 'User', 50, 'tester@test.com', 14, 15),
(20, 3, 'User', 22, 'traveler@tt.com', 42, 43),
(21, 3, 'User', 68, 'newtraveler@tt.com', 44, 45),
(22, 2, 'User', 69, 'newmerchant8@tt.com', 16, 17),
(23, 2, 'User', 70, 'newmerchant81@tt.com', 18, 19),
(24, 3, 'User', 71, 'test1213@tt.com', 46, 47),
(25, 3, 'User', 72, 'ohman@tt.com', 48, 49),
(26, 3, 'User', 73, 'mr.roth.school@gmail.com', 50, 51);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL auto_increment,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL default '0',
  `_read` varchar(2) NOT NULL default '0',
  `_update` varchar(2) NOT NULL default '0',
  `_delete` varchar(2) NOT NULL default '0',
  PRIMARY KEY  (`id`),
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  `state_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  `title` varchar(250) collate utf8_unicode_ci NOT NULL,
  `slug` varchar(250) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `fine_print` text collate utf8_unicode_ci,
  `highlights` text collate utf8_unicode_ci,
  `venue_info` text collate utf8_unicode_ci,
  `getting_there` text collate utf8_unicode_ci,
  `things_to_do` text collate utf8_unicode_ci,
  `things_to_do2` text collate utf8_unicode_ci,
  `things_to_do3` text collate utf8_unicode_ci,
  `things_to_do4` text collate utf8_unicode_ci,
  `things_to_do5` text collate utf8_unicode_ci,
  `destination` varchar(250) collate utf8_unicode_ci default NULL,
  `original_price` double(10,2) unsigned default NULL,
  `discounted_price` double(10,2) unsigned default NULL,
  `deal_live` date default NULL,
  `deal_close` date default NULL,
  `deal_valid` date default NULL,
  `deal_expire` date default NULL,
  `is_timed` tinyint(1) default NULL,
  `max_purchases` int(11) unsigned default NULL,
  `max_nights` int(11) unsigned default NULL,
  `average_reservations` int(11) NOT NULL,
  `flat_fee` double(10,2) default NULL,
  `comission_percentage` double(10,2) unsigned default NULL,
  `private_note` text collate utf8_unicode_ci,
  `purchase_pad` int(11) NOT NULL default '0',
  `image1` varchar(250) collate utf8_unicode_ci default NULL,
  `image2` varchar(250) collate utf8_unicode_ci default NULL,
  `image3` varchar(250) collate utf8_unicode_ci default NULL,
  `image4` varchar(250) collate utf8_unicode_ci default NULL,
  `image5` varchar(250) collate utf8_unicode_ci default NULL,
  `image6` varchar(250) collate utf8_unicode_ci default NULL,
  `deal_status_id` bigint(20) default NULL,
  `reservation_type_id` bigint(20) unsigned NOT NULL,
  `venue_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `created`, `modified`, `name`, `title`, `slug`, `description`, `fine_print`, `highlights`, `venue_info`, `getting_there`, `things_to_do`, `things_to_do2`, `things_to_do3`, `things_to_do4`, `things_to_do5`, `destination`, `original_price`, `discounted_price`, `deal_live`, `deal_close`, `deal_valid`, `deal_expire`, `is_timed`, `max_purchases`, `max_nights`, `average_reservations`, `flat_fee`, `comission_percentage`, `private_note`, `purchase_pad`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `deal_status_id`, `reservation_type_id`, `venue_id`) VALUES
(2, '2011-07-31 16:32:41', '2011-12-17 11:52:44', 'Mexican Cruise', '35% off 7 night Mexican cruise to Cancun ', '', '<p>The moment you reach your first stop on your cruise, you&rsquo;ll understand why it&rsquo;s one of our top favorites. With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top level of the ship with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, the chef insists that everyone try their local style cerviche.</p>\r\n<p>Enjoy the solitude or go out on the town, as the ship has everything you could imagine. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with other passengers. &nbsp;There are multiple restaurants, bars, swimming pools, spas, theaters and dance halls. &nbsp;They even have a rock climbing gym to stay fit.</p>\r\n<p>If you have any additional requests or needs, your captain and crew encourage you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Visit the best beaches of Mexico</li>\r\n<li>All food and drinks included</li>\r\n<li>Complementary room upgrade</li>\r\n<li>Free onboard internet connection</li>\r\n</ul>', 'With over 100 members staff members onboard your ship, you will be pampered in the best class service possible.\r\n', '<p>Plane</p>\r\n<p>The best way to get to your departure port is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from the ship&rsquo;s pier. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p>Train</p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p>Other</p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;Call them directly and they&rsquo;ll be happy to make all the arrangements.</p>', '<div class="slide first_slide"><img src="http://demo.traveltipping.com/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Lay on the whitest and cleanest beaches you&rsquo;ve ever seen. Relax, sleep and get a tan.</p>\r\n</div>\r\n</div>', '<div class="slide second_slide"><img src="http://demo.traveltipping.com/uploads/Image%203.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 2 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It&rsquo;s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide third_slide"><img src="http://demo.traveltipping.com/uploads/Image%201.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 3 </strong></p>\r\n<p>Hike to the top of this Elnis Mountain. You&rsquo;ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide fourth_slide"><img src="http://demo.traveltipping.com/uploads/Image%204.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 4 </strong></p>\r\n<p>Want to taste the best seafood known to man? Try the Fresh Restaurant to appease your saltwater appetite. This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide fifth_slide"><img src="http://demo.traveltipping.com/uploads/Image%207.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 5 </strong></p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night. There&rsquo;s live music, dancing. It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', 'Cancun', 1000.00, 650.00, '2011-07-16', '2012-07-31', '2011-09-02', '2011-09-24', 1, 45, 5, 12, NULL, 15.00, '', 14, 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 4, 1, 2),
(3, '2011-07-31 19:24:57', '2011-10-03 20:43:26', 'Getaway in Israel', '45% one week stay on the most beautiful island in Thailand', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites.&nbsp;&nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away.&nbsp; It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life.&nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor.&nbsp; They serve the best specialties dishes of the region.&nbsp; In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. You can stay out all night, dancing, eating, drinking and mingling with friendly locals. It''s also well situated between two public transit stops for those taking public transportation. You''ll find a grocery store two blocks away and the beach one step from your room.</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world''s most ancient cities</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two Thai Massages</li>\r\n<li>Includes dinner for two at the Thai Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.  If you need to make any special requests, they''ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. Once landed you can take the 45 bus line which will stop within 500 feet from where you''re staying. You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. The closest stop is the Termini station. Once there, you can take a short cab ride. It should be less than $10. Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. You can also rent a car, which will run about $50 a day - more if you want to get better insurance coverage.</p>', '<div class="slide"><img src="http://demo.traveltipping.com/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Title 1 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Title 1\r\n</strong>\r\n</p>\r\n<p> Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%206.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Title 1\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit the world''s largest petrified wood forest.  You''ll find an entire groove of petrified trees dating back from the time dinosaurs roamed the earth.</p>\r\n</div>\r\n</div>', 'Cambodia', 124.00, 45.00, '2012-07-31', '2012-09-11', '2011-11-01', '2012-02-01', 0, 250, 3, 0, NULL, 10.00, '', 0, 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 2, 1, 4),
(4, '2011-07-31 20:28:08', '2011-11-03 14:54:27', 'Hotel in Peru', '50% off 4 night stay in Peru ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p>Plane</p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p>&nbsp;</p>\r\n<p>Train</p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p>&nbsp;</p>\r\n<p>Other</p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide"><img src="http://demo.traveltipping.com/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide second_slide"><img src="http://demo.traveltipping.com/uploads/Image%203.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 2. Things To Do Number 2 </strong></p>\r\n<p>Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide third_slide"><img src="http://demo.traveltipping.com/uploads/Image%201.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 3. Things To Do Number 3 </strong></p>\r\n<p>Want to taste the best seafood known to man? Try the Fresh Restaurant to appease your saltwater appetite. This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide fourth_slide"><img src="http://demo.traveltipping.com/uploads/Image%204.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 4. Things To Do Number 4 </strong></p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night. There''s live music, dancing. It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', '<div class="slide fifth_slide"><img src="http://demo.traveltipping.com/uploads/Image%207.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 5. Things To Do Number 5 </strong></p>\r\n<p>Visit the world''s largest petrified wood forest. You''ll find an entire groove of petrified trees dating back from the time dinosaurs roamed the earth.</p>\r\n</div>\r\n</div>', 'Peru', 520.00, 260.00, '2011-07-31', '2011-09-12', '2011-09-27', '2011-12-31', 0, 9, 5, 0, NULL, 15.00, '', 0, 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Woman%20on%20the%20Beach.jpg', 5, 2, 3),
(5, '2011-07-31 20:44:04', '2011-11-03 15:23:47', 'Fiji Cottage', '75% cottage on the white sands of Fiji ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>One week stay on Fiji&rsquo;s main island</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two oceanside massages</li>\r\n<li>Includes dinner for two at the Fresh Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '', '<div class="slide second_slide"><img src="http://demo.traveltipping.com/uploads/Image%203.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 2. Things To Do Number 2 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide third_slide"><img src="http://demo.traveltipping.com/uploads/Image%201.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 3. Things To Do Number 3 </strong></p>\r\n<p>Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide fourth_slide"><img src="http://demo.traveltipping.com/uploads/Image%204.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 4. Things To Do Number 4 </strong></p>\r\n<p>Want to taste the best seafood known to man? Try the Fresh Restaurant to appease your saltwater appetite. This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '', 'Fiji', 2500.00, 625.00, '2011-07-31', '2011-12-31', '2011-09-30', '2012-03-09', 1, 80, 7, 0, NULL, 15.00, '', 20, 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/venice.png', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 4, 1, 5),
(6, '2011-07-31 21:03:52', '2011-07-31 21:03:52', 'Tahiti Villa', '40% the most amazing villa in the world ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p><span style="font-family: mceinline;">Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</span></p>\r\n<p><span style="font-family: mceinline;">Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</span></p>\r\n<p><span style="font-family: mceinline;">If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</span></p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>One week stay on Tahiti&rsquo;s main island</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two oceanside massages</li>\r\n<li>Includes dinner for two at the Fresh Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family. &nbsp;If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Tahiti', 190.00, 114.00, '2011-07-31', '2011-09-20', '2011-10-18', '2011-12-31', 1, 30, 8, 0, NULL, 15.00, '', 0, 'http://demo.traveltipping.com/uploads/Woman%20on%20the%20Beach.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 5, 1, 6),
(7, '2011-08-01 08:34:23', '2011-08-01 08:34:23', 'Greek Isle Hotel', '55% off Greek isle hotel with amazing views ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '\r\n<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n', '\r\n</p>\r\n</div>\r\n</div>\r\n\r\n<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Greece', 150.00, 68.00, '2011-08-01', '2011-12-30', '2011-12-20', '2012-12-01', 1, 75, 14, 0, NULL, 15.00, '', 0, 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Woman%20on%20the%20Beach.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 4, 1, 7),
(8, '2011-08-01 18:44:11', '2011-08-01 18:44:11', 'Tuscany', '42% off hotel in the heart of Tuscany ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '\r\n<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit this ancient coliseum, where gladiators fought for the Roman Empire in 65AD.  It''s only a half mile walk away.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Tuscany', 182.00, 106.00, '2011-08-01', '2011-10-01', '2011-10-01', '2011-12-01', 1, 200, 5, 0, NULL, NULL, '', 0, 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Image%202.jpg', 4, 1, 8),
(9, '2011-08-02 20:32:22', '2011-08-02 20:32:22', 'Asia 3', '68% off 14 day jungle tour of Cambodia ', '', '<p>The moment you reach your first stop on your tour, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>&nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>14 Day tour of Cambodia</li>\r\n<li>Breakfast included</li>\r\n<li>Includes all transportation and accommodation costs</li>\r\n<li>Visit 7 cities and 4 ancient temples</li>\r\n</ul>', '<p>This tour is operated by the Tour Company, and they&rsquo;ve been guiding tours in the country for more than 20 years.</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Cambodia', 4063.00, 1300.00, '2011-08-06', '2012-08-02', '2011-10-02', '2011-11-02', 0, 25, 3, 0, NULL, 10.00, '', 0, 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', '', 4, 1, 9),
(10, '2011-08-02 20:51:53', '2011-08-02 20:51:53', '', '52% off hotel night in California wine country', '', '<p>The moment you reach your first stop on your tour, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>&nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>14 Day tour of Cambodia</li>\r\n<li>Breakfast included</li>\r\n<li>Includes all transportation and accommodation costs</li>\r\n<li>Visit 7 cities and 4 ancient temples</li>\r\n</ul>', '<p>This tour is operated by the Tour Company, and they&rsquo;ve been guiding tours in the country for more than 20 years.</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'California', 105.00, 50.00, '2011-08-09', '2011-08-02', '2011-08-02', '2011-08-02', 0, 100, 6, 0, NULL, 10.00, '', 0, 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', '', 4, 1, 10),
(24, '2011-10-06 17:51:00', '2011-10-06 17:51:00', 'Cronned!', '', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-02', '2011-10-06', '2011-10-06', '2011-10-10', 1, NULL, NULL, 0, NULL, NULL, '', 0, '', '', '', '', '', '', 1, 1, 1),
(26, '2011-10-08 21:47:26', '2011-11-03 19:45:37', 'It''s a great deal', '', '', '', '', '', NULL, '', '', '', '', '', '', NULL, NULL, NULL, '2011-10-08', '2011-11-08', '2011-11-08', '2011-12-08', 1, NULL, NULL, 0, NULL, NULL, '', 0, '', '', '', '', '', '', 2, 1, 11),
(27, '2011-10-12 19:55:42', '2011-10-12 21:51:29', 'Admin created deal', '', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-12', '2012-10-31', '2011-10-12', '2012-12-12', 1, NULL, NULL, 0, NULL, NULL, '', 0, '', '', '', '', '', '', 1, 1, 1),
(28, '2011-10-13 16:30:03', '2011-10-13 16:30:03', '10/13 Deal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '/uploads/default.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 1),
(31, '2011-10-16 14:05:37', '2011-10-16 14:05:37', 'New Venue Deal', 'Extravagant hotel', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 180.00, 40.00, '2011-10-16', '2011-10-16', '2011-11-16', '2012-03-16', 1, 100, 4, 0, NULL, 15.00, '', 0, '/uploads/default.jpg', '', '', '', '', '', 1, 1, 13),
(33, '2011-10-16 15:51:11', '2011-10-16 15:51:11', 'Merchant Initiation Test 2', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '/uploads/default.jpg', NULL, NULL, NULL, NULL, NULL, 3, 0, 15),
(34, '2011-10-22 10:57:26', '2011-10-22 10:57:26', 'Test 4 Deal', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '/uploads/default.jpg', NULL, NULL, NULL, NULL, NULL, 1, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `deals_categories`
--

CREATE TABLE IF NOT EXISTS `deals_categories` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) default NULL,
  `category_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=157 ;

--
-- Dumping data for table `deals_categories`
--

INSERT INTO `deals_categories` (`id`, `created`, `modified`, `deal_id`, `category_id`) VALUES
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(52, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2),
(53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(156, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deals_regions`
--

CREATE TABLE IF NOT EXISTS `deals_regions` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) default NULL,
  `region_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=263 ;

--
-- Dumping data for table `deals_regions`
--

INSERT INTO `deals_regions` (`id`, `created`, `modified`, `deal_id`, `region_id`) VALUES
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 5),
(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 6),
(240, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 29, 1),
(241, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 30, 1),
(242, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 31, 1),
(246, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 2),
(248, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 6),
(249, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 2),
(250, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 3),
(261, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 4),
(262, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `deal_availabilities`
--

CREATE TABLE IF NOT EXISTS `deal_availabilities` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) unsigned default NULL,
  `reservation_date` date default NULL,
  `num_available` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=793 ;

--
-- Dumping data for table `deal_availabilities`
--

INSERT INTO `deal_availabilities` (`id`, `created`, `modified`, `deal_id`, `reservation_date`, `num_available`) VALUES
(1, '2011-10-06 17:52:39', '2011-10-06 17:52:39', 24, '2011-10-06', 11),
(2, '2011-10-06 17:52:39', '2011-10-12 22:12:22', 24, '2011-10-07', 11),
(3, '2011-10-06 17:52:39', '2011-10-06 17:52:39', 24, '2011-10-08', 11),
(4, '2011-10-06 17:52:39', '2011-10-06 17:52:39', 24, '2011-10-09', 11),
(5, '2011-10-06 17:52:39', '2011-10-06 17:52:39', 24, '2011-10-10', 11),
(6, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-08', 10),
(7, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-09', 10),
(8, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-10', 10),
(9, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-11', 10),
(10, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-12', 10),
(11, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-13', 10),
(12, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-14', 10),
(13, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-15', 10),
(14, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-16', 10),
(15, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-17', 10),
(16, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-18', 10),
(17, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-19', 10),
(18, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-20', 10),
(19, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-21', 10),
(20, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-22', 10),
(21, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-23', 10),
(22, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-24', 10),
(23, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-25', 10),
(24, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-26', 10),
(25, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-27', 10),
(26, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-28', 10),
(27, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-29', 10),
(28, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-11-30', 10),
(29, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-12-01', 10),
(30, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-12-02', 10),
(31, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-12-03', 10),
(32, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-12-04', 10),
(33, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-12-05', 10),
(34, '2011-10-08 22:26:40', '2011-10-08 22:26:40', 26, '2011-12-06', 10),
(35, '2011-10-08 22:26:41', '2011-10-08 22:26:41', 26, '2011-12-07', 10),
(36, '2011-10-08 22:26:41', '2011-10-08 22:26:41', 26, '2011-12-08', 10),
(37, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-12', 10),
(38, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-13', 10),
(39, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-14', 10),
(40, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-15', 10),
(41, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-16', 10),
(42, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-17', 10),
(43, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-18', 10),
(44, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-19', 10),
(45, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-20', 10),
(46, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-21', 10),
(47, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-22', 10),
(48, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-23', 10),
(49, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-24', 10),
(50, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-25', 10),
(51, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-26', 10),
(52, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-27', 10),
(53, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-28', 10),
(54, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-29', 10),
(55, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-30', 10),
(56, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-10-31', 10),
(57, '2011-10-12 21:14:33', '2011-10-12 21:14:33', 27, '2011-11-01', 10),
(58, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-02', 10),
(59, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-03', 10),
(60, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-04', 10),
(61, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-05', 10),
(62, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-06', 10),
(63, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-07', 10),
(64, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-08', 10),
(65, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-09', 10),
(66, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-10', 10),
(67, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-11', 10),
(68, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-12', 10),
(69, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-13', 10),
(70, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-14', 10),
(71, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-15', 10),
(72, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-16', 10),
(73, '2011-10-12 21:14:34', '2011-10-12 21:14:34', 27, '2011-11-17', 10),
(74, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-18', 10),
(75, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-19', 10),
(76, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-20', 10),
(77, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-21', 10),
(78, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-22', 10),
(79, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-23', 10),
(80, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-24', 10),
(81, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-25', 10),
(82, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-26', 10),
(83, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-27', 10),
(84, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-28', 10),
(85, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-29', 10),
(86, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-11-30', 10),
(87, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-01', 10),
(88, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-02', 10),
(89, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-03', 10),
(90, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-04', 10),
(91, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-05', 10),
(92, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-06', 10),
(93, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-07', 10),
(94, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-08', 10),
(95, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-09', 10),
(96, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-10', 10),
(97, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-11', 10),
(98, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-12', 10),
(99, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-13', 10),
(100, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-14', 10),
(101, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-15', 10),
(102, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-16', 10),
(103, '2011-10-12 21:14:35', '2011-10-12 21:14:35', 27, '2011-12-17', 10),
(104, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-18', 10),
(105, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-19', 10),
(106, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-20', 10),
(107, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-21', 10),
(108, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-22', 10),
(109, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-23', 10),
(110, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-24', 10),
(111, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-25', 10),
(112, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-26', 10),
(113, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-27', 10),
(114, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-28', 10),
(115, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-29', 10),
(116, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-30', 10),
(117, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2011-12-31', 10),
(118, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-01', 10),
(119, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-02', 10),
(120, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-03', 10),
(121, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-04', 10),
(122, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-05', 10),
(123, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-06', 10),
(124, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-07', 10),
(125, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-08', 10),
(126, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-09', 10),
(127, '2011-10-12 21:14:36', '2011-10-12 21:14:36', 27, '2012-01-10', 10),
(128, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-11', 10),
(129, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-12', 10),
(130, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-13', 10),
(131, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-14', 10),
(132, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-15', 10),
(133, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-16', 10),
(134, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-17', 10),
(135, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-18', 10),
(136, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-19', 10),
(137, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-20', 10),
(138, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-21', 10),
(139, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-22', 10),
(140, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-23', 10),
(141, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-24', 10),
(142, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-25', 10),
(143, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-26', 10),
(144, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-27', 10),
(145, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-28', 10),
(146, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-29', 10),
(147, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-30', 10),
(148, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-01-31', 10),
(149, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-02-01', 10),
(150, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-02-02', 10),
(151, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-02-03', 10),
(152, '2011-10-12 21:14:37', '2011-10-12 21:14:37', 27, '2012-02-04', 10),
(153, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-05', 10),
(154, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-06', 10),
(155, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-07', 10),
(156, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-08', 10),
(157, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-09', 10),
(158, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-10', 10),
(159, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-11', 10),
(160, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-12', 10),
(161, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-13', 10),
(162, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-14', 10),
(163, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-15', 10),
(164, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-16', 10),
(165, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-17', 10),
(166, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-18', 10),
(167, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-19', 10),
(168, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-20', 10),
(169, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-21', 10),
(170, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-22', 10),
(171, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-23', 10),
(172, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-24', 10),
(173, '2011-10-12 21:14:38', '2011-10-12 21:14:38', 27, '2012-02-25', 10),
(174, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-02-26', 10),
(175, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-02-27', 10),
(176, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-02-28', 10),
(177, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-02-29', 10),
(178, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-01', 10),
(179, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-02', 10),
(180, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-03', 10),
(181, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-04', 10),
(182, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-05', 10),
(183, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-06', 10),
(184, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-07', 10),
(185, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-08', 10),
(186, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-09', 10),
(187, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-10', 10),
(188, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-11', 10),
(189, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-12', 10),
(190, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-13', 10),
(191, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-14', 10),
(192, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-15', 10),
(193, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-16', 10),
(194, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-17', 10),
(195, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-18', 10),
(196, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-19', 10),
(197, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-20', 10),
(198, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-21', 10),
(199, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-22', 10),
(200, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-23', 10),
(201, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-24', 10),
(202, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-25', 10),
(203, '2011-10-12 21:14:39', '2011-10-12 21:14:39', 27, '2012-03-26', 10),
(204, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-03-27', 10),
(205, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-03-28', 10),
(206, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-03-29', 10),
(207, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-03-30', 10),
(208, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-03-31', 10),
(209, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-01', 10),
(210, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-02', 10),
(211, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-03', 10),
(212, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-04', 10),
(213, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-05', 10),
(214, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-06', 10),
(215, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-07', 10),
(216, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-08', 10),
(217, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-09', 10),
(218, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-10', 10),
(219, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-11', 10),
(220, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-12', 10),
(221, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-13', 10),
(222, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-14', 10),
(223, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-15', 10),
(224, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-16', 10),
(225, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-17', 10),
(226, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-18', 10),
(227, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-19', 10),
(228, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-20', 10),
(229, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-21', 10),
(230, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-22', 10),
(231, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-23', 10),
(232, '2011-10-12 21:14:40', '2011-10-12 21:14:40', 27, '2012-04-24', 10),
(233, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-04-25', 10),
(234, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-04-26', 10),
(235, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-04-27', 10),
(236, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-04-28', 10),
(237, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-04-29', 10),
(238, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-04-30', 10),
(239, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-01', 10),
(240, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-02', 10),
(241, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-03', 10),
(242, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-04', 10),
(243, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-05', 10),
(244, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-06', 10),
(245, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-07', 10),
(246, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-08', 10),
(247, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-09', 10),
(248, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-10', 10),
(249, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-11', 10),
(250, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-12', 10),
(251, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-13', 10),
(252, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-14', 10),
(253, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-15', 10),
(254, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-16', 10),
(255, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-17', 10),
(256, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-18', 10),
(257, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-19', 10),
(258, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-20', 10),
(259, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-21', 10),
(260, '2011-10-12 21:14:41', '2011-10-12 21:14:41', 27, '2012-05-22', 10),
(261, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-23', 10),
(262, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-24', 10),
(263, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-25', 10),
(264, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-26', 10),
(265, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-27', 10),
(266, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-28', 10),
(267, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-29', 10),
(268, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-30', 10),
(269, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-05-31', 10),
(270, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-01', 10),
(271, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-02', 10),
(272, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-03', 10),
(273, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-04', 10),
(274, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-05', 10),
(275, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-06', 10),
(276, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-07', 10),
(277, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-08', 10),
(278, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-09', 10),
(279, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-10', 10),
(280, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-11', 10),
(281, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-12', 10),
(282, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-13', 10),
(283, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-14', 10),
(284, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-15', 10),
(285, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-16', 10),
(286, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-17', 10),
(287, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-18', 10),
(288, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-19', 10),
(289, '2011-10-12 21:14:42', '2011-10-12 21:14:42', 27, '2012-06-20', 10),
(290, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-21', 10),
(291, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-22', 10),
(292, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-23', 10),
(293, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-24', 10),
(294, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-25', 10),
(295, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-26', 10),
(296, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-27', 10),
(297, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-28', 10),
(298, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-29', 10),
(299, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-06-30', 10),
(300, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-01', 10),
(301, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-02', 10),
(302, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-03', 10),
(303, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-04', 10),
(304, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-05', 10),
(305, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-06', 10),
(306, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-07', 10),
(307, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-08', 10),
(308, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-09', 10),
(309, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-10', 10),
(310, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-11', 10),
(311, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-12', 10),
(312, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-13', 10),
(313, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-14', 10),
(314, '2011-10-12 21:14:43', '2011-10-12 21:14:43', 27, '2012-07-15', 10),
(315, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-16', 10),
(316, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-17', 10),
(317, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-18', 10),
(318, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-19', 10),
(319, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-20', 10),
(320, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-21', 10),
(321, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-22', 10),
(322, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-23', 10),
(323, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-24', 10),
(324, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-25', 10),
(325, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-26', 10),
(326, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-27', 10),
(327, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-28', 10),
(328, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-29', 10),
(329, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-30', 10),
(330, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-07-31', 10),
(331, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-08-01', 10),
(332, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-08-02', 10),
(333, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-08-03', 10),
(334, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-08-04', 10),
(335, '2011-10-12 21:14:44', '2011-10-12 21:14:44', 27, '2012-08-05', 10),
(336, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-06', 10),
(337, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-07', 10),
(338, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-08', 10),
(339, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-09', 10),
(340, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-10', 10),
(341, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-11', 10),
(342, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-12', 10),
(343, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-13', 10),
(344, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-14', 10),
(345, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-15', 10),
(346, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-16', 10),
(347, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-17', 10),
(348, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-18', 10),
(349, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-19', 10),
(350, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-20', 10),
(351, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-21', 10),
(352, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-22', 10),
(353, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-23', 10),
(354, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-24', 10),
(355, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-25', 10),
(356, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-26', 10),
(357, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-27', 10),
(358, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-28', 10),
(359, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-29', 10),
(360, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-30', 10),
(361, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-08-31', 10),
(362, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-09-01', 10),
(363, '2011-10-12 21:14:45', '2011-10-12 21:14:45', 27, '2012-09-02', 10),
(364, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-03', 10),
(365, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-04', 10),
(366, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-05', 10),
(367, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-06', 10),
(368, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-07', 10),
(369, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-08', 10),
(370, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-09', 10),
(371, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-10', 10),
(372, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-11', 10),
(373, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-12', 10),
(374, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-13', 10),
(375, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-14', 10),
(376, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-15', 10),
(377, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-16', 10),
(378, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-17', 10),
(379, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-18', 10),
(380, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-19', 10),
(381, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-20', 10),
(382, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-21', 10),
(383, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-22', 10),
(384, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-23', 10),
(385, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-24', 10),
(386, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-25', 10),
(387, '2011-10-12 21:14:46', '2011-10-12 21:14:46', 27, '2012-09-26', 10),
(388, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-09-27', 10),
(389, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-09-28', 10),
(390, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-09-29', 10),
(391, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-09-30', 10),
(392, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-01', 10),
(393, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-02', 10),
(394, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-03', 10),
(395, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-04', 10),
(396, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-05', 10),
(397, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-06', 10),
(398, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-07', 10),
(399, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-08', 10),
(400, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-09', 10),
(401, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-10', 10),
(402, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-11', 10),
(403, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-12', 10),
(404, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-13', 10),
(405, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-14', 10),
(406, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-15', 10),
(407, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-16', 10),
(408, '2011-10-12 21:14:47', '2011-10-12 21:14:47', 27, '2012-10-17', 10),
(409, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-18', 10),
(410, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-19', 10),
(411, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-20', 10),
(412, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-21', 10),
(413, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-22', 10),
(414, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-23', 10),
(415, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-24', 10),
(416, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-25', 10),
(417, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-26', 10),
(418, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-27', 10),
(419, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-28', 10),
(420, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-29', 10),
(421, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-30', 10),
(422, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-10-31', 10),
(423, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-01', 10),
(424, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-02', 10),
(425, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-03', 10),
(426, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-04', 10),
(427, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-05', 10),
(428, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-06', 10),
(429, '2011-10-12 21:14:48', '2011-10-12 21:14:48', 27, '2012-11-07', 10),
(430, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-08', 10),
(431, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-09', 10),
(432, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-10', 10),
(433, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-11', 10),
(434, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-12', 10),
(435, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-13', 10),
(436, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-14', 10),
(437, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-15', 10),
(438, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-16', 10),
(439, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-17', 10),
(440, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-18', 10),
(441, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-19', 10),
(442, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-20', 10),
(443, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-21', 10),
(444, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-22', 10),
(445, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-23', 10),
(446, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-24', 10),
(447, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-25', 10),
(448, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-26', 10),
(449, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-27', 10),
(450, '2011-10-12 21:14:49', '2011-10-12 21:14:49', 27, '2012-11-28', 10),
(451, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-11-29', 10),
(452, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-11-30', 10),
(453, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-01', 10),
(454, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-02', 10),
(455, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-03', 10),
(456, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-04', 10),
(457, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-05', 10),
(458, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-06', 10),
(459, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-07', 10),
(460, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-08', 10),
(461, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-09', 10),
(462, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-10', 10),
(463, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-11', 10),
(464, '2011-10-12 21:14:50', '2011-10-12 21:14:50', 27, '2012-12-12', 10),
(465, '2011-10-12 21:46:06', '2011-10-12 21:46:06', NULL, NULL, NULL),
(466, '2011-10-12 21:49:57', '2011-10-12 21:49:57', 27, NULL, NULL),
(467, '2011-10-12 21:50:42', '2011-10-12 21:50:42', 27, NULL, NULL),
(468, '2011-10-12 21:51:29', '2011-10-12 21:51:29', 27, NULL, NULL),
(486, '2011-10-12 22:06:01', '2011-10-12 22:06:01', 2, NULL, 12),
(487, '2011-10-12 22:06:33', '2011-10-12 22:06:33', 2, NULL, 12),
(488, '2011-10-12 22:07:19', '2011-10-12 22:07:19', 2, NULL, 12),
(489, '2011-10-12 22:08:02', '2011-10-12 22:08:02', 2, NULL, 12),
(490, '2011-10-12 22:09:25', '2011-10-12 22:09:25', 2, NULL, 12),
(491, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-05', 12),
(492, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-06', 12),
(493, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-07', 12),
(494, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-08', 12),
(495, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-09', 12),
(496, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-10', 12),
(497, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-11', 12),
(498, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-12', 12),
(499, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-13', 12),
(500, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-14', 12),
(501, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-15', 12),
(502, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-16', 12),
(503, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-17', 12),
(504, '2011-10-12 22:14:59', '2011-10-12 22:14:59', 2, '2011-09-18', 12),
(505, '2011-10-12 22:15:00', '2011-10-12 22:15:00', 2, '2011-09-19', 12),
(506, '2011-10-12 22:15:00', '2011-10-12 22:15:00', 2, '2011-09-20', 12),
(507, '2011-10-12 22:17:20', '2011-10-12 22:17:20', 2, '2011-09-04', 12),
(508, '2011-10-16 04:47:25', '2011-10-16 04:47:25', NULL, NULL, NULL),
(509, '2011-10-16 05:01:52', '2011-10-16 05:01:52', NULL, NULL, NULL),
(510, '2011-10-16 05:17:14', '2011-10-16 05:17:14', NULL, NULL, NULL),
(511, '2011-10-16 14:05:37', '2011-10-16 14:05:37', NULL, NULL, NULL),
(512, '2011-10-27 20:39:15', '2011-10-27 20:39:15', NULL, NULL, NULL),
(513, '2011-10-27 20:45:53', '2011-10-27 20:45:53', NULL, NULL, NULL),
(514, '2011-10-27 20:48:34', '2011-10-27 20:48:34', NULL, NULL, NULL),
(515, '2011-10-27 20:51:12', '2011-10-27 20:51:12', NULL, NULL, NULL),
(516, '2011-10-27 20:54:02', '2011-10-27 20:54:02', NULL, NULL, NULL),
(517, '2011-10-28 08:08:17', '2011-10-28 08:08:17', NULL, NULL, NULL),
(518, '2011-10-28 08:08:44', '2011-10-28 08:08:44', NULL, NULL, NULL),
(519, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-09-27', 10),
(520, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-09-28', 1),
(521, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-09-29', 2),
(522, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-09-30', 10),
(523, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-10-01', 10),
(524, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-10-02', 10),
(525, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-10-03', 10),
(526, '2011-11-03 14:47:14', '2011-11-03 14:47:14', 4, '2011-10-04', 10),
(527, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-05', 10),
(528, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-06', 10),
(529, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-07', 10),
(530, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-08', 10),
(531, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-09', 10),
(532, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-10', 10),
(533, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-11', 10),
(534, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-12', 10),
(535, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-13', 10),
(536, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-14', 10),
(537, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-15', 10),
(538, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-16', 10),
(539, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-17', 10),
(540, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-18', 10),
(541, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-19', 10),
(542, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-20', 10),
(543, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-21', 10),
(544, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-22', 10),
(545, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-23', 10),
(546, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-24', 10),
(547, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-25', 10),
(548, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-26', 10),
(549, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-27', 10),
(550, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-28', 10),
(551, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-29', 10),
(552, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-30', 10),
(553, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-10-31', 10),
(554, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-11-01', 10),
(555, '2011-11-03 14:47:15', '2011-11-03 14:47:15', 4, '2011-11-02', 10),
(556, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-03', 10),
(557, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-04', 10),
(558, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-05', 10),
(559, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-06', 10),
(560, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-07', 10),
(561, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-08', 10),
(562, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-09', 10),
(563, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-10', 10),
(564, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-11', 10),
(565, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-12', 10),
(566, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-13', 10),
(567, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-14', 10),
(568, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-15', 10),
(569, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-16', 10),
(570, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-17', 10),
(571, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-18', 10),
(572, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-19', 10),
(573, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-20', 10),
(574, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-21', 10),
(575, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-22', 10),
(576, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-23', 10),
(577, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-24', 10),
(578, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-25', 10),
(579, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-26', 10),
(580, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-27', 10),
(581, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-28', 10),
(582, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-29', 10),
(583, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-11-30', 10),
(584, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-01', 10),
(585, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-02', 10),
(586, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-03', 10),
(587, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-04', 10),
(588, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-05', 10),
(589, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-06', 10),
(590, '2011-11-03 14:47:16', '2011-11-03 14:47:16', 4, '2011-12-07', 10),
(591, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-08', 10),
(592, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-09', 10),
(593, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-10', 10),
(594, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-11', 10),
(595, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-12', 10),
(596, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-13', 10),
(597, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-14', 10),
(598, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-15', 10),
(599, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-16', 10),
(600, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-17', 10),
(601, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-18', 10),
(602, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-19', 10),
(603, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-20', 10),
(604, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-21', 10),
(605, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-22', 10),
(606, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-23', 10),
(607, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-24', 10),
(608, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-25', 10),
(609, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-26', 10),
(610, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-27', 10),
(611, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-28', 10),
(612, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-29', 10),
(613, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-30', 10),
(614, '2011-11-03 14:47:17', '2011-11-03 14:47:17', 4, '2011-12-31', 10),
(615, '2011-11-03 14:47:17', '2011-11-03 14:47:17', NULL, NULL, NULL),
(616, '2011-11-03 14:54:27', '2011-11-03 14:54:27', NULL, NULL, NULL),
(617, '2011-11-03 15:23:42', '2011-11-03 15:23:42', 5, '2011-09-30', 15),
(618, '2011-11-03 15:23:42', '2011-11-03 15:23:42', 5, '2011-10-01', 15),
(619, '2011-11-03 15:23:42', '2011-11-03 15:23:42', 5, '2011-10-02', 15),
(620, '2011-11-03 15:23:42', '2011-11-03 15:23:42', 5, '2011-10-03', 15),
(621, '2011-11-03 15:23:42', '2011-11-03 15:23:42', 5, '2011-10-04', 15),
(622, '2011-11-03 15:23:42', '2011-11-03 15:23:42', 5, '2011-10-05', 15),
(623, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-06', 15),
(624, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-07', 15),
(625, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-08', 15),
(626, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-09', 15),
(627, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-10', 15),
(628, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-11', 15),
(629, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-12', 15),
(630, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-13', 15),
(631, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-14', 15),
(632, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-15', 15),
(633, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-16', 15),
(634, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-17', 15),
(635, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-18', 15),
(636, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-19', 15),
(637, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-20', 15),
(638, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-21', 15),
(639, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-22', 15),
(640, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-23', 15),
(641, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-24', 15),
(642, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-25', 15),
(643, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-26', 15),
(644, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-27', 15),
(645, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-28', 15),
(646, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-29', 15),
(647, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-30', 15),
(648, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-10-31', 15),
(649, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-11-01', 15),
(650, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-11-02', 15),
(651, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-11-03', 15),
(652, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-11-04', 15),
(653, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-11-05', 15),
(654, '2011-11-03 15:23:43', '2011-11-03 15:23:43', 5, '2011-11-06', 15),
(655, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-07', 15),
(656, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-08', 15),
(657, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-09', 15),
(658, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-10', 15),
(659, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-11', 15),
(660, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-12', 15),
(661, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-13', 15),
(662, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-14', 15),
(663, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-15', 15),
(664, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-16', 15),
(665, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-17', 15),
(666, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-18', 15),
(667, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-19', 15),
(668, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-20', 15),
(669, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-21', 15),
(670, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-22', 15),
(671, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-23', 15),
(672, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-24', 15),
(673, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-25', 15),
(674, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-26', 15),
(675, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-27', 15),
(676, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-28', 15),
(677, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-29', 15),
(678, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-11-30', 15),
(679, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-01', 15),
(680, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-02', 15),
(681, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-03', 15),
(682, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-04', 15),
(683, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-05', 15),
(684, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-06', 15),
(685, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-07', 15),
(686, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-08', 15),
(687, '2011-11-03 15:23:44', '2011-11-03 15:23:44', 5, '2011-12-09', 15),
(688, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-10', 15),
(689, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-11', 15),
(690, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-12', 15),
(691, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-13', 15),
(692, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-14', 15),
(693, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-15', 15),
(694, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-16', 15),
(695, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-17', 15),
(696, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-18', 15),
(697, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-19', 15),
(698, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-20', 15),
(699, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-21', 15),
(700, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-22', 15),
(701, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-23', 15),
(702, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-24', 15),
(703, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-25', 15),
(704, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-26', 15),
(705, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-27', 15),
(706, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-28', 15);
INSERT INTO `deal_availabilities` (`id`, `created`, `modified`, `deal_id`, `reservation_date`, `num_available`) VALUES
(707, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-29', 15),
(708, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-30', 15),
(709, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2011-12-31', 15),
(710, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-01', 15),
(711, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-02', 15),
(712, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-03', 15),
(713, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-04', 15),
(714, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-05', 15),
(715, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-06', 15),
(716, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-07', 15),
(717, '2011-11-03 15:23:45', '2011-11-03 15:23:45', 5, '2012-01-08', 15),
(718, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-09', 15),
(719, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-10', 15),
(720, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-11', 15),
(721, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-12', 15),
(722, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-13', 15),
(723, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-14', 15),
(724, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-15', 15),
(725, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-16', 15),
(726, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-17', 15),
(727, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-18', 15),
(728, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-19', 15),
(729, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-20', 15),
(730, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-21', 15),
(731, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-22', 15),
(732, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-23', 15),
(733, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-24', 15),
(734, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-25', 15),
(735, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-26', 15),
(736, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-27', 15),
(737, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-28', 15),
(738, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-29', 15),
(739, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-30', 15),
(740, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-01-31', 15),
(741, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-01', 15),
(742, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-02', 15),
(743, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-03', 15),
(744, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-04', 15),
(745, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-05', 15),
(746, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-06', 15),
(747, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-07', 15),
(748, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-08', 15),
(749, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-09', 15),
(750, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-10', 15),
(751, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-11', 15),
(752, '2011-11-03 15:23:46', '2011-11-03 15:23:46', 5, '2012-02-12', 15),
(753, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-13', 15),
(754, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-14', 15),
(755, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-15', 15),
(756, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-16', 15),
(757, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-17', 15),
(758, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-18', 15),
(759, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-19', 15),
(760, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-20', 15),
(761, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-21', 15),
(762, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-22', 15),
(763, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-23', 15),
(764, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-24', 15),
(765, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-25', 15),
(766, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-26', 15),
(767, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-27', 15),
(768, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-28', 15),
(769, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-02-29', 15),
(770, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-01', 15),
(771, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-02', 15),
(772, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-03', 15),
(773, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-04', 15),
(774, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-05', 15),
(775, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-06', 15),
(776, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-07', 15),
(777, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-08', 15),
(778, '2011-11-03 15:23:47', '2011-11-03 15:23:47', 5, '2012-03-09', 15),
(779, '2011-11-03 15:23:47', '2011-11-03 15:23:47', NULL, NULL, NULL),
(780, '2011-11-03 19:43:28', '2011-11-03 19:43:28', NULL, NULL, NULL),
(781, '2011-11-03 19:43:53', '2011-11-03 19:43:53', NULL, NULL, NULL),
(782, '2011-11-03 19:45:37', '2011-11-03 19:45:37', NULL, NULL, NULL),
(783, '2011-11-14 20:59:31', '2011-11-14 20:59:31', NULL, NULL, NULL),
(784, '2011-11-14 21:00:27', '2011-11-14 21:00:27', 2, '2011-09-02', 10),
(785, '2011-11-14 21:00:27', '2011-11-14 21:00:27', 2, '2011-09-03', 10),
(786, '2011-11-14 21:00:27', '2011-11-14 21:00:27', NULL, NULL, NULL),
(787, '2011-11-19 14:38:49', '2011-11-19 14:38:49', NULL, NULL, NULL),
(788, '2011-11-19 14:39:28', '2011-11-19 14:39:28', 2, '2011-09-21', 19),
(789, '2011-11-19 14:39:28', '2011-11-19 14:39:28', 2, '2011-09-22', 19),
(790, '2011-11-19 14:39:28', '2011-11-19 14:39:28', 2, '2011-09-23', 12),
(791, '2011-11-19 14:39:28', '2011-11-19 14:39:28', 2, '2011-09-24', 19),
(792, '2011-11-19 14:39:28', '2011-11-19 14:39:28', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deal_purchases`
--

CREATE TABLE IF NOT EXISTS `deal_purchases` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deal_id` bigint(20) unsigned default NULL,
  `traveler_id` bigint(20) unsigned default NULL,
  `confirmation_code` varchar(10) collate utf8_unicode_ci default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `purchase_amount` double default NULL,
  `braintree_id` varchar(20) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `deal_purchases`
--

INSERT INTO `deal_purchases` (`id`, `created`, `modified`, `deal_id`, `traveler_id`, `confirmation_code`, `start_date`, `end_date`, `purchase_amount`, `braintree_id`) VALUES
(2, '2011-09-29 15:58:46', '2011-09-29 15:58:46', 3, 13, '9de03f661e', '2011-12-12', '2011-12-15', NULL, NULL),
(3, '2011-10-01 11:58:52', '2011-10-01 11:58:52', 5, 13, 'ebcc333e65', '2011-10-12', '2011-10-19', 625, '0'),
(5, '2011-10-01 12:12:08', '2011-10-01 12:12:08', 7, 13, 'b678794671', '2011-11-07', '2011-11-21', 68, '0'),
(6, '2011-10-01 12:15:03', '2011-10-01 12:15:03', 7, 13, '5fa55dbc66', '2011-11-07', '2011-11-21', 68, NULL),
(7, '2011-10-01 12:17:21', '2011-10-01 12:17:21', 7, 13, '0094ee22b4', '2011-11-07', '2011-11-21', 68, '0'),
(8, '2011-10-01 12:21:28', '2011-10-01 12:21:28', 7, 13, 'fb1ce39687', '2011-11-07', '2011-11-21', 68, '7'),
(9, '2011-10-01 12:22:05', '2011-10-01 12:22:05', 7, 13, '3fca4c406b', '2011-11-07', '2011-11-21', 68, '0'),
(10, '2011-10-01 12:22:40', '2011-10-01 12:22:40', 7, 13, '6495965983', '2011-11-07', '2011-11-21', 68, '5'),
(11, '2011-10-01 12:24:05', '2011-10-01 12:24:05', 7, 13, '7fc419a53f', '2011-11-07', '2011-11-21', 68, '0'),
(12, '2011-10-01 12:24:57', '2011-10-01 12:24:57', 7, 13, '7d618049cf', '2011-11-07', '2011-11-21', 68, '2'),
(13, '2011-10-01 12:25:41', '2011-10-01 12:25:41', 7, 13, '273fda7846', '2011-11-07', '2011-11-21', 68, 'dq7p5g'),
(14, '2011-10-20 19:05:44', '2011-10-20 19:05:44', 5, 36, 'd8f4520ae8', '2011-10-10', '2011-10-17', 625, '8m4m4b'),
(15, '2011-10-20 19:08:33', '2011-10-20 19:08:33', 5, 36, 'b323ba4042', '2011-10-10', '2011-10-17', 625, 'chzdn6'),
(16, '2011-10-20 19:09:21', '2011-10-20 19:09:21', 5, 36, '3d5db757c5', '2011-10-10', '2011-10-17', 625, '9kdvmm'),
(17, '2011-10-20 19:10:42', '2011-10-20 19:10:42', 5, 36, 'bc8c4a4855', '2011-10-10', '2011-10-17', 625, '6dpz76'),
(18, '2011-10-20 19:11:59', '2011-10-20 19:11:59', 5, 36, '4efd0ec306', '2011-10-10', '2011-10-17', 625, '4g4g6m'),
(19, '2011-10-20 19:12:39', '2011-10-20 19:12:39', 5, 36, '3c4dca3073', '2011-10-10', '2011-10-17', 625, '3gt6pb'),
(20, '2011-10-20 19:15:07', '2011-10-20 19:15:07', 5, 36, '2f55eaa801', '2011-10-10', '2011-10-17', 625, '5fdqpw'),
(21, '2011-10-20 19:16:35', '2011-10-20 19:16:35', 5, 36, 'b31284b99b', '2011-10-10', '2011-10-17', 625, 'f7rvs6'),
(22, '2011-10-20 19:22:17', '2011-10-20 19:22:17', 5, 36, 'b128e01476', '2011-10-10', '2011-10-17', 625, 'gxv9pw'),
(23, '2011-10-20 19:52:47', '2011-10-20 19:52:47', 5, 36, 'c2c7164920', '2011-10-10', '2011-10-17', 625, '9mkq4w'),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 13, 'aajk901kl', '2011-09-27', '2011-09-30', 780, '11190ajilz'),
(25, '2011-11-12 12:13:06', '2011-11-12 12:13:06', 4, 13, '4ddb9d63d0', '2011-10-10', '2011-10-13', 780, '9pzf9g'),
(26, '2011-11-12 15:25:36', '2011-11-12 15:25:36', 4, 13, 'ee86edbf18', '2011-10-10', '2011-10-13', 780, '3g2qjb'),
(27, '2011-11-12 15:27:26', '2011-11-12 15:27:26', 4, 13, '7ec1a17635', '2011-10-10', '2011-10-13', 780, '7c7skg'),
(28, '2011-11-12 15:29:23', '2011-11-12 15:29:23', 4, 13, '9cfa141909', '2011-10-10', '2011-10-13', 780, 'h5kxnr'),
(29, '2011-11-12 15:30:30', '2011-11-12 15:30:30', 4, 13, '5eedd248d5', '2011-10-10', '2011-10-13', 780, 'f6zdn6'),
(30, '2011-11-12 15:33:47', '2011-11-12 15:33:47', 4, 13, '39ee69852e', '2011-10-10', '2011-10-13', 780, '2ydks6'),
(31, '2011-11-12 15:35:23', '2011-11-12 15:35:23', 4, 13, '1303781a46', '2011-10-10', '2011-10-13', 780, 'brrqvg'),
(32, '2011-11-12 15:36:29', '2011-11-12 15:36:29', 4, 13, '02af086ecb', '2011-10-10', '2011-10-13', 780, 'gnxswm');

-- --------------------------------------------------------

--
-- Table structure for table `deal_statuses`
--

CREATE TABLE IF NOT EXISTS `deal_statuses` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `top_five` text collate utf8_unicode_ci,
  `getting_there` text collate utf8_unicode_ci,
  `title` varchar(250) collate utf8_unicode_ci NOT NULL,
  `country_id` bigint(20) unsigned default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(20) NOT NULL auto_increment,
  `parent_id` int(20) default NULL,
  `user_id` int(20) NOT NULL default '0',
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `slug` varchar(255) collate utf8_unicode_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  `excerpt` text collate utf8_unicode_ci,
  `status` tinyint(1) NOT NULL default '0',
  `mime_type` varchar(100) collate utf8_unicode_ci default NULL,
  `path` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sticky` tinyint(1) NOT NULL default '0',
  `lft` int(11) default NULL,
  `rght` int(11) default NULL,
  `visibility_roles` text collate utf8_unicode_ci,
  `type` varchar(100) collate utf8_unicode_ci NOT NULL default 'node',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`id`),
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `about_us` text collate utf8_unicode_ci,
  `website` varchar(250) collate utf8_unicode_ci default NULL,
  `business_reviews` text collate utf8_unicode_ci,
  `business_name` varchar(250) collate utf8_unicode_ci default NULL,
  `city` varchar(100) collate utf8_unicode_ci default NULL,
  `postal_code` varchar(20) collate utf8_unicode_ci default NULL,
  `address` varchar(250) collate utf8_unicode_ci default NULL,
  `second_address` varchar(250) collate utf8_unicode_ci default NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `state` varchar(20) collate utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(20) collate utf8_unicode_ci NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `business_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `created`, `modified`, `about_us`, `website`, `business_reviews`, `business_name`, `city`, `postal_code`, `address`, `second_address`, `user_id`, `state`, `first_name`, `last_name`, `phone`, `country_id`, `business_type_id`) VALUES
(11, '2011-04-14 18:17:51', '2011-06-07 19:36:35', 'We are a fantastic company', 'http://www.test.com', 'They are great!', 'Awesome Get Aways', 'Oakland', '937891', '788 Nevah!', 'My 2nd address', 21, 'CA', '', '', '', 1, 0),
(13, '2011-06-16 19:14:24', '2011-11-04 21:12:54', 'We are...the B Bizzle!', 'bbizzle.com', 'They''re bizzlin!', 'The B Bizzle', 'San Francico', '94618', '6616 Ave', '', 24, 'CA', 'Buster3', 'Blackmail', '+1 01 23 490', 1, 2),
(14, '2011-07-25 19:14:15', '2011-07-25 19:14:15', NULL, 'test', NULL, 'Charlie Company', 'Camptown', '94661', '722 C St', '727 A', 26, 'CA', 'Charlie', 'Roth', '805-234-4944', 1, 1),
(15, '2011-10-08 11:58:25', '2011-11-10 22:06:11', NULL, '', NULL, 'Test', 'Oaklan', '99111', '17 Test', '', 44, 'CA', 'David', 'Roth', '1jkl', 1, 1),
(16, '2011-10-22 10:48:37', '2011-10-22 10:48:37', NULL, '', NULL, 'Test Signup', 'Oak', 'AU - 9411', '227 Test', '', 50, 'CA', 'Dave', 'Test', '(44) xx 712', 1, 1),
(17, '2011-10-29 15:20:33', '2011-10-29 15:20:33', NULL, '', NULL, 'Email Test ', 'Oakland', '9431', 'Business', '101', 51, 'CA', 'David', 'Roth', '801110', 1, 1),
(18, '2011-11-03 19:55:27', '2011-11-03 19:55:27', NULL, '', NULL, 'New Business - AM Should Receive This', 'Oak', '94112', 'AM', 'Should', 57, 'CA', 'New', 'Email', '1123', 1, 1),
(19, '2011-11-06 16:39:18', '2011-11-06 16:39:18', NULL, '', NULL, 'zjkl', 'jk', '911', 'jkl', 'jkl', 61, 'jk', 'jk', 'jjk', '7110', 1, 1),
(20, '2011-11-09 08:19:03', '2011-11-09 08:19:03', NULL, '', NULL, 'Test Merchant 5', 'Oak', '91182', '7712 ', '', 62, 'CA', 'Test', 'User', '555', 1, 1),
(21, '2011-11-09 08:21:49', '2011-11-09 08:21:49', NULL, '', NULL, 'Merchant 6', 'jkl', '9112', 'tjkl', 'jkl', 63, 'jk', 'Test 6', 'merchant 6', '78', 1, 1),
(22, '2011-11-09 08:23:14', '2011-11-09 08:23:14', NULL, '', NULL, 'Merchant 6', 'jkl', '9112', 'tjkl', 'jkl', 64, 'jk', 'Test 6', 'merchant 6', '78', 1, 1),
(23, '2011-11-09 08:27:02', '2011-11-09 08:27:02', NULL, '', NULL, 'Merchant 6', 'jkl', '9112', 'tjkl', 'jkl', 65, 'jk', 'Test 6', 'merchant 6', '78', 1, 1),
(24, '2011-11-09 08:27:48', '2011-11-09 08:27:48', NULL, '', NULL, 'Merchant 6', 'jkl', '9112', 'tjkl', 'jkl', 66, 'jk', 'Test 6', 'merchant 6', '78', 1, 1),
(25, '2011-12-09 06:34:29', '2011-12-09 06:34:29', NULL, '', NULL, 'New Merchant', 'jp', '91kjp', 'jko', 'jol', 69, 'CA', 'Tester', 'Merchant', '81180', 1, 1),
(26, '2011-12-09 06:36:36', '2011-12-09 06:36:36', NULL, 'jlk', NULL, 'Test 2', 'jikojkl', 'jp', 'jio190', 'jkl100', 70, 'jl', 'jklpj', 'mmkop', '123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE IF NOT EXISTS `passengers` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `is_primary` tinyint(1) default NULL,
  `deal_purchase_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `created`, `modified`, `first_name`, `last_name`, `birthday`, `country_id`, `is_primary`, `deal_purchase_id`) VALUES
(1, '2011-07-16 20:16:07', '2011-07-16 20:16:07', 'Josh', 'Maas-Howard', '2005-07-16', 1, 1, 37),
(3, '2011-07-16 20:17:15', '2011-07-16 20:17:15', 'Tessa', 'Strauss', '1997-11-08', 1, 1, 38),
(4, '2011-07-23 19:12:05', '2011-07-23 19:12:05', 'Jason', 'Roth', '1991-07-23', 1, 0, 37);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `confirmation` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `created`, `modified`, `user_id`, `confirmation`) VALUES
(1, '2011-10-13 00:00:00', '2011-10-11 00:00:00', 24, '06465ce8c1'),
(2, '2011-10-13 22:20:43', '2011-10-13 22:20:43', 22, 'd266be1a7e'),
(3, '2011-10-13 22:22:36', '2011-10-13 22:22:36', 22, '89a509f1c5'),
(4, '2011-10-13 22:23:12', '2011-10-13 22:23:12', 22, '814e4cb826'),
(5, '2011-10-25 19:30:57', '2011-10-25 19:30:57', 44, 'bda453296a'),
(6, '2011-10-25 20:46:10', '2011-10-25 20:46:10', 44, '1d4ed76660'),
(7, '2011-11-01 20:51:21', '2011-11-01 20:51:21', 44, 'f7bd78bf8a'),
(8, '2011-11-03 19:37:03', '2011-11-03 19:37:03', 44, '9b036274f9'),
(9, '2011-11-03 19:38:50', '2011-11-03 19:38:50', 44, 'c312f6a261'),
(10, '2011-11-06 14:33:38', '2011-11-06 14:33:38', 44, '691aaa7d11'),
(11, '2011-11-06 14:51:04', '2011-11-06 14:51:04', 44, 'a5514d991a'),
(12, '2011-11-06 14:51:53', '2011-11-06 14:51:53', 44, '3ad99c3732'),
(13, '2011-11-06 14:55:48', '2011-11-06 14:55:48', 44, '66f773a8f7'),
(14, '2011-11-10 21:34:37', '2011-11-10 21:34:37', 44, 'f85491d488'),
(15, '2011-11-10 22:04:07', '2011-11-10 22:04:07', 44, 'e938dca1ce');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) collate utf8_unicode_ci NOT NULL,
  `alias` varchar(100) collate utf8_unicode_ci default NULL,
  `created` datetime default NULL,
  `updated` datetime default NULL,
  PRIMARY KEY  (`id`),
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `num_availabile` int(11) NOT NULL,
  `deal_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
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
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(250) collate utf8_unicode_ci default NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
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
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `created`, `modified`, `email`) VALUES
(1, '2011-11-17 21:06:11', '2011-11-17 21:06:11', 't@t.com'),
(2, '2011-11-17 22:18:34', '2011-11-17 22:18:34', 'travele@tt.com'),
(3, '2011-11-18 08:24:54', '2011-11-18 08:24:54', 'test@t.com'),
(4, '2011-11-19 09:48:24', '2011-11-19 09:48:24', 'ajkzjl'),
(5, '2011-11-19 09:49:34', '2011-11-19 09:49:34', 'ajklz'),
(6, '2011-11-19 09:50:42', '2011-11-19 09:50:42', 'ajzjkl2'),
(7, '2011-11-19 09:51:25', '2011-11-19 09:51:25', 'zjkl1'),
(8, '2011-11-19 09:52:12', '2011-11-19 09:52:12', 'qwe'),
(9, '2011-11-19 09:53:33', '2011-11-19 09:53:33', 'jklkp'),
(10, '2011-11-19 09:55:27', '2011-11-19 09:55:27', 'm,lq'),
(11, '2011-11-19 09:56:01', '2011-11-19 09:56:01', '1jklp'),
(12, '2011-11-19 14:30:44', '2011-11-19 14:30:44', 'test@t.com'),
(13, '2011-12-13 08:07:20', '2011-12-13 08:07:20', 'jiozjkl@jio.com'),
(14, '2011-12-16 07:55:20', '2011-12-16 07:55:20', 'dave@tt.com');

-- --------------------------------------------------------

--
-- Table structure for table `travelers`
--

CREATE TABLE IF NOT EXISTS `travelers` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `is_male` tinyint(1) default NULL,
  `birthday` date default NULL,
  `state_id` bigint(20) unsigned default NULL,
  `postal_code` varchar(20) collate utf8_unicode_ci default NULL,
  `first_name` varchar(250) collate utf8_unicode_ci default NULL,
  `last_name` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

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
(13, '2011-06-14 08:31:52', '2011-11-04 22:02:34', 22, 1, '2011-06-14', 1, '9412', 'Michael2', 'Myers'),
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
(38, '2011-10-30 17:18:33', '2011-10-30 17:18:33', 53, NULL, NULL, NULL, NULL, 'Kristen', 'Smith'),
(39, '2011-10-30 17:21:32', '2011-10-30 17:21:32', 54, NULL, NULL, NULL, NULL, 'Rusy', 'Smith'),
(40, '2011-10-30 17:22:04', '2011-10-30 17:22:04', 55, NULL, NULL, NULL, NULL, 'Rusy', 'Smith'),
(41, '2011-10-30 17:23:26', '2011-10-30 17:23:26', 56, NULL, NULL, NULL, NULL, 'Rusy', 'Smith'),
(42, '2011-11-06 16:29:30', '2011-11-06 16:29:30', 58, NULL, NULL, NULL, NULL, 'Lipton', 'Iced Tea'),
(43, '2011-11-06 16:37:15', '2011-11-06 16:37:15', 59, NULL, NULL, NULL, NULL, 'Da', 'da'),
(44, '2011-11-06 16:38:33', '2011-11-06 16:38:33', 60, NULL, NULL, NULL, NULL, 'da 2', 'at'),
(45, '2011-11-09 08:29:05', '2011-11-09 08:29:05', 67, NULL, NULL, NULL, NULL, 'Test', 'Traveler'),
(46, '2011-12-08 18:14:53', '2011-12-08 18:14:53', 68, NULL, NULL, NULL, NULL, 'New', 'Test'),
(50, '2011-12-13 08:19:01', '2011-12-13 08:19:01', 71, NULL, NULL, NULL, NULL, 'test1213', 'test'),
(51, '2011-12-13 08:20:44', '2011-12-13 19:58:19', 72, NULL, NULL, NULL, NULL, 'test12132', 'test2'),
(55, '2011-12-13 20:18:34', '2011-12-13 20:18:34', 73, NULL, NULL, NULL, NULL, 'David', 'Roth');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `password` varchar(100) collate utf8_unicode_ci NOT NULL,
  `name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `website` varchar(100) collate utf8_unicode_ci default NULL,
  `activation_key` varchar(60) collate utf8_unicode_ci NOT NULL,
  `image` varchar(255) collate utf8_unicode_ci default NULL,
  `bio` text collate utf8_unicode_ci,
  `timezone` varchar(10) collate utf8_unicode_ci NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=74 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `created`) VALUES
(20, 1, 'aa361d06c20a989716f6747d0041a47f90bbf920', 'Admin', 'admin@tt.com', '', '', '', '', '', 1, '2011-05-27 23:49:06', '2011-05-27 23:49:06'),
(22, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'traveler@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-04 22:02:34', '2011-06-14 08:31:52'),
(24, 5, '12f20b2117fe7327adc5fb5f441f97b286d63979', '', 'merchant@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-04 21:12:54', '2011-06-16 19:14:24'),
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
(50, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'tester@test.com', NULL, '', NULL, NULL, '0', 1, '2011-10-22 10:48:37', '2011-10-22 10:48:37'),
(51, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'davejroth@gmail.com', NULL, '', NULL, NULL, '0', 1, '2011-10-29 15:20:33', '2011-10-29 15:20:33'),
(52, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'mr.roth.schoo22l@gmail.com', NULL, '', NULL, NULL, '0', 1, '2011-10-29 15:25:26', '2011-10-29 15:25:26'),
(53, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'kristen@no.com', NULL, '', NULL, NULL, '0', 1, '2011-10-30 17:18:33', '2011-10-30 17:18:33'),
(44, 5, 'dec5231ac5a092b6996ac7c2210ae0c7daeb8a1f', '', 'dave@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-11-10 22:06:11', '2011-10-08 11:58:25'),
(54, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'rusty@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-30 17:21:32', '2011-10-30 17:21:32'),
(55, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'rusty2@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-30 17:22:04', '2011-10-30 17:22:04'),
(56, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'rusty3@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-10-30 17:23:26', '2011-10-30 17:23:26'),
(57, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'newmerchant@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-03 19:55:27', '2011-11-03 19:55:27'),
(58, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'mr.roth.school23@gmail.com', NULL, '', NULL, NULL, '0', 1, '2011-11-06 16:29:30', '2011-11-06 16:29:30'),
(59, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'da@la.com', NULL, '', NULL, NULL, '0', 1, '2011-11-06 16:37:15', '2011-11-06 16:37:15'),
(60, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'da2@tjklz.com', NULL, '', NULL, NULL, '0', 1, '2011-11-06 16:38:33', '2011-11-06 16:38:33'),
(61, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'dabusss@bkla.com', NULL, '', NULL, NULL, '0', 1, '2011-11-06 16:39:18', '2011-11-06 16:39:18'),
(62, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testmerchant5@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-09 08:19:03', '2011-11-09 08:19:03'),
(63, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testmerchant6@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-09 08:21:49', '2011-11-09 08:21:49'),
(64, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testmerchant7@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-09 08:23:14', '2011-11-09 08:23:14'),
(65, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testmerchant8@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-09 08:27:02', '2011-11-09 08:27:02'),
(66, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testmerchant9@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-09 08:27:48', '2011-11-09 08:27:48'),
(67, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'testtraveler@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-11-09 08:29:05', '2011-11-09 08:29:05'),
(68, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'newtraveler8@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-12-08 18:14:53', '2011-12-08 18:14:53'),
(69, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'newmerchant8@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-12-09 06:34:29', '2011-12-09 06:34:29'),
(70, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'newmerchant81@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-12-09 06:36:36', '2011-12-09 06:36:36'),
(71, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'test1213@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-12-13 08:19:01', '2011-12-13 08:19:01'),
(72, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'ohman@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-12-13 19:58:19', '2011-12-13 08:20:44'),
(73, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'mr.roth.school@gmail.com', NULL, '', NULL, NULL, '0', 1, '2011-12-13 20:18:33', '2011-12-13 20:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE IF NOT EXISTS `venues` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `website` varchar(100) default NULL,
  `address1` varchar(100) default NULL,
  `address2` varchar(100) default NULL,
  `city` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `postal_code` varchar(100) default NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `business_type_id` bigint(20) unsigned NOT NULL,
  `merchant_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `created`, `modified`, `name`, `email`, `website`, `address1`, `address2`, `city`, `state`, `postal_code`, `country_id`, `business_type_id`, `merchant_id`) VALUES
(1, '2011-07-31 14:02:51', '2011-07-31 14:02:51', 'calistogahotel', 'contact@calistogahotel.com', 'www.calistogahotel.ex', '', '', '', '', '', 1, 0, 13),
(2, '2011-07-31 16:25:17', '2011-12-17 11:52:44', 'Cruise Mexico', 'info@cruisemexico.com', 'www.cruisemexico.ex', 'Rising Sun Ave', '', '', '', '', 2, 1, 13),
(3, '2011-07-31 16:25:52', '2011-11-03 14:54:27', 'Peru Hotel', 'contact@peruhotel.com', 'www.peruhotel.ex', '', '', '', '', '', 1, 1, 13),
(4, '2011-07-31 19:19:34', '2011-07-31 19:19:34', 'Ko Phi Phi', 'contact@kophiphi.com', 'www.kophiphi.ex', '', '', '', '', '', 1, 0, 13),
(5, '2011-07-31 20:39:43', '2011-11-03 15:23:47', 'Fiji Cottage', 'service@fijicottage.com', 'www.fijicottage.ex', '', '', '', '', '', 1, 1, 13),
(6, '2011-07-31 20:40:08', '2011-07-31 20:40:08', 'Tahiti Villa', 'service@tahitivilla.com', 'www.tahitivilla.ex', '', '', '', '', '', 1, 0, 13),
(7, '2011-08-01 08:29:21', '2011-08-01 08:29:21', 'Greek Bed & Breakfast', 'contact@greekbnb.com', 'www.greekbnb.ex', '', '', '', '', '', 1, 0, 13),
(8, '2011-08-01 08:29:54', '2011-08-01 08:29:54', 'Italy Villa', 'contact@italyvilla.com', 'www.italyvilla.ex', '', '', '', '', '', 1, 0, 13),
(9, '2011-08-02 20:27:13', '2011-08-02 20:27:13', 'Cambodia Lodge', 'contact@cambodialodge.com', 'www.cambodialodge.ex', '', '', '', '', '', 1, 0, 13),
(10, '2011-08-02 20:50:21', '2011-08-02 20:50:21', 'Calistoga Hotel', 'contact@calistogahotel.com', 'www.calistogahotel.ex', '', '', '', '', '', 1, 0, 13),
(11, '2011-10-08 21:44:16', '2011-11-03 19:45:37', 'Dave''s Test Venue', 'dave@traveltipping.com', '', '1512 Test', '', 'Oakland', 'Ca', '94112', 1, 1, 15),
(13, '2011-10-16 14:05:37', '2011-10-16 14:05:37', 'Dave''s Test', 'email@test.com', '', 'SunRise Ave', '', '', '', '94110', 1, 1, 14),
(15, '2011-10-16 15:51:11', '2011-10-16 15:51:11', 'Delta', 'delta@info.com', '', 'Flying', '', '', '', '', 1, 1, 13),
(16, '2011-10-22 10:57:26', '2011-10-22 10:57:26', 'Amazing Adventures', 'david@amazing.com', '', '28 Test', '', 'Oak', 'CA', '', 1, 1, 16);
