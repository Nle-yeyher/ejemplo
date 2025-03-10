-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-03-2025 a las 19:25:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `contarProductosPorEstado` (IN `nombre_estado` VARCHAR(20), OUT `cantidad` INT)   BEGIN
  SELECT COUNT(*) INTO cantidad FROM productos WHERE estado = nombre_estado;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerProductosPorEstado` (IN `nombre_estado` VARCHAR(20))   BEGIN
  SELECT * FROM productos WHERE estado = nombre_estado;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` enum('disponible','agotado','no disponible') DEFAULT 'disponible',
  `precio` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `estado`, `precio`) VALUES
(1, 'Arepas de maíz', 'disponible', 5000.00),
(2, 'Bandeja paisa', 'agotado', 25000.00),
(3, 'Ajiaco santafereño', 'no disponible', 22000.00),
(4, 'Sancocho de gallina', 'disponible', 20000.00),
(5, 'Empanadas', 'agotado', 3000.00),
(6, 'Tamales tolimenses', 'no disponible', 12000.00),
(7, 'Lechona tolimense', 'disponible', 28000.00),
(8, 'Mote de queso', 'agotado', 18000.00),
(9, 'Carimañolas', 'no disponible', 5000.00),
(10, 'Chicharrón antioqueño', 'disponible', 15000.00),
(11, 'Posta cartagenera', 'agotado', 35000.00),
(12, 'Sobrebarriga en salsa', 'no disponible', 23000.00),
(13, 'Fritanga bogotana', 'disponible', 27000.00),
(14, 'Mazamorra paisa', 'agotado', 8000.00),
(15, 'Arequipe', 'disponible', 7000.00),
(16, 'Buñuelos', 'disponible', 2500.00),
(17, 'Natilla', 'agotado', 10000.00),
(18, 'Cuchuco de trigo', 'no disponible', 17000.00),
(19, 'Tamales vallunos', 'disponible', 13000.00),
(20, 'Cholado', 'agotado', 9000.00),
(21, 'Arroz atollado', 'disponible', 18000.00),
(22, 'Cazuela de mariscos', 'agotado', 32000.00),
(23, 'Café colombiano', 'no disponible', 15000.00),
(24, 'Tamales santandereanos', 'disponible', 14000.00),
(25, 'Chicha de maíz', 'agotado', 7000.00),
(26, 'Pan de bono', 'no disponible', 2500.00),
(27, 'Chorizo santarosano', 'disponible', 11000.00),
(28, 'Cocadas', 'agotado', 5000.00),
(29, 'Patacones con hogao', 'no disponible', 8000.00),
(30, 'Mielmesabe', 'disponible', 6000.00),
(31, 'Jugo de lulo', 'disponible', 5000.00),
(32, 'Cuchuco de cebada', 'agotado', 17000.00),
(33, 'Merengón', 'no disponible', 8000.00),
(34, 'Tamal costeño', 'disponible', 16000.00),
(35, 'Masato', 'agotado', 6000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
