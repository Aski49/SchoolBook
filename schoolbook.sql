-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 07:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `mail`, `password`) VALUES
(4, 'admin', 'admin@gmail.com', 'admin'),
(5, 'admin', 'admin@gmail.com', '12345'),
(6, 'aski', 'askiahamed@gmail.om', 'aski');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mid` int(11) NOT NULL,
  `mindex` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `mgrade` varchar(255) NOT NULL,
  `msubject` varchar(255) NOT NULL,
  `mmarks` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mid`, `mindex`, `mname`, `mgrade`, `msubject`, `mmarks`) VALUES
(11, '18400', 'Thowfeek Mohamed Ahamed Sajjath', 'Grade 05', 'Maths', '50'),
(12, '18400', 'Thowfeek Mohamed Ahamed Sajjath', 'Grade 05', 'Science', '60'),
(14, '18400', 'Thowfeek Mohamed Ahamed Sajjath', 'Grade 05', 'English', '70'),
(15, '18400', 'Thowfeek Mohamed Ahamed Sajjath', 'Grade 05', 'Tamil', '80'),
(16, '18400', 'Thowfeek Mohamed Ahamed Sajjath', 'Grade 05', 'Art', '90');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sindex` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `sgender` varchar(255) NOT NULL,
  `sdob` varchar(255) NOT NULL,
  `saddress` varchar(255) NOT NULL,
  `smobile` varchar(15) NOT NULL,
  `sgrade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sindex`, `sname`, `sgender`, `sdob`, `saddress`, `smobile`, `sgrade`) VALUES
(2, '18422', 'ABDUL JAWFER ASKI AHAMED', 'Male', '1999.04.14', '10/3A, HIJRA 3RD STREET\nSAMMANTHURAi', '0779930640', 'Grade 03'),
(3, '18424', 'ABDUL MAJEED MOHAMMED BILAL', 'Male', '1999.08.25', 'SAMMANTHURAI', '0777123456', 'Grade 04'),
(4, '18400', 'Thowfeek Mohamed Ahamed Sajjath', 'Male', '1999.06.10', 'Sammanthurai', '0777123456', 'Grade 05');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tnum` varchar(255) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `tgender` varchar(255) NOT NULL,
  `tdob` varchar(255) NOT NULL,
  `tmobile` varchar(255) NOT NULL,
  `tsub` varchar(255) NOT NULL,
  `tgrade` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tnum`, `tname`, `tgender`, `tdob`, `tmobile`, `tsub`, `tgrade`) VALUES
(1, '1110', 'ABDUL JAWFER', 'Male', '1969.02.23', '0776231105', 'Maths', 'Grade 05'),
(3, '1111', 'Raheema', 'Female', '1965.02.05', '0755123456', 'Maths', 'Grade 01');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `ttid` int(11) NOT NULL,
  `ttdate` varchar(255) NOT NULL,
  `tttime` varchar(255) NOT NULL,
  `ttsubject` varchar(255) NOT NULL,
  `ttgrade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`ttid`, `ttdate`, `tttime`, `ttsubject`, `ttgrade`) VALUES
(2, '16.07.2022', '20:00', 'Maths', 'Grade 01'),
(3, '2022.10.05', '08.00', 'Maths', 'Grade 05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`ttid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `ttid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
