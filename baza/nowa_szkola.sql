-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 08:50 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szkola`
--

-- --------------------------------------------------------

--
-- Table structure for table `klasa`
--

CREATE TABLE `klasa` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(2) CHARACTER SET utf8 NOT NULL,
  `il_uczniow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `klasa`
--

INSERT INTO `klasa` (`id`, `nazwa`, `il_uczniow`) VALUES
(1, '1a', 28),
(2, '1b', 30),
(3, '2a', 25),
(4, '2b', 29);

-- --------------------------------------------------------

--
-- Table structure for table `uczen`
--

CREATE TABLE `uczen` (
  `id` int(2) NOT NULL DEFAULT '0',
  `nazwisko` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `imie` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `miejsce_urodzenia` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `id_klasy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uczen`
--

INSERT INTO `uczen` (`id`, `nazwisko`, `imie`, `miejsce_urodzenia`, `id_klasy`) VALUES
(1, 'Kluska', 'Zenon', 'Wrocław', 1),
(2, 'Zawada', 'Zbigniew', 'Oleśnica', 1),
(3, 'Cap', 'Antoni', 'Trzebnica', 2),
(4, 'Kowalski', 'Sebastian', 'Wrocław', 3),
(5, 'Stasiak', 'Maciej', 'Trzebnica', 5),
(6, 'Kaczmarek', 'Marta', 'Oleśnica', 4),
(7, 'Kowalski', 'Jan', 'Wrocław', 4),
(8, 'Polak', 'Maria', 'Trzebnica', 2),
(9, 'Michalak', 'Paweł', 'Oleśnica', 3),
(10, 'Góral', 'Łukasz', 'Trzebnica', 4),
(11, 'Nowak', 'Jan', 'Oleśnica', 4),
(12, 'Kowalski', 'Łukasz', 'Wrocław', 1),
(13, 'Markiewicz', 'Damian', 'Wrocław', 3),
(14, 'Baryła', 'Zenon', 'Oława', 2),
(15, 'Gota', 'Anna', 'Oleśnica', 4),
(16, 'Małek', 'Justyna', 'Wrocław', 1),
(17, 'Rysik', 'Magda', 'Oława', 3),
(18, 'Szary', 'Tomasz', 'Trzebnica', 1),
(19, 'Bury', 'Łukasz', 'Oława', 3),
(20, 'Rudy', 'Wojciech', 'Wrocław', 2),
(21, 'Kowalska', 'Janina', 'Oława', 2),
(22, 'Nowak', 'Jan', 'Wrocław', 1),
(23, 'Kowalik', 'Stanisława', 'Oława', 3),
(24, 'Nowakowski', 'Grzegorz', 'Oleśnica', 1),
(25, 'Kwiatkowska', 'Jolanta', 'Oława', 2),
(26, 'Konarski', 'Krzysztof', 'Oława', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wychowawca`
--

CREATE TABLE `wychowawca` (
  `id` int(11) NOT NULL DEFAULT '0',
  `imie` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nazwisko` varchar(30) CHARACTER SET utf8 NOT NULL,
  `id_klasy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wychowawca`
--

INSERT INTO `wychowawca` (`id`, `imie`, `nazwisko`, `id_klasy`) VALUES
(1, 'Jan', 'Bogucki', 1),
(2, 'Michał', 'Więcek', 2),
(3, 'Bożena', 'Michalska', 3),
(4, 'Krystyna', 'Piętkiewicz', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wychowawca`
--
ALTER TABLE `wychowawca`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
