-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 10:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweisseh`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `id` int(1) NOT NULL,
  `blood_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `blood_type`) VALUES
(1, 'o+');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(1) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`) VALUES
(1, 'السويسة'),
(2, 'مشحا'),
(3, 'كوشا');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(2) NOT NULL,
  `mager` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `mager`) VALUES
(1, 'computer'),
(2, 'medical');

-- --------------------------------------------------------

--
-- Table structure for table `family_name`
--

CREATE TABLE `family_name` (
  `id` int(2) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_name`
--

INSERT INTO `family_name` (`id`, `last_name`) VALUES
(1, 'zohbi');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(1) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(1) NOT NULL,
  `job_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `job_name`) VALUES
(3, 'programmer'),
(4, 'engenier');

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `id` int(1) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(1) NOT NULL,
  `nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `nationality`) VALUES
(1, 'lebanease'),
(2, 'sirya');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `name` varchar(20) NOT NULL,
  `last_name_id` int(2) NOT NULL,
  `father_name` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `mother_last_name` varchar(20) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `gender_id` int(1) NOT NULL,
  `education_id` int(2) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `registered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nationality_id` int(2) NOT NULL,
  `city` int(11) NOT NULL,
  `blood_group_id` int(1) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `number_of_children` int(11) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `sikness_id` int(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `family_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`name`, `last_name_id`, `father_name`, `mother_name`, `mother_last_name`, `job_id`, `id`, `gender_id`, `education_id`, `birthday`, `registered`, `nationality_id`, `city`, `blood_group_id`, `marital_status`, `number_of_children`, `phone_number`, `sikness_id`, `email`, `family_id`) VALUES
('Mohamad', 1, 'Ahmad', 'test', 'mir', NULL, 22, 1, NULL, '2005-02-22', '2023-05-26 08:02:38', 1, 1, NULL, NULL, NULL, '71081432', NULL, 'alzbya0123@gmail.com', 1),
('Mohamad', 1, 'Ahmad', 'test', 'mir', NULL, 23, 1, NULL, '2005-02-22', '2023-05-26 08:03:09', 1, 1, NULL, NULL, NULL, '71081432', NULL, 'alzbya0123@gmail.com', 1),
('Mohamad', 1, 'Ahmad', 'test', 'mir', NULL, 24, 1, NULL, '2005-02-22', '2023-05-26 08:03:20', 1, 1, NULL, NULL, NULL, '71081432', NULL, 'alzbya0123@gmail.com', 1),
('Mohamad', 1, 'Ahmad', 'test', 'mir', NULL, 25, 1, NULL, '2005-02-22', '2023-05-26 08:03:26', 1, 1, NULL, NULL, NULL, '71081432', NULL, 'alzbya0123@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sikness`
--

CREATE TABLE `sikness` (
  `id` int(3) NOT NULL,
  `desease` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sikness`
--

INSERT INTO `sikness` (`id`, `desease`) VALUES
(1, 'cancer\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_name`
--
ALTER TABLE `family_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `gender` (`gender_id`),
  ADD KEY `education` (`education_id`),
  ADD KEY `Nationality` (`nationality_id`),
  ADD KEY `city` (`city`),
  ADD KEY `blood_group_id` (`blood_group_id`),
  ADD KEY `family_id` (`family_id`),
  ADD KEY `sikness_id` (`sikness_id`),
  ADD KEY `last_name_id` (`last_name_id`);

--
-- Indexes for table `sikness`
--
ALTER TABLE `sikness`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `family_name`
--
ALTER TABLE `family_name`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sikness`
--
ALTER TABLE `sikness`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `personal_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `personal_ibfk_3` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`),
  ADD CONSTRAINT `personal_ibfk_4` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`),
  ADD CONSTRAINT `personal_ibfk_5` FOREIGN KEY (`city`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `personal_ibfk_6` FOREIGN KEY (`blood_group_id`) REFERENCES `blood` (`id`),
  ADD CONSTRAINT `personal_ibfk_7` FOREIGN KEY (`family_id`) REFERENCES `family_name` (`id`),
  ADD CONSTRAINT `personal_ibfk_8` FOREIGN KEY (`sikness_id`) REFERENCES `sikness` (`id`),
  ADD CONSTRAINT `personal_ibfk_9` FOREIGN KEY (`last_name_id`) REFERENCES `family_name` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
