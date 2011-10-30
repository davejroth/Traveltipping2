-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2011 at 03:51 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 232),
(2, 1, NULL, NULL, 'Attachments', 2, 13),
(3, 2, NULL, NULL, 'admin_index', 3, 4),
(4, 2, NULL, NULL, 'admin_add', 5, 6),
(5, 2, NULL, NULL, 'admin_edit', 7, 8),
(6, 2, NULL, NULL, 'admin_delete', 9, 10),
(7, 2, NULL, NULL, 'admin_browse', 11, 12),
(8, 1, NULL, NULL, 'DealAvailabilities', 14, 27),
(9, 8, NULL, NULL, 'add', 15, 16),
(10, 8, NULL, NULL, 'admin_index', 17, 18),
(11, 8, NULL, NULL, 'admin_view', 19, 20),
(12, 8, NULL, NULL, 'admin_add', 21, 22),
(13, 8, NULL, NULL, 'admin_edit', 23, 24),
(14, 8, NULL, NULL, 'admin_delete', 25, 26),
(15, 1, NULL, NULL, 'Deals', 28, 59),
(16, 15, NULL, NULL, 'sendDealMail', 29, 30),
(17, 15, NULL, NULL, 'sendPurchaseMail', 31, 32),
(18, 15, NULL, NULL, 'index', 33, 34),
(19, 15, NULL, NULL, 'view', 35, 36),
(20, 15, NULL, NULL, 'admin_index', 37, 38),
(21, 15, NULL, NULL, 'admin_view', 39, 40),
(22, 15, NULL, NULL, 'admin_add', 41, 42),
(23, 15, NULL, NULL, 'admin_edit', 43, 44),
(24, 15, NULL, NULL, 'admin_delete', 45, 46),
(25, 15, NULL, NULL, 'book', 47, 48),
(26, 15, NULL, NULL, 'purchase', 49, 50),
(27, 15, NULL, NULL, 'confirmation', 51, 52),
(28, 15, NULL, NULL, 'deal_details', 53, 54),
(29, 15, NULL, NULL, 'editAvailabilities', 55, 56),
(30, 15, NULL, NULL, 'editAvailabilitiesCall', 57, 58),
(31, 1, NULL, NULL, 'Merchants', 60, 81),
(32, 31, NULL, NULL, 'sendMerchantMail', 61, 62),
(33, 31, NULL, NULL, 'sendDealMail', 63, 64),
(34, 31, NULL, NULL, 'profile', 65, 66),
(35, 31, NULL, NULL, 'my_deals', 67, 68),
(36, 31, NULL, NULL, 'initiate', 69, 70),
(37, 31, NULL, NULL, 'create_venue', 71, 72),
(38, 31, NULL, NULL, 'reservation_paginate', 73, 74),
(39, 31, NULL, NULL, 'signup', 75, 76),
(40, 31, NULL, NULL, 'reservations', 77, 78),
(41, 31, NULL, NULL, 'approve', 79, 80),
(42, 1, NULL, NULL, 'Pages', 82, 85),
(43, 42, NULL, NULL, 'display', 83, 84),
(44, 1, NULL, NULL, 'Roles', 86, 107),
(45, 44, NULL, NULL, 'index', 87, 88),
(46, 44, NULL, NULL, 'view', 89, 90),
(47, 44, NULL, NULL, 'add', 91, 92),
(48, 44, NULL, NULL, 'edit', 93, 94),
(49, 44, NULL, NULL, 'delete', 95, 96),
(50, 44, NULL, NULL, 'admin_index', 97, 98),
(51, 44, NULL, NULL, 'admin_view', 99, 100),
(52, 44, NULL, NULL, 'admin_add', 101, 102),
(53, 44, NULL, NULL, 'admin_edit', 103, 104),
(54, 44, NULL, NULL, 'admin_delete', 105, 106),
(55, 1, NULL, NULL, 'Travelers', 108, 121),
(56, 55, NULL, NULL, 'sendTravelerMail', 109, 110),
(57, 55, NULL, NULL, 'profile', 111, 112),
(58, 55, NULL, NULL, 'signup', 113, 114),
(59, 55, NULL, NULL, 'ajax_signup', 115, 116),
(60, 55, NULL, NULL, 'ajax_sign_in', 117, 118),
(61, 55, NULL, NULL, 'my_deals', 119, 120),
(62, 1, NULL, NULL, 'Users', 122, 163),
(63, 62, NULL, NULL, 'sendForgotPasswordMail', 123, 124),
(64, 62, NULL, NULL, 'loginredirect', 125, 126),
(65, 62, NULL, NULL, 'ajax_logged_in', 127, 128),
(66, 62, NULL, NULL, 'login', 129, 130),
(67, 62, NULL, NULL, 'logout', 131, 132),
(68, 62, NULL, NULL, 'editPassword', 133, 134),
(69, 62, NULL, NULL, 'resetPassword', 135, 136),
(70, 62, NULL, NULL, 'confirmReset', 137, 138),
(71, 62, NULL, NULL, 'resendPassword', 139, 140),
(72, 62, NULL, NULL, 'newPassword', 141, 142),
(73, 62, NULL, NULL, 'index', 143, 144),
(74, 62, NULL, NULL, 'view', 145, 146),
(75, 62, NULL, NULL, 'add', 147, 148),
(76, 62, NULL, NULL, 'edit', 149, 150),
(77, 62, NULL, NULL, 'delete', 151, 152),
(78, 62, NULL, NULL, 'admin_index', 153, 154),
(79, 62, NULL, NULL, 'admin_view', 155, 156),
(80, 62, NULL, NULL, 'admin_add', 157, 158),
(81, 62, NULL, NULL, 'admin_edit', 159, 160),
(82, 62, NULL, NULL, 'admin_delete', 161, 162),
(83, 1, NULL, NULL, 'Venues', 164, 175),
(84, 83, NULL, NULL, 'index', 165, 166),
(85, 83, NULL, NULL, 'view', 167, 168),
(86, 83, NULL, NULL, 'add', 169, 170),
(87, 83, NULL, NULL, 'edit', 171, 172),
(88, 83, NULL, NULL, 'delete', 173, 174),
(89, 1, NULL, NULL, 'Acl', 176, 221),
(90, 89, NULL, NULL, 'Acos', 177, 184),
(91, 90, NULL, NULL, 'admin_index', 178, 179),
(92, 90, NULL, NULL, 'admin_empty_acos', 180, 181),
(93, 90, NULL, NULL, 'admin_build_acl', 182, 183),
(94, 89, NULL, NULL, 'Aros', 185, 220),
(95, 94, NULL, NULL, 'admin_index', 186, 187),
(96, 94, NULL, NULL, 'admin_check', 188, 189),
(97, 94, NULL, NULL, 'admin_users', 190, 191),
(98, 94, NULL, NULL, 'admin_update_user_role', 192, 193),
(99, 94, NULL, NULL, 'admin_ajax_role_permissions', 194, 195),
(100, 94, NULL, NULL, 'admin_role_permissions', 196, 197),
(101, 94, NULL, NULL, 'admin_user_permissions', 198, 199),
(102, 94, NULL, NULL, 'admin_empty_permissions', 200, 201),
(103, 94, NULL, NULL, 'admin_clear_user_specific_permissions', 202, 203),
(104, 94, NULL, NULL, 'admin_grant_all_controllers', 204, 205),
(105, 94, NULL, NULL, 'admin_deny_all_controllers', 206, 207),
(106, 94, NULL, NULL, 'admin_get_role_controller_permission', 208, 209),
(107, 94, NULL, NULL, 'admin_grant_role_permission', 210, 211),
(108, 94, NULL, NULL, 'admin_deny_role_permission', 212, 213),
(109, 94, NULL, NULL, 'admin_get_user_controller_permission', 214, 215),
(110, 94, NULL, NULL, 'admin_grant_user_permission', 216, 217),
(111, 94, NULL, NULL, 'admin_deny_user_permission', 218, 219),
(112, 1, NULL, NULL, 'AssetCompress', 222, 231),
(113, 112, NULL, NULL, 'CssFiles', 223, 226),
(114, 113, NULL, NULL, 'get', 224, 225),
(115, 112, NULL, NULL, 'JsFiles', 227, 230),
(116, 115, NULL, NULL, 'get', 228, 229);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
