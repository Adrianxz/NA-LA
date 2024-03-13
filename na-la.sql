-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2023 a las 06:35:38
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `na-la`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_grupo`
--

CREATE TABLE `admin_grupo` (
  `ADMINGR_ID` int(11) NOT NULL,
  `PER_ID` int(11) DEFAULT NULL,
  `GRUPO_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_grupo`
--

INSERT INTO `admin_grupo` (`ADMINGR_ID`, `PER_ID`, `GRUPO_ID`) VALUES
(4, 242, 20),
(7, 242, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `CHAT_ID` int(11) NOT NULL,
  `CHAT_MENSAJE` varchar(255) DEFAULT NULL,
  `PER_ID` int(11) DEFAULT NULL,
  `GRUPO_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`CHAT_ID`, `CHAT_MENSAJE`, `PER_ID`, `GRUPO_ID`) VALUES
(1, 'AK47', 242, 20),
(2, 'M4', 242, 20),
(3, 'KLK', 242, 20),
(4, 'K', 319, 20),
(6, 'K', 319, 20),
(8, 'sdf', 242, 20),
(9, 'ka', 242, 20),
(10, 'K', 242, 23),
(11, 'x', 242, 23),
(12, 'l', 242, 20),
(13, 'x', 242, 20),
(14, 'x', 242, 20),
(15, 'x', 242, 23),
(16, 'z', 242, 23),
(17, 'a', 242, 23),
(18, 'a', 242, 23),
(19, 'x', 242, 23),
(20, 'k', 242, 23),
(21, 'x', 242, 20),
(22, 'x', 242, 20),
(23, 'a', 242, 20),
(24, 'aaaaaaaaaaaaaa', 242, 20),
(25, 'xxxxxxxxxxxxxxxxxx', 319, 20),
(26, 'Yeah', 242, 20),
(27, 'De night', 319, 20),
(28, 'de night', 242, 20),
(29, 'de night', 242, 20),
(30, 'dont crash', 319, 20),
(31, 'a', 332, 20),
(32, 'A', 332, 20),
(33, 'x', 332, 20),
(34, 'LuchoGOAD', 332, 20),
(35, 'EiversonGOAT', 319, 20),
(36, 'KLK', 242, 20),
(37, 'k', 332, 20),
(38, 'AK47... .l.', 242, 20),
(39, 'La mala para la abuela de daifer', 332, 20),
(40, 'R', 319, 20),
(41, 'a', 242, 20),
(42, 'OMG RONNy', 242, 20),
(43, 'LUCHOGOAT', 332, 20),
(44, 'EIVERSONGOAT', 319, 20),
(45, 'La mala para la mama de daifer', 332, 20),
(46, 'R', 319, 20),
(47, 'Jum', 242, 20),
(48, 'The night', 242, 20),
(49, '.l.', 242, 20),
(50, 'x', 338, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gods`
--

CREATE TABLE `gods` (
  `GODS_ID` int(11) NOT NULL,
  `GODS_USUARIO` varchar(20) DEFAULT NULL,
  `GODS_CONTRA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `GRUPO_ID` int(11) NOT NULL,
  `TIPOGR_ID` int(11) DEFAULT NULL,
  `GRUPO_NOMBRE` varchar(20) DEFAULT NULL,
  `GRUPO_ALIAS` varchar(10) DEFAULT NULL,
  `GRUPO_DESCRIP` varchar(200) DEFAULT NULL,
  `GRUPO_CUPOS` varchar(3) DEFAULT NULL,
  `Grupo_FechCrea` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`GRUPO_ID`, `TIPOGR_ID`, `GRUPO_NOMBRE`, `GRUPO_ALIAS`, `GRUPO_DESCRIP`, `GRUPO_CUPOS`, `Grupo_FechCrea`) VALUES
