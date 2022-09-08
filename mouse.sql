-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 07:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(97, 2, 19, 'pending', 'cash', 'pending', '123', '2022-09-06 03:56:29', NULL),
(98, 1, 19, 'pending', 'cash', 'pending', '123', '2022-09-06 03:56:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Glorious Model D', '2190', 'Mouse', 'ระบายอากาศบนฝ่ามือได้ดี \\ มาพร้อมปุ่มการใช้งาน 6 ปุ่ม', 'https://www.img.in.th/images/6e9b0f4b064df13d59ac6d5bfd960159.png', NULL, NULL),
(2, 'Glorious Model O', '2190', 'Mouse', 'ระบายอากาศบนฝ่ามือได้ดี \\ มาพร้อมปุ่มการใช้งาน 6 ปุ่ม', 'https://www.img.in.th/images/03bba430a23b320603790cd5e882e10c.png', NULL, NULL),
(3, 'Zowie EC2', '2790', 'Mouse', 'DPI สูงสุด 3200 \\ เชื่อมต่อง่ายแบบ Plug & Play', 'https://www.img.in.th/images/53fd72ad2922da4ce1b0520ef4ff7915.png', NULL, '2022-03-08 10:32:31'),
(4, 'Zowie S2', '2790', 'Mouse', 'DPI สูงสุด 3200 \\ เชื่อมต่อง่ายแบบ Plug & Play', 'https://www.img.in.th/images/070dc90b37e2083562976667db5fce56.png', NULL, '2022-03-08 10:18:55'),
(5, 'LOGITECH Pro X Superlight(WHITE)', '4990', 'Mouse', '100 - 25,400 DPI \\ Wireless', 'https://www.img.in.th/images/66c5260dc620d03d77663d8dad1c7dd3.png', NULL, '2022-03-08 10:17:02'),
(6, 'LOGITECH Pro X Superlight(BLACK)', '4990', 'Mouse', '100 - 25,400 DPI \\ Wireless', 'https://www.img.in.th/images/bac460743b27459201776b221cee0532.png', NULL, NULL),
(7, 'RAZER DEATHADDER V2', '1990', 'Mouse', '20000 DPI \\ Razer™ Optical Mouse Switches rated for 70 million clicks', 'https://www.img.in.th/images/04462b5281ae640fc29515df5a960b5b.png', NULL, NULL),
(8, 'RAZER VIPER ULTIMATE', '4590', 'Mouse', '20,000 DPI \\ Wireless', 'https://www.img.in.th/images/311aa3883a8ce07f91b21aff85a7471a.png', NULL, '2022-09-05 20:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(19, 'Zeize', 'bas@gmail.com', '$2y$10$xh6fZHEfypFnB01IHjTKAOCs3Q.Oa3/2guRJIkSXIHuKB3r8O2jWi', '2022-09-05 20:53:27', '2022-09-05 20:53:27');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
