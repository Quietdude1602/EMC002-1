-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 02:10 PM
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
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `item_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `item_id` int(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`item_id`, `itemname`, `description`, `price`, `quantity`, `image`) VALUES
(5, 'Warhammer 40K: Ultimate Starter Set', 'The Ultimate Starter Set is a box set for those\r\nwho wish to get into the Warhammer 40k game\r\nand can be played with friends. This box\r\nincludes Instructions, rule book, 10x dice, and\r\nmany plastic miniature pieces to assemble.', 11500, 4, 'Pictures/Ulti_Start_Set.jpg'),
(6, 'Age of Sigmar: Vanguard-Seraphon', 'The Vanguard: Seraphon is a faction box set\r\nthat contains multiple plastic models to\r\nassemble and bases for models. This is a set for\r\nthose who wish to get into the Seraphon faction.', 6800, 2, 'Pictures/Vanguard_Seraphon.jpg'),
(7, 'The Old World: Tomb Kings-Necrolith Dragon', 'This multipart plastic kit builds a Tomb King or Liche Priest mounted on a Necrolith Bone Dragon. This kit contains 96 plastic components, 1x Citadel 100x150mm Rectangular Base, and 1x Citadel 25mm Square Base.', 4800, 1, 'Pictures/Tomb_King_Dragon.jpg'),
(8, 'Conquest - Sorcerer Kings\r\nMaharajah', 'The Maharajah is a character type model for the\r\nSorcerer King\'s faction. The box contains 1\r\nunassembled resin miniature, a round base\r\nstand, and a single command card.', 1500, 2, 'Pictures/Maharajah_SK.jpg'),
(9, 'Warhammer The Horus\r\nHeresy - Lasrifle Section', 'The Lasrifle Section is a multipart plastic kit that\r\nbuilds up to 20 miniature models. This kit\r\ncomprises 380 plastic components, 20x Citadel\r\n25mm round bases, and a waterslide transfer\r\nsheet.', 3600, 5, 'Pictures/Solar_Aux.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `username`, `password`, `firstname`, `lastname`, `mobile`, `address`, `email`) VALUES
(1, 'janedoe13', 'P@$$word!', 'Jane', 'Doe', '09151112233', 'Quezon City', 'jane@gmail.com'),
(2, 'ace_reyes', 'p4ssW0rd#', 'Ace', 'Reyes', '09561234567', 'Valenzuela City', 'ace@yahoo.com'),
(3, 'johnsmith', 'Pa$sworD!', 'John', 'Smith', '09180009922', 'Bulacan', 'john@gmai.com'),
(5, 'Rusty', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cart_ibfk_1` (`item_id`),
  ADD KEY `cart_ibfk_2` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `products` (`item_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
