-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 05:19 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogs` ()  SELECT * FROM logs$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsers` ()  SELECT * FROM register$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ins` (IN `tot` INT(100))  CASE tot
	WHEN 1 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),20);
    WHEN 2 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),20);
    WHEN 3 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),30);
    WHEN 4 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),30);
    WHEN 5 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),40);
    WHEN 6 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),40);
    WHEN 7 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),50);
    WHEN 8 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),50);
    WHEN 9 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),60);
    WHEN 10 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),60);
    WHEN 11 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),70);
    WHEN 12 THEN INSERT INTO delogs(date_out,amount) VALUES (NOW(),70);
    
END CASE$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update` (IN `amt` INT(100))  BEGIN
DECLARE price INT(100);
INSERT into delogs (date_out,amount) values (NOW(),amt);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE `allotment` (
  `user_id` int(100) NOT NULL,
  `car_no` varchar(200) NOT NULL,
  `floor` int(100) NOT NULL,
  `slot` int(100) NOT NULL,
  `date_in` varchar(200) NOT NULL,
  `time_in` varchar(200) NOT NULL,
  `time_out` varchar(200) NOT NULL,
  `type` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delogs`
--

CREATE TABLE `delogs` (
  `ID` int(11) NOT NULL,
  `date_out` date NOT NULL,
  `amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delogs`
--

INSERT INTO `delogs` (`ID`, `date_out`, `amount`) VALUES
(3, '2019-11-05', '30'),
(4, '2019-11-05', '30'),
(5, '2019-11-05', '30'),
(6, '2019-11-05', '30'),
(7, '2019-11-06', '30'),
(8, '2019-11-06', '30'),
(9, '2019-11-09', '80'),
(10, '2019-11-11', '70'),
(11, '2019-11-11', '50'),
(12, '2019-11-11', '50'),
(13, '2019-11-11', '50'),
(14, '2019-11-11', '50'),
(15, '2019-11-11', '50'),
(16, '2019-11-11', '50'),
(17, '2019-12-04', '50'),
(18, '2019-12-04', '50'),
(19, '2019-12-04', '50'),
(20, '2019-12-04', '60'),
(21, '2019-12-05', '50'),
(23, '2019-12-04', '50'),
(24, '2019-12-04', '50'),
(25, '2019-12-04', '50'),
(26, '2019-12-05', '60'),
(27, '2019-12-05', '50'),
(28, '2019-12-05', '20'),
(29, '2019-12-05', '30'),
(30, '2019-12-05', '20'),
(31, '2019-12-05', '40'),
(32, '2019-12-05', '40'),
(33, '2019-12-05', '40');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `name`, `email`, `password`) VALUES
(1, 'Mahesh', 'mahi@gmail.com', 'mahi@123'),
(2, 'Chinmai', 'chins@gmail.com', 'chins@123\r\n'),
(3, 'Vatsa', 'vatsa@gmail.com', 'vatsa@123');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ID` int(110) NOT NULL,
  `user_id` int(200) NOT NULL,
  `action` varchar(200) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`ID`, `user_id`, `action`, `cdate`) VALUES
(1, 1, 'DELETED', '2019-11-11 19:27:03'),
(2, 6, 'ADDED', '2019-11-11 19:30:22'),
(3, 7, 'ADDED', '2019-11-17 19:55:54'),
(4, 7, 'DELETED', '2019-11-17 19:56:00'),
(5, 8, 'ADDED', '2019-11-17 19:56:36'),
(6, 8, 'DELETED', '2019-11-17 19:56:39'),
(7, 9, 'ADDED', '2019-11-17 19:57:33'),
(8, 10, 'ADDED', '2019-12-04 22:36:51'),
(9, 3, 'DELETED', '2019-12-05 20:29:57'),
(10, 11, 'ADDED', '2019-12-05 20:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `First` varchar(220) NOT NULL,
  `last` varchar(200) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `First`, `last`, `Phone`, `Email`, `Address`) VALUES
(2, 'mahesh', 'kumar', 7899387072, 'mk799994@gmail.com', 'bangalore'),
(4, 'punith', 'kumar', 7854126321, 'puni@gmail.com', 'bangalore'),
(5, 'Praveen', 'shetty', 9856321145, 'praveen@gmail.com', 'mysore'),
(6, 'Ravi', 'raj', 9854587454, 'ravi@gmail.com', 'mangalore'),
(9, 'samraksh', 'patel', 9854565425, 'sammu@gmail.com', 'sakleshpur'),
(10, 'raja ', 'kumar', 8544212554, 'raja@gmail.com', 'bangalore'),
(11, 'Lubna ', 'Khannum', 7899854578, 'lubna@gmail.com', 'bangalore');

--
-- Triggers `register`
--
DELIMITER $$
CREATE TRIGGER `dellogs` BEFORE DELETE ON `register` FOR EACH ROW INSERT INTO logs VALUES(NULL,OLD.ID,'DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insLogs` AFTER INSERT ON `register` FOR EACH ROW INSERT INTO logs VALUES(NULL,NEW.ID,'ADDED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `ID` int(110) NOT NULL,
  `slot_no` int(110) NOT NULL,
  `status` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`ID`, `slot_no`, `status`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(19, 19, 0),
(20, 20, 0),
(21, 21, 0),
(22, 22, 0),
(23, 23, 0),
(24, 24, 0),
(25, 25, 0),
(26, 26, 0),
(27, 27, 0),
(28, 28, 0),
(29, 29, 0),
(30, 30, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delogs`
--
ALTER TABLE `delogs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delogs`
--
ALTER TABLE `delogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `ID` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
