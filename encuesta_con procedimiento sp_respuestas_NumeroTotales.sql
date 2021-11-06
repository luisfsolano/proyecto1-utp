-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 01:49 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encuesta`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_preguntas` (IN `param_numero` SMALLINT(5), IN `param_pregunta` VARCHAR(200), IN `param_tipo` VARCHAR(50))  BEGIN
       update preguntas set numero = param_numero, pregunta = param_pregunta, tipo = param_tipo where numero = param_numero;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_preguntas` ()  BEGIN 
    select numero, pregunta, tipo from preguntas order by numero;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_preguntas` (IN `param_numero` SMALLINT(5))  BEGIN
    DELETE from preguntas where numero = param_numero;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_preguntas` (IN `param_numero` INT(5), IN `param_pregunta` VARCHAR(200), IN `param_tipo` VARCHAR(50))  BEGIN 
    insert into preguntas (numero, pregunta, tipo) VALUES (param_numero, param_pregunta, param_tipo); 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_respuestas_NumeroTotales` ()  BEGIN
select count(*) total from ( select count(grupo_respuesta) tot from respuestas  group by grupo_respuesta) src;  
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE `preguntas` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `numero` int(5) NOT NULL,
  `pregunta` varchar(200) NOT NULL DEFAULT '',
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id`, `numero`, `pregunta`, `tipo`) VALUES
(7, 6, '', 'Elección binaria'),
(8, 7, 'sdss', 'Elección binaria'),
(9, 4, 'jgjy', 'Elección binaria'),
(10, 10, 'ppppp', 'Elección múltiple'),
(11, 8, 'jgjgjghj', 'Elección binaria'),
(12, 100, 'uuuuuu', 'Elección binaria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
