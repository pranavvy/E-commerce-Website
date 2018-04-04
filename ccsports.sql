SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ccsports`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL auto_increment,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;


--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL auto_increment,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'UOIT1', 'Sports Shoes', 'Perfect for the days off, after games, practices or during commutes. Embroidered with the UOIT logo for maximum school swag..', 'hoodie.jpg', 49, 68.00),
(2, 'UOIT2', 'Fleece Sweatpants', 'Perfect for after games, practices or during commutes. Made with fleece wool to provide extreme comfort and flexibility. A must have for all athletes!', 'sweatpant.jpg', 6, 42.00),
(3, 'UOIT3', 'Winter Toque', 'The perfect UOIT winter swag to keep you warm between practices, games and commutes. Comes embroidered with the UOIT logo, as well as, the Canadian maple leaf.', 'toque.jpg', 99, 24.00),
(4, 'UOIT4', 'Gym T-Shirt', 'The t-shirt that goes with you to every workout, week-in and week-out. This reliable, quality made t-shirt will last you a lifetime while letting you rep UOIT.', 'tshirt.jpg', 1, 16.00),
(5, 'UOIT5', 'Utility Bag', 'Great for active on-the-go students. Lots of pockets and space for numerous items. Blue in color with UOIT logo embroidered on the side..', 'bag.jpg', 22, 50.00),
(6, 'UOIT6', 'Lanyard', 'Keep your keys in one place and secure. Finely woven deluxe lanyard for superior strength and lasts longer against wear-and-tear.', 'lanyard.jpg', 580, 6.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL default 'user',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Pranav', 'Yadav', 'UOIT', 'Oshawa', 292929, 'pranav.yadav@uoit.net', 'user', 'user'),
(2, 'Admin', 'Admin', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;