-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 20, 2021 at 06:32 PM
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

CREATE TABLE `log` (
  `passanger_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `TIME_LOGGED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

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

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Route_id` int(11) NOT NULL,
  `Route name` varchar(45) NOT NULL,
  `Starting location` varchar(45) NOT NULL,
  `Destination` varchar(45) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `Seat_id` int(11) NOT NULL,
  `Status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

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
  MODIFY `Passenger_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
