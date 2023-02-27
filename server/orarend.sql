-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 27. 09:23
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `orarend`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csengetesek`
--

CREATE TABLE `csengetesek` (
  `id` int(11) NOT NULL,
  `main_csengetes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csutortok`
--

CREATE TABLE `csutortok` (
  `id` int(11) NOT NULL,
  `tantargy` varchar(50) NOT NULL,
  `csengetes` varchar(50) NOT NULL,
  `tanar` varchar(50) NOT NULL,
  `osztaly` varchar(50) NOT NULL,
  `terem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hetfo`
--

CREATE TABLE `hetfo` (
  `id` int(11) NOT NULL,
  `tantargy` varchar(50) NOT NULL,
  `csengetes` varchar(50) NOT NULL,
  `tanar` varchar(50) NOT NULL,
  `osztaly` varchar(50) NOT NULL,
  `terem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kedd`
--

CREATE TABLE `kedd` (
  `id` int(11) NOT NULL,
  `tantargy` varchar(50) NOT NULL,
  `csengetes` varchar(50) NOT NULL,
  `tanar` varchar(50) NOT NULL,
  `osztaly` varchar(50) NOT NULL,
  `terem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztalyok`
--

CREATE TABLE `osztalyok` (
  `id` int(11) NOT NULL,
  `main_osztaly` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pentek`
--

CREATE TABLE `pentek` (
  `id` int(11) NOT NULL,
  `tantargy` varchar(50) NOT NULL,
  `csengetes` varchar(50) NOT NULL,
  `tanar` varchar(50) NOT NULL,
  `osztaly` varchar(50) NOT NULL,
  `terem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerda`
--

CREATE TABLE `szerda` (
  `id` int(11) NOT NULL,
  `tantargy` varchar(50) NOT NULL,
  `csengetes` varchar(50) NOT NULL,
  `tanar` varchar(50) NOT NULL,
  `osztaly` varchar(50) NOT NULL,
  `terem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanarok`
--

CREATE TABLE `tanarok` (
  `id` int(11) NOT NULL,
  `main_tanar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tantargyak`
--

CREATE TABLE `tantargyak` (
  `id` int(11) NOT NULL,
  `main_tantargy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` int(11) NOT NULL,
  `main_terem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csengetesek`
--
ALTER TABLE `csengetesek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `csutortok`
--
ALTER TABLE `csutortok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tantargy` (`tantargy`),
  ADD KEY `csengetes` (`csengetes`),
  ADD KEY `tanar` (`tanar`),
  ADD KEY `osztaly` (`osztaly`),
  ADD KEY `terem` (`terem`);

--
-- A tábla indexei `hetfo`
--
ALTER TABLE `hetfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tantargy` (`tantargy`),
  ADD KEY `csengetes` (`csengetes`),
  ADD KEY `tanar` (`tanar`),
  ADD KEY `osztaly` (`osztaly`),
  ADD KEY `terem` (`terem`);

--
-- A tábla indexei `kedd`
--
ALTER TABLE `kedd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tantargy` (`tantargy`),
  ADD KEY `csengetes` (`csengetes`),
  ADD KEY `tanar` (`tanar`),
  ADD KEY `osztaly` (`osztaly`),
  ADD KEY `terem` (`terem`);

--
-- A tábla indexei `osztalyok`
--
ALTER TABLE `osztalyok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_osztaly` (`main_osztaly`);

--
-- A tábla indexei `pentek`
--
ALTER TABLE `pentek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tantargy` (`tantargy`),
  ADD KEY `csengetes` (`csengetes`),
  ADD KEY `tanar` (`tanar`),
  ADD KEY `osztaly` (`osztaly`),
  ADD KEY `terem` (`terem`);

--
-- A tábla indexei `szerda`
--
ALTER TABLE `szerda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tantargy` (`tantargy`),
  ADD KEY `csengetes` (`csengetes`),
  ADD KEY `tanar` (`tanar`),
  ADD KEY `osztaly` (`osztaly`),
  ADD KEY `terem` (`terem`);

--
-- A tábla indexei `tanarok`
--
ALTER TABLE `tanarok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_tanar` (`main_tanar`);

--
-- A tábla indexei `tantargyak`
--
ALTER TABLE `tantargyak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_tantargy` (`main_tantargy`);

--
-- A tábla indexei `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_terem` (`main_terem`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csengetesek`
--
ALTER TABLE `csengetesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `csutortok`
--
ALTER TABLE `csutortok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `hetfo`
--
ALTER TABLE `hetfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kedd`
--
ALTER TABLE `kedd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `osztalyok`
--
ALTER TABLE `osztalyok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `pentek`
--
ALTER TABLE `pentek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `szerda`
--
ALTER TABLE `szerda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tanarok`
--
ALTER TABLE `tanarok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tantargyak`
--
ALTER TABLE `tantargyak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `termek`
--
ALTER TABLE `termek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
