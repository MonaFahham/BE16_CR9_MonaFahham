-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 05:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be16_cr9_famazon_monafahham`
--
CREATE DATABASE IF NOT EXISTS `be16_cr9_famazon_monafahham` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `be16_cr9_famazon_monafahham`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `username`, `password`) VALUES
(21, 'ayitzhakof0', '3HvyEfP94xt'),
(22, 'jclemente1', '3g8hfuA'),
(23, 'cohenery2', '3Ba1Bo6CkcQb'),
(24, 'skuzma3', '8dmG7a6Fr'),
(25, 'hcolenutt4', 'ksQ0Kl3IdZ'),
(26, 'fkuhnhardt5', 'dHGqac'),
(27, 'cduchant6', 'n6w4fxnUNxV'),
(28, 'fleyes7', 'gBNgtrhYpyu8'),
(29, 'kgarmon8', 'LgzTJV'),
(30, 'dcopping9', 'YFnjIY');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `street_name` varchar(30) NOT NULL,
  `house_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `country`, `city`, `postal_code`, `street_name`, `house_number`) VALUES
(26, 'Brazil', 'Lapa', 83750, 'Mcguire', 1),
(27, 'Poland', 'Górki', 83751, 'Mockingbird', 2),
(28, 'Russia', 'Kaduy', 162510, '4th', 3),
(29, 'Russia', 'Kamenka', 692608, 'Moland', 4),
(30, 'Canada', 'Rimouski', 692664, 'Lyons', 5),
(31, 'Vietnam', 'An Châu', 6985408, 'South', 6),
(32, 'United Kingdom', 'Upton', 69266412, 'Sullivan', 7),
(33, 'Poland', 'Miłosław', 182510, 'Forster', 8),
(34, 'China', 'Muli', 692608, 'Lakewood Gardens', 9),
(35, 'Indonesia', 'Nglorogan', 162517, 'Village', 10);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `department` varchar(50) NOT NULL,
  `fk_address_id` int(11) DEFAULT NULL,
  `fk_employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_address`, `department`, `fk_address_id`, `fk_employee_id`) VALUES
