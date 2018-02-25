-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2018 a las 17:52:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `distritosdemexico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE `distritos` (
  `id` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `distrito` varchar(30) NOT NULL,
  `casillas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distritos`
--

INSERT INTO `distritos` (`id`, `id_estado`, `id_distrito`, `distrito`, `casillas`) VALUES
(1, 3, 1, 'Santa Rosalía', 27),
(2, 4, 2, 'Ciudad del carmen', 10),
(3, 5, 6, 'Torreón', 23),
(4, 7, 1, 'Palenque', 21),
(5, 8, 0, 'Junta Local', 15),
(6, 9, 10, 'Miguel Hidalgo', 28),
(7, 14, 3, 'Tepatitlan de Morelos', 50),
(8, 15, 14, 'Ciudad Adolfo López Mateos', 22),
(9, 15, 30, 'Ciudad Nezahualcóyotl', 7),
(10, 15, 39, 'Los Reyes Acaquilpan', 5),
(11, 16, 1, 'Lázaro Cárdenas', 16),
(12, 17, 5, 'Yautepec', 26),
(13, 20, 10, 'Miahuatlán de Porforio Díaz', 26),
(14, 21, 6, 'Heróica Puebla de Zaragoza', 7),
(15, 24, 7, 'Tamazunchale', 5),
(16, 25, 7, 'Culiacaán de Rosales', 13),
(17, 26, 4, 'Guaymas', 17),
(18, 27, 1, 'Macuspana', 12),
(19, 28, 1, 'Nuevo Laredo', 11),
(20, 30, 14, 'Minatitlán', 14),
(21, 31, 3, 'Mérida', 5),
(22, 32, 0, 'Junta Local', 39),
(25, 18, 6, 'distrito', 67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Coahuila'),
(6, 'Colima'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Distrito Federal'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'Mexico'),
(16, 'Michoacan'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo Leon'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Queretaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosi'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatan'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `reporte`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `reporte` (
`estado` varchar(30)
,`COUNT(distritos.distrito)` bigint(21)
,`SUM(distritos.casillas)` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `reporte`
--
DROP TABLE IF EXISTS `reporte`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reporte`  AS  select `estados`.`estado` AS `estado`,count(`distritos`.`distrito`) AS `COUNT(distritos.distrito)`,sum(`distritos`.`casillas`) AS `SUM(distritos.casillas)` from (`estados` join `distritos` on((`estados`.`id_estado` = `distritos`.`id_estado`))) group by `estados`.`estado` order by sum(`distritos`.`casillas`) desc ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD CONSTRAINT `distritos_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
