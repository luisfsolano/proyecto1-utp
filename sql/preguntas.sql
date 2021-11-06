-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2021 a las 21:48:32
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
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `numero` int(5) NOT NULL,
  `pregunta` varchar(200) NOT NULL DEFAULT '',
  `tipo` varchar(50) NOT NULL,
  `respuestas` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `numero`, `pregunta`, `tipo`, `respuestas`) VALUES
(1, 0, '¿Cuál es tu rango salarial?', 'Elección simple', '...-500,501-800,801-1000,1001-1500,1501-2000'),
(2, 0, '¿En que rango de edad te encuentras?', 'Elección simple', '...-20,21-30,31-40,41-...'),
(3, 0, '¿Sexo?', 'Elección simple', 'Masculino,Femenino'),
(4, 0, '¿Provincia de residencia?', 'Elección simple', 'Bocas del Toro,Chiriquí,Coclé,Colón,Darién,Herrera,Los Santos,Panamá,Veraguas,Emberá-Wounaan,Kuna de Madugandí,Kuna Yala,Kuna de Wargandí,Ngöbe-Buglé'),
(7, 6, '¿Eres estudiante universitario?', 'Elección binaria', 'Si,No'),
(8, 7, '¿Tienes vida propia?', 'Elección simple', 'si,no,digo que si pero no,mi mama dice que no hago nada'),
(9, 4, '¿Que tipo de comidas prefieres?', 'Elección múltiple', 'asados,herbidos,guisados,tostados'),
(21, 21, '¿te gusta el café?', 'Elección binaria', 'Si,No'),
(22, 0, '¿Estas dentro del grupo?', 'Elección múltiple', 'de vez en cuando,retiré,ahi mas o meos'),
(23, 0, 'Baby', 'Elección simple', 'te quiero wuo wuo, la vida eh un ciclo, shark tutururuturu, me rehuso a darle un beso asi que guarda'),
(27, 0, '¿Tienes Mascotas?', 'Elección binaria', 'Si,No'),
(28, 0, '¿Cuantos libros lees al mes?', 'Elección simple', '1,2,3,4,5'),
(29, 0, '¿Hacia que familia eres mas afin?', 'Elección simple', 'Mamá,Papá,Ambas'),
(30, 0, '¿En que tipo de vehículos haz viajado?', 'Elección múltiple', 'Bicicleta,Moto,Carro,Barco,Avión'),
(31, 0, '¿Que marca de celulares prefieres?', 'Elección simple', 'Iphone,Xiaomi,Samsung,Huawei'),
(32, 0, '¿Actualmente Laboras?', 'Elección binaria', 'Si,No'),
(33, 0, '¿Con que lenguajes de programación te sientes mejor?', 'Elección múltiple', 'Java,PHP,C#,.Net'),
(34, 0, '¿Que estacion del año te gusta mas?', 'Elección simple', 'Invierno,Verano'),
(35, 0, '¿Te puedes quedar despierto hasta tarde?', 'Elección simple', 'Sí,No,Depende para que'),
(36, 0, '¿Que hiciste en fiestas patrias?', 'Elección simple', 'Logré pasear,Los proyectos de la u no me dejaron hacer nada,tuve que trabajar'),
(37, 0, '¿Cuál es tu banco principal?', 'Elección simple', 'Banistmo,BG,Banco Nacional,Caja de Ahorros'),
(38, 0, '¿Cuantas llantas tiene un carro de 4 llantas?', 'Elección simple', '3,4,5,6'),
(39, 0, '¿Que ambiente prefieres?', 'Elección simple', 'Rio,Playa,Bosque,Lago'),
(42, 0, '¿Cuáles son platos típicos de panamá?', 'Elección múltiple', 'Caldo Verde,Sancocho,Bandeja Paisa,Arroz con pollo,Pupusas,Tamales,Arepas'),
(43, 0, '¿Ingredientes favoritos para una pizza?', 'Elección múltiple', 'Pollo,Aceitunas,Peperoni,Carne,Piña,Cebolla'),
(47, 0, '¿Que equipo usas actualmente?', 'Elección simple', 'PC,Laptop,Celular');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
