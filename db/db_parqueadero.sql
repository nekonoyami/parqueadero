-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-11-2015 a las 09:52:33
-- Versión del servidor: 5.5.8
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE IF NOT EXISTS `conductores` (
  `con_documento` int(11) NOT NULL,
  `con_nombre` varchar(25) NOT NULL,
  `con_apellido` varchar(25) NOT NULL,
  `con_fecha_nac` date NOT NULL,
  `con_lugar_nac` varchar(25) NOT NULL,
  `con_direccion` varchar(25) NOT NULL,
  `con_tel` int(11) NOT NULL,
  `con_email` varchar(30) NOT NULL,
  `con_color_car` varchar(25) NOT NULL,
  `con_placa_car` varchar(12) NOT NULL,
  `con_marca_car` varchar(25) NOT NULL,
  `con_model_car` varchar(25) NOT NULL,
  PRIMARY KEY (`con_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `conductores`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_casilla`
--

CREATE TABLE IF NOT EXISTS `estado_casilla` (
  `par_piso` int(11) DEFAULT NULL,
  `cas_pos` varchar(30) NOT NULL,
  `cas_estatus` int(11) NOT NULL,
  PRIMARY KEY (`cas_pos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `estado_casilla`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `usu_documento` int(11) NOT NULL,
  `feha_log` date NOT NULL,
  `hora_log` time NOT NULL,
  `accion_log` text NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `log`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero`
--

CREATE TABLE IF NOT EXISTS `parqueadero` (
  `par_pisos` int(11) NOT NULL,
  `par_piso_casillas` int(11) NOT NULL,
  PRIMARY KEY (`par_pisos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `parqueadero`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
  `id_documento` int(11) NOT NULL,
  `cas_pos` varchar(10) NOT NULL,
  `placas` varchar(15) NOT NULL,
  PRIMARY KEY (`id_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `reservas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usu_nombre` varchar(25) NOT NULL,
  `usu_apellido` varchar(25) NOT NULL,
  `usu_documento` int(11) NOT NULL,
  `usu_fecha_nac` date NOT NULL,
  `usu_lugar_nac` varchar(35) NOT NULL,
  `usu_direccion` varchar(25) NOT NULL,
  `usu_tel` int(11) NOT NULL,
  `usu_email` varchar(25) NOT NULL,
  `usu_usuario` varchar(25) NOT NULL,
  `usu_pass` varchar(25) NOT NULL,
  `usu_admin` char(1) NOT NULL,
  PRIMARY KEY (`usu_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_nombre`, `usu_apellido`, `usu_documento`, `usu_fecha_nac`, `usu_lugar_nac`, `usu_direccion`, `usu_tel`, `usu_email`, `usu_usuario`, `usu_pass`, `usu_admin`) VALUES
('a', 'a', 0, '2015-11-26', 'a', 'a', 123, '0', 'a', 'a', 's'),
('b', 'b', 2, '2015-11-01', 'b', 'b', 345, 'b@a', 'b', 'b', 'n');
