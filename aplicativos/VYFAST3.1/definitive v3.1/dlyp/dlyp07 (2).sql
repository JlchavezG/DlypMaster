-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2022 a las 06:00:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `Id_Lugar` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `Id_Comentario` int(11) NOT NULL,
  `Id_Lugar` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL
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
  `Id_Lugar` int(11) NOT NULL
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
(2, 'Ciudad de Mexico'),
(3, 'Aguas Calientes'),
(4, 'Baja California Norte'),
(5, 'Baja California Sur'),
(6, 'Campeche'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Coahuila'),
(10, 'Colima'),
(11, 'Durango'),
(12, 'Guanajuato'),
(13, 'Guerrero'),
(14, 'Hidalgo'),
(15, 'Jalisco'),
(16, 'Michoacan'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo Leon'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Queretaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
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
  `Id_Lugar` int(11) NOT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `Id_Lugar` int(11) NOT NULL,
  `NomLugar` varchar(255) NOT NULL,
  `Id_Categoria` int(11) NOT NULL,
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
  `Id_Horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`Id_Lugar`, `NomLugar`, `Id_Categoria`, `DescripcionL`, `CalleL`, `ColoniaL`, `NumeroL`, `Id_Estado`, `Costo`, `Id_Municipio`, `TelefonoL`, `EmailLugar`, `RedSocial1`, `RedSocial2`, `LatLugar`, `LongLugar`, `Id_Horario`) VALUES
(1, 'Parque Naucalli', 0, '', 'Periferico', 'Blv. Manuel Avila Camacho', 'S/N', 1, 0, 1, '5553737453', '', 'https://www.facebook.com/ParqueNaucalliOficial/', '', '19.4930836', '99.2408425', 0),
(2, 'Desafio', 0, 'Un juego de escape (Escape Room) es una experiencia de aventura y reto donde se trabaja en equipo resolviendo acertijos y rompecabezas para vencer un desafío.', 'Izaguirre 13', 'Manuel E. Izaguirre #13-piso 1, Cd. Satélite, 53100 Naucalpan de Juárez, Méx.', '13', 1, 0, 1, '5564553185', '', 'https://desafiorooms.com/', '', '19.5134119', '99.2349719,17', 0),
(3, 'Parque Hundido', 0, 'Relajado parque urbano por debajo del nivel de la calle, con senderos y un área para soltar a los perros.', 'Hacienda de Pasteje 116', 'Hacienda de Echegaray', '116', 1, 0, 1, '525556054327', '', '', '', '19.491098', '99.2336118,17', 0),
(4, 'Los Remedios', 0, '', 'Calle Los Remdios', 'Naucalpan de Juarez', '32', 1, 0, 1, 'no', '', '', '', '19.471603', '99.2621917,16', 0),
(5, 'La Marquesa', 0, 'Lugar Recreativo', 'Independencia', 'Marquez del Valle', 's/n', 1, 0, 1, '5513809614', '', '', '', '19.3001449', '99.3843891,15', 0),
(6, 'Teotihuacan', 0, 'Lugar de Convivencia', 'Guadalupe Victoria', 'Ignacio Beteta', 's/n', 1, 0, 1, 'no', '', '', '', '19.68811324', '98.8933732,14', 0),
(7, 'Museo del Agua', 0, 'Centro Historico', 'Huehueclotl', 'Santa Isabel Tola', 's/n', 2, 0, 2, 'no', '', 'http://www.museodelagua.org.mx/', '', '19.4912457', '99.1203362,17', 0),
(8, 'Parque La Hoja', 0, 'Lugar de Convivencia', 'Calz. de Los Remedios', 'Calz. de Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.4805466', '99.2435317,17', 0),
(9, 'Casa de los Abuelos', 0, 'Centro Historico', 'Blv. Los Continentes', 'Blv. de las Misisones', 's/n', 1, 0, 3, '525572614009', '', 'https://casadelosabuelos.com.mx/', '', '19.5522309', '99.2098067,21', 0),
(10, 'Azulejos', 0, 'Lugar de Convivencia', 'Av. Francisco I. Madero 4', 'Centro Historico', '4', 2, 0, 4, 'no', '', '', '', '17°59′18″N', '92°55′06″O', 0),
(11, 'C. King', 0, 'Lugar de Convivencia', 'C. General E. Zapata 33', 'Isidro Fabela', '33', 1, 0, 1, '5537111322', '', '', '', '19.446887', '99.2812137,17', 0),
(12, 'Parque Estrella', 0, 'Lugar de Convivencia', '21 de Febrero 15', 'Altamira', '15', 1, 0, 1, '', '', '', '', '19.4537639', '99.254175,17', 0),
(13, 'Parque Benito', 0, 'Lugar de Convivencia', 'Tlapan Centro l', 'Tlalpan Calz. de T. 4743', 's/n', 2, 0, 5, 'no', '', '', '', '19.289653', '98.254175,17', 0),
(14, 'Parque de la Amistad', 0, 'Lugar de Convivencia', 'Bosques de la Herradura', 'Bosques de la Herradura', 's/n', 1, 0, 1, 'no', '', '', '', '19.423618', '99.256268', 0),
(15, 'G. los Niños', 0, 'Lugar Recreativo', 'Sn. Tepatlaxco', 'Tepatlaxco', 's/n', 1, 0, 1, '5548114900', '', '', '', '19.480016', '99.334368', 0),
(16, 'S. Deporte', 0, 'Centro Historico', 'Plaza Cetram', 'Ingenieros Militares s/n', 's/n', 1, 0, 1, 'no', '', 'https://www.facebook.com/SalonDeporteFCS', '', '19.45804', '99.21468', 0),
(17, 'N Cuevitas', 0, 'Lugar de Convivencia', 'Cont. Xonacatlan 33', 'San Antonio Zomeyucan', '33', 1, 0, 1, 'no', '', '', '', ' 19°27’0', '99°14’23”', 0),
(18, 'Parque Tepetatal', 0, 'Lugar de Convivencia', 'Frontera 20', 'Balcones de Chamapa', '20', 1, 0, 1, '5512904891', '', '', '', '19.454912', '99.253935', 0),
(19, 'Gotcha', 0, 'Lugar Recreativo', 'Camino Real a las Julianas', 'Zaragoza', 's/n', 1, 0, 1, '5532883727', '', 'https://www.yumping.com.mx/', '', '19.466035', '99.301368', 0),
(20, 'Basilica', 0, 'Centro Religioso', 'C. Zaragoza', 'Los Remedios', 's/n', 1, 0, 1, '5555601732', '', '', '', '19.2534621,17', '99.2512734', 0),
(21, 'Nido', 0, 'Lugar de Convivencia', 'C. Bosque de los Remedios', 'Paseos del Bosque', 's/n', 1, 0, 1, 'no', '', '', '', '19.281421,17', '99.2792323', 0),
(22, 'Acueducto', 0, 'Centro Historico', 'C. Acueducto de los Remedios', 'Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.2599756,17', '99.2577869', 0),
(23, 'Parque los Arcos', 0, 'Lugar de Convivencia', 'Las Huertas', 'Las Huertas', 's/n', 1, 0, 1, 'no', '', '', '', '19.2658517,17', '99.2577869', 0),
(24, 'Granja Las Americas', 0, 'Lugar Recreativo', 'Blvd. Pipila', 'Lomas de Sotelo', 's/n', 2, 0, 1, '5526295600', '', '', '', '19.2264198,16', '99.2555293', 0),
(25, 'La Vaka', 0, 'Lugar de Convivencia', 'Blv. Manuel Avila Camacho', 'San Miguel', 's/n', 1, 0, 1, '5559200173', '', 'https://lavaka.mx/', '', '19.4922573', '99.2397757,17', 0),
(26, 'Acazia San Mateo', 0, 'Lugar de Convivencia', 'Adolfo Lopez Mateo', 'Tercer Mundo', '65', 1, 0, 1, '5539249109', '', '', '', '19.4840949', '99.2524748,17', 0),
(27, 'Parque San Jose', 0, 'Lugar de Convivencia', 'C. San Miguel', 'San Jose de los Leones', '89', 1, 0, 1, 'no', '', '', '', '19.4529072', '99.2503687,15', 0),
(28, 'Temazcal Yolotescalli', 0, 'Centro Historico', 'Calle Buena Vista', 'Colonia de Los Remedios', 's/n', 1, 0, 1, 'no', '', 'https://www.facebook.com/TemazcalYolotezcalli/', '', '19.463433', '99.2783136,17', 0),
(29, 'Casa Organica', 0, 'Lugar de Convivencia', 'Acueducto Morelia', 'Vista del Valle', '26', 1, 0, 1, 'no', '', 'https://www.casaorganica.org/visitas', '', '19.4724881', '99.2642828,17', 0),
(30, 'Plaza Vista del Valle', 0, 'Lugar de Convivencia', 'Vista del Valle', 'Vista del Valle', 's/n', 1, 0, 1, 'no', '', 'http://espaciovistadelvalle.com.mx/', '', '19.4773697', '99.270894,17', 0),
(31, 'Wolves Adventure', 0, 'Lugar Recreativo', 'Marisoles 1-8', 'Las Huertas 1ra Seccion', 's/n', 1, 0, 1, '5544537625', '', '', '', '19.4705042', '99.2732196,17', 0),
(32, 'Parque para Perros', 0, 'Lugar de Convivencia', 'Bosque Real', 'Bosque Real', 's/n', 1, 0, 1, 'no', '', '', '', '19.4302858', '99.2892442,17', 0),
(33, 'Parque Liconsa de los Remedios', 0, 'Lugar de Convivencia', 'Calle Vicente Guerrero', 'Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.4694946', '99.2892442,17', 0),
(34, 'Salon Cafe Salsa Club', 0, 'Lugar Recreativo', 'El Olivar', 'San Esteban', '136', 1, 0, 1, 'no', '', '', '', '19.4572578', '99.2363782,16', 0),
(35, 'Bar Los Amigos', 0, 'Lugar de Convivencia', 'Av. Ferrocarril de Acambaro', 'El Molinito', 's/n', 1, 0, 1, 'no', '', '', '', '19.457291', '99.239593,17', 0),
(36, 'Arena Naucalpan', 0, 'Lugar de Eventos', 'C. Jdn', 'Naucalpan Centro', '19', 1, 0, 1, '5555764260', '', 'http://arenanaucalpan.com.mx/', '', '19.473692', '99.2337758,17', 0),
(37, 'Deportivo IMSS', 0, 'Lugar Recreativo', 'Blv. Manuel Avila Camacho', 'Naucalpan Centro', 's/n', 1, 0, 1, 'no', '', '', '', '19.4754533', '99.2324387,17', 0),
(38, 'Auditorio Isidro Fabela', 0, 'Lugar de Eventos', 'Calle Benito Juarez', 'El Mirador', 's/n', 1, 0, 1, '5553718300', '', 'https://sic.cultura.gob.mx/ficha.php?table=auditorio&table_id=1143', '', '19.4779702', '99.2353202,17', 0),
(39, 'Parque de Las Haciendas', 0, 'Lugar de Convivencia', 'Hda. La Huerta', 'Bosques de Echegaray', '22', 1, 0, 1, 'no', '', '', '', '19.488221', '99.2282307,17', 0),
(40, 'Spirily Echegaray', 0, 'Lugar Recreativo', 'Av. Gustavo Baz Prada', 'Colon Echegaray', '234', 1, 0, 1, '5553634711', '', '', '', '19.497425', '99.2282428,17', 0),
(41, 'La Chingada', 0, 'Lugar de Convivencia', 'C. Zaragoza', 'Los Remedios', 's/n', 1, 0, 1, 'no', '', '', '', '19.471406', '99.2543748,17', 0);

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
(5, 'Tlalpan', 2),
(6, 'Acambay', 1),
(7, 'El Oro', 1),
(8, 'Otumba', 1),
(9, 'Aculo', 1),
(10, 'Otzoloapan', 1),
(11, 'Almoloya', 1),
(12, 'Otzolotepec', 1),
(13, 'Ozumba', 1),
(14, 'Ozumba', 1),
(15, 'Papalotla', 1),
(16, 'La Paz', 1),
(17, 'Acaquilpan', 1),
(18, 'Chimalhuacán', 1),
(19, 'Chimalhuacán', 1),
(20, 'Tepetlixpa', 1),
(21, 'Donato Guerra', 1),
(22, 'Tepotzotlán', 1),
(23, 'Ecatepec', 1),
(24, 'Tequixquiac	Santiago', 1),
(25, 'Ecatzingo', 1),
(26, 'Texcaltitlán', 1),
(27, 'Huehuetoca', 1),
(28, 'Texcalyacac', 1),
(29, 'San Mateo Texcalyacac', 1),
(30, 'Hueypoxtla', 1),
(31, 'Texcoco', 1),
(32, 'Huixquilucan', 1),
(33, 'Huixquilucan', 1),
(34, 'Tezoyuca', 1),
(35, 'Isidro Fabela', 1),
(36, 'Tianguistenco', 1),
(37, 'Ixtapaluca', 1),
(38, 'Timilpan', 1),
(39, 'Ixtapan de la Sal', 1),
(40, 'Tlalmanalco', 1),
(41, 'Ixtapan del Oro', 1),
(42, 'Tlalnepantla de Baz', 1),
(43, 'Ixtlahuaca', 1),
(44, 'Tlatlaya', 1),
(45, 'Xalatlaco', 1),
(46, 'Toluca', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recompensa`
--

CREATE TABLE `recompensa` (
  `Id_Recompensa` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restricciones`
--

CREATE TABLE `restricciones` (
  `Id_Restriccion` int(11) NOT NULL,
  `NombreR` varchar(255) NOT NULL,
  `DescripcionR` varchar(255) NOT NULL,
  `EdadRestriccion` varchar(55) NOT NULL,
  `Id_Categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ApellidoP` varchar(255) NOT NULL,
  `ApellidoM` varchar(255) NOT NULL,
  `Id_Genero` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Nick` varchar(55) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL,
  `Password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `Id_Genero`, `Email`, `Nick`, `Id_Tusuario`, `Password`) VALUES
(1, 'Quetzaly', 'Estrada', 'Camacho', 2, 'zaly.estrada@gmail.com', 'zaly', 1, 'zaly.ugu'),
(2, 'Ramses', 'Mora', 'Moreno', 1, 'ramsesmora475@gamil.com', 'Rams', 1, 'superpeloncito'),
(3, 'Edson', 'Zerecero', 'Hernandez', 1, 'ezerecero2720@conalepmex.edu.mx', 'Adman', 2, 'Etdamas365'),
(4, 'Stefani', 'Garnica', 'Benitez', 2, 'Stefanigb@gmail.com', 'Fani', 1, 'Sgb23'),
(5, 'Diego', 'Guzamn', 'Santos', 1, 'kapi3937@gmail.com', 'Dieguito', 2, 'DGSDiego'),
(6, 'Roberto', 'Pedraza', 'Cruz', 1, 'cruzpedraza@gmail.com', 'Rober', 1, '123573R'),
(7, 'Emanuel', 'Ortiz', 'Gracia', 1, 'e.ortiz45616@gmail.com', 'El Nenu', 1, 'checoteamo11'),
(8, 'Javier', 'Espinoza ', 'Franco', 1, 'franjavier30095@gmail.com', 'Fran', 2, 'j4rvis115'),
(9, 'oswaldo', 'Ambris', 'Rojas', 1, 'oswaldoambriz41@gmail.com', 'pinpon', 2, 'F0202A24FF'),
(10, 'Emilio', 'Ramirez', 'Hernandez', 1, 'eramirez1420@coonalepmex.edu.mx', '2', 0, '140503'),
(11, 'Diego', 'Alvarez', 'Gonzalez', 1, 'dangonzalez1020@conalepmex.edu.mx', '1', 0, 'DGG1'),
(12, 'Lael', 'Urquiza', 'Ambrosio', 1, 'jesus1125@outlook.com', 'lael110', 2, 'Camaron110'),
(13, 'Andrea', 'Perez', 'Alanis', 2, 'andreaperrezalanis@gmail.com', 'andy', 1, 'apa0329'),
(14, 'Ximena', 'Liera', 'Zacarias', 2, 'xliera1220@conalep.mex.edu.mx', 'lele', 1, 'XLZ222'),
(15, 'Jamin', 'Rodriguez', 'Ramirez', 1, 'jaminramirez75@gmail.com', 'Jam', 2, 'elbicho7'),
(16, 'Michel', 'Rojas', 'Barajas', 2, 'michrbarajas@gmail.com', 'Mich<3', 1, 'rb0410'),
(17, 'Eder', 'Padilla', 'Dominguez', 1, 'ederpadilladominguez@gmail.com', 'Uriel', 2, 'eder2417'),
(18, 'Diego', 'Hernandez', 'Vargas', 1, 'dh95979@gamil.com', 'Diego', 2, '56CSSI0'),
(19, 'Oscar', 'Garcia', 'Pozos', 1, 'jesusgarciapozos@gmail.com', '1', 0, '0342562'),
(20, 'Irving', 'Ramirez', 'Perez', 1, 'alejandrorp484@gmail,com', '1', 0, '122367Com22'),
(21, 'Caleb', 'Pedraza', 'Dorantes', 1, 'pedrazaalejandro224@gmail,com', '2', 0, '47A3412'),
(22, 'Fernando', 'Rodriguez', 'Cruz', 1, 'frnnarc22@gmail.com', 'MaxZ', 2, 'Xyx22T'),
(23, 'Leonel', 'Hernandez', 'Garfias', 1, 'lionelhg21@gmail.com', 'LioM', 1, 'MIL1406'),
(24, 'Aide', 'Alcauter', 'Aponte', 2, 'princhipesaaide@gmail.com', 'Meyd1', 2, '151018Oct19'),
(25, 'Michelle', 'Gomez', 'Hernandez', 2, 'gomezhernandezmichelle4@gmail.com', '1', 0, 'MICHELLE232323'),
(26, 'Joseline', 'Cruz', 'Segundo', 2, 'cruzjoselin40@gmail.com', '2', 0, 'N04A1V8l'),
(27, 'Natanael', 'Hernandez', 'Cervantes', 1, 'natt171105@gamil.com', 'Natt', 1, '7-yo0589'),
(28, 'Alejandra', 'Garcia', 'Aviles', 2, 'ingridalega751@gmail.com', 'Alejj7', 1, 'negrolanida1402'),
(29, 'Jonathan', 'Garcia', 'Cayetano', 1, 'garciacayetanojonathan9@gmail.com', 'MJhon', 2, 'jhon1809xd'),
(30, 'Fernando', 'Romero', 'Romero', 1, 'ferchoromro768@gmail.com', 'Fer', 2, 'balon12345'),
(31, 'Alan', 'Olguin', 'Moralez', 1, 'alandej270105@gmail.com', 'AlanJ', 2, 'abcde'),
(32, 'Abraham', 'Iturbide', 'Lopez', 1, 'dl2369034', 'frijolito23xd', 1, '23014'),
(33, 'Jaqueline', 'Palyot', 'Anaya', 2, 'jpalayot14@gmail.com', 'jaquiP', 1, 'mcp25cj02'),
(34, 'Daniel', 'Leon', 'Alvarez', 1, 'danieleon736@gmail.com', 'DaniLA', 2, 'adla051104'),
(35, 'Moises', 'Martinez', 'Teran', 1, 'brayan,oisesmaryinez@gmail.com', 'Moiseis88', 1, 'flx33'),
(36, 'Hugo', 'Narvaes', 'Martinez', 1, 'narvaezmartinezhugo@gmail.com', 'Martinez', 2, 'hugomart'),
(37, 'Carlos', 'Elias', 'Villaseca', 1, 'celias0220@conalepmex.edu.mx', 'Carlos7u7', 1, 'melaperaconlapapaya'),
(38, 'Noemi', 'Alcauter', 'Aponte', 2, 'princhipesanoemi@gmail.com', 'Mimi', 1, '151010'),
(39, 'Jesus', 'Salguero', 'Lopez', 1, 'jsalguero1320@conalepmex.edu.mx', 'Yisus', 1, '12345'),
(40, 'Oscar', 'Garnica', 'Benitez', 1, 'garnicaosc@gmail.com', 'Oscar132', 2, 'orcargb1324'),
(41, 'Kevin', 'Garcia', 'Hernandez', 1, 'kgamauri1112@gmail.com', 'kagh', 1, 'pelonsoban'),
(42, 'Carlos', 'Chavez', 'Moreno', 1, 'Cchavez1920@conalepmex.edu.mx', 'Carlos9', 2, 'holaguapo'),
(43, 'Alan', 'Trinidad', 'Rios', 1, 'alan1302@gmail.com', 'Alan7', 1, 'contraseña'),
(44, 'Raul', 'Gonzalez', 'Ruiz', 1, 'diegonzalez13.drgr@gmail.com', 'DiegpRg', 2, 'Tarzan'),
(45, 'Brenda', 'Clemente', 'Paulino', 2, 'brendaluceroclemente@gmail.com', 'BrendaLc', 2, 'brenn6660$');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacionlugar`
--
ALTER TABLE `calificacionlugar`
  ADD PRIMARY KEY (`Id_CalificacionL`),
  ADD KEY `Id_Lugar` (`Id_Lugar`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `categorial`
--
ALTER TABLE `categorial`
  ADD PRIMARY KEY (`Id_Categoria`),
  ADD KEY `Id_Restriccion` (`Id_Restriccion`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Id_Comentario`),
  ADD KEY `Id_Lugar` (`Id_Lugar`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `costos`
--
ALTER TABLE `costos`
  ADD PRIMARY KEY (`Id_Costos`),
  ADD KEY `Id_Lugar` (`Id_Lugar`);

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
  ADD KEY `Id_Lugar` (`Id_Lugar`),
  ADD KEY `Id_Tusuario` (`Id_Tusuario`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Id_Horario`),
  ADD KEY `Id_Estatus` (`Id_Estatus`),
  ADD KEY `Id_Lugar` (`Id_Lugar`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`Id_Lugar`),
  ADD KEY `Id_Estado` (`Id_Estado`),
  ADD KEY `Id_Municipio` (`Id_Municipio`),
  ADD KEY `Id_Categoria` (`Id_Categoria`),
  ADD KEY `Id_Estado_2` (`Id_Estado`),
  ADD KEY `Id_Municipio_2` (`Id_Municipio`),
  ADD KEY `Id_Horario` (`Id_Horario`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `Id_Estado` (`Id_Estado`);

--
-- Indices de la tabla `recompensa`
--
ALTER TABLE `recompensa`
  ADD PRIMARY KEY (`Id_Recompensa`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `restricciones`
--
ALTER TABLE `restricciones`
  ADD PRIMARY KEY (`Id_Restriccion`),
  ADD KEY `Id_Categoria` (`Id_Categoria`);

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
  ADD KEY `Id_Tusuario` (`Id_Tusuario`),
  ADD KEY `Id_Genero` (`Id_Genero`),
  ADD KEY `Id_Tusuario_2` (`Id_Tusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacionlugar`
--
ALTER TABLE `calificacionlugar`
  MODIFY `Id_CalificacionL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorial`
--
ALTER TABLE `categorial`
  MODIFY `Id_Categoria` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `Id_Horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `Id_Lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `recompensa`
--
ALTER TABLE `recompensa`
  MODIFY `Id_Recompensa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restricciones`
--
ALTER TABLE `restricciones`
  MODIFY `Id_Restriccion` int(11) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `calificacionlugar`
--
ALTER TABLE `calificacionlugar`
  ADD CONSTRAINT `calificacionlugar_ibfk_1` FOREIGN KEY (`Id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `categorial`
--
ALTER TABLE `categorial`
  ADD CONSTRAINT `categorial_ibfk_1` FOREIGN KEY (`Id_Restriccion`) REFERENCES `restricciones` (`Id_Restriccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`Id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `costos`
--
ALTER TABLE `costos`
  ADD CONSTRAINT `costos_ibfk_1` FOREIGN KEY (`Id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galerialugar`
--
ALTER TABLE `galerialugar`
  ADD CONSTRAINT `galerialugar_ibfk_1` FOREIGN KEY (`Id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `galerialugar_ibfk_2` FOREIGN KEY (`Id_Tusuario`) REFERENCES `tusuario` (`Id_Tusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`Id_Lugar`) REFERENCES `lugares` (`Id_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`Id_Estatus`) REFERENCES `estatus` (`Id_Estatus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`Id_Municipio`) REFERENCES `municipio` (`Id_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lugares_ibfk_2` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`Id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`Id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `recompensa`
--
ALTER TABLE `recompensa`
  ADD CONSTRAINT `recompensa_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `restricciones`
--
ALTER TABLE `restricciones`
  ADD CONSTRAINT `restricciones_ibfk_1` FOREIGN KEY (`Id_Categoria`) REFERENCES `categorial` (`Id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Genero`) REFERENCES `genero` (`Id_Genero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
