-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2011 at 08:27 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=405 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(310, 308, NULL, NULL, 'logout', 273, 274),
(309, 308, NULL, NULL, 'login', 271, 272),
(308, 174, NULL, NULL, 'Users', 270, 295),
(307, 296, NULL, NULL, 'admin_delete', 267, 268),
(306, 296, NULL, NULL, 'admin_edit', 265, 266),
(305, 296, NULL, NULL, 'admin_add', 263, 264),
(304, 296, NULL, NULL, 'admin_view', 261, 262),
(303, 296, NULL, NULL, 'admin_index', 259, 260),
(302, 296, NULL, NULL, 'delete', 257, 258),
(301, 296, NULL, NULL, 'edit', 255, 256),
(300, 296, NULL, NULL, 'add', 253, 254),
(299, 296, NULL, NULL, 'view', 251, 252),
(298, 296, NULL, NULL, 'index', 249, 250),
(297, 296, NULL, NULL, 'sendNewUserMail', 247, 248),
(296, 174, NULL, NULL, 'UserDetails', 246, 269),
(295, 285, NULL, NULL, 'admin_delete', 243, 244),
(294, 285, NULL, NULL, 'admin_edit', 241, 242),
(293, 285, NULL, NULL, 'admin_add', 239, 240),
(292, 285, NULL, NULL, 'admin_view', 237, 238),
(291, 285, NULL, NULL, 'admin_index', 235, 236),
(290, 285, NULL, NULL, 'delete', 233, 234),
(289, 285, NULL, NULL, 'edit', 231, 232),
(288, 285, NULL, NULL, 'add', 229, 230),
(287, 285, NULL, NULL, 'view', 227, 228),
(286, 285, NULL, NULL, 'index', 225, 226),
(285, 174, NULL, NULL, 'States', 224, 245),
(284, 274, NULL, NULL, 'admin_delete', 221, 222),
(283, 274, NULL, NULL, 'admin_edit', 219, 220),
(282, 274, NULL, NULL, 'admin_add', 217, 218),
(281, 274, NULL, NULL, 'admin_view', 215, 216),
(280, 274, NULL, NULL, 'admin_index', 213, 214),
(279, 274, NULL, NULL, 'delete', 211, 212),
(278, 274, NULL, NULL, 'edit', 209, 210),
(277, 274, NULL, NULL, 'add', 207, 208),
(276, 274, NULL, NULL, 'view', 205, 206),
(275, 274, NULL, NULL, 'index', 203, 204),
(274, 174, NULL, NULL, 'Roles', 202, 223),
(273, 263, NULL, NULL, 'admin_delete', 197, 198),
(272, 263, NULL, NULL, 'admin_edit', 195, 196),
(271, 263, NULL, NULL, 'admin_add', 193, 194),
(270, 263, NULL, NULL, 'admin_view', 191, 192),
(269, 263, NULL, NULL, 'admin_index', 189, 190),
(268, 263, NULL, NULL, 'delete', 187, 188),
(267, 263, NULL, NULL, 'edit', 185, 186),
(266, 263, NULL, NULL, 'add', 183, 184),
(265, 263, NULL, NULL, 'view', 181, 182),
(264, 263, NULL, NULL, 'index', 179, 180),
(263, 174, NULL, NULL, 'MerchantDetails', 178, 201),
(262, 252, NULL, NULL, 'admin_delete', 175, 176),
(261, 252, NULL, NULL, 'admin_edit', 173, 174),
(260, 252, NULL, NULL, 'admin_add', 171, 172),
(259, 252, NULL, NULL, 'admin_view', 169, 170),
(258, 252, NULL, NULL, 'admin_index', 167, 168),
(257, 252, NULL, NULL, 'delete', 165, 166),
(256, 252, NULL, NULL, 'edit', 163, 164),
(255, 252, NULL, NULL, 'add', 161, 162),
(254, 252, NULL, NULL, 'view', 159, 160),
(253, 252, NULL, NULL, 'index', 157, 158),
(252, 174, NULL, NULL, 'Destinations', 156, 177),
(251, 241, NULL, NULL, 'admin_delete', 153, 154),
(250, 241, NULL, NULL, 'admin_edit', 151, 152),
(249, 241, NULL, NULL, 'admin_add', 149, 150),
(248, 241, NULL, NULL, 'admin_view', 147, 148),
(247, 241, NULL, NULL, 'admin_index', 145, 146),
(246, 241, NULL, NULL, 'delete', 143, 144),
(245, 241, NULL, NULL, 'edit', 141, 142),
(244, 241, NULL, NULL, 'add', 139, 140),
(243, 241, NULL, NULL, 'view', 137, 138),
(242, 241, NULL, NULL, 'index', 135, 136),
(241, 174, NULL, NULL, 'Deals', 134, 155),
(240, 230, NULL, NULL, 'admin_delete', 131, 132),
(239, 230, NULL, NULL, 'admin_edit', 129, 130),
(238, 230, NULL, NULL, 'admin_add', 127, 128),
(237, 230, NULL, NULL, 'admin_view', 125, 126),
(236, 230, NULL, NULL, 'admin_index', 123, 124),
(235, 230, NULL, NULL, 'delete', 121, 122),
(234, 230, NULL, NULL, 'edit', 119, 120),
(233, 230, NULL, NULL, 'add', 117, 118),
(232, 230, NULL, NULL, 'view', 115, 116),
(231, 230, NULL, NULL, 'index', 113, 114),
(230, 174, NULL, NULL, 'DealTypes', 112, 133),
(229, 219, NULL, NULL, 'admin_delete', 109, 110),
(228, 219, NULL, NULL, 'admin_edit', 107, 108),
(227, 219, NULL, NULL, 'admin_add', 105, 106),
(226, 219, NULL, NULL, 'admin_view', 103, 104),
(225, 219, NULL, NULL, 'admin_index', 101, 102),
(224, 219, NULL, NULL, 'delete', 99, 100),
(223, 219, NULL, NULL, 'edit', 97, 98),
(222, 219, NULL, NULL, 'add', 95, 96),
(221, 219, NULL, NULL, 'view', 93, 94),
(220, 219, NULL, NULL, 'index', 91, 92),
(219, 174, NULL, NULL, 'DealStatuses', 90, 111),
(218, 208, NULL, NULL, 'admin_delete', 87, 88),
(217, 208, NULL, NULL, 'admin_edit', 85, 86),
(216, 208, NULL, NULL, 'admin_add', 83, 84),
(215, 208, NULL, NULL, 'admin_view', 81, 82),
(214, 208, NULL, NULL, 'admin_index', 79, 80),
(213, 208, NULL, NULL, 'delete', 77, 78),
(212, 208, NULL, NULL, 'edit', 75, 76),
(211, 208, NULL, NULL, 'add', 73, 74),
(210, 208, NULL, NULL, 'view', 71, 72),
(209, 208, NULL, NULL, 'index', 69, 70),
(208, 174, NULL, NULL, 'DealPurchases', 68, 89),
(207, 197, NULL, NULL, 'admin_delete', 65, 66),
(206, 197, NULL, NULL, 'admin_edit', 63, 64),
(205, 197, NULL, NULL, 'admin_add', 61, 62),
(204, 197, NULL, NULL, 'admin_view', 59, 60),
(203, 197, NULL, NULL, 'admin_index', 57, 58),
(202, 197, NULL, NULL, 'delete', 55, 56),
(201, 197, NULL, NULL, 'edit', 53, 54),
(200, 197, NULL, NULL, 'add', 51, 52),
(199, 197, NULL, NULL, 'view', 49, 50),
(198, 197, NULL, NULL, 'index', 47, 48),
(197, 174, NULL, NULL, 'DealAvailabilities', 46, 67),
(196, 186, NULL, NULL, 'admin_delete', 43, 44),
(195, 186, NULL, NULL, 'admin_edit', 41, 42),
(194, 186, NULL, NULL, 'admin_add', 39, 40),
(193, 186, NULL, NULL, 'admin_view', 37, 38),
(192, 186, NULL, NULL, 'admin_index', 35, 36),
(191, 186, NULL, NULL, 'delete', 33, 34),
(190, 186, NULL, NULL, 'edit', 31, 32),
(189, 186, NULL, NULL, 'add', 29, 30),
(188, 186, NULL, NULL, 'view', 27, 28),
(187, 186, NULL, NULL, 'index', 25, 26),
(186, 174, NULL, NULL, 'Countries', 24, 45),
(185, 175, NULL, NULL, 'admin_delete', 21, 22),
(184, 175, NULL, NULL, 'admin_edit', 19, 20),
(183, 175, NULL, NULL, 'admin_add', 17, 18),
(182, 175, NULL, NULL, 'admin_view', 15, 16),
(181, 175, NULL, NULL, 'admin_index', 13, 14),
(180, 175, NULL, NULL, 'delete', 11, 12),
(179, 175, NULL, NULL, 'edit', 9, 10),
(178, 175, NULL, NULL, 'add', 7, 8),
(177, 175, NULL, NULL, 'view', 5, 6),
(176, 175, NULL, NULL, 'index', 3, 4),
(175, 174, NULL, NULL, 'Cities', 2, 23),
(174, NULL, NULL, NULL, 'controllers', 1, 462),
(311, 308, NULL, NULL, 'index', 275, 276),
(312, 308, NULL, NULL, 'view', 277, 278),
(313, 308, NULL, NULL, 'add', 279, 280),
(314, 308, NULL, NULL, 'edit', 281, 282),
(315, 308, NULL, NULL, 'delete', 283, 284),
(316, 308, NULL, NULL, 'admin_index', 285, 286),
(317, 308, NULL, NULL, 'admin_view', 287, 288),
(318, 308, NULL, NULL, 'admin_add', 289, 290),
(319, 308, NULL, NULL, 'admin_edit', 291, 292),
(320, 308, NULL, NULL, 'admin_delete', 293, 294),
(321, 174, NULL, NULL, 'Acl', 296, 337),
(322, 321, NULL, NULL, 'Acos', 297, 304),
(323, 322, NULL, NULL, 'admin_index', 298, 299),
(324, 322, NULL, NULL, 'admin_empty_acos', 300, 301),
(325, 322, NULL, NULL, 'admin_build_acl', 302, 303),
(326, 321, NULL, NULL, 'Aros', 305, 336),
(327, 326, NULL, NULL, 'admin_index', 306, 307),
(328, 326, NULL, NULL, 'admin_check', 308, 309),
(329, 326, NULL, NULL, 'admin_users', 310, 311),
(330, 326, NULL, NULL, 'admin_update_user_role', 312, 313),
(331, 326, NULL, NULL, 'admin_ajax_role_permissions', 314, 315),
(332, 326, NULL, NULL, 'admin_role_permissions', 316, 317),
(333, 326, NULL, NULL, 'admin_user_permissions', 318, 319),
(334, 326, NULL, NULL, 'admin_empty_permissions', 320, 321),
(335, 326, NULL, NULL, 'admin_grant_all_controllers', 322, 323),
(336, 326, NULL, NULL, 'admin_deny_all_controllers', 324, 325),
(337, 326, NULL, NULL, 'admin_get_role_controller_permission', 326, 327),
(338, 326, NULL, NULL, 'admin_grant_role_permission', 328, 329),
(339, 326, NULL, NULL, 'admin_deny_role_permission', 330, 331),
(340, 326, NULL, NULL, 'admin_grant_user_permission', 332, 333),
(341, 326, NULL, NULL, 'admin_deny_user_permission', 334, 335),
(342, 174, NULL, NULL, 'Asset Compress', 338, 347),
(343, 342, NULL, NULL, 'CssFiles', 339, 342),
(344, 343, NULL, NULL, 'get', 340, 341),
(345, 342, NULL, NULL, 'JsFiles', 343, 346),
(346, 345, NULL, NULL, 'get', 344, 345),
(347, 174, NULL, NULL, 'Pages', 348, 351),
(348, 347, NULL, NULL, 'display', 349, 350),
(349, 174, NULL, NULL, 'BusinessTypes', 352, 373),
(350, 349, NULL, NULL, 'index', 353, 354),
(351, 349, NULL, NULL, 'view', 355, 356),
(352, 349, NULL, NULL, 'add', 357, 358),
(353, 349, NULL, NULL, 'edit', 359, 360),
(354, 349, NULL, NULL, 'delete', 361, 362),
(355, 349, NULL, NULL, 'admin_index', 363, 364),
(356, 349, NULL, NULL, 'admin_view', 365, 366),
(357, 349, NULL, NULL, 'admin_add', 367, 368),
(358, 349, NULL, NULL, 'admin_edit', 369, 370),
(359, 349, NULL, NULL, 'admin_delete', 371, 372),
(360, 174, NULL, NULL, 'Categories', 374, 395),
(361, 360, NULL, NULL, 'index', 375, 376),
(362, 360, NULL, NULL, 'view', 377, 378),
(363, 360, NULL, NULL, 'add', 379, 380),
(364, 360, NULL, NULL, 'edit', 381, 382),
(365, 360, NULL, NULL, 'delete', 383, 384),
(366, 360, NULL, NULL, 'admin_index', 385, 386),
(367, 360, NULL, NULL, 'admin_view', 387, 388),
(368, 360, NULL, NULL, 'admin_add', 389, 390),
(369, 360, NULL, NULL, 'admin_edit', 391, 392),
(370, 360, NULL, NULL, 'admin_delete', 393, 394),
(371, 174, NULL, NULL, 'DealsCategories', 396, 417),
(372, 371, NULL, NULL, 'index', 397, 398),
(373, 371, NULL, NULL, 'view', 399, 400),
(374, 371, NULL, NULL, 'add', 401, 402),
(375, 371, NULL, NULL, 'edit', 403, 404),
(376, 371, NULL, NULL, 'delete', 405, 406),
(377, 371, NULL, NULL, 'admin_index', 407, 408),
(378, 371, NULL, NULL, 'admin_view', 409, 410),
(379, 371, NULL, NULL, 'admin_add', 411, 412),
(380, 371, NULL, NULL, 'admin_edit', 413, 414),
(381, 371, NULL, NULL, 'admin_delete', 415, 416),
(382, 174, NULL, NULL, 'DealsRegions', 418, 439),
(383, 382, NULL, NULL, 'index', 419, 420),
(384, 382, NULL, NULL, 'view', 421, 422),
(385, 382, NULL, NULL, 'add', 423, 424),
(386, 382, NULL, NULL, 'edit', 425, 426),
(387, 382, NULL, NULL, 'delete', 427, 428),
(388, 382, NULL, NULL, 'admin_index', 429, 430),
(389, 382, NULL, NULL, 'admin_view', 431, 432),
(390, 382, NULL, NULL, 'admin_add', 433, 434),
(391, 382, NULL, NULL, 'admin_edit', 435, 436),
(392, 382, NULL, NULL, 'admin_delete', 437, 438),
(393, 263, NULL, NULL, 'sendNewMerchantMail', 199, 200),
(394, 174, NULL, NULL, 'Regions', 440, 461),
(395, 394, NULL, NULL, 'index', 441, 442),
(396, 394, NULL, NULL, 'view', 443, 444),
(397, 394, NULL, NULL, 'add', 445, 446),
(398, 394, NULL, NULL, 'edit', 447, 448),
(399, 394, NULL, NULL, 'delete', 449, 450),
(400, 394, NULL, NULL, 'admin_index', 451, 452),
(401, 394, NULL, NULL, 'admin_view', 453, 454),
(402, 394, NULL, NULL, 'admin_add', 455, 456),
(403, 394, NULL, NULL, 'admin_edit', 457, 458),
(404, 394, NULL, NULL, 'admin_delete', 459, 460);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, 'Admin', 1, 4),
(3, NULL, 'Role', 3, 'Public', 11, 24),
(15, 1, 'User', 20, NULL, 2, 3),
(16, NULL, 'User', 21, NULL, 25, 26),
(17, NULL, 'User', 22, NULL, 27, 28),
(18, NULL, 'User', 23, NULL, 29, 30),
(19, NULL, 'Role', 5, NULL, 31, 34),
(20, NULL, 'User', 24, NULL, 73, 74),
(21, NULL, 'Role', 6, NULL, 35, 72),
(22, 21, 'User', 25, NULL, 36, 37),
(23, 19, 'User', 26, NULL, 32, 33),
(24, 21, 'User', 27, NULL, 38, 39),
(25, 21, 'User', 28, NULL, 40, 41),
(26, 21, 'User', 29, NULL, 42, 43),
(27, 21, 'User', 30, NULL, 44, 45),
(28, 21, 'User', 31, NULL, 46, 47),
(29, 21, 'User', 32, NULL, 48, 49),
(30, 21, 'User', 33, NULL, 50, 51),
(31, 21, 'User', 34, NULL, 52, 53),
(32, 21, 'User', 35, NULL, 54, 55),
(33, 21, 'User', 36, NULL, 56, 57),
(34, 21, 'User', 37, NULL, 58, 59),
(35, 21, 'User', 38, NULL, 60, 61),
(36, 21, 'User', 39, NULL, 62, 63),
(37, 21, 'User', 40, NULL, 64, 65),
(38, 21, 'User', 41, NULL, 66, 67),
(39, 21, 'User', 42, NULL, 68, 69),
(40, 21, 'User', 43, NULL, 70, 71),
(41, NULL, 'User', 44, NULL, 75, 76);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(4, 3, 242, '1', '1', '1', '1'),
(3, 1, 174, '1', '1', '1', '1'),
(5, 3, 243, '1', '1', '1', '1'),
(6, 3, 312, '1', '1', '1', '1'),
(7, 3, 348, '1', '1', '1', '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `created`, `modified`, `name`, `title`, `slug`, `description`, `fine_print`, `highlights`, `venue_info`, `getting_there`, `things_to_do`, `things_to_do2`, `things_to_do3`, `things_to_do4`, `things_to_do5`, `destination`, `original_price`, `discounted_price`, `deal_live`, `deal_close`, `deal_valid`, `deal_expire`, `is_timed`, `max_purchases`, `max_nights`, `flat_fee`, `comission_percentage`, `private_note`, `purchase_pad`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `deal_status_id`, `reservation_type_id`, `venue_id`) VALUES
(2, '2011-07-31 16:32:41', '2011-10-03 20:42:44', 'Mexican Cruise', '35% off 7 night Mexican cruise to Cancun ', '', '<p>The moment you reach your first stop on your cruise, you&rsquo;ll understand why it&rsquo;s one of our top favorites. With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top level of the ship with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, the chef insists that everyone try their local style cerviche.</p>\r\n<p>Enjoy the solitude or go out on the town, as the ship has everything you could imagine. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with other passengers. &nbsp;There are multiple restaurants, bars, swimming pools, spas, theaters and dance halls. &nbsp;They even have a rock climbing gym to stay fit.</p>\r\n<p>If you have any additional requests or needs, your captain and crew encourage you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Visit the best beaches of Mexico</li>\r\n<li>All food and drinks included</li>\r\n<li>Complementary room upgrade</li>\r\n<li>Free onboard internet connection</li>\r\n</ul>', 'With over 100 members staff members onboard your ship, you will be pampered in the best class service possible.\r\n', '<p>Plane</p>\r\n<p>The best way to get to your departure port is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from the ship&rsquo;s pier. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p>Train</p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p>Other</p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;Call them directly and they&rsquo;ll be happy to make all the arrangements.</p>', '<div class="slide first_slide"><img src="http://demo.traveltipping.com/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Number 1 </strong></p>\r\n<p>Lay on the whitest and cleanest beaches you&rsquo;ve ever seen. Relax, sleep and get a tan.</p>\r\n</div>\r\n</div>', '<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It&rsquo;s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>', '<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You&rsquo;ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>', '<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There&rsquo;s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Cancun', 1000.00, 650.00, '2011-07-31', '2011-09-01', '2011-09-10', '2011-09-18', 1, 45, 5, NULL, 15.00, '', 20, 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 4, 2, 2),
(3, '2011-07-31 19:24:57', '2011-10-03 20:43:26', 'Getaway in Israel', '45% one week stay on the most beautiful island in Thailand', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites.&nbsp;&nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away.&nbsp; It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life.&nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor.&nbsp; They serve the best specialties dishes of the region.&nbsp; In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. You can stay out all night, dancing, eating, drinking and mingling with friendly locals. It''s also well situated between two public transit stops for those taking public transportation. You''ll find a grocery store two blocks away and the beach one step from your room.</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world''s most ancient cities</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two Thai Massages</li>\r\n<li>Includes dinner for two at the Thai Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.  If you need to make any special requests, they''ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. Once landed you can take the 45 bus line which will stop within 500 feet from where you''re staying. You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. The closest stop is the Termini station. Once there, you can take a short cab ride. It should be less than $10. Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. You can also rent a car, which will run about $50 a day - more if you want to get better insurance coverage.</p>', '<div class="slide"><img src="http://demo.traveltipping.com/uploads/Image%202.jpg" alt="" />\r\n<div class="things_to_do_content">\r\n<p><strong> 1. Things To Do Title 1 </strong></p>\r\n<p>Visit this ancient temple, one of the most famous in the world. It''s said that many people have been cured by the healing powers of the water here.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Title 1\r\n</strong>\r\n</p>\r\n<p> Hike to the top of this Elnis Mountain. You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%206.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Title 1\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.</p>\r\n</div>\r\n</div>', '<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit the world''s largest petrified wood forest.  You''ll find an entire groove of petrified trees dating back from the time dinosaurs roamed the earth.</p>\r\n</div>\r\n</div>', 'Cambodia', 124.00, 45.00, '2011-07-31', '2011-09-11', '2011-11-01', '2012-02-01', 0, 250, 3, NULL, 10.00, '', 0, 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 2, 1, 4),
(4, '2011-07-31 20:28:08', '2011-07-31 20:28:08', 'Hotel in Peru', '50% off 4 night stay in Peru ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul><li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>\r\n', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p>Plane</p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p>&nbsp;</p>\r\n<p>Train</p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p>&nbsp;</p>\r\n<p>Other</p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>', '<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>Visit the world''s largest petrified wood forest.  You''ll find an entire groove of petrified trees dating back from the time dinosaurs roamed the earth.\r\n</p>\r\n</div>\r\n</div>', 'Peru', 520.00, 260.00, '2011-07-31', '2011-09-12', '2011-09-28', '2011-12-31', 1, 50, 5, NULL, 15.00, '', 0, 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Woman%20on%20the%20Beach.jpg', 3, 2, 3),
(5, '2011-07-31 20:44:04', '2011-07-31 20:44:04', 'Fiji Cottage', '75% cottage on the white sands of Fiji ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>One week stay on Fiji&rsquo;s main island</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two oceanside massages</li>\r\n<li>Includes dinner for two at the Fresh Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you’ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There’s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Fiji', 2500.00, 625.00, '2011-07-31', '2011-08-20', '2011-09-30', '2012-03-07', 1, 80, 7, NULL, 15.00, '', 20, 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/venice.png', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 4, 1, 5),
(6, '2011-07-31 21:03:52', '2011-07-31 21:03:52', 'Tahiti Villa', '40% the most amazing villa in the world ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p><span style="font-family: mceinline;">Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</span></p>\r\n<p><span style="font-family: mceinline;">Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</span></p>\r\n<p><span style="font-family: mceinline;">If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</span></p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>One week stay on Tahiti&rsquo;s main island</li>\r\n<li>Cottage directly on the beach</li>\r\n<li>Includes two oceanside massages</li>\r\n<li>Includes dinner for two at the Fresh Restaurant</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family. &nbsp;If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Tahiti', 190.00, 114.00, '2011-07-31', '2011-09-20', '2011-10-18', '2011-12-31', 1, 30, 8, NULL, 15.00, '', 0, 'http://demo.traveltipping.com/uploads/Woman%20on%20the%20Beach.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 5, 1, 6),
(7, '2011-08-01 08:34:23', '2011-08-01 08:34:23', 'Greek Isle Hotel', '55% off Greek isle hotel with amazing views ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '\r\n<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n', '\r\n</p>\r\n</div>\r\n</div>\r\n\r\n<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Greece', 150.00, 68.00, '2011-08-01', '2011-10-01', '2011-10-01', '2011-12-01', 1, 75, 14, NULL, 15.00, '', 0, 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Woman%20on%20the%20Beach.jpg', 'http://demo.traveltipping.com/uploads/Santorini.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 4, 1, 7),
(8, '2011-08-01 18:44:11', '2011-08-01 18:44:11', 'Tuscany', '42% off hotel in the heart of Tuscany ', '', '<p>The moment you reach this hotel, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>If you have any additional requests or needs, your host encourages you to ask. &nbsp;They are more than happy to accommodate your group as needed. &nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>Stay in one of the world&rsquo;s most ancient cities</li>\r\n<li>Complementary breakfast</li>\r\n<li>One walking tour of the city included</li>\r\n<li>Free museum passes for two</li>\r\n</ul>', '<p>This quaint hotel is owned and operated by the Figora family.<span style="mso-spacerun: yes;">&nbsp; </span>If you need to make any special requests, they&rsquo;ll be happy to help!</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '\r\n<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Visit this ancient coliseum, where gladiators fought for the Roman Empire in 65AD.  It''s only a half mile walk away.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide second_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide third_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide fourth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide fifth_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Tuscany', 182.00, 106.00, '2011-08-01', '2011-10-01', '2011-10-01', '2011-12-01', 1, 200, 5, NULL, NULL, '', 0, 'http://demo.traveltipping.com/uploads/Tuscany.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Image%202.jpg', 4, 1, 8),
(9, '2011-08-02 20:32:22', '2011-08-02 20:32:22', 'Asia 3', '68% off 14 day jungle tour of Cambodia ', '', '<p>The moment you reach your first stop on your tour, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>&nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>14 Day tour of Cambodia</li>\r\n<li>Breakfast included</li>\r\n<li>Includes all transportation and accommodation costs</li>\r\n<li>Visit 7 cities and 4 ancient temples</li>\r\n</ul>', '<p>This tour is operated by the Tour Company, and they&rsquo;ve been guiding tours in the country for more than 20 years.</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'Cambodia', 4063.00, 1300.00, '2011-08-06', '2012-08-02', '2011-10-02', '2011-11-02', 0, 25, 3, NULL, 10.00, '', 0, 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Beach.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Beach%20View.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', '', 4, 1, 9),
(10, '2011-08-02 20:51:53', '2011-08-02 20:51:53', '', '52% off hotel night in California wine country', '', '<p>The moment you reach your first stop on your tour, you&rsquo;ll understand why it&rsquo;s one of our top favorites. &nbsp; With grand views of the surrounding area, you&rsquo;ll be immersed in culture, history and relaxing activities that will take your breath away. &nbsp;It&rsquo;s a great way to spend a vacation holiday with your significant other, away from the stress of work and everyday life. &nbsp;</p>\r\n<p>Your room is on the top floor with it&rsquo;s own private balcony. Your accommodation also has AC, free wifi, free parking, plenty of outdoor gear for roaming the countryside, laundry and a restaurant on the ground floor. &nbsp;They serve the best specialties dishes of the region. &nbsp;In fact, your host insists that everyone try their local style cerviche, the best in town.</p>\r\n<p>Enjoy the solitude or go out on the town, as your host is situated only a short walk from the city center. &nbsp;You can stay out all night, dancing, eating, drinking and mingling with friendly locals. &nbsp;It&rsquo; also well situated between two public transit stops for those taking public transportation. &nbsp;You&rsquo;ll find a grocery store two blocks away and the beach one step from your room.</p>\r\n<p>&nbsp;</p>', '<p>Package includes taxes and fees.</p>\r\n<p>Voucher cannot be applied towards previous reservations or groups.</p>\r\n<p>Normal property cancellation policies apply; voucher subject to forfeiture value.</p>\r\n<p>Sales are non-refundable, changes are subject to availability.</p>', '<ul>\r\n<li>14 Day tour of Cambodia</li>\r\n<li>Breakfast included</li>\r\n<li>Includes all transportation and accommodation costs</li>\r\n<li>Visit 7 cities and 4 ancient temples</li>\r\n</ul>', '<p>This tour is operated by the Tour Company, and they&rsquo;ve been guiding tours in the country for more than 20 years.</p>', '<p><strong>Plane</strong></p>\r\n<p>The best way to get to your destination is by flying into the Chiampano Airport located 45 miles away. &nbsp;Once landed you can take the 45 bus line which will stop within 500 feet from where you&rsquo;re staying. &nbsp;You can also take a cab from the airport, which will cost around $30.</p>\r\n<p><strong>Train</strong></p>\r\n<p>You can also arrive by train. &nbsp;The closest stop is the Termini station. &nbsp;Once there, you can take a short cab ride. It should be less than $10. &nbsp;Just make sure you take a metered cab!</p>\r\n<p><strong>Other</strong></p>\r\n<p>Your host can also provide for a pickup from the train station or the airport. &nbsp;You can also rent a car, which will run about $50 a day &ndash; more if you want to get better insurance coverage.</p>', '<div class="slide first_slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%202.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>Laying on the whitest and cleanest beaches you''ve ever seen.  Relax, sleep and get a tan.\r\n\r\n</p>\r\n</div>\r\n</div>', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%203.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n2. Things To Do Number 2\r\n</strong>\r\n</p>\r\n<p>Visit this ancient temple, one of the most famous in the world.  It''s said that many people have been cured by the healing powers of the water here.\r\n\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%201.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n3. Things To Do Number 3\r\n</strong>\r\n</p>\r\n<p>Hike to the top of this Elnis Mountain.  You''ll be rewarded with the most amazing views in the entire area and a beautiful sunset if you make the trek in the evening.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%204.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n4. Things To Do Number 4\r\n</strong>\r\n</p>\r\n<p>Want to taste the best seafood known to man?  Try the Fresh Restaurant to appease your saltwater appetite.  This restaurant is world renowned.\r\n</p>\r\n</div>\r\n</div>\r\n', '\r\n<div class="slide">\r\n<img src="http://demo.traveltipping.com/uploads/Image%207.jpg">\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n5. Things To Do Number 5\r\n</strong>\r\n</p>\r\n<p>This small village, located only five miles for you, has a fantastic open festival every Friday night.  There''s live music, dancing.  It''s one of the best night scenes around.\r\n</p>\r\n</div>\r\n</div>', 'California', 105.00, 50.00, '2011-08-09', '2011-08-02', '2011-08-02', '2011-08-02', 0, 100, 6, NULL, 10.00, '', 0, 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Lodge.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', 'http://demo.traveltipping.com/uploads/Venice.jpg', 'http://demo.traveltipping.com/uploads/Greece.jpg', '', 4, 1, 10),
(24, '2011-10-06 17:51:00', '2011-10-06 17:51:00', 'Brand new deal', '', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-02', '2011-10-06', '2011-10-06', '2011-10-10', 1, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', 1, 1, 1),
(26, '2011-10-08 21:47:26', '2011-10-08 21:47:26', 'It''s a great deal', '', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-10-08', '2011-11-08', '2011-11-08', '2011-12-08', 1, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', 4, 1, 11);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=95 ;

--
-- Dumping data for table `deals_categories`
--

INSERT INTO `deals_categories` (`id`, `created`, `modified`, `deal_id`, `category_id`) VALUES
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(52, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2),
(53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(94, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=128 ;

--
-- Dumping data for table `deals_regions`
--

INSERT INTO `deals_regions` (`id`, `created`, `modified`, `deal_id`, `region_id`) VALUES
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 2),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 6),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2),
(57, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 2),
(58, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 3),
(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 5),
(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 6),
(126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 4),
(127, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `deal_availabilities`
--

INSERT INTO `deal_availabilities` (`id`, `created`, `modified`, `deal_id`, `reservation_date`, `num_available`) VALUES
(1, '2011-10-06 17:52:39', '2011-10-06 17:52:39', 24, '2011-10-06', 11),
(2, '2011-10-06 17:52:39', '2011-10-06 17:52:39', 24, '2011-10-07', 11),
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
(36, '2011-10-08 22:26:41', '2011-10-08 22:26:41', 26, '2011-12-08', 10);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

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
(13, '2011-10-01 12:25:41', '2011-10-01 12:25:41', 7, 13, '273fda7846', '2011-11-07', '2011-11-21', 68, 'dq7p5g');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `created`, `modified`, `about_us`, `website`, `business_reviews`, `business_name`, `city`, `postal_code`, `address`, `second_address`, `user_id`, `state`, `first_name`, `last_name`, `phone`, `country_id`, `business_type_id`) VALUES
(11, '2011-04-14 18:17:51', '2011-06-07 19:36:35', 'We are a fantastic company', 'http://www.test.com', 'They are great!', 'Awesome Get Aways', 'Oakland', '937891', '788 Nevah!', 'My 2nd address', 21, 'CA', '', '', '', 1, 0),
(13, '2011-06-16 19:14:24', '2011-09-28 11:57:06', 'We are...the B Bizzle!', 'bbizzle.com', 'They''re bizzlin!', 'The B Bizzle', 'San Francico', '94618', '6616 Ave', '', 24, 'CA', 'Buster3', 'Blackmail', '+1 01 23 490', 1, 2),
(14, '2011-07-25 19:14:15', '2011-07-25 19:14:15', NULL, 'test', NULL, 'Charlie Company', 'Camptown', '94661', '722 C St', '727 A', 26, 'CA', 'Charlie', 'Roth', '805-234-4944', 1, 1),
(15, '2011-10-08 11:58:25', '2011-10-08 12:14:40', NULL, '', NULL, 'Test', 'Oaklan', '99111', '17 Test', '', 44, 'CA', 'David', 'Roth', '1jkl', 1, 1);

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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `confirmation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `created`, `modified`, `user_id`, `confirmation`) VALUES
(1, '2011-10-11', '2011-10-11', 24, '06465ce8c1');

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
(3, 'Public', 'public', '2009-04-05 00:12:38', '2009-04-07 01:41:45'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

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
(31, '2011-07-30 18:19:39', '2011-07-30 18:19:39', 43, NULL, NULL, NULL, NULL, 'ajkl;sl;', 'jkla');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `created`) VALUES
(20, 1, 'aa361d06c20a989716f6747d0041a47f90bbf920', 'Admin', 'admin@tt.com', '', '', '', '', '', 1, '2011-05-27 23:49:06', '2011-05-27 23:49:06'),
(22, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'traveler@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-06-29 20:27:15', '2011-06-14 08:31:52'),
(24, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'merchant@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-09-28 11:57:06', '2011-06-16 19:14:24'),
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
(44, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'dave@traveltipping.com', NULL, '', NULL, NULL, '0', 1, '2011-10-08 12:14:39', '2011-10-08 11:58:25');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `created`, `modified`, `name`, `email`, `website`, `address1`, `address2`, `city`, `state`, `postal_code`, `country_id`, `business_type_id`, `merchant_id`) VALUES
(1, '2011-07-31 14:02:51', '2011-07-31 14:02:51', 'calistogahotel', 'contact@calistogahotel.com', 'www.calistogahotel.ex', '', '', '', '', '', 1, 0, 13),
(2, '2011-07-31 16:25:17', '2011-07-31 16:25:17', 'Cruise Mexico', 'info@cruisemexico.com', 'www.cruisemexico.ex', '', '', '', '', '', 1, 0, 13),
(3, '2011-07-31 16:25:52', '2011-07-31 16:25:52', 'Peru Hotel', 'contact@peruhotel.com', 'www.peruhotel.ex', '', '', '', '', '', 1, 0, 13),
(4, '2011-07-31 19:19:34', '2011-07-31 19:19:34', 'Ko Phi Phi', 'contact@kophiphi.com', 'www.kophiphi.ex', '', '', '', '', '', 1, 0, 13),
(5, '2011-07-31 20:39:43', '2011-07-31 20:39:43', 'Fiji Cottage', 'service@fijicottage.com', 'www.fijicottage.ex', '', '', '', '', '', 1, 0, 13),
(6, '2011-07-31 20:40:08', '2011-07-31 20:40:08', 'Tahiti Villa', 'service@tahitivilla.com', 'www.tahitivilla.ex', '', '', '', '', '', 1, 0, 13),
(7, '2011-08-01 08:29:21', '2011-08-01 08:29:21', 'Greek Bed & Breakfast', 'contact@greekbnb.com', 'www.greekbnb.ex', '', '', '', '', '', 1, 0, 13),
(8, '2011-08-01 08:29:54', '2011-08-01 08:29:54', 'Italy Villa', 'contact@italyvilla.com', 'www.italyvilla.ex', '', '', '', '', '', 1, 0, 13),
(9, '2011-08-02 20:27:13', '2011-08-02 20:27:13', 'Cambodia Lodge', 'contact@cambodialodge.com', 'www.cambodialodge.ex', '', '', '', '', '', 1, 0, 13),
(10, '2011-08-02 20:50:21', '2011-08-02 20:50:21', 'Calistoga Hotel', 'contact@calistogahotel.com', 'www.calistogahotel.ex', '', '', '', '', '', 1, 0, 13),
(11, '2011-10-08 21:44:16', '2011-10-08 21:44:16', 'Dave''s Test Venue', '', '', '1512 Test', '', 'Oakland', 'Ca', '94112', 1, 1, 15);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
