-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 24, 2021 at 09:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE `bus` (
  `Bus_id` int(11) NOT NULL,
  `Comment` varchar(45) DEFAULT NULL,
  `Driver_id` int(11) NOT NULL,
  `Company_id` int(11) NOT NULL,
  `Seat_id` int(11) NOT NULL,
  `Route_id` int(11) NOT NULL,
  `Helper_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus_id`, `Comment`, `Driver_id`, `Company_id`, `Seat_id`, `Route_id`, `Helper_id`) VALUES
(100, 'good', 1, 1, 2, 3, 8),
(101, 'good', 1, 1, 3, 4, 9),
(102, 'good', 1, 1, 4, 1, 10),
(109, 'good', 8, 1, 2, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `bus_owner`
--

DROP TABLE IF EXISTS `bus_owner`;
CREATE TABLE `bus_owner` (
  `Company_id` int(11) NOT NULL,
  `Company name` varchar(45) NOT NULL,
  `Owner name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus_owner`
--

INSERT INTO `bus_owner` (`Company_id`, `Company name`, `Owner name`) VALUES
(1, 'Hanif', 'Hanif Mia'),
(2, 'Green line', 'Mr. Green'),
(3, 'Dragon', 'Expert');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `Driver_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Permanent address` varchar(45) NOT NULL,
  `Temporary address` varchar(45) DEFAULT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Driver_id`, `Name`, `Age`, `Gender`, `Permanent address`, `Temporary address`, `Salary`) VALUES
(1, 'Smart', 21, 'Male', 'Hous x, road y, gulshan Dhaka', 'Banani', 2900),
(2, 'Harry', 25, 'Male', 'Hous xA, road cy, gulistan Dhaka', 'Bogra', 3200),
(3, 'Witcher', 27, 'Male', 'Hous xb, road dy, Mog bazar Dhaka', 'Jessore', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `helper`
--

DROP TABLE IF EXISTS `helper`;
CREATE TABLE `helper` (
  `Helper_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Permanent address` varchar(45) NOT NULL,
  `Temporary address` varchar(45) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `passanger_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `TIME_LOGGED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

DROP TABLE IF EXISTS `passanger`;
CREATE TABLE `passanger` (
  `Passenger_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`Passenger_id`, `name`, `age`, `gender`, `occupation`, `address`, `user_id`, `password`) VALUES
(1, 'Sarah Mcleod', 50, 'FEMALE', 'Pede Ultrices Limited', 'Ap #244-2898 Aenean St.', 'Cassandra', 'SCQ99JIL1QF'),
(2, 'Ignacia Cain', 24, 'FEMALE', 'Porta LLP', '221-8986 Massa. St.', 'Evan', 'AZK64TOZ0XK'),
(3, 'Marshall E. Beck', 40, 'MALE', 'Vel LLP', '554-6436 Et St.', 'April', 'IIT11VRU0WR'),
(4, 'Lev A. Skinner', 28, 'FEMALE', 'Felis Corp.', '439-9874 Semper Av.', 'Thor', 'ZPY18QNU2YS'),
(5, 'Kiara D. Cochran', 32, 'MALE', 'Mauris Id Corporation', '563-3371 Eu Ave', 'Reagan', 'VDX05SNQ0UQ'),
(6, 'Hu L. Galloway', 22, 'MALE', 'Egestas Urna Incorporated', 'Ap #864-2861 Arcu. St.', 'Len', 'EED78FXF6RM'),
(7, 'Madeson Mcmahon', 29, 'FEMALE', 'Euismod Ac Fermentum PC', '259-6137 Aenean Street', 'Ursula', 'AQH69DKN6ML'),
(8, 'Juliet Mann', 28, 'MALE', 'Facilisi Sed Neque Industries', '513-7979 Ipsum Avenue', 'Macy', 'PPE89VSD1DS'),
(9, 'Leah Rosario', 33, 'MALE', 'Sed Dictum Corp.', '116-636 Sollicitudin Av.', 'Lillian', 'FDT97ZYY4PM'),
(10, 'Sasha D. Ward', 36, 'MALE', 'Posuere Cubilia Curae; LLP', '672-8320 Aliquam St.', 'Phyllis', 'CVJ13RMY0ET'),
(11, 'Veronica Solomon', 34, 'MALE', 'Egestas Lacinia Corporation', 'P.O. Box 819, 3156 Nec Rd.', 'Ginger', 'FES59QVX3ZX'),
(12, 'Ian G. Chen', 45, 'FEMALE', 'Consectetuer Incorporated', '711-2635 Lorem Rd.', 'Reuben', 'WHA01NLO4MH'),
(13, 'Risa V. Lowery', 48, 'MALE', 'Quis Incorporated', '370-3049 Sem Av.', 'Doris', 'HWN21PCU8BX'),
(14, 'Thor Morin', 32, 'FEMALE', 'Varius Ultrices LLC', 'Ap #146-5536 Pharetra Rd.', 'Bertha', 'BGX57HAU7TQ'),
(15, 'Nichole Welch', 25, 'FEMALE', 'Fusce Limited', '5721 Amet, Ave', 'Xerxes', 'XXK13QLH4BO'),
(16, 'Basil Guy', 20, 'MALE', 'Felis Donec Tempor Incorporated', '1736 Risus. Avenue', 'Farrah', 'JCB63ENA2KX'),
(17, 'Keefe Walker', 41, 'FEMALE', 'Eget Metus Corp.', 'P.O. Box 976, 8894 Erat. Av.', 'Clayton', 'IGX23RXA8DO'),
(18, 'Castor N. Savage', 34, 'FEMALE', 'Nullam Ut Nisi LLC', 'P.O. Box 909, 4375 Luctus Road', 'Demetrius', 'RBB62WEX5CM'),
(19, 'Graham Stark', 25, 'FEMALE', 'Faucibus Lectus A PC', 'P.O. Box 236, 1834 Auctor Ave', 'Madeline', 'UGN27PUU1SJ'),
(20, 'Nevada L. Frederick', 29, 'MALE', 'Auctor Velit Eget Foundation', '9695 Felis. Street', 'Wang', 'ETM33DZW7FT'),
(21, 'Silas Q. Collins', 31, 'MALE', 'Elit Limited', 'P.O. Box 996, 5760 Gravida Rd.', 'Ima', 'KVG92LUK1IN'),
(22, 'Jordan D. Jackson', 43, 'FEMALE', 'Vitae Industries', '4764 Mauris Avenue', 'Lavinia', 'CQX19CDV1VF'),
(23, 'Faith W. Lawson', 44, 'MALE', 'Metus In Ltd', '7458 In Avenue', 'Ava', 'DKT09UEX4DK'),
(24, 'Elaine U. Ware', 43, 'MALE', 'Aliquet PC', 'P.O. Box 289, 5096 Dolor Road', 'Leroy', 'JJV01WJO5UM'),
(25, 'Wang N. Foreman', 21, 'FEMALE', 'Ullamcorper Duis Cursus Industries', '352-8707 Egestas, St.', 'Chastity', 'YUS29UZE6DB'),
(26, 'Mary G. Barber', 39, 'MALE', 'Risus Donec Institute', '616-6284 Non, Avenue', 'Mallory', 'HRR06GHG3XU'),
(27, 'Addison Best', 46, 'MALE', 'Sed Pharetra Inc.', '540-2812 Sed Rd.', 'Thor', 'DNK66UYE4EH'),
(28, 'Faith Sykes', 23, 'MALE', 'Non Lacinia At Inc.', '677 Tortor. St.', 'Ferris', 'LEC41TXK0OM'),
(29, 'Ferdinand R. Kaufman', 42, 'MALE', 'Eu Industries', '7671 Dignissim Ave', 'Tucker', 'KON29LMV2LF'),
(30, 'Len Reeves', 50, 'FEMALE', 'Amet Risus Donec Company', 'P.O. Box 746, 1150 Aliquam Ave', 'John', 'BWM07VLR7UK'),
(31, 'Peter Phillips', 50, 'MALE', 'Et Magnis Dis Company', '942-4027 Enim Av.', 'Kimberly', 'UVB04YQL3MN'),
(32, 'Roary Stuart', 30, 'FEMALE', 'Erat Nonummy Ultricies Inc.', '4741 Sem St.', 'Wendy', 'BGA76KTI6TT'),
(33, 'Tucker Wise', 47, 'MALE', 'Mus Donec Dignissim Ltd', 'Ap #947-807 Turpis Ave', 'Justin', 'IJC01HYZ7FH'),
(34, 'Blossom Love', 22, 'MALE', 'Nulla Integer Corp.', 'P.O. Box 520, 8752 Velit Rd.', 'Frances', 'KND76TPM8DY'),
(35, 'Kareem Z. Singleton', 35, 'FEMALE', 'A Consulting', '450 Est Rd.', 'Jessamine', 'MMK24BYQ0AP'),
(36, 'Savannah T. Jimenez', 32, 'MALE', 'Proin Institute', 'P.O. Box 334, 9712 Consectetuer Road', 'Arthur', 'HNX24NPP6YC'),
(37, 'Octavia X. Flores', 34, 'MALE', 'Vitae Odio PC', 'Ap #227-9444 Luctus Rd.', 'Bell', 'NQT42ZKU8CV'),
(38, 'Burke Dodson', 35, 'FEMALE', 'Lorem Vehicula Industries', 'P.O. Box 496, 2076 Massa. Rd.', 'Rigel', 'RVY29GOP1TY'),
(39, 'Avye Erickson', 34, 'MALE', 'At Iaculis Quis Corporation', '7110 Ac Av.', 'Zena', 'BKT75QWN1IF'),
(40, 'Kevyn Maldonado', 44, 'FEMALE', 'Cras Sed Leo Foundation', '419-3924 Nec Rd.', 'Kimberly', 'AAM29ICQ0KD');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `Route_id` int(11) NOT NULL,
  `BUS_ID` int(11) NOT NULL,
  `Route name` varchar(45) NOT NULL,
  `Starting location` varchar(45) NOT NULL,
  `Destination` varchar(45) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`Route_id`, `BUS_ID`, `Route name`, `Starting location`, `Destination`, `Price`, `Date`, `Time`) VALUES
