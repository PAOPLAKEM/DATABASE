-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 12:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmsh1`
--

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `Pond` char(2) NOT NULL,
  `Num_tr` char(10) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`Pond`, `Num_tr`, `date`) VALUES
('1', '1', '2022-11-03'),
('2', '3', '2022-11-03'),
('3', '1', '2022-11-15'),
('4', '5', '2022-11-14'),
('5', NULL, NULL),
('6', '5', '2022-11-14'),
('7', NULL, NULL),
('8', NULL, NULL),
('9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merchan`
--

CREATE TABLE `merchan` (
  `Name_Mer` varchar(20) NOT NULL,
  `Sur_Mer` varchar(20) NOT NULL,
  `Phone_mer` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchan`
--

INSERT INTO `merchan` (`Name_Mer`, `Sur_Mer`, `Phone_mer`) VALUES
('marcus', 'ต่อแตน', '0876743215'),
('ramos', 'แสงสว่าง', '0957634450'),
('ภูมิหมีพล', 'ไพรพล', '0973243245'),
('ยน', 'มงคล', '0976548634'),
('fabio', 'water', '0984531123');

-- --------------------------------------------------------

--
-- Table structure for table `pond`
--

CREATE TABLE `pond` (
  `Pond` char(2) NOT NULL COMMENT 'บ่อ',
  `Pond_size` int(9) DEFAULT NULL,
  `type_shrimp` varchar(20) DEFAULT NULL,
  `day_shrimp` int(3) DEFAULT NULL,
  `num_shrimp` int(8) DEFAULT NULL,
  `Pond_O2 %` int(3) DEFAULT NULL,
  `Pond_Mg %` int(3) DEFAULT NULL,
  `Pond_Ca %` int(3) DEFAULT NULL,
  `Pond_Na %` int(3) DEFAULT NULL,
  `COMPANY` varchar(20) DEFAULT NULL,
  `Phnumber` char(10) DEFAULT NULL,
  `cost` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pond`
--

INSERT INTO `pond` (`Pond`, `Pond_size`, `type_shrimp`, `day_shrimp`, `num_shrimp`, `Pond_O2 %`, `Pond_Mg %`, `Pond_Ca %`, `Pond_Na %`, `COMPANY`, `Phnumber`, `cost`) VALUES
('1', 2, 'ก้ามกาม', 80, 120000, 22, 12, 23, 8, 'CP', '0973243245', 800000),
('2', 3, 'ขาว', 83, 300000, 22, 14, 20, 12, 'ว.จ.', '0976548634', 20000000),
('3', 5, 'ก้ามกาม', 129, 300000, 21, 11, 21, 11, 'CP', '0973243245', 120000000),
('4', 5, 'ขาว', 97, 500000, 23, 12, 35, 17, 'CP', '0957634450', 30000000),
('5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6', 5, 'ขาว', 97, 600000, 20, 17, 32, 12, 'CP', '0957634450', 13200000),
('7', 5, 'ขาว', 64, 570000, 21, NULL, 21, 11, 'ว.จ.', '0876743215', 12000000),
('8', 3, 'กุลาดำ', 30, 200000, 31, 20, 20, 12, 'CP', '0973243245', 1380000),
('9', 5, 'ก้ามกาม', 27, 100000, NULL, NULL, NULL, NULL, 'CP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `Num_re` varchar(10) NOT NULL,
  `Pond` char(2) NOT NULL,
  `Phone_cus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`Num_re`, `Pond`, `Phone_cus`) VALUES
('1238512', '1', '0973243245'),
('1238513', '3', '0973243245'),
('1238514', '6', '0957634450'),
('1238522', '2', '0976548634'),
('1238526', '4', '0957634450'),
('1238578', '7', '0876743215');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Sup_name` varchar(100) NOT NULL,
  `Sup_sur` varchar(100) NOT NULL,
  `COMPANY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Sup_name`, `Sup_sur`, `COMPANY`) VALUES
('jaisu', 'toyak', 'CP'),
('jaika', 'tailawn', 'ว.จ.');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `Num_tr` char(10) NOT NULL,
  `Name_Comp` char(10) DEFAULT NULL,
  `name_tr` varchar(20) DEFAULT NULL,
  `sur_tr` varchar(20) DEFAULT NULL,
  `Phnum` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`Num_tr`, `Name_Comp`, `name_tr`, `sur_tr`, `Phnum`) VALUES
('1', 'ขนส่ง1', 'ยงยสเดส', 'สุวน', '0976585534'),
('2', 'ขนส่ง2', 'decan', 'rice', '0899765430'),
('3', 'ขนส่ง1', 'mbabu', 'พลประมาน', '0546785568'),
('4', 'ขนส่ง2', 'กงยู', 'ทุสพล', '1253765880'),
('5', 'ขนส่ง3', 'กอไก่', 'ในเล้า', '0898716549');

-- --------------------------------------------------------

--
-- Table structure for table `water`
--

CREATE TABLE `water` (
  `type_shrimp` varchar(20) NOT NULL,
  `Pond_water` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `water`
--

INSERT INTO `water` (`type_shrimp`, `Pond_water`) VALUES
('กุลาดำ', 'กร่อย'),
('ก้ามกาม', 'จืด'),
('ขาว', 'จืด');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`Pond`),
  ADD KEY `Name_Comp` (`Num_tr`);

--
-- Indexes for table `merchan`
--
ALTER TABLE `merchan`
  ADD PRIMARY KEY (`Phone_mer`);

--
-- Indexes for table `pond`
--
ALTER TABLE `pond`
  ADD PRIMARY KEY (`Pond`),
  ADD KEY `Phnumber` (`Phnumber`),
  ADD KEY `COMPANY` (`COMPANY`),
  ADD KEY `type_shrimp` (`type_shrimp`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`Num_re`),
  ADD KEY `Pond` (`Pond`),
  ADD KEY `Phone_cus` (`Phone_cus`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`COMPANY`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`Num_tr`);

--
-- Indexes for table `water`
--
ALTER TABLE `water`
  ADD PRIMARY KEY (`type_shrimp`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farm`
--
ALTER TABLE `farm`
  ADD CONSTRAINT `farm_ibfk_1` FOREIGN KEY (`Num_tr`) REFERENCES `transport` (`Num_tr`),
  ADD CONSTRAINT `farm_ibfk_2` FOREIGN KEY (`Pond`) REFERENCES `pond` (`Pond`);

--
-- Constraints for table `pond`
--
ALTER TABLE `pond`
  ADD CONSTRAINT `pond_ibfk_2` FOREIGN KEY (`COMPANY`) REFERENCES `supplier` (`COMPANY`),
  ADD CONSTRAINT `pond_ibfk_3` FOREIGN KEY (`Phnumber`) REFERENCES `merchan` (`Phone_mer`),
  ADD CONSTRAINT `pond_ibfk_4` FOREIGN KEY (`type_shrimp`) REFERENCES `water` (`type_shrimp`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`Phone_cus`) REFERENCES `merchan` (`Phone_mer`),
  ADD CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`Pond`) REFERENCES `pond` (`Pond`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
