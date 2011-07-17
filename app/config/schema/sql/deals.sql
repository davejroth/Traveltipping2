-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2011 at 10:27 AM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
