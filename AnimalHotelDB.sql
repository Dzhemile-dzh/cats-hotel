-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2018 at 06:05 AM
-- Server version: 10.1.23-MariaDB-9+deb9u1
-- PHP Version: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AnimalHotelDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`ID`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `Subject` text NOT NULL,
  `Message` text NOT NULL,
  `Datereceived` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ID`, `Email`, `Subject`, `Message`, `Datereceived`) VALUES
(10, 'IvelinIvelinov@gmail.com', 'Проблем с кучето', 'dasdasdas', '2018-08-29 19:19:27'),
(11, 'RadoRadov@gmail.com', 'Обслужване за специфични животни', 'dasdasd', '2018-08-29 19:21:43'),
(12, 'TitoTitov@gmail.com', 'Как да се регистрирам', '465464', '2018-08-29 19:22:14'),
(13, 'BoikoBorisov@gmail.com', 'Цецка мога ли да я пратя там', 'dasdasdasd', '2018-08-29 19:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`) VALUES
(1, 'none'),
(3, 'Иван Георгиев'),
(4, 'Георги Димитров');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_services`
--

CREATE TABLE `hotel_services` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Type` tinyint(1) NOT NULL,
  `Time` tinyint(1) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_services`
--

INSERT INTO `hotel_services` (`ID`, `Name`, `Price`, `Type`, `Time`, `Description`) VALUES
(1, 'Занималня', 3.5, 0, 1, 'Ние ще се грижим за вашият домашен любимец, като изпълним ежедневието му с игри, разходки, обучения. Всичко това ще бъде осигурено от нашият екип високо квалифицирани треньори. '),
(2, 'Нощувка', 15, 0, 1, 'Kingdom Pets разполага с различен тип стаи, които включват много и разнообразни екстри. Имате възможност да попълните екстрите, които да бъдат включени за целият период на престои.'),
(3, 'Обучение', 10, 0, 1, 'Послушното куче е радост за всеки стопанин. Ние работим за изграждането на здрава връзка между Вас и Вашия любимец.'),
(4, 'Груминг (Фризьорски салон)', 8, 0, 1, 'Различните типове козина или перушина изискват различни манипулации, така че да се осигурят възможно най-добрите грижи за Вашия домашен любимец.'),
(5, 'Медицински прегледи', 15, 0, 1, 'Доброто здраве и качеството на живот на вашите любимци в дългосрочен план зависи в голяма степен от редовните профилактични прегледи. Те ще ни позволят да засечем симптомите преди заболяването да е причинило трайни и често необратими последици.'),
(6, 'Храна клас А', 20, 1, 1, 'Качествена храна'),
(7, 'Храна клас Б', 15, 1, 1, 'Среднокачествна храна'),
(8, 'Храна клас C', 10, 1, 1, 'Некачествена храна ако искате да се отървете от домашния любимец'),
(9, 'Къпане', 5, 1, 1, 'Да мириша на пор след това'),
(10, 'Мини басейн', 10, 1, 1, 'Дано да не може да плува'),
(11, 'Разходка', 20, 1, 1, 'Да се разходя малко'),
(12, 'Преглед', 10, 1, 1, 'Ей ся ши му бръкна в задника'),
(13, 'Игри', 100, 1, 1, 'Пускам компа и играя');

-- --------------------------------------------------------

--
-- Table structure for table `pet_details`
--

CREATE TABLE `pet_details` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Breed` varchar(100) NOT NULL,
  `Passport` varchar(100) NOT NULL,
  `EmployeeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pet_details`
--

INSERT INTO `pet_details` (`ID`, `UserID`, `Name`, `Age`, `Type`, `Breed`, `Passport`, `EmployeeID`) VALUES
(2, 1, '', 0, '', '', '', 1),
(6, 3, 'Аксел', 11, 'Куче', 'самоед', 'F32KL32421', 4),
(7, 14, '', 0, '', '', '', 1),
(8, 15, '', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(11) NOT NULL,
  `usernameFK` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `RoomID` int(11) NOT NULL,
  `Deposit` tinyint(1) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`ID`, `usernameFK`, `StartDate`, `EndDate`, `RoomID`, `Deposit`, `Status`) VALUES
