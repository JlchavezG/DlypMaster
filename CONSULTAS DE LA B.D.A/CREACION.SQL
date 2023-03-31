
CREATE TABLE `calificacionlugar` (
  `Id_CalificacionL` int(11) NOT NULL,
  `Calificacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `categorial` (
  `Id_Categoria` int(11) NOT NULL,
  `DescripcionCate` varchar(255) NOT NULL,
  `Id_Restriccion` int(11) NOT NULL,
  `NombreCate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `comentarios` (
  `Id_Comentario` int(11) NOT NULL,
  `id_Lugar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `costos` (
  `Id_Costos` int(11) NOT NULL,
  `CHospedaje` float NOT NULL,
  `CEntrada` float NOT NULL,
  `CTransporte` float NOT NULL,
  `Comida` varchar(255) NOT NULL,
  `Transporte` varchar(255) NOT NULL,
  `id_lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `estado` (
  `Id_Estado` int(11) NOT NULL,
  `NomEstado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `estatus` (
  `Id_Estatus` int(11) NOT NULL,
  `NomEstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `galerialugar` (
  `Id_Galeria` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `Img1` varchar(255) NOT NULL,
  `Img2` varchar(255) NOT NULL,
  `Img3` varchar(255) NOT NULL,
  `Img4` varchar(255) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `NomGenero` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `horario` (
  `Id_Horario` int(11) NOT NULL,
  `Id_Estatus` int(11) NOT NULL,
  `DescripcionH` varchar(255) NOT NULL,
  `Id_Lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



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



CREATE TABLE `municipio` (
  `Id_Municipio` int(11) NOT NULL,
  `NomMun` varchar(255) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `tusuario` (
  `Id_Tusuario` int(11) NOT NULL,
  `NombreTusu` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL,
  `Nick` varchar(55) NOT NULL,
  `Password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



