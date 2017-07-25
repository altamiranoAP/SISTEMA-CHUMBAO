-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2017 a las 02:47:09
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_registrocivil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_defuncion`
--

CREATE TABLE `acta_defuncion` (
  `Num_Acta_d` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_difunto` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_difunto` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_difunto` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_defuncion` date DEFAULT NULL,
  `Alcalde` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Img_defuncion` longblob,
  `Id_usuario` int(11) DEFAULT NULL,
  `Fecha_ingreso_d` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_matrimonio`
--

CREATE TABLE `acta_matrimonio` (
  `Num_Acta_m` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_novio` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_novio` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_novio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento_novio` date DEFAULT NULL,
  `Nombre_novia` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_novia` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_novia` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento_novia` date DEFAULT NULL,
  `fecha_matrimonio` date DEFAULT NULL,
  `Alcalde` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Img_matrimonio` longblob,
  `Id_usuario` int(11) DEFAULT NULL,
  `Fecha_ingreso_m` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_nacimiento`
--

CREATE TABLE `acta_nacimiento` (
  `Num_Acta_n` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_nacido` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_nacido` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_nacido` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Nombre_padre` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_padre` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_Padre` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento_padre` date DEFAULT NULL,
  `Nombre_madre` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_madre` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_Madre` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento_madre` date DEFAULT NULL,
  `Alcalde` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Img_nacimiento` longblob,
  `Id_usuario` int(11) DEFAULT NULL,
  `Fecha_ingreso_n` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrayenta`
--

CREATE TABLE `contrayenta` (
  `Id_contrayenta` int(11) NOT NULL,
  `Nombre_contrayenta` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_contrayenta` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI` int(8) DEFAULT NULL,
  `Estado_civil` varchar(18) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Ocupacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Origen_Departemento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Origen_Provincia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Origen_Distrito` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrayente`
--

CREATE TABLE `contrayente` (
  `Id_contrayente` int(11) NOT NULL,
  `Nombre_contrayente` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_contrayente` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI` int(8) DEFAULT NULL,
  `Estado_civil` varchar(18) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Ocupacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Origen_Departemento` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Origen_Provincia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Origen_Distrito` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_defuncion`
--

