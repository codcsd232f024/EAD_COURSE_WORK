-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2024 at 07:06 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `customer_tel` varchar(10) NOT NULL,
  `customer_passport_no` varchar(10) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `return_date` date NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `customer_name`, `customer_tel`, `customer_passport_no`, `Country`, `vehicle_id`, `booking_date`, `return_date`, `payment_method`, `total_cost`) VALUES
(1, 'John Doe', '1234567890', 'P1234567', 'USA', 1, '2024-12-01', '2024-12-05', 'Credit Card', '200.00'),
(2, 'Jane Smith', '0987654321', 'P9876543', 'UK', 2, '2024-12-03', '2024-12-07', 'Online Payment', '260.00'),
(3, 'Michael Brown', '1122334455', 'P5566778', 'Canada', 3, '2024-12-02', '2024-12-04', 'Cash', '90.00'),
(4, 'Emma Johnson', '6677889900', 'P8899001', 'Australia', 5, '2024-12-01', '2024-12-06', 'Credit Card', '300.00'),
(5, 'Chris Wilson', '2233445566', 'P3344556', 'Germany', 6, '2024-12-02', '2024-12-05', 'Online Payment', '210.00'),
(6, 'Sophia Davis', '7788990011', 'P1122334', 'France', 9, '2024-12-04', '2024-12-08', 'Cash', '320.00'),
(7, 'Liam Miller', '5566778899', 'P5566771', 'Italy', 10, '2024-12-03', '2024-12-06', 'Credit Card', '390.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `role`) VALUES
(1, 'admin@example.com', 'admin', 'admin123', 'admin'),
(2, 'customer@example.com', 'customer', 'customer123', 'customer'),
(3, 'a', 'a', 'a', 'admin'),
(4, 'ab', 'ab', 'ab', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `price_per_day` decimal(10,2) NOT NULL,
  `availability` varchar(50) DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `model`, `year`, `color`, `price_per_day`, `availability`) VALUES
(1, 'Toyota Corolla', 2018, 'White', '50.00', 'Yes'),
(2, 'Honda Civic', 2020, 'Black', '65.00', 'Yes'),
(3, 'Ford Focus', 2017, 'Blue', '45.00', 'Yes'),
(4, 'Hyundai Elantra', 2019, 'Silver', '55.00', 'No'),
(5, 'Chevrolet Malibu', 2018, 'Red', '60.00', 'Yes'),
(6, 'Nissan Altima', 2021, 'Gray', '70.00', 'Yes'),
(7, 'BMW 3 Series', 2020, 'Black', '120.00', 'No'),
(8, 'Mercedes-Benz C-Class', 2019, 'White', '150.00', 'Yes'),
(9, 'Kia Sportage', 2021, 'Blue', '80.00', 'Yes'),
(10, 'Audi A4', 2022, 'Gray', '130.00', 'Yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
