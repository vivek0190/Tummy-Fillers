-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 08:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tummy-fillers`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('shwet panchal', 'shwet@gmail.com', '9912546325', 'Nice', 'nice food item....'),
('Ice-Cream', 'thakkar.darshan1507@gmail.com', '4525754544', 'Nice', 'ascedczxzd');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Savan', 'Savan Thakkar', 'savan@gmail.com', '5495865865', 'syuuyavcavyvyvsa', 'ce34803c6f5724b8bdd30884af60c957'),
('Shwet', 'Shwet Panchal', 'thakkar.darshan1507@gmail.com', '1254658754', 'cxbzjbasjbbc', 'ce34803c6f5724b8bdd30884af60c957');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `D_ID` int(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `R_Id` int(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`D_ID`, `username`, `password`, `mobile_no`, `R_Id`, `status`, `fullname`, `email`) VALUES
(1, 'Shwet', 'ce34803c6f5724b8bdd30884af60c957', '1542563624', 12, 'AVAILABLE', 'Shwet Panchal', 'dominnose@gmail.com'),
(22, 'savan', 'ce34803c6f5724b8bdd30884af60c957', '8264119367', 12, 'DISABLE', 'Savan Thakkar', 'savan@gmail.com'),
(23, 'Harsh', 'ce34803c6f5724b8bdd30884af60c957', '6111103115', 12, 'DISABLE', 'Harsh Khokahar', 'harshkhokhar@gmail.com'),
(24, 'Darshan', 'ce34803c6f5724b8bdd30884af60c957', '5486528435', 12, 'DISABLE', 'Darshan Thakkar', 'darshanthakkar@gmail.com'),
(25, 'Rutwik', 'ce34803c6f5724b8bdd30884af60c957', '5498562564', 12, 'DISABLE', 'Rutwik Gowswami', 'r.@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(96, 'Dabeli', 20, 'Dabeli is the best one...!', 12, 'images/dabeli.jpg', 'DISABLE'),
(97, 'Choclate-Cup', 70, 'Ice-cream is the best....!', 12, 'images/Ice-cream.jpg', 'DISABLE'),
(99, 'London', 180, 'Pizza,', 12, 'images/food/pizza.avif', 'DISABLE'),
(100, 'McDonald\'s', 0, '200', 12, 'images/food/burger.avif', 'DISABLE'),
(101, 'Keventers', 200, 'Beverages, Shake, Ice Cream, Desserts', 12, 'images/food/ice-cream.avif', 'ENABLE'),
(102, 'Das Khaman', 100, 'Gujarati, Street Food', 12, 'images/food/khaman.avif', 'ENABLE'),
(104, 'Burger', 200, 'Thali is the best...!', 12, 'images/food/burger.avif', 'ENABLE'),
(105, 'Parotha', 100, 'North Indian', 12, 'images/food/parotha.avif', 'DISABLE'),
(106, 'Mahalaxmi Bhaji Pav-Manekchowk', 150, 'Street Food', 12, 'images/food/Bhaji_pav.avif', 'ENABLE'),
(107, 'The Shake Maker', 150, 'Shake, Beverages, Coffee', 12, 'images/food/shake.avif', 'ENABLE'),
(108, 'Hocco Eatery', 250, 'North Indian, Pizza, Sandwich, Fast Food, Street Food, Desserts, Beverages', 12, 'images/food/chole.avif', 'ENABLE'),
(109, 'Karnavati Dabeli', 50, 'Street Food, Fast Food', 12, 'images/food/dabeli.avif', 'ENABLE'),
(110, 'Subway', 250, 'Healthy Food, Fast Food', 12, 'images/food/subway.avif', 'ENABLE'),
(111, 'Farki', 100, 'Beverages, Ice Cream, Desserts', 12, 'images/food/farki.avif', 'ENABLE'),
(112, 'Live Cake Company', 100, 'Bakery', 12, 'images/food/cake.avif', 'ENABLE'),
(113, 'Pulav', 100, 'Pulav is best item.....', 12, 'images/food/pulav.avif', 'ENABLE'),
(159, 'pizza', 78, 'jj', 12, 'images/shubham.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Savan', 'savan thakkar', 'thakar.darshan1507@gmail.com', '9510533693', 'nikol.narod road', 'ce34803c6f5724b8bdd30884af60c957'),
('Shwet', 'Shwet Panchal', 'thakkar.darshan1507@gmail.com', '123456789', 'cxbzjbasjbbc', 'ce34803c6f5724b8bdd30884af60c957');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) DEFAULT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `status` varchar(20) DEFAULT 'ORDERED',
  `d_id` int(30) DEFAULT NULL,
  `deliver_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `order_time`, `username`, `R_ID`, `status`, `d_id`, `deliver_time`) VALUES
