-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2017 at 03:48 PM
-- Server version: 5.1.40
-- PHP Version: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `java_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `surname`, `name`, `phone`, `email`) VALUES
(1, 'Ivanov', 'Ivan', '222-22-22', 'ivanov@tut.by'),
(2, 'Petrov', 'Ivan', '333-22-22', 'petrov@tut.by'),
(3, 'Ivanov', 'Petr', '223-44-55', 'ivanov_petr@tut.by'),
(4, 'Petrov', 'Petr', '233-43-23', 'petrov.p@tut.by'),
(5, 'Ivanov', 'Ivan', '111-11-11', 'ivanov@mail.ru');
