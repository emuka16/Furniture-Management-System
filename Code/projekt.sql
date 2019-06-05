-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 06:14 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`) VALUES
(6, 'ikea', 1),
(8, 'ardeno', 1),
(9, 'brand2', 0),
(10, 'Klajdi Mobileri', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'cat1', 1),
(2, 'cat2', 2),
(5, 'CATEGORY', 1),
(6, 'KJERRUIFWEJ', 2),
(7, 'jfnrefoij', 3);

-- --------------------------------------------------------

--
-- Table structure for table `company_orders`
--

CREATE TABLE `company_orders` (
  `id` int(11) NOT NULL,
  `order_from` varchar(45) NOT NULL DEFAULT 'Company',
  `order_to` int(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_orders`
--

INSERT INTO `company_orders` (`id`, `order_from`, `order_to`, `address`) VALUES
(11, 'Company', 2, 'komuna parisit, perballe kristalit');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_number` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone_number`) VALUES
(1, 'customer1', 'rruga durresit, tirane', '6898486723'),
(2, 'customer2', 'komuna parisit, perballe kristalit', '58896589'),
(5, 'customer3', 'tr, rr durresit', '6898486723'),
(6, 'customer4', 'zona bllokut, perballe viles se enverit', '0692435445');

-- --------------------------------------------------------

--
-- Table structure for table `departaments`
--

CREATE TABLE `departaments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departaments`
--

INSERT INTO `departaments` (`id`, `name`) VALUES
(1, 'departament1'),
(2, 'departament2'),
(3, 'departament3'),
(4, 'departament4'),
(5, 'departament5'),
(7, 'departament6');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `departament_id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `base_salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `departament_id`, `joining_date`, `base_salary`) VALUES
(1, 'EM1', 3, '2019-06-02', 100),
(2, 'EM2', 2, '2019-06-02', 100),
(4, 'EMPLOYEE3', 1, '2019-06-02', 300),
(5, 'em4', 1, '2019-06-02', 100),
(6, 'em5', 2, '2019-06-02', 340),
(8, 'em6', 4, '2019-06-02', 500),
(9, 'em7', 5, '2019-10-02', 100),
(11, 'em8', 4, '2019-06-02', 340);

-- --------------------------------------------------------

--
-- Table structure for table `income_statements`
--