(1, 1, 'Dhaka to Chittagong', 'Dhaka', 'Chittagong', 10, '2021-01-25', '08:00:00'),
(2, 2, 'Dhaka to Chittagong', 'Dhaka', 'Chittagong', 90, '2021-01-25', '08:00:00'),
(3, 1, 'Dhaka to Chittagong', 'Chittagong', 'Dhaka', 10, '2021-01-25', '12:00:00'),
(4, 1, 'Dhaka to Chittagong', 'Dhaka', 'Chittagong', 10, '2021-01-25', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `Seat_id` int(11) NOT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`Seat_id`, `Status`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0);

--
-- Triggers `seat`
--
DROP TRIGGER IF EXISTS `update_log`;
DELIMITER $$
CREATE TRIGGER `update_log` AFTER UPDATE ON `seat` FOR EACH ROW insert into log (passanger_id,TIME_LOGGED)
values (Seat_id, CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `Ticket_id` int(11) NOT NULL,
  `total cost` int(11) NOT NULL,
  `Bus_Bus_id` int(11) NOT NULL,
  `Passanger_Passenger_id` int(11) NOT NULL,
  `Ticket Agent_Ticket Agent_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_agent`
--

DROP TABLE IF EXISTS `ticket_agent`;
CREATE TABLE `ticket_agent` (
  `Ticket Agent_ID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `contact number` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Ticket Agent Office_Office_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_agent_office`
--

DROP TABLE IF EXISTS `ticket_agent_office`;
CREATE TABLE `ticket_agent_office` (
  `Office_id` int(11) NOT NULL,
  `Office name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_id`);

--
-- Indexes for table `bus_owner`
--
ALTER TABLE `bus_owner`
  ADD PRIMARY KEY (`Company_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_id`);

--
-- Indexes for table `helper`
--
ALTER TABLE `helper`
  ADD PRIMARY KEY (`Helper_id`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`Passenger_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Route_id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`Seat_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_id`);

--
-- Indexes for table `ticket_agent_office`
--
ALTER TABLE `ticket_agent_office`
  ADD PRIMARY KEY (`Office_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passanger`
--
ALTER TABLE `passanger`
  MODIFY `Passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
