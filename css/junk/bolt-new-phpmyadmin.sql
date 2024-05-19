-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2014 at 07:23 AM
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ArtFolio`
--
CREATE DATABASE IF NOT EXISTS `artfolio1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `artfolio1`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'Art1', 'Madhya Pradesh Bags', 'Vibrant and eco-friendly bags crafted by artisans from Madhya Pradesh, reflecting the states rich cultural heritage.', 'bags.jpg', 26, '5000.00'),
(2, 'Art2', 'Haryana Rugs', 'Traditional rugs woven by artisans from Haryana, featuring geometric patterns and vibrant colors inspired by local culture.', 'handmade-rugs.png', 50, '150.00'),
(3, 'Art3', 'Kashmiri Scarf', 'Luxurious woolen scarves from Kashmir, known for their softness, intricate embroidery, and timeless elegance.', 'kashmiri.jpg', 34, '6999.00');
(4, 'Art4', 'Madhubani Painting', 'Traditional Indian art style featuring intricate patterns and vibrant colors, originating from the Mithila region of Bihar.', 'madhubani.jpg', 26, '5000.00'),
(5, 'Art5', 'Kerala Mandala', 'Intricately designed circular artwork inspired by Keralas rich cultural heritage and spiritual traditions.', 'mandala.jpg', 50, '150.00'),
(6, 'Art6', 'Rajasthani Crafts', 'Exquisite handicrafts from Rajasthan, encompassing a wide range of traditional arts including pottery, embroidery, and metalwork.', 'rajasthan.jpg', 34, '6999.00');
(7, 'Art7', 'Varanasi Pots', 'Handcrafted clay pots from Varanasi, renowned for their durability, intricate designs, and cultural significance.', 'varansi.jpg', 50, '150.00'),
(8, 'Art8', 'Manipuri Baskets', 'Handwoven baskets showcasing the skilled craftsmanship of Manipur, often adorned with intricate designs and vibrant colors.', 'baskets.jpg', 34, '6999.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Srishti', 'Acharya', 'Magarpatta', 'Pune', 411028, 'srishti@gmail.com', 'srishti', 'admin');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
