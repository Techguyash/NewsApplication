-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 06:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `andfeeds`
--
CREATE DATABASE IF NOT EXISTS `andfeeds` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `andfeeds`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--
-- Creation: Aug 15, 2020 at 05:01 PM
--

CREATE TABLE `category` (
  `categoryid` int(20) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='used for storing comments';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category`) VALUES
(1, 'Technology'),
(2, 'Covid-19'),
(3, 'Sports'),
(4, 'Cinema'),
(5, 'India'),
(6, 'International'),
(7, 'World'),
(8, 'Business'),
(9, 'Entertainment'),
(10, 'LifeStyle'),
(11, 'education');

-- --------------------------------------------------------

--
-- Table structure for table `headerpost`
--
-- Creation: Aug 23, 2020 at 05:58 PM
--

CREATE TABLE `headerpost` (
  `postid` int(100) NOT NULL,
  `content` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdby` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headerpost`
--

INSERT INTO `headerpost` (`postid`, `content`, `img`, `createdon`, `createdby`) VALUES
(7, 'Corona cases crossed 1 crore world wide', 'https://ichef.bbci.co.uk/news/1024/branded_news/B167/production/_111251454_hi060601166.jpg', '2020-08-23 17:40:59', ''),
(8, 'Corona cases crossed 1 crore world widea', 'https://ichef.bbci.co.uk/news/1024/branded_news/B167/production/_111251454_hi060601166.jpg', '2020-08-23 17:41:45', 'rajii'),
(9, 'Corona cases crossed 1 crore world widea', 'https://ichef.bbci.co.uk/news/1024/branded_news/B167/production/_111251454_hi060601166.jpg', '2020-08-23 17:41:45', 'rajii');

-- --------------------------------------------------------

--
-- Table structure for table `newspost`
--
-- Creation: Aug 23, 2020 at 10:25 AM
--

CREATE TABLE `newspost` (
  `postid` int(20) NOT NULL,
  `categoryName` varchar(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdby` varchar(30) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `postDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newspost`
--

INSERT INTO `newspost` (`postid`, `categoryName`, `Title`, `content`, `createdon`, `createdby`, `img`, `postDate`) VALUES
(1, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01'),
(2, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://s01.sgp1.cdn.digitaloceanspaces.', '2020-08-01'),
(3, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://ichef.bbci.co.uk/news/1024/branded_news/B167/production/_111251454_hi060601166.jpg', '2020-08-01'),
(4, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01'),
(5, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01'),
(6, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01'),
(7, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01'),
(8, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01'),
(9, 'Technology', 'Lebenon blast 80 killed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada mi nec\r\n                 ', '2020-08-23 17:37:52', 'rajii', 'https://d.newsweek.com/en/full/1618337/lebanon-beirut-explosion-fire-port.jpg', '2020-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `publisher_db`
--
-- Creation: Aug 19, 2020 at 08:45 AM
--

CREATE TABLE `publisher_db` (
  `publisher_id` int(20) NOT NULL,
  `publisher_name` varchar(20) NOT NULL,
  `publisher_desc` varchar(100) NOT NULL,
  `displaypicture` varchar(250) DEFAULT NULL,
  `fb` varchar(100) NOT NULL,
  `tweet` varchar(100) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher_db`
--

INSERT INTO `publisher_db` (`publisher_id`, `publisher_name`, `publisher_desc`, `displaypicture`, `fb`, `tweet`, `createdon`) VALUES
(1, 'The Hindu', 'Most liked publisher, Trusted by most of the people', 'https://d302e0npexowb4.cloudfront.net/wp-content/uploads/2016/11/The-Hindu-logo.png', 'https://www.facebook.com/thehindu', 'https://twitter.com/the_hindu', '2020-08-19 08:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Aug 18, 2020 at 05:05 PM
--

CREATE TABLE `users` (
  `userid` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `designation` varchar(10) DEFAULT NULL,
  `mobile` int(10) DEFAULT NULL,
  `profilepic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `email`, `name`, `password`, `designation`, `mobile`, `profilepic`) VALUES
(1, 'testuser@andfeeds.com', 'Tester', 'open', 'editor', 1234567890, 'a.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `headerpost`
--
ALTER TABLE `headerpost`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `newspost`
--
ALTER TABLE `newspost`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `publisher_db`
--
ALTER TABLE `publisher_db`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `headerpost`
--
ALTER TABLE `headerpost`
  MODIFY `postid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newspost`
--
ALTER TABLE `newspost`
  MODIFY `postid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publisher_db`
--
ALTER TABLE `publisher_db`
  MODIFY `publisher_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
