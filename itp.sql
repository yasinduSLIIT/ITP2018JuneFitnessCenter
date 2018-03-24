-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 08:13 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `memberID` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`memberID`, `UserName`, `password`) VALUES
('1', 'Admin', '123'),
('2', 'user', '456');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `MemId` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  PRIMARY KEY (`MemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemId`, `Name`, `Age`, `Address`) VALUES
('1', 'Nick Anderson', '25', '35/A NewYork,USA'),
('2', 'Mark Anthony', '35', 'Melbourne, Australia');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `WId` varchar(20) NOT NULL,
  `workout` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timeduration` varchar(20) DEFAULT NULL,
  `memberId` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`WId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`WId`, `workout`, `date`, `timeduration`, `memberId`) VALUES
('1', 'Back Work Out', '2018-03-26', '20min', '1'),
('2', 'Chesst Work out', '2018-03-27', '10min', '1'),
('3', 'Shoulder Work Out', '2018-03-26', '10min', '2');

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE IF NOT EXISTS `weight` (
  `memberId` varchar(50) NOT NULL,
  `CurrentWeight` int(10) NOT NULL,
  `StartingWeight` int(10) NOT NULL,
  `PlanWeight` int(10) DEFAULT NULL,
  PRIMARY KEY (`memberId`),
  UNIQUE KEY `CurrentWeight` (`CurrentWeight`,`StartingWeight`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`memberId`, `CurrentWeight`, `StartingWeight`, `PlanWeight`) VALUES
('1', 70, 90, 55),
('2', 65, 85, 40);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
