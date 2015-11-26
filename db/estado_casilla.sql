-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-11-2015 a las 07:34:35
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

