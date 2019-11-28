-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 28. 11 2019 kl. 13:30:28
-- Serverversion: 10.3.16-MariaDB
-- PHP-version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mindb`
--

DELIMITER $$
--
-- Procedurer
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `RIOT` ()  BEGIN
DELETE FROM orders WHERE addresses_id = 1;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addresses`
--

CREATE TABLE `addresses` (
  `Addr_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `addresses`
--

INSERT INTO `addresses` (`Addr_id`, `user_id`, `address`, `city`, `zipcode`, `country`) VALUES
(1, 1, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(2, 2, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(3, 3, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(4, 4, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(5, 5, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(6, 6, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(7, 7, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(8, 8, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(9, 9, 'Stadium Alle', 'Viborg', '8800', 'Denmark'),
(10, 10, 'Stadium Alle', 'Viborg', '8800', 'Denmark');

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `orderlist`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `orderlist` (
`username` varchar(255)
,`Prod_name` varchar(255)
,`Prod_Price` varchar(255)
,`address` varchar(255)
,`zipcode` varchar(255)
,`city` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `Prod_id` int(11) DEFAULT NULL,
  `addresses_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `orders`
--

INSERT INTO `orders` (`order_id`, `Prod_id`, `addresses_id`, `user_id`) VALUES
(1, 2, 3, 4),
(2, 4, 4, 5),
(3, 6, 1, 3),
(4, 2, 7, 8),
(5, 7, 3, 10);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE `products` (
  `Prod_id` int(11) NOT NULL,
  `Prod_name` varchar(255) DEFAULT NULL,
  `Prod_description` varchar(255) DEFAULT NULL,
  `Prod_stock` varchar(255) DEFAULT NULL,
  `Prod_Price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`Prod_id`, `Prod_name`, `Prod_description`, `Prod_stock`, `Prod_Price`) VALUES
(1, 'Longsword', 'Its very long', '5', '350'),
(2, 'B.F.Sword', 'A Sword from your boyfriend', '1', '1300'),
(3, 'Needlessly Large Rod', 'A long name is necessary!', '10', '1250'),
(4, 'Refillable Potion', 'Fill me up one more time!', '5', '250'),
(5, 'Luden\'s Ekko', 'You heard that? heard that? that? at?', '20', '3200'),
(6, 'Nashor\'s tooth', 'When was your last time brushed your teeth Nashor?', '30', '3000'),
(7, 'Tear Of The Goddess', 'A little bit salty', '50', '850'),
(8, 'Timeworn Ancient Coin', 'Use your coin to buy my coin', '45', '400'),
(9, 'Last Whisper', 'STFU!!', '30', '1450'),
(10, 'Morellonomicon', 'if you can pronounce it i will give it to you for free!', '1', '3000');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `test`
--

CREATE TABLE `test` (
  `id` int(6) UNSIGNED NOT NULL,
  `navn` varchar(30) NOT NULL,
  `efternavn` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `opdato` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `lost_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `first_name`, `lost_name`) VALUES
(1, 'Malekith', 'mk22@gmail.com', 'Malekith', 'TheWitchKing'),
(2, 'Vlad', 'vv@sylv.com', 'Vlad', 'Von Carstein'),
(3, 'randomguy1', 'random@random.com', 'the', 'hound'),
(4, 'randomguy2', 'random1@random.com', 'iron', 'man'),
(5, 'randomguy3', 'random2@random.com', 'spider', 'man'),
(6, 'randomguy4', 'random3@random.com', 'cyka', 'blyt'),
(7, 'randomguy5', 'random4@random.com', 'joe', 'mama'),
(8, 'randomguy6', 'random5@random.com', 'ligma', 'balz'),
(9, 'randomguy7', 'random6@random.com', 'hardstuck', 'dia4'),
(10, 'randomguy8', 'random7@random.com', 'preseason', 'tryharder');

-- --------------------------------------------------------

--
-- Struktur for visning `orderlist`
--
DROP TABLE IF EXISTS `orderlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderlist`  AS  select `users`.`username` AS `username`,`products`.`Prod_name` AS `Prod_name`,`products`.`Prod_Price` AS `Prod_Price`,`addresses`.`address` AS `address`,`addresses`.`zipcode` AS `zipcode`,`addresses`.`city` AS `city` from ((`users` join `products`) join `addresses`) ;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`Addr_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks for tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Prod_id`);

--
-- Indeks for tabel `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `test`
--
ALTER TABLE `test`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`);

--
-- Begrænsninger for tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
