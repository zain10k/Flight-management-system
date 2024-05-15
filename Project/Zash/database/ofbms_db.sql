-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 04:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofbms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$AFMhdlwEaWjjBzoCfdq62uNQqopNGW4vk8GXrDBNGKPAgB0mON0TC');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(7, 'Fly Dubai', 300),
(8, 'Air Blue', 200),
(9, 'Kuwait Airways', 150),
(10, 'Etihad Airlines', 390),
(11, 'Gulf Air', 200),
(12, 'AirArabia', 100),
(13, 'Oman air', 100),
(14, 'Saudi airlines', 400),
(15, 'PIA', 400),
(16, 'Emirates', 500),
(17, 'Turkish airways', 600);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Karachi'),
('Karachi'),
('Istanbol'),
('Manama'),
('Kuwait'),
('Abu Dhabi'),
('Dubai'),
('Islamabad'),
('Riyadh'),
('Jeddah'),
('Madinah'),
('Sharjah'),
('Kuala Lumpur'),
('Kabul'),
('Baku'),
('Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT 20,
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(2, 1, '2022-11-22 08:30:00', '2022-11-22 07:30:00', 'Bacolod', 'Metro Manila', 'Cebu Pacific', '171', '1 Hour', 3500, '', '', '22C', 20, ''),
(5, 1, '2022-11-21 17:00:00', '2022-11-21 16:00:00', 'Bacolod', 'Pampanga', 'AirAsia', '192', '1 Hour', 2500, 'issue', '60', '22B', 20, ''),
(30, 1, '2024-05-13 01:00:00', '2024-05-12 22:00:00', 'Manama', 'Karachi', 'Gulf Air', '199', '3', 55000, '', '', '21A', 20, ''),
(31, 1, '2024-05-12 17:00:00', '2024-05-12 12:00:00', 'Dubai', 'Karachi', 'Emirates', '397', '3', 20000, '', '', '21C', 20, ''),
(32, 1, '2024-05-12 18:00:00', '2024-05-12 14:00:00', 'Dubai', 'Karachi', 'Fly Dubai', '300', '3', 40000, '', '', '', 20, ''),
(33, 1, '2024-05-14 19:00:00', '2024-05-14 13:00:00', 'Karachi', 'Kuwait', 'Kuwait Airways', '150', '4', 25000, '', '', '', 20, ''),
(34, 1, '2024-06-13 01:50:00', '2024-05-13 04:00:00', 'Karachi', 'Dubai', 'PIA', '257', '2.5', 30000, '', '', '21C', 20, ''),
(35, 1, '2024-05-13 12:00:00', '2024-05-13 08:00:00', 'Istanbol', 'Karachi', 'PIA', '260', '2', 25000, '', '', '', 20, ''),
(36, 1, '2024-05-12 17:59:00', '2024-05-12 14:04:00', 'Karachi', 'Dubai', 'Fly Dubai', '300', '2', 18000, '', '', '', 20, ''),
(37, 1, '2024-05-13 23:00:00', '2024-05-13 19:00:00', 'Karachi', 'Dubai', 'Air Blue', '200', '2', 30000, '', '', '', 20, ''),
(38, 1, '2024-05-14 03:00:00', '2024-05-13 23:00:00', 'Jeddah', 'Karachi', 'PIA', '257', '4', 60000, '', '', '21C', 20, ''),
(39, 1, '2024-05-14 16:00:00', '2024-05-14 13:00:00', 'Karachi', 'Jeddah', 'PIA', '256', '4', 65000, '', '', '21D', 20, ''),
(40, 1, '2024-05-15 17:00:00', '2024-05-15 13:00:00', 'Karachi', 'Istanbol', 'Etihad Airlines', '388', '3', 65000, '', '', '21B', 20, ''),
(41, 1, '2024-05-15 03:00:00', '2024-05-14 23:00:00', 'Karachi', 'Istanbol', 'Turkish airways', '600', '3', 60000, '', '', '', 20, ''),
(42, 1, '2024-05-15 03:00:00', '2024-05-15 01:00:00', 'Dubai', 'Karachi', 'Fly Dubai', '300', '2', 35000, '', '', '', 20, ''),
(43, 1, '2024-05-15 10:00:00', '2024-05-15 07:00:00', 'Karachi', 'Dubai', 'Emirates', '500', '2', 40000, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(4, 5, 2, '9123564879', '1997-10-14 00:00:00', 'Jane ', 'C', 'Cooper'),
(5, 5, 2, '9654123897', '1990-07-15 00:00:00', 'Mike', 'C', 'Williams'),
(6, 6, 31, '9321456789', '2014-02-03 00:00:00', 'zain', 'khan', 'khan'),
(8, 7, 31, '9230731788', '2008-02-22 00:00:00', 'huzaifa', 'khan', 'awan'),
(9, 6, 34, '3073178838', '2002-03-08 00:00:00', 'Mohammad', 'zain', 'khan'),
(10, 7, 38, '3073178838', '2019-02-14 00:00:00', 'Mohammad', 'zain', 'khan'),
(11, 7, 38, '3073178838', '2013-02-18 00:00:00', 'Mohammad', 'zain', 'khan'),
(12, 7, 38, '97867688988', '2024-04-28 00:00:00', 'Mohammad', 'zain', 'khan'),
(13, 6, 30, '3073178838', '2016-02-09 00:00:00', 'zain', 'khan', 'khan'),
(14, 6, 40, '3073828372', '2024-03-11 00:00:00', 'Mohammad', 'zain', 'khan'),
(15, 6, 40, '3073178838', '2024-04-08 00:00:00', 'Mohammad', 'zain', 'khan');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1234321211112222', 5, 5, '06/27', 2500),
('1234654456455', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('111112333311', 5, 2, '01/25', 3500),
('1111222233334444', 6, 31, '06/25', 20000),
('1111222233334444', 6, 31, '12/27', 40000),
('12863487452642', 7, 31, '12/35', 40000),
('21452457564532', 6, 34, '11/25', 60000),
('1454365765654231', 7, 38, '12/28', 120000),
('123455678923', 7, 38, '12/27', 60000),
('123456789123456', 7, 38, '11/35', 120000),
('1111222233334444', 6, 30, '11/26', 55000),
('1111222233334444', 6, 40, '12/24', 65000),
('1111222233331111', 6, 40, '11/27', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 5, 5, '22A', 2500, 'E'),
(3, 1, 2, 5, '21A', 3500, 'E'),
(9, 3, 2, 5, '22B', 3500, 'E'),
(10, 5, 2, 5, '22C', 3500, 'E'),
(11, 1, 31, 6, '21A', 20000, 'E'),
(14, 1, 34, 7, '21A', 40000, 'E'),
(15, 2, 34, 7, '21B', 40000, 'E'),
(16, 1, 34, 6, '21C', 60000, 'E'),
(17, 1, 38, 7, '21A', 120000, 'E'),
(18, 1, 39, 7, '21A', 120000, 'E'),
(20, 11, 38, 7, '21B', 60000, 'E'),
(21, 12, 38, 7, '21C', 120000, 'E'),
(22, 12, 39, 7, '21C', 120000, 'E'),
(23, 13, 39, 7, '21D', 120000, 'E'),
(24, 1, 30, 6, '21A', 55000, 'E'),
(25, 1, 40, 6, '21A', 65000, 'E'),
(26, 15, 40, 6, '21B', 65000, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(5, 'mcooper', 'mcooper@mail.com', '$2y$10$.FUiqi1YNqPBTxstbratouNEux7TsPPZ8/YOrV.Bd2JbVFD95G1nS'),
(6, 'zain khan', 'zainkhan@gmail.com', '$2y$10$51e82uZusMaQFwHGwF7h9.ky3V0cJVztBfsWdCB3COwExf78Hm9Oi'),
(7, 'huzaifa', 'huzaifa@gmail.com', '$2y$10$g2ODZ6ceI2zqUOfzbUc.H.HG9Mw4Y6xq6xhbuNjZEpfWT21eVncFW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
