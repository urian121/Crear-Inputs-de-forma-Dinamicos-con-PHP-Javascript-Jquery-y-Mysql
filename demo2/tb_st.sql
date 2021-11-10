-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2021 a las 02:39:01
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_stiven`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_st`
--

CREATE TABLE `tb_st` (
  `CODIGO` int(11) NOT NULL,
  `PRODUCTO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NUMERO_ORDEN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ESTADO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CODE_REFERENCIA` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_st`
--

INSERT INTO `tb_st` (`CODIGO`, `PRODUCTO`, `NUMERO_ORDEN`, `ESTADO`, `CODE_REFERENCIA`) VALUES
(10, 'Pan', '1', 'ACTIVO', '19ZST'),
(11, 'Pan', '2', 'INACTIVO', '19ZST'),
(12, 'Pan', '3', 'INACTIVO', '19ZST'),
(13, 'Pasta', '1', 'INACTIVO', 'D89I7'),
(14, 'Pasta', '2', 'INACTIVO', 'D89I7'),
(15, 'Pasta', '3', 'ACTIVO', 'D89I7'),
(16, 'Pasta', '4', 'INACTIVO', 'D89I7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_st`
--
ALTER TABLE `tb_st`
  ADD PRIMARY KEY (`CODIGO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_st`
--
ALTER TABLE `tb_st`
  MODIFY `CODIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
