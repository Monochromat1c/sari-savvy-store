-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 08:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sari_savvy_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(255) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `gender_id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `quantity`, `price`, `supplier_id`, `created_at`, `updated_at`) VALUES
(58, 'Coca-Cola (1.5L) - Regular', 100, 45, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(59, 'Coca-Cola (1.5L) - Zero Sugar', 100, 45, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(60, 'Coca-Cola (1.5L) - Cherry', 100, 45, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(61, 'Nestle Chuckie (1L) - Chocolate', 100, 60, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(62, 'Nestle Chuckie (1L) - Strawberry', 100, 60, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(63, 'Lucky Me Pancit Canton - Original', 100, 12, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(64, 'Lucky Me Pancit Canton - Chili Mansi', 100, 12, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(65, 'Lucky Me Pancit Canton - Calamansi', 100, 12, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(66, 'C2 Green Tea (500ml) - Apple', 100, 20, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(67, 'C2 Green Tea (500ml) - Lemon', 100, 20, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(68, 'C2 Green Tea (500ml) - Peach', 100, 20, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(69, 'Oreo Cookies - Original', 100, 45, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(70, 'Oreo Cookies - Double Stuf', 100, 45, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(71, 'Oreo Cookies - Golden', 100, 45, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(72, 'Safeguard Soap - Fresh Clean', 100, 25, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(73, 'Safeguard Soap - Pure White', 100, 25, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(74, 'Safeguard Soap - Cool Menthol', 100, 25, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(75, 'Selecta Ice Cream - Ube Macapuno', 100, 75, 7, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(76, 'Selecta Ice Cream - Cookies and Cream', 100, 75, 7, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(77, 'Selecta Ice Cream - Mango', 100, 75, 7, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(78, 'San Miguel Beer - Pale Pilsen', 100, 30, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(79, 'San Miguel Beer - Light', 100, 30, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(80, 'San Miguel Beer - Apple', 100, 30, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(81, 'Lady\'s Choice Mayonnaise (470ml) - Original', 100, 100, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(82, 'Lady\'s Choice Mayonnaise (470ml) - Lite', 100, 100, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(83, 'Nescafe Instant Coffee - Classic', 100, 50, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(84, 'Nescafe Instant Coffee - Decaf', 100, 50, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(85, 'Nescafe Instant Coffee - White Coffee', 100, 50, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(86, 'Skyflakes Crackers - Original', 100, 18, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(87, 'Skyflakes Crackers - Garlic', 100, 18, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(88, 'Skyflakes Crackers - Fit', 100, 18, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(89, 'Del Monte Pineapple Juice (1L) - Classic', 100, 45, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(90, 'Del Monte Pineapple Juice (1L) - Pine-apple', 100, 45, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(91, 'Knorr Sinigang Mix - Original', 100, 10, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(92, 'Knorr Sinigang Mix - Gabi (Taro)', 100, 10, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(93, 'Knorr Sinigang Mix - Sampalok (Tamarind)', 100, 10, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(94, 'Jack \'n Jill Chippy - Garlic', 100, 12, 7, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(95, 'Jack \'n Jill Chippy - Barbecue', 100, 12, 7, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(96, 'Milo Chocolate Powder (300g) - Original', 100, 120, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(97, 'Milo Chocolate Powder (300g) - Activ-Go', 100, 120, 1, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(98, 'Century Tuna - Hot and Spicy', 100, 35, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(99, 'Century Tuna - Flakes in Oil', 100, 35, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(100, 'Century Tuna - Lite', 100, 35, 2, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(101, 'Lipton Yellow Label Tea (25 bags) - Regular', 100, 80, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(102, 'Lipton Yellow Label Tea (25 bags) - Earl Grey', 100, 80, 3, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(103, 'Gardenia Bread - White', 100, 50, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(104, 'Gardenia Bread - Chocolate', 100, 50, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(105, 'Gardenia Bread - Wheat', 100, 50, 4, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(106, 'Golden Fiesta Cooking Oil (1L) - Vegetable', 100, 90, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(107, 'Golden Fiesta Cooking Oil (1L) - Canola', 100, 90, 5, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(108, 'Purefoods Corned Beef - Classic', 100, 45, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(109, 'Purefoods Corned Beef - Lite', 100, 45, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19'),
(110, 'Purefoods Corned Beef - Chili Corned Beef', 100, 45, 6, '2024-05-26 04:19:19', '2024-05-26 04:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier`, `created_at`, `updated_at`) VALUES
(1, 'Metro Mart', '2024-05-26 04:05:34', '2024-05-26 04:05:34'),
(2, 'Super Corp', '2024-05-26 04:06:08', '2024-05-26 04:06:08'),
(3, 'Wholesale Trading Inc.', '2024-05-26 04:06:20', '2024-05-26 04:06:20'),
(4, 'Direct Supplier PH', '2024-05-26 04:06:29', '2024-05-26 04:06:29'),
(5, 'Supplier Plus+', '2024-05-26 04:06:39', '2024-05-26 04:06:39'),
(6, 'Supply Chain Solutions', '2024-05-26 04:06:51', '2024-05-26 04:06:51'),
(7, 'Philippine Distributors', '2024-05-26 04:07:04', '2024-05-26 04:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `gender_id` (`gender_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_transactions_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`),
  ADD CONSTRAINT `payment_transactions_ibfk_3` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`discount_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
