-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2020 at 05:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Reserve_Badminton`
--

-- --------------------------------------------------------

--
-- Table structure for table `Badminton`
--

CREATE TABLE `Badminton` (
  `BadmintonID` int(11) NOT NULL,
  `BadmintonCourt` varchar(10) CHARACTER SET utf8 NOT NULL,
  `StatusCourt` varchar(15) CHARACTER SET utf8 NOT NULL,
  `GymID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Badminton`
--

INSERT INTO `Badminton` (`BadmintonID`, `BadmintonCourt`, `StatusCourt`, `GymID`) VALUES
(1, 'คอร์ดที่1', 'ว่าง', 1),
(2, 'คอร์ดที่2', 'ว่าง', 1),
(3, 'คอร์ดที่3', 'ว่าง', 1),
(4, 'คอร์ดที่4', 'ว่าง', 1),
(5, 'คอร์ดที่5', 'ว่าง', 1),
(6, 'คอร์ดที่6', 'ว่าง', 1),
(7, 'คอร์ดที่7', 'กำลังใช้งาน', 1),
(8, 'คอร์ดที่1', 'ว่าง', 2),
(9, 'คอร์ดที่2', 'ว่าง', 2),
(10, 'คอร์ดที่3', 'กำลังใช้งาน', 2),
(11, 'คอร์ดที่4', 'กำลังใช้งาน', 2),
(12, 'คอร์ดที่5', 'ว่าง', 2),
(13, 'คอร์ดที่6', 'ว่าง', 2),
(14, 'คอร์ดที่7', 'ว่าง', 2),
(15, 'คอร์ดที่8', 'ว่าง', 2),
(16, 'คอร์ดที่9', 'ว่าง', 2),
(17, 'คอร์ดที่10', 'ว่าง', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `badmintontable`
-- (See below for the actual view)
--
CREATE TABLE `badmintontable` (
`BadmintonID` int(11)
,`BadmintonCourt` varchar(10)
,`TerminalGym` varchar(10)
,`StatusCourt` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `Gym`
--

CREATE TABLE `Gym` (
  `GymID` int(11) NOT NULL,
  `GymName` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Gym`
--

INSERT INTO `Gym` (`GymID`, `GymName`) VALUES
(1, 'อาคาร1'),
(2, 'อาคาร3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`, `level`) VALUES
(1, 'admin', '1234', 'admin'),
(2, 'worrasak', '1234', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `RateBadminton`
--

CREATE TABLE `RateBadminton` (
  `RateBadmintonID` int(11) NOT NULL,
  `TypeRatePerson` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TerminalGym` varchar(20) CHARACTER SET utf8 NOT NULL,
  `PriceMemberPerYear` int(11) NOT NULL,
  `PriceMember` int(11) NOT NULL,
  `PriceNotMember` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RateBadminton`
--

INSERT INTO `RateBadminton` (`RateBadmintonID`, `TypeRatePerson`, `TerminalGym`, `PriceMemberPerYear`, `PriceMember`, `PriceNotMember`) VALUES
(1, 'นักเรียนและนิสิต', 'อาคาร1', 100, 40, 60),
(2, 'นักเรียนและนิสิต', 'อาคาร3', 100, 100, 140),
(3, 'บุคลากร', 'อาคาร1', 200, 40, 60),
(4, 'บุคลากร', 'อาคาร3', 200, 100, 140),
(5, 'เด็กอายุต่ำกว่า13', 'อาคาร1', 200, 40, 60),
(6, 'เด็กอายุต่ำกว่า13', 'อาคาร3', 200, 100, 140),
(7, 'บุคคลทั่วไป', 'อาคาร1', 500, 60, 80),
(8, 'บุคคลทั่วไป', 'อาคาร3', 500, 120, 160);

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(30) NOT NULL,
  `StaffTel` varchar(11) NOT NULL,
  `StaffEmail` varchar(40) NOT NULL,
  `StaffAddress` varchar(100) NOT NULL,
  `GymID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`StaffID`, `StaffName`, `StaffTel`, `StaffEmail`, `StaffAddress`, `GymID`) VALUES
(1, 'Worasak ', '0987654321', 'ohm@ku.th', 'anskdkjasmdijdkmijd jawsdjasdjnuwnd ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserReseve`
--

CREATE TABLE `UserReseve` (
  `UserReseveID` int(11) NOT NULL,
  `UserReseveName` varchar(30) NOT NULL,
  `UserReseveTel` varchar(11) NOT NULL,
  `UserReseveEmail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `UserReseve`
--

INSERT INTO `UserReseve` (`UserReseveID`, `UserReseveName`, `UserReseveTel`, `UserReseveEmail`) VALUES
(1, 'Jutamas Sriprsert', '0980145255', 'noon@ku.th'),
(2, 'Worada Srasongkhram', '0814536789', 'preaw@ku.th');

-- --------------------------------------------------------

--
-- Structure for view `badmintontable`
--
DROP TABLE IF EXISTS `badmintontable`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reserve_badminton`.`badmintontable`  AS  select `reserve_badminton`.`badminton`.`BadmintonID` AS `BadmintonID`,`reserve_badminton`.`badminton`.`BadmintonCourt` AS `BadmintonCourt`,`reserve_badminton`.`gym`.`GymName` AS `TerminalGym`,`reserve_badminton`.`badminton`.`StatusCourt` AS `StatusCourt` from (`reserve_badminton`.`badminton` join `reserve_badminton`.`gym`) where `reserve_badminton`.`badminton`.`GymID` = `reserve_badminton`.`gym`.`GymID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Badminton`
--
ALTER TABLE `Badminton`
  ADD PRIMARY KEY (`BadmintonID`),
  ADD KEY `GymID` (`GymID`);

--
-- Indexes for table `Gym`
--
ALTER TABLE `Gym`
  ADD PRIMARY KEY (`GymID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `RateBadminton`
--
ALTER TABLE `RateBadminton`
  ADD PRIMARY KEY (`RateBadmintonID`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `GymID` (`GymID`);

--
-- Indexes for table `UserReseve`
--
ALTER TABLE `UserReseve`
  ADD PRIMARY KEY (`UserReseveID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Badminton`
--
ALTER TABLE `Badminton`
  MODIFY `BadmintonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Gym`
--
ALTER TABLE `Gym`
  MODIFY `GymID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `RateBadminton`
--
ALTER TABLE `RateBadminton`
  MODIFY `RateBadmintonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Staff`
--
ALTER TABLE `Staff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `UserReseve`
--
ALTER TABLE `UserReseve`
  MODIFY `UserReseveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Badminton`
--
ALTER TABLE `Badminton`
  ADD CONSTRAINT `badminton_ibfk_1` FOREIGN KEY (`GymID`) REFERENCES `Gym` (`GymID`);

--
-- Constraints for table `Staff`
--
ALTER TABLE `Staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`GymID`) REFERENCES `Gym` (`GymID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