CREATE TABLE `income_statements` (
  `id` int(11) NOT NULL,
  `rent` double NOT NULL,
  `taxes` double NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_statements`
--

INSERT INTO `income_statements` (`id`, `rent`, `taxes`, `month`, `year`) VALUES
(2, 12, 67, 7, 2019),
(3, 123, 12, 6, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_orders`
--

CREATE TABLE `invoice_orders` (
  `id` int(11) NOT NULL,
  `order_from` varchar(45) NOT NULL DEFAULT 'Company',
  `order_to` int(11) NOT NULL,
  `order_time` date NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `total` double NOT NULL,
  `special_notes` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machineries`
--

CREATE TABLE `machineries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quanity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machineries`
--

INSERT INTO `machineries` (`id`, `name`, `image`, `price`, `quanity`) VALUES
(11, 'machinerie1', 'machinery.jpg', 3050, 12),
(12, 'machinery2', 'machinery2.jpg', 2000, 12),
(13, 'makineri3', 'mach3.jpg', 11, 12),
(15, 'makineri5', 'mach4.jpg', 12, 12),
(19, 'machinery7', 'mach5.jpg', 100000, 2),
(21, 'Machinery_7', 'machinerz7.jpg', 120, 6);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `price`, `quantity`, `image`) VALUES
(7, 'wood', 201, 10, 'wood.jpg'),
(8, 'material2', 1100, 50, 'wood.jpg'),
(10, 'material4', 120, 21, 'sofa-spring.jpg'),
(11, 'sponge', 10, 2, 'sponge.jpg'),
(12, 'glue', 20, 2, 'glue.jpg'),
(13, 'nail', 10, 200, 'nail.jpg'),
(14, 'cloth', 100, 500, 'cloth.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `total` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `order_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `production_details`
--

CREATE TABLE `production_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `machinery_cost` double NOT NULL,
  `work_hr_cost` double NOT NULL,
  `total_cost` double NOT NULL,
  `production_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(225) DEFAULT NULL,
  `availability` int(11) NOT NULL,
  `parameters` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand_id`, `image`, `price`, `quantity`, `description`, `availability`, `parameters`) VALUES
(5, 'minibar', 9, 'prod1.jpg', 110, 10, '', 1, ''),
(7, 'Sofa', 6, 'sofa1.jpg', 1000, 3, '', 1, ''),
(8, 'Chair', 10, 'chair.png', 60, 10, 'white', 1, '100x60'),
(9, 'table', 10, 'table.jpg', 410, 2, 'wood', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_achivements`
--

CREATE TABLE `product_achivements` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `achived_status` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `achived_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_achivements`
--

INSERT INTO `product_achivements` (`id`, `product_id`, `product_name`, `achived_status`, `month`, `year`, `achived_no`) VALUES
(8, 5, 'aidi', 0, 6, 2019, 21),
(9, 7, 'ttttt', 1, 6, 2019, 0),
(10, 5, 'aidi', 1, 3, 2019, 0),
(11, 7, 'ttttt', 0, 3, 2019, 0),
(12, 5, 'aidi', 1, 1, 2019, 0),
(13, 7, 'ttttt', 0, 1, 2019, 0),
(14, 5, 'aidi', 0, 2, 2019, 0),
(15, 7, 'ttttt', 0, 2, 2019, 0),
(16, 5, 'aidi', 0, 5, 2019, 0),
(17, 7, 'ttttt', 0, 5, 2019, 0),
(18, 5, 'aidi', 0, 4, 2019, 0),
(19, 7, 'ttttt', 0, 4, 2019, 0),
(20, 8, 'Chair', 0, 6, 2019, 0),
(21, 9, 'table', 1, 6, 2019, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL,
  `material_id` int(10) UNSIGNED NOT NULL,
  `material_cost` double NOT NULL,
  `material_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `koha` date NOT NULL,
  `nga` varchar(45) NOT NULL,
  `per` varchar(45) NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double DEFAULT NULL,
  `shiping` double DEFAULT NULL,
  `total` double NOT NULL,
  `special_notes` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `koha`, `nga`, `per`, `subtotal`, `tax`, `shiping`, `total`, `special_notes`, `status`) VALUES
(30, '2019-06-04', 'supplier', 'klajdi mobileri', 62, 20, 30, 112, 'furnizim', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_machineries`
--

CREATE TABLE `purchase_machineries` (
  `id` int(11) NOT NULL,
  `machinery_id` int(11) NOT NULL,
  `machinery_name` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `total` double NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_machineries`
--

INSERT INTO `purchase_machineries` (`id`, `machinery_id`, `machinery_name`, `quantity`, `unit_price`, `total`, `purchase_id`) VALUES
(10, 15, 'makineri5', 1, 12, 12, 30);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_materials`
--

CREATE TABLE `purchase_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `material_id` int(11) NOT NULL,
  `material_name` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `total` double NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_materials`
--

INSERT INTO `purchase_materials` (`id`, `material_id`, `material_name`, `quantity`, `unit_price`, `total`, `purchase_id`) VALUES
(1, 1, 'sdkmcjsdhfjcjnn', 12, 12, 11111, 1),
(2, 2, 'jnkl', 12, 11, 132, 2),
(3, 2, 'jnkl', 12, 11, 132, 3),
(4, 2, 'jnkl', 12, 11, 132, 5),
(5, 2, 'jnkl', 0, 11, 0, 6),
(6, 3, 'jnkl', 12, 100000, 1200000, 6),
(7, 4, 'jnkl', 0, 12, 0, 6),
(8, 2, 'jnkl', 12, 11, 132, 7),
(9, 3, 'jnkl', 0, 100000, 0, 7),
(10, 4, 'jnkl', 0, 12, 0, 7),
(11, 2, 'jnkl', 0, 11, 132, 9),
(12, 3, 'jnkl', 0, 100000, 0, 9),
(13, 4, 'jnkl', 0, 12, 84, 9),
(14, 2, 'jnkl', 12, 11, 132, 10),
(15, 3, 'jnkl', 0, 100000, 0, 10),
(16, 4, 'jnkl', 0, 12, 0, 10),
(17, 2, 'jnkl', 12, 11, 132, 11),
(18, 3, 'jnkl', 0, 100000, 0, 11),
(19, 4, 'jnkl', 0, 12, 0, 11),
(20, 2, 'jnkl', 12, 11, 132, 12),
(21, 3, 'jnkl', 0, 100000, 0, 12),
(22, 4, 'jnkl', 0, 12, 0, 12),
(23, 2, 'kot', 1, 11, 11, 13),
(24, 2, 'kot', 12, 11, 132, 14),
(25, 8, 'material2', 2, 100, 200, 15),
(26, 8, 'material2', 0, 100, 0, 16),
(27, 8, 'material2', 23, 100, 2300, 17),
(28, 10, 'material4', 2, 12, 24, 18),
(29, 8, 'material2', 2, 100, 200, 19),
(30, 10, 'material4', 2, 12, 24, 21),
(31, 8, 'material2', 2, 100, 200, 22),
(32, 8, 'material2', 2, 100, 200, 23),
(33, 14, 'cloth', 10, 100, 1000, 24),
(34, 14, 'cloth', 0, 100, 0, 25),
(35, 14, 'cloth', 0, 100, 0, 26),
(36, 12, 'glue', 2, 20, 40, 27),
(37, 12, 'glue', 0, 20, 0, 28),
(38, 12, 'glue', 0, 20, 0, 29),
(39, 11, 'sponge', 5, 10, 50, 30);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`) VALUES
(8, 'ikea', 'kot kot'),
(9, 'scavolini', 'tr, rr durresit'),
(10, 'test3', 'testojuiutfdtxwetzesxbjhnjinuigyfcsrze'),
(11, 'jnkl', 'jhbnklm'),
(12, 'jnik', 'test2'),
(16, 'jnkl', 'tr, rr durresit'),
(17, 'kjo', 'tr, rr durresit'),
(18, 'jnkl', 'weewf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `email`, `phone_number`, `address`, `cv`, `joining_date`, `type`) VALUES
(11, 'Admin', 'Administrator', 'MTIzNDU2', 'admin@gmail.com', '58896589', 'Tirane,Albania', '', '2019-05-25', 1),
(17, 'OM', 'operations manager', 'MTIzNDU2', 'Operation@manager.com', '0695231478', 'Tirane', '', '2019-06-01', 5),
(18, 'cfo', 'cfoja', 'MTIzNDU2', 'cfo@cfo.com', '123456789101', '', '', '2019-06-01', 2),
(19, 'hr', 'hrhrhrhrhrh', 'MTIzNDU2', 'hr@hr.com', '123456789101', '', '', '2019-06-01', 3),
(21, 'sales', 'saler boy', 'MTIzNDU2', 'sale@sales.com', '123456789101', '', '', '2019-06-01', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `company_orders`
--
ALTER TABLE `company_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `order_to_idx` (`order_to`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `departament_id_idx` (`departament_id`);

--
-- Indexes for table `income_statements`
--
ALTER TABLE `income_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_orders`
--
ALTER TABLE `invoice_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `order_to_idx` (`order_to`);

--
-- Indexes for table `machineries`
--
ALTER TABLE `machineries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_idx` (`order_id`);

--
-- Indexes for table `production_details`
--
ALTER TABLE `production_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  ADD KEY `product_id_idx` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `id_idx` (`brand_id`);

--
-- Indexes for table `product_achivements`
--
ALTER TABLE `product_achivements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id_idx` (`material_id`),
  ADD KEY `production_id_idx` (`production_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_machineries`
--
ALTER TABLE `purchase_machineries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id_idx` (`purchase_id`);

--
-- Indexes for table `purchase_materials`
--
ALTER TABLE `purchase_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_orders`
--
ALTER TABLE `company_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `income_statements`
--
ALTER TABLE `income_statements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_orders`
--
ALTER TABLE `invoice_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `machineries`
--
ALTER TABLE `machineries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `production_details`
--
ALTER TABLE `production_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_achivements`
--
ALTER TABLE `product_achivements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `purchase_machineries`
--
ALTER TABLE `purchase_machineries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_materials`
--
ALTER TABLE `purchase_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `departament_id` FOREIGN KEY (`departament_id`) REFERENCES `departaments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoice_orders`
--
ALTER TABLE `invoice_orders`
  ADD CONSTRAINT FOREIGN KEY (`order_to`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `production_details`
--
ALTER TABLE `production_details`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `material_id` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `production_id` FOREIGN KEY (`production_id`) REFERENCES `production_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `purchase_machineries`
--
ALTER TABLE `purchase_machineries`
  ADD CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