(26, 'Meejo', '2 Summerview Road', 'Baby Clothes', 26, 32),
(27, 'Livetube', '08 Service Drive', 'Clothing', 27, 33),
(28, 'Centizu', '653 Prairieview Street', 'Computers', 28, 34),
(29, 'Voonder', '98091 Oriole Street', 'Electronic Device', 29, 35),
(30, 'Oyondu', '28401 Shopko Lane', 'Computers', 30, 38),
(31, 'Skynoodle', '048 Loeprich Park', 'Book', 31, 39),
(32, 'Yambee', '53 Lien Avenue', 'Home Appliance', 32, 40),
(33, 'Meembee', '47055 Eastwood Point', 'Beauty', 33, 41);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `bank_account` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `fk_address_id` int(11) DEFAULT NULL,
  `fk_account_id` int(11) DEFAULT NULL,
  `fk_invoice_id` int(11) DEFAULT NULL,
  `fk_payment_form_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `phone_number`, `bank_account`, `email`, `gender`, `date_of_birth`, `fk_address_id`, `fk_account_id`, `fk_invoice_id`, `fk_payment_form_id`) VALUES
(16, 'Mollee', 'Sawbridge', 911, 'PL05 6520 3610 2280 3523 2153 ', 'msawbridge0@storify.com', 'F', '2022-04-13', 26, 21, 3, 11),
(17, 'Eugenio', 'd\'Escoffier', 401, 'AZ14 REFW 3JFU JFLW UXNO YFTQ ', 'edescoffier1@wix.com', 'M', '2022-07-05', 27, 22, 4, 12),
(18, 'Briggs', 'Graveney', 619, 'FR52 3531 1747 42NO NFWI WUUM ', 'bgraveney2@shinystat.com', 'M', '2022-07-05', 28, 23, 5, 13),
(19, 'Henderson', 'Muldrew', 607, 'IL65 5585 9534 4322 5494 336', 'hmuldrew3@newyorker.com', 'M', '2022-06-16', 29, 24, 6, 14),
(20, 'Creight', 'Pessel', 706, 'FR91 6184 8443 84EV SRRQ O9BZ ', 'cpessel4@networksolutions.com', 'M', '2022-05-18', 30, 25, 7, 15),
(21, 'Quincy', 'Enticott', 582, 'CY80 0543 4392 E7EZ TX9K TLAW ', 'qenticott5@illinois.edu', 'M', '2022-07-01', 29, 26, 3, 15),
(22, 'Elnora', 'Levesley', 344, 'BH56 DBLS YCBU IZB2 5UZ5 K8', 'elevesley6@washington.edu', 'F', '2022-07-20', 31, 27, 4, 14),
(23, 'Curry', 'Cattroll', 379, 'GI88 VZOI B2JF XAS7 G83U GRX', 'ccattroll7@accuweather.com', 'M', '2022-03-16', 32, 28, 5, 13),
(24, 'Noel', 'Popple', 733, 'FR61 5561 5904 63TV 3WQA SMSW ', 'npopple8@joomla.org', 'F', '2022-07-29', 33, 29, 3, 14),
(25, 'Illa', 'Howitt', 348, 'KW51 YVIP E9GA ERDM JXSQ 2Z2Y ', 'ihowitt9@example.com', 'F', '2021-08-11', 34, 30, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

CREATE TABLE `customer_product` (
  `fk_customer_id` int(11) DEFAULT NULL,
  `fk_product_id` int(11) DEFAULT NULL,
  `customer_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_product`
--

INSERT INTO `customer_product` (`fk_customer_id`, `fk_product_id`, `customer_product_id`) VALUES
(20, 27, 1),
(22, 28, 2),
(25, 29, 3),
(18, 30, 4),
(21, 31, 5);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `fk_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `phone_number`, `email`, `gender`, `date_of_birth`, `fk_address_id`) VALUES
(32, 'Mandel', 'Hurcombe', 2147483647, 'asghari@gmail.com', 'M', '2022-07-01', 26),
(33, 'Erik', 'Lassells', 2147483646, 'eli_mnd@amazonaws.com', 'M', '2022-07-05', 27),
(34, 'Terri', 'Duddell', 2147483645, 'sirlakdashti@yahoo.com', 'F', '2022-03-07', 28),
(35, 'Isabelita', 'Ebourne', 2147483643, 'misaghmin@yahoo.com', 'F', '2016-07-06', 29),
(38, 'Mandel', 'Hurcombe', 2147483641, 'asghar@gmail.com', 'M', '2014-07-22', 26),
(39, 'Erik', 'Lassells', 2147483640, 'mamad@amazonaws.com', 'M', '2014-07-21', 27),
(40, 'Terri', 'Duddell', 2147483630, 'soghra@yahoo.com', 'F', '2012-07-11', 28),
(41, 'Isabelita', 'Ebourne', 2147483620, 'maryam@yahoo.com', 'F', '2012-07-12', 29);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `fk_product_id` int(11) DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `fk_product_id`, `fk_customer_id`) VALUES
(3, 27, 18),
(4, 27, 20),
(5, 28, 23),
(6, 29, 22),
(7, 30, 16);

-- --------------------------------------------------------

--
-- Table structure for table `payment_form`
--

CREATE TABLE `payment_form` (
  `payment_form_id` int(11) NOT NULL,
  `creditcard` int(11) NOT NULL,
  `paypal` int(11) NOT NULL,
  `fk_invoice_id` int(11) DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_form`
--

INSERT INTO `payment_form` (`payment_form_id`, `creditcard`, `paypal`, `fk_invoice_id`, `fk_customer_id`) VALUES
(11, 545616, 545617, 3, 16),
(12, 41114, 9607, 4, 17),
(13, 789456, 5033184, 5, 19),
(14, 789455, 5033184, 6, 20),
(15, 789454, 2147483647, 7, 21);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `warranty` enum('Yes','No') NOT NULL,
  `product_order` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `availability` enum('Yes','No') NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `fk_company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `warranty`, `product_order`, `price`, `quantity`, `availability`, `description`, `fk_company_id`) VALUES
(27, 'JBL Flip 5 Bluetooth Box', 'Yes', 'e6ca4d01', 105, 100, 'Yes', 'A great JBL Speaker', 26),
(28, 'JLab Epic Air Sport ANC Wireless Headphones', 'Yes', 'e6ca4d11', 104, 200, 'Yes', 'A great JLab Epic Air Sport ANC Wireless Headphones', 27),
(29, 'Amazon Basics Household tool set 51 pieces', 'No', 'e6ca4d12', 51, 10, 'No', 'A great JLab Epic Air Sport ANC Wireless Headphones', 28),
(30, 'Oliver Womens analogue quartz watch with stainless steel strap', 'No', 'e6ca4d13', 33, 55, 'Yes', 'A great sOliver Womens analogue quartz watch with stainless steel strap', 29),
(31, 'Echo 5 2nd generation, smart display Alexa 2 MP camera Charcoal', 'Yes', '634541', 55, 80, 'Yes', 'A great Echo Show 5 2nd generation (2021 release), smart display with Alexa and 2 MP camera Charcoal', 30);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_shipping_company`
--

CREATE TABLE `product_to_shipping_company` (
  `product_to_shipping_company_id` int(11) NOT NULL,
  `fk_product_id` int(11) DEFAULT NULL,
  `fk_shipping_company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_to_shipping_company`
--

INSERT INTO `product_to_shipping_company` (`product_to_shipping_company_id`, `fk_product_id`, `fk_shipping_company_id`) VALUES
(2, 27, 11),
(3, 28, 12),
(4, 29, 13),
(5, 30, 14),
(6, 31, 15);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_company`
--

