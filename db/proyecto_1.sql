CREATE DATABASE  IF NOT EXISTS `proyecto_1` /*!40100 */;

USE `proyecto_1`;
-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-04-2021 a las 03:20:55
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

CREATE TABLE `Categorias` (
  `id` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `primary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Categorias`
--

INSERT INTO `Categorias` (`id`, `nombre`, `primary`) VALUES
(1, 'Motos', 1),
(2, 'UTV', 2),
(3, 'Cuatriciclos', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `texto_comentario` varchar(250) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario_id`, `producto_id`, `texto_comentario`, `fecha_creacion`) VALUES
(41, 1, 86, 'Gran moto, super recomendable', '2021-04-26'),
(42, 13, 87, 'Se me rompió a la primera vez que lo meti en el agua, una vergüenza!', '2021-04-26'),
(43, 16, 86, 'Muy buen producto ', '2021-04-26'),
(44, 1, 88, 'Un disparate el precio, estan locos', '2021-04-26'),
(45, 13, 82, 'Muy bueno!', '2021-04-26'),
(46, 14, 87, 'Tremenda oferta, muy buena la pagina ', '2021-04-26'),
(47, 15, 83, 'Hacen envíos a todo el país?', '2021-04-26'),
(48, 16, 90, 'Que robo...', '2021-04-26'),
(49, 1, 84, 'Gran producto', '2021-04-26'),
(50, 13, 81, '¿Aceptan tarjeta de debito?', '2021-04-26'),
(51, 14, 87, 'Lo recomiendo', '2021-04-26'),
(52, 15, 99, '10 puntos el tramite', '2021-04-26'),
(53, 16, 82, 'Gran servicio', '2021-04-26'),
(54, 1, 89, 'Super recomendable, me encanto', '2021-04-26'),
(55, 13, 86, 'Un disparate el precio', '2021-04-26'),
(56, 14, 93, 'Que buena variedad de productos', '2021-04-26'),
(57, 15, 82, 'Gran página', '2021-04-26'),
(58, 16, 81, 'Excelente mantenimiento de la página', '2021-04-26'),
(59, 13, 91, 'Muy buena usabilidad del sitio web', '2021-04-26'),
(60, 1, 99, 'Mejoren la rapidez de la página', '2021-04-26'),
(61, 13, 95, 'Muy recomendable', '2021-04-26'),
(62, 16, 99, 'Para más información?', '2021-04-26'),
(63, 14, 93, 'Tienen alguna sucursal para ver el producto en persona?', '2021-04-26'),
(64, 16, 92, 'Hacen envíos a Mendoza?', '2021-04-26'),
(65, 1, 85, 'Tienen garantía?', '2021-04-26'),
(66, 13, 81, 'Se ven muy buenos', '2021-04-26'),
(67, 14, 93, 'Muy buen trabajo de marketing', '2021-04-26'),
(68, 16, 96, 'Mejoren los precios', '2021-04-26'),
(69, 15, 91, 'Aceptan efectivo?', '2021-04-26'),
(70, 1, 83, 'Aceptan cambio de motos?', '2021-04-26'),
(71, 14, 96, 'Cuales son los métodos de pago?', '2021-04-26'),
(72, 16, 88, 'Con que empresa de envios trabajan', '2021-04-26'),
(73, 13, 83, 'Puedo retirarla en el lugar?', '2021-04-26'),
(74, 1, 91, 'Gran precio en relación al mercado', '2021-04-26'),
(75, 14, 97, 'una locura los precios!', '2021-04-26'),
(76, 15, 99, 'Muy buenos productos', '2021-04-26'),
(77, 16, 88, 'Sigo creyendo que es el mejor lugar de venta para deportes extremos', '2021-04-26'),
(78, 14, 89, 'Muy bueno!', '2021-04-26'),
(79, 15, 96, 'Terrible oferta!', '2021-04-26'),
(80, 15, 83, 'Muy bueno en todo sentido', '2021-04-26'),
(81, 1, 86, 'Gran moto, super recomendable', '2021-04-26'),
(82, 13, 87, 'Se me rompió a la primera vez que lo meti en el agua, una vergüenza!', '2021-04-26'),
(83, 16, 86, 'Muy buen producto ', '2021-04-26'),
(84, 1, 88, 'Un disparate el precio, estan locos', '2021-04-26'),
(85, 13, 82, 'Muy bueno!', '2021-04-26'),
(86, 14, 87, 'Tremenda oferta, muy buena la pagina ', '2021-04-26'),
(87, 15, 83, 'Hacen envíos a todo el país?', '2021-04-26'),
(88, 16, 90, 'Que robo...', '2021-04-26'),
(89, 1, 84, 'Gran producto', '2021-04-26'),
(90, 13, 81, '¿Aceptan tarjeta de debito?', '2021-04-26'),
(91, 14, 87, 'Lo recomiendo', '2021-04-26'),
(92, 15, 99, '10 puntos el tramite', '2021-04-26'),
(93, 16, 82, 'Gran servicio', '2021-04-26'),
(94, 1, 89, 'Super recomendable, me encanto', '2021-04-26'),
(95, 13, 86, 'Un disparate el precio', '2021-04-26'),
(96, 14, 93, 'Que buena variedad de productos', '2021-04-26'),
(97, 15, 82, 'Gran página', '2021-04-26'),
(98, 16, 81, 'Excelente mantenimiento de la página', '2021-04-26'),
(99, 13, 91, 'Muy buena usabilidad del sitio web', '2021-04-26'),
(100, 1, 99, 'Mejoren la rapidez de la página', '2021-04-26'),
(101, 13, 95, 'Muy recomendable', '2021-04-26'),
(102, 16, 99, 'Para más información?', '2021-04-26'),
(103, 14, 93, 'Tienen alguna sucursal para ver el producto en persona?', '2021-04-26'),
(104, 16, 92, 'Hacen envíos a Mendoza?', '2021-04-26'),
(105, 1, 85, 'Tienen garantía?', '2021-04-26'),
(106, 13, 81, 'Se ven muy buenos', '2021-04-26'),
(107, 14, 93, 'Muy buen trabajo de marketing', '2021-04-26'),
(108, 16, 96, 'Mejoren los precios', '2021-04-26'),
(109, 15, 91, 'Aceptan efectivo?', '2021-04-26'),
(110, 1, 83, 'Aceptan cambio de motos?', '2021-04-26'),
(111, 14, 96, 'Cuales son los métodos de pago?', '2021-04-26'),
(112, 16, 88, 'Con que empresa de envios trabajan', '2021-04-26'),
(113, 13, 83, 'Puedo retirarla en el lugar?', '2021-04-26'),
(114, 1, 91, 'Gran precio en relación al mercado', '2021-04-26'),
(115, 14, 97, 'una locura los precios!', '2021-04-26'),
(116, 15, 99, 'Muy buenos productos', '2021-04-26'),
(117, 16, 88, 'Sigo creyendo que es el mejor lugar de venta para deportes extremos', '2021-04-26'),
(118, 14, 89, 'Muy bueno!', '2021-04-26'),
(119, 15, 96, 'Terrible oferta!', '2021-04-26'),
(120, 15, 83, 'Muy bueno en todo sentido', '2021-04-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(100) NOT NULL,
  `categoria_id` int(100) NOT NULL,
  `usuario_id` int(100) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `fecha_de_publicacion` date NOT NULL,
  `URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `usuario_id`, `nombre`, `precio`, `fecha_de_publicacion`, `URL`) VALUES
(81, 2, 2, 'Motomel Pitbull 200', '307', '2021-04-15', ''),
(82, 1, 1, 'Zanella G-Force 250', '631', '2021-04-15', ''),
(83, 2, 1, 'UTV Gamma Z-Force 550', '988', '2021-04-15', ''),
(84, 1, 2, 'UTV Maverick Polaris Rzr', '871', '2021-04-15', ''),
(85, 2, 3, 'Honda CRF 2021', '691', '2021-04-15', ''),
(86, 1, 3, 'Beta Racing 250X', '247', '2021-04-15', ''),
(87, 3, 2, 'Yamaha Raptor 700', '788', '2021-04-15', ''),
(88, 2, 3, 'Yamaha YZF R1 M\r\n', '938', '2021-04-15', ''),
(89, 3, 1, 'Honda Tornado xr250', '640', '2021-04-15', ''),
(90, 1, 2, 'UTV Honda pioneer 700', '550', '2021-04-15', ''),
(91, 2, 2, 'Motomel Pitbull 200', '307', '2021-04-15', ''),
(92, 1, 1, 'Zanella G-Force 250', '631', '2021-04-15', ''),
(93, 2, 1, 'UTV Gamma Z-Force 550', '988', '2021-04-15', ''),
(94, 1, 2, 'UTV Maverick Polaris Rzr', '871', '2021-04-15', ''),
(95, 2, 3, 'Honda CRF 2021', '691', '2021-04-15', ''),
(96, 1, 3, 'Beta Racing 250X', '247', '2021-04-15', ''),
(97, 3, 2, 'Yamaha Raptor 700', '788', '2021-04-15', ''),
(98, 2, 3, 'Yamaha YZF R1 M\r\n', '938', '2021-04-15', ''),
(99, 3, 1, 'Honda Tornado xr250', '640', '2021-04-15', ''),
(100, 1, 2, 'UTV Honda pioneer 700', '550', '2021-04-15', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `e-mail` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `e-mail`, `telefono`) VALUES
(1, 'Carlos', 'Alvear', '2012-07-01', 'cdealvear@udesa.edu.ar', '11 2593-9999'),
(13, 'Bautista', 'Saud', '2006-01-02', 'bsaud@udesa.edu.ar', '11 1234-5678'),
(14, 'Tiago', 'Palladino', '2001-01-01', 'tpalladino@udesa.edu.ar', '11 1234-5678'),
(15, 'Macarena', 'Armijo', '2001-01-01', 'marmijo@digitalhouse.com', '11 1234-5678'),
(16, 'Daniel ', 'Funtes', '2001-01-01', 'dfuentes@digitalhouse.com', '11 1234-5678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categorias`
--
ALTER TABLE `Categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `Categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
