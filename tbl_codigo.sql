-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-11-2021 a las 14:37:24
-- Versión del servidor: 5.6.51-cll-lve
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_royalcanin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_codigo`
--

CREATE TABLE `tbl_codigo` (
  `PKCOD_ID` int(11) NOT NULL,
  `FKCOD_ID_CLI_ID` int(11) DEFAULT NULL,
  `COD_CODIGO` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `COD_ESTADO` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CANT_USO` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_codigo`
--

INSERT INTO `tbl_codigo` (`PKCOD_ID`, `FKCOD_ID_CLI_ID`, `COD_CODIGO`, `COD_ESTADO`, `CANT_USO`) VALUES
(2, 1, 'RC17r128c', 'Activo', '1'),
(3, 1, 'RC62u199r', 'InActivo', '0'),
(1816, 113, 'jacz0992', 'InActivo', '1');

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
  MODIFY `PKCOD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1817;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_codigo`
--
ALTER TABLE `tbl_codigo`
  ADD CONSTRAINT `tbl_codigo_ibfk_1` FOREIGN KEY (`FKCOD_ID_CLI_ID`) REFERENCES `tbl_cliente` (`PKCLI_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
