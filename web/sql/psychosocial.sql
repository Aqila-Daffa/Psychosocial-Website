-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2016 at 04:35 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `psychosocial`
--
CREATE DATABASE psychosocial DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `psychosocial`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (userId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `psychologists`
--

CREATE TABLE IF NOT EXISTS `psychologists` (
  `psychologistID` int(255)NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `totalServing` int(255) NOT NULL,
  PRIMARY KEY (psychologistID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `appointmentId` int(255) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL, 
  `age` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `psychologist` varchar(255) NOT NULL,
  `score` int(255) NOT NULL,
  `Interpretation` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `userId` int(255) NOT NULL,
  PRIMARY KEY (appointmentId),
  FOREIGN KEY (userId) REFERENCES users(userId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `paymentId` int(255) NOT NULL AUTO_INCREMENT,
  `paymentProof` varchar(255) NOT NULL,
  `appointmentId` int(255) NOT NULL,
  PRIMARY KEY (paymentId),
  FOREIGN KEY (appointmentId) REFERENCES appointments(appointmentId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transactionId` int(255) NOT NULL AUTO_INCREMENT,
  `statusTransaction` varchar(255),
  `appointmentId` int(255) NOT NULL,
  `paymentId` int(255) NOT NULL,
  PRIMARY KEY (transactionId),
  FOREIGN KEY (appointmentId) REFERENCES appointments(appointmentId),
  FOREIGN KEY (paymentId) REFERENCES payments(paymentId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(255) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL, 
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `psychologist` varchar(255) NOT NULL,
  `statusTransaction` varchar(255),
  `appointmentId` int(255) NOT NULL,
  `transactionId` int(255) NOT NULL,
  PRIMARY KEY (bookId),
  FOREIGN KEY (appointmentId) REFERENCES appointments(appointmentId),
  FOREIGN KEY (transactionId) REFERENCES transactions(transactionId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;