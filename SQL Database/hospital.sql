-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 04:52 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('Sajeeb', 'Sajeeb'),
('admin', 'admin'),
('Shafayat', 'Shafayat'),
('Mansur', 'Mansur');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `dName` varchar(20) NOT NULL,
  `pName` varchar(15) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`dName`, `pName`, `room`) VALUES
('Sajeeb', 'Shafayat Jamil', 987),
('Sifat', 'Sajeeb Shahriar', 806);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `count` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`count`, `date`, `id`, `name`, `age`, `gender`, `blood`, `dept`, `phone`, `email`, `status`, `address`, `room`, `username`, `password`) VALUES
(1, '02-04-2018', 'sjb0HMSd1', 'Tharinda', 20, 'Male', 'A-', 'Medecine', '+8801757009622', 'sajeeb3g@gmail.com', 'Single', 'Faridpur', 806, 'Tharinda', '1234'),
(9, '27-09-2009', 'sjb0HMSd9', 'Marina Naznin', 22, 'Female', 'O+', 'Gynaecology', '+8801756789006', 'marina@gmail.com', 'Single', 'Tangail', 555, 'Marina', 'Marina'),
(12, '12-23-2015', 'sjb0HMSd9', 'Sajeeb Shahriar', 21, 'Male', 'O+', 'Microbiology', '+8801756432156', 'sajeeb@gmail.com', 'Single', 'Rajshahi', 987, 'Sajeeb', 'Sajeeb');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `count` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`) VALUES
(2, '08-03-2018', 'sjb0HMS2', 'Sajeeb Shahriar', 20, 'Male', 'Naldanga, Natore', '+8801757009622', 'Single', 'Feaver', 504),
(3, '09-06-2018', 'sjb0HMS3', 'Joy Bhowmik', 21, 'Male', 'Vola', '+8801876543237', 'Single', 'Dengue', 102),
(4, '03-05-2017', 'sjb0HMS4', 'Fahad Mondol', 78, 'Male', 'Kustia', '+8801889765426', 'Married', 'Jondish', 653),
(5, '09-03-2016', 'sjb0HMS5', 'Fazle Rabby', 24, 'Male', 'Brahmanbariya', '+8801765432124', 'Divorced', 'Malaria', 806),
(6, '22-12-2017', 'sjb0HMS6', 'Shafayat Jamil', 27, 'Male', 'Bogra', '+8801722456657', 'Married', 'Tyfoyed', 122),
(8, '22-12-2017', 'sjb0HMS7', 'Nazmus Sakib', 22, 'Male', 'Chadpur', '+8801754678907', 'Single', 'Feaver', 22),
(9, '12-01-2020', 'sjb0HMS', 'Tharinda Abeysena', 22, 'Male', 'Ruwanwella', '+94775806008', 'Single', 'Fever', 3);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `count` int(11) NOT NULL,
  `joining` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`count`, `joining`, `id`, `name`, `age`, `gender`, `blood`, `email`, `phone`, `address`, `status`, `username`, `password`) VALUES
(3, '23-04-2013', 'sjb0HMSd3', 'Sajeeb Shahriar', 21, 'Male', 'O+', 'sajeeb3g@gmail.com', '+8801757009622', 'Naldanga,Natore', 'Single', 'Tharinda', '1234'),
(4, '23-06-2018', 'sjb0HMSr3', 'Mansorol Islam', 24, 'Male', 'A-', 'mansu@gmail.com', '+8801654321234', 'Gazipur', 'Married', 'Mansu', 'Mansu'),
(6, '12-06-2018', 'sjb0HMSr4', 'Nafees Khan', 24, 'Male', 'AB-', 'nafees@gmail.com', '+8801767575658', 'Patuakhali', 'Single', 'Nafees', 'Nafees'),
(9, '07-12-2018', 'sjb0HMSr7', 'Sifat Khan', 34, 'Male', 'O+', 'sifat@gmail.com', '+8801766565676', 'Faridpur', 'Married', 'Sifat', 'Sifat'),
(10, '23-12-2018', 'sjb0HMSr9', 'Shafayat Jamil', 44, 'Male', 'AB-', 'shafayat@gmail.com', '+88017654323', 'Bogra', 'Single', 'Shafayat', 'Shafayat'),
(11, '14-01-2020', 'sjb0HMSr', 'Dilan Godamune', 20, 'Male', 'AB+', 'dilangodamune@gmail.com', '+9471346346', 'Karawanella', 'Single', '', ''),
(12, '14-01-2020', 'sjb0HMSr', 'Dilan Godamune', 20, 'Male', 'AB+', 'dilangodamune@gmail.com', '+9471346346', 'Karawanella', 'Single', 'dilan', '1999');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `a` varchar(11) NOT NULL,
  `b` varchar(11) NOT NULL,
  `c` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`a`, `b`, `c`) VALUES
('5', '6', '6'),
('1', '2', '4'),
('gfhf', 'fv', 'hf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`count`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