CREATE TABLE `shipping_company` (
  `shipping_company_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `fk_address_id` int(11) DEFAULT NULL,
  `fk_product_id` int(11) DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_company`
--

INSERT INTO `shipping_company` (`shipping_company_id`, `name`, `department`, `fk_address_id`, `fk_product_id`, `fk_customer_id`) VALUES
(11, 'Colony Bankcorp, Inc.', 'Support', 26, 27, 16),
(12, 'PowerShares S&P SmallCap Materials Portfolio', 'Marketing', 27, 28, 17),
(13, 'WisdomTree U.S. SmallCap Quality Dividend Growth F', 'Support', 28, 29, 18),
(14, 'Proto Labs, Inc.', 'Support', 29, 30, 19),
(15, 'Luxottica Group, S.p.A.', 'Support', 30, 31, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `fk_address_id` (`fk_address_id`),
  ADD KEY `fk_employee_id` (`fk_employee_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_address_id` (`fk_address_id`),
  ADD KEY `fk_account_id` (`fk_account_id`),
  ADD KEY `fk_invoice_id` (`fk_invoice_id`),
  ADD KEY `fk_payment_form_id` (`fk_payment_form_id`);

--
-- Indexes for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_product_id`),
  ADD KEY `fk_product_id` (`fk_product_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `employee_ibfk_1` (`fk_address_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `fk_product_id` (`fk_product_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `payment_form`
--
ALTER TABLE `payment_form`
  ADD PRIMARY KEY (`payment_form_id`),
  ADD KEY `fk_invoice_id` (`fk_invoice_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_company_id` (`fk_company_id`);

--
-- Indexes for table `product_to_shipping_company`
--
ALTER TABLE `product_to_shipping_company`
  ADD PRIMARY KEY (`product_to_shipping_company_id`),
  ADD KEY `fk_product_id` (`fk_product_id`),
  ADD KEY `fk_shipping_company_id` (`fk_shipping_company_id`);

--
-- Indexes for table `shipping_company`
--
ALTER TABLE `shipping_company`
  ADD PRIMARY KEY (`shipping_company_id`),
  ADD KEY `fk_address_id` (`fk_address_id`),
  ADD KEY `fk_product_id` (`fk_product_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customer_product`
--
ALTER TABLE `customer_product`
  MODIFY `customer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_form`
--
ALTER TABLE `payment_form`
  MODIFY `payment_form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_to_shipping_company`
--
ALTER TABLE `product_to_shipping_company`
  MODIFY `product_to_shipping_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping_company`
--
ALTER TABLE `shipping_company`
  MODIFY `shipping_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`fk_address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `company_ibfk_2` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_account_id`) REFERENCES `account` (`account_id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`fk_invoice_id`) REFERENCES `invoice` (`invoice_id`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`fk_payment_form_id`) REFERENCES `payment_form` (`payment_form_id`);

--
-- Constraints for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD CONSTRAINT `customer_product_ibfk_1` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `customer_product_ibfk_3` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `customer_product_ibfk_4` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`fk_address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `payment_form`
--
ALTER TABLE `payment_form`
  ADD CONSTRAINT `payment_form_ibfk_1` FOREIGN KEY (`fk_invoice_id`) REFERENCES `invoice` (`invoice_id`),
  ADD CONSTRAINT `payment_form_ibfk_2` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`fk_company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `product_to_shipping_company`
--
ALTER TABLE `product_to_shipping_company`
  ADD CONSTRAINT `product_to_shipping_company_ibfk_1` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `product_to_shipping_company_ibfk_2` FOREIGN KEY (`fk_shipping_company_id`) REFERENCES `shipping_company` (`shipping_company_id`);

--
-- Constraints for table `shipping_company`
--
ALTER TABLE `shipping_company`
  ADD CONSTRAINT `shipping_company_ibfk_1` FOREIGN KEY (`fk_address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `shipping_company_ibfk_2` FOREIGN KEY (`fk_product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `shipping_company_ibfk_3` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
