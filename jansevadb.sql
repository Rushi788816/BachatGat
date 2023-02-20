-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2017 at 09:16 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jansevadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `loan-mem`
--

CREATE TABLE IF NOT EXISTS `loan-mem` (
  `lm_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `loan_from(bg_id)` int(11) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `reason` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `m_id` int(10) NOT NULL,
  `username` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '12345',
  PRIMARY KEY (`m_id`),
  KEY `m_id` (`m_id`),
  KEY `m_id_2` (`m_id`),
  KEY `m_id_3` (`m_id`),
  KEY `m_id_4` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`m_id`, `username`, `password`) VALUES
(1, 'test1', '12345'),
(2, 'test2', '12345'),
(3, 'test3', '12345'),
(4, 'test4', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `member_info`
--

CREATE TABLE IF NOT EXISTS `member_info` (
  `sr_no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `fname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` int(12) NOT NULL,
  `mob_no` int(12) NOT NULL,
  `bg_id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `maritial_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `pan_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `adar_no` int(20) NOT NULL,
  `vote_id` tinyint(1) NOT NULL,
  `pan` tinyint(1) NOT NULL,
  `gov_id` tinyint(1) NOT NULL,
  `driving_lic` tinyint(1) NOT NULL,
  `emp_id` tinyint(1) NOT NULL,
  `gram_id` tinyint(1) NOT NULL,
  `sal_slip` tinyint(1) NOT NULL,
  `in_tax` tinyint(1) NOT NULL,
  `hou_tax` tinyint(1) NOT NULL,
  `ele_bill` tinyint(1) NOT NULL,
  `bank_state` tinyint(1) NOT NULL,
  `emp_letter` tinyint(1) NOT NULL,
  `adar_card` tinyint(1) NOT NULL,
  `salaried` tinyint(1) NOT NULL,
  `self_emp` tinyint(1) NOT NULL,
  `business` tinyint(1) NOT NULL,
  `student` tinyint(1) NOT NULL,
  `retired` tinyint(1) NOT NULL,
  `agri` tinyint(1) NOT NULL,
  `other` tinyint(1) NOT NULL,
  `nom_fname` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nom_mname` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nom_lname` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `rel_nom` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nom_add` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mem_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`sr_no`),
  KEY `m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member_owner`
--

CREATE TABLE IF NOT EXISTS `member_owner` (
  `m_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  KEY `m_id` (`m_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member_owner`
--

INSERT INTO `member_owner` (`m_id`, `owner_id`) VALUES
(1, 2),
(1, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE IF NOT EXISTS `scheme` (
  `scheme_id` int(11) NOT NULL,
  `scheme_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `amount` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_info`
--
ALTER TABLE `member_info`
  ADD CONSTRAINT `member_info_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `login` (`m_id`);

--
-- Constraints for table `member_owner`
--
ALTER TABLE `member_owner`
  ADD CONSTRAINT `member_owner_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `login` (`m_id`),
  ADD CONSTRAINT `member_owner_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `login` (`m_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




/* This comment is inserted by charu*/
/* This comment is added by charu,sneha and suresh*/;
