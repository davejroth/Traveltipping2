-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2011 at 04:16 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, 'Admin', 1, 4),
(2, NULL, 'Role', 5, 'Merchant', 5, 16),
(3, NULL, 'Role', 6, 'Traveler', 17, 40),
(4, 1, 'User', 20, 'admin@tt.com', 2, 3),
(5, 3, 'User', 27, 'ajax@tt.com', 18, 19),
(6, 3, 'User', 28, 'ajax2@tt.com', 20, 21),
(7, 3, 'User', 31, 'ajax3@tt.com', 22, 23),
(8, 3, 'User', 32, 'ajax4@tt.com', 24, 25),
(9, 3, 'User', 33, 'ajax5@tt.com', 26, 27),
(10, 3, 'User', 35, 'briamh@tt.com', 28, 29),
(11, 2, 'User', 44, 'dave@traveltipping.com', 6, 7),
(12, 2, 'User', 51, 'davejroth@gmail.com', 8, 9),
(13, 2, 'User', 24, 'merchant@tt.com', 10, 11),
(14, 2, 'User', 26, 'merchant2@tt.com', 12, 13),
(15, 3, 'User', 52, 'mr.roth.school@gmail.com', 30, 31),
(16, 3, 'User', 29, 'redirect@tt.com', 32, 33),
(17, 3, 'User', 30, 'test2@tt.com', 34, 35),
(18, 3, 'User', 34, 'test6@tt.com', 36, 37),
(19, 2, 'User', 50, 'tester@test.com', 14, 15),
(20, 3, 'User', 22, 'traveler@tt.com', 38, 39);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
