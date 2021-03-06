-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2018 at 02:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Std` int(2) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Chapter` int(2) NOT NULL,
  `Level` int(1) NOT NULL,
  `Sr.No` int(3) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `OpA` varchar(100) NOT NULL,
  `OpB` varchar(100) NOT NULL,
  `OpC` varchar(100) NOT NULL,
  `OpD` varchar(100) NOT NULL,
  `ans` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Std`, `Subject`, `Chapter`, `Level`, `Sr.No`, `Question`, `OpA`, `OpB`, `OpC`, `OpD`, `ans`) VALUES
(11, 'Physics', 1, 1, 1, 'What are the two fundamental constituents of the universe?', 'Matter and radiation', 'Heat and light', 'Molecule and atom', 'Electron and proton', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `UID` int(11) NOT NULL,
  `Sr.No` int(1) NOT NULL,
  `Level` int(1) NOT NULL,
  `UAns` varchar(1) NOT NULL,
  `CAns` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `UID` int(11) NOT NULL,
  `Std` int(2) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Chapter` int(2) NOT NULL,
  `Marks_Obtained` int(3) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`Std`,`Subject`,`Chapter`,`Level`,`Sr.No`),
  ADD UNIQUE KEY `Std` (`Std`,`Subject`),
  ADD UNIQUE KEY `Std_2` (`Std`,`Subject`),
  ADD UNIQUE KEY `Std_3` (`Std`,`Subject`,`Chapter`,`Level`,`Sr.No`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`UID`,`Sr.No`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`UID`,`Std`,`Subject`,`Chapter`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
