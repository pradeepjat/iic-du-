-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 12:06 PM
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
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `college_id` int(10) NOT NULL,
  `college_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`college_id`, `college_name`) VALUES
(1, 'Acharya Narendra Dev College'),
(2, 'Aditi Mahavidyalaya'),
(3, 'Aryabhatta College'),
(4, 'Ram Lal Anand College'),
(5, 'Atma Ram Sanatan Dharma College'),
(6, 'Bharati College'),
(7, 'Bhaskaracharya College of Applied Sciences'),
(8, 'College of Vocational Studies'),
(9, 'Daulat Ram College'),
(10, 'Deen Dayal Upadhyaya College'),
(11, 'Delhi College of Arts & Commerce'),
(12, 'Deshbandhu College'),
(13, 'Dyal Singh College'),
(14, 'inderaprastha College for Women'),
(15, 'Gargi College'),
(16, 'Hans Raj College'),
(17, 'Hindu College'),
(18, 'Kalindi College for Women'),
(19, 'Kamla Nehru College for Women'),
(20, 'Keshav Mahavidyalaya'),
(21, 'Kirori Mal College'),
(22, 'Lady Irwin College\r\n'),
(23, 'Lady Shri Ram College for Women\r\n'),
(24, 'Lakshmi Bai College for Women\r\n'),
(25, 'Maharaja Agarsen College\r\n'),
(26, 'Maharshi Valmiki College of Education\r\n'),
(27, 'Maitreyi College for Women\r\n'),
(28, 'Mata Sundri College for Women'),
(29, 'Miranda House\r\n'),
(30, 'Moti Lal Nehru College'),
(31, 'Netaji Subhash Institute of Technology\r\n'),
(32, 'P.G.D.A.V. College'),
(33, 'Vivekananda College'),
(34, 'St. Stephen\'s College'),
(35, 'Sri Guru Gobind Singh College of Commerce\r\n'),
(36, 'Sri Guru Nanak Dev Khalsa College'),
(37, 'Sri Guru Tegh Bahadur Khalsa College\r\n'),
(38, 'Sri Venkateswara College'),
(39, 'Shri Ram College of Commerce'),
(40, 'Zakir Husain Delhi College');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'Bsc(H) Computer Science'),
(2, 'Bsc(H) Electonics'),
(3, 'Bsc(H) Maths'),
(4, 'Bsc(H) Food Technology'),
(5, 'MCA'),
(6, 'MBA HRD'),
(7, 'MBA Finance'),
(8, 'BA Economics'),
(9, 'MA Economics'),
(11, 'MA History'),
(12, 'B.Com'),
(13, 'M.Com'),
(14, 'BSc(H) Instrumentation '),
(15, 'MSc Chemistry'),
(16, 'BSc Chemistry'),
(17, 'LLB'),
(18, 'BSc Biology'),
(19, 'MSc Biology'),
(20, 'BSc Biotechnology');

-- --------------------------------------------------------

--
-- Table structure for table `course_offered`
--

CREATE TABLE `course_offered` (
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_offered`
--

INSERT INTO `course_offered` (`college_id`, `course_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(9, 1),
(3, 18),
(4, 18),
(5, 12),
(6, 10),
(7, 14),
(39, 20);

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
(54, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths.'),
(55, 'pradeep kumar', '.Bsc(H) Electonics, Bsc(H) Food Technology, MCA, MBA HRD, MBA Finance.'),
(56, 'pradeep kumar', '.Bsc(H) Computer Science, Bsc(H) Electonics, Bsc(H) Maths, MCA, MBA HRD.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
