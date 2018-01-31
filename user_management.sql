-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2018 at 04:49 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` int(10) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `userid`, `city`, `pincode`, `state`, `address`) VALUES
(1, 1, 'Bangalore', 560089, 'Karnataka', 'marathali'),
(2, 2, 'Hyderabad', 7676767, 'Andhrapradesh', 'nelore'),
(3, 0, '560037', 0, 'bangalore', 'marathali'),
(4, 0, '345345', 0, 'dkdkid', 'wvwfv'),
(5, 0, '3453', 0, 'erverv', 'eferf'),
(6, 0, 'brb', 0, 'rbrbr', 'gb'),
(7, 0, '3453', 0, 'Bhubaneswar', ''),
(8, 0, 'brb', 0, 'dkdkid', 'svre'),
(9, 14, '560037', 0, 'bangalore', 'ddeerr'),
(10, 15, '751001', 0, 'erverv', 's sdf s'),
(11, 16, 'dkdkid', 560037, 'efvreve', 'sfvdfsvds'),
(12, 17, 'dkdkid', 3453, 'dgdbdb', 'dfbdfb'),
(13, 18, 'aaaaa', 0, 'aaaa', 'aaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(10) NOT NULL,
  `categoryname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(1, 'Electronics'),
(2, 'Vehicle'),
(3, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `comment`, `senddate`) VALUES
(1, 'Deepak Kumar Mohapatra', 'deepakmohapatra12@gmail.com', 'hi deepak', '2017-06-30 10:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `myphoto`
--

CREATE TABLE `myphoto` (
  `id` int(10) NOT NULL,
  `photoname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `myphoto`
--

INSERT INTO `myphoto` (`id`, `photoname`, `userid`) VALUES
(1, '6b5a3c45f8dabd09824a69289b2032b8Penguins.jpg', 1),
(2, '5ba535920b039aa6db0bd8656e9f2f35Lighthouse.jpg', 1),
(3, '893a2d4f1ab913ebb2b539accac42a7fPenguins.jpg', 1),
(4, 'd3d4fd48d065357e21327e7a6083884dTulips.jpg', 1),
(5, '6f3c9c90e116d7b22930816a016dfc94', 1),
(6, '1a9950a39c6debfd5dda199bfc4b14c8Penguins.jpg', 1),
(7, 'ffa2747b3b6fe163526101e12adca158Tulips.jpg', 1),
(8, '5438bf78975ea038c9433213ccce856811694968_755899607873094_631248245882075047_n.jpg', 6),
(9, 'cfc3d6395fec9b9f2ee85e484d39329b3-d-388a (1).jpg', 1),
(10, 'd5830c770ccf0a66708fa21c827b7895Koala.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(10) NOT NULL,
  `productname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productprice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `productprice`, `image`, `categoryid`) VALUES
(1, 'Samsung', '5003', '', 1),
(2, 'Apple ', '3049', '', 1),
(3, 'yamaha R15', '709985', '', 2),
(4, 'bajaj', '235666', '', 2),
(5, 'fair and lovely', '34555', '', 3),
(8, 'Vicco Bajradanti', '34', '', 3),
(9, 'Splender', '34555', '', 2),
(10, 'jhadu', '343', 'ba271f48af631a7a1af4eb78f2fcd624a.jpg', 3),
(11, 'AAAAAAAAAAAAAAA', '232323', 'b5128bd7100caf23816043d504d6ba6db.jpg', 2),
(12, 'asasas', 'sasasa', '6950a4bacb1a9a2510c0f015e6c17001c.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Deba', 'deba@gmail.com', '0000'),
(2, 'user2', 'user2@abc.com', 'user2'),
(3, 'alok', 'alok@gmail.com', 'hfhfhf'),
(16, 'Deepak', 'deepakmohapatra12@gmail.com', 'nalini123'),
(17, 'Deepak Kummm', 'deepakmohapatra12@gmail.com', '1234'),
(18, 'nalini', 'nalini@gmail.com', '0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myphoto`
--
ALTER TABLE `myphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myphoto`
--
ALTER TABLE `myphoto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `product` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
