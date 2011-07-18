-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2011 at 11:46 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

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
(19, NULL, 'Role', 5, NULL, 31, 32),
(20, NULL, 'User', 24, NULL, 35, 36),
(21, NULL, 'Role', 6, NULL, 33, 34);

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
  `image1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image3` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image4` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image5` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image6` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `deal_status_id` bigint(20) DEFAULT NULL,
  `merchant_id` bigint(20) unsigned NOT NULL,
  `reservation_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `created`, `modified`, `name`, `title`, `slug`, `description`, `fine_print`, `highlights`, `venue_info`, `getting_there`, `things_to_do`, `destination`, `original_price`, `discounted_price`, `deal_live`, `deal_close`, `deal_valid`, `deal_expire`, `is_timed`, `max_purchases`, `max_nights`, `flat_fee`, `comission_percentage`, `private_note`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `venue_name`, `venue_email`, `venue_website`, `address1`, `address2`, `city`, `state`, `postal_code`, `country_id`, `deal_status_id`, `merchant_id`, `reservation_type_id`) VALUES
(1, '2011-07-16 10:30:56', '2011-07-16 10:30:56', 'Deal 1', 'Awesome Trip', 'deal1', 'This is the Description', 'This is the Fine Print', '<ul>\r\n<li>HIghtlight 1</li>\r\n<li>HIghtlight 2</li>\r\n<li>HIghtlight 3</li>\r\n</ul>', 'This is the host info', '<p><strong>Plane</strong></p>\r\n<p>\r\nLorem ipsum dolor sit amet, con\r\nsectetur adipiscing elit. Aenean\r\nscelerisque, quam ut viverra sec\r\ntetur, nibh tellus ultrices metus,\r\nac vestibulu neque massa qu.</p>', '<div class="slide">\r\n<img src="/img/static/things_to_do1.png" />\r\n<div class="things_to_do_content">\r\n<p>\r\n<strong>\r\n1. Things To Do Number 1\r\n</strong>\r\n</p>\r\n<p>ctetur adipiscing elit. Aenean sce\r\nris que, quam ut viverra consecte\r\nur, nibh tellus ultrices metus, ac \r\nvestibuluneque massa quis arcu. \r\nNulla sagittis blandit ante. Morbi \r\nmassa id libero tempor fringilla. \r\nSed quis fringilla enim</p>\r\n</div>\r\n</div>', 'Paris, France', 100.00, 50.00, '2011-07-22', '2011-07-30', '2011-08-16', '2011-10-16', 0, 25, NULL, NULL, 10.00, '', '', '', '', '', '', '', 'Hotel Motel', 'someone@hotel.com', 'www.website.com', '123 Hotel St.', '', 'Paris', '', '', 1, 1, 13, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `deals_categories`
--

INSERT INTO `deals_categories` (`id`, `created`, `modified`, `deal_id`, `category_id`) VALUES
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `deals_regions`
--

INSERT INTO `deals_regions` (`id`, `created`, `modified`, `deal_id`, `region_id`) VALUES
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 6),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 2),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 6),
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 6),
(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `deal_availabilities`
--

INSERT INTO `deal_availabilities` (`id`, `created`, `modified`, `deal_id`, `reservation_date`, `num_available`) VALUES
(2, '2011-05-18 05:55:12', '2011-05-18 05:55:12', 1, '2011-05-19', 10);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `deal_purchases`
--

INSERT INTO `deal_purchases` (`id`, `created`, `modified`, `deal_id`, `traveler_id`, `confirmation_code`, `start_date`, `end_date`) VALUES
(33, '2011-05-11 20:29:29', '2011-05-11 20:29:29', 1, 3, NULL, '2011-05-11', '2011-05-11'),
(34, '2011-05-11 20:41:46', '2011-05-11 20:41:46', 2, 11, 'a2335fb3', '2011-05-11', '2011-05-11'),
(35, '2011-05-11 20:43:49', '2011-05-11 20:43:49', 4, 8, '32b72621a2', '2011-05-11', '2011-05-11'),
(36, '2011-06-11 09:44:06', '2011-06-11 09:44:06', 3, 3, '207caa3063', '2011-06-11', '2011-06-13'),
(37, '2011-06-11 09:44:22', '2011-06-11 09:44:22', 3, 8, '304351097f', '2011-06-11', '2011-06-18'),
(38, '2011-06-11 09:44:42', '2011-06-11 09:44:42', 3, 3, '354c6642d5', '2011-06-15', '2011-06-20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `deal_statuses`
--

INSERT INTO `deal_statuses` (`id`, `created`, `modified`, `name`) VALUES
(1, '2011-04-13 08:27:12', '2011-06-14 19:43:50', 'Listed'),
(3, '2011-04-13 08:27:33', '2011-04-13 08:27:33', 'Closed'),
(4, '2011-06-14 19:42:20', '2011-06-14 19:42:20', 'Initiated'),
(5, '2011-06-14 19:42:39', '2011-06-14 19:42:39', 'Submitted'),
(6, '2011-06-14 19:43:23', '2011-06-14 19:43:23', 'Pending Approval'),
(7, '2011-06-14 19:43:29', '2011-06-14 19:43:29', 'Approved'),
(8, '2011-06-14 19:44:25', '2011-06-14 19:44:25', 'Cancelled');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `images`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `created`, `modified`, `about_us`, `website`, `business_reviews`, `business_name`, `city`, `postal_code`, `address`, `second_address`, `user_id`, `state`, `first_name`, `last_name`, `phone`, `country_id`, `business_type_id`) VALUES
(11, '2011-04-14 18:17:51', '2011-06-07 19:36:35', 'We are a fantastic company', 'http://www.test.com', 'They are great!', 'Awesome Get Aways', 'Oakland', '937891', '788 Nevah!', 'My 2nd address', 21, 'CA', '', '', '', 1, 0),
(13, '2011-06-16 19:14:24', '2011-07-11 21:25:53', 'We are...the B Bizzle!', 'bbizzle.com', 'They''re bizzlin!', 'The B Bizzle', 'San Francico', '94618', '6616 Ave', '', 24, 'California', 'Buster', 'Blackmail', '+1 01 23 490', 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

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
(13, '2011-06-14 08:31:52', '2011-06-29 20:27:15', 22, 1, '2011-06-14', 1, '9412', 'Michael2', 'Myers');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `created`) VALUES
(20, 1, 'aa361d06c20a989716f6747d0041a47f90bbf920', 'Admin', 'admin@traveltipping.com', '', '', '', '', '', 1, '2011-05-27 23:49:06', '2011-05-27 23:49:06'),
(22, 6, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'traveler@tt.com', NULL, '', NULL, NULL, '0', 1, '2011-06-29 20:27:15', '2011-06-14 08:31:52'),
(24, 5, 'aa361d06c20a989716f6747d0041a47f90bbf920', '', 'bamboozle3@thabiz.com', NULL, '', NULL, NULL, '0', 1, '2011-07-11 21:25:53', '2011-06-16 19:14:24');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
