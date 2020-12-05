-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 12:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwpproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(78, 'One plus Nord', '7500', 'nord.jpg', 1, '7500', 'p1001');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'shiva', 'shiva.rajan2019@vitstudent.ac.in', '9999050279', 'adsdfdsfsdjhfkzjdjkszgkdsfkjsdbkjfsdk', 'cod', 'MI Note 5 Pro(1)', '15000'),
(13, 'DD', 'lakshmy_rjn@yahoo.com', '8989898', 'd', 'cod', 'One Plus 6(1), One plus 7 pro(1), Nokia(1)', '111000'),
(14, 'fdgdg', 'DSD@GMAIL.COM', '9999050279', 'rtrt', 'cod', 'iphone 12(5), One Plus 6(4)', '640000'),
(15, 'dsd', 'shiva.rajan2019@vitstudent.ac.in', '9999050279', 'wrt', 'cod', 'One plus Nord(1), Iphone 11(1)', '10000'),
(16, 'shiva', 'lakshmy_rjn@yahoo.com', '8989898', 'dsd', 'cod', 'Iphone 11(1)', '2500'),
(17, 'shiva', 'lakshmy_rjn@yahoo.com', '8989898', 'rrr', 'cod', 'Samsung Flip(1)', '100000'),
(18, 'shiva', 'lakshmy_rjn@yahoo.com', '8989898', 'dsd', 'cod', '', '0'),
(19, 'shiva', 'lakshmy_rjn@yahoo.com', '8989898', 'sfgg', 'cod', '', '0'),
(20, 'shiva', 'shiva.rajan2019@vitstudent.ac.in', '9999050279', 'fsdfgg', 'cod', 'Iphone 11(4)', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Apple iPhone X', '90000', 1, 'iphone 10.jpg', 'p1000'),
(2, 'One plus Nord', '7500', 1, 'nord.jpg', 'p1001'),
(3, 'Iphone 11', '2500', 1, 'iphone1.jpg', 'p1002'),
(4, 'Oppo', '15000', 1, 'oppo.jpg', 'p1003'),
(5, 'Oppo reno', '25000', 1, 'oppo1.jpg', 'p1004'),
(6, 'One Plus 6', '35000', 1, 'one1.jpg', 'p1005'),
(7, 'Vivo x27', '15000', 1, 'vivox27.jpg', 'p1006'),
(9, 'Samsung Note 10', '25000', 1, 's2.jpg', 'p1007'),
(12, 'Realme', '10000', 1, 'realme.jpg', 'p1009'),
(13, 'Vivo x6', '20000', 1, 'vivo1.jpg', 'p1010'),
(14, 'Lg V30', '50000', 1, 'lg.jpg', 'p1011'),
(15, 'One plus 7 pro', '56000', 1, 'one.jpg', ''),
(17, 'iphone 12', '100000', 1, 'i.jpg', 'p1012'),
(18, 'Samsung A50', '10000', 1, 'a50.jpg', 'p1013'),
(19, 'Samsung Flip', '100000', 1, 'flip.jpg', 'p1014'),
(20, 'Nokia', '20000', 1, 'nokia.jpg', 'p1015');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `name`, `password`) VALUES
(1, 'shiva', 'simba'),
(3, 'shiva16', 'sima05'),
(5, 'admin', 'admin'),
(6, 'srh', '123'),
(7, 'hello', 'hi'),
(8, 'hi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'vivo v6', 'vivo1.jpg', 100.00),
(2, 'SAMSUNG NOTE 9', 's2.jpg', 299.00),
(3, 'One Plus Nord', 'nord.jpg', 300.00),
(4, 'iphone 11', 'iphone1.jpg', 200.00),
(5, 'iphone 10', 'iphone 10.jpg', 150.00),
(6, 'Oppo K3', 'oppo.jpg', 250.00),
(7, 'Realme V5', 'realme.jpg', 269.00),
(8, 'Oppo Reno 2', 'oppo1.jpg', 399.00),
(9, 'One plus 7Pro', 'one1.jpg', 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `userinfodata`
--

CREATE TABLE `userinfodata` (
  `id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfodata`
--

INSERT INTO `userinfodata` (`id`, `user`, `email`, `mobile`, `comment`) VALUES
(5, 'shiva', 'shiva@gmail.com', '9827465894', '                hello'),
(6, 'archon', 'ald.@com', '938949', '               sff '),
(7, 'hee', 'hdd@gmial.com', '45', 'eer      '),
(8, 'sdsdhs', 'ajk@gmail.com', '7960556', '              hello  '),
(9, 'shiva16', 'fsf@gmail.com', '34434', '        fdgd        '),
(10, 'weeret', 'asas@gmail.com', '989899899', '               fdgdgd ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfodata`
--
ALTER TABLE `userinfodata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userinfodata`
--
ALTER TABLE `userinfodata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
