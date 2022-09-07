-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 05:20 PM
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
-- Database: `db_penjualan_xi_rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` varchar(5) NOT NULL,
  `CompanyName` varchar(30) NOT NULL,
  `ContactName` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` varchar(8) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CompanyName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str.57', 'Berlin', '12209', 'Germany', '030 - 0074321'),
('EASTC', 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'Wx3FW', 'UK', '(171) 555-0297'),
('ISLAT', 'Island Trading', 'Hellen Bennet', '75 Crowther Way', 'Cowes', 'PO31 7PJ', 'UK', '(198) 555-8888'),
('MAISD', 'Maison Dewey', 'Chatrine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium', '(02) 2012467'),
('SEVES', 'Seves Seas Import', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX154', 'UK', '(171) 555-1717');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmpId` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `HomePhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmpId`, `LastName`, `FirstName`, `Title`, `Address`, `City`, `Country`, `HomePhone`) VALUES
(1, 'Davolio', 'Nancy', 'Sales Rep.', '507-20th Ave. E. Apt. 2A', 'Seattle', 'USA', '(206) 555-9857'),
(2, 'Fuller', 'Andrew', 'Vice President', '908 W. Capital Way', 'Tacoma', 'USA', '(206) 555-9482'),
(3, 'Leverling', 'Janet', 'Sales Rep.', '722 Moss Bay Blvd', 'Kirkland', 'USA', '(206) 555-3412'),
(4, 'Peacock', 'Margaret', 'Sales Rep.', '4110 Old Redmond', 'Redmond', 'USA', '(206) 555-8122'),
(5, 'Buchanan', 'Steven', 'Sales Manager', '14 Garrett Hill', 'London', 'UK', '(71) 555-4848'),
(6, 'Suyama', 'Michael', 'Sales Rep.', 'Coventry House Miner Rd.', 'London', 'UK', '(71) 555-7773'),
(7, 'King', 'Robert', 'Sales Rep.', '12 Winchester Way', 'London', 'UK', '(71) 555-5598'),
(8, 'Callahan', 'Laura', 'Sales Coord.', '4726-11th Ave.N.E.', 'Seattle', 'USA', '(206) 555-1189'),
(9, 'Dodsworth', 'Anne', 'Sales Rep.', '7 Houndstooth Rd.', 'London', 'UK', '(71) 555-4444');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderID` varchar(5) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `UnitPrice` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
('10256', 53, 26.2, 15, 0),
('10256', 77, 10.4, 12, 0),
('10257', 27, 35.1, 25, 0),
('10257', 39, 14.4, 6, 0),
('10257', 77, 10.4, 15, 0),
('10258', 2, 15.2, 50, 0.2),
('10258', 5, 17, 65, 0.2),
('10258', 32, 25.6, 6, 0.2),
('10259', 21, 8, 10, 0),
('10259', 37, 20.8, 1, 0),
('10260', 41, 7.7, 16, 0.25),
('10260', 57, 15.6, 50, 0),
('10260', 62, 39.4, 15, 0.25),
('10260', 70, 12, 21, 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(5) NOT NULL,
  `CustomerID` varchar(5) NOT NULL,
  `EmpID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `RequiredDate` date NOT NULL,
  `ShippedDate` date NOT NULL,
  `ShipVia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmpID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`) VALUES
('10256', 'EASTC', 3, '1994-08-15', '1994-09-12', '1994-08-17', 2),
('10257', 'SEVES', 4, '1994-08-16', '1994-09-13', '1994-08-22', 3),
('10258', 'MAISD', 1, '1994-08-16', '1994-09-14', '1994-08-23', 1),
('10259', 'ALFKI', 4, '1994-08-18', '1994-09-15', '1994-08-25', 3),
('10260', 'ISLAT', 4, '1994-08-19', '1994-09-16', '1994-08-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `QuantityPerUnit` varchar(50) NOT NULL,
  `UnitPrice` float NOT NULL,
  `UnitsInStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`) VALUES
(2, 'Chang', 1, '24-12 oz bottles', 19, 17),
(5, 'Chef Antons Gumbo Mix', 2, '36 Boxes', 21.35, 50),
(21, 'Sir Rodneys Scones', 8, '24 pkgs.x 4 pieces', 10, 17),
(27, 'Schoggi Schokolade', 11, '100-100 g pieces', 43.9, 49),
(32, 'Mascarpone Fabioli', 14, '24-200 g pkgs.', 32, 9),
(37, 'Gravad lax', 17, '12-500 g pkgs', 26, 11),
(39, 'Chartreuse verte', 18, '750 cc per bottle', 18, 69),
(41, 'Jacks Clam Chowder', 19, '12-12 oz cans', 9.65, 85),
(53, 'Perth Pasties', 24, '48 pieces', 32.8, 15),
(57, 'Ravioli Angelo', 26, '24-250 g pkgs.', 19.5, 36),
(62, 'Tarte Au Sucre', 29, '48 pies', 49.3, 17),
(65, 'Hot Pepper Sauce', 2, '32-8 oz bottles', 21.05, 76),
(70, 'Outback Lager', 7, '24-355 ml bottles', 15, 15),
(74, 'Longlife Tofu', 4, '5 kg pkg.', 10, 4),
(77, 'Original Frankfurter', 12, '12 boxes', 13, 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmpId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmpID` (`EmpID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmpID`) REFERENCES `employees` (`EmpId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
