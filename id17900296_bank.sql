-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2021 at 03:10 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17900296_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sno` int(20) NOT NULL,
  `sender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` bigint(50) NOT NULL,
  `datetime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sno`, `sender`, `receiver`, `amount`, `datetime`) VALUES
(1, 'KUSHI', 'ashu', 1000, '2021-11-10 06:57:57.850485'),
(2, 'Tatikonda Sushmitha', 'ashu', 1, '2021-11-10 07:16:22.694747'),
(3, 'Varun ', 'ashu', 100000, '2021-11-10 10:53:27.857274'),
(4, 'Varun ', 'ashu', 1, '2021-11-10 10:54:59.671098'),
(5, 'ashu', 'Varun ', 1500, '2021-11-10 11:20:52.658243'),
(6, 'ashu', 'Tatikonda Sushmitha', 123, '2021-11-10 14:16:18.039168'),
(7, 'ashu', 'KUSHI', 123, '2021-11-11 17:11:23.105094'),
(8, 'KUSHI', 'Varun ', 12345, '2021-11-11 17:11:54.313729'),
(9, 'laxman', 'Tatikonda Sushmitha', 200, '2021-11-11 17:12:26.221251'),
(10, 'Varun ', 'raghu', 500, '2021-11-11 17:15:06.195934'),
(11, 'raghu', 'anu', 400, '2021-11-11 17:15:29.128999'),
(12, 'deepu', 'chintu', 600, '2021-11-11 17:16:06.203040'),
(13, 'chintu', 'anu', 1234, '2021-11-11 17:16:31.630517'),
(14, 'deepu', 'ammu', 15000, '2021-11-11 17:19:24.540031'),
(15, 'ashu', 'deepu', 15890, '2021-11-11 17:19:57.302867'),
(16, 'abc', 'laxman', 100, '2021-11-11 17:24:02.196331'),
(17, 'ashu', 'KUSHI', 1, '2021-11-12 05:06:54.797261'),
(18, 'abc', 'ssddddddd', 100, '2021-11-12 14:33:28.516509'),
(19, 'Ashwin', 'abc', 500000, '2021-11-17 12:46:09.863253'),
(20, 'Ashwin', 'anu', 2588, '2021-11-17 12:46:55.349746'),
(21, 'Ramya Sri', 'KUSHI', 90, '2021-11-17 15:31:48.095325');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `balance` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'ashu', 'ashu@gmail.com', 83865),
(2, 'ammu', 'ammu@gmail.com', 15200),
(3, 'anu', 'anu@gmail.com', 4422),
(4, 'anusha', 'anusha@gmail.com', 1234),
(5, 'KUSHI', 'kushi1724@gmail.com', 19124),
(6, 'KUSHI', 'kushi1724@gmail.com', 7745),
(7, 'Tatikonda Sushmitha', 'sushmitha.t369@gmail.com', 422),
(8, 'Varun ', 'devavarun29@gmail.com', 1500),
(9, 'Varun ', 'devavarun29@gmail.com', 11845),
(10, 'laxman', 'laxman@gmail.com', 1400),
(11, 'deepu', 'deepu@gmailcom', 100290),
(12, 'chintu', 'ch12@gmail.com', 966),
(13, 'raghu', 'raghu@gmail.com', 4600),
(14, 'abc', 'abc@gmail.com', 200),
(15, 'ssddddddd', 'ddddd@live.com', 110),
(16, 'abc', 'abc@gmail.com', 501100),
(17, 'Ashwin', 'ashwin@mmml.com', 50807578220),
(18, 'Ramya Sri', 'Sarlaramesh.7@gmail.com', 1310);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
