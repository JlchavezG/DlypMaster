-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2022 a las 15:17:56
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dlyp07`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacionlugar`
--

CREATE TABLE `calificacionlugar` (
  `Id_CalificacionL` int(11) NOT NULL,
  `Calificacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificacionlugar`
--

INSERT INTO `calificacionlugar` (`Id_CalificacionL`, `Calificacion`) VALUES
(1, '1 estrella'),
(2, '2 estrellas'),
(3, '3 estrellas'),
(4, '4 estrellas'),
(5, '5 estrellas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorial`
--

CREATE TABLE `categorial` (
  `Id_Categoria` int(11) NOT NULL,
  `DescripcionCate` varchar(255) NOT NULL,
  `Id_Restriccion` int(11) NOT NULL,
  `NombreCate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorial`
--

INSERT INTO `categorial` (`Id_Categoria`, `DescripcionCate`, `Id_Restriccion`, `NombreCate`) VALUES
(1, 'Lugar de convivencia', 1, 'Parque'),
(2, 'Lugar recreativo', 2, 'Centro de diversion'),
(3, 'Lugar de convivencia', 3, 'Centro turistico'),
(4, 'Lugar creativo', 4, 'Lugar creativo'),
(5, 'Centro historico', 5, 'Museo'),
(6, 'Lugar de convivencia', 6, 'Restaurante'),
(7, 'Citio para ir a ver peliculas', 7, 'Cine'),
(8, 'Lugar para bailar', 8, 'Antros'),
(9, 'Lugar para tomar y bailar', 9, 'Bar'),
(10, 'Hospedaje', 10, 'Hotel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `Id_Comentario` int(11) NOT NULL,
  `id_Lugar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos`
--

CREATE TABLE `costos` (
  `Id_Costos` int(11) NOT NULL,
  `CHospedaje` float NOT NULL,
  `CEntrada` float NOT NULL,
  `CTransporte` float NOT NULL,
  `Comida` varchar(255) NOT NULL,
  `Transporte` varchar(255) NOT NULL,
  `id_lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `Id_Estado` int(11) NOT NULL,
  `NomEstado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`Id_Estado`, `NomEstado`) VALUES
(1, 'Estado de Mexico'),
(2, 'Ciudad de Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `Id_Estatus` int(11) NOT NULL,
  `NomEstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`Id_Estatus`, `NomEstatus`) VALUES
(1, 'Abierto'),
(2, 'Cerrado'),
(3, 'En mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerialugar`
--

CREATE TABLE `galerialugar` (
  `Id_Galeria` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `Img1` varchar(255) NOT NULL,
  `Img2` varchar(255) NOT NULL,
  `Img3` varchar(255) NOT NULL,
  `Img4` varchar(255) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `NomGenero` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Id_Genero`, `NomGenero`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Prefiero no decirlo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Id_Horario` int(11) NOT NULL,
  `Id_Estatus` int(11) NOT NULL,
  `DescripcionH` varchar(255) NOT NULL,
  `Id_Lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Id_Horario`, `Id_Estatus`, `DescripcionH`, `Id_Lugar`) VALUES
(1, 1, '7:00–18:00', 1),
(2, 1, '11:30-21:30', 2),
(3, 1, '24hrs', 3),
(4, 1, '8:00-19:30', 4),
(5, 1, '7-18:00', 5),
(6, 1, '9:00-15:00', 6),
(7, 1, '9:00-17:00', 7),
(8, 1, '06:00–18:00', 8),
(9, 1, '7:00-21:00', 9),
(10, 1, '7:00-1:00', 10),
(11, 1, '12:00-19:00', 11),
(12, 1, '10:00-18:00', 12),
(13, 1, '24 hrs', 13),
(14, 1, '24hrs', 14),
(15, 1, '11:00-17:00', 15),
(16, 1, '10:30-19:30', 16),
(17, 1, '6:00-18:00', 17),
(18, 1, '7:00-22:00', 18),
(19, 1, '9:00-19:00', 19),
(20, 1, '9:00-19:00', 20),
(21, 1, '9:00-16:00', 21),
(22, 1, '24 hrs', 22),
(23, 1, '10:00 – 19:00', 23),
(24, 2, '10:00-18:00', 24),
(25, 1, '13:00-22:30', 25),
(26, 1, '12:30-19:00', 26),
(27, 1, '24:00 hrs', 27),
(28, 1, '10:00-19:00', 28),
(29, 1, '8:00-21:00', 29),
(30, 1, '08:00–23:00', 30),
(31, 1, '24 hrs', 31),
(32, 1, '24 hrs', 32),
(33, 1, '08:00–21:30', 33),
(34, 1, '12:00-21:00', 34),
(35, 1, '12:00-23:00', 35),
(36, 1, '10:00–15:00', 36),
(37, 1, '06:00–21:00', 37),
(38, 1, '10:00–19:00', 38),
(39, 1, '24 hrs', 39),
(40, 1, '24 hrs', 40),
(41, 1, '19:00-00:00', 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `Id_Lugar` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `NomLugar` varchar(255) NOT NULL,
  `DescripcionL` varchar(255) NOT NULL,
  `CalleL` varchar(255) NOT NULL,
  `ColoniaL` varchar(255) NOT NULL,
  `NumeroL` varchar(255) NOT NULL,
  `Id_Estado` int(11) NOT NULL,
  `Costo` float NOT NULL,
  `Id_Municipio` int(11) NOT NULL,
  `TelefonoL` varchar(55) NOT NULL,
  `EmailLugar` varchar(255) NOT NULL,
  `RedSocial1` varchar(255) NOT NULL,
  `RedSocial2` varchar(255) NOT NULL,
  `LatLugar` varchar(255) NOT NULL,
  `LongLugar` varchar(255) NOT NULL,
  `id_estatus` int(11) DEFAULT NULL,
  `id_horario` int(11) NOT NULL,
  `id_calificacionlugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`Id_Lugar`, `id_categoria`, `NomLugar`, `DescripcionL`, `CalleL`, `ColoniaL`, `NumeroL`, `Id_Estado`, `Costo`, `Id_Municipio`, `TelefonoL`, `EmailLugar`, `RedSocial1`, `RedSocial2`, `LatLugar`, `LongLugar`, `id_estatus`, `id_horario`, `id_calificacionlugar`) VALUES
(1, 1, 'Parque Naucalli', '', 'Periferico', 'Blv. Manuel Avila Camacho', 'S/N', 1, 0, 1, '5553737453', '', 'https://www.facebook.com/ParqueNaucalliOficial/', '', '19.4930836', '99.2408425', NULL, 1, 4),
(2, 4, 'Desafio', 'Un juego de escape (Escape Room) es una experiencia de aventura y reto donde se trabaja en equipo resolviendo acertijos y rompecabezas para vencer un desafío.', 'Izaguirre 13', 'Manuel E. Izaguirre #13-piso 1, Cd. Satélite, 53100 Naucalpan de Juárez, Méx.', '13', 1, 0, 1, '5564553185', '', 'https://desafiorooms.com/', '', '19.5134119', '99.2349719,17', NULL, 2, 5),
(3, 1, 'Parque Hundido', 'Relajado parque urbano por debajo del nivel de la calle, con senderos y un área para soltar a los perros.', 'Hacienda de Pasteje 116', 'Hacienda de Echegaray', '116', 1, 0, 1, '525556054327', '', '', '', '19.491098', '99.2336118,17', NULL, 3, 5),
(4, 3, 'Los Remedios', 'Lugar de convivencia', 'Calle Los Remdios', 'Naucalpan de Juarez', '32', 1, 0, 1, 'no', '', '', '', '19.471603', '99.2621917,16', NULL, 4, 4),
(5, 2, 'La Marquesa', 'Lugar Recreativo', 'Independencia', 'Marquez del Valle', 's/n', 1, 0, 1, '5513809614', '', '', '', '19.3001449', '99.3843891,15', NULL, 5, 5),
(6, 3, 'Teotihuacan', 'Lugar de Convivencia', 'Guadalupe Victoria', 'Ignacio Beteta', 's/n', 1, 0, 1, 'no', '', '', '', '19.68811324', '98.8933732,14', NULL, 6, 4),
(7, 5, 'Museo del Agua', 'Centro Historico', 'Huehueclotl', 'Santa Isabel Tola', 's/n', 2, 0, 2, 'no', '', 'http://www.museodelagua.org.mx/', '', '19.4912457', '99.1203362,17', NULL, 7, 5),
(8, 1, 'Parque La Hoja', 'Lugar de Convivencia', 'Calz. de Los Remedios', 'Calz. de Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.4805466', '99.2435317,17', NULL, 8, 5),
(9, 6, 'Casa de los Abuelos', 'Centro Historico', 'Blv. Los Continentes', 'Blv. de las Misisones', 's/n', 1, 0, 3, '525572614009', '', 'https://casadelosabuelos.com.mx/', '', '19.5522309', '99.2098067,21', NULL, 9, 4),
(10, 2, 'Azulejos', 'Lugar de Convivencia', 'Av. Francisco I. Madero 4', 'Centro Historico', '4', 2, 0, 4, 'no', '', '', '', '17°59′18″N', '92°55′06″O', NULL, 10, 5),
(11, 2, 'C. King', 'Lugar de Convivencia', 'C. General E. Zapata 33', 'Isidro Fabela', '33', 1, 0, 1, '5537111322', '', '', '', '19.446887', '99.2812137,17', NULL, 11, 4),
(12, 1, 'Parque Estrella', 'Lugar de Convivencia', '21 de Febrero 15', 'Altamira', '15', 1, 0, 1, '', '', '', '', '19.4537639', '99.254175,17', NULL, 12, 4),
(13, 1, 'Parque Benito', 'Lugar de Convivencia', 'Tlapan Centro l', 'Tlalpan Calz. de T. 4743', 's/n', 2, 0, 5, 'no', '', '', '', '19.289653', '98.254175,17', NULL, 13, 4),
(14, 1, 'Parque de la Amistad', 'Lugar de Convivencia', 'Bosques de la Herradura', 'Bosques de la Herradura', 's/n', 1, 0, 1, 'no', '', '', '', '19.423618', '99.256268', NULL, 14, 5),
(15, 2, 'G. los Niños', 'Lugar Recreativo', 'Sn. Tepatlaxco', 'Tepatlaxco', 's/n', 1, 0, 1, '5548114900', '', '', '', '19.480016', '99.334368', NULL, 15, 5),
(16, 4, 'S. Deporte', 'Centro Historico', 'Plaza Cetram', 'Ingenieros Militares s/n', 's/n', 1, 0, 1, 'no', '', 'https://www.facebook.com/SalonDeporteFCS', '', '19.45804', '99.21468', NULL, 16, 4),
(17, 4, 'N Cuevitas', 'Lugar de Convivencia', 'Cont. Xonacatlan 33', 'San Antonio Zomeyucan', '33', 1, 0, 1, 'no', '', '', '', ' 19°27’0', '99°14’23”', NULL, 17, 4),
(18, 1, 'Parque Tepetatal', 'Lugar de Convivencia', 'Frontera 20', 'Balcones de Chamapa', '20', 1, 0, 1, '5512904891', '', '', '', '19.454912', '99.253935', NULL, 18, 4),
(19, 2, 'Gotcha', 'Lugar Recreativo', 'Camino Real a las Julianas', 'Zaragoza', 's/n', 1, 0, 1, '5532883727', '', 'https://www.yumping.com.mx/', '', '19.466035', '99.301368', NULL, 19, 5),
(20, 3, 'Basilica', 'Centro Religioso', 'C. Zaragoza', 'Los Remedios', 's/n', 1, 0, 1, '5555601732', '', '', '', '19.2534621,17', '99.2512734', NULL, 20, 5),
(21, 2, 'Nido', 'Lugar de Convivencia', 'C. Bosque de los Remedios', 'Paseos del Bosque', 's/n', 1, 0, 1, 'no', '', '', '', '19.281421,17', '99.2792323', NULL, 21, 4),
(22, 3, 'Acueducto', 'Centro Historico', 'C. Acueducto de los Remedios', 'Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.2599756,17', '99.2577869', NULL, 22, 3),
(23, 1, 'Parque los Arcos', 'Lugar de Convivencia', 'Las Huertas', 'Las Huertas', 's/n', 1, 0, 1, 'no', '', '', '', '19.2658517,17', '99.2577869', NULL, 23, 5),
(24, 2, 'Granja Las Americas', 'Lugar Recreativo', 'Blvd. Pipila', 'Lomas de Sotelo', 's/n', 2, 0, 1, '5526295600', '', '', '', '19.2264198,16', '99.2555293', NULL, 24, 4),
(25, 2, 'La Vaka', 'Lugar de Convivencia', 'Blv. Manuel Avila Camacho', 'San Miguel', 's/n', 1, 0, 1, '5559200173', '', 'https://lavaka.mx/', '', '19.4922573', '99.2397757,17', NULL, 25, 5),
(26, 4, 'Acazia San Mateo', 'Lugar de Convivencia', 'Adolfo Lopez Mateo', 'Tercer Mundo', '65', 1, 0, 1, '5539249109', '', '', '', '19.4840949', '99.2524748,17', NULL, 26, 4),
(27, 1, 'Parque San Jose', 'Lugar de Convivencia', 'C. San Miguel', 'San Jose de los Leones', '89', 1, 0, 1, 'no', '', '', '', '19.4529072', '99.2503687,15', NULL, 27, 5),
(28, 3, 'Temazcal Yolotescalli', 'Centro Historico', 'Calle Buena Vista', 'Colonia de Los Remedios', 's/n', 1, 0, 1, 'no', '', 'https://www.facebook.com/TemazcalYolotezcalli/', '', '19.463433', '99.2783136,17', NULL, 28, 5),
(29, 4, 'Casa Organica', 'Lugar de Convivencia', 'Acueducto Morelia', 'Vista del Valle', '26', 1, 0, 1, 'no', '', 'https://www.casaorganica.org/visitas', '', '19.4724881', '99.2642828,17', NULL, 29, 5),
(30, 2, 'Plaza Vista del Valle', 'Lugar de Convivencia', 'Vista del Valle', 'Vista del Valle', 's/n', 1, 0, 1, 'no', '', 'http://espaciovistadelvalle.com.mx/', '', '19.4773697', '99.270894,17', NULL, 30, 4),
(31, 4, 'Wolves Adventure', 'Lugar Recreativo', 'Marisoles 1-8', 'Las Huertas 1ra Seccion', 's/n', 1, 0, 1, '5544537625', '', '', '', '19.4705042', '99.2732196,17', NULL, 31, 5),
(32, 1, 'Parque para Perros', 'Lugar de Convivencia', 'Bosque Real', 'Bosque Real', 's/n', 1, 0, 1, 'no', '', '', '', '19.4302858', '99.2892442,17', NULL, 32, 4),
(33, 1, 'Parque Liconsa de los Remedios', 'Lugar de Convivencia', 'Calle Vicente Guerrero', 'Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.4694946', '99.2892442,17', NULL, 33, 4),
(34, 8, 'Salon Cafe Salsa Club', 'Lugar Recreativo', 'El Olivar', 'San Esteban', '136', 1, 0, 1, 'no', '', '', '', '19.4572578', '99.2363782,16', NULL, 34, 5),
(35, 9, 'Bar Los Amigos', 'Lugar de Convivencia', 'Av. Ferrocarril de Acambaro', 'El Molinito', 's/n', 1, 0, 1, 'no', '', '', '', '19.457291', '99.239593,17', NULL, 35, 4),
(36, 4, 'Arena Naucalpan', 'Lugar de Eventos', 'C. Jdn', 'Naucalpan Centro', '19', 1, 0, 1, '5555764260', '', 'http://arenanaucalpan.com.mx/', '', '19.473692', '99.2337758,17', NULL, 36, 5),
(37, 2, 'Deportivo IMSS', 'Lugar Recreativo', 'Blv. Manuel Avila Camacho', 'Naucalpan Centro', 's/n', 1, 0, 1, 'no', '', '', '', '19.4754533', '99.2324387,17', NULL, 37, 5),
(38, 4, 'Auditorio Isidro Fabela', 'Lugar de Eventos', 'Calle Benito Juarez', 'El Mirador', 's/n', 1, 0, 1, '5553718300', '', 'https://sic.cultura.gob.mx/ficha.php?table=auditorio&table_id=1143', '', '19.4779702', '99.2353202,17', NULL, 38, 5),
(39, 1, 'Parque de Las Haciendas', 'Lugar de Convivencia', 'Hda. La Huerta', 'Bosques de Echegaray', '22', 1, 0, 1, 'no', '', '', '', '19.488221', '99.2282307,17', NULL, 39, 4),
(40, 8, 'Spirily Echegaray', 'Lugar Recreativo', 'Av. Gustavo Baz Prada', 'Colon Echegaray', '234', 1, 0, 1, '5553634711', '', '', '', '19.497425', '99.2282428,17', NULL, 40, 5),
(41, 2, 'La Chingada', 'Lugar de Convivencia', 'C. Zaragoza', 'Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.471406', '99.2543748,17', NULL, 41, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `Id_Municipio` int(11) NOT NULL,
  `NomMun` varchar(255) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`Id_Municipio`, `NomMun`, `Id_Estado`) VALUES
(1, 'Naucalpan de Juarez', 1),
(2, 'Tecamac', 1),
(3, 'Tlalnepantla', 1),
(4, 'CDMX', 2),
(5, 'Tlalpan', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `Id_Tusuario` int(11) NOT NULL,
  `NombreTusu` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`Id_Tusuario`, `NombreTusu`, `Descripcion`) VALUES
(1, 'Premium', 'Usuario con el aplicativo de paga'),
(2, 'Free', 'Usuario con aplicativo en gratis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL,
  `Nick` varchar(55) NOT NULL,
  `Password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `Apellidos`, `Email`, `Id_Tusuario`, `Nick`, `Password`) VALUES
(1, 'Quetzaly', 'Estrada \r\nCamacho', 'zaly.estrada@gmail.com', 1, 'zaly', 'zaly.ugu'),
(2, 'Ramses', 'Mora Moreno', 'ramsesmora475@gamil.com', 2, 'Rams', 'superpeloncito'),
(3, 'Edson', 'Zerecero \r\n Hernandez', 'ezerecero2720@conalepmex.edu.mx', 1, 'Adman', 'Etdamas365'),
(4, 'Stefani', 'Garnica Benitez', 'Stefanigb@gmail.com', 2, 'Fani', 'Sgb23'),
(5, 'Diego', 'Guzman Santos', 'kapi3937@gmail.com', 2, 'Dieguito', 'DGSDiego'),
(6, 'Roberto', 'Pedraza Cruz', 'cruzpedraza@gmail.com', 1, 'Rober', '123573R'),
(7, 'Emanuel', 'Ortiz Garcia', 'e.ortiz45616@gmail.com', 1, 'El Nenu', 'checoteamo11'),
(8, 'Javier', 'Ezpinoza Franco', 'franjavier30095@gmail.com', 1, 'Fran', 'j4rvis115'),
(9, 'Oswaldo', 'Ambriz Rojas', 'oswaldoambriz41@gmail.com', 2, 'pinpon', 'F0202A24FF'),
(10, 'Emilio', 'Ramirez \r\nHernandez', 'eramirez1420@coonalepmex.edu.mx', 1, '2', '140503'),
(11, 'Diego', 'Gonzalez Ruiz', 'dangonzalez1020@conalepmex.edu.mx', 2, '1', 'DGG1'),
(12, 'Lael', 'Urquiza Ambrosio', 'jesus1125@outlook.com', 2, 'lael110', 'Camaron110'),
(13, 'Andrea', 'Perez Alanis', 'andreaperrezalanis@gmail.com', 1, 'andy', 'apa0329'),
(14, 'Ximena', 'Liera Zacarias', 'xliera1220@conalep.mex.edu.mx', 1, 'lele', 'XLZ222'),
(15, 'Jamin', 'Rodriguez Ramirez', 'jaminramirez75@gmail.com', 1, 'Jam', 'elbicho7'),
(16, 'Michel', 'Rojas Barajas', 'michrbarajas@gmail.com', 2, 'Mich<3', 'rb0410'),
(17, 'Eder', 'Padilla Dominguez', 'ederpadilladominguez@gmail.com', 1, 'Uriel', 'eder2417'),
(18, 'Diego', 'Hernandez Vargas', 'dh95979@gamil.com', 1, 'Diego', '56CSSI0'),
(19, 'Oscar', 'Garcia Pozos', 'jesusgarciapozos@gmail.com', 2, 'Pollo', '0342562'),
(20, 'Irving', 'Ramirez Perez', 'alejandrorp484@gmail,com', 2, '1', '122367Com22'),
(21, 'Caleb', 'Pedraza Dorantes', 'pedrazaalejandro224@gmail,com', 2, '2', '47A3412'),
(22, 'Fernando', 'Martinez Cruz', 'frnnarc22@gmail.com', 1, 'MaxZ', 'Xyx22T'),
(23, 'Leonel', 'Hernandez Garfias', 'lionelhg21@gmail.com', 1, 'LioM', 'MIL1406'),
(24, 'Aide', 'Alcauter Aponte', 'princhipesaaide@gmail.com', 2, 'Meyd1', '151018Oct19'),
(25, 'Michelle', 'Hernandez', 'gomezhernandezmichelle4@gmail.com', 1, '1', 'MICHELLE232323'),
(26, 'Joseline', 'Cruz Segundo', 'cruzjoselin40@gmail.com', 1, '2', 'N04A1V8l'),
(27, 'Natanael', 'Hernandez Cervantes', 'natt171105@gamil.com', 1, 'Natt', '7-yo0589'),
(28, 'Alejandra', 'Garcia Aviles', 'ingridalega751@gmail.com', 2, 'Alejj7', 'negrolanida1402'),
(29, 'Jonathan', 'Garcia \r\nCayetano', 'garciacayetanojonathan9@gmail.com', 1, 'MJhon', 'jhon1809xd'),
(30, 'Fernando', 'Romero Romero', 'ferchoromro768@gmail.com', 2, 'Fer', 'balon12345'),
(31, 'Alan', 'Olguin \r\nMorales', 'alandej270105@gmail.com', 1, 'AlanJ', 'abcde'),
(32, 'Abraham', 'Iturbide Lopez', 'dl2369034', 2, 'frijolito23xd', '23014'),
(33, 'Jaqueline', 'Palayot Anaya', 'jpalayot14@gmail.com', 1, 'jaquiP', 'mcp25cj02'),
(34, 'Daniel', 'Leon Alvarez', 'danieleon736@gmail.com', 1, 'DaniLA', 'adla051104'),
(35, 'Moises', 'Martinez \r\nTeran', 'brayan,oisesmaryinez@gmail.com', 1, 'Moiseis88', 'flx33'),
(36, 'Hugo', 'Narvaes Martinez', 'narvaezmartinezhugo@gmail.com', 2, 'Martinez', 'hugomart'),
(37, 'Carlos', 'Elias \r\nVillaseca', 'celias0220@conalepmex.edu.mx', 1, 'Carlos7u7', 'melaperaconlapapaya'),
(38, 'Noemi', 'Alcauter Aponte', 'princhipesanoemi@gmail.com', 2, 'Mimi', '151010'),
(39, 'Jesus', 'Salguero \r\nLopez', 'jsalguero1320@conalepmex.edu.mx', 1, 'Yisus', '12345'),
(40, 'Oscar', 'Garnica Benitez', 'garnicaosc@gmail.com', 1, 'Oscar132', 'orcargb1324'),
(41, 'Kevin', 'Amauri Hernandez', 'kgamauri1112@gmail.com', 2, 'kagh', 'pelonsoban'),
(42, 'Carlos', 'Chavez Moreno', 'Cchavez1920@conalepmex.edu.mx', 1, 'Carlos9', 'holaguapo'),
(43, 'Alan', 'Trinidad Rios', 'alan1302@gmail.com', 1, 'Alan7', 'contraseña'),
(44, 'Raul', 'Gonzales Ruiz', 'diegonzalez13.drgr@gmail.com', 1, 'DiegpRg', 'Tarzan'),
(45, 'Brenda', 'Clemente Paulino', 'brendaluceroclemente@gmail.com', 2, 'BrendaLc', 'brenn6660$');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacionlugar`
--
ALTER TABLE `calificacionlugar`
  ADD PRIMARY KEY (`Id_CalificacionL`);

--
-- Indices de la tabla `categorial`
--
ALTER TABLE `categorial`
  ADD PRIMARY KEY (`Id_Categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Id_Comentario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_Lugar` (`id_Lugar`);

--
-- Indices de la tabla `costos`
--
ALTER TABLE `costos`
  ADD PRIMARY KEY (`Id_Costos`),
  ADD KEY `id_lugar` (`id_lugar`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`Id_Estatus`);

--
-- Indices de la tabla `galerialugar`
--
ALTER TABLE `galerialugar`
  ADD PRIMARY KEY (`Id_Galeria`),
  ADD KEY `id_lugar` (`id_lugar`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Id_Horario`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`Id_Lugar`),
  ADD KEY `Id_Estado` (`Id_Estado`),
  ADD KEY `Id_Municipio` (`Id_Municipio`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_calificacionlugar` (`id_calificacionlugar`),
  ADD KEY `id_estatus` (`id_estatus`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `Id_Estado` (`Id_Estado`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`Id_Tusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Tusuario` (`Id_Tusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacionlugar`
--
ALTER TABLE `calificacionlugar`
  MODIFY `Id_CalificacionL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categorial`
--
ALTER TABLE `categorial`
  MODIFY `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `Id_Comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `costos`
--
ALTER TABLE `costos`
  MODIFY `Id_Costos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `Id_Estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `galerialugar`
--
ALTER TABLE `galerialugar`
  MODIFY `Id_Galeria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `Id_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `Id_Lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `Id_Tusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `costos`
--
ALTER TABLE `costos`
  ADD CONSTRAINT `costos_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galerialugar`
--
ALTER TABLE `galerialugar`
  ADD CONSTRAINT `galerialugar_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`Id_Municipio`) REFERENCES `municipio` (`Id_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_2` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`Id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categorial` (`Id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_4` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`Id_Horario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_5` FOREIGN KEY (`id_calificacionlugar`) REFERENCES `calificacionlugar` (`Id_CalificacionL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_6` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`Id_Estatus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`Id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Id_Tusuario`) REFERENCES `tusuario` (`Id_Tusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
