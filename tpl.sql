-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 15, 2015 at 04:05 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `stu_choices`
--

CREATE TABLE IF NOT EXISTS `stu_choices` (
  `email` varchar(35) DEFAULT NULL,
  `Coding` int(2) DEFAULT NULL,
  `Designing` int(2) DEFAULT NULL,
  `Photography` int(2) DEFAULT NULL,
  `Debating` int(2) DEFAULT NULL,
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_details`
--

CREATE TABLE IF NOT EXISTS `stu_details` (
  `S.No.` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `email` varchar(35) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `CSI` varchar(5) NOT NULL,
  `img_url` varchar(100) NOT NULL DEFAULT 'uploads/null.jpg',
  PRIMARY KEY (`email`),
  UNIQUE KEY `S.No.` (`S.No.`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `stu_login`
--

CREATE TABLE IF NOT EXISTS `stu_login` (
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stu_score`
--

CREATE TABLE IF NOT EXISTS `stu_score` (
  `email` varchar(35) DEFAULT NULL,
  `coding` int(5) DEFAULT '0',
  `designing` int(5) DEFAULT '0',
  `photography` int(5) DEFAULT '0',
  `debating` int(5) DEFAULT '0',
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stu_choices`
--
ALTER TABLE `stu_choices`
  ADD CONSTRAINT `stu_choices_ibfk_1` FOREIGN KEY (`email`) REFERENCES `stu_details` (`email`);

--
-- Constraints for table `stu_login`
--
ALTER TABLE `stu_login`
  ADD CONSTRAINT `stu_login_ibfk_1` FOREIGN KEY (`email`) REFERENCES `stu_details` (`email`);

--
-- Constraints for table `stu_score`
--
ALTER TABLE `stu_score`
  ADD CONSTRAINT `stu_score_ibfk_1` FOREIGN KEY (`email`) REFERENCES `stu_details` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
