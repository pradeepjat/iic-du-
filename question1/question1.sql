-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 12:03 PM
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
-- Database: `question1`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(10) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `student_name`, `course`, `age`, `gender`) VALUES
(1, 'akash', 'mca', 24, 'male'),
(2, 'akansha', 'bsc cs', 20, 'female'),
(3, 'amrita', 'bsc ft', 19, 'female'),
(4, 'anita', 'bsc inst', 19, 'female'),
(5, 'Angadh', 'mca', 22, 'male'),
(6, 'Anil', 'bsc inst', 18, 'male'),
(7, 'prem', 'bsc ft', 23, 'male'),
(8, 'shoaib', 'mca', 25, 'male'),
(9, 'Mohit', 'bsc cs', 19, 'male'),
(10, 'Anita', 'MBA', 26, 'female'),
(11, 'Malaika', 'mca', 24, 'female'),
(12, 'Manisha', 'MBA', 24, 'female'),
(13, 'Amar', 'phd cs', 29, 'male'),
(14, 'Zakir', 'bsc ft', 17, 'male'),
(15, 'Amrita', 'phd cs', 28, 'female'),
(16, 'Ankita', 'bsc cs', 19, 'female'),
(17, 'Anita', 'BA history', 20, 'female'),
(18, 'Akhil', 'bsc cs', 19, 'male'),
(19, 'Avinash', 'bsc ft', 23, 'male'),
(20, 'Sushmita', 'mca', 24, 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