(20, 2, 'Uchiha', 'XZ', 'I Dont need love, i need is power', '10', '2023-04-22'),
(21, 2, 'Uchihal', 'XZl', 'I Dont need love, i need is power', '10', '2023-04-23'),
(23, 1, 'asd', 'Deadxs', 'asda', '1', '2023-04-25'),
(24, 2, 'k', 'a', 'as', '2', '2023-04-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_personas`
--

CREATE TABLE `grupo_personas` (
  `GRUPO_ID` int(11) NOT NULL,
  `PER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupo_personas`
--

INSERT INTO `grupo_personas` (`GRUPO_ID`, `PER_ID`) VALUES
(20, 242),
(20, 319),
(23, 242),
(23, 338);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identidad`
--

CREATE TABLE `identidad` (
  `IDENT_ID` int(11) NOT NULL,
  `IDENT_TIPO` varchar(30) DEFAULT NULL,
  `IDENT_ALIAS` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `identidad`
--

INSERT INTO `identidad` (`IDENT_ID`, `IDENT_TIPO`, `IDENT_ALIAS`) VALUES
(1, 'Cédula de ciudadanía', 'CC'),
(2, 'Tarjeta de identidad', 'TI'),
(3, 'Cedula de Extranjería ', 'CE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `PER_ID` int(11) NOT NULL,
  `IDENT_ID` int(11) DEFAULT NULL,
  `PER_NOMBRE` varchar(50) DEFAULT NULL,
  `PER_APELLIDO` varchar(50) DEFAULT NULL,
  `PER_NUMIDENT` varchar(10) DEFAULT NULL,
  `PER_TELEF` varchar(10) DEFAULT NULL,
  `PER_EMAIL` varchar(50) DEFAULT NULL,
  `PER_CONTRA` varchar(255) DEFAULT NULL,
  `PER_FOTO` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`PER_ID`, `IDENT_ID`, `PER_NOMBRE`, `PER_APELLIDO`, `PER_NUMIDENT`, `PER_TELEF`, `PER_EMAIL`, `PER_CONTRA`, `PER_FOTO`) VALUES
(242, 1, 'Adrian', 'Cordoba', '1077996648', '3126627120', 'adrian24cg@gmail.com', 'adrian24', '../imagesPerfil/Madara_de_Joven.png'),
(319, 1, 'Luis Eduardo ', 'Arango Cuesta', '2343243', '213123219', 'learango@gmail.com', 'asdjnasdksda', '../imagesPerfil/Defecto.jpg'),
(326, 1, 'Adrian Madara', 'Uchiha', '107796648', '314686281', 'madaraxd32@gmail.com', 'adsdadada', 'imagesPerfil/Defecto.JPG'),
(330, 1, 'God Adrian el dueño de esto -Uchiha-.-.', 'Palma', '3456789', '3422345', 'God@gmail.com', 'sdfsdfsfsdfs', 'imagesPerfil/Defecto.JPG'),
(331, 2, 'Jerny', 'Bolivar', '1029780016', '34322342', 'Jernysag@gmail.com', 'adrian24', 'imagesPerfil/Defecto.JPG'),
(332, 1, 'evelio', 'rodriguez', '1077897546', '3137899776', 'eidamoro14@gmail.com', 'eiverson123', 'imagesPerfil/Defecto.JPG'),
(334, 1, 'Shisui', 'Uchiha', '108773108', '3128857120', 'ShisuiUchiha@gmail.com', 'Sharingan', 'imagesPerfil/Defecto.JPG'),
(335, 2, 'XL', 'LK', '1231231', '213131', 'lk@gmail.com', 'KLK123', 'imagesPerfil/Defecto.JPG'),
(336, 2, 'Openai', 'ChatGpt', '107799632', '312671982', 'adriaklasd24cg@gmail.com', 'klk123', 'imagesPerfil/Defecto.JPG'),
(337, 1, 'Dey', 'B', '1078457015', '3128299609', 'borjadey01@gmail.com', 'Dey061204', 'imagesPerfil/Defecto.JPG'),
(338, 1, 'Xtajay Klay', 'Xhizket Tesla', '1077996649', '3126627129', 'Xtajay@gmail.com', 'klk123', 'imagesPerfil/Defecto.JPG'),
(339, 1, 'Jonah', 'Klay', '2342342', '3126627122', 'klay@gmail.com', 'klay123', 'imagesPerfil/Defecto.JPG'),
(340, 1, 'slize', 'dj', '108899972', '123123123', 'klk213812@gmail.com', '123456', 'imagesPerfil/Defecto.JPG'),
(341, 1, 'asda', 'asdasda', '318312391', '1326731361', 'opoq@gmail.com', 'klk123', '../imagesPerfil/Defecto.JPG'),
(342, 1, 'qeqwe', 'asdadas', '131232', '3232131', 'adrian24l@gmail.com', 'klk123', '../imagesPerfil/Defecto.JPG'),
(343, 1, 'angel', 'edt7', '1078456712', '3229519524', 'angeled732@gmail.com', 'papiangel07', '../imagesPerfil/Defecto.jpg'),
(348, 1, 'as', 'a', '12', '1213', 'ad@gmail.com', '$2y$10$V7avWfTGMCw2tnHP1CdPke1K4hf1R8NPh4QOtKIUkVOyRQq/ZbfhO', '../imagesPerfil/Defecto.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_grupo`
--

CREATE TABLE `tipo_grupo` (
  `TIPOGR_ID` int(11) NOT NULL,
  `TIPOGR_DESCRIP` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_grupo`
--

INSERT INTO `tipo_grupo` (`TIPOGR_ID`, `TIPOGR_DESCRIP`) VALUES
(1, 'Publico'),
(2, 'Privado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_grupo`
--
ALTER TABLE `admin_grupo`
  ADD PRIMARY KEY (`ADMINGR_ID`),
  ADD KEY `FK_RELATIONSHIP_3` (`PER_ID`),
  ADD KEY `GrupoFK` (`GRUPO_ID`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`CHAT_ID`),
  ADD KEY `Chat-Per` (`PER_ID`),
  ADD KEY `Chat-Grupo` (`GRUPO_ID`);

--
-- Indices de la tabla `gods`
--
ALTER TABLE `gods`
  ADD PRIMARY KEY (`GODS_ID`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`GRUPO_ID`),
  ADD KEY `FK_RELATIONSHIP_5` (`TIPOGR_ID`),
  ADD KEY `GRUPO_NOMBRE` (`GRUPO_NOMBRE`) USING BTREE,
  ADD KEY `GRUPO_ALIAS` (`GRUPO_ALIAS`) USING BTREE;

--
-- Indices de la tabla `grupo_personas`
--
ALTER TABLE `grupo_personas`
  ADD PRIMARY KEY (`GRUPO_ID`,`PER_ID`),
  ADD KEY `FK_RELATIONSHIP_7` (`PER_ID`);

--
-- Indices de la tabla `identidad`
--
ALTER TABLE `identidad`
  ADD PRIMARY KEY (`IDENT_ID`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`PER_ID`),
  ADD KEY `FK_RELATIONSHIP_6` (`IDENT_ID`),
  ADD KEY `PER_CONTRA` (`PER_CONTRA`) USING BTREE,
  ADD KEY `PER_TELEF` (`PER_TELEF`) USING BTREE,
  ADD KEY `PER_EMAIL` (`PER_EMAIL`) USING BTREE,
  ADD KEY `PER_NUMIDENT` (`PER_NUMIDENT`) USING BTREE;

--
-- Indices de la tabla `tipo_grupo`
--
ALTER TABLE `tipo_grupo`
  ADD PRIMARY KEY (`TIPOGR_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_grupo`
--
ALTER TABLE `admin_grupo`
  MODIFY `ADMINGR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `CHAT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `gods`
--
ALTER TABLE `gods`
  MODIFY `GODS_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `GRUPO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `grupo_personas`
--
ALTER TABLE `grupo_personas`
  MODIFY `GRUPO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `identidad`
--
ALTER TABLE `identidad`
  MODIFY `IDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `PER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT de la tabla `tipo_grupo`
--
ALTER TABLE `tipo_grupo`
  MODIFY `TIPOGR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin_grupo`
--
ALTER TABLE `admin_grupo`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`PER_ID`) REFERENCES `persona` (`PER_ID`),
  ADD CONSTRAINT `GrupoFK` FOREIGN KEY (`GRUPO_ID`) REFERENCES `grupo` (`GRUPO_ID`);

--
-- Filtros para la tabla `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `Chat-Grupo` FOREIGN KEY (`GRUPO_ID`) REFERENCES `grupo` (`GRUPO_ID`),
  ADD CONSTRAINT `Chat-Per` FOREIGN KEY (`PER_ID`) REFERENCES `persona` (`PER_ID`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`TIPOGR_ID`) REFERENCES `tipo_grupo` (`TIPOGR_ID`);

--
-- Filtros para la tabla `grupo_personas`
--
ALTER TABLE `grupo_personas`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`GRUPO_ID`) REFERENCES `grupo` (`GRUPO_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`PER_ID`) REFERENCES `persona` (`PER_ID`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`IDENT_ID`) REFERENCES `identidad` (`IDENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
