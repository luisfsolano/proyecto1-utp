-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2021 a las 21:46:58
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `grupo_respuesta` bigint(50) NOT NULL,
  `id_pregunta` int(20) NOT NULL,
  `respuesta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `grupo_respuesta`, `id_pregunta`, `respuesta`) VALUES
(77, 163614390269, 1, '1501-2000'),
(78, 163614390269, 2, '21-30'),
(79, 163614390269, 3, 'Masculino'),
(80, 163614390269, 4, 'Panamá'),
(81, 163614390269, 22, 'de vez en cuando'),
(82, 163614390269, 22, 'ahi mas o meos'),
(83, 163614390269, 47, 'Laptop'),
(84, 163614390269, 23, ' la vida eh un ciclo'),
(85, 163614390269, 33, 'Java'),
(86, 163614390269, 33, '.Net'),
(87, 163614390269, 34, 'Invierno'),
(88, 163614390269, 37, 'Banistmo'),
(89, 163614390269, 38, '4'),
(90, 163614390269, 36, 'Los proyectos de la u no me dejaron hacer nada'),
(91, 163614390269, 42, 'Sancocho'),
(92, 163614390269, 42, 'Arroz con pollo'),
(93, 163614390269, 42, 'Tamales'),
(94, 163614390269, 27, 'Si'),
(95, 163614431171, 1, '1001-1500'),
(96, 163614431171, 2, '31-40'),
(97, 163614431171, 3, 'Femenino'),
(98, 163614431171, 4, 'Chiriquí'),
(99, 163614431171, 39, 'Rio'),
(100, 163614431171, 23, ' la vida eh un ciclo'),
(101, 163614431171, 43, 'Pollo'),
(102, 163614431171, 43, 'Aceitunas'),
(103, 163614431171, 43, 'Carne'),
(104, 163614431171, 47, 'PC'),
(105, 163614431171, 36, 'tuve que trabajar'),
(106, 163614431171, 38, '4'),
(107, 163614431171, 31, 'Xiaomi'),
(108, 163614431171, 32, 'Si'),
(109, 163614431171, 35, 'Depende para que'),
(110, 163614431171, 30, 'Moto'),
(111, 163614431171, 30, 'Carro'),
(112, 163614431171, 30, 'Barco'),
(113, 163614431171, 30, 'Avión'),
(114, 163614481594, 1, '1001-1500'),
(115, 163614481594, 2, '31-40'),
(116, 163614481594, 3, 'Femenino'),
(117, 163614481594, 4, 'Chiriquí'),
(118, 163614481594, 39, 'Rio'),
(119, 163614481594, 23, ' la vida eh un ciclo'),
(120, 163614481594, 43, 'Pollo'),
(121, 163614481594, 43, 'Aceitunas'),
(122, 163614481594, 43, 'Carne'),
(123, 163614481594, 47, 'PC'),
(124, 163614481594, 36, 'tuve que trabajar'),
(125, 163614481594, 38, '4'),
(126, 163614481594, 31, 'Xiaomi'),
(127, 163614481594, 32, 'Si'),
(128, 163614481594, 35, 'Depende para que'),
(129, 163614481594, 30, 'Moto'),
(130, 163614481594, 30, 'Carro'),
(131, 163614481594, 30, 'Barco'),
(132, 163614481594, 30, 'Avión'),


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
