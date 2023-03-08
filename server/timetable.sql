-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 08. 11:09
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
-- Adatbázis: `timetable`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csengetesek`
--

CREATE TABLE `csengetesek` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `ora` int(11) NOT NULL,
  `be` time NOT NULL,
  `ki` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `csengetesek`
--

INSERT INTO `csengetesek` (`id`, `ora`, `be`, `ki`) VALUES
('6102bbc9-d610-4f30-9d0a-bcbb93fc9b31', 1, '08:00:00', '08:45:00'),
('0aa6a58a-184e-4107-90f4-b9e52269d521', 2, '08:55:00', '09:40:00'),
('03343eaf-d64f-47a6-95e7-1d3eaea9d5bf', 3, '09:50:00', '10:35:00'),
('737e1b44-4981-485a-9936-643f76a5e153', 4, '10:45:00', '11:30:00'),
('9837f854-01bd-4bf9-b8f4-cd71e1518d25', 5, '11:40:00', '12:25:00'),
('3264266c-9fe5-4430-b10f-c1213aeaa6fe', 6, '12:35:00', '13:20:00'),
('23418a3e-32b1-47dc-8663-6dd4c69b3516', 7, '13:25:00', '14:10:00'),
('d7d16a2f-d12a-464a-aa68-f916fad8eb63', 8, '14:15:00', '15:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csutortok`
--

CREATE TABLE `csutortok` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tantargy` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `csengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `osztaly` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `terem` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tanar` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hetfo`
--

CREATE TABLE `hetfo` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tantargy` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `csengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `osztaly` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `terem` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tanar` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kedd`
--

CREATE TABLE `kedd` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tantargy` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `csengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `osztaly` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `terem` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tanar` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztalyok`
--

CREATE TABLE `osztalyok` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `osztaly_neve` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztalyok`
--

INSERT INTO `osztalyok` (`id`, `osztaly_neve`) VALUES
('a8dfe712-a3a1-46ca-823e-1f0f52894ab6', '8/A'),
('a8eceb45-0938-48ab-a2ef-b042fe11a5db', '8/B'),
('d685f709-80f9-4a25-b4fc-1f9f1515e94f', '9/A'),
('e7c826f4-7b11-41d7-99cf-57ddc2ebe384', '9/B'),
('d6a51ef3-ea29-4687-86c5-5d474bf29276', '10/A'),
('722d340f-b52c-4fd6-af46-6c9be36f8c6a', '10/B'),
('1d036c20-3d64-4386-a67e-7a9cd0c1a03f', '11/A'),
('a5d1859e-124f-425b-952f-c5cb18668036', '11/B'),
('00dfdd54-36a3-424d-8284-cd8dd665d041', '12/A'),
('cc4b01c6-933a-4992-8b29-6388493b6906', '12/B'),
('ef410c4a-dd74-4468-967b-c803e5125e87', '13/A'),
('b6ac1d4c-4a66-48e5-812b-4bbeef237340', '13/B');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pentek`
--

CREATE TABLE `pentek` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tantargy` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `csengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `osztaly` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `terem` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tanar` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerda`
--

CREATE TABLE `szerda` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tantargy` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `csengetes` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `osztaly` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `terem` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `tanar` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanarok`
--

CREATE TABLE `tanarok` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `nev` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tanarok`
--

INSERT INTO `tanarok` (`id`, `nev`) VALUES
('f3f9903e-555c-402e-8893-8b4a1fcb1d63', 'Faur István'),
('c7999aca-d26e-4815-9e78-b29513822d58', 'Banka-Török Edit'),
('e9ffb0d9-7dcc-4ffd-89cc-43b7ba63e391', 'Sebők Renáta'),
('6e55c8de-4d45-4850-95c5-74d9a2389a5d', 'Mácsai László'),
('efaf0bf2-28bd-42c2-afc2-157874deaccb', 'Huszka Adrián Gábor'),
('c053452b-c2d1-4156-80e2-6dad9e3238a8', 'Bagi László'),
('2fc855f7-7e05-49d0-9b89-e3e95ffcca72', 'Szilágyi Anna'),
('5ed32fd5-738f-4089-bbdf-f5d51233d88a', 'Ágoston Csaba'),
('c0d3c743-00e5-47ea-8429-68e233d18c1c', 'Vigh Attila ');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tantargyak`
--

CREATE TABLE `tantargyak` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `nev` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `tantargyak`
--

INSERT INTO `tantargyak` (`id`, `nev`) VALUES
('1f23f505-73ca-4d8c-88c0-207b69da872e', 'Fizika'),
('daf15e10-5483-4ea0-886c-be9a6351b9e7', 'Matematika'),
('506ddbf4-cd53-42a6-a3a6-3f86ac6f849e', 'Irodalom'),
('fc777440-818e-4881-87be-b5256280afc3', 'Angol Nyelv'),
('d203f6b6-2a81-4777-84d7-ec485aab3dea', 'Történelem'),
('a589aeeb-6953-4020-a054-dace8b8c227e', 'Testnevelés'),
('56ee52f0-1bb5-42af-9286-eaf2ab3709a1', 'Asztali Alkalmazás Fejlesztés'),
('14f2770a-6c49-467d-a18c-eb424fa0217e', 'PHP Programozás'),
('f236351c-17eb-4405-87e3-b7b8ca3fd48b', 'IKT Projektmunka II'),
('867c3427-1188-4615-96d5-aaae3e25cc0b', 'Webprogramozás'),
('98547f82-ab4e-4ced-8221-ec85b394e282', 'Adatbazis-kezelés I.'),
('84d499a3-d2db-4bf0-97cb-29e7886de3b1', 'Szakmai Angol'),
('4cca1ea7-94e8-4e9d-9f48-1c1e6bc658f3', 'Osztályfőnöki');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `neve` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `neve`) VALUES
('87186dfc-da65-41ec-bc1b-5e7f0d587d75', 'I.'),
('eb79534e-572d-4f0d-9c17-e2731912d034', 'II.'),
('a47417f9-255e-4b28-bb32-e10a08ea7f8c', 'III.'),
('7fdd5125-ffe1-4f1c-9870-65361a1acc14', 'IV.'),
('e40f8d17-4d61-40e4-8402-42485b14dae3', 'V.'),
('020ce157-7c61-4077-9108-607c0c9e7956', 'VI.'),
('e908f68c-ee1f-42c9-b92a-5b8482f85eba', 'Szt. I.'),
('ec7ec604-410b-47eb-9b46-bcfc3cb25228', 'Szt. II.'),
('84f42d58-5b38-4805-ac4c-02ed440ea519', 'Szt. III.'),
('863039de-1039-4fd1-97b6-17b11f72b281', 'Szt. IV.'),
('b8e5899a-20f8-46c3-ac6c-6014ab72a0d9', 'Szt. V.'),
('8d3e9d8d-d83d-4ea7-8b31-c40169fa1145', 'Szt. VI.'),
('99ecd997-8863-43e9-963c-7be2c264c601', 'Szt. VII.'),
('b43475e9-716d-4152-8cca-9899057c2997', 'Kajtor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
