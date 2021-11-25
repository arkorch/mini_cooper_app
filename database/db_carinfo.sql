-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 23, 2021 at 01:13 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_carinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specs`
--

CREATE TABLE `tbl_specs` (
  `ID` int(11) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Price` varchar(8) NOT NULL,
  `Milage` varchar(10) NOT NULL,
  `Length` varchar(10) NOT NULL,
  `Width` varchar(10) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Engine` varchar(50) NOT NULL,
  `Horsepower` varchar(10) NOT NULL,
  `Picture` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_specs`
--

INSERT INTO `tbl_specs` (`ID`, `Model`, `Price`, `Milage`, `Length`, `Width`, `Height`, `Engine`, `Horsepower`, `Picture`) VALUES
(1, 'Mini 3 Door', '$23,490', '35 mpg', '162 in.', '74 in.', '58 in.', '1.5 L', '150 HP', 'pic1.png'),
(2, 'Mini Convertable', '$30,000', '35 mpg', '180 in.', '75 in.', '68 in.', '2.0 L ', '200 HP', 'pic2.png'),
(3, 'MINI Clubman', '$33,990', '34 mpg', '170 in.', '68 in.', '62 in.', '2.0 L', '250 HP', 'pic3.png'),
(4, 'Mini Countryman', '$33,490', '28 mpg', '172 in.', '64 in.', '58 in.', '2.0 L ', '280 HP', 'pic4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
