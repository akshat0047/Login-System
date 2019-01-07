-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2019 at 11:56 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `STORE`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `user_uid` varchar(30) NOT NULL,
  `Product_Name` char(100) DEFAULT NULL,
  `Product_Type` char(40) DEFAULT NULL,
  `Product_Description` char(200) DEFAULT NULL,
  `time_since_purchase` date DEFAULT NULL,
  `Product_Pic` varchar(255) DEFAULT NULL,
  `Product_Price` int(6) DEFAULT NULL,
  `idno` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`user_uid`, `Product_Name`, `Product_Type`, `Product_Description`, `time_since_purchase`, `Product_Pic`, `Product_Price`, `idno`) VALUES
('akshat0047', 'Hk DAs', 'Study Material Hardcopy', 'Its in a good condition with no torn pages', '2019-01-16', 'Hk DAs.jpg', 200, 1),
('akshat0047', 'sadasd', 'Electronics', 'Its in a good condition with no torn pages', '2019-01-15', 'sadasd.jpg', 345, 2),
('akshat0047', 'sfsaf', 'Electronics', 'Its in a good condition with no torn pages', '2019-01-10', 'sfsaf.jpg', 334, 4),
('akshat0047', 'sad', 'Skill Work', 'Its in a good condition with no torn pages', '2019-01-09', 'sad.jpg', 324, 5),
('', 'asdsad', 'Novel', 'safsDF', '2019-01-17', 'asdsad.jpg', 324, 6);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `user_uid` varchar(30) DEFAULT NULL,
  `user_rc` int(3) DEFAULT NULL,
  `reason` char(30) DEFAULT NULL,
  `descrip` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_uid` varchar(30) NOT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_first` char(40) DEFAULT NULL,
  `user_last` char(40) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_course` varchar(40) DEFAULT NULL,
  `user_semester` int(20) DEFAULT NULL,
  `user_phone` char(13) DEFAULT NULL,
  `user_dp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `user_uid` varchar(30) NOT NULL,
  `user_at` int(5) DEFAULT NULL,
  `user_rc` int(4) DEFAULT NULL,
  `user_ev` int(1) DEFAULT NULL,
  `user_pv` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_uid`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`user_uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `idno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
