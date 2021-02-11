-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 03:58 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `lib_book`
--

CREATE TABLE `lib_book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_publisher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lib_borrow`
--

CREATE TABLE `lib_borrow` (
  `borrow_id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `borrow_editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `time_borrow_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lib_member`
--

CREATE TABLE `lib_member` (
  `member_id` int(11) NOT NULL,
  `member_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_address` text COLLATE utf8_unicode_ci NOT NULL,
  `member_phone` int(10) NOT NULL,
  `member_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lib_member`
--

INSERT INTO `lib_member` (`member_id`, `member_username`, `member_password`, `member_firstname`, `member_lastname`, `member_address`, `member_phone`, `member_type`) VALUES
(1, 'เสี่ย', '11', 'โอ', 'จักรี', 'เยอรมัน', 11111, '0'),
(2, 'ตู่', '28', 'ประยุทธ์', 'จันทรุปราคา', 'กทม.', 22222, '0'),
(3, 'ฮาร์ท', '1234', 'Wirunrom', 'Wankasemsan', 'ดอยสะเก็ด', 33333, '1'),
(4, 'รัต', '1234', 'ชุลีรัต', 'ล่าพระ', 'เชียงดาว', 44444, '0'),
(5, 'เวฟ', '1234', 'แป้ะ', 'นาทองไชย', 'เมือง', 55555, '0'),
(6, 'มะนาว', '1234', 'Pichapat', 'Nithikulsuppasatien', 'เชียงใหม่คริสเตียน', 66666, '1'),
(7, 'แตม', '1234', 'hudsapon', 'hongsoy', 'เมือง', 77777, '0'),
(8, 'เนย', '1234', 'นริศรา', 'อุทัง', 'เมือง', 88888, '0'),
(9, 'เรน', '1234', 'วินิจฉัย', 'วันเกษมสันต์', 'ดอยสะเก็ด', 99999, '0'),
(10, 'ลัน', '1234', 'supakit', 'srisai', 'แม่ริม', 101010, '0');

-- --------------------------------------------------------

--
-- Table structure for table `lib_return`
--

CREATE TABLE `lib_return` (
  `return_id` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `return_editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `time_borrow_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lib_time_borrow`
--

CREATE TABLE `lib_time_borrow` (
  `time_borrow_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `borrow_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lib_book`
--
ALTER TABLE `lib_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lib_borrow`
--
ALTER TABLE `lib_borrow`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `time_borrow_id` (`time_borrow_id`);

--
-- Indexes for table `lib_member`
--
ALTER TABLE `lib_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `lib_return`
--
ALTER TABLE `lib_return`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `time_borrow_id` (`time_borrow_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `lib_time_borrow`
--
ALTER TABLE `lib_time_borrow`
  ADD PRIMARY KEY (`time_borrow_id`),
  ADD UNIQUE KEY `return_id` (`return_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `borrow_id` (`borrow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lib_book`
--
ALTER TABLE `lib_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lib_borrow`
--
ALTER TABLE `lib_borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lib_member`
--
ALTER TABLE `lib_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lib_return`
--
ALTER TABLE `lib_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lib_time_borrow`
--
ALTER TABLE `lib_time_borrow`
  MODIFY `time_borrow_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
