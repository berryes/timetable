-- phpMyAdmin SQL Dump
-- version 5.2.1-1.fc37
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2023 at 11:25 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adatbazis`
--

-- --------------------------------------------------------

--
-- Table structure for table `csengetesek`
--

CREATE TABLE `csengetesek` (
  `id` text NOT NULL,
  `ora` int NOT NULL,
  `be` time NOT NULL,
  `ki` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `csutortok`
--

CREATE TABLE `csutortok` (
  `id` text NOT NULL,
  `tantargy` text NOT NULL,
  `csengetes` text NOT NULL,
  `osztaly` text NOT NULL,
  `terem` text NOT NULL,
  `tanar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hetfo`
--

CREATE TABLE `hetfo` (
  `id` text NOT NULL,
  `tantargy` text NOT NULL,
  `csengetes` text NOT NULL,
  `osztaly` text NOT NULL,
  `terem` text NOT NULL,
  `tanar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kedd`
--

CREATE TABLE `kedd` (
  `id` text NOT NULL,
  `tantargy` text NOT NULL,
  `csengetes` text NOT NULL,
  `osztaly` text NOT NULL,
  `terem` text NOT NULL,
  `tanar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `osztalyok`
--

CREATE TABLE `osztalyok` (
  `id` int NOT NULL,
  `main_osztaly` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pentek`
--

CREATE TABLE `pentek` (
  `id` text NOT NULL,
  `tantargy` text NOT NULL,
  `csengetes` text NOT NULL,
  `osztaly` text NOT NULL,
  `terem` text NOT NULL,
  `tanar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `szerda`
--

CREATE TABLE `szerda` (
  `id` text NOT NULL,
  `tantargy` text NOT NULL,
  `csengetes` text NOT NULL,
  `osztaly` text NOT NULL,
  `terem` text NOT NULL,
  `tanar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanarok`
--

CREATE TABLE `tanarok` (
  `id` text NOT NULL,
  `nev` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tantargyak`
--

CREATE TABLE `tantargyak` (
  `id` text NOT NULL,
  `nev` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termek`
--

CREATE TABLE `termek` (
  `id` text NOT NULL,
  `neve` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `osztalyok`
--
ALTER TABLE `osztalyok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_osztaly` (`main_osztaly`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `osztalyok`
--
ALTER TABLE `osztalyok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
