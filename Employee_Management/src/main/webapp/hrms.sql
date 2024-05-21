-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2018 at 07:42 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `u` varchar(50) DEFAULT NULL,
  `p` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`u`, `p`) VALUES
('9845367041', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin1`
--

CREATE TABLE `adminlogin1` (
  `u` varchar(50) DEFAULT NULL,
  `p` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `empid` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `acno` varchar(100) DEFAULT NULL,
  `ifscode` varchar(100) DEFAULT NULL,
  `amt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`empid`, `name`, `acno`, `ifscode`, `amt`) VALUES
('1001', 'asdf', '2222222222222', '23sdsd', '8000'),
('1001', 'asdf', '2222222222222', '23sdsd', '50000'),
('1001', 'asdf', '2222222222222', '23sdsd', '50000'),
('1001', 'asdf', '2222222222222', '23sdsd', '34434'),
('1001', 'asdf', '2222222222222', '23sdsd', '34434'),
('1001', 'asdf', '2222222222222', '23sdsd', '44444'),
('1001', 'Bhagya', '7122500103415201', 'KARB0000712', ''),
('1002', 'Farmanulla', '32008698237', 'SBIN0007906', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addres` varchar(50) DEFAULT NULL,
  `ph` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL,
  `desg` varchar(50) DEFAULT NULL,
  `sal` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `doj` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `u` varchar(50) DEFAULT NULL,
  `p` varchar(50) DEFAULT NULL,
  `pho` varchar(50) DEFAULT NULL,
  `ltc` varchar(100) DEFAULT NULL,
  `med` varchar(100) DEFAULT NULL,
  `adh` varchar(100) DEFAULT NULL,
  `bankac` varchar(100) DEFAULT NULL,
  `ifsc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `addres`, `ph`, `email`, `dept`, `desg`, `sal`, `dob`, `doj`, `gender`, `u`, `p`, `pho`, `ltc`, `med`, `adh`, `bankac`, `ifsc`) VALUES
('1001', 'asdf', 'asdf', '8123589580', 'skpfarman@gmail.com', 'Administrator', 'Accountant', '50000', '2018-05-17', '2018-05-26', 'Male', 'u1', 'u1', 'icon_solutions_live_agent.png', '10000', '10000', '233232232323', '2333333333333', 'asdf23');

-- --------------------------------------------------------

--
-- Table structure for table `empcert`
--

