-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 11:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obcsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555556, 'admin@techconnect.com', 'ab90d2714fbdcfba1f276759fed803d4', '2023-01-05 12:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `NameOfMother` varchar(120) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `NameOfMother`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(6, 5, '766813635', '2013-05-14', 'Female', 'Keeya Simuchimba', 'Chingola', 'Kuunda Simuchimba', 'Mwila Simuchimba', 'Plot No. 34211, Riverside Drive, Lusaka, Zambia', 'Plot No. 34211, Riverside Drive, Lusaka, Zambia', 960442429, 'kuundas025@gmail.com', '2024-09-26 20:26:40', NULL, NULL, NULL),
(7, 6, '459916163', '2008-06-27', 'Female', 'Wazingwa Mugala', 'Kitwe Teaching Hospital', 'Wazingwa Mugala', 'Mary Cherry', 'Riverside, Jambo Drive.', 'Riverside, Jambo Drive.', 2567789111, 'wazingwa@yahoo.com', '2024-09-26 20:48:46', NULL, NULL, NULL),
(8, 6, '498759476', '2007-10-31', 'Male', 'Christopher Mwanza', 'Kitwe Teaching Hospital', 'Wazingwa Mugala', 'Grace Mugala', 'Riverside, Jambo Drive.', 'Riverside, Jambo Drive.', 2567789111, 'wazingwa@yahoo.com', '2024-09-26 20:51:38', 'Invalid Details', 'Rejected', '2024-09-26 21:33:27'),
(9, 7, '439118707', '2009-01-13', 'Female', 'Lighton Kalumba Jr.', 'Lusaka Teaching Hospital', 'Lighton Kalumba', 'Precious Mwale', 'Ibex Hill Plot 24551', 'Ibex Hill Plot 24551', 5671165222, 'lightonkalumba@gmail.com', '2024-09-26 20:56:03', 'Missing Details', 'Rejected', '2024-09-26 21:35:11'),
(10, 7, '159283808', '2012-02-28', 'Female', 'Mutale Kalumba', 'Levy Teaching Hospital', 'Lighton Kalumba', 'Precious Mwale', 'Ibex Hill Plot No.332122', 'Ibex Hill Plot No.332122', 5671165222, 'lightonkalumba@gmail.com', '2024-09-26 20:57:27', 'Verified', 'Verified', '2024-09-26 21:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(5, 'Kuunda ', 'Simuchimba', 960442429, 'kuundas025@gmail.com', 'bd342d3be827e3e633ce64ef6d81b7ad', '2024-09-26 20:21:29'),
(6, 'Wazingwa', 'Mugala', 2567789111, 'wazingwa@yahoo.com', 'abbd6307b93ded797f25bba6d72b11cd', '2024-09-26 20:46:27'),
(7, 'Kalumba', 'Lighton', 5671165222, 'lightonkalumba@gmail.com', '2e03ea8498dcfd0e79729337a7197358', '2024-09-26 20:54:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
