-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2011 at 04:15 PM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
