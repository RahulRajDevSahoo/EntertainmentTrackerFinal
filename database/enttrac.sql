-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enttrac`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_type` varchar(255) NOT NULL, 
  `noOfRatings` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_brand2` varchar(200),
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_studio` varchar(255) NOT NULL,
  `item_format` varchar(255) NOT NULL, 
  `item_synopsis` varchar(255) NOT NULL,
  `item_release` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`,`item_type`,`noOfRatings`, `item_brand`, `item_brand2`,`item_name`, `item_price`, `item_image`,`item_studio`, `item_format` , `item_synopsis`,`item_release`, `item_register`) VALUES
(1,'Show',626734,'Drama', 'Supernatural', 'Anohana: The Flower We Saw That Day', 8.45, './assets/shows/Anohana.jpg', 'A-1 Pictures' ,'Anime','something','Apr 15, 2011 to Jun 24, 2011', '2020-03-28 11:08:57'), -- NOW()
(2,'Show',324242,'Mystery','', 'Dark', 9.62, './assets/shows/Dark.jpg','Studio Feels' ,'Web Series', 'something','1 December 2017 to 27 June 2020',  '2020-03-28 11:08:57'),
(3,'Show',345455,'Dark','Supernatural', 'Death Note', 6.54, './assets/shows/DeathNote.jpg','A-1 Pictures' ,'Anime', 'something','Oct 4, 2006 to Jun 27, 2007', '2020-03-28 11:08:57'),
(4,'Show',767788, 'Comedy','', 'The Big Bang Theory', 8.88, './assets/shows/TheBigBangTheory.jpg','Shaft' , 'TV', 'something','24 September 2007 to 16 May 2019', '2020-03-28 11:08:57'),
(5,'Show',123443, 'Shounen','', 'Friends', 4.53, './assets/shows/Friends.jpg','Bones' ,'Anime', 'something','N/A','2020-03-28 11:08:57'),
(6,'Show',234235, 'Mystery','Thriller', 'La Casa De Papel', 9.54, './assets/shows/LaCasaDePapel.jpg','Madhouse' ,'Anime', 'something','2 May 2017 to ----','2020-03-28 11:08:57'),
(7,'Show',874545,  'Comedy','', 'The Office', 9.92, './assets/shows/TheOffice.jpg','Production I.G' ,'Anime', 'something','24 March 2005 to 16 May 2013','2020-03-28 11:08:57'),
(8,'Show',279334, 'Romance','', 'The Simpsons', 3.45, './assets/shows/TheSimpsons.jpg','CloverWorks' ,'Anime', 'something','17 December 1989 to ----','2020-03-28 11:08:57'),
(9,'Show',895945,  'School','', 'Lost', 4.56, './assets/shows/Lost.jpg','Studio Lol' ,'Anime', 'something','22 September 2004 to May 23, 2010','2020-03-28 11:08:57'),
(10,'Show',374757,  'School', '','Phineas and Ferb',5.67, './assets/shows/PhineasAndFerb.jpg','Studio Cool' ,'Anime','something','August 17, 2007 to June 12, 2015', '2020-03-28 11:08:57'),
(11,'Show',454534,  'Action','Thriller', 'Star Wars', 7.68, './assets/shows/StarWars.jpg','Studio Sad' ,'Anime', 'something','May 25, 1977 to ----','2020-03-28 11:08:57'),
(12,'Show',7898867,  'Action','Thriller', 'Erased', 8.98, './assets/shows/Erased.jpg','Studio Happy' ,'Anime','something','Jan 8, 2016 to Mar 25, 2016', '2020-03-28 11:08:57'),
(13,'Show',6553553, 'Shounen','', 'Hajime no Ippo', 6.66, './assets/shows/HajimeNoIppo.jpg','Studio Disney' ,'Anime','something','Oct 4, 2000 to Mar 29, 2014', '2020-03-28 11:08:57'),
(14,'Movie',1032017, 'Drama','Romance','Kimi No Na Wa',9.00,'./assets/movies/KimiNoNaWa.jpg','CoMix Wave Films','Anime','something','Aug 26, 2016','2020-03-28 11:08:57'),
(15,'Movie',133455, 'Action','Thriller','6 Underground',6.1,'./assets/movies/6Underground.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(16,'Movie',133455, 'Action','Thriller','Arjun Reddy',6.1,'./assets/movies/ArjunReddy.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(17,'Movie',133455, 'Action','Thriller','Avengers:Endgame',6.1,'./assets/movies/AvengersEndgame.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(18,'Movie',133455, 'Mystery','Thriller','Chernobyl',6.1,'./assets/movies/Chernobyl.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(19,'Movie',133455, 'Action','Thriller','Dangal',6.1,'./assets/movies/Dangal.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(20,'Movie',133455, 'Action','Thriller','Ford vs Ferrari',6.1,'./assets/movies/FordvsFerrari.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(21,'Movie',133455, 'Action','Thriller','Castaway',6.1,'./assets/movies/CastAway.jpg','Skydance Media','Netflix','something','N/A','2020-03-28 11:08:57'),
(22,'Movie',133455, 'Action','Thriller','Joker',6.1,'./assets/movies/Joker.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(23,'Movie',133455, 'Action','Thriller','Mission Mangal',6.1,'./assets/movies/MissionMangal.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(24,'Movie',133455, 'Action','Thriller','Ode to My Father',6.1,'./assets/movies/OdeToMyFather.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(25,'Movie',133455, 'Action','Shounen','Parasite',6.1,'./assets/movies/Parasite.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(26,'Movie',133455, 'Comedy','Romance','Stand By Me Doraemon',6.1,'./assets/movies/StandByMeDoraemon.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(27,'Movie',133455, 'Shounen','Thriller','Suzumiya Haruhi no Shoushitsu',6.1,'./assets/movies/SuzumiyaHaruhinoShoushitsu.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(28,'Movie',133455, 'Action','Thriller','The Irishman',6.1,'./assets/movies/TheIrishman.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(29,'Movie',133455, 'Action','Thriller','1917',6.1,'./assets/movies/1917.jpg','Skydance Media','Netflix','something','13 December 2019','2020-03-28 11:08:57'),
(30,'Song',7845464, 'EDM','','Alone',7.8,'./assets/songs/Alone.jpg','Alan Walker','Song','something','13 December 2019','2020-03-28 11:08:57'),
(31,'Song',7845464, 'EDM','','Darkside',8.1,'./assets/songs/Darkside.jpg','Alan Walker','Song','something','13 December 2019','2020-03-28 11:08:57'),
(32,'Song',7845464, 'EDM','','Faded',9.4,'./assets/songs/Faded.jpg','Alan Walker','Song','something','13 December 2019','2020-03-28 11:08:57'),
(33,'Song',7845464, 'Bollywood','','Galti Se Mistake',8.8,'./assets/songs/GaltiSeMistake.jpg','Arijit Singh','Song','something','13 December 2019','2020-03-28 11:08:57'),
(34,'Song',7845464, 'Bollywood','','Illahi',8.5,'./assets/songs/Illahi.jpg','Arijit Singh','Song','something','13 December 2019','2020-03-28 11:08:57'),
(35,'Song',7845464, 'Bollywood','','Kabira',8.3,'./assets/songs/Kabira.jpg','Alan Walker','Song','something','13 December 2019','2020-03-28 11:08:57'),
(36,'Song',7845464, 'Tollywood','','Maate Vinaduga',9.1,'./assets/songs/MaateVinaduga.jpg','Sid Sriram','Song','something','13 December 2019','2020-03-28 11:08:57'),
(37,'Song',7845464, 'Bollywood','','Phir Wahi',6.5,'./assets/songs/PhirWahi.jpg','Arijit Singh','Song','something','N/A','2020-03-28 11:08:57'),
(38,'Song',7845464, 'Hip-Hop','','The Bigger Picture',7.5,'./assets/songs/TheBiggerPicture.jpg','Lil Baby','Song','something','13 December 2019','2020-03-28 11:08:57');






-- --------------------------------------------------------
--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Firstname`, `Lastname`, `Gender`, `Email`, `Password`) VALUES
(1, 'Rahul', 'Sahoo', 'Male', 'rahulatshaker@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Sandeep', 'Sah', 'Male', 'sandsah@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;



-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;