CREATE TABLE `empcert` (
  `id` varchar(50) DEFAULT NULL,
  `cer` varchar(50) DEFAULT NULL,
  `des` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `ins_uni` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empcert`
--

INSERT INTO `empcert` (`id`, `cer`, `des`, `year`, `ins_uni`, `grade`) VALUES
('1001', 'asdf', 'asdf', '2010', 'asdf', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `empedn`
--

CREATE TABLE `empedn` (
  `id` varchar(50) DEFAULT NULL,
  `ed` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `ins_uni` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empedn`
--

INSERT INTO `empedn` (`id`, `ed`, `year`, `ins_uni`, `grade`) VALUES
('1001', 'HSC', '2010', 'df', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `empskll`
--

CREATE TABLE `empskll` (
  `id` varchar(50) DEFAULT NULL,
  `compname` varchar(50) DEFAULT NULL,
  `ph` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adr` varchar(50) DEFAULT NULL,
  `contctper` varchar(50) DEFAULT NULL,
  `desg` varchar(50) DEFAULT NULL,
  `prevpaypackg` varchar(50) DEFAULT NULL,
  `fromdt` varchar(50) DEFAULT NULL,
  `todt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empskll`
--

INSERT INTO `empskll` (`id`, `compname`, `ph`, `email`, `adr`, `contctper`, `desg`, `prevpaypackg`, `fromdt`, `todt`) VALUES
('1001', 'asdf', 'asdf', 'adf', 'asdf', 'asf', 'asdf', '23', '2016-03-24', '2016-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `lapp`
--

CREATE TABLE `lapp` (
  `id` varchar(50) DEFAULT NULL,
  `doa` varchar(50) DEFAULT NULL,
  `nod` varchar(10) DEFAULT NULL,
  `tleave` varchar(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lapp`
--

INSERT INTO `lapp` (`id`, `doa`, `nod`, `tleave`, `status`) VALUES
('1001', '', '1', 'EL', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `lmaster`
--

CREATE TABLE `lmaster` (
  `id` varchar(50) NOT NULL,
  `tleaves` varchar(50) DEFAULT NULL,
  `lavailed` varchar(50) DEFAULT NULL,
  `el` varchar(10) DEFAULT NULL,
  `ml` varchar(10) DEFAULT NULL,
  `cl` varchar(10) DEFAULT NULL,
  `pl` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lmaster`
--

INSERT INTO `lmaster` (`id`, `tleaves`, `lavailed`, `el`, `ml`, `cl`, `pl`) VALUES
('1001', '20', '1', '4', '5', '5', '5'),
('1002', '20', '6', '5', '-1', '5', '5'),
('1005', '20', '0', '5', '5', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `ltc`
--

CREATE TABLE `ltc` (
  `empid` varchar(100) DEFAULT NULL,
  `reqid` varchar(100) DEFAULT NULL,
  `reqdate` varchar(100) DEFAULT NULL,
  `emid` varchar(100) DEFAULT NULL,
  `billphoto` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ltc`
--

INSERT INTO `ltc` (`empid`, `reqid`, `reqdate`, `emid`, `billphoto`, `status`) VALUES
('1001', '1001', '2018-05-16', '8123589580', 'bill.jpg', 'Rejected'),
('FarmanullaÂ ', '1002', '', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '1002', '', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '1002', '', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '2018-05-16', '', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '2018-05-16', '', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '1006', '2018-05-10', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '1006', '2018-05-10', '8123589580', '', 'Pending'),
('FarmanullaÂ ', '1006', '2018-05-10', '8123589580', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `empid` varchar(100) DEFAULT NULL,
  `reqid` varchar(100) DEFAULT NULL,
  `reqdate` varchar(100) DEFAULT NULL,
  `emid` varchar(100) DEFAULT NULL,
  `billphoto` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`empid`, `reqid`, `reqdate`, `emid`, `billphoto`, `status`) VALUES
('1001', '1001', '', 'a@g.com', 'bill.jpg', 'Approved'),
('1001', '1002', '2018-05-09', '8123589580', 'bill.jpg', 'Approved'),
('1001', '1001', '2018-05-16', '8123589580', 'bill.jpg', 'Approved'),
('1002', '1004', '2018-05-11', '8123589580', 'bill.jpg', 'Approved'),
('1002', '1004', '', '8123589580', '', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `pslip`
--

CREATE TABLE `pslip` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `wrkingdays` varchar(50) DEFAULT NULL,
  `wrkeddays` varchar(50) DEFAULT NULL,
  `sal` varchar(50) DEFAULT NULL,
  `hra` varchar(50) DEFAULT NULL,
  `da` varchar(50) DEFAULT NULL,
  `netsal` varchar(50) DEFAULT NULL,
  `dedns` varchar(50) DEFAULT NULL,
  `takhome` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pslip`
--

INSERT INTO `pslip` (`id`, `name`, `wrkingdays`, `wrkeddays`, `sal`, `hra`, `da`, `netsal`, `dedns`, `takhome`, `month`, `year`) VALUES
('1002', 'Farmanulla', '30', '26', '43750', '6250', '$12500', '37916.666666667', '150', '37766.666666667', 'May', '2018'),
('1003', 'Sachin', '30', '25', '43750', '6250', '$12500', '36458.333333333', '0', '36458.333333333', 'May', '2018'),
('1006', 'asdf', '30', '29', '4065.25', '580.75', '$1161.5', '3929.7416666667', '500', '3429.7416666667', 'Mar', '2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD KEY `u` (`u`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lmaster`
--
ALTER TABLE `lmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pslip`
--
ALTER TABLE `pslip`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
