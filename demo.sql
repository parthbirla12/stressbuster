-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 06:07 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `indexuser`
--

CREATE TABLE `indexuser` (
  `name` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `Phone` int(10) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `username`, `password`, `created_at`) VALUES
(4, 'arpit', '$2y$10$1rS3VjcfZBA6g7oia.FTSuJmjwnP9O2E0668j/ARlDT5b732X.HbO', '2021-08-25 20:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'abc', '$2y$10$Os1gLX/B2ypQc9J8v1/7r.MmZip3Dt98J.JYf1zgh.K3Qm9YNP.LW', '2021-08-18 20:45:11'),
(2, 'hello', '$2y$10$D63EuSa8D3yznkKHTWcJCO2lQ33RB46gKfMSoclArVnvbj6Q.VmZW', '2021-08-18 21:35:57'),
(4, 'arpit', '$2y$10$1rS3VjcfZBA6g7oia.FTSuJmjwnP9O2E0668j/ARlDT5b732X.HbO', '2021-08-25 20:45:05'),
(5, 'neha', '$2y$10$JgtdizIjFEFJf4hgmirTJOGUO9/zhscd4ujTz.OR5UNmDLzrwy/ba', '2021-08-25 21:10:38'),
(6, 'neh', '$2y$10$vWFNuyEki3VcFeobWgF6gu0Br/AdeeNzOPfXsybqqaCiyS4FsRb2m', '2021-08-25 21:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indexuser`
--
ALTER TABLE `indexuser`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