CREATE TABLE `libro_defuncion` (
  `Num_libro_def` int(11) NOT NULL,
  `Num_Acta_d` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_matrimonio`
--

CREATE TABLE `libro_matrimonio` (
  `Num_libro_mat` int(11) NOT NULL,
  `Num_Acta_m` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_nacimientos`
--

CREATE TABLE `libro_nacimientos` (
  `Num_libro_nac` int(11) NOT NULL,
  `Num_Acta_n` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `madre_del_novio`
--

CREATE TABLE `madre_del_novio` (
  `Id_madre_de_novio` int(11) NOT NULL,
  `Nombre_madre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_madre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `madre_novia`
--

CREATE TABLE `madre_novia` (
  `Id_madre_novia` int(11) NOT NULL,
  `Nombre_madre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_madre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `madrina`
--

CREATE TABLE `madrina` (
  `Id_madrina` int(11) NOT NULL,
  `Nombre_madrina` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_madrina` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Estado_civil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Ocupacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `IdModelo` int(11) NOT NULL,
  `Tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Referencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`IdModelo`, `Tipo`, `Referencia`) VALUES
(1, 'Matrimonio', 'Documentos para Celebración Matrimonio '),
(2, 'prueba', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padre_del_novia`
--

CREATE TABLE `padre_del_novia` (
  `Id_padre_de_novia` int(11) NOT NULL,
  `Nombre_padre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_padre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padre_del_novio`
--

CREATE TABLE `padre_del_novio` (
  `Id_padre_de_novio` int(11) NOT NULL,
  `Nombre_padre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_padre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padrino`
--

CREATE TABLE `padrino` (
  `Id_Padrino` int(11) NOT NULL,
  `Nombre_padrino` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_padrino` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Estado_civil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Ocupacion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_de_llenado`
--

CREATE TABLE `registro_de_llenado` (
  `IdRegistro` int(11) NOT NULL,
  `IdModelo` int(11) DEFAULT NULL,
  `Fecha_Registro` date DEFAULT NULL,
  `Id_contrayente` int(11) NOT NULL,
  `Id_contrayenta` int(11) NOT NULL,
  `Id_padre_de_novio` int(11) DEFAULT NULL,
  `Id_madre_de_novio` int(11) DEFAULT NULL,
  `Id_padre_de_novia` int(11) DEFAULT NULL,
  `Id_madre_novia` int(11) DEFAULT NULL,
  `Id_Padrino` int(11) DEFAULT NULL,
  `Id_madrina` int(11) DEFAULT NULL,
  `IdUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(11) NOT NULL,
  `Nombre_persona` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Apellido_persona` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI_usuario` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `Nombre_usuario` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Contra_usuario` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Nombre_persona`, `Apellido_persona`, `DNI_usuario`, `fecha_ingreso`, `Nombre_usuario`, `Contra_usuario`) VALUES
(1, 'admin', 'admin', '7808562', '2017-07-11', 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acta_defuncion`
--
ALTER TABLE `acta_defuncion`
  ADD PRIMARY KEY (`Num_Acta_d`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `acta_matrimonio`
--
ALTER TABLE `acta_matrimonio`
  ADD PRIMARY KEY (`Num_Acta_m`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `acta_nacimiento`
--
ALTER TABLE `acta_nacimiento`
  ADD PRIMARY KEY (`Num_Acta_n`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `contrayenta`
--
ALTER TABLE `contrayenta`
  ADD PRIMARY KEY (`Id_contrayenta`);

--
-- Indices de la tabla `contrayente`
--
ALTER TABLE `contrayente`
  ADD PRIMARY KEY (`Id_contrayente`);

--
-- Indices de la tabla `libro_defuncion`
--
ALTER TABLE `libro_defuncion`
  ADD PRIMARY KEY (`Num_libro_def`),
  ADD KEY `Num_Acta_d` (`Num_Acta_d`);

--
-- Indices de la tabla `libro_matrimonio`
--
ALTER TABLE `libro_matrimonio`
  ADD PRIMARY KEY (`Num_libro_mat`),
  ADD KEY `Num_Acta_m` (`Num_Acta_m`);

--
-- Indices de la tabla `libro_nacimientos`
--
ALTER TABLE `libro_nacimientos`
  ADD PRIMARY KEY (`Num_libro_nac`),
  ADD KEY `Num_Acta_n` (`Num_Acta_n`);

--
-- Indices de la tabla `madre_del_novio`
--
ALTER TABLE `madre_del_novio`
  ADD PRIMARY KEY (`Id_madre_de_novio`);

--
-- Indices de la tabla `madre_novia`
--
ALTER TABLE `madre_novia`
  ADD PRIMARY KEY (`Id_madre_novia`);

--
-- Indices de la tabla `madrina`
--
ALTER TABLE `madrina`
  ADD PRIMARY KEY (`Id_madrina`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`IdModelo`);

--
-- Indices de la tabla `padre_del_novia`
--
ALTER TABLE `padre_del_novia`
  ADD PRIMARY KEY (`Id_padre_de_novia`);

--
-- Indices de la tabla `padre_del_novio`
--
ALTER TABLE `padre_del_novio`
  ADD PRIMARY KEY (`Id_padre_de_novio`);

--
-- Indices de la tabla `padrino`
--
ALTER TABLE `padrino`
  ADD PRIMARY KEY (`Id_Padrino`);

--
-- Indices de la tabla `registro_de_llenado`
--
ALTER TABLE `registro_de_llenado`
  ADD PRIMARY KEY (`IdRegistro`),
  ADD KEY `Id_madrina` (`Id_madrina`),
  ADD KEY `Id_Padrino` (`Id_Padrino`),
  ADD KEY `Id_madre_novia` (`Id_madre_novia`),
  ADD KEY `Id_padre_de_novia` (`Id_padre_de_novia`),
  ADD KEY `Id_madre_de_novio` (`Id_madre_de_novio`),
  ADD KEY `Id_padre_de_novio` (`Id_padre_de_novio`),
  ADD KEY `Id_contrayenta` (`Id_contrayenta`),
  ADD KEY `Id_contrayente` (`Id_contrayente`),
  ADD KEY `IdModelo` (`IdModelo`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acta_defuncion`
--
ALTER TABLE `acta_defuncion`
  ADD CONSTRAINT `acta_defuncion_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `acta_matrimonio`
--
ALTER TABLE `acta_matrimonio`
  ADD CONSTRAINT `acta_matrimonio_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `acta_nacimiento`
--
ALTER TABLE `acta_nacimiento`
  ADD CONSTRAINT `acta_nacimiento_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_defuncion`
--
ALTER TABLE `libro_defuncion`
  ADD CONSTRAINT `libro_defuncion_ibfk_1` FOREIGN KEY (`Num_Acta_d`) REFERENCES `acta_defuncion` (`Num_Acta_d`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_matrimonio`
--
ALTER TABLE `libro_matrimonio`
  ADD CONSTRAINT `libro_matrimonio_ibfk_1` FOREIGN KEY (`Num_Acta_m`) REFERENCES `acta_matrimonio` (`Num_Acta_m`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `libro_nacimientos`
--
ALTER TABLE `libro_nacimientos`
  ADD CONSTRAINT `libro_nacimientos_ibfk_1` FOREIGN KEY (`Num_Acta_n`) REFERENCES `acta_nacimiento` (`Num_Acta_n`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `registro_de_llenado`
--
ALTER TABLE `registro_de_llenado`
  ADD CONSTRAINT `registro_de_llenado_ibfk_1` FOREIGN KEY (`Id_padre_de_novio`) REFERENCES `padre_del_novio` (`Id_padre_de_novio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_10` FOREIGN KEY (`IdModelo`) REFERENCES `modelo` (`IdModelo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_2` FOREIGN KEY (`Id_madre_de_novio`) REFERENCES `madre_del_novio` (`Id_madre_de_novio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_3` FOREIGN KEY (`Id_contrayente`) REFERENCES `contrayente` (`Id_contrayente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_4` FOREIGN KEY (`Id_contrayenta`) REFERENCES `contrayenta` (`Id_contrayenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_5` FOREIGN KEY (`Id_padre_de_novia`) REFERENCES `padre_del_novia` (`Id_padre_de_novia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_6` FOREIGN KEY (`Id_madre_novia`) REFERENCES `madre_novia` (`Id_madre_novia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_7` FOREIGN KEY (`Id_Padrino`) REFERENCES `padrino` (`Id_Padrino`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_8` FOREIGN KEY (`Id_madrina`) REFERENCES `madrina` (`Id_madrina`) ON UPDATE CASCADE,
  ADD CONSTRAINT `registro_de_llenado_ibfk_9` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`Id_usuario`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
