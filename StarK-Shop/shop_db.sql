-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 01:18 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'aise', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'wasi', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(4, 2, 3, 'ALBUM BTS', 5, 1, 'ALBUM BTS.jpg'),
(7, 3, 4, 'ALBUM EXO', 10, 1, 'album exo.jpg'),
(8, 4, 4, 'ALBUM EXO', 10, 1, 'album exo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'aise', 'aise@gmail.com', '0822443835', 'sangat bagus sekali barangnya');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 2, 'aise', '0818333932', 'aise@gmail.com', 'paytm', 'flat no. 1/73, Jl. Rajawali, Malang, Jawa Timur, Indonesia - 56400', 'ALBUM EXO (10 x 1) - ', 10, '2024-06-03', 'Sudah Dibayar'),
(3, 2, 'aise', '0818333932', 'aise@gmail.com', 'credit card', 'flat no. 1/73, Jl. Rajawali, Malang, Jawa Timur, Indonesia - 56400', 'ALBUM EXO (10 x 1) - ', 10, '2024-06-03', 'Sudah Dibayar'),
(4, 3, 'pino cantik', '0821363782', 'pino@gmail.com', 'paytm', 'flat no. M3, Jalan Perumahan Istana Gajayana, Malang, Jawa Timur, Indonesia - 56400', 'ALBUM BTS (5 x 1) - ALBUM BATTER (15 x 1) - ', 20, '2024-06-16', 'pending'),
(5, 5, 'mina nina', '0927264362', 'mina@gmail.com', 'cash on delivery', 'flat no. M3, Jl. Gajayana, Malang, Jawa Timur, Indonesia - 52167', 'ALBUM BTS (5 x 1) - ', 5, '2024-06-24', 'Sudah Dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(3, 'ALBUM BTS', 'ALBUM BTS TERBARU', 5, 'ALBUM BTS.jpg', 'ALBUM BTS.jpg', 'ALBUM BTS.jpg'),
(4, 'ALBUM EXO', 'ALBUM EXO TERLARIS', 10, 'album exo.jpg', 'album exo.jpg', 'album exo.jpg'),
(5, 'ALBUM BATTER', 'ALBUM BATTER TERLARIS  ', 15, 'album batter.jpg', 'album batter.jpg', 'album batter.jpg'),
(6, 'ALBUM EXO WOLF', '9\r\n', 8, 'album exo wolf.jpg', 'album exo wolf.jpg', 'album exo wolf.jpg'),
(7, 'ALBUM BLACKPINK', 'ALBUM BLACKPINK TER CETAR ', 12, 'album blackpink.jpg', 'album blackpink.jpg', 'album blackpink.jpg'),
(8, 'ALBUM BTS X STEVE AOKI', 'COLLAB TERHOT DIABAD INI', 18, 'ALBUM BTS COLLAB WITH STEVE AOKI.jpg', 'ALBUM BTS COLLAB WITH STEVE AOKI.jpg', 'ALBUM BTS COLLAB WITH STEVE AOKI.jpg'),
(9, 'MERCHANDISE KNICKS', 'TOPI KEREN DARI KNICKS\r\n', 4, 'MERCHANDISE KNICKS.jpg', 'MERCHANDISE KNICKS.jpg', 'MERCHANDISE KNICKS.jpg'),
(10, 'MERCHANDISE BTS', 'JAM TANGAN BTS ERA', 7, 'MERCHANDISE BTS.jpg', 'MERCHANDISE BTS.jpg', 'MERCHANDISE BTS.jpg'),
(11, 'MERCHANDISE BTS MUSIC', 'SEGERA BELI !!', 18, 'MERCHANDISE BTS MUSIC.jpg', 'MERCHANDISE BTS MUSIC.jpg', 'MERCHANDISE BTS MUSIC.jpg'),
(12, 'MERCHANDISE BLACKPINK', 'BANTAL BLACKPINK\r\n', 12, 'MERCHANDISE BLACKPINK.jpg', 'MERCHANDISE BLACKPINK.jpg', 'MERCHANDISE BLACKPINK.jpg'),
(13, 'TXT', 'TXT Album', 11, 'Japan 1st STILL DREAMING Set.jpg', '『Chaotic Wonderland』 Set.png', '3rd JP Single 『GOOD BOY GONE BAD』 Solo Jacket Limited.png'),
(14, 'Acrylic', 'Acrylic TXT Member', 15, '[BEOMGYU] DIY Acrylic Stand.png', 'Acrylic Stand member.png', '[SOOBIN] DIY Acrylic Stand.png'),
(15, 'Merchandise', 'merchanise TXT', 12, '[HEESEUNG] Acrylic Frame & Keyring.png', '[JAY] TOTE BAG.png', '[HEESEUNG] ACRYLIC STAND.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'aisyah', 'aisyah@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'aise', 'aise@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'pino', 'pino@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, 'kinan', 'kinan@gmail.com', '36e1429d689bb74dfcb7f22cccb791086c8d2774'),
(5, 'mina', 'mina@gmail.com', '6efe3d6c7ac1ccdb8d8febb5712a0b187f08fef2');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
