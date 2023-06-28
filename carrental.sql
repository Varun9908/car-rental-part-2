-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 04:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Nissan Altima', 'U883YC', 'assets/img/cars/wagon-r.png', 10, 8, 5000, 2000, 'yes'),
(2, 'Ford Explorer', 'RWRTUHGJ2356', 'assets/img/cars/alto-800.png', 10, 8, 1300, 1500, 'yes'),
(3, 'Tesla Model 3', 'DTDFYGJ5423', 'assets/img/cars/Innova.png', 15, 12, 5000, 3000, 'yes'),
(4, 'Subaru Crosstrek', 'FGJKIHKJ0202163', 'assets/img/cars/figo.png', 12, 10, 2500, 1900, 'no'),
(6, 'Ford Escape', 'GHHUYI13256', 'assets/img/cars/bolero.png', 16, 11, 2000, 1200, 'yes'),
(7, 'Honda Accord', 'PJ16YX8820', 'assets/img/cars/amaze.png', 12, 10, 2500, 2300, 'no'),
(8, 'Hyundai Tucson', 'DFHGK12441', 'assets/img/cars/nexon.png', 12, 10, 2000, 1000, 'yes'),
(9, 'Jeep Wrangler', 'DGGFHG1234', 'assets/img/cars/dzire.png', 15, 12, 2500, 1800, 'no'),
(10, 'Mazda CX-5', 'FHUGKH13253', 'assets/img/cars/Suzuki_Ciaz_2017.png', 15, 11, 2800, 2300, 'yes'),
(11, 'Nissan Rogue', 'GHJGJHOO1243', 'assets/img/cars/Mahindra XUV.png', 18, 13, 2100, 1700, 'no'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Suzuki Ertiga', 'MH02DC1997', 'assets/img/cars/maruti-suzuki-ertiga.jpg', 14, 12, 2800, 2400, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'Brad'),
(2, 'Brad'),
(3, 'Brad'),
(4, 'Brad'),
(10, 'Brad'),
(11, 'Brad'),
(6, 'Jack'),
(7, 'Jack'),
(8, 'Jack'),
(9, 'Jack'),
(12, 'Jack'),
(13, 'Jack');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('Brad', 'Brad Pitt', '345656532', 'brad@gmail.com', 'Florida', 'root'),
('Jack', 'Jack Potter', '345123532', 'jack@gmail.com', 'California', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('John', 'John Snow', '4564646343131', 'john@gmail.com', 'Florida', 'john123'),
('Peter', 'Peter Harvey', '46554653213', 'peter@gmail.com', 'Florida', 'peter123');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'James Hopes', 'DL_YUIOU464', '9547863157', 'California', 'Male', 'Brad', 'yes'),
(2, 'Emma Watson', 'DL_YTUTU4654', '674674646', 'Florida', 'Female', 'Jack', 'no'),
(3, 'Muhammad Yusuf', 'DL_RYTU4655476', '87546234', 'Florida', 'Male', 'Brad', 'no'),
(4, 'Ginnie Washington', 'DL_TYTGUJH4563546', '789776986', 'Florida', 'Female', 'Brad', 'no'),
(5, 'Jenny Livingstone', 'DL_HGJHGJ56464', '546546213', 'Florida', 'Female', 'Jack', 'yes'),
(6, 'Odafa Okelie', 'DL_HFHGJ46546', '454433', 'Washington', 'Male', 'Brad', 'no'),
(7, 'Idriz Silva', 'DL_TUYUJH465652', '74643361', 'New York', 'Male', 'Brad', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681264, 'John', 3, 1, '2023-06-16', '2023-06-16', '2023-06-21', '2023-06-16', 5000, 'days', NULL, 5, 25000, 'R'),
(574681265, 'John', 4, 3, '2023-06-16', '2023-06-17', '2023-06-21', NULL, 12, 'km', NULL, NULL, NULL, 'NR'),
(574681266, 'John', 2, 1, '2023-06-16', '2023-06-16', '2023-06-30', '2023-06-16', 1300, 'days', NULL, 14, 18200, 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681267;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
