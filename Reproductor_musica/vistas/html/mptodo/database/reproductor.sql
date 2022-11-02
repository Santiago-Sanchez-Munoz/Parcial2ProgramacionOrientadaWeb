-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2022 a las 03:16:53
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reproductor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `music_list`
--

CREATE TABLE `music_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `audio_path` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `music_list`
--

INSERT INTO `music_list` (`id`, `title`, `description`, `audio_path`, `image_path`, `date_created`, `date_updated`) VALUES
(9, 'Statement - NEFFEX', 'PISTA 2', './audio/Statement_-_NEFFEX.mp3?v=1653181569', './images/music3.jpg?v=1653181510', '2022-05-21 20:05:10', '2022-05-21 20:06:09'),
(10, 'Get Through - NEFFEX', 'Pista 2', './audio/Get_Through_-_NEFFEX.mp3?v=1653181899', './images/music2.jpg?v=1653181899', '2022-05-21 20:11:39', '2022-05-21 20:15:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `music_list`
--
ALTER TABLE `music_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `music_list`
--
ALTER TABLE `music_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
