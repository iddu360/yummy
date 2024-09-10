-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2024 at 11:53 AM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4t`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `btime` time DEFAULT NULL,
  `people` int(50) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `phone`, `bdate`, `btime`, `people`, `message`, `created_at`, `updated_at`) VALUES
(1, 'iddu Emma', NULL, 778518066, NULL, NULL, 5, 'hey', '2024-02-06 13:54:29', '2024-02-12 06:23:17'),
(2, 'iddu Emma', NULL, 778518066, NULL, NULL, 5, 'hello, am booking table outside', '2024-02-07 13:00:33', '2024-02-08 05:59:17'),
(3, 'Iddu', 'idduemmanuel19@gmail.com', 778518066, '2024-02-06', '13:30:20', 5, 'hello', '2024-02-08 09:08:46', '2024-02-08 06:08:46'),
(4, 'iddu Emma', NULL, 778518066, NULL, NULL, 6, 'book tomorrow', '2024-02-08 09:47:15', '2024-02-08 06:47:15'),
(5, 'iddu Emma', NULL, 778518066, NULL, NULL, 2, 'Valentines date', '2024-02-08 18:25:47', '2024-02-08 15:25:47'),
(6, 'iddu Emma', 'idduemmanuel19@gmail.com', 778518066, NULL, NULL, 2, 'Valentines date table 2', '2024-02-08 18:49:40', '2024-02-08 15:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `booking2`
--

CREATE TABLE `booking2` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `bdate` date NOT NULL,
  `btime` time NOT NULL,
  `people` int(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `vstatus` varchar(50) NOT NULL DEFAULT 'pending',
  `uniqid` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `verified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking2`
--

INSERT INTO `booking2` (`id`, `name`, `email`, `phone`, `bdate`, `btime`, `people`, `message`, `vstatus`, `uniqid`, `created_at`, `verified_at`) VALUES
(1, 'iddu Emma', 'idduemmanuel19@gmail.com', 778518066, '0000-00-00', '00:00:00', 2, 'Valentine reservation, roses and wine not to miss out', 'pending', '', '2024-02-09 02:51:39', '2024-02-09 02:51:39'),
(30, 'iddu Emma Nhuel', 'idduemmanuel19@gmail.com', 778518066, '0000-00-00', '00:00:00', 3, 'Hello its Val', 'pending', 'd15e56278fbe258561270d44d8a1925c', '2024-02-14 06:11:55', '2024-02-14 06:11:55'),
(32, 'iddu Emma Nhuel', 'idduemmanuel19@gmail.com', 778518066, '0000-00-00', '00:00:00', 3, 'Hello its Valentine now. A table for two', 'verified', 'ab0c7ffa459b7ef2010737415b2e08ec', '2024-02-14 06:17:01', '2024-02-14 10:04:50'),
(33, 'iddu Emmanuel', 'idduemmanuel19@gmail.com', 778518066, '0000-00-00', '00:00:00', 5, 'Hello its Valentine now. A table for two. Roses on the table', 'pending', 'bcebefe78ab34c5dec63ecceb6028d2c', '2024-02-14 06:54:02', '2024-02-14 06:54:02'),
(34, 'larry wills', 'idduemmanuel19@gmail.com', 778518066, '0000-00-00', '00:00:00', 7, 'After Val', 'verified', '4fae482d66f54e77dfe3e32b9e7a40d0', '2024-02-14 07:16:30', '2024-02-14 10:18:34'),
(35, 'iddu Emmanuel', 'idduemmanuel19@gmail.com', 778518066, '0000-00-00', '00:00:00', 55, 'Hello afternoon', 'pending', 'bdef09650fac8ad90b7892c667a9db1b', '2024-02-14 08:37:39', '2024-02-14 08:37:39'),
(36, 'iddu Emmanuel', 'sisali7@gmail.com', 778518066, '0000-00-00', '00:00:00', 55, 'yummy test message', 'pending', '9e51a2ceb2a72b4640a3d7ee347269ee', '2024-02-14 08:46:36', '2024-02-14 08:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_isbn` varchar(25) NOT NULL,
  `book_title` varchar(25) NOT NULL,
  `book_author` varchar(25) NOT NULL,
  `book_category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_isbn`, `book_title`, `book_author`, `book_category`) VALUES
(1, '1234', 'DBMS', 'Iddu Emmanuel', 'SE');

-- --------------------------------------------------------

--
-- Table structure for table `mailing`
--

CREATE TABLE `mailing` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mailing`
--

INSERT INTO `mailing` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `deleted_at`) VALUES
(1, 'iddu Emma', 'legacybronsels997@gmail.com', 'project', 'hey', '2024-02-06 12:55:06', NULL),
(2, 'iddu Emma', 'idduemmanuel19@gmail.com', 'project112', 'hey, prove this', '2024-02-06 12:57:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(5) UNSIGNED NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `delete_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `firstname`, `lastname`, `email`, `password`, `photo`, `created_at`, `updated_at`, `delete_at`) VALUES
(1, 'Josiah', 'Buckner', 'kababad@mailinator.com', '$2y$10$H2VAic0Ll7WCpIuYEtxQMejNCgfdVT7fRaIQd24qBsDiQIc7ZkhA.', '', '2023-02-16 19:14:44', NULL, '0000-00-00 00:00:00'),
(2, 'Sigourney', 'Hamilton', 'gakohymi@mailinator.com', '$2y$10$McbGVWzPzW2sCqIXWZ2ee.KAt4gb/dIGA9N4BQ1rUDTyrvmZF6Zmm', '', '2023-02-16 19:16:42', NULL, '0000-00-00 00:00:00'),
(3, 'Madison', 'Dominguez', 'sisali7@gmail.com', '$2y$10$DFC5FW9yLBEmktFh6kGz/eCk2m1yVUzHvqJvfMdPaIlIZHI/5Gl26', '', '2023-02-16 19:18:00', NULL, '0000-00-00 00:00:00'),
(6, 'Bert', 'Hodges', 'koleme@mailinator.com', '$2y$10$vs6GBc5FmXWMQlIZfcewXO/14zOa.EK/NZHj6XA2HVot1nczhJ2Ey', '', '2023-02-18 13:27:06', NULL, '0000-00-00 00:00:00'),
(7, 'Abdul', 'Kareem', 'kareem@gmail.com', '$2y$10$kRlImFI8hW0ITdjGSZpra.GU9t2QOpGH6c5VsSSeR3qJazB0Wzj5u', '', '2023-02-18 13:36:48', NULL, '0000-00-00 00:00:00'),
(8, 'Karina', 'Kent', 'weciqojez@mailinator.com', '$2y$10$PX.wmzBfl0/vhQUa4ec7UuRlReQs5B2CZVoXtajujMpAbXbhDZRzW', '', '2023-02-18 17:56:47', NULL, '0000-00-00 00:00:00'),
(9, 'Zenia', 'Cline', 'qevux@mailinator.com', '$2y$10$ISpFadcEaDIKUIHT7mZ81OnBMGa6oNHKFwsgfkzZvz7La0aoeZpLS', '', '2023-02-18 18:00:15', NULL, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking2`
--
ALTER TABLE `booking2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `mailing`
--
ALTER TABLE `mailing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking2`
--
ALTER TABLE `booking2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mailing`
--
ALTER TABLE `mailing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
