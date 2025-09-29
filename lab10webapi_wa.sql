-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 06:29 AM
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
-- Database: `lab10webapi!wa`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating_rate` decimal(3,2) DEFAULT NULL,
  `rating_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `category`, `image`, `rating_rate`, `rating_count`, `created_at`) VALUES
(2, 'Silk Sheen - Nude Blush', 'Sheer satin finish, everyday nude blush.', 12.50, 'lipstick', '/images/lip-silk-nude.jpg', 4.50, 210, '2025-09-29 03:30:32'),
(3, 'Matte Icon - Deep Berry', 'Longwear matte in deep berry shade.', 15.99, 'lipstick', '/images/lip-matte-berry.jpg', 4.70, 187, '2025-09-29 03:30:32'),
(4, 'Lumi Gloss - Coral Kiss', 'Hydrating gloss with coral tint.', 10.00, 'lipstick', '/images/lip-gloss-coral.jpg', 4.40, 95, '2025-09-29 03:30:32'),
(5, 'Velvet Luxe - Pink Blossom', 'Luxurious velvet matte lipstick in soft pink blossom shade.', 15.50, 'lipstick', '/images/lipstick-pink-blossom.jpg', 4.60, 140, '2025-09-29 03:30:32'),
(6, 'Ultra Pigment - Ruby Drop', 'Highly pigmented ruby red lipstick.', 16.50, 'lipstick', '/images/lip-ruby.jpg', 4.90, 410, '2025-09-29 03:30:32'),
(7, 'Berry Burst - Plum Velvet', 'Plum velvet finish, rich color payoff.', 14.25, 'lipstick', '/images/lip-plum.jpg', 4.50, 122, '2025-09-29 03:30:32'),
(8, 'Glow Tint - Peach Bloom', 'Tinted lip oil with peach glow.', 11.00, 'lipstick', '/images/lip-tint-peach.jpg', 4.30, 88, '2025-09-29 03:30:32'),
(9, 'Retro Matte - Brick Lane', 'Warm brown-red matte, retro vibe.', 15.00, 'lipstick', '/images/lip-retro-brick.jpg', 4.20, 76, '2025-09-29 03:30:32'),
(10, 'Velvet Touch - Merlot', 'Smooth velvet in merlot shade.', 14.99, 'lipstick', '/images/lip-merlot.jpg', 4.60, 201, '2025-09-29 03:30:32'),
(11, 'Sheer Bloom - Pink Whisper', 'Lightweight sheer pink, everyday wear.', 9.99, 'lipstick', '/images/lip-sheer-pink.jpg', 4.10, 53, '2025-09-29 03:30:32'),
(12, 'Bold Statement - Fuchsia Pop', 'Vibrant fuchsia with creamy finish.', 15.50, 'lipstick', '/images/lip-fuchsia.jpg', 4.70, 166, '2025-09-29 03:30:32'),
(13, 'Nude Canvas - Beige Honey', 'Neutral beige for minimal look.', 12.00, 'lipstick', '/images/lip-nude-beige.jpg', 4.40, 99, '2025-09-29 03:30:32'),
(14, 'Satin Luxe - Mauve Charm', 'Luxe satin mauve shade.', 13.99, 'lipstick', '/images/lip-mauve.jpg', 4.50, 134, '2025-09-29 03:30:32'),
(15, 'Crystal Gloss - Cherry Shine', 'High-shine cherry lip gloss.', 10.50, 'lipstick', '/images/lip-cherry-gloss.jpg', 4.20, 64, '2025-09-29 03:30:32'),
(16, 'Velour Matte - Crimson Edge', 'Velour matte crimson, bold and smooth.', 16.00, 'lipstick', '/images/lip-crimson.jpg', 4.80, 258, '2025-09-29 03:30:32'),
(17, 'Hydra Balm - Berry Nectar', 'Moisturizing balm with berry tint.', 8.99, 'lipstick', '/images/lip-balm-berry.jpg', 4.00, 44, '2025-09-29 03:30:32'),
(18, 'Sunset Ombre - Tangerine Fade', 'Ombre lipstick with tangerine gradient.', 14.50, 'lipstick', '/images/lip-ombre-tangerine.jpg', 4.30, 71, '2025-09-29 03:30:32'),
(19, 'Pearl Sheen - Champagne Glow', 'Subtle pearl sheen for evening looks.', 13.25, 'lipstick', '/images/lip-pearl-champagne.jpg', 4.60, 89, '2025-09-29 03:30:32'),
(20, 'Plush Matte - Wine Night', 'Deep wine matte for dramatic looks.', 15.75, 'lipstick', '/images/lip-wine.jpg', 4.70, 190, '2025-09-29 03:30:32'),
(21, 'Tinted Velvet - Raspberry Mist', 'Velvety tint in raspberry.', 12.75, 'lipstick', '/images/lip-raspberry.jpg', 4.50, 102, '2025-09-29 03:30:32'),
(22, 'Nectar Gloss - Honey Glaze', 'Warm honey gloss with shine.', 9.50, 'lipstick', '/images/lip-honey-gloss.jpg', 4.10, 58, '2025-09-29 03:30:32'),
(23, 'Classic Red - Hollywood', 'True red classic for bold statements.', 15.99, 'lipstick', '/images/lip-classic-red.jpg', 4.90, 512, '2025-09-29 03:30:32'),
(24, 'Muted Rose - Vintage', 'Soft muted rose with satin finish.', 13.00, 'lipstick', '/images/lip-vintage-rose.jpg', 4.40, 76, '2025-09-29 03:30:32'),
(25, 'Midnight Plum - Velvet Noir', 'Intense plum-blackened velvet finish.', 16.50, 'lipstick', '/images/lip-midnight-plum.jpg', 4.60, 121, '2025-09-29 03:30:32'),
(26, 'Velvet Luxe - Pink Blossom', 'Luxurious velvet matte lipstick in soft pink blossom shade.', 15.50, 'lipstick', '/images/lipstick-pink-blossom.jpg', NULL, 0, '2025-09-29 04:01:12'),
(27, 'Velvet Luxe - Pink Blossom', 'Luxurious velvet matte lipstick in soft pink blossom shade.', 15.50, 'lipstick', '/images/lipstick-pink-blossom.jpg', NULL, 0, '2025-09-29 04:14:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
