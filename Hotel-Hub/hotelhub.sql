-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 02:06 PM
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
-- Database: `hotelhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `NIC` varchar(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(202) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`NIC`, `Name`, `Email`, `Mobile`, `Password`) VALUES
('200210504485', 'Arish Kanth', 'arish77kanth@gmail.com', '0778581244', 'Admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `NIC` varchar(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(202) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`NIC`, `Name`, `Email`, `Mobile`, `Password`) VALUES
('200210704425', 'Arish Kanth', 'arish77kanth@gmail.com', '0778581244', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `HID` varchar(100) NOT NULL,
  `HName` varchar(200) NOT NULL,
  `CName` varchar(200) NOT NULL,
  `Feedback` varchar(1000) NOT NULL,
  `Rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `HID` varchar(20) NOT NULL,
  `HotelName` varchar(200) NOT NULL,
  `HotelLocation` varchar(202) NOT NULL,
  `HotelSmallDes` varchar(200) NOT NULL,
  `HotelDes` varchar(500) NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`HID`, `HotelName`, `HotelLocation`, `HotelSmallDes`, `HotelDes`, `Image`) VALUES
('01', 'Cinnamon Grand Colombo', '77 Galle Road, Colombo 00300 Sri Lanka', '\"The staff are incredible and provide superb service, the rooms are luxurious, their restaurants serve delicious food and the location is great. Highly recommended!\"', 'Just 35 kilometers from the Bandaranaike International Airport (BIA), luxurious Cinnamon Grand Colombo is located in the heart of Colombo City’s business, shopping and entertainment center. Elegantly designed, spacious rooms at the Cinnamon Grand offer a wide range of in-room amenities, king size beds, and a pillow menu to ensure your comfort and pleasure. All rooms feature carefully attended-to bathrooms and toiletries, large flat screen TVs, a mini bar, and WiFi access. The hotel’s 14 restaura', '../Hotel_img/01.jpg'),
('02', 'Taj Samudra, Colombo', '25 Galle Face Center Road, Colombo 00300 Sri Lanka', 'Our stay became truly memorable, all thanks to Mr. Inshaaf, who went above and beyond by graciously upgrading my father from a Deluxe room to the luxurious Club room.', 'Taj Samudra Colombo is located in the heart of the Colombo city, overlooking the azure waters of the Indian Ocean. The most stylish Executive category rooms are by far the best in design and comfort in the city of Colombo. Taj Samudra offers the following choice of food & beverage outlets - Ports of Call - all day dining restaurant serving Buffet for breakfast, lunch and dinner and a choice of A la carte specialties Navratna - Specialty Indian Restaurant catering to North Indian flavors, Golden ', '../Hotel_img/02.jpeg'),
('03', 'The Kingsbury Hotel', '48 Janadhipathi Mawatha Colombo 1, Colombo 00100 Sri Lanka', '\"The staff was welcoming and attentive, the room was luxurious and well-maintained, and the amenities were top-notch.\"', 'Located in the capital city of Colombo, just 35 km away from the Bandaranaike International Airport, The Kingsbury Hotel is the most sought-after five-star hotel, ideal for both business and leisure travelers. With easy access to One Galle Face shopping mall, Colombo City Centre and walking distance to Galle Face Green, World Trade Centre and the Dutch Hospital Precinct, The Kingsbury Hotel in Colombo guarantees a luxurious and comfortable stay. The hotel boasts 229 spacious rooms and suites wit', '../Hotel_img/03.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`HID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
