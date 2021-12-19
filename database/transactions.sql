-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 01:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expensetracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(16) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(16,0) NOT NULL,
  `user_id` int(16) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `date`, `type`, `amount`, `user_id`, `category`) VALUES
(31, '2021-12-15', 'expense', '222', 2, 'Food'),
(32, '2021-12-15', 'expense', '23', 2, 'Food'),
(33, '2021-12-15', 'expense', '23', 2, 'Food'),
(34, '2021-12-16', 'income', '12', 2, 'Food'),
(35, '2021-12-16', 'income', '12', 2, 'Food'),
(36, '2021-12-16', 'income', '500', 2, 'Food'),
(37, '2021-12-16', 'income', '500', 2, 'Food'),
(38, '2021-12-16', 'income', '10', 2, 'Food'),
(39, '2021-12-16', 'income', '1000', 1, 'Food'),
(40, '2021-12-16', 'expense', '32', 1, 'Food'),
(41, '2021-12-16', 'expense', '33', 1, 'Clothing'),
(42, '2021-12-16', 'expense', '0', 1, 'Food'),
(44, '2021-12-16', 'expense', '200', 1, 'Clothing'),
(45, '2021-12-16', 'expense', '500', 1, 'Rent'),
(46, '2021-12-16', 'expense', '122', 2, 'Clothing'),
(47, '2021-12-17', 'expense', '322', 2, 'Miscellaneous'),
(50, '2021-12-19', 'expense', '7865', 2, 'Food'),
(51, '2021-12-19', '', '8769', 2, 'Clothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
