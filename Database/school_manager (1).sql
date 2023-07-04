-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 02:45 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`) VALUES
(1, 'lớp php'),
(2, 'lớp java'),
(3, 'lớp .net'),
(4, 'lớp c#'),
(8, 'Lớp nodejs');

-- --------------------------------------------------------

--
-- Table structure for table `pupil`
--

CREATE TABLE IF NOT EXISTS `pupil` (
`id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` tinyint(1) NOT NULL,
  `introduce` text,
  `married` tinyint(1) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `interest` varchar(1000) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pupil`
--

INSERT INTO `pupil` (`id`, `class_id`, `full_name`, `birthday`, `sex`, `introduce`, `married`, `avatar`, `interest`, `profile`) VALUES
(27, 1, 'Anh Thắng', '2023-04-13 17:00:00', 1, 'Thắng đang học lớp php', 1, '', '', ''),
(28, 1, 'Phạm Đạt', '2023-04-16 17:00:00', 1, 'Đạt đang học tại lớp php', 0, '_0db5e82469dcd86bd43cf8fd2aec594e6438ac4340fee9.79297999.JPG', '["music"]', '_0db5e82469dcd86bd43cf8fd2aec594e6438ac434129c9.89140436.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pupil`
--
ALTER TABLE `pupil`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pupil`
--
ALTER TABLE `pupil`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