(1, 'IGeorgiev48', '2018-08-22', '2018-08-24', 1, 0, 0),
(11, 'ppenkov56', '2018-09-19', '2018-09-21', 2, 0, 0),
(12, 'TTest44', '2018-09-10', '2018-09-21', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_services`
--

CREATE TABLE `reservation_services` (
  `reservationID` int(11) NOT NULL,
  `servicesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `ID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `TypeID` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `BasePrice` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`ID`, `Name`, `TypeID`, `price`, `BasePrice`) VALUES
(1, '101', 1, '10', '12'),
(2, '102', 1, '20', '13'),
(3, '103', 1, '39', '0'),
(4, '201', 2, '10', '0'),
(5, '202', 2, '10', '0'),
(6, '203', 2, '16', '0'),
(7, '204', 2, '15', '0'),
(8, '205', 2, '14', '0');

-- --------------------------------------------------------

--
-- Table structure for table `room_services`
--

CREATE TABLE `room_services` (
  `Room_ID` int(11) NOT NULL,
  `Services_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_services`
--

INSERT INTO `room_services` (`Room_ID`, `Services_ID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 3),
(4, 4),
(4, 6),
(5, 3),
(5, 4),
(5, 6),
(5, 7),
(6, 3),
(6, 7),
(7, 6),
(7, 7),
(8, 6),
(8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `ID` int(11) NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`ID`, `Type`) VALUES
(1, 'VIP'),
(2, 'Standart');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telephone` varchar(15) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Firstname`, `LastName`, `Username`, `Email`, `Telephone`, `Password`, `Enabled`) VALUES
(1, 'Admin', 'Admin', 'admin', 'admin@gmail.com', '0893475345', '$2a$08$lDnHPz7eUkSi6ao14Twuau08mzhWrL4kyZGGU5xfiGALO/Vxd5DOi', 1),
(3, 'Иван', 'Георгиев', 'IGeorgiev48', 'IGeorgiev@gmail.com', '0894527492', '$2a$10$2wz/nJTM6INJD2t.eVrTJOw.u/mFmywWf0m5fKPbqXIYAwQWK3Why', 1),
(14, 'Пенко', 'Пенков', 'ppenkov56', 'penko_95@gmail.bg', '0891586456', 'ppenkov56', 0),
(15, 'Test', 'Test', 'TTest44', 'test@gmail.com', '2795489546', 'TTest44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_authority`
--

CREATE TABLE `user_authority` (
  `user_id` int(11) NOT NULL,
  `authority_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_authority`
--

INSERT INTO `user_authority` (`user_id`, `authority_id`) VALUES
(1, 1),
(1, 2),
(3, 2),
(14, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `ID` int(11) NOT NULL,
  `usernameFK` varchar(255) NOT NULL,
  `Day` date NOT NULL,
  `ChoosingMenu` tinyint(1) NOT NULL,
  `Training` tinyint(1) NOT NULL,
  `Medical` tinyint(1) NOT NULL,
  `Breakfast` int(11) NOT NULL,
  `Lunch` int(11) NOT NULL,
  `Dinner` int(11) NOT NULL,
  `TrainingType` int(11) NOT NULL,
  `Hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`ID`, `usernameFK`, `Day`, `ChoosingMenu`, `Training`, `Medical`, `Breakfast`, `Lunch`, `Dinner`, `TrainingType`, `Hours`) VALUES
(1, 'IGeorgiev48', '2018-09-19', 1, 1, 0, 1, 3, 4, 2, 1),
(2, 'IGeorgiev48', '2018-09-20', 1, 0, 0, 1, 2, 3, 1, 2),
(3, 'IGeorgiev48', '2018-09-21', 0, 1, 1, 1, 2, 4, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hotel_services`
--
ALTER TABLE `hotel_services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pet_details`
--
ALTER TABLE `pet_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `reservation_ibfk_2` (`RoomID`),
  ADD KEY `reservation_ibfk_3` (`usernameFK`);

--
-- Indexes for table `reservation_services`
--
ALTER TABLE `reservation_services`
  ADD PRIMARY KEY (`reservationID`,`servicesID`),
  ADD KEY `serviceID` (`servicesID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `room_services`
--
ALTER TABLE `room_services`
  ADD PRIMARY KEY (`Room_ID`,`Services_ID`),
  ADD KEY `room_services_ibfk_2` (`Services_ID`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`Username`);

--
-- Indexes for table `user_authority`
--
ALTER TABLE `user_authority`
  ADD PRIMARY KEY (`user_id`,`authority_id`),
  ADD KEY `role_id` (`authority_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `usernameFK` (`usernameFK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotel_services`
--
ALTER TABLE `hotel_services`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pet_details`
--
ALTER TABLE `pet_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pet_details`
--
ALTER TABLE `pet_details`
  ADD CONSTRAINT `pet_details_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `pet_details_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`RoomID`) REFERENCES `rooms` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`usernameFK`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation_services`
--
ALTER TABLE `reservation_services`
  ADD CONSTRAINT `reservation_services_ibfk_1` FOREIGN KEY (`reservationID`) REFERENCES `reservation` (`ID`),
  ADD CONSTRAINT `reservation_services_ibfk_2` FOREIGN KEY (`servicesID`) REFERENCES `hotel_services` (`ID`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `room_type` (`ID`);

--
-- Constraints for table `room_services`
--
ALTER TABLE `room_services`
  ADD CONSTRAINT `room_services_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_services_ibfk_2` FOREIGN KEY (`Services_ID`) REFERENCES `hotel_services` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_authority`
--
ALTER TABLE `user_authority`
  ADD CONSTRAINT `user_authority_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `user_authority_ibfk_2` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`);

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_ibfk_1` FOREIGN KEY (`usernameFK`) REFERENCES `user` (`Username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