(1819, 104, 'Burger', 200, 1, '2023-05-06', '07:22:55', 'Shwet', 12, 'DELIVERED', 1, '15:37:17'),
(1856, NULL, '', 0, 0, '2023-05-16', '04:16:53', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1857, NULL, '', 0, 0, '2023-05-16', '10:32:59', 'Shwet', 12, 'DELIVERED', 1, '15:36:22'),
(1858, NULL, '', 0, 0, '2023-05-16', '13:39:22', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1859, NULL, '', 0, 0, '2023-05-16', '13:50:58', 'Shwet', 12, 'ORDERED', 24, '00:00:00'),
(1860, NULL, '', 0, 0, '2023-05-16', '14:53:20', 'Shwet', 12, 'ORDERED', 23, '00:00:00'),
(1861, NULL, '', 0, 0, '2023-05-16', '15:45:45', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1862, NULL, '', 0, 0, '2023-05-16', '15:47:07', 'Shwet', 12, 'DELIVERED', 1, '16:55:55'),
(1864, NULL, '', 0, 0, '2023-05-16', '18:32:01', 'Shwet', 12, 'DELIVERED', 1, '17:45:33'),
(1865, NULL, '', 0, 0, '2023-05-17', '18:36:21', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1866, NULL, '', 0, 0, '2023-05-17', '18:37:35', 'Savan', 12, 'ORDERED', NULL, '00:00:00'),
(1867, NULL, '', 0, 0, '2023-05-18', '07:15:22', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1868, NULL, '', 0, 0, '2023-05-18', '14:12:27', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1869, NULL, '', 0, 0, '2023-05-18', '22:46:10', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1870, NULL, '', 0, 0, '2023-05-19', '17:43:18', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1871, NULL, '', 0, 0, '2023-10-11', '18:50:55', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1872, NULL, '', 0, 0, '2023-10-11', '20:56:36', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1873, NULL, '', 0, 0, '2023-10-12', '08:46:46', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1874, NULL, '', 0, 0, '2023-10-12', '17:49:53', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1875, NULL, '', 0, 0, '2023-10-13', '10:18:50', 'Shwet', 12, 'ORDERED', NULL, '00:00:00'),
(1876, NULL, '', 0, 0, '2023-10-13', '10:42:18', 'Shwet', 12, 'DELIVERED', 1, '10:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `orders_product_details`
--

CREATE TABLE `orders_product_details` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `status` varchar(20) DEFAULT 'ORDERED',
  `d_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_product_details`
--

INSERT INTO `orders_product_details` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `order_time`, `username`, `R_ID`, `status`, `d_id`) VALUES
(1856, 104, 'Burger', 200, 1, '2023-05-16', '04:16:53', 'Shwet', 12, 'ORDERED', NULL),
(1856, 104, 'Burger', 200, 11, '2023-05-16', '04:16:53', 'Shwet', 12, 'ORDERED', NULL),
(1856, 104, 'Burger', 200, 11, '2023-05-16', '04:16:53', 'Shwet', 12, 'ORDERED', NULL),
(1857, 104, 'Burger', 200, 1, '2023-05-16', '10:32:59', 'Shwet', 12, 'ORDERED', NULL),
(1857, 104, 'Burger', 200, 3, '2023-05-16', '10:32:59', 'Shwet', 12, 'ORDERED', NULL),
(1858, 104, 'Burger', 200, 1, '2023-05-16', '13:39:22', 'Shwet', 12, 'ORDERED', NULL),
(1858, 104, 'Burger', 200, 1, '2023-05-16', '13:39:22', 'Shwet', 12, 'ORDERED', NULL),
(1859, 104, 'Burger', 200, 1, '2023-05-16', '13:50:58', 'Shwet', 12, 'ORDERED', NULL),
(1860, 104, 'Burger', 200, 6, '2023-05-16', '14:53:20', 'Shwet', 12, 'ORDERED', NULL),
(1860, 104, 'Burger', 200, 6, '2023-05-16', '14:53:20', 'Shwet', 12, 'ORDERED', NULL),
(1861, 104, 'Burger', 200, 1, '2023-05-16', '15:45:45', 'Shwet', 12, 'ORDERED', NULL),
(1862, 104, 'Burger', 200, 1, '2023-05-16', '15:47:07', 'Shwet', 12, 'ORDERED', NULL),
(1864, 104, 'Burger', 200, 4, '2023-05-16', '18:32:01', 'Shwet', 12, 'ORDERED', NULL),
(1864, 102, 'Das Khaman', 100, 3, '2023-05-16', '18:32:01', 'Shwet', 12, 'ORDERED', NULL),
(1864, 106, 'Mahalaxmi Bhaji Pav-Manekchowk', 150, 3, '2023-05-16', '18:32:01', 'Shwet', 12, 'ORDERED', NULL),
(1865, 104, 'Burger', 200, 3, '2023-05-17', '18:36:21', 'Shwet', 12, 'ORDERED', NULL),
(1865, 101, 'Keventers', 200, 2, '2023-05-17', '18:36:21', 'Shwet', 12, 'ORDERED', NULL),
(1865, 106, 'Mahalaxmi Bhaji Pav-Manekchowk', 150, 3, '2023-05-17', '18:36:21', 'Shwet', 12, 'ORDERED', NULL),
(1866, 109, 'Karnavati Dabeli', 50, 4, '2023-05-17', '18:37:35', 'Savan', 12, 'ORDERED', NULL),
(1866, 110, 'Subway', 250, 1, '2023-05-17', '18:37:35', 'Savan', 12, 'ORDERED', NULL),
(1866, 108, 'Hocco Eatery', 250, 3, '2023-05-17', '18:37:35', 'Savan', 12, 'ORDERED', NULL),
(1867, 112, 'Live Cake Company', 100, 0, '2023-05-18', '07:15:23', 'Shwet', 12, 'ORDERED', NULL),
(1867, 112, 'Live Cake Company', 100, 0, '2023-05-18', '07:15:23', 'Shwet', 12, 'ORDERED', NULL),
(1867, 104, 'Burger', 200, 2, '2023-05-18', '07:15:23', 'Shwet', 12, 'ORDERED', NULL),
(1868, 112, 'Live Cake Company', 100, 1, '2023-05-18', '14:12:27', 'Shwet', 12, 'ORDERED', NULL),
(1869, 104, 'Burger', 200, 1, '2023-05-18', '22:46:10', 'Shwet', 12, 'ORDERED', NULL),
(1870, 110, 'Subway', 250, 5, '2023-05-19', '17:43:18', 'Shwet', 12, 'ORDERED', NULL),
(1870, 104, 'Burger', 200, 4, '2023-05-19', '17:43:18', 'Shwet', 12, 'ORDERED', NULL),
(1871, 104, 'Burger', 200, 1, '2023-10-11', '18:50:55', 'Shwet', 12, 'ORDERED', NULL),
(1872, 104, 'Burger', 200, 1, '2023-10-11', '20:56:36', 'Shwet', 12, 'ORDERED', NULL),
(1873, 101, 'Keventers', 200, 1, '2023-10-12', '08:46:46', 'Shwet', 12, 'ORDERED', NULL),
(1873, 104, 'Burger', 200, 1, '2023-10-12', '08:46:46', 'Shwet', 12, 'ORDERED', NULL),
(1873, 108, 'Hocco Eatery', 250, 1, '2023-10-12', '08:46:46', 'Shwet', 12, 'ORDERED', NULL),
(1874, 104, 'Burger', 200, 0, '2023-10-12', '17:49:53', 'Shwet', 12, 'ORDERED', NULL),
(1874, 113, 'Pulav', 100, 1, '2023-10-12', '17:49:53', 'Shwet', 12, 'ORDERED', NULL),
(1875, 104, 'Burger', 200, 1, '2023-10-13', '10:18:50', 'Shwet', 12, 'ORDERED', NULL),
(1876, 102, 'Das Khaman', 100, 1, '2023-10-13', '10:42:18', 'Shwet', 12, 'ORDERED', NULL),
(1876, 107, 'The Shake Maker', 150, 1, '2023-10-13', '10:42:18', 'Shwet', 12, 'ORDERED', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(12, 'Pizza Zone', 'pizzazone@gmail.com', '1542563624', 'hvavjassaguasgx', 'Shwet'),
(15, 'Honest', 'honest@gmail.cv', '5465697425', 'asas', 'Shwet'),
(16, 'Octan', 'octan@gmail.cv', '1254658546', 'sas', 'Shwet'),
(17, 'Rani Baa', 'ranibaa@gmail.com', '1585456525', 'cxbzjbasjbbc', 'Shwet'),
(18, 'Day-Night', 'daynight@gmail.com', '5465329516', 'Nikol naroda road.', 'Shwet'),
(19, 'MeriGold', 'merigold@gmail.com', '2565486592', 'Nikol ,Ahmedabad.', 'Shwet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`D_ID`),
  ADD KEY `fk_restaurants` (`R_Id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`) USING BTREE,
  ADD KEY `food_ibfk_1` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD KEY `restaurants_ibfk_1` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `D_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1877;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD CONSTRAINT `fk_restaurants` FOREIGN KEY (`R_Id`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`d_id`) REFERENCES `delivery_boy` (`D_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
