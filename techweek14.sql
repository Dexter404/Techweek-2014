-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 25, 2014 at 06:46 PM
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
-- Table structure for table `response`
--

CREATE TABLE IF NOT EXISTS `response` (
  `stu_id` int(3) NOT NULL AUTO_INCREMENT,
  `ques1` int(1) DEFAULT NULL,
  `ques2` int(1) DEFAULT NULL,
  `ques3` int(1) DEFAULT NULL,
  `ques4` int(1) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `stu_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `branch` varchar(40) NOT NULL,
  `year` int(1) NOT NULL,
  `contact` bigint(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `college` varchar(40) NOT NULL,
  `interest` varchar(10) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  ADD CONSTRAINT `response_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
