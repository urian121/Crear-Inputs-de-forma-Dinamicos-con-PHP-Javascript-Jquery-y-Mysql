-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2021 a las 02:24:13
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
-- Base de datos: `demos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_codigo`
--

CREATE TABLE `tbl_codigo` (
  `PKCOD_ID` int(11) NOT NULL,
  `FKCOD_ID_CLI_ID` int(11) DEFAULT NULL,
  `COD_CODIGO` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `COD_ESTADO` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_codigo`
--
ALTER TABLE `tbl_codigo`
  ADD PRIMARY KEY (`PKCOD_ID`),
  ADD KEY `FKCOD_ID_CLI_ID` (`FKCOD_ID_CLI_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_codigo`
--
ALTER TABLE `tbl_codigo`
  MODIFY `PKCOD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1822;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
