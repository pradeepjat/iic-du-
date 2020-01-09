-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 12:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `question2`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `preferences` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `preferences`) VALUES
(12, 'meghna', '.Bsc(H) Electonics, Bsc(H) Food Technology, MCA, MBA HRD, MBA Finance.'),
(13, '', '.Bsc(H) Computer Science, Bsc(H) Food Technology, MBA HRD, MBA Finance.'),
(14, '', '.Bsc(H) Computer Science, Bsc(H) Maths, Bsc(H) Food Technology, MCA, MBA HRD, BA Economics.'),
(15, '', '.Bsc(H) Computer Science, Bsc(H) Electonics, MCA, MBA HRD.'),
(16, '', '.Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology, MBA Finance, MA Economics.'),
(17, 'pradeep kumar', '.Bsc(H) Electonics, Bsc(H) Maths, MCA, MBA HRD, MA Economics.'),
(18, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology, MBA HRD.'),
(19, 'pradeep kumar', '.MBA HRD, MBA Finance, BA Economics, MA Economics.'),
(20, 'megha', '.Bsc(H) Electonics, MBA HRD, MBA Finance, BA Economics.'),
(21, 'megha', '.Bsc(H) Electonics, MBA HRD, MBA Finance, BA Economics.'),
(22, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(23, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(24, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(25, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(26, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(27, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(28, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(29, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(30, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(31, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(32, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(33, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(34, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(35, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, Bsc(H) Food Technology.'),
(36, 'pradeep', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(37, 'pradeep', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(38, 'pradeep', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(39, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(40, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(41, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(42, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(43, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(44, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(45, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(46, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(47, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(48, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(49, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(50, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(51, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(52, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(53, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(54, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
