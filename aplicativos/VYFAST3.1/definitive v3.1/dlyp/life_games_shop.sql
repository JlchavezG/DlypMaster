-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 09:05:56
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `life_games_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acliente`
--

CREATE TABLE `acliente` (
  `id_A_cliente` int(11) NOT NULL,
  `C_A_cliente` varchar(15) NOT NULL,
  `id_Pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acliente`
--

INSERT INTO `acliente` (`id_A_cliente`, `C_A_cliente`, `id_Pago`) VALUES
(1, '5578891707', 1),
(2, '5578891707', 3),
(3, '5578891707', 2),
(4, '5545911707', 3),
(5, '5578894128', 2),
(6, '5575611707', 3),
(7, '5575614590', 3),
(8, '5589121707', 2),
(9, '5575574968', 1),
(10, '5575852795', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_Genero` int(11) NOT NULL,
  `N_Genero` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_Genero`, `N_Genero`) VALUES
(1, 'Mujer'),
(2, 'Hombre'),
(3, 'No decir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id_Juego` int(11) NOT NULL,
  `N_Juego` varchar(50) NOT NULL,
  `id_Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id_Juego`, `N_Juego`, `id_Tipo`) VALUES
(1, 'need for speed', 1),
(2, 'warzone', 3),
(3, 'skyrim', 2),
(4, 'fifa 21', 4),
(5, 'yu gi oh', 5),
(6, 'farming simulator', 6),
(7, 'uno', 7),
(8, 'guitar hero', 8),
(9, 'metal slug', 9),
(10, 'pac man', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id_Membresia` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `id_Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id_Membresia`, `Descripcion`, `id_Tipo`) VALUES
(1, 'Gratuita', 1),
(2, 'Estandar', 3),
(3, 'Premium', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_Pago` int(11) NOT NULL,
  `T_Pago` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id_Pago`, `T_Pago`) VALUES
(1, 'Efectivo'),
(2, 'Tarjetac'),
(3, 'Tarjetad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_Tipo` int(11) NOT NULL,
  `N_Tipo` varchar(50) NOT NULL,
  `Descripciont` varchar(255) NOT NULL,
  `id_A_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_Tipo`, `N_Tipo`, `Descripciont`, `id_A_cliente`) VALUES
(1, 'carreras', 'juego de conduccion', 1),
(2, 'shoter', 'juego de armas', 3),
(3, 'aventura', 'juego de mundo abierto', 2),
(4, 'deportivo', 'juego de deportes', 4),
(5, 'estrategia', 'juego de planear', 5),
(6, 'simulacion', 'simulaciones de entornos', 6),
(7, 'juego de mesa', 'juegos de mesa de forma virtual', 7),
(8, 'musica', 'juegos enfocados en la musica', 8),
(9, 'arcade', 'gran variedad de juegos', 9),
(10, 'retro', 'juegos de consolas antiguas', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `id_Tusuario` int(11) NOT NULL,
  `id_Membresia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`id_Tusuario`, `id_Membresia`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Pasword` varchar(55) NOT NULL,
  `N_usuario` varchar(55) NOT NULL,
  `id_Genero` int(11) NOT NULL,
  `id_Tusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `Email`, `Telefono`, `Pasword`, `N_usuario`, `id_Genero`, `id_Tusuario`) VALUES
(1, 'gabrielterrazasboody@yahoo.com.mx', '5578891707', 'garrix512', 'garrix', 2, 3),
(2, 'yessiurvina@yahoo.com.mx', '5578235607', 'yess523', 'yessi', 1, 1),
(3, 'isafernando@yahoo.com.mx', '5578894591', 'lol791', 'isa743', 2, 2),
(4, 'elmichelinjsjs@yahoo.com.mx', '5578985407', 'griffith', 'jessurib', 1, 3),
(5, 'sorjuanaellie@yahoo.com.mx', '5545375607', 'armi123', 'monoschinos', 1, 1),
(6, 'mamacoco@yahoo.com.mx', '5578897594', 'normitajs', 'monos2d', 1, 2),
(7, 'alogarcia@yahoo.com.mx', '5578984891', 'gatitos', 'kawai1', 1, 3),
(8, 'karenlz@yahoo.com.mx', '5545375685', 'karenar', 'lizette', 1, 1),
(9, 'mauelgordo@yahoo.com.mx', '5578897528', 'whiskas1', 'mau', 2, 2),
(10, 'elhomixd@yahoo.com.mx', '5578895682', 'todosederrumbo', 'elxd', 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acliente`
--
ALTER TABLE `acliente`
  ADD PRIMARY KEY (`id_A_cliente`),
  ADD KEY `id_Pago` (`id_Pago`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_Genero`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id_Juego`),
  ADD KEY `id_Tipo` (`id_Tipo`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id_Membresia`),
  ADD KEY `id_Tipo` (`id_Tipo`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_Pago`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_Tipo`),
  ADD KEY `id_A_cliente` (`id_A_cliente`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`id_Tusuario`),
  ADD KEY `id_Membresia` (`id_Membresia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_Genero` (`id_Genero`,`id_Tusuario`),
  ADD KEY `id_Tusuario` (`id_Tusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acliente`
--
ALTER TABLE `acliente`
  MODIFY `id_A_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id_Juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id_Membresia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_Pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_Tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `id_Tusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acliente`
--
ALTER TABLE `acliente`
  ADD CONSTRAINT `acliente_ibfk_1` FOREIGN KEY (`id_Pago`) REFERENCES `pago` (`id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`id_Tipo`) REFERENCES `tipo` (`id_Tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD CONSTRAINT `membresia_ibfk_1` FOREIGN KEY (`id_Tipo`) REFERENCES `tipo` (`id_Tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD CONSTRAINT `tipo_ibfk_1` FOREIGN KEY (`id_A_cliente`) REFERENCES `acliente` (`id_A_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD CONSTRAINT `tusuario_ibfk_1` FOREIGN KEY (`id_Membresia`) REFERENCES `membresia` (`id_Membresia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_Genero`) REFERENCES `genero` (`id_Genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_Tusuario`) REFERENCES `tusuario` (`id_Tusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
