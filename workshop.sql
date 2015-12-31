-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 25, 2014 at 06:47 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `techweek14`
--

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE IF NOT EXISTS `workshop` (
  `stu_id` int(3) NOT NULL AUTO_INCREMENT,
  `robotics` varchar(1) NOT NULL DEFAULT 'N',
  `programming` varchar(1) NOT NULL DEFAULT 'N',
  `dip` varchar(1) NOT NULL DEFAULT 'N',
  `designing` varchar(1) NOT NULL DEFAULT 'N',
  `webd` varchar(1) NOT NULL DEFAULT 'N',
  `solidworks` varchar(1) NOT NULL DEFAULT 'N',
  `animation` varchar(1) NOT NULL DEFAULT 'N',
  `wattack` varchar(1) NOT NULL DEFAULT 'N',
  `oss` varchar(1) NOT NULL DEFAULT 'N',
  `suggestions` text,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
