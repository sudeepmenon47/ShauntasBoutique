-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2016 at 08:10 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Levis'),
(2, 'Nike'),
(8, 'Sketchers'),
(9, 'Polo'),
(10, 'Jockey'),
(11, 'Puma'),
(12, 'Lee'),
(13, 'GUCCI'),
(14, 'Dolce &amp; Gabbana'),
(15, 'TOMMY HILFIGER'),
(16, 'RbK'),
(17, 'Mochi'),
(18, 'adidas'),
(19, 'NORKO'),
(20, 'Mirage');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `items` text COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `shipped` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `items`, `expire_date`, `paid`, `shipped`) VALUES
(8, '[{"id":"3","size":"N/A","quantity":"1"}]', '2016-12-04 19:13:11', 1, 1),
(9, '[{"id":"3","size":"N/A","quantity":"2"}]', '2016-12-04 19:40:45', 1, 0),
(10, '[{"id":"6","size":"medium","quantity":2},{"id":"22","size":"N/A","quantity":2},{"id":"18","size":"Medium","quantity":1}]', '2016-12-04 19:45:39', 1, 0),
(11, '[{"id":"19","size":"medium","quantity":1},{"id":"6","size":"medium","quantity":1},{"id":"8","size":"medium","quantity":1}]', '2016-12-04 19:52:16', 1, 0),
(12, '[{"id":"17","size":"Size 5","quantity":"1"},{"id":"16","size":"medium","quantity":1},{"id":"1","size":"32","quantity":"2"},{"id":"2","size":"medium","quantity":"2"}]', '2016-12-04 20:00:48', 1, 0),
(13, '[{"id":"21","size":"medium","quantity":"1"}]', '2016-12-04 20:04:51', 1, 0),
(15, '[{"id":"11","size":"medium","quantity":"2"},{"id":"3","size":"N/A","quantity":"2"}]', '2016-12-05 07:35:32', 1, 0),
(21, '[{"id":"3","size":"Small","quantity":"2"}]', '2016-12-06 16:49:43', 1, 0),
(22, '[{"id":"3","size":"Small","quantity":"1"}]', '2016-12-06 16:57:42', 1, 0),
(23, '[{"id":"25","size":"N/A","quantity":"1"}]', '2016-12-06 17:05:35', 1, 0),
(24, '[{"id":"16","size":"medium","quantity":"1"}]', '2016-12-07 06:26:01', 1, 0),
(25, '[{"id":"22","size":"N/A","quantity":"1"}]', '2016-12-07 06:29:13', 1, 0),
(26, '[{"id":"3","size":"Small","quantity":"1"}]', '2016-12-07 08:51:19', 1, 0),
(27, '[{"id":"19","size":"medium","quantity":"1"}]', '2016-12-07 11:23:21', 1, 0),
(28, '[{"id":"6","size":"medium","quantity":"1"},{"id":"2","size":"medium","quantity":1}]', '2016-12-09 11:03:58', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent`) VALUES
(1, 'Men', 0),
(2, 'Women', 0),
(3, 'Boys', 0),
(4, 'Girls', 0),
(5, 'Shirts', 1),
(6, 'Pants', 1),
(7, 'Shoe', 1),
(8, 'Accessories', 1),
(9, 'Shirts', 2),
(10, 'Pants', 2),
(11, 'Shoes', 2),
(12, 'Dresses', 2),
(13, 'Shirts', 3),
(14, 'Pants', 3),
(15, 'Dresses', 4),
(16, 'Shoes', 4),
(17, 'Accessories', 2),
(28, 'Gifts', 0),
(29, 'Home Decor', 28),
(36, 'Pants', 4),
(37, 'Shoes', 3),
(38, 'Kits', 28);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `brand` int(11) NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `sizes` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `list_price`, `brand`, `categories`, `image`, `description`, `featured`, `sizes`, `deleted`) VALUES
(1, 'NIKE Pant', '900.00', '1200.00', 2, '6', '/tutorial/images/products/945cbee48590a1bc2cb748fb2b056e35.png', 'These Pants are Amazing. They are super Comfy and Sexy! Buy Them before it get sold out ...', 1, '28:3:2,32:5:2,36:2:2', 0),
(2, 'Beautiful Shirt', '599.00', '799.00', 2, '5', '/tutorial/images/products/23837fc9668e5e6ec2de1f2f27a4c100.png', 'What a beautiful Shirt.... Blah blahh blah Buy it. We apent too much on our sites and It broke!', 1, 'small:3:2,medium:6:2,large:9:2', 0),
(3, 'Test', '99.00', '199.00', 2, '29', '/tutorial/images/products/0ffe3c247ae0bec02ab06f993a5e5149.png,/tutorial/images/products/53c082f9b5b6a6d896eb290704ed84cd.png,/tutorial/images/products/6596389346e2db0dd2384b51ace37a01.png,/tutorial/images/products/ffc5fd6a2f25f977dfccefa8450e95ea.png,/tutorial/images/products/5302a9081ac43d6e94dffb3895316bed.png,/tutorial/images/products/969249c2a23b607e0561c0ae62502239.jpg', 'They are perfect Gift For Professional Teaching Coaches!', 1, 'Small:1:2', 0),
(5, 'Girls Dress', '999.00', '1599.00', 14, '15', '/tutorial/images/products/d3de459166198bb7bf0628630c29cd53.png', 'Cool Dresses!!!', 1, 'small:5:2,medium:10:2', 0),
(6, 'NIKE Sketcher', '599.00', '999.00', 2, '14', '/tutorial/images/products/f1b0e40fde8f88f620e8ef697e76907c.png,/tutorial/images/products/11f72438eb8d1993586505633a59ee9a.png', 'Super Cool Pants,\r\nVery Much durable in the sense it is made up of Very Pure fine Fibre Material.!!', 1, 'small:5:2,medium:8:2,large:9:2', 0),
(7, 'GUCCI Shirt', '350.99', '550.99', 13, '13', '/tutorial/images/products/3b3ff52b16ef38770f53399b57504caa.png', 'Wow GUCCI&#039;s Shirt,\r\nFor Cool and Smart Boy&#039;s!!!', 1, 'small:5:2,medium:9:2', 0),
(8, 'T-Shirt', '300.00', '500.00', 15, '13', '/tutorial/images/products/4764ae9bd1b4aa8187f265e513e523d7.png', 'Superb Quality Clothing&#039;s from TOMMY HILFIGER!!!', 1, 'small:9:2,medium:9:2', 0),
(9, 'Ladies Shoes', '700.00', '800.00', 11, '11', '/tutorial/images/products/f23e946e5a9c8c04f4eb5c549169ead3.png', 'Best Fitting Shoes For Womans!!', 1, 'small:1:2,medium:1:2,large:1:2', 0),
(10, 'Ladies Purse', '1000.99', '1500.99', 14, '17', '/tutorial/images/products/9b45e8979dcb76d77f8e4d6ca16063fd.png', 'Latest Trend Accessory for Ladies!!!', 1, 'N/A:8:2', 0),
(11, 'High Heels', '1200.00', '1700.00', 17, '16', '/tutorial/images/products/c28c62961b685a119efd78a5b293ac54.jpg', 'Latest Trend Sandal&#039;s for Girl&#039;s!!!', 1, 'small:5:2,medium:4:2', 0),
(16, 'adidas Studs', '3000.00', '4500.00', 18, '37', '/tutorial/images/products/45532fc397562377d3586ad490eb92ad.jpg,/tutorial/images/products/273bfe4b177c6e55e3c0b7ce195d8434.jpg,/tutorial/images/products/ff3dc299aaa5d74a64fcce872c23cf9d.jpg,/tutorial/images/products/56e4b40a4f8f7144da77f10886afe956.jpg,/tutorial/images/products/587e5ec280c58d6a245ff46e4cf2949d.jpg,/tutorial/images/products/f4388e1dd0eab13fda6503e80b648b48.jpg,/tutorial/images/products/3297fc26791c1b6c90f0adca7dfca0cf.jpg,/tutorial/images/products/f23059f20d30841706b14abd76992980.jpg', 'Best Product From adidas!!!', 1, 'small:4:,medium:4:', 0),
(17, 'Football', '3500.00', '4000.00', 11, '38', '/tutorial/images/products/096862ca05b0c76b11ee4a5fad294400.jpg', 'Best Football Till Time!!!', 1, 'Size 5:10:2', 0),
(18, 'Blazer', '5000.00', '8000.00', 1, '5', '/tutorial/images/products/a692ca9e7c38c74c25d2d47bfcb31b6b.png', 'Best Slim Fit Blazers From Levi&#039;s!!!', 1, 'Medium:5:2,Large:9:2', 0),
(19, 'NIKE Studs', '3500.00', '6500.00', 2, '37', '/tutorial/images/products/2f533b7df2ed77179c4809cd34140445.png,/tutorial/images/products/63fc134f34469cfcb56798055a098447.png,/tutorial/images/products/d2b0c31df4ece92f90c12bb78fb61189.png,/tutorial/images/products/c93dc94c8234a5cb54b4eed381e6077e.png,/tutorial/images/products/aabcb77050227d9d507c65f316825c80.png,/tutorial/images/products/aab4ddfe7367330fdfe89a04780d783f.png,/tutorial/images/products/360978e44d6c688b3487bbd7402535df.png', 'Best Sneakers in market From NIKE!!!', 1, 'small:5:2,medium:9:2', 0),
(21, 'D&amp;G Pant', '599.00', '899.00', 14, '14', '/tutorial/images/products/52f270488d5823257f1438bc88859039.png', 'Good Quality Clothes from D&amp;G!!!', 1, 'small:5:2,medium:9:2,large:5:2', 0),
(22, 'Wrist Watch', '2000.00', '4000.00', 11, '8', '/tutorial/images/products/ccb514b1958c657f322945c2705159cd.png', 'Super cool, Best Quality wrist watches from PUMA!!', 1, 'N/A:8:', 0),
(23, 'Women Shirt', '1500.00', '2500.00', 13, '9', '/tutorial/images/products/9ba5b4c31eda754bb434f3c5111af735.png', 'Best product in Market!!', 1, 'medium:5:2,large:5:2', 0),
(24, 'Ladies pants', '1500.00', '2000.00', 14, '10', '/tutorial/images/products/63d08cb380739d117fec6006bd0dd748.png', 'Good Quality Product From D&amp;G!!!', 1, 'medium:7:2,large:5:2', 0),
(25, 'Mens Lotion', '500.00', '1000.00', 14, '8', '/tutorial/images/products/867733b09ec4c8e7369fe43f37177c21.png', 'Best Lotion from D&amp;G!', 1, 'N/A:1:2', 0),
(26, 'Mirage Gifts', '200.00', '400.00', 20, '29', '/tutorial/images/products/f029b7794b467a06bdab9ced7475c412.png', 'Cool Gifts!!!', 1, 'N/A:9:2', 0),
(27, 'Example', '100.00', '200.00', 10, '13', '/tutorial/images/products/67340f3a225bc0746ac9ee62fce625a9.png', '', 0, 'N/A:2:2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `charge_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cart_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `txn_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txn_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `charge_id`, `cart_id`, `full_name`, `email`, `street`, `street2`, `city`, `state`, `zip_code`, `country`, `sub_total`, `tax`, `grand_total`, `description`, `txn_type`, `txn_date`) VALUES
(1, 'ch_19CCS0IR73AxdMmNDjeWfcRM', 8, 'd', 'guptadharamveer53@gmail.com', 'dd', '', 'd', 'd', '400703', 'd', '99.00', '8.61', '107.61', '1 item from Shauntas Boutique.', 'charge', '2016-11-05 00:00:08'),
(2, 'ch_19CCefIR73AxdMmNvjFZNHmc', 9, 'Dharamveer Mithilesh Gupta', 'guptadharamveer53@gmail.com', 'Sector-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '198.00', '17.23', '215.23', '2 items from Shauntas Boutique.', 'charge', '2016-11-05 00:13:12'),
(3, 'ch_19CCjdIR73AxdMmNkGY7fxZe', 10, 'ShriGanesh', 'guptashriganesh100@gmail.com', 'sect-11', 'vashi', 'Navi Mumbai', 'Maharastra', '400703', 'India', '10198.00', '887.23', '11085.23', '5 items from Shauntas Boutique.', 'charge', '2016-11-05 00:18:21'),
(4, 'ch_19CCq4IR73AxdMmNGy37lyIx', 11, 'Gupta Dharamveer Mithilesh', 'guptadharamveer53@gmail.com', 'Sector-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '3399.00', '295.71', '3694.71', '3 items from Shauntas Boutique.', 'charge', '2016-11-05 00:25:00'),
(5, 'ch_19CCxaIR73AxdMmN64FPPir2', 12, 'Gupta Dharamveer Mithilesh', 'guptadharamveer53@gmail.com', 'Sector-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '9498.00', '826.33', '10324.33', '6 items from Shauntas Boutique.', 'charge', '2016-11-05 00:32:46'),
(6, 'ch_19CD1CIR73AxdMmNAWR2BjxT', 13, 'ShriGanesh Mithilesh Gupta', 'guptadharamveer53@gmail.com', 'Sect-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '599.00', '52.11', '651.11', '1 item from Shauntas Boutique.', 'charge', '2016-11-05 00:36:30'),
(7, 'ch_19CNouIR73AxdMmNgtuV8Uij', 15, 'Sunita Mithilesh Gupta', 'guptadharamveer53@gmail.com', 'Sector-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '2598.00', '226.03', '2824.03', '4 items from Shauntas Boutique.', 'charge', '2016-11-05 12:08:29'),
(8, 'ch_19CsvJIR73AxdMmNvodOFkzD', 21, 'Shriganesh', 'shriganesh@gmail.com', 'sect-11', '', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '198.00', '17.23', '215.23', '2 items from Shauntas Boutique.', 'charge', '2016-11-06 21:21:09'),
(9, 'ch_19Ct2MIR73AxdMmNhuBwCle1', 22, 'd', 'guptadharamveer53@gmail.com', 'd', 'd', 'd', 'd', '400703', 'India', '99.00', '8.61', '107.61', '1 item from Shauntas Boutique.', 'charge', '2016-11-06 21:28:26'),
(10, 'ch_19CtA4IR73AxdMmNLjq3ybNC', 23, 'd', 'guptadharamveer53@gmail.com', 'd', 'd', 'd', 'd', '400703', 'India', '500.00', '43.50', '543.50', '1 item from Shauntas Boutique.', 'charge', '2016-11-06 21:36:24'),
(11, 'ch_19D5fDIR73AxdMmNsTCPhJQH', 24, 'Dharamveer', 'guptadharamveer53@gmail.com', 'sect-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '3000.00', '261.00', '3261.00', '1 item from Shauntas Boutique.', 'charge', '2016-11-07 10:57:25'),
(12, 'ch_19D5i7IR73AxdMmNsS5XEm9Q', 25, 'Shriganesh', 'guptadharamveer53@gmail.com', 'sect-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '2000.00', '174.00', '2174.00', '1 item from Shauntas Boutique.', 'charge', '2016-11-07 11:00:24'),
(13, 'ch_19D7veIR73AxdMmNDJRgepwu', 26, 'Shriganesh', 'guptadharamveer53@gmail.com', 'sect-11', '', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '99.00', '8.61', '107.61', '1 item from Shauntas Boutique.', 'charge', '2016-11-07 13:22:31'),
(14, 'ch_19DsfrIR73AxdMmNf7mlEkIr', 27, 'Gupta Dharamveer Mithilesh', 'guptadharamveer53@gmail.com', 'sect-11', 'Vashi', 'Navi Mumbai', 'Maharashtra', '400703', 'India', '3500.00', '304.50', '3804.50', '1 item from Shauntas Boutique.', 'charge', '2016-11-09 15:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `join_date`, `last_login`, `permissions`) VALUES
(1, 'Dharamveer Mithilesh Gupta', 'guptadharamveer53@gmail.com', '$2y$10$ixm/78DgI/MLSNMsf.8wfeUoL7dpOReaBFEMy711IkUgWvPL9YYVy', '2016-11-01 15:38:44', '2016-11-09 12:09:37', 'admin,editor'),
(4, 'Test Testotri', 'test@gmail.com', '$2y$10$teUQDuno1bcMXWjedae6ruumgZRndIZJZBHzLOgjNmOAt0KxoE9Uq', '2016-11-02 19:42:50', '2016-11-02 15:21:33', 'editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
